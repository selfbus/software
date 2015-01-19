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

#ifndef ONEWIRE_H
#define ONEWIRE_H


//extern const unsigned char bitmask_1[8];

__bit ow_init(void);					// one-wire Gerät initialisieren
void ow_write(unsigned char owbyte);	// Byte an one-wire Gerät senden
unsigned char ow_read(unsigned char);			// Byte von one-wire Gerät lesen
__bit ow_read_bit(void);				// Bit von one-wire Datenleitung einlesen
void start_tempconversion(void);		// Temperaturmessung starten
int read_temp(unsigned char sensortyp);	// Temperatur einlesen

static void owdelay(unsigned char deltime);


#endif
