#ifndef onewire_h
#define onewire_h

/**
 * OWDATA ist der Daten Pin für den One-Wire Sensor.
 * Bitte definieren bevor onewire.c importiert wird.
 * Z.B. P0_7
 */
//#define OWDATA 	P0_7


void write_delay_record(unsigned char objno, unsigned char state, long deltime);
__bit ow_init(void);					// one-wire Gerät initialisieren
void ow_write(unsigned char owbyte);	// Byte an one-wire Gerät senden
unsigned char ow_read(void);			// Byte von one-wire Gerät lesen
__bit ow_read_bit(void);				// Bit von one-wire Datenleitung einlesen
void start_tempconversion(void);		// Temperaturmessung starten
int read_temp(void);					// Temperatur einlesen und gem EIS6 umrechnen
void owdelay(int deltime);

#endif /*onewire_h*/
