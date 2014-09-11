/** \file dht11.h
 *  \brief Constants and definitions for the communication with DHT11 devices.
 *	This module is part of the EIB-LCD Controller Firmware
 *
 *	Copyright (c) 2014 Stefan Haller <stefanhaller.sverige@gmail.com>
 *
 *	This program is free software; you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License version 2 as
 *	published by the Free Software Foundation.
 *
 *	Version 0.9
 */
#ifndef dht11_h
#define dht11_h

#include "System.h"

#define DHT_11_1WIRE		1
#define DHT_2x_1WIRE		2
#define DHT11_FORMAT_EIS5	0x00

// Known Sensor Types
#define	DHT11_SENSOR	0
#define	DHT21_SENSOR	1
#define	DHT22_SENSOR	2

extern const char dht_names[4][3];

typedef struct __attribute__ ((packed)) {
	uint8_t		element_size;
	uint8_t		element_type;
	uint8_t		hw_channel;
	uint8_t		eib_object;  // temperature
	uint8_t		eib_object2; // humidity
	uint8_t		repeat_frequency;
	uint8_t		eis_number_format;
	int8_t		temp_offset;
	int8_t		humid_offset;
	uint8_t		sensor_type;
	// Parameter: d5, d4: Flash frequency, d3, d2: state@1, d1, d0: state@0
	uint8_t		parameter;
} _O_DHTxx_t;	// Since structure version 0x1D

// public functions
void init_dht (char*);
void terminate_dht (char*);
// this is the cyclic tick for the DHT11 state machine
void dht_statemachine (char *cp);


#endif
