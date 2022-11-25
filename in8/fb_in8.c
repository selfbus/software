/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2008 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

// Versionen:	3.00	erste Version Binäreingang auf HW Basis 3
//				3.01	Lesen von Objekten zugefügt
//				3.02	Fehler behoben: gelegentliches Dauersenden von Telegrammen
//				3.03	Fehler behoben: 2. Objekt eines Eingangs reagierte auf Flanken wie das erste
//				3.04	Bug beim Lesen eines GA-Wertes behoben
//				3.05	Bug: Empfing nach Senden eines Schaltbefehls keine Telegramme mehr
//				3.06	Bug: aktuellen Eingangswert senden entfernt
//				3.07	BUG: dto
//				3.08	auf LIB 1.4x umgebaut
//				3.09	bugfix zyklisch senden
//				3.10	auf LIB 1.53, connected timeout, Sperre bugfix
//              3.11    Lib 1.55
//              3.12    Lib 1.58
//              3.13    >Lib 1.58 (4.2.2017 commit SHA-1: 4eb81d56885c6e13731c78e92206295304953ced)


#include "fb_app_in8.h"
#include "../com/watchdog.h"

#if defined(TERMINAL) || defined(DEBUGMODE)
#   include "../com/fb_rs232.h"
#endif

#ifdef IN8_2TE
#   include "../com/spi.h"
#endif

const unsigned char bitmask_1[8] ={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};

static __code unsigned char __at (EEPROM_ADDR + 0x00) option_reg={0xFF};            // Option Register, ETS will write 0xFF
static __code unsigned char __at (EEPROM_ADDR + 0x01) fw_version[2]={TYPE,VERSION}; // Man. Data, used for FW Version
static __code unsigned char __at (EEPROM_ADDR + 0x03) manufacturer[2]={0x00,0x04};  // Herstellercode 0x0004 = Jung *
static __code unsigned char __at (EEPROM_ADDR + 0x0C) port_A_direction={0x00};      // PORT A Direction Bit Setting *
static __code unsigned char __at (EEPROM_ADDR + 0x0D) run_error={0xFB};             // Run Time Error Flags, set when 0
static __code unsigned int  __at (EEPROM_ADDR + 0x17) start_pa={0xFFFF};            // Default PA is 15.15.255 *


void main(void)
{
	unsigned char n;
	unsigned char tasterpegel=0;
#ifdef TERMINAL
	unsigned char cmd;
	signed char cal;
    static __code signed char __at (0x1CFF) trimsave; ///!> value of the internal oscillator trim register, can be changed over serial
#endif

	unsigned int base;
	unsigned char pin=0;
#ifdef zykls
	unsigned char tmp;
	unsigned char objno;
	unsigned char objstate;
#else
	#ifdef zaehler
	   unsigned char objno;
	#endif
#endif

	__bit wduf;
	__bit tastergetoggelt=0;
	__bit bus_return_ready=0;

	wduf=WDCON&0x02;
#ifdef TERMINAL
	TASTER=1;
	if(!TASTER && wduf)cal=0;
	else cal=trimsave;
	TRIM = (TRIM+trimsave);
	TRIM &= 0x3F;//oberen 2 bits ausblenden
#endif
	TASTER=0;
	restart_hw(); // Hardware zurücksetzen

// serielle Schnittstelle initialisieren
#if defined(DEBUGMODE) && defined(TERMINAL)
	RS_INIT_115200
#endif

#if defined(DEBUGMODE) && !defined(TERMINAL)
	RS_INIT_600
#endif

#if defined(TERMINAL) || defined(DEBUGMODE)
    SBUF=0x55;// 'U' senden
#endif

	restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen

  if(!wduf){
  // Verzögerung Busspannungswiederkehr
	  for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
	//	  start_rtc(130);		// rtc auf 130ms
			RTCCON=0x60;		// RTC anhalten und Flag löschen
			RTCH=0x1D;			// reload Real Time Clock für 65ms
			RTCL=0x40;
			RTCCON=0x61;		// RTC starten
		    while (RTCCON<=0x7F) ;	// Realtime clock ueberlauf abwarten
		    // feed the watchdog
		    WATCHDOG_FEED
		    //	  stop_rtc;
	  }
  }
  WATCHDOG_INIT
  WATCHDOG_START

  do  {
		WATCHDOG_FEED 	    // feed the watchdog

	 if(APPLICATION_RUN){
#ifndef IN8_2TE
	  p0h=P0;				// prüfen ob ein Eingang sich geändert hat
#else
	  p0h=spi_in_out();
#endif
	  if(!bus_return_ready)
	  {
		  portbuffer=p0h;
	  	  if(!wduf)bus_return();			// Anwendungsspezifische Einstellungen zurücksetzen
	  	  bus_return_ready=1;
	  }

	  if (p0h!=portbuffer)
	    {
//	      for(n=0;n<8;n++)					// jeden Eingangspin einzel prüfen
//	      {
//	    	if (((p0h^portbuffer) & bitmask_1[pin]) )// Version ohne Sperre!!
	    	if (((p0h^portbuffer) & bitmask_1[pin])&& !(blocked & bitmask_1[pin]) )//kürzeste Version
	        {
	          pin_changed(pin);				// Änderung verarbeiten
	        }
//	      }
//	    	portbuffer|=p0h;
	      portbuffer|=(p0h& bitmask_1[pin]);					// neuen Portzustand in buffer speichern
	      portbuffer&=(p0h| ~bitmask_1[pin]);					// neuen Portzustand in buffer speichern

	      pin++;	// nächsten pin prüfen..
	      pin&=0x07;// maximal 0-7
	    }



		if (RTCCON>=0x80){
			delay_timer();	// Realtime clock ueberlauf
		}

#ifdef zykls
		for(objno=0;objno<=7;objno++){
	    	tmp=(eeprom[0xD5+(objno*4)]&0x0C);//0xD5/ bit 2-3 zykl senden aktiv
    		objstate=read_obj_value(objno);
    		if (((eeprom[0xCE+(objno>>1)] >> ((objno & 0x01)*4)) & 0x0F)==1){// bei Funktion=Schalten
	    		if ((tmp==0x04 && objstate==1)||(tmp==0x08 && objstate==0)|| tmp==0x0C){//bei zykl senden aktiviert
					n=timercnt[objno];
					if ((n & 0x7F) ==0){ 		//    wenn aus oder abgelaufen
						timercnt[objno] = (eeprom[0xD6+(objno*4)]& 0x3F)+ 0x80 ;//0xD6 Faktor Zyklisch senden x.1 + x.2 )+ einschalten
						timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07;	//Basis zyklisch senden
						if (n & 0x80){// wenn timer ein war
							if(!(blocked & bitmask_1[objno]))
							{
							while(!send_obj_value(objno));//send_obj_value(objno);		// Eingang x.1 zyklisch senden
							}
						}
					}
				}
				else timercnt[objno]=0;
	  		}
		}

#endif
#ifdef zaehler  // löschen der Zählerwerte nach Lösch-Anforderung
		for (objno=0;objno<=1;objno++){
			if(timerstate[objno]==0 && (timerbase[objno]& 0x40)== 0x40){//Impulszähler,Schaltzaehler
				if (!TR1){// warten bis statemachine fertig ist...
					zaehlervalue[objno]=0;
					timerbase[objno]&= ~0x40;
				}

			}
		}
#endif


	}// end if(APLIAKTION_RUN...
	else if (RTCCON>=0x80 && connected)	// Realtime clock ueberlauf
	{			// wenn connected den timeout für Unicast connect behandeln
		RTCCON=0x61;// RTC flag löschen
		if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
			{
			connected_timeout ++;
			}
			else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
	}


	if (tel_arrived || tel_sent) {
		tel_arrived=0;
		tel_sent=0;
		process_tel();
	}
	else {
		for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
	}

	// Eingehendes Terminal Kommando verarbeiten...
#ifdef TERMINAL
#	ifndef DEBUGMODE
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
			START_WRITECYCLE;	//cal an 0x1cff schreiben

			FMADRH= 0x1C;
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

	}//end if(RI...
#	else // wenn also DEBUGMODE + TERMINAL
	DEBUGPOINT;
#	endif
#else
#	ifdef debugmode// wenn nicht TERMINAL und DEBUGMODE
	DEBUGPOINT;
#	endif
#endif

	TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
	if(!TASTER){ // Taster gedrückt
		if(tasterpegel<255)	tasterpegel++;
		else{
			if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
			tastergetoggelt=1;
		}
	}
	else {
		if(tasterpegel>0) tasterpegel--;
		else tastergetoggelt=0;
	}
	TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)

  } while(1);
}


