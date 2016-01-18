/*
 *    _____ ______ __   __________  __  _______
 *   / ___// ____// /  / ____/ __ )/ / / / ___/
 *   \__ \/ __/  / /  / /__ / __  / / / /\__ \
 *  ___/ / /__  / /__/ /__// /_/ / /_/ /___/ /
 * /____/_____//____/_/   /_____/\____//____/
 *
 *  Copyright (c) 2010 Jan Wegner
 *  Copyright (c) 2014-2015 Stefan Haller
 *  Copyright (c) 2015 Erkan Colak
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#include "4Sense_Uni.h"

#include <P89LPC922.h>

#ifdef LPC936
    //#include <fb_lpc936_1.55.h>
    #include <fb_lpc936.h>
#else
    //#include <fb_lpc922_1.55.h>
    #include <fb_lpc922.h>
#endif

#if defined(DS_SERIES) || defined(DHT)
  const unsigned char bitmask_1[8] ={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
  unsigned char onewire_receive[9];   // Holds DS18x20 and DHT received data
// owdelay function declaration depends on compile definitions
# ifdef SOFT_DELAY
  static
# endif
  void owdelay(
# ifndef SOFT_DELAY
                  unsigned int deltime
# else
#   ifdef LONG_DELAY
                  int deltime
#   else
                 unsigned char deltime
#   endif
# endif //# ifndef SOFT_DELAY
               ) {
# ifdef SOFT_DELAY
      for(;deltime>0;deltime--) {} // Der Aufruf allein dauert schon ca. 12us !!!
# else
                                      // Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben)
                                      // Der Aufruf allein dauert schon ca. 12us !!!
                                      // !!! NICHT IN APP VERWENDEN !!!
    TR0=0;                            // Timer 0 anhalten
    deltime=0xFFFF-deltime;
    TH0=deltime>>8;                   // Timer 0 setzen
    TL0=deltime;
    TF0=0;
    TR0=1;
    while(!TF0);                      // warten auf Timer 0
    TR0=0;
# endif // #ifdef SOFT_DELAY
      }
#endif // #if defined(DS_SERIES) || defined(DHT)

#ifdef DS_SERIES
  unsigned char kanal;
  unsigned char onewire_error;        // Error code, 2Bit per sensor
#endif // #ifdef DS_SERIES

#ifdef DHT
  int dht_temp;
  int dht_humid;
  //unsigned char t, bit_count, wait_count;
#endif // #ifdef DHT

#ifdef DS_SERIES

// Initialize One-wire Device
#define mow_init( mPX_X, mPre ) \
{ \
  unsigned char n; \
  mPX_X=0; \
  owdelay(OWDELAY_INIT); \
  mPX_X=1; \
  for(n=0;n<255;n++) mPre=mPre & mPX_X;\
}

// Send Byte to one-wire device
//     LSB first
//     1-Bit: 5us auf low dann auf high und 85us warten //260 HW, 23 SW
//     0-Bit: 90us auf low dann auf high                //275 HW, 25 SW
#define mow_write( mPX_X, owbyte) \
{ \
  unsigned char n,m; \
  for (n=1;n!=0;n=n<<1) { \
    if (owbyte & n) { \
      for (m=0;m<2;m++) { mPX_X=0; } \
      mPX_X=1; \
      owdelay(OWDELAY_DS_WRITE_B1); \
    } else { \
      mPX_X=0; \
      owdelay(OWDELAY_DS_WRITE_B0); \
      mPX_X=1; \
    } \
  } \
}

// Read byte from one-wire device
// Returns the CRC checksum, 0 if correct
//     140 HW, 13 SW
#define mow_read( mPX_X, d)  \
{ \
  unsigned char n,m; \
  for (n=1;n!=0;n=n<<1) { \
    for (m=0;m<2;m++){mPX_X=0;} \
    mPX_X=1; \
    owdelay(1); \
    if (mPX_X) {d|=n;} \
    owdelay(OWDELAY_DS_READ); \
  } \
}

// Read data-bit from one-wire
//     HW and SW delay -> 1
#define mow_read_bit( mPX_X, b) \
{ \
  unsigned char m; \
  for (m=0;m<2;m++) {mPX_X=0;} \
  mPX_X=1; \
  owdelay(1); \
  b=mPX_X; \
  owdelay(OWDELAY_DS_READ); \
}

__bit ow_init(void)
{
  __bit presence=1;
#ifdef OWDATA
  mow_init( OWDATA, presence );
#else
  switch (kanal) {
    case 0: mow_init( P0_0, presence );break;
    case 1: mow_init( P0_1, presence );break;
    case 2: mow_init( P0_2, presence );break;
    case 3: mow_init( P0_3, presence );break;
  }
#endif
  presence=!presence;
  return (presence);
}

void ow_write( unsigned char owbyte ) // Send Byte to one-wire device
{
#ifdef OWDATA
  mow_write( OWDATA, owbyte);
#else
  switch (kanal) {
    case 0: mow_write( P0_0, owbyte);break;
    case 1: mow_write( P0_1, owbyte);break;
    case 2: mow_write( P0_2, owbyte);break;
    case 3: mow_write( P0_3, owbyte);break;
  }
#endif
    // Check if interrupted
    if(interrupted) {
      onewire_error |= bitmask_1[kanal<<1];    // Interrupted
    }
}

unsigned char ow_read(unsigned char bytes) // Read byte from one-wire device
{
  unsigned char d;
  unsigned char crc = 0;    // CRC
  unsigned char crc_bit, i; // CRC

  for(i=0;i<bytes;i++)
  {
    d=0;
    interrupted=0;             // Detect an interrupt while reading a byte
    #ifdef OWDATA
       mow_read( OWDATA, d);   // Get 1 Byte
    #else
       switch (kanal) {        // Get 1 Byte from selected channel
        case 0: mow_read( P0_0, d);break;
        case 1: mow_read( P0_1, d);break;
        case 2: mow_read( P0_2, d);break;
        case 3: mow_read( P0_3, d);break;
        }
    #endif

       if(interrupted)          // Make sure we haven't been interrupted
       {
           onewire_error |= bitmask_1[kanal<<1];    // Interrupted
           return 0xFF;         // !=0 is a CRC error
       }

       // Optimized iButton 8-bit CRC
       crc = crc ^d;
       for (crc_bit=0;crc_bit<8;crc_bit++)
       {
         if (crc &0x01){
           crc = (crc >>1) ^0x8C;
         } else {
               crc >>= 1;
         }
       }
       // Safe current byte is space
       if(i<sizeof(onewire_receive)) {
           onewire_receive[i] = d;
       }
   }

   if(crc) {
     onewire_error |= bitmask_1[(kanal<<1)+1];    // CRC Error
   }

   return crc;
}

__bit ow_read_bit( void ) // Read data-bit from one-wire
{
  __bit b=0x00;
#ifdef OWDATA
  mow_read_bit( OWDATA, b);
#else
  switch (kanal) {
    case 0: mow_read_bit( P0_0, b);break;
    case 1: mow_read_bit( P0_1, b);break;
    case 2: mow_read_bit( P0_2, b);break;
    case 3: mow_read_bit( P0_3, b);break;
  }
#endif
 return (b);
}


// Temperaturmessung starten
__bit start_tempconversion(void)
{
  if (ow_init()) {
    ow_write(0xCC);     // Skip-ROM command: alle parallel angeschlossenen Geräte werden angesprochen
    ow_write(0x44);     // start single temperature conversion command
#ifdef OWPARASITE
    P0M2 |= bitmask_1[kanal];   // Enable "strong pullup" by going to push-pull mode
#endif
    return 1;
  }
  else
    return 0;
}

// Temperatur einlesen
signed int read_temp(unsigned char sensortyp)
{
  signed int t;
  unsigned char retry;

  //onewire_error &= ~(3<<(kanal<<1)); // Reset channel error log

#ifdef OWPARASITE
    P0M2 &= ~bitmask_1[kanal];   // Disable "strong pullup" by going back to quasi bidirectional mode
#endif

  // Try 2 times to send temperature request
  for(retry=0;retry<2;retry++)
  {
    if (ow_init())    // Sensor available?
    {
      unsigned char sign,lsb,msb;
      unsigned int t2;

      interrupted=0;
      ow_write(0xCC);         // Skip-ROM command: alle parallel angeschlossenen Geraete werden angesprochen
      ow_write(0xBE);         // read scratchpad command: Speicher einlesen
      if(interrupted)         // Retry if interrupted
          continue;

      if(ow_read(9) || (onewire_receive[7]!=0x10) ) {  // Read 9 Bytes
          //continue;             // Retry if interrupted or CRC faulty
          return(-6000);      // CRC Error, indicate with -60° since it's outside the possible range
      }

      // Get local copy to save space
      lsb=onewire_receive[0];
      msb=onewire_receive[1];

      if(sensortyp ==0x10) {  // DS18S20
        msb&=0xF8;          // oberen 3 Bits von LSB in untere 3 von MSB
        msb+=(lsb>>5)&0x07;

        lsb=lsb<<3;         // LSB um 3 Bit nach oben verschieben
        lsb&=0xF0;          // alles unterhalb 2^0 abschneiden
        lsb+=(16-onewire_receive[6]);
      }

      sign=msb&0x80;
      t2=msb*256+lsb;
      if (sign) t2=(0xFFFF-t2)+1;

      t=t2*6;
      t2=t2>>2;
      t=t+t2;                 // hier ist t die Teperatur in 0,01°C

      if(sensortyp ==0x10){   // DS18S20 alignment, datasheet page 3
        t-=25;
      }

      if (sign) t=-t;         // Vorzeichen

      return t;               // OK
    }
  }
  return (-6100);               // Fehler, nicht erfolgreich gelesen (-61°)
}

#endif // #ifdef DS_SERIES

#ifdef DHT
// Do a long reset-puls on DHT1x Sensors
void dht1x_init( unsigned char hw_channel)
{
  DHT_PORT &= ~bitmask_1[hw_channel];     // Leseanforderung DHT 1x Sensoren
  owdelay(OWDELAY_DHT_INIT);        // Pull low, min. 18ms (17ms hier, 1.3ms später) // Release in receive_1wire_dht
}

__bit dht_decode(unsigned char sensor_type)
{
  __bit bRet= 1; // OK

  // Calculate own checksum - Zum Senden wird an DS1820 Format angepasst
  if( onewire_receive[4] == ( (onewire_receive[0]+onewire_receive[1]+onewire_receive[2]+onewire_receive[3]) &0xFF) )
  {
    // Calculate Humidity and Temperature and Convert into double
    switch(sensor_type)
    {
      case DHT1x_SENSOR:
      {
        // Humidity DHT1x Sensors
        dht_humid = onewire_receive[0]*100;

        // Temperature DHT1x
        dht_temp = ((0x7F & onewire_receive[2]) *100);
        if (onewire_receive[2] & 0x80) dht_temp *= -1; // with handled negative temperatures
      }
      break;
      case DHT2x_SENSOR:
      {
        // Humidity DHT2x Sensors
        dht_humid =  ((onewire_receive[0]<<8) + onewire_receive[1])*10 ;

        // Temperature DHT2x
        dht_temp =  (((0x7F & onewire_receive[2])<<8) + onewire_receive[3])*10;
        if (onewire_receive[2] & 0x80) dht_temp *= -1; // with handled negative temperatures
      }
      break;
      default:
         bRet= 0; // CRC Error | Failure
      break;
    }
  }
  return bRet;
}

// reads 5 bytes from hw_channel
// returns 0 if OK
unsigned char dht_ow_receive(unsigned char hw_channel)
{
    unsigned char t, bit_count, wait_count;

  // Leseanvorderung DHT 2x Sensoren
  // DHT1x Sensoren vorher mit dht1x_init() initialisieren
  DHT_PORT &= ~bitmask_1[hw_channel];
  owdelay(OWDELAY_DHT_RECEIVE);  // Reset pulse, 1.3ms
  DHT_PORT |= bitmask_1[hw_channel];
  wait_count = 0;                // Wait for Falling Edge, DHT response is low for 80us
  while( DHT_PORT &bitmask_1[hw_channel])
  {
    wait_count++;
    if(wait_count > 100) {      // Error: DHT Sensor LOW Timeout
     // onewire_receive[0] = onewire_receive[1] = onewire_receive[2] = onewire_receive[3] = 0; // Delete previous sample
      return 1;
    }
  }

  wait_count = 0;               // Wait for Rising Edge, DHT response (high for 80us)
  while (!(DHT_PORT &bitmask_1[hw_channel]))
  {
    wait_count++;
    if(wait_count > 100)       // Error: DHT HIGH Response Timeout
    {
    //  onewire_receive[0] = onewire_receive[1] = onewire_receive[2] = onewire_receive[3] = 0; // Delete previous sample
      return 2;
    }
  }

  // Sample 40 bits, timeout after last bit ensures that sensor has ended transmission
  // DHT pulls bus low after 40bits, this will be sampled as 1, then Low timeout at bit 41
  for (bit_count = 0; bit_count<40; bit_count++)
  {
    wait_count = 0;            // Wait for falling edge, start of next bit
    while (DHT_PORT &bitmask_1[hw_channel])
    {
      wait_count++;
      if(wait_count > 100){    // Error, "DHT Bit %d Falling Edge Timeout\n", bit_count
        return 3;
      }
    }

    wait_count = 0;            // Wait for rising edge, sample length. 26-28us = 0, 70us = 1
    while (!(DHT_PORT &bitmask_1[hw_channel]))
    {
      wait_count++;
      if(wait_count > 100) {   // Error, "DHT Bit %d Timeout\n", bit_count
        return 4;
      }
    }
                               // Wait at least 28uS
    for (t = 0; t < DELAY_CONST_1WIRE_DHT_MASTER_1; t++) ;

    // Sample current bit
    if (DHT_PORT &bitmask_1[hw_channel]) {
      onewire_receive[bit_count/8] |= (1<<(7-(bit_count%8)));
    } else {
      onewire_receive[bit_count/8] &= ~(1<<(7-(bit_count%8)));
    }
  }

  // After 40bits the transmission should be done
  // Sensor pulls bus low to indicate stop and will release it --> timeout if OK
  for (bit_count = 0; bit_count<2; bit_count++)
  {
    wait_count = 0;            // Wait for falling edge to indicate stop
    while (DHT_PORT &bitmask_1[hw_channel])
    {
      wait_count++;
      if(wait_count > 100) {
        //"DHT Stop detected after %d Falling Edge  ", bit_count
        if(bit_count) return 0;   // OK, timeout during second run
        else return 5;   // Stop pulse missing
      }
    }
    while (!(DHT_PORT &bitmask_1[hw_channel]))  // Wait for bus release
    {
        wait_count++;
        if(wait_count > 100) return 6;   // Error, "DHT Bus release %d Timeout\n", bit_count
    }
  }
  return 7;   // Got too many bits
}
#endif // #ifdef DHT
