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
/**
* @file   fb_rs232.h
* @author Andreas Krebs <kubi@krebsworld.de>
* @date    2008
* 
* @brief  Hier sind ausschliesslich die RS232 Routinen fuer den 89LPC922
* 
* 
*/


#ifndef FB_RS232
#define FB_RS232

//void rs_init(unsigned int baudrate);
void rs_init(unsigned baudrate);
void rs_send_dec(unsigned int wert);
void rs_send_bcd(unsigned char wert);
void rs_send_hex(unsigned char wert);
void rs_send_hex_l(unsigned long wert);
void rs_send_hex_i(unsigned int wert);
void rs_send(unsigned char z);
void rs_send_s(unsigned char *s);

#endif
