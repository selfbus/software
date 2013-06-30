/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
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

//#define debugmode

#define IO_BISTAB
//#define BUS_DOWN
#define MAX_PORTS_4			// Anzahl Ausgänge (nur 4 oder 8 erlaubt)
//#define HAND				// Handsteuerung aktiv (auskommentieren wenn nicht gewünscht)
//#define SPIBISTAB			// Serielle Ausgabe für bistabile relaise aktivieren
//#define panasonic
//#define zeroswitch			// für Platine mit Nullspannungserkennung

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
#define LOGICTYP	0xEE	// Verknüpfungs Typ 0=keine 1=ODER 2=UND 3=UND mir Rückführung
#define BLOCKACT	0xEF    // Verhalten beim Sperren
#define BLOCKPOL	0xF1	// Polarität der Sperrobjekte
#define RELMODE		0xF2	// Relaisbetrieb (Öffner/Schließer)
#define RMINV		0xF3	// Rückmeldung invertiert oder normal
#define	DELAYTAB	0xF9	// Start der Tabelle für Verzögerungswerte (Basis)

// Adressen zum speichern von Applikations Daten
#define PORTSAVE	0x99	// Portzustände
#define TIMERANZ	0x08	// timeranzahl




#define DUTY	0x50	// 0xFF=immer low 0x00=immer high


#define REFRESH \
		P0= oldportbuffer;	// refresh des Portzustandes in der hal
							// für astabile Relaise 
// SPI Konfiguration
#define CLK			P0_3
#define BOT_OUT		P0_0
#define MID_OUT		P0_1
#define WRITE		P0_2

#define LED_SER		P0_4
#define	LED_SCK		P0_5
#define LED_RCK		P0_6

extern 	__bit portchanged;// globale variable, sie ist 1 wenn sich portbuffer geändert hat
extern unsigned char portbuffer;
extern unsigned char rm_send;		// die von der main zu sendenden Rückmeldungen
#ifdef zeroswitch
extern unsigned char portausgabe_on; // einzuschaltende IO, die dann im ext 0 int übernommen werden
extern unsigned char portausgabe_off; // auszuschaltende IO, die dann im t 0 int übernommen werden
extern volatile unsigned char schalten_state; // status T0 int
extern unsigned char phival;
#endif

//void write_value_req(void) ;		// Hauptroutine für Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
//void read_value_req(void) ;
void delay_timer(void);		// zählt alle 130ms die Variable Timer hoch und prüft Queue
void port_schalten(void);	// Ausgänge schalten
void object_schalten(unsigned char objno, __bit objstate);	// Objekt schalten
void spi_2_out(unsigned int daten);
unsigned int sort_output(unsigned char portbuffer);
void bus_return(void);		// Aktionen bei Busspannungswiederkehr
void bus_down (void);
void restart_app(void) ;		// Alle Applikations-Parameter zurücksetzen

unsigned long read_obj_value(unsigned char objno) ;	// gibt den Wert eines Objektes zurueck
void write_obj_value(unsigned char objno,unsigned int objvalue);	// schreibt den aktuellen Wert eines Objektes ins 'USERRAM'
//void EX0_int (void) __interrupt (0);
#ifdef zeroswitch
//void EX0_int(void) __interrupt (0);
//void timer0_int(void) __interrupt (1) ;
#endif


#endif
