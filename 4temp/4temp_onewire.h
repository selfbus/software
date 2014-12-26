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

// Compile definitions
//########################################################################################################
//#define DHT           // Define DHT to enable DHT sensor support
#define DS_SERIES     // Define to enable DS sensor support (to save memory)

#ifdef DS_SERIES
//#define OWDATA  P0_0  // Define a fixed Data-Pin for just one one-wire DS Sensor
#endif

// Timer definitions
#ifdef DHT
  #define SOFT_DELAY   // Define the software delay timer for DHT. If not defined, the Hardware delay timer will be used
  #ifdef SOFT_DELAY
    //#define LONG_DELAY // Switch to the software delay long timer for dht
  #endif
#endif
//########################################################################################################


extern unsigned char kanal;                 // Current channel
extern const unsigned char bitmask_1[8];    // Mask for DHT and DS

__bit ow_init(void);					    // Initialize One-wire Device
void ow_write(unsigned char owbyte);	    // Send Byte to one-wire device
unsigned char ow_read(unsigned char);       // Read byte from one-wire device
__bit ow_read_bit(void);				    // Read data-bit from one-wire
void owdelay(unsigned int deltime);         // Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben)

#ifdef DS_SERIES
  extern unsigned char onewire_receive[];   // Holds DS18x20 received data
  extern unsigned char onewire_error;       // Error code, 2Bit per sensor
  __bit start_tempconversion(void);		    // Temperaturmessung starten
  int read_temp(unsigned char sensortyp);	// Temperatur einlesen
#endif

// DHT
#ifdef DHT
  #define DELAY_CONST_1WIRE_DHT_MASTER_1  16  // 20 = lesen approx. 15us nach Vorderkante; 16=7.5µs
  #define DHT1x_SENSOR    0 // DHT11
  #define DHT2x_SENSOR    1 // DHT21, DHT22

  void dht1x_init(unsigned char hw_channel);
  __bit dht_decode(unsigned char sensor_type);
  unsigned char dht_ow_receive (unsigned char hw_channel);
  extern int __idata __at (0xFE-0x28) dht_temp;
  extern int __idata __at (0xFE-0x2A) dht_humid;
#endif


#ifdef SOFT_DELAY
	#define OWDELAY_INIT        210
	#define OWDELAY_DS_WRITE_B1    23
	#define OWDELAY_DS_WRITE_B0    25
	#define OWDELAY_DS_READ        13

  // Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben). Der Aufruf allein dauert schon ca. 12us !!!
# ifdef LONG_DELAY
    #define OWDELAY_DHT_RECEIVE (int)320
    #define OWDELAY_DHT_INIT    (int)4100
    inline void owdelay( unsigned int deltime) { for(;deltime>0;deltime--) {} }
# else
    #define OWDELAY_DHT_RECEIVE (unsigned char)4600
    #define OWDELAY_DHT_INIT    (unsigned char)63000
    inline void owdelay( unsigned char deltime) { for(;deltime>0;deltime--) {} }
# endif
#else
	#define OWDELAY_INIT        2500
	#define OWDELAY_DS_WRITE_B1 260
	#define OWDELAY_DS_WRITE_B0 280
	#define OWDELAY_DS_READ     140
    #define OWDELAY_DHT_RECEIVE 4600
    #define OWDELAY_DHT_INIT    63000
#endif
