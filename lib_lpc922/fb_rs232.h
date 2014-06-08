/*
 *    _____ ______ __   __________  __  _______ *
 *   / ___// ____// /  / ____/ __ )/ / / / ___/ *
 *   \__ \/ __/  / /  / /__ / __  / / / /\__ \  *
 *  ___/ / /__  / /__/ /__// /_/ / /_/ /___/ /  *
 * /____/_____//____/_/   /_____/\____//____/   *
 *
 *	Copyright (c) 2014		Stefan Haller
 *  Copyright (c) 2008-2013 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#ifndef FB_RS232
#define FB_RS232


// Init Makros für die UART
#define RS_INIT_600 \
{ 					\
	BRGCON &= 0xFE;	\
	SCON = 0x50; 	\
	SSTAT |= 0xE0; 	\
	BRGCON |= 0x02; \
	BRGR1 = 0x2F;	\
	BRGR0 = 0xF0;	\
	BRGCON |= 0x01;	\
}

#define RS_INIT_1200 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x17;		\
	BRGR0=0xF0;		\
	BRGCON|=0x01;	\
}

#define RS_INIT_2400 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x0B;		\
	BRGR0=0xF0;		\
	BRGCON|=0x01;	\
{

#define RS_INIT_4800 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x05;		\
	BRGR0=0xF0;		\
	BRGCON|=0x01;	\
}

#define RS_INIT_9600 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x02;		\
	BRGR0=0xF0;		\
	BRGCON|=0x01;	\
}

#define RS_INIT_19200 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x01;		\
	BRGR0=0x70;		\
	BRGCON|=0x01;	\
}

#define RS_INIT_38400 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x00;		\
	BRGR0=0xB0;		\
	BRGCON|=0x01;	\
}

#define RS_INIT_57600 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x00;		\
	BRGR0=0x70;		\
	BRGCON|=0x01;	\
}

#define RS_INIT_115200 \
{					\
	BRGCON&=0xFE;	\
	SCON=0x50;		\
	SSTAT|=0xE0;	\
	BRGCON|=0x02;	\
	BRGR1=0x00;		\
	BRGR0=0x30;		\
	BRGCON|=0x01;	\
}


#define RS_SEND(data) \
{					\
	while(!TI);		\
	TI=0;			\
	SBUF = (data)	\
}

#endif
