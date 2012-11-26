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

#include <P89LPC922.h>
#include "../lib_lpc922/fb_lpc922.h"
#include "fb_app_in8.h"
#include"../com/watchdog.h"

#ifdef IN8_2TE
#include "../com/spi.h"

#endif

const unsigned char bitmask_1[8] ={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
const unsigned char __at 0x01CE space[18];// Hier schreibt und liest die ETS !!


void main(void)
{ 
	unsigned char n,cmd,tasterpegel=0;
	signed char cal;
	static __code signed char __at 0x1CFF trimsave;  unsigned int base;
	unsigned char pin=0;
#ifdef zykls
	unsigned char tmp,objno,objstate;
#else
	#ifdef zaehler
	unsigned char objno;
	#endif
#endif
	__bit wduf,tastergetoggelt=0;
	wduf=WDCON&0x02;
	TASTER=1;
	if(!TASTER && wduf)cal=0;
	else cal=trimsave;
	TRIM = (TRIM+trimsave);
	TRIM &= 0x3F;//oberen 2 bits ausblenden

	restart_hw();				// Hardware zurücksetzen

 //   rs_init(6);				// serielle Schnittstelle initialisieren
	BRGCON&=0xFE;	// Baudrate Generator stoppen
	P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	P1M2&=0xFC;
	SCON=0x50;		// Mode 1, receive enable
	SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	BRGR1=0x2F;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
	BRGR0=0xF0;	// für 115200 0030 nehmen, autocal: 600bd= 0x2FF0
	BRGCON|=0x01;	// Baudrate Generator starten
	SBUF=0x55;


  


  restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen

#ifndef IN8_2TE
  portbuffer=P0;			// zunächst keine Änderungen bei Busspannungswiederkehr
  p0h=portbuffer;
#else
  portbuffer=spi_in_out();
  p0h=portbuffer;
#endif
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
		    EA = 0;
		    WFEED1 = 0xA5;
		    WFEED2 = 0x5A;
		    EA=1;

		    //	  stop_rtc;
	  }
  }
  watchdog_init();
  watchdog_start();

  if(!wduf)bus_return();			// Anwendungsspezifische Einstellungen zurücksetzen

  TASTER=1;
  do  {
//		watchdog_feed();
	    // feed the watchdog
	    EA = 0;
	    WFEED1 = 0xA5;
	    WFEED2 = 0x5A;
	    EA=1;


if(APPLICATION_RUN){	  
#ifndef IN8_2TE
	  p0h=P0;				// prüfen ob ein Eingang sich geändert hat
#else
	  p0h=spi_in_out();
#endif
	    if (p0h!=portbuffer) 
	    {
	      for(n=0;n<8;n++)					// jeden Eingangspin einzel prüfen
	      {
	        //if ((((p0h>>n)&0x01) != ((portbuffer>>n)&0x01))&& !(blocked>>n)&0x01)
	    	  //if ((p0h & bitmask_1[n])!= (portbuffer & bitmask_1[n])&& !(blocked & bitmask_1[n]) )
	    	if (((p0h^portbuffer) & bitmask_1[n])&& !(blocked & bitmask_1[n]) )//kürzeste Version
	        {
	          pin_changed(n);				// Änderung verarbeiten
	        }
	      }
	      portbuffer=p0h;					// neuen Portzustand in buffer speichern
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
							send_obj_value(objno);		// Eingang x.1 zyklisch senden
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
	if (tel_arrived || tel_sent) { 
		tel_arrived=0;
		tel_sent=0;
		process_tel();
	}
	else {
		for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
	}
	
	// Eingehendes Terminal Kommando verarbeiten...
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
			START_WRITECYCLE;	//cal an 0x1bff schreiben

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


