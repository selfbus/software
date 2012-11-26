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
* @file   fb_hal_lpc.h
* @author Andreas Krebs <kubi@krebsworld.de>
* @date    2008
* 
* @brief  Hier sind ausschliesslich die Hardware-spezifischen aber Applikations-unabhaengigen Routinen fuer den 89LPC922
* 
* 
*/


#ifndef FB_HAL
#define FB_HAL

#define FBOUTC		P1_6	/// Sendepin
#define TASTER		P1_7	/// Pin fuer Programmiertaster
#define FBINC		P1_4	/// Empfangspin
#define PWM		P1_2	/// PWM-Pin

#define PORT	P0		/// Port fuer 8-bit I/O

#define RECEIVE_INT_ENABLE	EX1		// Interrupt enable Flag fuer Empfang

// verschiedene RTC bases
#define BASE4  	0x00E6
#define BASE8	0x01CC
#define BASE65 	0x0EA0
#define BASE130	0x1D40
// RTC timer stoppen und  mit RTC_BASE in ms setzen
#define SET_RTC(RTC_REG_VAL)\
	RTCCON= 0x60; \
	RTCH=((576L*RTC_REG_VAL)/10)/256; \
	RTCL=((576L*RTC_REG_VAL)/10)& 0xFF;	

// RTC Timer starten
#define  START_RTC \
	RTCCON=0x61;	

// RTC Timer stoppen
#define  STOP_RTC \
	RTCCON=0x60;	

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

#define WRITE_BYTE(addrh, addrl, zdata) \
		FMADRH=(addrh&0x01)+0x1C; \
		FMADRL=addrl; \
		FMDATA=zdata; 


// Globale Variablen
extern unsigned char telegramm[23];

extern unsigned char telpos;		// Zeiger auf naechste Position im Array Telegramm
extern unsigned char cs;			// checksum
extern __code unsigned char __at 0x1C00 userram[255];	// Bereich im Flash fuer User-RAM
extern __code unsigned char __at 0x1D00 eeprom[255];	// Bereich im Flash fuer EEPROM
extern __bit parity_ok;		// Parity Bit des zuletzt empfangenen Bytes OK
extern volatile __bit interrupted;		// wird durch interrupt-routine gesetzt. so kann eine andere routine pruefen, ob sie unterbrochen wurde
extern __bit timer1_state;
// Funktionen
unsigned char get_byte(void);
void ext_int0(void) __interrupt (2);
__bit sendbyte(unsigned char fbsb);
unsigned char read_byte(unsigned char addrh, unsigned char addrl);
void sysdelay(unsigned int deltime);
void set_timer0(unsigned int deltime);
void set_timer1(unsigned int deltime);
void start_rtc(unsigned char base);	// RTC starten, base in ms
void stop_rtc(void);
void restart_hw(void);

#endif
