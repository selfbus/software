/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2008 Andreas Krebs <kubi@krebsworld.de>
 *                      Richard Weissteiner richard@seelaus.at
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#ifndef FB_APP_DIM
#define FB_APP_DIM

#define DIMKREISE 2
#define FUNCASS		0xD8	// Startadresse der Zuordnung der Zusatzfunktionen (2 Byte)
#define OFFDISABLE	0xEB	// Aus-Telegramm ignorieren
#define FUNCTYP		0xED	// Typ der Zusatzfunktion
#define LOGICTYP	0xEE	// Verknüpfungs Typ 0=keine 1=ODER 2=UND 3=UND mir Rückführung
#define BLOCKACT	0xEF	// Verhalten beim Sperren
#define RELMODE		0xF2	// Relaisbetrieb
#define	DELAYTAB	0xF9	// Start der Tabelle für Verzögerungswerte (Basis)

void send_value(unsigned char type, unsigned char objno, int sval);
void read_value_req(void);
void write_value_req(void);	// Hauptroutine für Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
void delay_timer(void);		// zählt alle 130ms die Variable Timer hoch und prüft Queue
void respond(unsigned char objno, unsigned char rval);
void port_schalten(unsigned char ports);     // Ausgänge schalten
unsigned char helligkeittsstufe(unsigned char stufe,unsigned char kanal);

extern unsigned char anspringen[DIMKREISE];          //andimmen (0) oder anspringen (1) [0]=K1
extern unsigned char dimm_helldunkel[DIMKREISE];     //9=heller 0=stop 1=dunkler
extern unsigned char dimm_I2C[DIMKREISE];            //dimmwert zur i2c schnittstelle
extern unsigned char dimmwert[DIMKREISE];            //Dimmwert verarbeiten und ausgeben
extern unsigned char mindimmwert[DIMKREISE];         //minimaldimmwert von der applikation
extern unsigned char einschathellikeit[DIMKREISE];   //einschathellikeit
extern unsigned char sperren[DIMKREISE];             //Sperren oder nicht 1=sperren
extern unsigned char taste;                          //Handbetätigung
extern unsigned char ausschalthellikeit[DIMKREISE];  //merker für den letzte hellikeit
#endif
