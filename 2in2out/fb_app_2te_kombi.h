/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2009	Andreas Krebs <kubi@krebsworld.de>
 *                      Jan Wegner
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#ifndef FB_APP_2TE_KOMBI
#define FB_APP_2TE_KOMBI



#define FUNCTION		0xCF	// Funktion der Taster angepasst
#define COMMAND			0xDF	// Befehle der Taster angepasst

#define DUTY	0x50	// 0xFF=immer low 0x00=immer high

extern long timer;				// Timer fuer Schaltverzoegerungen, wird alle 130us hochgezaehlt
extern __bit delay_toggle;		// um nur jedes 2. Mal die delay routine auszufuehren
//extern long buttontimer[4];
extern unsigned char button_buffer;	// puffer fuer taster werte


void port_changed(unsigned char portval);		// ein Taster wurde gedrueckt oder losgelassen
void button_changed(unsigned char buttonno, __bit buttonval);	// Taster Aktion abarbeiten

extern __bit wait_bus_return;		//bit ist 1 bei aktiver Verzögerung bei Buswiederkehr


// Das REFRESH Makro wird unmittelbar nach Auslösen des Empfangs-Interrupts ausgeführt, falls
// man z.B. Portzustände vor der weiteren Verarbeitung restaurieren muss
#define REFRESH \
		P0= userram[0x29];	// BEISPIEL: refresh des Portzustandes in der hal


void write_value_req(void);		// Hauptroutine für Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
void read_value_req(void);
void send_value(unsigned char type, unsigned char objno, unsigned int sval);
void delay_timer(void);			// zählt alle 130ms die Variable Timer hoch und prüft Queue
void respond(unsigned char objno, unsigned char rval);
void port_schalten(unsigned char ports, __bit NoPWM); // Ausgänge schalten
void object_schalten(unsigned char objno, __bit objstate);	// Objekt schalten
void delay(int w);
void bus_return(void);


/*****************
 * Ausgänge
 *****************/

#define FUNCASS		0xEB	// Startadresse der Zuordnung der Zusatzfunktionen (2 Byte) angepasst nur ein Byte
#define OFFDISABLE	0xEA	// Aus-Telegramm ignorieren angepasst
#define FUNCTYP		0xEC	// Typ der Zusatzfunktion angepasst
#define LOGICTYP	0xED	// Verknüpfungs Typ 0=keine 1=ODER 2=UND 3=UND mir Rückführung angepasst
#define BLOCKACT	0xEE	// Verhalten beim Sperren angepasst
#define BLOCKPOL	0xEF	// Polarität der Sperrobjekte angepasst
#define RELMODE		0xF0	// Relaisbetrieb angepasst
//#define	DELAYTAB	0xF6	// Start der Tabelle für Verzögerungswerte (Basis) angepasst
extern __bit portchanged;// globale variable, sie ist 1 wenn sich portbuffer geändert hat
extern unsigned char portbuffer;
extern __bit direktbetrieb;


extern unsigned char objektwerte[12];
void schreibe_objektwerte(unsigned char objno, unsigned char objvalue);
unsigned char lese_objektwerte(unsigned char objno);


#endif
