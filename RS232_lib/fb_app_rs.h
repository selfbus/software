/*
 *  Copyright (c) 2008-2010 Andreas Krebs <kubi@krebsworld.de>
 *                2011-2014 Andreas Krieger <service@krieger-elektro.de>
 *                2014 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
#ifndef FB_APP_RS
#define FB_APP_RS

#define ASCII_MODE


// Damit die Eclipse Code Analyse nicht so viele Warnungen anzeigt:
#ifndef SDCC
# define __idata
# define __code
# define __at(x)
# define __using(x)
# define __interrupt(x)
#endif


#define RXLED	P0_6
#define EIBLED	P0_7

struct ga_record
{
	unsigned int ga;
	unsigned int val;
};


extern unsigned char rsin[30];		// seriell empfangener string
extern unsigned char rsinpos;
extern 	unsigned int groupadr,pa_tmp;
extern unsigned char ledcount;
extern unsigned char eibledcount;
extern unsigned char rxledcount;
<<<<<<< HEAD
extern __code struct ga_record __at 0x1D00 ga_db[62];
extern __code unsigned char __at 0x1CFD echo;
extern __code unsigned int __at 0x1CFE baud;
extern __code unsigned char __at 0x1CFA fm;
extern __code unsigned char __at 0x1CFB pa_h;
extern __code unsigned char __at 0x1CFC pa_l;
=======
#ifndef ASCII_MODE
	extern __code struct ga_record __at(0x1D00) ga_db[62];
#else
	extern __code struct ga_record __at(0x1D00) ga_db[61];
#endif
extern __code unsigned char __at(0x1CFD) echo;
extern __code unsigned int  __at(0x1CFE) baud;
extern __code unsigned char __at(0x1CFA) fm;
extern __code unsigned char __at(0x1CFB) pa_h;
extern __code unsigned char __at(0x1CFC) pa_l;
>>>>>>> b005610e1d351dd814c6f7b69d1d169c9b05a81d
extern __bit filtermode,write_ok,rsin_busy;
extern __code unsigned char __at 0x1CF7 esc_char;
extern void send_ok(void);
void set_filtermode(unsigned char mode);
void restart_app(void);		// Alle Applikations-Parameter zurücksetzen
void save_ga(unsigned int ga, unsigned int val);
void tel_header(unsigned int ga, unsigned char length);
unsigned int convert_adr(unsigned char pos);
unsigned char equal_pos(void);
void write_value_req(void);
void serial_int(void) __interrupt (4) __using (1);
<<<<<<< HEAD
#endif

// Makros:
#define SEND_OK rs_send_s("OK\n");
=======

#endif /*FB_APP_RS*/

>>>>>>> b005610e1d351dd814c6f7b69d1d169c9b05a81d
