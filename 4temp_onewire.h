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


//#define multiplex

#define DELAY_CONST_1WIRE_DHT_MASTER_1  16  // 20 = lesen approx. 15us nach Vorderkante; 16=7.5µs
#define DHT1x_SENSOR    0
#define DHT2x_SENSOR    1

extern const unsigned char bitmask_1[8];

__bit ow_init(void);					// one-wire Gerät initialisieren
void ow_write(unsigned char owbyte);	// Byte an one-wire Gerät senden
unsigned char ow_read(void);			// Byte von one-wire Gerät lesen
__bit ow_read_bit(void);				// Bit von one-wire Datenleitung einlesen
void start_tempconversion(void);		// Temperaturmessung starten
int read_temp(unsigned char sensortyp);	// Temperatur einlesen

static void oowdelay(unsigned char deltime);
static void olong_owdelay(unsigned int deltime);
void HW_owdelay(unsigned int deltime);

inline void dht1x_init(unsigned char hw_channel);
__bit dht_decode(unsigned char sensor_type);
unsigned char receive_1wire_dht (unsigned char hw_channel);

extern unsigned char kanal;
extern int __idata __at (0xFE-0x28) dht_temp;
extern int __idata __at (0xFE-0x2A) dht_humid;
