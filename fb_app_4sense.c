/*
 *    _____ ______ __   __________  __  _______
 *   / ___// ____// /  / ____/ __ )/ / / / ___/
 *   \__ \/ __/  / /  / /__ / __  / / / /\__ \
 *  ___/ / /__  / /__/ /__// /_/ / /_/ /___/ /
 * /____/_____//____/_/   /_____/\____//____/
 *
 *  Copyright (c) 2010 Jan Wegner
 *  Copyright (c) 2014-2015 Stefan Haller
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#include "fb_app_4sense.h"
#include "4Sense_Uni.h"
#include <stdlib.h>


unsigned char timerbase[TIMERANZ];	// Speicherplatz für die Zeitbasis
unsigned char timercnt[TIMERANZ];   // speicherplatz für den timercounter und 1 status bit
unsigned int timer;		            // Timer für Schaltverzögerungen, wird alle 130ms hochgezählt
// DS TEST
unsigned char __idata __at (0xFE-0x52) family_code[4];

int __idata __at (0xFE-16) messwerte[8];	// Temperatur und Luftfeuchte speichern
int __idata __at (0xFE-32) lasttemp[8];
int __idata __at (0xFE-48) lastsend[8];
unsigned int grenzwerte;	// Grenzwertobjekte
// DEBUG ========================
//unsigned char grenzwert_eingang=0;
//int schwelle1, schwelle2;
//unsigned char reaktion, objno;


//unsigned char objno;
int schwelle;
//unsigned char help_obj;

//unsigned char zyk_senden_basis;
unsigned char sequence;
unsigned char sende_sofort_bus_return;


// Empfangenes write_value_request Telegramm verarbeiten
// unbenutzt, Objekte können nicht geschrieben werden
void write_value_req(unsigned char objno)
{
    // nix zu schreiben
    objno;
}


// Empfangenes read_value_request Telegramm verarbeiten
void read_value_req(unsigned char objno)    // Empfangenes read_value_request Telegramm verarbeiten
{
        send_obj_value(objno+64);
}


// Objektwert von Lib angefordert
unsigned long read_obj_value(unsigned char objno)   // gibt den Wert eines Objektes zurueck
{
    unsigned long objvalue;

    // Messwerte Temperatur/Feuchte Objekte 0-7
        if(objno<2)     // TODO anpassung fertige VD <8
        {
            objvalue=sendewert(objno);  // Messwert umwandeln
            lastsend[objno]=messwerte[objno];
        }
        // Grenzwerte Objekte ab 8
        else
            objvalue= (grenzwerte>>(objno-2))&0x01; // TODO fertige VD -8

    return(objvalue);
}


// Messwert senden wenn kein Fehler erkannt wurde
__bit check_and_send(unsigned char object)
{
    // Object 0,2,4,6 entspricht Messwert 0-3
 //   if( !((onewire_error>>object) & 0x03))
        return send_obj_value(object);
 //   else
 //       return 0;
}


/**
* bringt den Messwert ins Sendeformat EIS 5 oder EIS 6
*
* \param  objno
*
* @return sendewert
*/
unsigned int sendewert(unsigned char objno)
{
    int eis5temp;//, eis6temp;

/*  This takes a lot of Flash, disabled meanwhile
    //unsigned char n;

    //eis6temp=-5500;
    //n=255;

    // Sendeformat EIS 6 (DPT5/6)
    //if ((eeprom[SENSOR_TYPE]>>6) & objno)
    if ( eeprom[SENSOR_TYPE+(objno>>1)] & (0x40<<(objno &0x01)) )
    {
        return ((char)(messwerte[objno]/100));

//        while(eis6temp<messwerte[objno])
//        {
//           n++;
//           eis6temp+=70;
//           if (n&0x01) eis6temp++;
//        }
//        return n;

    }
    // Sendeformat EIS 5 (DPT9)
    else
*/
    {
        eis5temp=(messwerte[objno]>>3)&0x07FF;          // durch 8 teilen, da später Exponent 3 dazukommt
        eis5temp=eis5temp+(0x18 << 8);
        if (messwerte[objno]<0) eis5temp+=0x8000;       // Vorzeichen
        return eis5temp;
    }
}


/**
* Senden bei Grenzwertüber- bzw. unterschreitung
*   überprüft die Grenzwerte
*   schreibt die Objektwerte und sendet Telegramm
*
* \param  eingang, Sensoreingang 0-3
*
* @return void
*/
void grenzwert (unsigned char eingang)
{
    //int schwelle;
    unsigned char reaktion;
    unsigned char zuordnung;

    unsigned char objno=0;
    unsigned char help_obj;
    __bit grenzwert_eingang;
    __bit gw_changed;
    unsigned char i;

    eingang &= 0x03;        // Nur bis 3 erlaubt, 5byte Flash verbrauch

    zuordnung = (eeprom[GW_ZUORDNUNG+eingang] >>1); // TODO fix in VD!?
    sende_sofort_bus_return = 0;    // TODO fix later, disable now

    // 3 Grenzwerte bearbeiten
    for(i=0;i<3;i++)
    {
        grenzwert_eingang = 0;  // Clear
        gw_changed = 0;         // Clear

        help_obj=i+ eingang*3;
        objno = 2*eingang+ (zuordnung&0x01);

        reaktion = (eeprom[GW_REAKTION +(2*eingang + (i>>1))] >> (4 *(i&0x01))) &0x0F;
        schwelle = (int)((eeprom[GW_SCHWELLE1L+(help_obj*2)]<<8) | eeprom[GW_SCHWELLE1H+(help_obj*2)])*10;
        //schwelle = schwelle<<3 + schwelle<<1;     // alternate *10

        //steigend
        if ((lasttemp[objno]<schwelle || sende_sofort_bus_return) && messwerte[objno]>schwelle) {  // GW überschritten
            if (reaktion &0x08)    // Reaktion Überschreiten aktiv
            {
                grenzwert_eingang = (reaktion >>2) &0x01;
                gw_changed = 1;
            }
        }

        //fallend
        if ((lasttemp[objno]>schwelle || sende_sofort_bus_return) && messwerte[objno]<schwelle) {  // GW unterschritten
            if (reaktion &0x02)    // Reaktion Unterschreiten aktiv
            {
                grenzwert_eingang = (reaktion &0x01);
                gw_changed = 1;
            }
        }

        // Nicht senden nach Neustart
        //if(gw_changed && !sende_sofort_bus_return)
        if(gw_changed)
        {
            // Neuen Grenzwert dem Eingangsobjekt zuordnen
            if(grenzwert_eingang)
                grenzwerte |= (1<<help_obj);
            else
                grenzwerte &= ~(1<<help_obj);

            send_obj_value(2+ help_obj);    //TODO anpassung fertige VD >8

            // Aktuellen Wert speichern
            lasttemp[objno]=messwerte[objno];
        }

        // Nächste Zuordnung
        zuordnung = zuordnung>>2;
    }
}


/**
* Senden bei Messwertdifferenz
*   überprüft die Messwertdifferenz
*   senden über delay_timer
*
* \param  messwert, 0,2,4,6 = temp; 1,3,5,7 = humid
*
* @return void
*/
void send_messdiff (unsigned char messwert)
{
    unsigned int mess_diff;
    int mess_change;

    unsigned char ee_local; // Local copy to save flash

    messwert &= 0x07;    // Nur bis 7 erlaubt
    ee_local = eeprom[TEMP_MESSDIFF+messwert];

    // Senden bei Messwertdifferenz
    if (ee_local &0x80)
    {
        // Senden ab Messwertdifferenz
        mess_diff = (ee_local &0x7F) *10;
/*
        // Alternative solution without abs()
        if (messwerte[messwert]<=lastsend[messwert])
        {
            mess_change=lastsend[messwert]-messwerte[messwert];
        }
        else
        {
            mess_change=messwerte[messwert]-lastsend[messwert];
        }
*/
        mess_change = lastsend[messwert]-messwerte[messwert];
        if( abs(mess_change) > mess_diff )  //TODO must be >= if VD is doesn't allow 0 any more
        {
            check_and_send(messwert);
        }
    }
}


/**
* zählt alle 130ms die Variable Timer hoch und prüft Queue
*   Zyklisch senden Messwerte und Grenzwerte
*   Verzögerungszeit senden Messwerte
*   Sendeverzögerung Messwerte bei Busspannungswiederkehr
*
* \param  void
*
* @return void
*
* Timer 0-7     Messwerte 0-7
* Timer 8
* Timer x       Sample timer
*/
void delay_timer(void)
{
    unsigned char tmr_obj,n,m, verz_start;
    unsigned char objno_help;
    unsigned int timerflags;

    tmr_obj = 0;        // Timer Objekt
    // Reconfig because of t_connect timeout!!
    RTCCON=0x60;        // RTC anhalten und Flag löschen
    RTCH=0x0E;          // reload Real Time Clock, 65ms
    RTCL=0xA0;
    RTCCON=0x61;        // RTC starten

        timer++;
        timerflags = timer&(~(timer-1));
        for(n=0;n<16;n++){
            if(timerflags & 0x0001){                // positive flags erzeugen und schieben
                for(m=0;m<TIMERANZ;m++){            // die timer der reihe nach checken und dec wenn laufen
                    if ((timerbase[m]& 0x0F)==n){   // wenn die base mit der gespeicherten base übereinstimmt
                        if (timercnt[m]>0x80){      // wenn der counter läuft...
                            timercnt[m]=timercnt[m]-1;// den timer [m]decrementieren
                        }// end if (timercnt...
                    }//end if(timerbase...
                }// end  for(m..
            }// end if timer...
            timerflags = timerflags>>1;
        }//end for (n=...

    // ab Hier die aktion...
    for(tmr_obj=0;tmr_obj<=12;tmr_obj++)
    {
        if(timercnt[tmr_obj]==0x80)     // 0x00 = Timer abgelaufen und aktiv
        {
            // Zyklisch Senden Messwerte
            if (tmr_obj<=7)
            {
                // Zyklisch senden Faktor laden
                timercnt[tmr_obj] = eeprom[TEMP_ZYKLSEND +tmr_obj];

                // Messwert senden
                check_and_send(tmr_obj);
            }
            // Zyklisch Senden Grenzwerte
            else if (tmr_obj<=11)
            {
                objno_help=tmr_obj-4;

                //check_and_send(objno_help<<1);

                // Grenzwert senden wenn aktiv
                if ( (eeprom[0x75+tmr_obj]) & 0x80)
                {
                    send_obj_value((tmr_obj<<1)+1);
                }

                // Zeit holen und deaktivieren, Bit 7 = 0
                //zykval_help=(eeprom[0x69+(eingang>>1)])>>(4*(!(eingang&0x01)))&0x0F;
                if(objno_help & 0x01)   // 0,2
                {
                    timercnt[tmr_obj] = (eeprom[0x69+(objno_help>>1)] & 0x0F);
                }
                else                        // 1,3
                {
                    timercnt[tmr_obj] = (eeprom[0x69+(objno_help>>1)] >>4);
                }
            }
            // Sendeverzögerung Eingänge Messwerte Busspannungswiederkehr über Objekt 12
            else
            {
                timercnt[12] = 0;    // Timer 8 anhalten
                // Verzögertes senden aktiv, Bit 0,2,4,6
                verz_start = eeprom[0x79]&0x55;

                for (n=0;n<=6;n+=2)
                {
                    if (verz_start & 0x40)      // Start mit Eingang 4
                    {
                        //check_and_send(n);
                    }
                    verz_start = verz_start<<2; // vorheringer Eingang
                }
            }
        }
    }
    // Timer 13, Sensor conversation wait
    if (timercnt[13] == 0x80)
    {
        timercnt[13] = 0;       // Prevent next run before restart
        sequence++;             // Konvertierung abgeschlossen
    }
}


/**
* Verhalten bei Busspannungswiederkehr
*   sofortiges Senden der Messwerte und Grenzwerte bei Busspannungswiederkehr
*
* \param  void
*
* @return void
*/ /*
void bus_return(void)
{
    unsigned char kanal_help;

    kanal_help=kanal<<1;

    if (sende_sofort_bus_return&(0x80>>kanal_help))
    {
        // Messwerte
        check_and_send(kanal_help);
        sende_sofort_bus_return &= 0xFF-(0x80>>kanal_help); // Löschen wenn gesendet
    }

    if (sende_sofort_bus_return&(0x40>>kanal_help))
    {
        // Grenzwerte
        send_obj_value(kanal_help+1);
        sende_sofort_bus_return &= 0xFF-(0x40>>kanal_help); // Löschen wenn gesendet
    }
} */


/**
* Alle Applikations-Parameter zurücksetzen
*
* \param  void
*
* @return void
*/
void restart_app()      // Alle Applikations-Parameter zurücksetzen
{
    unsigned char n;

    // Port Konfigurieren
    // Port 0
    P0M1= 0x00;
    P0M2= 0x00; // alle auf quasi bidirektional
    // Port 1, nach restart_hw()!
    P1M1 &= ~0x03;  // P1.0/TXD auf input wg. Busdown Erkennung
    P1M2 &= ~0x03;
//    ES = 0;
//    SCON = 0;
//    SSTAT = 0;

    // Zeit für Sendeverzögerung bei Busspannungswiederkehr in Timer 8 laden
    timerbase[0] = ( eeprom[0xB0] & 0x0F );
    timercnt[12] = ( (eeprom[0xA0]>>1) | 0x80);  // Zeit holen, Timer einschalten - Bit7

    // Verhalten bei Busspannungswiederkehr Messwerte
    sende_sofort_bus_return = eeprom[0x79]&0xAA;

    // Zyklisches Senden konfigurieren
    for(n=0;n<=7;n++)
    {
        // Werte initialisieren
        messwerte[n]=0;
        lasttemp[n]=0;
        lastsend[n]=0;


/*       if(n & 0x01)
       {
           timerbase[n] = (eeprom[THBASE_ZYKLSEND+(n>>1)] >> 4);
       }
       else
       {
           timerbase[n] = (eeprom[THBASE_ZYKLSEND+(n>>1)] &0xF0);
       }
*/
        // zyk Senden Basis für alle Eingänge
        timerbase[n] = (eeprom[THBASE_ZYKLSEND+(n>>1)] >> (4 *(n&0x01))) &0x0F;
        // Faktor und aktiv Bit7 holen
        timercnt[n] = eeprom[TEMP_ZYKLSEND +n];

        // Verhalten bei Busspannungswiederkehr Grenzwerte
        sende_sofort_bus_return |= (eeprom[0x71+n]&0x80)>>(2*n+1);


        // Sendeverzögerung bei Messwertdifferenz
        // Zeit holen und deaktivieren, Bit 7 = 0
        if(n & 0x01)    // 0,2
        {
           // timercnt[n+4] = (eeprom[0x69+(n>>1)] & 0x0F);
        }
        else            // 1,3
        {
        //    timercnt[n+4] = (eeprom[0x69+(n>>1)] >>4);
        }
    }

    for (kanal=0;kanal<=3;kanal++)
    {
        // zyk. Senden Basis Grenzwerte
        timerbase[n+8] = (eeprom[GW_ZYKL_BASE +2*n] >>4);

        // Find DS Type by Family Code of each sensor
        // 0x10 = DS1820/DS18S20
        // 0x28 = DS18B20
        // 0x00 = No Sensor found
        EA=0;   // Ensure we are not interrupted
        if (ow_init())
        {
            ow_write(0x33);         // Read-ROM command
            if(!ow_read(8))         // Read 64bit Lasered ROM-Code
                family_code[kanal] = onewire_receive[0];
        }
        else
            family_code[kanal] = 0x00;  // No Sensor
        EA=1;   // Enable interrupts again
    }

    timerbase[13] = 0;  // Timerbase 10, ensure to be 0
    sequence=1;         // Start sequence
    kanal=0;            // channel 0
    timer=0;            // Timer-Variable, wird alle 130ms inkrementiert

#ifdef DEBUG_H_
    // Werte hier schreiben anstatt per static __code wenn Debug aktiv
    EA=0;               // Interrupts sperren, damit flashen nicht unterbrochen wird
    START_WRITECYCLE
    WRITE_BYTE(0x01,0x03,0x00)   // Herstellercode 0x004C = Robert Bosch
    WRITE_BYTE(0x01,0x04,0x4C)
    //WRITE_BYTE(0x01,0x05,0x04)      // Devicetype 0x0438 = Selfbus 1080 4sense
    //WRITE_BYTE(0x01,0x06,0x38)
    //WRITE_BYTE(0x01,0x07,0x01)    // Versionnumber of application programm
    WRITE_BYTE(0x01,0x0C,0x00)      // PORT A Direction Bit Setting
    //WRITE_BYTE(0x01,0x0D,0xFF)    // Run-Status (00=stop FF=run)
    STOP_WRITECYCLE
    EA=1;               // Interrupts freigeben
#endif

    RTCCON=0x81;        //RTC starten und flag setzen -> delay timer setzt RTC
}
