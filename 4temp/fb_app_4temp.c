/*
 *    _____ ______ __   __________  __  _______
 *   / ___// ____// /  / ____/ __ )/ / / / ___/
 *   \__ \/ __/  / /  / /__ / __  / / / /\__ \
 *  ___/ / /__  / /__/ /__// /_/ / /_/ /___/ /
 * /____/_____//____/_/   /_____/\____//____/
 *
 *  Copyright (c) 2010 Jan Wegner
 *  Copyright (c) 2014 Stefan Haller
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#include "fb_app_4temp.h"
#include "4temp_onewire.h"


unsigned char timerbase[TIMERANZ];	// Speicherplatz für die Zeitbasis
unsigned char timercnt[TIMERANZ];   // speicherplatz für den timercounter und 1 status bit
unsigned int timer;		            // Timer für Schaltverzögerungen, wird alle 130ms hochgezählt

int __idata __at (0xFE-0x08) temp[4];	// Temperaturwerte speichern
int __idata __at (0xFE-0x10) lasttemp[4];
int __idata __at (0xFE-0x18) lastsendtemp[4];
unsigned char grenzwerte;	// Grenzwertobjekte
// DEBUG ========================
unsigned char grenzwert_eingang=0;
int schwelle1, schwelle2;
unsigned char reaktion, objno;

unsigned int mess_diff;
int mess_change;



//unsigned char kanal;
unsigned char zyk_senden_basis;
unsigned char sequence;
unsigned char sende_sofort_bus_return;


/**
* Empfangenes write_value_request Telegramm verarbeiten
*	unbenutzt, Objekte können nicht geschrieben werden
*
* \param  void
*
* @return void
*/
void write_value_req(unsigned char objno)
{
	// nix zu schreiben
    objno;
}


/**
* Empfangenes read_value_request Telegramm verarbeiten
*
* \param  Objekt das beantwortet werden soll
*
* @return void
*/
void read_value_req(unsigned char objno)    // Empfangenes read_value_request Telegramm verarbeiten
{
	unsigned char objflags;

	objflags=read_objflags(objno);		    // Objekt Flags lesen
	// Objekt lesen, nur wenn read enable gesetzt (Bit3) und Kommunikation zulaessig (Bit2)
	if((objflags&0x0C)==0x0C) send_obj_value(objno+64);
}


// Objektwert von Lib angefordert
unsigned long read_obj_value(unsigned char objno) 	// gibt den Wert eines Objektes zurueck
{
	unsigned long objvalue=0;

	// Messwerte Objekte 0,2,4,6
		if((objno&0x01)==0)
		{
			objvalue=sendewert(objno);
			lastsendtemp[objno>>1]=temp[objno>>1];
		}
		// Grenzwerte Objekte 1,3,5,7
		else
			objvalue= (grenzwerte>>objno)&0x01;

	return(objvalue);
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
	int eis5temp, eis6temp;
	unsigned char objno_help, n;

	objno_help=objno>>1;

	eis6temp=-5500;
	n=255;

	// Sendeformat EIS 6
	if ((eeprom[0xA4]>>4)&(1<<objno_help))
	{
		while(eis6temp<temp[objno])
		{
			n++;
			eis6temp+=70;
			if (n&0x01) eis6temp++;
		}
		return n;
	}

	// Sendeformat EIS 5
	else
	{
		eis5temp=(temp[objno_help]>>3)&0x07FF;			// durch 8 teilen, da sp�ter Exponent 3 dazukommt
		eis5temp=eis5temp+(0x18 << 8);
		if (temp[objno_help]<0) eis5temp+=0x8000;		// Vorzeichen

		return eis5temp;
	}
}


/**
* Senden bei Grenzwertüber- bzw. unterschreitung
*	überprüft die Grenzwerte
*	schreibt die Objektwerte und sendet Telegramm
*
* \param  eingang
*
* @return void
*/
void grenzwert (unsigned char eingang)
{
	//int schwelle1, schwelle2;
	//unsigned char reaktion, objno;
	//unsigned char grenzwert_eingang=0;
	__bit gw_changed = 0;
	grenzwert_eingang = 0;


	eingang &= 0x03;	    // Nur bis 3 erlaubt
	// Objekt für Eingang
	objno=(eingang<<1)+1;	// Objekte 1,3,5,7

	// Reaktion und Schwellen lesen
	reaktion=eeprom[0x6D+eingang];
	schwelle1=-5500+180*(eeprom[0x71+eingang]&0x7F);
	schwelle2=-5500+180*(eeprom[0x75+eingang]&0x7F);
	//schwelle2 = ((eeprom[0xB0] & (eeprom[0xB1]<<8)) /10);


	//steigend
	if ((lasttemp[eingang]<schwelle2 || sende_sofort_bus_return) && temp[eingang]>schwelle2) {	// GW 2 überschritten
		if (reaktion&0x0C)
		{
			grenzwert_eingang= (reaktion>>2)&0x01;
			gw_changed = 1;
		} }

	if ((lasttemp[eingang]<schwelle1 || sende_sofort_bus_return) && temp[eingang]>schwelle1) {	// GW 1 überschritten
		if (reaktion&0xC0)
		{
			grenzwert_eingang= (reaktion>>6)&0x01;
			gw_changed = 1;
		} }


	//fallend
	if ((lasttemp[eingang]>schwelle1 || sende_sofort_bus_return) && temp[eingang]<schwelle1) {	// GW 1 unterschritten
		if (reaktion&0x30)
		{
			grenzwert_eingang= (reaktion>>4)&0x01;
			gw_changed = 1;
		} }

	if ((lasttemp[eingang]>schwelle2 || sende_sofort_bus_return) && temp[eingang]<schwelle2) {	// GW 2 unterschritten
		if (reaktion&0x03)
		{
			grenzwert_eingang= reaktion&0x01;
			gw_changed = 1;
		} }

	// Grenzwert dem Eingangsobjekt zuordnen
	if(grenzwert_eingang)
	{
		grenzwerte |= (1<<objno);
	}
	else
	{
		grenzwerte &= ~(1<<objno);
	}

	// Nicht senden nach Neustart
	if(gw_changed && !sende_sofort_bus_return)
	//if(gw_changed)
	{
		send_obj_value(objno);
	}

	// Aktuellen Wert speichern
	lasttemp[eingang]=temp[eingang];
}


/**
* Senden bei Messwertdifferenz
*	überprüft die Messwertdifferenz
*	schreibt die Verzögerungszeit ins delrec
*
* \param  eingang
*
* @return void
*/
void messwert (unsigned char eingang)
{
	//unsigned int mess_diff;
	//int mess_change;

	eingang &= 0x03;	// Nur bis 3 erlaubt

	// Senden bei Messwertdifferenz
	if (eeprom[0x65+eingang]&0x80)
	{
		// Senden ab x % Messwertdifferenz
		mess_diff=180*(eeprom[0x65+eingang]&0x7F);

		if (temp[eingang]<=lastsendtemp[eingang])
		{
			mess_change=lastsendtemp[eingang]-temp[eingang];
		}
		else
		{
			mess_change=temp[eingang]-lastsendtemp[eingang];
		}

//		if (mess_change<0) mess_change=0-mess_change;

		if(mess_change>mess_diff)
		{
			// Sendeverzögerung bei Messwertdifferenz
			timercnt[eingang+4] |= 0x80;	// Einschalten
		}
	}
}


/**
* zählt alle 130ms die Variable Timer hoch und prüft Queue
*	Zyklisch senden Messwerte und Grenzwerte
*	Verzögerungszeit senden Messwerte
*	Sendeverzögerung Messwerte bei Busspannungswiederkehr
*
* \param  void
*
* @return void
*/
void delay_timer(void)
{
	unsigned char tmr_obj,n,m, verz_start;
	unsigned char objno_help;
	unsigned int timerflags;

	tmr_obj = 0;		// Timer Objekt
	// Reconfig because of t_connect timeout!!
	RTCCON=0x60;        // RTC anhalten und Flag löschen
	RTCH=0x0E;          // reload Real Time Clock, 65ms
	RTCL=0xA0;
	RTCCON=0x61;		// RTC starten

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
	for(tmr_obj=0;tmr_obj<=8;tmr_obj++)
	{
		verz_start = eeprom[0x79]&0x55;

		if(timercnt[tmr_obj]==0x80)		// 0x00 = Timer abgelaufen und aktiv
		{
			// Zyklisch Senden Eingänge Messwert und Grenzwert
			if (tmr_obj<=3)
			{
				// Zyklisch senden Faktor holen
				timercnt[tmr_obj] = eeprom[0x61+tmr_obj];
				//zyk_faktor=eeprom[0x61+objno]&0x7F;

				// Messwert senden
				send_obj_value(tmr_obj<<1);

				// Grenzwert senden wenn aktiv
				if ( (eeprom[0x75+tmr_obj]) & 0x80)
				{
					send_obj_value((tmr_obj<<1)+1);
				}
			}
			// Sendeverzögerung Eingänge Messwertedifferenz
			else if (tmr_obj<=7)
			{
				objno_help=tmr_obj-4;

				send_obj_value(objno_help<<1);
				//lastsendtemp[objno_help]=temp[objno_help];

				// Zeit holen und deaktivieren, Bit 7 = 0
				//zykval_help=(eeprom[0x69+(eingang>>1)])>>(4*(!(eingang&0x01)))&0x0F;
				if(objno_help & 0x01)	// 0,2
				{
					timercnt[tmr_obj] = (eeprom[0x69+(objno_help>>1)] & 0x0F);
				}
				else						// 1,3
				{
					timercnt[tmr_obj] = (eeprom[0x69+(objno_help>>1)] >>4);
				}
			}
			// Sendeverzögerung Eingänge Messwerte Busspannungswiederkehr über Objekt 8
			else
			{
				timercnt[8] = 0;	// Timer 8 anhalten
				// Verzögertes senden aktiv, Bit 0,2,4,6
				verz_start = eeprom[0x79]&0x55;

				for (n=0;n<=6;n+=2)
				{
					if (verz_start & 0x40)	    // Start mit Eingang 4
					{
						send_obj_value(n);
					}
					verz_start = verz_start<<2;	// vorheringer Eingang
				}

			}
		}
	}
}


/**
* Verhalten bei Busspannungswiederkehr
*	sofortiges Senden der Messwerte und Grenzwerte bei Busspannungswiederkehr
*
* \param  void
*
* @return void
*/
void bus_return(void)
{
	unsigned char kanal_help;

	kanal_help=kanal<<1;

	if (sende_sofort_bus_return&(0x80>>kanal_help))
	{
		// Messwerte
		send_obj_value(kanal_help);
		sende_sofort_bus_return &= 0xFF-(0x80>>kanal_help);	// Löschen wenn gesendet
	}

	if (sende_sofort_bus_return&(0x40>>kanal_help))
	{
		// Grenzwerte
		send_obj_value(kanal_help+1);
		sende_sofort_bus_return &= 0xFF-(0x40>>kanal_help); // Löschen wenn gesendet
	}
}


/**
* Alle Applikations-Parameter zurücksetzen
*
* \param  void
*
* @return void
*/
void restart_app()		// Alle Applikations-Parameter zurücksetzen
{
	unsigned char n;

	// Done in delay_timer now
	//RTCCON=0x60;		// RTC anhalten und Flag löschen
	//RTCH=0x0E;			// reload Real Time Clock, 65ms
	//RTCL=0xA0;

	// Port Konfigurieren
	// Port 0
	P0M1= 0x00;
	P0M2= 0x00;	// alle auf quasi bidirektional
	// Port 1, nach restart_hw()!
	P1M1 &= ~0x03;	// P1.0/TXD auf input wg. Busdown Erkennung
	P1M2 &= ~0x03;
	ES = 0;
	SCON = 0;
	SSTAT = 0;

	// Zeit für Sendeverzögerung bei Busspannungswiederkehr in Timer 8 laden
	timerbase[8] = 4;	// 2 Sekunde als Basis
	timercnt[8] = ( (eeprom[0xA0]>>1) | 0x80);	// Zeit holen, Timer einschalten - Bit7

	// Verhalten bei Busspannungswiederkehr Messwerte
	sende_sofort_bus_return = eeprom[0x79]&0xAA;

	// Zyklisches Senden konfigurieren
	for(n=0;n<=3;n++)
	{
		// zyk Senden Basis für alle Eingänge, Beschränkung alte VD
		timerbase[n] = eeprom[0x060]&0x0F;

		// Faktor und aktiv Bit7 holen
		timercnt[n] = eeprom[0x61+n];
//		zyk_funk=(eeprom[0x61+n]&0x80);
//		zyk_funk=zyk_funk+((eeprom[0x75+n]>>7)&0x01);


		// Verhalten bei Busspannungswiederkehr Grenzwerte
		sende_sofort_bus_return |= (eeprom[0x71+n]&0x80)>>(2*n+1);

		// Werte initialisieren
		temp[n]=0;
		lasttemp[n]=0;
		lastsendtemp[n]=0;

		// Sendeverzögerung bei Messwertdifferenz
		//zykval_help=(eeprom[0x69+(eingang>>1)])>>(4*(!(eingang&0x01)))&0x0F;
		// Zeit holen und deaktivieren, Bit 7 = 0
		if(n & 0x01)	// 0,2
		{
			timercnt[n+4] = (eeprom[0x69+(n>>1)] & 0x0F);
		}
		else						// 1,3
		{
			timercnt[n+4] = (eeprom[0x69+(n>>1)] >>4);
		}
		// Zeitbasis setzen, TODO: Anpassung an neue/alte VD
		if (timercnt[n+4] >0)
			timerbase[n+4] = 3;	// 1 Sekunde
		else if (timercnt[n+4] >5)
			timerbase[n+4] = 3;	// 8,4 Sekunde
		else
			timerbase[n+4] = 0;	// 130ms, kleinste Zeit
	}

	sequence=1;
	kanal=0;
	timer=0;			// Timer-Variable, wird alle 130ms inkrementiert
/*
	EA=0;				// Interrupts sperren, damit flashen nicht unterbrochen wird
	START_WRITECYCLE
	WRITE_BYTE(0x01,0x03,0x00)	    // Herstellercode 0x0008 = GIRA
	WRITE_BYTE(0x01,0x04,0x08)
	WRITE_BYTE(0x01,0x05,0xB0)	    // Devicetype 0x0438 = Selfbus 1080 4temp
	WRITE_BYTE(0x01,0x06,0x03)
	//WRITE_BYTE(0x01,0x07,0x01)	// Versionnumber of application programm
	WRITE_BYTE(0x01,0x0C,0x00)	    // PORT A Direction Bit Setting
	//WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	//WRITE_BYTE(0x01,0x12,0x3A)	// COMMSTAB Pointer
	STOP_WRITECYCLE
	EA=1;				// Interrupts freigeben
*/

	RTCCON=0x81; 		//RTC starten und flag setzen -> delay timer setzt RTC
}
