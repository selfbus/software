/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2010 Jan Wegner
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#include <P89LPC922.h>
#include "../lib_lpc922/fb_lpc922.h"

#include "spi.h"

/*
unsigned char spi_in(void)
{
	unsigned char daten=0, n;

	READ=1;
	for(n=0;n<=7;n++)
	{
		CLK=0;
		daten<<=1;
		daten+=SER_IN;
		CLK=1;
	}
	READ=0;
	return daten;

}


void spi_out(unsigned char daten)
{
	unsigned char n;

	WRITE=0;
	for(n=0;n<=7;n++)
	{
		CLK=0;
		SER_OUT=(daten&0x80)>>7;
		daten<<=1;
		CLK=1;
	}
	WRITE=1;

}
*/


unsigned char spi_in_out(void)
{
	unsigned char daten=0, n;

	READ=1;
	WRITE=0;

	do
	{

		if(interrupted){
			READ=0;
			READ=1;
			interrupted=0;
		}

		for(n=0;n<=7;n++)
		{
			CLK=0;
			daten<<=1;
			if (SER_IN) daten++;
			SER_OUT=SER_IN;
			CLK=1;
		}

	}while (interrupted);

	READ=0;
	WRITE=1;

	return daten;

}

