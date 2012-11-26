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


#include <P89LPC922.h>
#include "../com/fb_rs232.h"




void rs_init(unsigned baudrate)
{
	unsigned int brg;

		brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
	if(baudrate==3)	// 300 Baud
		brg=0x5FF0;
	if(baudrate==6)		// 600 Baud
		brg=0x2FF0;
	if(baudrate==12)	// 1200 Baud
		brg=0x17F0;
	if(baudrate==24)	// 2400 Baud
		brg=0x2FF0;
	if(baudrate==48)	// 4800 Baud
		brg=0x05F0;
	if(baudrate==96)	// 9600 Baud
		brg=0x02F0;
	if(baudrate==192)	// 19200 Baud
		brg=0x0170;
	if(baudrate==384)	// 38400 Baud
		brg=0x00B0;
	if(baudrate==576)	// 57600 Baud
		brg=0x0070;


	BRGCON&=0xFE;	// Baudrate Generator stoppen
	P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	P1M2&=0xFC;
	SCON=0x50;		// Mode 1, receive enable
	SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	BRGR1=brg>>8;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
	BRGR0=brg;
	BRGCON|=0x01;	// Baudrate Generator starten
	TI=1;

	  // set receive isr priority to 2
	 // IP0 &= 0xEF;
	 // IP0H &= 0xEF;
	  //IP0H|= 0x10;
	  // enable uart receive interrupt
	  //ESR = 1;
	  // set transmit isr priority to 0
	  //IP1 &= 0xBF;
	  //IP1H &= 0xBF;
	  // enable uart transmit interrupt
	  //EST = 1;

}





/** 
*
*
*
*
*/

/*
void rs_send_bcd(unsigned char wert)
{
	unsigned char n;

	n=0;
	while(wert>=10){
		n++;
		wert-=10;
	}
    
	while(!TI);
	TI=0;
	SBUF=n+48;
  	
  	while(!TI);
  	TI=0;
  	SBUF=wert+48;
}
*/


void rs_send_dec(unsigned int wert)
{

	unsigned int n;
	__bit zero;

	zero=1;
	
	n=0;
	while(wert>=10000){
		n++;
		wert-=10000;
	}
  	if(n>0)
  	{
  		while(!TI);
  		TI=0;
  		SBUF=n+48;
  		zero=0;
  	}
	
	n=0;
	while(wert>=1000){
		n++;
		wert-=1000;
	}
  	if(n>0 || !zero)
  	{
  		while(!TI);
  		TI=0;
  		SBUF=n+48;
  		zero=0;
  	}  	
	n=0;
	while(wert>=100){
		n++;
		wert-=100;
	}
  	if(n>0 || !zero)
  	{
  		while(!TI);
  		TI=0;
  		SBUF=n+48;
  		zero=0;
  	}

	n=0;
	while(wert>=10){
		n++;
		wert-=10;
	}
  	if(n>0 || !zero)
  	{
  		while(!TI);
  		TI=0;
  		SBUF=n+48;
  		zero=0;
  	}
  	while(!TI);
  	TI=0;
  	SBUF=wert+48;
}




/** 
*
*
*
*
*/


void rs_send_s(unsigned char *s)
{
	unsigned char n=0;
	while (s[n]!=0)
	{
		if(s[n]=='\n')
		{
			while(!TI);
			TI=0;
			SBUF=0x0d;
		}
		while(!TI);
		TI=0;
		SBUF=s[n];
		n++;
		if(n>254)
			return;
	}
	return;
}




/** 
*
*
*
*
*/




/** 
*
*
*
*
*/

const unsigned char hex[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

void rs_send_hex_l(unsigned long wert)
{
	rs_send_hex_i(wert>>16);
	rs_send_hex_i(wert&0xFFFF);
 /*       rs_send(hex[wert>>28&0x0F]);
        rs_send(hex[wert>>24&0x0F]);
        rs_send(hex[wert>>20&0x0F]);
        rs_send(hex[wert>>16&0x0F]);
        rs_send(hex[wert>>12&0x0F]);
        rs_send(hex[wert>>8&0x0F]);
        rs_send(hex[wert>>4&0x0F]);
        rs_send(hex[wert&0x0F]); */
}






/** 
*
*
*
*
*/
 
void rs_send_hex_i(unsigned int wert)
{
	rs_send_hex(wert>>8);
	rs_send_hex(wert&0xFF);
	
 /*       rs_send(hex[((wert>>12)&0x0F)]);
        rs_send(hex[((wert>>8)&0x0F)]);
        rs_send(hex[((wert>>4)&0x0F)]);
        rs_send(hex[(wert&0x0F)]);  */

}





void rs_send_hex(unsigned char wert)
{


        rs_send(hex[wert>>4]);
        rs_send(hex[wert&0x0F]);
}


void rs_send(unsigned char z)
{
	while(!TI);
 	TI=0;
	SBUF=z;
}

