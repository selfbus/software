/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2008-2010 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
#define ASCII_MODE

#ifndef FB_APP_RS
#define FB_APP_RS


#define RXLED	P0_6
#define EIBLED	P0_7

struct ga_record {
	unsigned int ga;
	unsigned int val;
};


extern unsigned char rsin[30];		// seriell empfangener string
extern unsigned char rsinpos;
extern 	unsigned int groupadr,pa_tmp;
extern unsigned char ledcount;
extern unsigned char eibledcount;
extern unsigned char rxledcount;
#ifndef ASCII_MODE
	extern __code struct ga_record __at 0x1D00 ga_db[62];
#else
	extern __code struct ga_record __at 0x1D00 ga_db[61];
#endif
extern __code unsigned char __at 0x1CFD echo;
extern __code unsigned int __at 0x1CFE baud;
extern __code unsigned char __at 0x1CFA fm;
extern __code unsigned char __at 0x1CFB pa_h;
extern __code unsigned char __at 0x1CFC pa_l;
extern __bit filtermode,write_ok,rsin_busy;

extern void send_ok(void);
void set_filtermode(unsigned char mode);
void restart_app(void);		// Alle Applikations-Parameter zurücksetzen
void save_ga(unsigned int ga, unsigned int val);
void tel_header(unsigned int ga, unsigned char length);
unsigned int convert_adr(unsigned char pos);
unsigned char equal_pos(void);
void write_value_req(void);
void serial_int(void) __interrupt (4) __using (1);
#endif
