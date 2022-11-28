/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2008 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* @file   fb_prot.h
* @author Andreas Krebs <kubi@krebsworld.de>
* @date    2008
* 
* @brief  Hier sind ausschliesslich die Protokoll-Handling Routinen fuer den 89LPC922
* 
* 
*/

#ifndef FB_PROT
#define FB_PROT

#define ASSOCTABPTR 	0x11	// Adresse des Pointers auf die Assoziations-Tabelle
#define COMMSTABPTR 	0x12	// Adresse des Pointers auf die Kommunikationsobjekt-Tabelle
#define ADDRTAB			0x16	// Startadresse der Adresstabelle

// Globale Variablen
//extern bit progmode;			// Programmiermodus
extern unsigned char last_tel;
extern __bit transparency;		// wenn 1 dann wird telegramm lokal nicht verarbeitet

// Funktionen
void timer1(void) __interrupt 3;	// Interrupt von Timer 1, 370us keine Busaktivitaet seit letztem Byte,										//	 d.h. Telegramm wurde komplett uebertragen
__bit get_ack(void);				// wartet bis Byte empfangen wurde und prueft ob es ein ACK war  <- suboptimal, besser mit timeout !!!
void send_telegramm(void);		// sendet das Telegramm, das in telegramm[] vorher abgelegt wurde und berechnet die checksum
void send_ack(void);			// wartet auf Timer 1 wegen korrekter Positionierung und sendet ACK (0xCC)
void send_nack(void);			// wartet auf Timer 1 wegen korrekter Positionierung und sendet NACK (0x0C)
void get_gat(void);				// group address table aus EEPROM lesen und in array gat[] schreiben
unsigned char gapos_in_gat(unsigned char gah, unsigned char gal);	// Gruppenadresse in Adresstabelle finden, Rueckgabe Positionsnr.
void ncd_quit(void);			// NCD Quittierung zurueck senden. Setzt telegramm Bytes 0 bis 6 !!!
void read_masq(void);			// Maskenversion senden
void read_memory(void);			// read_memory_request - Speicher auslesen und senden
void write_memory(void);		// write_memory_request - empfangene Daten in Speicher schreiben
void set_pa(void);				// neue phys. Adresse programmieren
void read_pa(void);				// phys. Adresse senden
unsigned char read_objflags(unsigned char objno);	// Objektflags lesen
unsigned int find_ga(unsigned char objno);	// Gruppenadresse ueber Assoziationstabelle finden (erster Eintrag, falls mehrere)
unsigned char find_first_objno(unsigned char gah, unsigned char gal);
void restart_prot(void);		// Protokoll-relevante Parameter zuruecksetzen
//unsigned int read_obj_value(unsigned char objno);				// gibt den Wert eines Objektes zurueck
//unsigned char read_obj_type(unsigned char objno);		// gibt den Typ eines Objektes zurueck
//bit write_obj_value(unsigned char objno,int objvalue);	// schreibt den aktuellen Wert eines Objektes ins 'USERRAM'
void restart_app(void);			// Alle Applikations-Parameter zuruecksetzen


// Funktionen die sich in der app befinden m�ssen
extern void write_value_req(void);		// Routine zur Verarbeitung eingegegangener Telegramme zum Schreiben eines Objektwertes
extern void read_value_req(void);		// Objektwerte lesen angefordert

#endif
