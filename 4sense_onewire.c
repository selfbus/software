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


#include <fb_lpc922.h>
#include "4sense_onewire.h"
#include <stdbool.h>


#define OWDATA 	P0_2	// Data-Pin für one-wire Sensor
unsigned char __idata __at (0xFE-0x25) dht_data[5];
unsigned char __idata __at (0xFE-0x26) dht_crc;
int __idata __at (0xFE-0x28) dht_temp;
int __idata __at (0xFE-0x2A) dht_humid;
unsigned char kanal;
unsigned char t;

unsigned char bit_count, wait_count;

#define UCHAR unsigned char

// one-wire Gerät initialisieren
//owdelay(2500);    Hardware
//owdelay(210);     Software

#define mow_init( mPX_X, mPre, n) \
{ \
   mPX_X=0; \
   HW_owdelay(2500); \
   mPX_X=1; \
   for(n=0;n<255;n++) mPre=mPre & mPX_X; \
}

// Byte an one-wire Gerät senden
// LSB first
// 1-Bit: 5us auf low dann auf high und 85us warten //260 HW, 23 SW
// 0-Bit: 90us auf low dann auf high                //275 HW, 25 SW
#define mow_write( mPX_X, n, m) \
{ \
  for (n=1;n!=0;n=n<<1) { \
      if (owbyte & n) { \
          for (m=0;m<2;m++) mPX_X=0; \
              mPX_X=1; \
              HW_owdelay(260); } \
      else { \
          mPX_X=0; \
          HW_owdelay(275); \
          mPX_X=1; } \
  } \
}

// Byte von one-wire Gerät lesen    //140 HW, 13 SW
#define mow_read( mPX_X, n, m, d) \
{ \
  for (n=1;n!=0;n=n<<1) { \
      for (m=0;m<2;m++) mPX_X=0; \
          mPX_X=1; \
          HW_owdelay(1); \
          if (mPX_X) d|=n; \
          HW_owdelay(140); } \
}

// Bit von one-wire Datenleitung einlesen // HW und SW delay gleich, 1
#define mow_read_bit( mPX_X, m, b) \
{ \
  for (m=0;m<2;m++) mPX_X=0; \
      mPX_X=1; \
      HW_owdelay(1); \
      b=mPX_X; \
}


#ifdef multiplex
__bit ow_init(void)		// one-wire Gerät initialisieren
{
  __bit presence;
  unsigned char n;

  presence=1;
  mow_init( OWDATA, presence, n);
  presence=!presence;
  return (presence);
}
#else
__bit ow_init(void)     // one-wire Gerät initialisieren
{
  __bit presence;
  unsigned char n;
  presence=1;

  switch (kanal)
  {
    case 0: mow_init( P0_0, presence, n); break;
    case 1: mow_init( P0_1, presence, n); break;
    case 2: mow_init( P0_2, presence, n); break;
    case 3: mow_init( P0_3, presence, n); break;
  }
  presence=!presence;
  return (presence);
}

#endif

#ifdef multiplex
void ow_write(unsigned char owbyte) // Byte an one-wire Gerät senden
{
  unsigned char n,m;

  mow_write( OWDATA, n, m);
}
#else
void ow_write(unsigned char owbyte) // Byte an one-wire Gerät senden
{
  unsigned char n,m;
  switch (kanal)
  {
     case 0: mow_write( P0_0, n, m); break;
     case 1: mow_write( P0_1, n, m); break;
     case 2: mow_write( P0_2, n, m); break;
     case 3: mow_write( P0_3, n, m); break;
  } //endswitch
}

#endif

#ifdef multiplex
unsigned char ow_read(void)			// Byte von one-wire Gerät lesen
{
  unsigned char n,m,d;

  d=0;
  mow_read( OWDATA, n, m, d);
  return(d);
}
#else
unsigned char ow_read(void)			// Byte von one-wire Gerät lesen
{
  unsigned char n,m,d;

  d=0;
  switch(kanal)
  {
     case 0: mow_read( P0_0, n, m, d); break;
     case 1: mow_read( P0_1, n, m, d); break;
     case 2: mow_read( P0_2, n, m, d); break;
     case 3: mow_read( P0_3, n, m, d); break;
  }//end switch
  return(d);
}
#endif

#ifdef multiplex
__bit ow_read_bit(void)				// Bit von one-wire Datenleitung einlesen
{
	unsigned char m;
	__bit b;

	mow_read_bit( OWDATA, m, b);
    owdelay (140);
	return (b);
}
#else
__bit ow_read_bit(void)				// Bit von one-wire Datenleitung einlesen
{
	unsigned char m;
	__bit b=0;

  switch (kanal)
  {
      case 0: mow_read_bit( P0_0, m, b); break;
      case 1: mow_read_bit( P0_1, m, b); break;
      case 2: mow_read_bit( P0_2, m, b); break;
      case 3: mow_read_bit( P0_3, m, b); break;
  }
	HW_owdelay (140);   //140 HW, 13SW

	return (b);
}
#endif

// Erzeugt langen Reset Puls für DHT1x Sensoren
static inline void dht1x_init(unsigned char hw_channel)
{
    // Leseanvorderung DHT 1x Sensoren
    P0 &= ~bitmask_1[hw_channel];
    //long_owdelay(4100);  // Pull low, min. 18ms (17ms hier, 1.3ms später)
    HW_owdelay(63000);  // Pull low, min. 18ms (17ms hier, 1.3ms später)
    // Release in receive_1wire_dht
}


__bit dht_decode(unsigned char sensor_type)
{
    // Calculate own checksum
    // Zum Senden wird an DS1820 Format angepasst
    if (dht_data[4] == ( (dht_data[0]+dht_data[1]+dht_data[2]+dht_data[3]) &0xFF) )
    {
        // Calculate Humidity and Temperature
        // Convert into double
        if (sensor_type==DHT1x_SENSOR)
        {
            dht_humid = dht_data[0]*100; // Humidity DHT11

            // Handle negative temperatures
            if (dht_data[2] & 0x80) {
                dht_temp = ((0x7F & dht_data[2]) *-100);
            }
            else {
                dht_temp = dht_data[2]*100;
            }
        }
        else
        {  // DHT2x Sensors
            dht_humid =  ((dht_data[0]<<8) + dht_data[1])*10 ; // Humidity

            // Handle negative temperatures
            if (dht_data[2] & 0x80) {
                dht_temp =  (((0x7F & dht_data[2])<<8) + dht_data[3])*10;
            }
            else {
                dht_temp =  ((dht_data[2]<<8) + dht_data[3])*10;
            }
        }
        return true;    //OK
    }
    else    // CRC Error
        return false;   //Failure
}

// reads 5 bytes from hw_channel
// returns 0 if OK
unsigned char receive_1wire_dht (unsigned char hw_channel) {

//unsigned char bit_count, wait_count;

// Debug
    P0_4 = 0;
    P0_5 = 0;
    P0_6 = 0;

    // Leseanvorderung DHT 2x Sensoren
    // DHT1x Sensoren vorher mit dht1x_init() initialisieren
    P0 &= ~bitmask_1[hw_channel];
    //long_owdelay(320);  // Reset pulse, 1.3ms
    HW_owdelay(4600);  // Reset pulse, 1.3ms
    P0 |= bitmask_1[hw_channel];
    //    for (t = 0; t < 1; t++)
    //   ;

    // Wait for Falling Edge, DHT response is low for 80us
    wait_count = 0;
    while (P0 &bitmask_1[hw_channel]) {
        wait_count++;

        if(wait_count > 100) {
        //DHT Sensor L Timeout

            // Delete previous sample
            dht_data[0] = 0;
            dht_data[1] = 0;
            dht_data[2] = 0;
            dht_data[3] = 0;
            dht_data[4] = 0xFF;     // Something went wrong (for debug readability only)
            return 1;   // Error
        }
    }

    // Wait for Rising Edge, DHT response (high for 80us)
    wait_count = 0;

    while (!(P0 &bitmask_1[hw_channel])) {
        wait_count++;

        if(wait_count > 100) return 2;   // Error, DHT H Response Timeout
    }

    // Sample 40 bits, timeout after last bit ensures that sensor has ended transmission
    // DHT pulls bus low after 40bits, this will be sampled as 1, then Low timeout at bit 41
    for (bit_count = 0; bit_count<40; bit_count++) {
P0_4 = 1;
        // Wait for falling edge, start of next bit
        wait_count = 0;
        while (P0 &bitmask_1[hw_channel]) {
            wait_count++;

            if(wait_count > 100) return 3;   // Error, "DHT Bit %d Falling Edge Timeout\n", bit_count
        }
P0_4 = 0;

        // Wait for rising edge, sample length. 26-28us = 0, 70us = 1
P0_5 = 1;
        wait_count = 0;
        while (!(P0 &bitmask_1[hw_channel])) {
            wait_count++;

            if(wait_count > 100) return 4;   // Error, "DHT Bit %d Timeout\n", bit_count
        }
P0_5 = 0;

        // Wait at least 28uS
        for (t = 0; t < DELAY_CONST_1WIRE_DHT_MASTER_1; t++)
        ;
P0_6 = 1;
        // Sample current bit
        if (P0 &bitmask_1[hw_channel])
            dht_data[bit_count/8] |= (1<<(7-(bit_count%8)));
        else
            dht_data[bit_count/8] &= ~(1<<(7-(bit_count%8)));
P0_6 = 0;
    }

    // After 40bits the transmission should be done
    // Sensor pulls bus low to indicate stop and will release it --> timeout if OK
    for (bit_count = 0; bit_count<2; bit_count++) {
        // Wait for falling edge to indicate stop
        wait_count = 0;
        while (P0 &bitmask_1[hw_channel]) {
            wait_count++;

            if(wait_count > 100) {  //"DHT Stop detected after %d Falling Edge  ", bit_count
                if(bit_count) return 0;   // OK, timeout during second run
                else return 5;   // Stop pulse missing
            }
        }

        // Wait for bus release
        while (!(P0 &bitmask_1[hw_channel])) {
            wait_count++;

            if(wait_count > 100) return 6;   // Error, "DHT Bus release %d Timeout\n", bit_count
        }
    }

    return 7;   // Got too many bits
}




void start_tempconversion(void)	// Temperaturmessung starten
{
	if (ow_init()) {
		ow_write(0xCC);			// Skip-ROM command: alle parallel angeschlossenen Geräte werden angesprochen
		ow_write(0x44);			// start single temperature conversion command
	}
}



signed int read_temp(unsigned char sensortyp)   // Temperatur einlesen
{
	unsigned char lsb,msb;
	signed int t;
	unsigned int t2;
	unsigned char sign;
	unsigned char counts;


  	if (ow_init()) {
  		ow_write(0xCC);			// Skip-ROM command: alle parallel angeschlossenen Geräte werden angesprochen
  		ow_write(0xBE);			// read scratchpad command: Speicher einlesen
  		lsb=ow_read();			// LSB von Temperaturwert
  		msb=ow_read();			// MSB von Temperaturwert


		if(sensortyp &0x08){		// DS18S20
			counts=ow_read();
			counts=ow_read();
			counts=ow_read();
			counts=ow_read();
			counts=ow_read();	// counts remaining

			msb&=0xF8;			// oberen 3 Bits von LSB in untere 3 von MSB
			msb+=(lsb>>5)&0x07;

			lsb=lsb<<3;			// LSB um 3 Bit nach oben verschieben
			lsb&=0xF0;			// alles unterhalb 2^0 abschneiden
			lsb+=(16-counts);
		}


		sign=msb&0x80;
  		t2=msb*256+lsb;
  		if (sign) t2=(0xFFFF-t2)+1;



  		t=t2*6;
  		t2=t2>>2;
  		t=t+t2;					// hier ist t die Teperatur in 0,01°C


		if(sensortyp &0x08){		// DS18S20
			t-=25;
		}


  		if (sign) t=-t;			// Vorzeichen

  	}
  	else t=0xFFFF;				// im Fehlerfall 0xFFFF zurückmelden
  	return (t);
}



void HW_owdelay(unsigned int deltime)		// Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben)
{								// Der Aufruf allein dauert schon ca. 12us !!!
								// NICHT IN APP VERWENDEN !!!
  TR0=0;						// Timer 0 anhalten
  deltime=0xFFFF-deltime;
  TH0=deltime>>8;				// Timer 0 setzen
  TL0=deltime;
  TF0=0;
  TR0=1;
  while(!TF0);					// warten auf Timer 0
  TR0=0;
}


static void oowdelay(unsigned char deltime)      // Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben)
{                               // Der Aufruf allein dauert schon ca. 12us !!!
    for(;deltime>0;deltime--) {}
}

static void olong_owdelay(unsigned int deltime)      // Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben)
{                               // Der Aufruf allein dauert schon ca. 12us !!!
    for(;deltime>0;deltime--) {}
}
