/*
 *    _____ ________    __________  __  _______    __ __ _____
 *   / ___// ____/ /   / ____/ __ )/ / / / ___/   / // // ___/___  ____  ________
 *   \__ \/ __/ / /   / /_  / __  / / / /\__ \   / // /_\__ \/ _ \/ __ \/ ___/ _ \
 *  ___/ / /___/ /___/ __/ / /_/ / /_/ /___/ /  /__  _____/ /  __/ / / (__  /  __/
 * /____/_____/_____/_/   /_____/\____//____/     /_/ /____/\___/_/ /_/____/\___/
 *
 * Copyright (c) 2014-2015 Stefan Haller
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 */

#include "fb_app_4sense.h"
#include "4Sense_Uni.h"
#include <stdlib.h>


unsigned char __idata __at (0xFE-66) timerbase[TIMERANZ];	// Speicherplatz für die Zeitbasis
//unsigned char __idata __at (0xFE-80) timercnt[TIMERANZ];   // speicherplatz für den timercounter und 1 status bit
//unsigned char timerbase[TIMERANZ]; // Speicherplatz für die Zeitbasis
unsigned char timercnt[TIMERANZ];   // speicherplatz für den timercounter und 1 status bit
unsigned int timer;		            // Timer für Schaltverzögerungen, wird alle 130ms hochgezählt
// DS TEST
unsigned char __idata __at (0xFE-52) family_code[4];

int __idata __at (0xFE-16) messwerte[8];	// Current temperature and humidity
int __idata __at (0xFE-32) lasttemp[8];     // Old threshold value for temp and humid
int __idata __at (0xFE-48) lastsend[8];     // Last send temp and humid

unsigned int grenzwerte;	// Grenzwertobjekte
unsigned char gw_init_done; // 0 when all thresholds have been initialized


// DEBUG ========================
//unsigned char reaktion, objno;
//int schwelle;

//unsigned char zyk_senden_basis;
unsigned char sequence;
unsigned char sp_max;
unsigned char debug_ga_answer;


// Empfangenes write_value_request Telegramm verarbeiten
// unbenutzt, Objekte können nicht geschrieben werden
void write_value_req(unsigned char objno)
{
    // Debug GA
    if (objno == 20)
    {
        debug_ga_answer = telegramm[11];
        if(debug_ga_answer == 0xF5) // Trigger Software reset?
                AUXR1|=0x08;        // Do Software Reset
    }
}


// Empfangenes read_value_request Telegramm verarbeiten
void read_value_req(unsigned char objno)    // Empfangenes read_value_request Telegramm verarbeiten
{
        send_obj_value(objno+64);
}


// Objektwert von Lib angefordert
unsigned long read_obj_value(unsigned char objno)   // gibt den Wert eines Objektes zurueck
{
    union   // Simplify data handling, reduce code size
    {
        unsigned long objvalue;
        unsigned char byte[4];
    } objvalue;

    // Messwerte Temperatur/Feuchte Objekte 0-7
        if(objno<8)
        {
            objvalue.objvalue = sendewert(objno);  // Messwert umwandeln
            lastsend[objno] = messwerte[objno];
        }
        // Grenzwerte Objekte 8-20
        else if (objno<20)
            objvalue.byte[0] = (grenzwerte>>(objno-8)) &0x01;
        // Debug Objekt 20
        else
        {
#ifdef EXT_DEBUG_GA
            if(debug_ga_answer == 1)        // Grenzwerte
            {
                objvalue.byte[3] = onewire_error;
                objvalue.byte[2] = gw_init_done;
                objvalue.byte[0] = grenzwerte;
                objvalue.byte[1] = grenzwerte>>8;
            }
            else if(debug_ga_answer == 2)   // Stack Info
            {
                objvalue.byte[2] = STACK_MAX;
                objvalue.byte[1] = sp_max;
                objvalue.byte[0] = SP;
            }
            else    // Family Code of each sensor
#endif
            {
                unsigned char n;

                for(n=0;n<=3;n++)
                    objvalue.byte[n] = family_code[n];
            }
        }
    return(objvalue.objvalue);
}


// Messwert senden wenn kein Fehler erkannt wurde
__bit check_and_send(unsigned char object)
{
    // Object 0-7 entspricht Messwert Sensoren 0-3
    if( (onewire_error>>(object&0xFE)) & 0x03 )
        return 0;   // Sensor Data not valid
    else
        return send_obj_value(object);
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

    // Check stack pointer depth, this is most nested call
     if (SP > sp_max)
         sp_max = SP;


#ifdef SEND_DPT5
    //This takes a lot of Flash (approx. 170byte), disabled meanwhile
    //unsigned char n;

    //eis6temp=-5500;
    //n=255;

    // Sendeformat EIS 6 (DPT5/6)
    if ( eeprom[SENSOR_TYPE+(objno>>1)] & (bitmask_1[6+(objno &0x01)]) ) // 0x40<<(objno &0x01)) )
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
#endif
    {
        eis5temp = (messwerte[objno]>>3) &0x07FF;          // durch 8 teilen, da später Exponent 3 dazukommt
        eis5temp = eis5temp +(0x18 << 8);
        if (messwerte[objno]<0) eis5temp += 0x8000;       // Vorzeichen
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
    int schwelle;               // Schwellwert, Hilfsvariable
    unsigned char reaktion;     // Reaktion, Hilfsvariable
    unsigned char zuordnung;    // Temperatur oder Feuchte
    unsigned char objno;        // Messwert im Array
    unsigned char help_obj;     // Hilfsvariable, spart Flash
    unsigned char i;
    __bit grenzwert_eingang;    // zu sendeneder Wert bei Über-Unterschreiten
    __bit gw_changed;           // GW hat sich geändert
    __bit gw_init=0;            // Initialize threshold


    // Nur bis 3 erlaubt, nicht unbedingt nötig
    eingang &= 0x03;

    // Check if thresholds need to be initialized and send after start
    if(gw_init_done &bitmask_1[eingang])
    {
        gw_init_done &= ~bitmask_1[eingang];  // Clear bit
        gw_init = 1;


        help_obj = (eeprom[RE_SEND_GW]>>(2*eingang)) &0x03;

        // if else ist etwas kompakter als switch
        //if(eeprom[RE_SEND_GW] &bitmask_1[eingang])
        if (help_obj==1)        // Send directly
        {
            timercnt[eingang+8] = 0x80;
        }
        else if (help_obj==2)  // verzögert senden
        {
            timercnt[eingang+8] = eeprom[RE_GW_S_FAKT] |0x80;
        }
        else // nicht senden -> zyk. Senden Faktor Grenzwerte
        {
            timercnt[eingang+8] = eeprom[GW_ZYKL_FAKT+kanal];
        }
    }

    // GW Zuordnung, Feuchte (Bit 1), Temp wäre Bit 0
    zuordnung = (eeprom[GW_ZUORDNUNG+eingang] >>1);

    // 3 Grenzwerte bearbeiten
    for(i=0;i<3;i++)
    {
        grenzwert_eingang = 0;  // Clear
        gw_changed = 0;         // Clear

        help_obj = i +eingang*3;                // GW Object 0-11
        objno = 2*eingang +(zuordnung&0x01);    // Is current GW Temperature or Humidity?

        reaktion = (eeprom[GW_REAKTION +(2*eingang + (i>>1))] >> (4 *(i&0x01))) &0x0F;
        schwelle = (int)((eeprom[GW_SCHWELLE1L+(help_obj*2)]<<8) | eeprom[GW_SCHWELLE1H+(help_obj*2)])*10;
        //schwelle = schwelle<<3 + schwelle<<1;     // alternate *10

        //steigend
        if ((lasttemp[objno]<schwelle || gw_init) && messwerte[objno]>schwelle) {  // GW überschritten
            if (reaktion &0x08)    // Reaktion Überschreiten aktiv
            {
                grenzwert_eingang = ((reaktion >>2) &0x01);
                gw_changed = 1;
            }
        }

        //fallend
        if ((lasttemp[objno]>schwelle || gw_init) && messwerte[objno]<schwelle) {  // GW unterschritten
            if (reaktion &0x02)    // Reaktion Unterschreiten aktiv
            {
                grenzwert_eingang = (reaktion &0x01);
                gw_changed = 1;
            }
        }

        if(gw_changed)
        {
            // Neuen Grenzwert dem Eingangsobjekt zuordnen
            if(grenzwert_eingang)
                grenzwerte |= 1<<(help_obj);
            else
                grenzwerte &= ~(1<<(help_obj));

            if(!gw_init) // Do NOT send during initialization
                send_obj_value(8+ help_obj);    //TODO anpassung fertige VD >8, OK

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
* Timer 0-7     Messwerte Obj. 0-7
* Timer 8-11    Grenzwerte Obj. 8-19
* Timer 12      Sample timer
*/
void delay_timer(void)
{
    unsigned char tmr_obj,n,m,gw_object;
    //unsigned char objno_help;
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
    for(tmr_obj=0;tmr_obj<=11;tmr_obj++)
    {
        if(timercnt[tmr_obj]==0x80)     // 0x00 = Timer abgelaufen und aktiv
        {
            // Zyklisch Senden Messwerte, Obj. 0-7
            if (tmr_obj<=7)
            {
                // Zyklisch senden Faktor neu laden
                timercnt[tmr_obj] = eeprom[TEMP_ZYKLSEND +tmr_obj];

                // Messwert senden
                check_and_send(tmr_obj);
            }
            // Zyklisch Senden Grenzwerte, Obj. >7
            else
            {
                // 3 Grenzwerte senden  // TODO anpassung neue VD, OK
                gw_object = 8+ (tmr_obj-8)*3;

                send_obj_value(gw_object);   // 8,11,14,17
                send_obj_value(gw_object+1); // 9.12,15,18
                send_obj_value(gw_object+2); // 10,13,16,19

                // Zyklisch senden Faktor neu laden
                timercnt[tmr_obj] = eeprom[GW_ZYKL_FAKT+(tmr_obj-8)];
            }
        }
    }
    // Timer 12, Sensor conversation wait
    if (timercnt[12] == 0x80)
    {
        timercnt[12] = 0;       // Prevent next run before restart
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
    unsigned char n,temp_var;

    // Port Konfigurieren
    // Port 0
    P0M1= 0x00;
    P0M2= 0x00; // alle auf quasi bidirektional
    // Port 1, nach restart_hw()!
    P1M1 &= ~0x03;  // P1.0/TXD auf input wg. Busdown Erkennung
    P1M2 &= ~0x03;

    gw_init_done = 0x0F;   // thresholds to init 0-3

    // Zyklisches Senden konfigurieren
    for(n=0;n<=7;n++)
    {
        // Werte initialisieren
        messwerte[n]=0;
        lasttemp[n]=0;
        lastsend[n]=0;

        // zykl. Senden Messwerte Basis, 8x laden
        timerbase[n] = (eeprom[THBASE_ZYKLSEND+(n>>1)] >> (4 *(n&0x01))) &0x0F;

        // Verhalten bei Busspannungswiederkehr, 2 Messwerte je Kanal mit gleichem Faktor laden
        temp_var = eeprom[RE_MW_S_FAKT+(n>>1)];
        if(temp_var &0x80)  // Verzögert senden eingeschaltet
        {
            timercnt[n] = temp_var;
        }
        else
        {
            // Gleich zyklisch senden Faktor laden
            timercnt[n] = eeprom[TEMP_ZYKLSEND +n];
        }
    }

    for (kanal=0;kanal<=3;kanal++)
    {
        // zyk. Senden Basis Grenzwerte, 4x
        timerbase[kanal+8] = (eeprom[GW_ZYKL_BASE +2*kanal] >>4);
        // zyk. Senden Faktor Grenzwerte wird in grenzwerte() initialisiert nach erfolgtem GW Init!
        timercnt[kanal+8] = 0x00;   // Abschalten TODO ist das nötig??

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

    //onewire_error = 0xFF; // Set all Error Flags, Reset during sequence = 1

    timerbase[12] = 0;  // Sensor sample timer 12 turned off
    sequence=1;         // Start sequence
    kanal=0;            // channel 0
    timer=0;            // Timer-Variable, wird alle 130ms inkrementiert

#ifdef DEBUG_H_
    // Werte hier schreiben anstatt per static __code wenn Debug aktiv
    EA=0;               // Interrupts sperren, damit flashen nicht unterbrochen wird
    START_WRITECYCLE
    WRITE_BYTE(0x01,0x03,0x00)      // Herstellercode 0x004C = Robert Bosch
    WRITE_BYTE(0x01,0x04,0x4C)
    WRITE_BYTE(0x01,0x0C,0x00)      // PORT A Direction Bit Setting
    //WRITE_BYTE(0x01,0x05,0x04)    // Devicetype 0x0438 = Selfbus 1080 4Sense
    //WRITE_BYTE(0x01,0x06,0x38)
    //WRITE_BYTE(0x01,0x07,0x05)    // Versionnumber of application programm
    //WRITE_BYTE(0x01,0x0D,0xFF)    // Run-Error Status (00=stop FF=run)
    STOP_WRITECYCLE
    EA=1;               // Interrupts freigeben
#endif

    RTCCON=0x81;        //RTC starten und flag setzen -> delay timer setzt RTC
}
