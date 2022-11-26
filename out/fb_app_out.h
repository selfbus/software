/*
 *     _____ ________    __________  __  _______    ____        __
 *    / ___// ____/ /   / ____/ __ )/ / / / ___/   / __ \__  __/ /_
 *    \__ \/ __/ / /   / /_  / __  / / / /\__ \   / / / / / / / __/
 *   ___/ / /___/ /___/ __/ / /_/ / /_/ /___/ /  / /_/ / /_/ / /_
 *  /____/_____/_____/_/   /_____/\____//____/   \____/\__,_/\__/
 *
 *  Copyright (c) 2008-2013 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */


#ifndef FB_APP_OUT
#define FB_APP_OUT

//#define DEBUG_MODE

#ifdef LPC936
	#include <fb_lpc936.h>
#else
#   include <fb_lpc922.h>
#endif

#ifdef DEBUG_MODE
    #include  "../com/debug.h"
#endif

/**
 * @def IO_BISTAB
 * out for io port controlled bi-stable relais
 */
//#define IO_BISTAB

/**
 * @def BUS_DOWN
 * Bus voltage down detection (needs more implementation
 */
//#define BUS_DOWN

/**
 * @def MAX_PORTS_8
 * out with 8 outputs (relais)
 * @note only @ref MAX_PORTS_8 or @ref MAX_PORTS_4 can be defined, not both
 */
//#define MAX_PORTS_8 // Anzahl Ausg�nge (nur 4 oder 8 erlaubt)

/**
 * @def MAX_PORTS_4
 * out with 4 outputs (relais)
 * @note only @ref MAX_PORTS_8 or @ref MAX_PORTS_4 can be defined, not both
 */
//#define MAX_PORTS_4 // Anzahl Ausg�nge (nur 4 oder 8 erlaubt)

/**
 * @def HAND
 * out with hand actuation
 */
//#define HAND // Handsteuerung aktiv (auskommentieren wenn nicht gew�nscht)

/**
 * @def SPIBISTAB
 * out for spi controlled bi-stable relais
 */
//#define SPIBISTAB // Serielle Ausgabe f�r bistabile relaise aktivieren

/**
 * @def zeroswitch
 * out with zero-volt-detection switching relais
 */
//#define zeroswitch // f�r Platine mit Nullspannungserkennung

/**
 * @def panasonic
 * panasonic relais specific timings.
 * @note works only together with @ref zeroswitch
 */
//#define panasonic

#ifdef zeroswitch
	#ifndef panasonic		//OMRON
		#define einverzH 0xC7
		#define einverzL 0xF1
		#define ausverzH 0xB6
	#else					// PANASONIC
		#define einverzH 0xB0
		#define einverzL 0xF1
		#define ausverzH 0xC0
	#endif
#endif
// Parameter-Adressen im EEPROM

#define FUNCASS		0xD8	// Startadresse der Zuordnung der Zusatzfunktionen (2 Byte)
#define OFFDISABLE	0xEB	// Aus-Telegramm ignorieren
#define FUNCTYP		0xED	// Typ der Zusatzfunktion
#define LOGICTYP	0xEE	// Verkn�pfungs Typ 0=keine 1=ODER 2=UND 3=UND mir R�ckf�hrung
#define BLOCKACT	0xEF    // Verhalten beim Sperren
#define BLOCKPOL	0xF1	// Polarit�t der Sperrobjekte
#define RELMODE		0xF2	// Relaisbetrieb (�ffner/Schlie�er)
#define RMINV		0xF3	// R�ckmeldung invertiert oder normal
#define	DELAYTAB	0xF9	// Start der Tabelle f�r Verz�gerungswerte (Basis)

// Adressen zum speichern von Applikations Daten
#define PORTSAVE	0x99	// Portzust�nde
#define TIMERANZ	0x08	// timeranzahl




#define DUTY	0x50	// 0xFF=immer low 0x00=immer high


#define REFRESH \
		P0= oldportbuffer;	// refresh des Portzustandes in der hal
							// f�r astabile Relaise
// SPI Konfiguration
#define CLK			P0_3
#define BOT_OUT		P0_0
#define MID_OUT		P0_1
#define WRITE		P0_2

#define LED_SER		P0_4
#define	LED_SCK		P0_5
#define LED_RCK		P0_6

extern 	__bit portchanged;// globale variable, sie ist 1 wenn sich portbuffer ge�ndert hat
extern unsigned char portbuffer;
extern unsigned char rm_send;		// die von der main zu sendenden R�ckmeldungen
#ifdef zeroswitch
extern unsigned char portausgabe_on; // einzuschaltende IO, die dann im ext 0 int �bernommen werden
extern unsigned char portausgabe_off; // auszuschaltende IO, die dann im t 0 int �bernommen werden
extern volatile unsigned char schalten_state; // status T0 int
extern unsigned char phival;
extern __bit zeropulse;
#endif
#ifdef BUS_DOWN
	void bus_down (void);
#endif
//void write_value_req(void) ;		// Hauptroutine f�r Ausg�nge schalten gem�� EIS 1 Protokoll (an/aus)
//void read_value_req(void) ;
void delay_timer(void);		// z�hlt alle 130ms die Variable Timer hoch und pr�ft Queue
void port_schalten(void);	// Ausg�nge schalten
void object_schalten(unsigned char objno, __bit objstate);	// Objekt schalten
void spi_2_out(unsigned int daten);
unsigned int sort_output(unsigned char portbuffer);
void bus_return(void);		// Aktionen bei Busspannungswiederkehr
void restart_app(void) ;		// Alle Applikations-Parameter zur�cksetzen
void handbedienung(void);
unsigned long read_obj_value(unsigned char objno) ;	// gibt den Wert eines Objektes zurueck
void write_obj_value(unsigned char objno,unsigned int objvalue);	// schreibt den aktuellen Wert eines Objektes ins 'USERRAM'

#ifdef zeroswitch
void EX0_int(void) __interrupt (0);
void timer0_int(void) __interrupt (1) ;
#endif


#endif
