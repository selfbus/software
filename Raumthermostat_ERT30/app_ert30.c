/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2008-2012 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#include <p89lpc935_6.h>

#include "lib_lpc936/fb_lpc936.h"
#include "app_ert30.h"





//const __code unsigned char __at 0x3600 SOLLMANU=40;

//const int cycleval[] = {17490, 292, 875, 1458, 2915, 5830, 8745, 13117, 17490}; // Zykluszeit in 130ms abzüglich der Verzögerung durch ADC und temp in main
const int cycleval[] = {26460, 441, 1323, 2205, 4410, 8820, 13230, 19845, 26460}; // Zykluszeit in 130ms abzüglich der Verzögerung durch ADC und temp in main
const unsigned int luxtable[] = {2,2,2,3,3,4,4,5,5,6,7,8,9,10,11,12,14,16,18,20,23,26,30,35,40,45,50,55,60,70,80,90,100,110,125,140,160,180,200,230,260,300,350,400,450,500,550,600,700,800,900,1000,1100,1250,1400,1600,1800,2000,2300,2600,3000,3500,4000,4500,5000,5500,6000,7000,8000,9000,10000,11000,12500,14000,16000,18000,20000,23000,26000,30000,35000,40000,45000,50000,55000,60000,65535,65535,65535,65535};
const unsigned char hystable[] = {1,2,10,5,3};	// divisor für Lux Hysterese (50%,10%,20%,30%)
const unsigned int luxdelay[] = {0,10,25,49,73,97,146,219,292,438,583,875,1458,2915,4380,8745};
const unsigned char ctrl_adr[]  = {0xD2,0xD1,0,0xF9,0xF4,0xEF,0xEA,0xE5,0xE0,0xDA};


__xdata int temp;
__xdata unsigned int lux;
__xdata unsigned char overrun, dimmwert, underrun, sequence, lockatt, resend;
volatile __xdata unsigned char solltemplpc, solltemplcd;
__bit lastrly;
volatile unsigned char editmode;


struct delayrecord {
	unsigned char delayactive;
	unsigned char delaystate;
	unsigned int delayvalue;
};
struct delayrecord delrec[10];







void schwelle(unsigned char objno)		// Luxschwelle prüfen und reagieren
{
	
	unsigned char ctrl, cycle, bitmask, temp_compare, lux_compare;
	unsigned char lastdimm, step, wertl, werth, offset;
	__bit sendval=0, over=0, under=0;
	__bit luxlevel=0;
	unsigned char sendcyclicl=0, sendcyclich=0, active;

	unsigned int schwellwert=0;
	unsigned int hysterese=0, delayover=0, delayunder=0;
	unsigned int timerneu;
	

	offset=(objno-3)*5;
	if (objno==9) offset++;	// da Verssatz in der Reihenfolge der Parameter

	ctrl=eeprom[LUXCTRL-offset];
	cycle = eeprom[LUXCYCLE1-offset] & 0x07;
	timerneu = timer+cycleval[cycle];

	if ((eeprom[LUXPARAM]&0x80) && objno==3) {	// Helligkeitsregelung (nur Objekt1)
		
		lastdimm=dimmwert;		// beim letzten Durchlauf errechneter Wert
		schwellwert=eeprom[LUXSCHWELLWERT]*10;		// schwellwert ist hier der Sollwert
		hysterese=_divuint(schwellwert,hystable[ctrl&0x07]);
		if (hysterese==0) hysterese=1;	// mindestens jedoch 1 Lux
		step=(((ctrl & 0xF0) >> 4) + 1) * 16;
		
		if (lux>schwellwert) {	// wenn überschritten
			if ((lux > (schwellwert*2)) && (dimmwert >= step)) dimmwert-=step;	// grosse Schritte wenn weit weg von Sollwert
			else {
				if (dimmwert>3) dimmwert-=4;		// kleine Schritte
				else dimmwert=0;
			}
		}
		if (lux<(schwellwert-hysterese)) {		// wenn unterschritten
			if (((lux*2) < (schwellwert-hysterese)) && (dimmwert <= (255 - step))) dimmwert+=step;	// grosse Schritte wenn weit weg von Sollwert
			else {
				if (dimmwert<252) dimmwert+=4;
				else dimmwert=255;
			}
		}
		if (lastdimm != dimmwert) {
			WRITE_DELAY_RECORD(2,1,dimmwert,timer+1)
		}
	}

	else {	// Schwellen

		if (objno<6) {	// Helligkeitsschwellen
			schwellwert=luxtable[eeprom[LUXSCHWELLWERT-offset]-7];	// -7, weil luxtable erst ab 7 beginnt
			hysterese=_divuint(schwellwert,hystable[ctrl&0x07]);
			if (hysterese==0) hysterese=1;	// mindestens jedoch 1 Lux
			if (lux>schwellwert) over=1; 
			if (lux<(schwellwert-hysterese)) under=1; 
			delayover=luxdelay[(eeprom[LUXCYCLE1-offset] & 0xF0) >> 4];	// Verzögerung bei überschreiten
			switch (objno) {
			case 3:
				if ((eeprom[LUXPARAM]&0x80) == 0) delayunder=luxdelay[(eeprom[0xCD] & 0xF0) >> 4];
				else delayover=0;	// bei Helligkeitsregelung keine Verzögerung
				break;
			case 4:
				delayunder=luxdelay[eeprom[0xCD] & 0x0F];
				break;
			case 5:
				delayunder=luxdelay[(eeprom[0xCC] & 0xF0) >> 4];
				break;
			}
			
		}
		else {			
			if (objno<8) {	// Temperaturschwellen
				if (objno==6) {							// nur für 24V Version wird obj 6 bedient
					if (temp > (solltemplpc * 50)) over=1;		// solltemplpc in 0,5° !
					if (temp < ((solltemplpc - (hysterese*2))*50)) under=1;
				}
				else {
					schwellwert=eeprom[LUXSCHWELLWERT-offset];
					hysterese = ctrl & 0x07;
					if (schwellwert<51) {	//>51 : Temperaturschwelle inaktiv
						if (temp > (schwellwert*100)) over=1;
						if (temp < ((schwellwert - hysterese)*100)) under=1;
					}
				}
			}
			else {			// Verknüpfungsobjekte
				
				if (objno==8) {
					lux_compare = eeprom[VERKLUX1];
				}
				else {
					lux_compare = eeprom[VERKLUX2];
				}
				lux_compare&=0xF0;
				
				temp_compare = eeprom[ctrl_adr[objno]+1] & 0x70;

				

				// hier bedeutet over=Bedingung erfüllt, under=bedingung nicht erfüllt
				over=0;
				under=0;
				switch (temp_compare) {
				case 0:
					over=1;
					break;
				case 0x10:		// 1 = größer als Temperaturschwelle 1
					over = (overrun & 0x08);
					break;
				case 0x20:		// 2 = größer als Temperaturschwelle 2
					over = (overrun & 0x10);
					break;
				case 0x30:		// 3 = kleiner als Temperaturschwelle 1
					over = (underrun & 0x08);
					break;
				case 0x40:		// 4 = kleiner als Temperaturschwelle 2
					over = (underrun & 0x10);
					break;
				}
				switch (lux_compare) {
				case 0x10:		// 1 = größer als Helligkeitsschwelle 1
					over &= (overrun & 0x01);
					break;
				case 0x20:		// 2 = größer als Helligkeitsschwelle 2
					over &= (overrun & 0x02);
					break;
				case 0x30:		// 3 = größer als Helligkeitsschwelle 3
					over &= (overrun & 0x04);
					break;
				case 0x40:		// 4 = kleiner als Helligkeitsschwelle 1
					over &= (underrun & 0x01);
					break;
				case 0x50:		// 5 = kleiner als Helligkeitsschwelle 2
					over &= (underrun & 0x02);
					break;
				case 0x60:		// 6 = kleiner als Helligkeitsschwelle 3
					over &= (underrun & 0x04);
					break;
				}

				under = !over;
			}
		}
		
		if (objno>=8) offset++;				// da Verssatz in der Reihenfolge der Parameter
		werth=eeprom[LUX_OVER-offset];		// zu sendender Wert bei überschreiten
		wertl=eeprom[LUX_UNDER-offset];		// zu sendender Wert bei unterschreiten
		bitmask=1<<(objno-3);				// Bitmaske für underrun und overrun

		
		if (over) {					// wenn überschritten
			if (!(overrun&bitmask)) { 	// wenn neu überschritten
				
				if (delayover==0 || (resend&bitmask)) {		// sofort senden
					timerneu=timer+1;
					resend&=~bitmask;
					active=3;	// Bit0=1=aktiv und Bit1=1=überschritten
				}
				else {	// verzögert senden
					if(delrec[objno-1].delayactive==5) {	// wenn bereits verzögertes unterschreiten läuft ...
						active=0;							// ... timer inaktiv setzen
					}
					else {
						active=7;	// Bit0=1=aktiv und Bit1=1=überschritten und Bit2=1=verzögert senden
						timerneu=timer+delayover;
					}
				}
				WRITE_DELAY_RECORD(objno-1,active,werth,timerneu)	//objno-1 weil objekt 2 nicht existiert					
				

			}
			overrun|=bitmask;		// Überschritten Bit setzen
			underrun&=~bitmask;		// Unterschritten Bit löschen
		}
		
		if (under) {										// wenn Wert unter Schwellwert
			if (!(underrun&bitmask)) { 						// wenn neu unterschritten
				
				if (delayunder==0 || (resend&bitmask)) {	// sofort senden
					timerneu=timer+1;
					resend&=~bitmask;
					active=1;						// Bit0=1=aktiv und Bit1=0=unterschritten
				}
				else {										// verzögert senden
					if(delrec[objno-1].delayactive==7) {	// falls verzögertes überschritten Senden noch läuft...
						active=0;							// ... stoppen
						}
					else {
						active=5;	// Bit0=1=aktiv und Bit1=0=unterschritten und Bit2=1=verzögert
						timerneu=timer+delayunder;
					}
				}
				WRITE_DELAY_RECORD(objno-1,active,wertl,timerneu)
				

			}
			underrun|=bitmask;	// Unterschritten Bit setzen
			overrun&=~bitmask;	// Überschritten Bit löschen
		}
	}
}


// aktuellen Objektwert aus userram auslesen
unsigned long read_obj_value(unsigned char objno)
{
	unsigned char objtype, valuepointer, offset, commstab;
	unsigned long objvalue=0;

	offset=objno*3;
	commstab=eeprom[COMMSTABPTR];
	objtype=eeprom[commstab+offset+4];

	if (objno <= commstab) {	// wenn objno <= anzahl objekte
		valuepointer=eeprom[commstab+offset+2];	// Zeiger auf USERRAM, wo der Objekt-Wert gespeichert ist

		if (objtype < 8) {	// Typ zwischen 1 und 8 Bit gross
			objvalue=userram[valuepointer];
		}
		if (objtype == 8) {	// 2-Byte Wert
			objvalue=256*userram[valuepointer]+userram[valuepointer+1];
		}
	}
	return(objvalue);

}


void write_obj_value(unsigned char objno,int objvalue)
{
	unsigned char objtype, valuepointer, offset, commstab;


	offset=objno*3;
	commstab=eeprom[COMMSTABPTR];
	objtype=eeprom[commstab+offset+4];

	if (objno < eeprom[commstab]) {	// wenn objno < anzahl objekte, da obj 0 das erste ist
		valuepointer=eeprom[commstab+offset+2];	// Zeiger auf USERRAM, wo der Objekt-Wert gespeichert ist
		if (objtype < 8) {
			userram[valuepointer]=objvalue & (0xFF>>(7-objtype));
		}
		else {	// da hier nur max. mit 2-Byte Werten gearbeitet wird, reicht das "else"
			userram[valuepointer]=objvalue>>8;		// HighByte
			userram[valuepointer+1]=objvalue;		// LowByte
		}
	}
}




// Objektwert lesen wurde angefordert, read_value_response Telegramm zurücksenden
void read_value_req(void)
{
	unsigned char objno, objflags;
	
	objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
	if(objno!=0xFF) {									// falls Gruppenadresse nicht gefunden
		objflags=read_objflags(objno);					// Objekt Flags lesen
		// Objekt lesen, nur wenn read enable gesetzt (Bit3) und Kommunikation zulaessig (Bit2)
		if((objflags&0x0C)==0x0C) send_obj_value(objno+0x40);
	}
}



void write_value_req(void)
{
	unsigned char objno;
	
	objno=find_first_objno(telegramm[3],telegramm[4]); 
	
	if (objno==10) {	// nur Sperrobjekt darf beschrieben werden
		write_obj_value(objno,telegramm[7]&0x01);
		
		// Bei Aufheben der Sperre sollen alle zuvor gesperrten Objekte ihren Wert senden
		if((telegramm[7]&0x01)==0) {
			overrun&=~lockatt;
			underrun&=~lockatt;
			resend=lockatt;
		}
	}
	if (objno==2) {		// Nachtabsenkung
		write_obj_value(objno,telegramm[7]&0x01);
		NIGHT=telegramm[7]&0x01;
	}
	if (objno==11) {		// Heizen/Kühlen
		write_obj_value(objno,telegramm[7]&0x01);
		POLARITY=telegramm[7]&0x01;
		restart_app();
	}
	if (objno==12) {		// Hintergrundbeleuchtung
		write_obj_value(objno,telegramm[7]&0x01);
		BL=telegramm[7]&0x01;
	}
	if (objno==13) {		// Temperatur Sollwert Schwelle 1
		write_obj_value(objno,telegramm[8]*256 + telegramm[9]);
		solltemplpc=eis5_to_char2(telegramm[8]*256 + telegramm[9]);
		if (solltemplpc<20) solltemplpc=20;	// minimal 10°
		if (solltemplpc>70) solltemplpc=70;	// maximal 35°
	}

}



void delay_timer(void)	// zählt alle 130ms die Variable Timer hoch und prüft Einträge
{
	unsigned char delrecno, objno, delay_state, cycle_param=0, ctrl, sperre;
	__bit send, cyclic, over;
	int sw5;

	RTCCON=0x60;	// Real Time Clock stoppen

	timer++;

	RTCH=0x1D;		// Real Time Clock auf 130ms laden (0,13s x 7372800 / 128)
	RTCL=0x40;		// (RTC ist ein down-counter mit 128 bit prescaler und osc-clock)
	RTCCON=0x61;	// ... und starten

	for(delrecno=0;delrecno<=7;delrecno++) {
		objno=delrecno;
		if (delrecno>1) objno++;	// da objno 2 im delay nicht benutzt wird
		
		delay_state=delrec[delrecno].delaystate;	  
		if (delrec[delrecno].delayvalue==timer && delrec[delrecno].delayactive) {
			
			send=0;
			cyclic=0;
			ctrl=eeprom[ctrl_adr[objno]];		// Control Parameter 
			sperre=read_obj_value(10);
			
			if (delrecno<2) {	//Helligkeits- und Temperaturwert
				send=1;		// ohne Prüfung auf Sperre etc. immer senden
				if ((eeprom[0xD3-delrecno]&0x0F)!=0) cyclic=1;	// falls zyklisches Senden
			}
			else{	// Schwellen und Verknüpfungen
				over=delrec[delrecno].delayactive & 0x02;	// überschritten
				if (over) {	// wenn überschritten
					if(ctrl & 0x20) cyclic=1;	// wenn überschritten und es soll zyklisch gesendet werden...
				}
				else {
					if(ctrl & 0x80) cyclic=1;	// ...oder wenn unterschritten und es soll zyklisch gesendet werden...
				}

				if ((over && (ctrl&0x30)) || (!over && (ctrl&0xC0))) {	// Senden bei über- oder unterschreiten...
					if ((ctrl & 0x08)==0 || sperre==0) {	// ... nur wenn Sperre ignorieren oder Sperre=0
						send=1;
					}
				}


				if ((eeprom[LUXPARAM]&0x80) && (objno==3)) {	// bei Helligkeitsregelung immer zyklisch und immer senden
					if ((ctrl & 0x08)==0 || sperre==0) {	// ... nur wenn Sperre ignorieren oder Sperre=0
						send=1;
						cyclic=1;
					}
				}
			}

			if (send) {
				if (objno>1) write_obj_value(objno,delay_state);		// Wert ins userram schreiben
				send_obj_value(objno);			// Telegramm senden

			}
			
			// wenn delay zur Verzögerung aktiv war, dann Verzögerungs-Bit löschen
			if(delrec[delrecno].delayactive & 0x04) delrec[delrecno].delayactive-=4;
			
			if (cyclic) {	
				cycle_param=eeprom[ctrl_adr[objno]+1]&0x0F;	// Zyklus-Adresse jeweils ein Byte über ctrl_adr
				delrec[delrecno].delayvalue=timer+cycleval[cycle_param];
			}
			// wenn nicht zyklisch gesendet werden soll den timer inaktiv setzen
			else delrec[delrecno].delayactive=0;
			
		}
	}

	if (delrec[8].delayvalue==timer && delrec[8].delayactive) {
		PBCOM=0;	// Taster aktiv
		delrec[8].delayactive=0;
	}

	if (editmode > 0 && delrec[9].delayactive==0) {
		WRITE_DELAY_RECORD(9,1,0,timer+EDITTIMEOUT);
	}
	if (delrec[9].delayvalue==timer && delrec[9].delayactive) {	//editmode manuelle Sollwerteinstellung
		editmode=0;
		delrec[9].delayactive=0;
		sw5=solltemplpc*50;			// Sollwert auf 100stel Grad umrechnen
		sw5=int100_to_eis5(sw5);	// in eis5 Format umwandeln
		write_obj_value(13,sw5);	// Objektwert speichern
		send_obj_value(13);			// Objektwert senden

		DEECON=0;					// im "echten" eeprom speichern
		while(fb_state!=0);			// warten falls noch gesendet wird
		EA=0;
		DEEDAT=solltemplpc;
		DEEADR=0;
		EA=1;
	}
}


int eis5_to_int100(int eis5)	// wandelt einen eis5 wert in einen int wert (hundertstel)
{
	unsigned char exponent;
	unsigned int mantisse;
	int int100;

	exponent = (eis5>>11) & 0x0F;
	mantisse = eis5 & 0x07FF;
	int100 = mantisse * (1<<exponent);
	if (eis5 & 0x8000) int100=-int100;

	return (int100);
}


char eis5_to_char2(int eis5)	// wandelt einen eis5 wert in einen char wert (halbe)
{
	unsigned char exponent;
	unsigned int mantisse;
	int int100;
	char c2;

	exponent = (eis5>>11) & 0x0F;
	mantisse = eis5 & 0x07FF;
	int100 = mantisse * (1<<exponent);
	if (eis5 & 0x8000) int100=-int100;
	c2=_divuint(int100,50);

	return (c2);
}


unsigned int int100_to_eis5(int int100)
{
	unsigned char exponent;
	unsigned int mantisse;
	unsigned int eis5;


	if (int100<0) mantisse=-int100;
	else mantisse=int100;
	exponent=0;

	while (mantisse > 0x07FF) {
		mantisse/=2;
		exponent++;
	}

	eis5=mantisse + (exponent<<11);
	if(int100<0) eis5+=0x8000;

	return (eis5);
}


void sync(void)
{
	unsigned char n, m, count;
	count = 0;

	EKBI = 0;	// Disable keyboard interrupt
	PBCOM = 1;	// Taster inaktiv
	
	if (solltemplpc < solltemplcd) count = (solltemplcd - solltemplpc) + g_uch_ERT_Editmode; // Bestimmung wie oft muss Sollwert am LCD reduziert werden
	if (solltemplpc > solltemplcd) count = (solltemplpc - solltemplcd) + g_uch_ERT_Editmode; // Bestimmung wie oft muss Sollwert am LCD erhöht werden

	for (n = 1; n <= count; n++)
	{
		if (solltemplpc < solltemplcd) DOWN = 0; 	// Sollwert am LCD reduzieren
		if (solltemplpc > solltemplcd) UP = 0;		// Sollwert am LCD erhöhen
		for (m = 0; m < 14; m++)
		{
			TR0=0;					// Timer 0 anhalten
			TH0=0;					// Timer 0 setzen
			TL0=0;
			TF0=0;					// Überlauf-Flag zurücksetzen
			TR0=1;					// Timer 0 starten
			while (!TF0);
			//TF0=0;
			TR0=0;
		}
		if (solltemplpc < solltemplcd) DOWN = 1; 	// Sollwert am LCD reduzieren
		if (solltemplpc > solltemplcd) UP = 1; 		// Sollwert am LCD erhöhen
		for (m = 0; m < 14; m++)
		{
			TR0=0;					// Timer 0 anhalten
			TH0=0;					// Timer 0 setzen
			TL0=0;
			TF0=0;					// Überlauf-Flag zurücksetzen
			TR0=1;					// Timer 0 starten
			while (!TF0);
			//TF0=0;
			TR0=0;
		}
		// feed watchdog
		EA=0;
		WFEED1=0xA5;
		WFEED2=0x5A;
		EA=1;
	}

	// War bisher reduntant da so oder so im editmode, weil in main() bereits eine
	// Differenz festgestellt wurde, also müssen auch Tasten simuliert werden!
	editmode = 1;
	WRITE_DELAY_RECORD(9, 1, 0, timer + EDITTIMEOUT)

	WRITE_DELAY_RECORD(8, 1, 0, timer + 4);

	solltemplcd = solltemplpc;
	KBCON = 0;
	EKBI = 1;
}


void key (void) __interrupt (7)
{
	unsigned char n;
	__bit upkey, downkey;

	EKBI = 0; // keyboard Interrupt sperren

	upkey = UP;
	downkey = DOWN;
	PBCOM = 1; // Taster inaktiv
	
	if(!upkey) UP = 0;
	if(!downkey) DOWN = 0;

	WD_FEED;

	if(!upkey || !downkey)
	{
		for(n = 0; n < 200; n++)
		{
			TR0=0;					// Timer 0 anhalten
			TH0=0xF1;				// Timer 0 setzen (1ms)
			TL0=0x99;
			TF0=0;					// Überlauf-Flag zurücksetzen
			TR0=1;					// Timer 0 starten
			while (!TF0);
			TF0=0;
			TR0=0;
		}
	}

	UP = 1;
	DOWN = 1;

	// Wenn im Editiermodus
	if (editmode == g_uch_ERT_Editmode)
	{
		if (!upkey && solltemplcd < 70) solltemplcd++;	// + Taste gedrückt
		if (!downkey && solltemplcd > 20) solltemplcd--;	// - Taste gedrückt
		solltemplpc = solltemplcd;
	}
	// Erster oder Zweiter Tastendruck bewirkt nichts, geht nur in Editier-Modus
	if(!upkey || !downkey)
	{
		if (editmode != g_uch_ERT_Editmode) editmode++;
		WRITE_DELAY_RECORD(9, 1, 0, timer + EDITTIMEOUT);
	}

	WRITE_DELAY_RECORD(8, 1, 0, timer + 4);

	interrupted = 1;	// Flag setzen, dass unterbrochen wurde
	KBCON = 0;			// Interrupt-Flag löschen
	EKBI = 1;			// Keyboard Interrupt wieder frei geben
}


void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
{
	
	unsigned char objno, bitmask, ctrl, n, m;
  
						// P0.3 push-pull for charging the capacitor
	P0M1= 0x24;			// others bidirectional,
	P0M2= 0x08;			// P0_5 & P0_2 high impedance for adc inputs
	P0= 0xFF;

	P2M1=0x00;			// Port 2 - alle bidirektional
	P2M2=0x00;
	P2=0xFE;
	PBCOM=0;			// Taster aktiv (gemeinsamer Anschluss der Taster auf GND)
	
	UP=1;
	DOWN=1;

	RESET=0;			// ERT30 zurücksetzen
	TR0=0;					// Timer 0 anhalten
	TH0=0;					// Timer 0 setzen
	TL0=0;
	TF0=0;					// Überlauf-Flag zurücksetzen
	TR0=1;					// Timer 0 starten
	while(!TF0);
	RESET=1;
	TR0=0;

	NIGHT=read_obj_value(2)&0x01;		// Nachtabsenkung
	POLARITY=read_obj_value(11)&0x01;	// Heizen/Kühlen
	
	write_obj_value(12,0);				// Backlight
	BL=0;


	g_uch_ERT_Version = ERT_VERSION(eeprom[ERTSPEC]); // ermittle ERT Version
	g_uch_ERT_Editmode = ERT_EDITMODE(eeprom[ERTSPEC]); // ermittle Editmode
	editmode=0;
	

	userram[0x60]=0x2E;	// system state: all layers active (run), not in prog mode

	TASTER=1;					// LED aus

	// feed watchdog
	EA=0;
	WFEED1=0xA5;
	WFEED2=0x5A;
	EA=1;


	for (n=0;n<50;n++) {		// Warten bis Bus stabil
		TR0=0;					// Timer 0 anhalten
		TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
		TL0=eeprom[ADDRTAB+2];
		TF0=0;					// Überlauf-Flag zurücksetzen
		TR0=1;					// Timer 0 starten
		while(!TF0);
	}

	// feed watchdog
	EA=0;
	WFEED1=0xA5;
	WFEED2=0x5A;
	EA=1;


	for (m=0;m<3;m++) {
		for (n=0;n<200;n++) {		// Warten bis Anzeige bereit
			TR0=0;					// Timer 0 anhalten
			TH0=0;					// Timer 0 setzen
			TL0=0;
			TF0=0;					// Überlauf-Flag zurücksetzen
			TR0=1;					// Timer 0 starten
			while(!TF0);
			// feed watchdog
			EA=0;
			WFEED1=0xA5;
			WFEED2=0x5A;
			EA=1;
		}
	}
	TR0=0;
	



	lastrly=0;							// Schaltausgang zunächst aus

	
	// Init DAC 0
	PT0AD=0x24; 		// disable digital inputs P0_5 & P0_2
	P2M1|=0x01;			// P2.0 high impedance
	P2M2&=0xFE;
	ADMODB|=0x04; 		// enable DAC0
	ADCON0|=0x04;		// enable ADC0 (muss auch für DAC sein!)
	
	// Init Keyboard Interrupt
	KBMASK=0x50;		// P0.4 & P0.6 enabled for KB-Interrupt
	KBPATN=0x50;		// Pattern
	KBCON=0;			// Interrupt when port not equal to pattern
	EKBI=1;


	lux=65535;
	temp=-1000;
	lastlux=lux;
	lasttemp=temp;

	DEECON=0;			// Sollwert aus EEPROM lesen
	DEEADR=0;
	while(!DEECON&0x80);
	solltemplpc=DEEDAT;

	if (solltemplpc<10 || solltemplpc>70) {		// falls Sollwert ausserhalb des gültigen Bereichs
		solltemplpc=40;							// auf 20° setzen

		DEECON=0;
		while(fb_state!=0);						// warten falls noch gesendet wird
		EA=0;
		DEEDAT=solltemplpc;						// Sollwert ins EEPROM schreiben
		DEEADR=0;
		EA=1;

	}
	solltemplcd=40;		// Defaultwert des Sollwertes der LCD Anzeige 20° nach reset

	overrun=0;
	underrun=0;

	timer=0;
	sequence=1;
	

	// in lockatt bit setzen für jedes Objekt, das Sperre beachten muss
	lockatt=0;
	for (objno=3; objno<=9; objno++) {	
		ctrl=eeprom[ctrl_adr[objno]];		
		bitmask=1<<(objno-3);
		if (ctrl & 0x08) lockatt|=bitmask;
	}
	
	write_obj_value(10,0);		// Sperre bei Neustart löschen
  
  	for (objno=2;objno<9;objno++) WRITE_DELAY_RECORD(objno,0,0,0)			// erstmal alle delay-records auf inaktiv setzen
	if ((eeprom[0xD3]&0x0F)!=0) {
		WRITE_DELAY_RECORD(0,1,1,timer+50)
	}
	if ((eeprom[0xD2]&0x0F)!=0) {
		WRITE_DELAY_RECORD(1,1,1,timer+60)
	}

	// Schaltausgang zunächst aus
	WRITE_DELAY_RECORD(5,1,0,timer+70);

	START_WRITECYCLE;			// Applikations-spezifische eeprom Eintraege schreiben
	WRITE_EEPROM(0x03,0x00);	// Herstellercode: 0x0000 Freebus
  	WRITE_EEPROM(0x04,0x00);
  	WRITE_EEPROM(0x05,0x10);	// Gerätetyp: 0x1000
  	WRITE_EEPROM(0x06,0x00);
  	WRITE_EEPROM(0x07,0x01);	// Software-Versionsnummer
  	WRITE_EEPROM(0x0C,0x00);	// PORT A Direction Bit Setting
  	WRITE_EEPROM(0x0D,0xFF);	// Run-Status (00=stop FF=run)
  	WRITE_EEPROM(0x12,0x56);	// COMMSTAB Pointer
	STOP_WRITECYCLE;


}
