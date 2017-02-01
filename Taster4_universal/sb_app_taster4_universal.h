/*
 *    _____ ______ __   __________  __  _______ *
 *   / ___// ____// /  / ____/ __ )/ / / / ___/ *
 *   \__ \/ __/  / /  / /__ / __  / / / /\__ \  *
 *  ___/ / /__  / /__/ /__// /_/ / /_/ /___/ /  *
 * /____/_____//____/_/   /_____/\____//____/   *
 *
 *  Copyright (c) 2014, Andreas Krieger
 *  Copyright (c) 2014-2015, Stefan Haller
 *  Copyright (c) 2008,2009,2010 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* @file   sb_app_taster4_universal.h
* @date   2014
*
* @brief The Selfbus Taster Application, Firmware fuer einen 4-fach Taster mit 4 LEDs
*
*
*/

#ifndef FB_APP
#define FB_APP

// Version number
#define VER_MAJ     0x02    // 0x01 is old Jung FW
#define VER_MIN     0x08

//#define LPC936		// LPC936 anstatt LPC922

// OPTIONS
// Enable to activate device ID checking
#define DEVICE_ID_CHECK


#ifdef LPC936
	//#include <fb_lpc936_1.56.h>
    #include <fb_lpc936.h>
#else
    //#include <fb_lpc922_1.56.h>
    #include <fb_lpc922.h>
#endif

// Include to enable debug options within the project
//#include "debug.h"


#define POWERLED		0xCD
#define LED_DURATION	0xE2
#define FUNCTION		0xE3//done	// Funktion der Taster
#define COMMAND			0xE7//done	// Funktion der LEDs und Befehle der Taster
#define DEL_BASE		0xD4
#define DEL_FACTOR1		0xD5
#define DEL_FACTOR2		0xD6


extern unsigned int timer,timerflags;   // Timer fuer Schaltverzoegerungen, wird alle 130us hochgezaehlt
extern __bit delay_toggle;		        // um nur jedes 2. Mal die delay routine auszufuehren
//extern long buttontimer[4];
extern unsigned char LEDSTATE,LEDVAL,dimmcompare,dimmwert; // den LED status speichern um Dimmbar zu machen
extern unsigned char button_buffer;	    // puffer fuer taster werte
extern unsigned int __idata __at (0xFE-18) object_value[9];
extern unsigned char bitobject;         // fuer die unteren 8 Bitobjekte

extern unsigned char sequence;
extern unsigned char timercnt[9]; //,timerbase[9],timerstate[8];
void timer0_int(void) __interrupt (1);
void port_changed(unsigned char portval);	// ein Taster wurde gedrueckt oder losgelassen
void button_changed(unsigned char buttonno, __bit buttonval);	// Taster Aktion abarbeiten
void switch_led(unsigned char ledno, __bit onoff);	// LED schalten
signed int eis5conversion(signed int zahl);
//void write_value_req(void);	// Hauptroutine fuer Ausgaenge schalten gemaess EIS 1 Protokoll (an/aus)
void delay_timer(void);			// zaehlt alle 130ms die Variable Timer hoch und prueft Queue
//void send_eis(unsigned char eistyp, unsigned char objno, int sval);	// sendet ein EIS Telegramm
unsigned long read_obj_value(unsigned char objno);
void write_obj_value(unsigned char objno, unsigned int objval);

#endif
