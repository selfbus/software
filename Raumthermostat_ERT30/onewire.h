#ifndef ONEWIRE_H_
#define ONEWIRE_H_

#include "hardware.h"

//#define OWDATA 	P0_7	// Data-Pin für one-wire Sensor
#ifndef OWDATA
    #error Unknown Data-Pin onewire sensor
#endif

#define DS18S20 0x10 // 8-bit family code for DS18S20
#define DS18B20 0x28 // 8-bit family code for DS18B20

// Gloable Variablen
extern unsigned char g_uch_ow_crc8;			// Abspeicherung des 8-Bit-CRC-Wertes, CRC8
extern unsigned char g_rguch_ds1820[9];  	// Array für empfangene Daten vom DS1820er: max 9 Bytes möglich
extern unsigned char g_rguch_ow_rom_c[8];	// Array zur Aufnahme des ROM-Codes

// Funktionen
void write_delay_record(unsigned char objno, unsigned char state, long deltime);
__bit ow_init(void);						// one-wire Gerät initialisieren
void ow_write(unsigned char owbyte);	// Byte an one-wire Gerät senden
unsigned char ow_read(void);			// Byte von one-wire Gerät lesen
__bit ow_read_bit(void);					// Bit von one-wire Datenleitung einlesen
void start_tempconversion(void);		// Temperaturmessung starten
int read_temp(void);					// Temperatur einlesen und gem EIS6 umrechnen
__bit ow_read_rom(void);					// Lesen des 64-Bit ROM Identifiers
unsigned char ow_CRC8(unsigned char dats, unsigned char crc); // check crc8 of one byte
unsigned char ow_blockCRC8(unsigned char *dats, unsigned char size); // check crc8 for a block of bytes
void owdelay(int deltime);

#endif // ONEWIRE_H_
