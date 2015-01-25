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

/*************************************************************************
  Sensor definitions
*************************************************************************/
#define DHT           // Define DHT to enable DHT sensor support
#define DS_SERIES     // Define to enable DS sensor support

/*************************************************************************
  Port and Date Pin definitions
*************************************************************************/
#ifdef DS_SERIES
  //#define OWDATA  P1_1  // Define fixed Data-Pin for one one-wire DS Sensor
#endif
#ifdef DHT
  #define DHT_PORT P0  // Define the Port for DHT Sensor
#endif

/*************************************************************************
  Timer definitions
*************************************************************************/
//#define SOFT_DELAY   // Define the software delay timer.
                     // If not defined, the Hardware delay timer will be used


/*************************************************************************
  Other definitions
*************************************************************************/
#if defined(DS_SERIES) || defined(DHT)
extern const unsigned char bitmask_1[8];    // Mask for DHT and DS
extern unsigned char onewire_receive[];     // Holds DS18x20 and DHT received data

#ifdef DHT
#  ifdef SOFT_DELAY
    #define LONG_DELAY // Switch to the software delay long timer for dht
#  endif
#endif

// owdelay function declaration depends on compile definitions
# ifdef SOFT_DELAY
static
#endif
void owdelay(
# ifndef SOFT_DELAY
                unsigned int deltime
# else
#   ifdef LONG_DELAY
                int deltime
#   else
               unsigned char deltime
#   endif
#endif
             );

# ifdef DS_SERIES
    extern unsigned char kanal;                 // Current channel
    __bit ow_init(void);                      // Initialize One-wire Device
    void ow_write(unsigned char owbyte);      // Send Byte to one-wire device
    unsigned char ow_read(unsigned char);     // Read byte from one-wire device
    __bit ow_read_bit(void);                  // Read data-bit from one-wire
    extern unsigned char onewire_error;       // Error code, 2Bit per sensor
    __bit start_tempconversion(void);		    // Temperaturmessung starten
    int read_temp(unsigned char sensortyp);	// Temperatur einlesen
# endif // #ifdef DS_SERIES

# ifdef DHT
    #define DELAY_CONST_1WIRE_DHT_MASTER_1  16  // 20 = lesen approx. 15us nach Vorderkante; 16=7.5µs
    #define DHT1x_SENSOR    1 // DHT11
    #define DHT2x_SENSOR    0 // DHT21, DHT22

    void dht1x_init(unsigned char hw_channel);
    __bit dht_decode(unsigned char sensor_type);
    unsigned char dht_ow_receive (unsigned char hw_channel);
    extern int dht_temp;
    extern int dht_humid;
# endif // #ifdef DHT

#  ifdef SOFT_DELAY
    #define OWDELAY_INIT        210
    #define OWDELAY_DS_WRITE_B1    23
    #define OWDELAY_DS_WRITE_B0    25
    #define OWDELAY_DS_READ        13

  // Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben). Der Aufruf allein dauert schon ca. 12us !!!
#   ifdef LONG_DELAY
      #define OWDELAY_DHT_RECEIVE (int)320
      #define OWDELAY_DHT_INIT    (int)4100
#   else
      #define OWDELAY_DHT_RECEIVE (unsigned char)4600
      #define OWDELAY_DHT_INIT    (unsigned char)63000
#   endif //#ifdef LONG_DELAY
#  else // #ifdef SOFT_DELAY
     #define OWDELAY_INIT        2500
     #define OWDELAY_DS_WRITE_B1 260
     #define OWDELAY_DS_WRITE_B0 280
     #define OWDELAY_DS_READ     140
     #define OWDELAY_DHT_RECEIVE 4600
     #define OWDELAY_DHT_INIT    63000
#  endif // #ifdef SOFT_DELAY

#endif // #if defined(DS_SERIES) || defined(DHT)
