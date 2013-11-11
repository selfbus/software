#ifndef HARDWARE_H_
#define HARDWARE_H_

#define LPC936

#define DS18S20			// für DS18B20 auskommentieren
#define OWDATA	P2_1	// Temp.Sensor an Port 2.1 

#define CMPOUT	0x83	// Comparator output zum Laden des Kondensators (P0.3 in HEX, da in asm verwendet)

#endif /*HARDWARE_H_*/
