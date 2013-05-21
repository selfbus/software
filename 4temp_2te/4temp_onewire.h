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


//#define multiplex

bit ow_init(void);						// one-wire Gerät initialisieren
void ow_write(unsigned char owbyte);	// Byte an one-wire Gerät senden
unsigned char ow_read(void);			// Byte von one-wire Gerät lesen
bit ow_read_bit(void);					// Bit von one-wire Datenleitung einlesen
void start_tempconversion(void);		// Temperaturmessung starten
int read_temp(unsigned char sensortyp);	// Temperatur einlesen
void owdelay(int deltime);


