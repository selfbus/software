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

#ifndef FB_APP_IN8
#define FB_APP_IN8

/**
 * @def TERMINAL
 */
#define TERMINAL
//#define DEBUGMODE

#ifdef DEBUGMODE
#   include  "../com/debug.h"
#endif

#ifdef LPC936
	#include <fb_lpc936_1.55.h>
#else
#include <fb_lpc922.h>
#endif

#define USERRAMADDRH  	0x1C	// UserRam start
#define DEBTIME			0xD2	// Entprellzeit in 0,5ms
//#define RELMODE			0xF2	// Relaisbetrieb
#define	DELAYTAB		0xF9	// Start der Tabelle für Verzögerungswerte (Basis)
#define PDIR			0xFF	// Port-Richtung, wenn Bit gesetzt dann ist der entsprechende Pin ein Ausgang (für kombinierte Ein-/Ausgänge)

#define TIMERANZ		0x09	// timeranzahl (17)
#define PROTTIMER		TIMERANZ-1// PROTTIMER ist stets der letzte timer(0-7user,8prot,Gesmatzahl=9)

#define VERSION 12

/**
 * @def TYPE
 * defines the build type
 * @note define here if not done by build configuration
 */
//#define TYPE 0x02

/**
 * @def wertgeber
 * enables ETS function "Wertgeber" for all inputs
 */

/**
 * @def dimmer
 * enables ETS function "Dimmen" for all inputs
 */

/**
 * @def zykls
 * enables ETS function "Zyklisch senden" for all inputs
 */

/**
 * @def zaehler
 * enables ETS function "Schaltzaehler" for all inputs
 */

/**
 * @def IN8_2TE
 * nur fuer shifter version des in8 /typebit 3
 */

/**
 * @def in4
 * schaltet P0_4 - P0_7 auf pullup
 */

#if TYPE == 1
# define wertgeber
# define dimmer
# define zykls
#elif TYPE == 2
# define wertgeber
# define zaehler
# define zykls
#elif TYPE == 3
# define wertgeber
# define dimmer
#elif TYPE == 4
# define zaehler
# define dimmer
# define zykls
#elif TYPE == 5
# define zaehler
# define dimmer
#elif TYPE == 6
# define in4
# define wertgeber
# define dimmer
# define zykls
#elif TYPE == 7
# define in4
# define zaehler
# define dimmer
# define zykls
#elif TYPE == 8
# define IN8_2TE
# define wertgeber
# define dimmer
# define zykls
#elif TYPE == 9
# define IN8_2TE
# define wertgeber
# define zaehler
#elif TYPE == 0x0A
# define IN8_2TE
# define wertgeber
# define dimmer
#elif TYPE == 0x0B
# define IN8_2TE
# define zaehler
# define dimmer
# define zykls
#elif TYPE == 0x0C
# define IN8_2TE
# define zaehler
# define dimmer
#elif TYPE == 0x0D
# define IN8_2TE
# define wertgeber
# define zaehler
# define zykls
#else
# error "ungültiger TYPE"
#endif

extern unsigned char portbuffer,p0h;	// Zwischenspeicherung der Portzustände
extern unsigned char blocked;	// Sperrobjekte
extern unsigned char timerbase[TIMERANZ];// Speicherplatz für die Zeitbasis
extern unsigned char timercnt[TIMERANZ];// speicherplatz für den timercounter und 1 status bit
extern unsigned char timerstate[TIMERANZ];//
extern unsigned int  __at (0x19) zaehlervalue[2];
void pin_changed(unsigned char pin_no);
void schalten(__bit risefall, unsigned char pinno);	// Schaltbefehl senden
unsigned char pin_function(unsigned char pinno);	// Funktion des Eingangs ermitteln
unsigned char debounce(unsigned char pinno);		// Entprellzeit abwarten und prüfen
void send_cyclic(unsigned char pinno);
unsigned char operation(unsigned char pinno);
unsigned char switch_dim(unsigned char pinno);
#ifdef wertgeber
   int eis5conversion(unsigned char zahl,unsigned char typ);
#endif
void delay_timer(void);
//void write_value_req(void);
void sperren(unsigned char obj,unsigned char freigabe);
unsigned long read_obj_value(unsigned char objno);
void write_obj_value(unsigned char objno,long objvalue);
//void read_value_req(void);
void write_send(unsigned char objno,unsigned int objval);

void send_value(unsigned char type, unsigned char objno, int sval);
void restart_app(void);		// Alle Applikations-Parameter zurücksetzen
void bus_return(void);// verhalten nach busspannungsrückkehr.
extern const unsigned char bitmask_1[8];

#endif /* FB_APP_IN8 */

/*Bedeutung der bits in timercnt[]:
   	bit 0-6 Zählwert
   	bit 7 timer-run bit

  Bedeutung der bits in timerstate[]:
	bit 0 Dimmen:schrittweite, Jalo:ab, Schalten:ein,
	bit 1 Dimmen:schrittweite,
	bit 2 Dimmen:schrittweite,
	bit 3 Dimmen:heller,
	bit 4 Jalo:T2,
	bit 5 Schalten:2.ebene,
	bit 6 Dimmen,
	bit 7 Jalo lang,

  Bedeutung der bits in timerbase[]
	bit 0-3 Zeitbasis (0=grundbasis von rtc(xx)*2; 1= wie 0 * 2, 2= wie 0*4 ...
	bit 4
	bit 5
	bit 6
	bit 7  && timerstate==0 :impulszähler aktiv
*/





