/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2013 Andreas Krieger
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
#ifndef FB_APP_LC
#define FB_APP_LC

//#define debugmode
#ifdef LPC936
	#include <fb_lpc936_1.55.h>
#else
#include <fb_lpc922_1.55.h>
#endif

// Parameter-Adressen im EEPROM

// Adressen zum speichern von Applikations Daten
#define PORTSAVE	0x99	// Portzustände
#define TIMERANZ	0x02	// timeranzahl

// Interrupteinstellung für AC Schallwandler versus DC Piepser
//#define AC_BEEP



#define REFRESH \
		//P0= oldportbuffer;	// refresh des Portzustandes in der hal
							// für astabile Relaise 
// SPI Konfiguration
#define CLK			P0_1
#define DATAOUT		P0_0
#define WRITE		P0_2
#define beep_port	P0_6//P1_2
#define QUIT		P0_7//P1_3
extern 	__bit portchanged;// globale variable, sie ist 1 wenn sich portbuffer geändert hat
extern unsigned char portbuffer;

extern unsigned char led_obj[3];	//24 LED objekte
extern unsigned char led_hell_obj;	// Helligkeits Objekt
extern unsigned char quitted_obj[3];	// 24 Quittierungs flags
extern __bit zentral_alarm_obj,reset_obj; //zentralalarmobjekt, resetobjekt
extern unsigned char blink;				// maskenvariable für das Blinken
extern unsigned char t0_div;			// zählvariable für den sound

extern const unsigned int timerflagmask[];
extern const unsigned char bitmask_1[];
extern const unsigned char bitmask_0[];
extern const unsigned char bitmask_11[];

void timer0_int(void) __interrupt (1);
//void write_value_req(void);		// Hauptroutine für Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
//void read_value_req(void);
void delay_timer(void);		// zählt alle 130ms die Variable Timer hoch und prüft Queue
void LED_schalten(void);	// Ausgänge schalten
void spi_2_out(unsigned char daten);// gibt 'daten' an ein Schieberegister aus
void bus_return(void);		// Aktionen bei Busspannungswiederkehr
void restart_app(void);		// Alle Applikations-Parameter zurücksetzen
unsigned long read_obj_value(unsigned char objno);	// gibt den Wert eines Objektes zurueck
void write_obj_value(unsigned char objno,unsigned int objvalue);	// schreibt den aktuellen Wert eines Objektes ins 'USERRAM'
void hell_stellen (void);// stellt die Helligkeit der LEDs ein
void erease_alarm(__bit value);// löscht den Alarm

#endif
