/** \file 1wire_io.h
 *  \brief Constants and definitions for the low level 1wire access
 *	This module is part of the EIB-LCD Controller Firmware
 *
 *	Copyright (c) 2011-2013 Arno Stock <arno.stock@yahoo.de>
 *
 *	This program is free software; you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License version 2 as
 *	published by the Free Software Foundation.
 *
 */
#ifndef _1WIRE_IO_H_
#define _1WIRE_IO_H_

#include "System.h"
#include "dht11.h"

#define DELAY_CONST_1WIRE_START		0
#define DELAY_CONST_1WIRE_PRESENT	66
#define DELAY_CONST_1WIRE_SLOT		8
#define DELAY_CONST_1WIRE_MASTER_0	66
#define DELAY_CONST_1WIRE_MASTER_1	0
#define	DELAY_CONST_1WIRE_BIT_END	60

// Time could be shorter 40? but might be troublesome with longer wires
#define DELAY_CONST_1WIRE_DHT_MASTER_1	48

// public functions
void init_1wire (uint8_t);
void terminate_1wire (uint8_t);
// sends the byte b to hw_channel
void send_1wire_byte (uint8_t, uint8_t);
//returns byte from hw_channel
uint8_t receive_1wire_byte (uint8_t);
// reset 1 wire slaves and return the present status from bus:
// device 0= DS18x20, 1= DHT11
// 0 = ok, >0 = no slave detected
uint8_t reset_1wire (uint8_t, uint8_t);
uint8_t receive_1wire_dht11 (uint8_t, uint8_t*);

#endif //_1WIRE_IO_H_
