/*
 *    _____ ______ __   __________  __  _______
 *   / ___// ____// /  / ____/ __ )/ / / / ___/
 *   \__ \/ __/  / /  / /__ / __  / / / /\__ \
 *  ___/ / /__  / /__/ /__// /_/ / /_/ /___/ /
 * /____/_____//____/_/   /_____/\____//____/
 *
 *  Copyright (c) 2010 Jan Wegner
 *  Copyright (c) 2014 Stefan Haller
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */



#include "onewire.h"

#ifdef LPC936
    //#include <fb_lpc936_1.54.h>
    #include <fb_lpc936.h>
#else
    //#include <fb_lpc922_1.54.h>
    #include <fb_lpc922.h>
#endif

#define OWDATA 	P1_1	//RXD Data-Pin P1_1 fuer one-wire Sensor

unsigned char t;
unsigned char bit_count, wait_count;

struct{
    union{
        unsigned char bytes[9];
        unsigned int temp;  // Byte 0,1
    };
} onewire_receive;



#define UCHAR unsigned char

// one-wire Geraet initialisieren
//owdelay(2500);    Hardware
//owdelay(210);     Software

#define mow_init( mPX_X, mPre, n) \
{ \
   mPX_X=0; \
   owdelay(210); \
   mPX_X=1; \
   for(n=0;n<255;n++) mPre=mPre & mPX_X; \
}

// Byte an one-wire Geraet senden
// LSB first
// 1-Bit: 5us auf low dann auf high und 85us warten //260
// 0-Bit: 90us auf low dann auf high                //275
#define mow_write( mPX_X, n, m) \
{ \
  for (n=1;n!=0;n=n<<1) { \
      if (owbyte & n) { \
          for (m=0;m<2;m++) mPX_X=0; \
              mPX_X=1; \
              owdelay(23); } \
      else { \
          mPX_X=0; \
          owdelay(25); \
          mPX_X=1; } \
  } \
}

// Byte von one-wire Geraet lesen    //140
#define mow_read( mPX_X, n, m, d) \
{ \
  for (n=1;n!=0;n=n<<1) { \
      for (m=0;m<2;m++) mPX_X=0; \
          mPX_X=1; \
          owdelay(1); \
          if (mPX_X) d|=n; \
          owdelay(13); } \
}

// Bit von one-wire Datenleitung einlesen
#define mow_read_bit( mPX_X, m, b) \
{ \
  for (m=0;m<2;m++) mPX_X=0; \
      mPX_X=1; \
      owdelay(1); \
      b=mPX_X; \
}


__bit ow_init(void)		// one-wire Geraet initialisieren
{
  __bit presence;
  unsigned char n;
  presence=1;

  mow_init( OWDATA, presence, n);
  presence=!presence;
  return (presence);
}


void ow_write(unsigned char owbyte) // Byte an one-wire Geraet senden
{
  unsigned char n,m;

  mow_write( OWDATA, n, m);
}


// Read specified amount of bytes
unsigned char ow_read(unsigned char bytes)   // Byte von one-wire Geraet lesen
{
    unsigned char n,m,d;
    // CRC
    unsigned char crc = 0;
    unsigned char crc_bit, i;

    for(i=0;i<bytes;i++)
    {
        d=0;
        // Detect an interrupt while reading a byte
        interrupted=0;
        mow_read( OWDATA, n, m, d);   // Get 1 Byte
        if(interrupted)
            return 0xFF;              // !=0 is a CRC error

        // Optimized Maxim iButton 8-bit CRC calculation
        crc = crc ^d;
        for (crc_bit=0;crc_bit<8;crc_bit++)
        {
            if (crc &0x01)
                crc = (crc >>1) ^0x8C;
            else
                crc >>= 1;
        }
        // Safe current byte is space
        if(i<sizeof(onewire_receive))
            onewire_receive.bytes[i] = d;
    }
    return crc;
}


__bit ow_read_bit(void)				// Bit von one-wire Datenleitung einlesen
{
	unsigned char m;
	__bit b;

	mow_read_bit( OWDATA, m, b);
    owdelay (13);
	return (b);
}


void start_tempconversion(void)	// Temperaturmessung starten
{
	if (ow_init()) {
		ow_write(0xCC);			// Skip-ROM command: alle parallel angeschlossenen Gereate werden angesprochen
		ow_write(0x44);			// start single temperature conversion command
	}
}


signed int read_temp(unsigned char sensortyp)   // Temperatur einlesen
{
	unsigned char lsb,msb;
	signed int t;
	unsigned int t2;
	unsigned char sign;


  	if (ow_init()) {
  		ow_write(0xCC);			// Skip-ROM command: alle parallel angeschlossenen Geraete werden angesprochen
  		ow_write(0xBE);			// read scratchpad command: Speicher einlesen

  		if(ow_read(9) || (onewire_receive.bytes[7]!=0x10) )  // Read 9 Bytes
            return(-6000);      // Error, indicate with -60° since it's outside the possible range

        // Get local copy to save space
        lsb=onewire_receive.bytes[0];
        msb=onewire_receive.bytes[1];

		if(sensortyp==1) {		// DS18S20
			msb&=0xF8;			// oberen 3 Bits von LSB in untere 3 von MSB
			msb+=(lsb>>5)&0x07;

			lsb=lsb<<3;			// LSB um 3 Bit nach oben verschieben
			lsb&=0xF0;			// alles unterhalb 2^0 abschneiden
			lsb+=(16-onewire_receive.bytes[6]);
		}

		sign=msb&0x80;
  		t2=msb*256+lsb;
  		if (sign) t2=(0xFFFF-t2)+1;

  		t=t2*6;
  		t2=t2>>2;
  		t=t+t2;					// hier ist t die Teperatur in 0,01°C

		if(sensortyp==1){		// DS18S20 alignment, datasheet page 3
			t-=25;
		}

  		if (sign) t=-t;			// Vorzeichen

  		return t;               // OK
  	}
  	else
  	    return (-6100);         // im Fehlerfall -61°
}


static void owdelay(unsigned char deltime)      // Warten
{                               // Der Aufruf allein dauert schon ca. 12us !!!
    for(;deltime>0;deltime--) {}
}
