/*
 *  Copyright (c) 2013 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */
#ifndef ft_const_h
#define ft_const_h

// PEI Mode: Normal
#define PEI_MODE_NORMAL			0

// PEI Mode: Application Layer
#define PEI_MODE_APP			1

// PEI Mode: Transport Layer Remote
#define PEI_MODE_TRANS_REMOTE	2

// PEI Mode: Transport Layer Local
#define PEI_MODE_TRANS_LOCAL	3

// PEI Mode: Link Layer
#define PEI_MODE_LINK			4

// PEI Mode: Bus Monitor
#define PEI_MODE_BUSMON			5


// Adresse des Pointers auf die Assoziations-Tabelle
#define ASSOCTABPTR 	0x11

// Adresse des Pointers auf die Kommunikationsobjekt-Tabelle
#define COMMSTABPTR 	0x12

// Startadresse der Adresstabelle
#define ADDRTAB		0x16

// Startadresse der Zuordnung der Zusatzfunktionen (2 Byte)
#define FUNCASS		0xD8

// Typ der Zusatzfunktion
#define FUNCTYP		0xED

// Verknüpfungs Typ 0=keine 1=ODER 2=UND 3=UND mir Rückführung
#define LOGICTYP	0xEE

// Verhalten beim Sperren
#define BLOCKACT	0xEF

// Relaisbetrieb
#define RELMODE		0xF2

// Start der Tabelle für Verzögerungswerte (Basis)
#define	DELAYTAB	0xF9

#define LED_run 	P0_1
#define LED_data	P0_0


#endif // ft_const_h
