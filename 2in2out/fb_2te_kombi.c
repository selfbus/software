/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2009	Andreas Krebs <kubi@krebsworld.de>
 *                      Jan Wegner
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 *
 *	2te Kombi 2in/2out
 *
 *	Jung 2132_6
 *	Ausg�nge P0_0 und P0_1
 *	Eing�nge P0_2 und P0_3
 *
 *
 *
 *
 *
 *
 */

#define WATCHDOG_ENABLED

#include <P89LPC922.h>
#include "fb_hal_lpc.h"
#include "2te_prot.h"
#include "fb_app_2te_kombi.h"
#include "2te_delay.h"
#ifdef WATCHDOG_ENABLED
#   include "../com/watchdog.h"
#endif



/** 
* The start point of the program, init all libraries, start the bus interface, the application
* and check the status of the program button.
* 
*
*/
void main(void)
{ 
	unsigned char n;

	restart_hw();				// Hardware zuruecksetzen
	for (n=0;n<50;n++) {
		set_timer0(0xFFFF);		// Warten bis Bus stabil
		while(!TF0);
	}


	restart_prot();				// Protokoll-relevante Parameter zuruecksetzen
	restart_app();				// Anwendungsspezifische Einstellungen zuruecksetzen

    // feed the watchdog
#ifdef WATCHDOG_ENABLED
	WATCHDOG_INIT
    WATCHDOG_START
#endif

	do  {
		
		// ***************************************************************************
		// Hier ist der Platz f�r wiederkehrende Abfragen, die nicht zeitkritisch sind
		// ***************************************************************************
#ifdef WATCHDOG_ENABLED
		WATCHDOG_FEED 	    // feed the watchdog
#endif

		if (wait_bus_return) // pr�fen ob Wartezeit noch l�uft
		{
			if (delrec[6*4]==0) bus_return();
		}
		else
		{
			if ((PORT & 0x0C) != button_buffer) port_changed(PORT & 0x0C);	// ein Taster wurde gedrueckt
			if (portchanged) port_schalten(portbuffer, 0x00);				// Ausg�nge schalten
		}

		if(RTCCON>=0x80) delay_timer();	// Realtime clock Ueberlauf

		if(TF0 && (TMOD & 0x0F)==0x01)  // Vollstrom f�r Relais ausschalten und wieder PWM ein
		{
			TMOD=(TMOD & 0xF0) + 2;			// Timer 0 als PWM
			TAMOD=0x01;
			TH0=DUTY;
			TF0=0;
			AUXR1|=0x10;	// PWM von Timer 0 auf Pin ausgeben
			PWM=1;			// PWM Pin muss auf 1 gesetzt werden, damit PWM geht !!!
			TR0=1;
		}

		// Abfrage Programmier-Taster
		TASTER=1;					// Pin als Eingang schalten um Taster abzufragen
		if(!TASTER) {				// Taster gedr�ckt
			for(n=0;n<100;n++) {}	// Entprell-Zeit
			while(!TASTER);			// warten bis Taster losgelassen	
			START_WRITECYCLE;
			WRITE_BYTE(0x00,0x60,userram[0x60] ^ 0x81);	// Prog-Bit und Parity-Bit im system_state toggeln
			STOP_WRITECYCLE;
		}
		TASTER=!(userram[0x060] & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
		//for(n=0;n<100;n++) {}		// falls Hauptroutine keine Zeit verbraucht, der LED etwas Zeit geben, damit sie auch leuchten kann
  } while(1);
}


