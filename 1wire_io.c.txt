/** \file 1wire.c
 *  \brief Basic IO functions for 1wire communication
 *	This module is part of the EIB-LCD Controller Firmware
 *
 *	Implemented functions:
 *	- send byte to 1wire slave
 *	- receive byte from 1wire slave
 *
 *	These functions do not disable interrupts to preserve the real time functions of the system.
 *	This may cause communication issues on the 1wire bus. It is recommended to check the CRC
 * 	after completion of a bus transmission.
 *
 *	Copyright (c) 2011-2013 Arno Stock <arno.stock@yahoo.de>
 *	Copyright (c) 2013 Stefan Haller <stefanhaller.sverige@gmail.com>
 *
 *	This program is free software; you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License version 2 as
 *	published by the Free Software Foundation.
 *
 */
#include "1wire_io.h"
#include "io.h"
#include "hardware.h"
#include <sys/timer.h>

// sets the bus pin of the channel to low level
void set_1wire_low (uint8_t hw_channel) {

	if (hw_channel < 3) {
		PORTE &= ~port_bit[hw_channel];
		DDRE |= port_bit[hw_channel];
	}
	else {
		PORTF &= ~port_bit[hw_channel];
		DDRF |= port_bit[hw_channel];
	}
}

// sets the bus pin of the channel to pull-up
void set_1wire_pullup (uint8_t hw_channel) {

	if (hw_channel < 3) {
		DDRE &= ~port_bit[hw_channel];
		PORTE |=  port_bit[hw_channel];
	}
	else {
		DDRF &= ~port_bit[hw_channel];
		PORTF |=  port_bit[hw_channel];
	}
}

void init_1wire (uint8_t hw_channel) {
	if (hw_channel > sizeof (port_bit))
		return;
	set_1wire_pullup (hw_channel);
}

void terminate_1wire (uint8_t hw_channel) {

	if (hw_channel > sizeof (port_bit))
		return;

	// disable pull-up of port pin
	// set pin to input mode and enable pull up
	if (hw_channel < 3) {
		DDRE &= ~port_bit[hw_channel];
		PORTE &= ~port_bit[hw_channel];
	}
	else {
		DDRF &= ~port_bit[hw_channel];
		PORTF &= ~port_bit[hw_channel];
	}
}


// reset 1 wire slaves
// return the present status from bus for DS1820 devices:
// device 0= DS18x20, 1= DHT11, 2= DHT2x
// 0 = ok, >0 = no slave detected
// For DHT11 devices keep bus low until next state, transfer starts directly after bus release
uint8_t reset_1wire (uint8_t hw_channel, uint8_t device) {

int i;
uint8_t state;

	if (hw_channel > sizeof (port_bit))
		return 0xff;
	// issue master reset pulse: set port low
	set_1wire_low (hw_channel);
	if (device==1) {	// DHT11
		NutSleep (18);	// Min Low 18ms
		return 0;
	}
	else if (device==2) {	// DHT2x
		NutDelay(1);	// Min 1ms, Max 20ms
		return 0;
	}
	else {
		NutDelay(1);	// Min Low 480us

		// clear master reset pulse: set port pull-up
		set_1wire_pullup (hw_channel);

		// give slave time to issue the present pulse
		for (i = 0; i < DELAY_CONST_1WIRE_PRESENT; i++)
			asm volatile ("nop");

		// sample pulse
		if (hw_channel < 3) {
			state = PINE;
		}
		else {
			state = PINF;
		}
		return state & port_bit[hw_channel];
	}
}

// sends bit pulse low: 0 = 60us, 1 = 1us
void send_1wire_bit (uint8_t b, uint8_t hw_channel) {

int i;

	//check 1 or 0 byte
	if (b) {
		//set output to active level
		set_1wire_low (hw_channel);
		// add 1us delay for 1
		for (i = 0; i < DELAY_CONST_1WIRE_MASTER_1; i++)
			asm volatile ("nop");
		set_1wire_pullup (hw_channel);
		for (i = 0; i < DELAY_CONST_1WIRE_BIT_END; i++)
			asm volatile ("nop");
	}
	else {
		//set output to active level
		set_1wire_low (hw_channel);

		// delay 59us for 0
		for (i = 0; i < DELAY_CONST_1WIRE_MASTER_0; i++)
			asm volatile ("nop");
		set_1wire_pullup (hw_channel);
	}

}

// get 1 wire bit from bus:
// 0 = 0, >0 = 1
uint8_t receive_1wire_bit (uint8_t hw_channel) {

int i;
	//set output to active level
	set_1wire_low (hw_channel);
	// delay for start bit
	for (i = 0; i < DELAY_CONST_1WIRE_START; i++)
		asm volatile ("nop");
	// clear master reset pulse: set port pull-up
	set_1wire_pullup (hw_channel);

	// give slave time to issue the bit
	for (i = 0; i < DELAY_CONST_1WIRE_SLOT; i++)
		asm volatile ("nop");

	// sample pulse
	if (hw_channel < 3) {
		return PINE & port_bit[hw_channel];
	}
	else {
		return PINF & port_bit[hw_channel];
	}
}

// sends the byte b to hw_channel
void send_1wire_byte (uint8_t b, uint8_t hw_channel) {

int i;

	if (hw_channel > sizeof (port_bit))
		return;

	for (i = 0; i < 8; i++) {
		send_1wire_bit ( (b & 1), hw_channel);
		b >>= 1;
	}
}


//returns byte from hw_channel
uint8_t receive_1wire_byte (uint8_t hw_channel) {

uint8_t b = 0;
int i, t;

	if (hw_channel > sizeof (port_bit))
		return 0xff;

	for (i = 0; i < 8; i++) {
		b = b >> 1;
		if (receive_1wire_bit (hw_channel))
			b |= 0x80;
		for (t = 0; t < DELAY_CONST_1WIRE_BIT_END; t++)
			asm volatile ("nop");
	}

	return b;
}


// returns sampled pule
inline uint8_t sample_1wire_pulse(uint8_t hw_channel) {
	// sample pulse
	if (hw_channel < 3) {
		return PINE & port_bit[hw_channel];
	}
	else {
		return PINF & port_bit[hw_channel];
	}
}


//returns 5 bytes from hw_channel
uint8_t receive_1wire_dht11 (uint8_t hw_channel, uint8_t *data) {

uint8_t t, bit_count, wait_count;

	// Release bus and start to listen
	set_1wire_pullup(hw_channel);

	for (t = 0; t < DELAY_CONST_1WIRE_SLOT; t++)
		asm volatile ("nop");

	// Wait for Falling Edge, DHT response is low for 80us
	wait_count = 0;
	while (sample_1wire_pulse(hw_channel)) {
		wait_count++;

		if(wait_count > 100) {
#ifdef HW_DEBUG
	printf_P(PSTR("DHT Sensor L Timeout\n"));
#endif
			// Delete previous sample
			data[0] = 0;
			data[1] = 0;
			data[2] = 0;
			data[3] = 0;
			data[4] = 0xFF;		// Something went wrong (for debug readability only)
			return 1;	// Error
		}
	}

	// Wait for Rising Edge, DHT response (high for 80us)
	wait_count = 0;
	while (!sample_1wire_pulse(hw_channel)) {
		wait_count++;

		if(wait_count > 100) {	// Around 47
#ifdef HW_DEBUG
	printf_P(PSTR("DHT H Response Timeout\n"));
#endif
			return 2;	// Error
		}
	}

	// Sample 40 bits, timeout after last bit ensures that sensor has ended transmission
	// DHT pulls bus low after 40bits, this will be sampled as 1, then Low timeout at bit 41
	for (bit_count = 0; bit_count<40; bit_count++) {
		// Wait for falling edge, start of next bit
		wait_count = 0;
		while (sample_1wire_pulse(hw_channel)) {
			wait_count++;

			if(wait_count > 100) {
#ifdef HW_DEBUG
	printf_P(PSTR("DHT Bit %d Falling Edge Timeout\n"), bit_count);
#endif
				return 3;	// Error
			}
		}

		// Wait for resign edge, sample length. 26-28µs = 0, 70us = 1
		wait_count = 0;
		while (!sample_1wire_pulse(hw_channel)) {
			wait_count++;

			if(wait_count > 100) {
#ifdef HW_DEBUG
	printf_P(PSTR("DHT Bit %d Timeout\n"), bit_count);
#endif
				return 4;	// Error
			}
		}

		// Wait at least 28µS
		for (t = 0; t < DELAY_CONST_1WIRE_DHT_MASTER_1; t++)
			asm volatile ("nop");

		// Sample current bit
		if (sample_1wire_pulse(hw_channel))
			data[bit_count/8] |= (1<<(7-(bit_count%8)));
		else
			data[bit_count/8] &= ~(1<<(7-(bit_count%8)));
	}

	// After 40bits the transmission should be done
	// Sensor pulls bus low to indicate stop and will release it --> timeout if OK
	for (bit_count = 0; bit_count<2; bit_count++) {
		// Wait for falling edge to indicate stop
		wait_count = 0;
		while (sample_1wire_pulse(hw_channel)) {
			wait_count++;

			if(wait_count > 100) {
#ifdef HW_DEBUG
	printf_P(PSTR("DHT Stop detected after %d Falling Edge  "), bit_count);
	if(bit_count) printf_P(PSTR("OK :-)\n"));
	else printf_P(PSTR("BAD :-(\n"));
#endif
				if(bit_count)
					return 0;	// OK, timeout during second run
				else
					return 5;	// Stop pulse missing
			}
		}

		// Wait for bus release
		while (!sample_1wire_pulse(hw_channel)) {
			wait_count++;

			if(wait_count > 100) {
#ifdef HW_DEBUG
	printf_P(PSTR("DHT Bus release %d Timeout\n"), bit_count);
#endif
				return 6;	// Error
			}
		}
	}

	return 7;	// Got too many bits
}

