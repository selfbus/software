




#include "onewire.h"

#ifdef LPC936
#include <P89LPC935_6.h>
#else
#include <P89LPC922.h>
#endif


// Gloable Variablen
unsigned char g_uch_ow_crc8;		// Abspeicherung des 8-Bit-CRC-Wertes, CRC8
unsigned char g_rguch_ds1820[9];  	// Array für empfangene Daten vom DS1820er: max 9 Bytes möglich
unsigned char g_rguch_ow_rom_c[8];	// Array zur Aufnahme des ROM-Codes


__bit ow_init(void)		// one-wire Gerät initialisieren
{
  __bit presence;
  unsigned char n;
  
  presence=1;
  OWDATA=0;
  owdelay(2500);
  OWDATA=1;
  for (n=0;n<255;n++) presence=presence & OWDATA;
  presence=!presence;
  return (presence);
}

void ow_write(unsigned char owbyte)	// Byte an one-wire Gerät senden
{
  unsigned char n,m;

  //for (n=0;n<8;n++)		
  for (n=1;n!=0;n=n<<1)		// LSB first
  {
    //if ((owbyte & (0x01<<n)) != 0)
	if (owbyte & n)
    {
      for (m=0;m<2;m++) OWDATA=0;	// 1-Bit: 5µs auf low dann auf high und 85µs warten
      OWDATA=1;
      owdelay(260);
    }
    else
    {
      OWDATA=0;			// 0-Bit: 90µs auf low dann auf high
      owdelay(275);
      OWDATA=1;
    }
  }
}


unsigned char ow_read(void)			// Byte von one-wire Gerät lesen
{
  unsigned char n,m,d;
  
  d=0;
  //for (n=0;n<8;n++)
  for (n=1;n!=0;n=n<<1)
  {
    for (m=0;m<2;m++) OWDATA=0;
    OWDATA=1;
    owdelay(1);
    //b=OWDATA<<n;
    if (OWDATA) d|=n;
    owdelay(140);
    //d=d|b;
  }
  return(d);
}



__bit ow_read_bit(void)				// Bit von one-wire Datenleitung einlesen
{
	unsigned char m;
	__bit b;
	
	for (m=0;m<2;m++) OWDATA=0;
	OWDATA=1;
	owdelay(1);
	b=OWDATA;
	owdelay (140);
	return (b);
}


void start_tempconversion(void)		// Temperaturmessung starten
{
	if (ow_init()) {
	//while (!ow_init());
		ow_write(0xCC);			// Skip-ROM command: alle parallel angeschlossenen Geräte werden angesprochen
		ow_write(0x44);			// start single temperature conversion command
	}
}

signed int read_temp(void)					// Temperatur einlesen
{
	unsigned char i, lsb, msb, sign, counts;
	signed int t;
	unsigned int t2;

	// prüfe family code, welcher zuvor eingelesen wurde
	if(g_rguch_ow_rom_c[0] != DS18S20 && g_rguch_ow_rom_c[0] != DS18B20)
		return(0xFFFF); // im Fehlerfall 0xFFFF zurückmelden

	// ds1820 Ausgangsbuffer löschen
	for(i = 0; i < 9; i++) g_rguch_ds1820[i] = 0;

	//signed char corr;
	
  	if (ow_init())
  	{
  		ow_write(0xCC);			// Skip-ROM command: alle parallel angeschlossenen Geräte werden angesprochen
  		ow_write(0xBE);			// read scratchpad command: Speicher einlesen

  		// Antwort einlesen: 9 Byte großen Scratch Pad-Inhalt einlesen
  		for(i = 0; i < 9; i++)
  		{
  			g_rguch_ds1820[i] = ow_read();
  		}
  		
  		lsb = g_rguch_ds1820[0]; // LSB von Temperaturwert
  		msb = g_rguch_ds1820[1]; // MSB von Temperaturwert

  		// if the device is a DS18S20
  		if(g_rguch_ow_rom_c[0] == DS18S20)
  		{
			counts = g_rguch_ds1820[6];	// COUNT REMAIN

			msb &= 0xF8; // oberen 3 Bits von LSB in untere 3 von MSB
			msb += (lsb >> 5) & 0x07;

			lsb = lsb << 3;	// LSB um 3 Bit nach oben verschieben
			lsb &= 0xF0; // alles unterhalb 2^0 abschneiden
			lsb += (16 - counts);
  		}
  		
  		sign = msb & 0x80;
  		t2 = msb * 256 + lsb;
  		if(sign) t2 = (0xFFFF - t2) + 1;
 
  		t = t2 * 6;
  		t2 = t2 >> 2;
  		t = t + t2; // hier ist t die Temperatur in 0,01°C
  		
  		// if the device is a DS18S20
  		if(g_rguch_ow_rom_c[0] == DS18S20) t -= 25;

  		if(sign) t = -t; // Vorzeichen
  		
  		return(t); // alles OK also Temperatur zurückmelden
  	}

  	return(0xFFFF); // im Fehlerfall 0xFFFF zurückmelden
}

__bit ow_read_rom(void)					// Lesen des 64-Bit ROM Identifiers
{
	unsigned char i;

	// Start mit Master-Reset-Impuls u. Abfrage: Slave presence
	if(ow_init())
	{
		// Abfrage-Befehl senden: "READ ROM" = 0x33
		ow_write(0x33);

		// Antwort einlesen: 8 Byte = 64 Bit Identifier ins globale Array rom_c[.]
		for(i = 0; i < 8; i++)
		{
			g_rguch_ow_rom_c[i] = ow_read();
		}

		return(1); // Success
	}
	return(0); // Error
}

unsigned char ow_CRC8(unsigned char dats, unsigned char crc)
{
	unsigned char i;
	unsigned char fb;

    for ( i = 0; i < 8; i++)
    {
        fb = (crc ^ dats) & 0x01;
        crc >>= 1;
        if (fb) crc ^= 0x8c;
        dats >>= 1;
    }

    return(crc);
}

unsigned char ow_blockCRC8(unsigned char *dats, unsigned char size)
{
    unsigned char i, crc = 0;

    for (i = 0; i < size; i++)
    {
        crc = ow_CRC8(dats[i],crc);
    }

    return(crc);
}

void owdelay(int deltime)			// Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben) 
{									// Der Aufruf allein dauert schon ca. 12µs !!!
									// NICHT IN APP VERWENDEN !!!
  TR0=0;					// Timer 0 anhalten
  deltime=0xFFFF-deltime;
  TH0=deltime>>8;			// Timer 0 setzen 
  TL0=deltime;	
  TF0=0;
  TR0=1;
  while(!TF0);				// warten auf Timer 0
  TR0=0;		
}

