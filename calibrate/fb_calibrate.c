/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2011 Andreas Krieger
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* @file   fb_calibrate.c
* @author Andreas Krieger 
* @date   2011
* 

* \par Changes:
*		1.00	erste Version;

*/


#include <P89LPC922.h>


#include "../com/fb_rs232.h"

#define RXD P1_1
#define PROG P1_7
void main(void)
{ 
	unsigned int count=0;
//	unsigned char n,LED,cmd;
//	bit blink, verstell, verstellt;
	rs_init(6);
	P1M1&=0x7F;
	P1M2&=0x7F;
	do  {
		PROG=1;
		while(PROG);
		do{
			RI=0;	
			count=0;
			rs_send('c');
			while(RXD);
			while(!RXD);
			while(RXD);
			while(!RXD)count++;
			while(!RI);// mit quarz ist Ergebnis 22E (558) Schrittwite TRIM = 4
			if (count<=555 ){ 
				rs_send('-');
			}
			if (count>=561){
				rs_send('+');
			}
		//	rs_send(count>>8);
		//	rs_send(count&0xFF);
		}while ((count<=555) || (count>=561));	
		rs_send('w');	
		PROG=0;
	}  while(0);
}


