/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2009-2011 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */



#ifndef FB_HAL
#define FB_HAL

#define FBOUTC	P1_6	// Sendepin
#define TASTER	P1_7	// Pin fuer Programmiertaster
#define FBINC	P1_4	// Empfangspin
#define PWM		P1_2	// PWM-Pin

#define PORT	P0		// Port fuer 8-bit I/O

#define RECEIVE_INT_ENABLE	EX1		// Interrupt enable Flag fuer Empfang

// Pseudo-Objekte für Unicast senden
#define NCD_ACK						129
#define READ_MASK_VERSION_RESPONSE	130
#define READ_PHYSADDR_RESPONSE		131
#define READ_MEMORY_RESPONSE		132
#define T_DISCONNECT				133
#define READ_ADC_RESPONSE			134

// TPDU Befehlsgruppen
#define GROUP_PDU					0x00
#define BROADCAST_PDU_SET_PA_REQ	0x00
#define BROADCAST_PDU_READ_PA		0x01
#define DATA_PDU_MEMORY_OPERATIONS	0x42
#define DATA_PDU_MISC_OPERATIONS	0x43
#define CONNECT_PDU					0x80
#define DISCONNECT_PDU				0x81
#define NACK_PDU					0x83

// APDU Befehle
#define SET_PHYSADDR_REQUEST		0XC0
#define READ_PHYSADDR_REQUEST		0X00
#define WRITE_MEMORY_REQUEST		0x80
#define READ_MEMORY_REQUEST			0x00
#define RESTART_REQUEST				0x80
#define READ_MASK_VERSION_REQUEST	0x00
#define WRITE_GROUP					0x80
#define READ_GROUP_REQUEST			0x00


#define RUNSTATE		0x0D	// run-state (0x00=stop, 0xFF=run)
#define ASSOCTABPTR 	0x11	// Adresse des Pointers auf die Assoziations-Tabelle
#define COMMSTABPTR 	0x12	// Adresse des Pointers auf die Kommunikationsobjekt-Tabelle
#define ADDRTAB			0x16	// Startadresse der Adresstabelle

#define EEPROMADDRH	0x37






// Konfiguriert den entsprechenden pin als bidirectional mit internem pull-up R
#define SET_PORT_MODE_BIDIRECTIONAL(pin) \
	if (pin<8) { \
		P0M1&=(0xFF-(1<<pin)); \
		P0M2&=(0xFF-(1<<pin)); \
	}



// Konfiguriert den entsprechenden pin als pushpull
#define  SET_PORT_MODE_PUSHPULL(pin) \
	if (pin<8) { \
		P0M1&=(0xFF-(1<<pin)); \
		P0M2|=(1<<pin); \
	}


// Konfiguriert den entsprechenden pin als input-only (high impedance, ohne pull-up R) 
#define  SET_PORT_MODE_INPUT(pin) \
	if (pin<8) { \
		P0M1|=(1<<pin); \
		P0M2&=(0xFF-(1<<pin)); \
	}

// Konfiguriert den entsprechenden pin als ausgang mit open drain
#define  SET_PORT_MODE_OPENDRAIN(pin) \
	if (pin<8) { \
		P0M1|=(1<<pin); \
		P0M2|=(1<<pin); \
	}

#define START_WRITECYCLE \
	FMCON=0x00;

#define STOP_WRITECYCLE \
	FMCON=0x68;

#define WRITE_EEPROM(addrl, zdata) \
		FMADRH=EEPROMADDRH; \
		FMADRL=addrl; \
		FMDATA=zdata; 


// Globale Variablen
extern volatile __xdata unsigned char telegramm[23];
extern volatile __xdata unsigned char tx_buffer[8];
extern volatile unsigned char telpos;	// Zeiger auf naechste Position im Array Telegramm
extern volatile __bit interrupted;		// wird durch interrupt-routine gesetzt. so kann eine andere routine pruefen, ob sie unterbrochen wurde
extern volatile unsigned char fb_state;
extern volatile __bit connected;
extern volatile __bit ack, nack, tel_arrived, tel_sent, auto_ack, wait_for_ack;
extern volatile __bit send_ack, send_nack, transparency;
extern volatile unsigned char timeout_count, tx_nextwrite, tx_nextsend;

extern __xdata unsigned char userram[256];				// Bereich in xdata fuer User-RAM
extern __code unsigned char __at 0x3700 eeprom[256];	// Bereich im Flash fuer EEPROM



// Funktionen
void X1_int(void) __interrupt 2;
void T1_int(void) __interrupt 3;
void init_rx(void);
void init_tx(void);
void init_repeat_tx(void);
unsigned char gapos_in_gat(unsigned char gah, unsigned char gal);
__bit build_tel(unsigned char objno);
unsigned int find_ga(unsigned char objno);	// Gruppenadresse ueber Assoziationstabelle finden (erster Eintrag, falls mehrere)
__bit send_obj_value(unsigned char objno);

//void set_timer0(unsigned int deltime);
void restart_hw(void);

void process_tel(void);			// Interrupt von Timer 1, 370us keine Busaktivitaet seit letztem Byte,										//	 d.h. Telegramm wurde komplett uebertragen
void write_memory(void);		// write_memory_request - empfangene Daten in Speicher schreiben
void set_pa(void);				// neue phys. Adresse programmieren
unsigned char read_objflags(unsigned char objno);	// Objektflags lesen
unsigned char find_first_objno(unsigned char gah, unsigned char gal);


// Funktionen in APP
extern void write_value_req(void);		// Routine zur Verarbeitung eingegegangener Telegramme zum Schreiben eines Objektwertes
extern void read_value_req(void);		// Objektwerte lesen angefordert
extern unsigned long read_obj_value(unsigned char objno);	// gibt den Wert eines Objektes zurueck
extern void restart_app(void);			// Alle Applikations-Parameter zuruecksetzen


#endif
