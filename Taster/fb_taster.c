/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2008,2009,2010 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* @file   fb_taster.c
* @author Andreas Krebs <kubi@krebsworld.de>
* @date   2009
*
* @brief The Freebus Taster Application, Firmware fuer einen 4-fach Taster mit 4 LEDs
*		Herstellercode 0x0004 = Jung
*		Devicetype 0x1052 = Jung Tastsensor 2092
*		in ETS das Applikationsprogramm "Universal/Schalten 105201" auswaehlen
*
* \par Changes:
*		1.00	erste Version;
*		1.01	eigenes Telegramm wird ausgewertet, "Affengriff" entprellt
* 		1.02	div. bugs behoben
* 		1.03	Fehler bei Lamellenverstellzeit (T2) behoben
* 		1.04	LEDs dimmbar, neue backendsoft, fehlende Funktionen zugefügt,
* 				trimbar über RS
* 		1.05	neue LIB
*		1.07    Anpassung für LPC936, Lib 1.53, Line-Scan Bugfix
* 		1.08	BUGfix LIB 1.55
*/

//#define debugmode
//#define NOPROGLED //typ 0,2 Die Progled blinkt im Progmodus da sie auch Betriebs LED ist
//#define NOPROGBUTTON	//typ 1,3 es ist kein prog Taster vorhanden sondern progmode wird durch druecken von taste 1&3 oder 2&4 aktiviert


#include "fb_app_taster.h"
#include "watchdog.h"
#include "debug.h"
#include "fb_rs232.h"


#ifdef NOPROGBUTTON
	#ifdef NOPROGLED
		#define TYPE 3
	#else
		#define TYPE 1
	#endif
#else
	#ifdef NOPROGLED
		#define TYPE 2
	#else
		#define TYPE 0
	#endif
#endif

#define VERSION		107

unsigned char __idata __at 0x00 RAM[00];

unsigned char object_value[12];	// wird hier deklariert um den Speicher besser auszunutzen!!!


/**
* The start point of the program, init all libraries, start the bus interface, the application
* and check the status of the program button.
*
* @return
*/
void main(void)
{
	unsigned char n,LED,cmd,tasterpegel=0;
	__bit blink, verstell, verstellt,tastergetoggelt=0;
	signed char cal,buttonpattern=1;
	static __code signed char __at (USERRAM_ADDR + 0xFF) trimsave;
	static __code unsigned char __at (USERRAM_ADDR +0xFE) LED_hell = {255};
	// Verions bit 6 und 7 für die varianten, bit 0-5 für die verionen (63)
	//Varianten sind hier noprogbutton=0x040, noprogled=0x80
	__bit wduf;
	wduf=WDCON&0x02;

	restart_hw();							// Hardware zuruecksetzen
#ifdef NOPROGBUTTON
	if((((PORT & 0x0F)== 0x03) || ((PORT & 0x0F)== 0x0C)) && wduf) cal=0;
	else cal=trimsave;

#else
	TASTER=1;
	if(!TASTER && wduf)cal=0;
	else cal=trimsave;
#endif
	TRIM = (TRIM+trimsave);
	TRIM &= 0x3F;//oberen 2 bits ausblenden
	WATCHDOG_INIT
	WATCHDOG_START
	TASTER=0;
	for (n=0;n<50;n++) {
		TR0=0;					// Timer 0 anhalten
		TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
		TL0=eeprom[ADDRTAB+2];
		TF0=0;					// Überlauf-Flag zurücksetzen
		TR0=1;					// Timer 0 starten
		while(!TF0);
	}
	restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
	//...rs_init...(6);im folgenden direkt:
#ifndef debugmode
	RS_INIT_600
#else
	RS_INIT_115200
#endif
	SBUF=0x55; // hiernach ist TI==1

	for (n=0;n<4;n++) switch_led(n,0);	// Alle LEDs gemaess ihren Parametern setzen

	LED=0;
	verstellt=0;
	dimmwert = LED_hell;

	do  {
		WATCHDOG_FEED
		if (RTCCON>=0x80)	// Realtime clock ueberlauf
			{
			RTCCON=0x61;// RTC flag löschen
			if(!connected)delay_timer();// die normal RTC Behandlung
			else// wenn connected den timeout für Unicast connect behandeln
				{
				if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
					{
					connected_timeout ++;
					}
				else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
				}
			}


		n=timer;
		blink=((n>>5) & 0x01);
		verstell=((n>>2) & 0x01);

		if (verstell==0)verstellt=0;


		if (status60 & 0x01){			//wenn progmode aktiv ist...
			//n=dimmwert;//LED_hell;
			if ((PORT & 0x0F)==0x0E){	// Taste 1 gedrück
				if ((dimmwert<254) && (verstell==1)&& verstellt==0){
					dimmwert++;
					verstellt=1;
				}
			}
			if ((PORT & 0x0F)==0x0D){ // Taste 2 gedrückt
				if ((dimmwert>1) && (verstell==1)&& verstellt==0){
					dimmwert--;
					verstellt=1;
					}
			}
		}
		else{	//Wenn also Modul nicht im Progmode ist..
			//##### TASTERABFRAGE ######

			if(APPLICATION_RUN)	{// nur wenn im Run modus und nicht connected
				if ((PORT & 0x0F) != button_buffer) port_changed(PORT & 0x0F);	// ein Taster wurde gedrueckt
			}
		}

		if (tel_arrived || tel_sent) {//
			tel_sent=0;
			process_tel();
		}
		else {
			for(n=0;n<100;n++);
		}

#ifndef debugmode
		if (RI){
			RI=0;
			cmd=SBUF;
			if(cmd=='c'){
				while(!TI);
				TI=0;
				SBUF=0x55;
			}
			if(cmd=='+'){
				TRIM--;
				cal--;
			}
			if(cmd=='-'){
				TRIM++;
				cal++;
			}
			if(cmd=='w'){
				EA=0;
				START_WRITECYCLE;	//cal an 0x1cFF schreiben
				FMADRH= USERRAM_ADDR_H;
				FMADRL= 0xFF;
				FMDATA=	cal;
				STOP_WRITECYCLE;
				EA=1;				//int wieder freigeben
			}
			if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
			if(cmd=='v'){
				while(!TI);
				TI=0;
				SBUF=VERSION;
			}
			if(cmd=='t'){
				while(!TI);
				TI=0;
				SBUF=TYPE;
			}
			//if(cmd >=49 && cmd <= 56){
			//	portbuffer = portbuffer ^ (0x01<< (cmd-49));
			//	port_schalten();
			//}
		}
#else
		cmd;
		DEBUGPOINT
#endif
#ifndef NOPROGBUTTON
		TASTER=1;				        	// Pin als Eingang schalten um Programmiertaster abzufragen
		if(!TASTER){ // Taster gedrückt
			if(tasterpegel<255)	tasterpegel++;
			else {
				if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
				tastergetoggelt=1;
                if((status60 & 0x01)==0){	//wenn ausgemacht, Dimmwert speichern
                    EA=0;
                    START_WRITECYCLE;
                    FMADRH= USERRAM_ADDR_H; //0x1C
                    FMADRL= 0xFE;
                    FMDATA=	dimmwert;
                    STOP_WRITECYCLE;
                    EA=1;
                }
			}
		}
		else {
			if(tasterpegel>0) tasterpegel--;
			else tastergetoggelt=0;
			}

#else
		// progmode wird durch Taste 1&2 bzw. 3&4 getoggelt
		if (((PORT & 0x0F)== 0x03) || ((PORT & 0x0F)== 0x0C)) {
			if(tasterpegel<255)	tasterpegel++;
			else {
				if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
				tastergetoggelt=1;
				if((status60 & 0x01)==0){	//wenn ausgemacht Dimmwert speichern
					EA=0;
					START_WRITECYCLE;
					FMADRH= USERRAM_ADDR_H; //0x1C
					FMADRL= 0xFE;
					FMDATA=	dimmwert;
					STOP_WRITECYCLE;
					EA=1;
				}

			}
		}

		if ((PORT & 0x0F)== 0x0F){ ;	// Warten bis alle Taster losgelassen
			if(tasterpegel>0) tasterpegel--;
			else tastergetoggelt=0;
			}
#endif

#ifdef NOPROGLED
		if (status60 & 0x01) TASTER = blink;		// LED blinkt im Prog-Mode
		else TASTER = !((eeprom[0xCD] & 0x10) >> 4);	// LED ist an oder aus gemaess Parameter fuer Betriebs-LED
#else
		if (status60 & 0x01) TASTER = 0;		// LED leuchtet im Prog-Mode
		else TASTER = 1;						// LED aus
#endif


	}  while(1);
}



