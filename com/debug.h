/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2012 Andreas Krieger
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */


#ifndef FB_DEBUG
#define FB_DEBUG
extern volatile unsigned int debugadr;
//extern void EX0_int (void) __interrupt (0);
extern unsigned char __at 0x00 RAM[00]; 

#define BREAKADR_IN\
	while(!RI);\
	debugadr=(unsigned int)SBUF<<8;\
	RI=0;\
	while(!RI);\
	debugadr+=SBUF;\
	RI=0;
#define VAR_IN(var)\
	while(!RI);\
	var=RAM[SBUF];\
	RI=0;
	
#define BREAKSTART\
	IT0=0;\
	P1_3=0;\
	EX0=1;
		
#define BREAKEND\
	IT0=1;\
	EX0=0;\
	P1_3=1;\
	IE0=0;
		
#define DEBUG \
	while(!TI);\
	TI=0;\
	SBUF =

#define DEBUG_INPUT(debugvar) \
{	if(RI){ \
		RI=0; \
		debugvar=SBUF;\
	}\
}

#define DEBUGPOINT\
	if(RI){ \
	RI=0;\
	DEBUG RAM[SBUF];\
}



#define DEBUGEEPROM\
	if(RI){ \
	RI=0;\
    DEBUG eeprom[SBUF];\
}
#endif