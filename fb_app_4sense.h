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

#ifndef FB_APP_4sense
#define FB_APP_4sense

#include <fb_lpc922.h>

// Include to enable debug options within the project
#include "debug.h"


// Damit die Eclipse Code Analyse nicht so viele Warnungen anzeigt:
#ifndef SDCC
# define __idata
# define __code
#endif

// 4Sense VD
#define SENSOR_TYPE     0xB7    // *n
#define TEMP_OFFSET     0xBB    // *2n
#define HUMID_OFFSET    0xBC    // *2n


// Anzahl Timer
#define TIMERANZ	10	// 4 Timer Messwert zyklisch, 4 Sendeverzögerung Messwertdiff, Sendeverzögerung start

void restart_app(void);		// Alle Applikations-Parameter zurücksetzen
void write_value_req(unsigned char objno);		    // Routine zur Verarbeitung eingegegangener Telegramme zum Schreiben eines Objektwertes
void read_value_req(unsigned char objno);		    // Objektwerte lesen angefordert
unsigned long read_obj_value(unsigned char objno) ; // gibt den Wert eines Objektes zurueck
void delay_timer(void);
void bus_return(void);
unsigned int sendewert(unsigned char objno);
void grenzwert (unsigned char eingang);
void messwert (unsigned char eingang);


extern unsigned int timer;				        // Timer für zyklisches senden, wird alle 130ms hochgezählt
extern __bit delay_toggle;				        // um nur jedes 2. Mal die delay routine auszuführen
extern int __idata __at (0xFE-0x10) messwerte[8];    // Temperatur und Luftfeuchte speichern

extern unsigned char timercnt[TIMERANZ];        // speicherplatz für den timercounter und 1 status bit
extern unsigned char zyk_senden_basis;
extern unsigned char sequence;
extern unsigned char sende_sofort_bus_return;

#endif
