/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2010 Jan Wegner
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#ifndef FB_APP_4temp
#define FB_APP_4temp
void restart_app(void);		// Alle Applikations-Parameter zurücksetzen
void write_value_req(void);
void send_value(unsigned char type, unsigned char objno, unsigned int sval);
void delay_timer(void);
void bus_return(void);
unsigned int sendewert(unsigned char objno);
void grenzwert (unsigned char eingang);
void messwert (unsigned char eingang);


extern long timer;						// Timer für Schaltverzögerungen, wird alle 130us hochgezählt
extern bit delay_toggle;				// um nur jedes 2. Mal die delay routine auszuführen
extern int temp[4],lasttemp[4],lastsendtemp[4];

extern unsigned char kanal;
extern unsigned char zyk_senden_basis;
extern unsigned char sequence;
extern unsigned char sende_sofort_bus_return;



#endif
