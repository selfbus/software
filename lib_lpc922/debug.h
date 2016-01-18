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


extern unsigned char __idata __at 0x00 RAM[00];


#define DEBUG \
	while(!TI);\
	TI=0;\
	SBUF =

#define DEBUGPOINT\
	if(RI){ \
DEBUG RAM[SBUF];\
	RI=0;\
}

#endif
