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
 *
 *
 * Versionen:	1.00	erste Version
 *				2.00	erste Version mit Lib 1.4  -- WIP
 *				2.01	Bugfix Sensoren wurde mit Buserkennung nicht mehr gelesen
 */

#include "debug.h"
#include <fb_lpc922.h>
#include "fb_app_4sense.h"
#include "4sense_onewire.h"

//#ifdef DEBUG_H_
	// Setup the debug variables
	DEBUG_VARIABLES;
//#endif

const unsigned char bitmask_1[8] ={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
unsigned char sensor_type;
unsigned char dht_read_delay;


// Geräteparameter setzen, diese können von der ETS übschrieben werden
// Daher zusätzlich bei jedem restart_app neu schreiben
//static __code unsigned char __at (0x1D03) manufacturer[2]={0x00,0x4C};	// Herstellercode 0x004C = Robert Bosch (76)
//static __code unsigned char __at (0x1D05) device_type[2]={0x04, 0x38};	// 1080 Selfbus 4temp
//static __code unsigned char __at (0x1D0C) port_A_direction={0};			// PORT A Direction Bit Setting
//static __code unsigned char __at (0x1D0D) run_state={255};				// Run-Status (00=stop FF=run)

//Debug
unsigned char dht_error_code;

void main(void)
{
	unsigned char n, tasterpegel = 0;
	__bit tastergetoggelt = 0;
	__bit new_reading = 0;

	int th;

#ifdef DEBUG_H_
	// Initialize the debugging
	DEBUG_SETUP;
#endif
	// Port 0 all open drain
	P0M1 = 0xff;
	P0M2 = 0xff;

	// ***************************************************************************
	// Initialisierung
	// ***************************************************************************
	restart_hw();				// Hardware zurücksetzen
	TASTER=0;					// LED Ein

	// Warten bis Bus stabil, nach Busspannungswiederkehr
	for (n = 0; n < 50; n++)
	{
		TR0 = 0;					// Timer 0 anhalten
		TH0 = eeprom[ADDRTAB + 1];  // Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
		TL0 = eeprom[ADDRTAB + 2];
		TF0 = 0;					// Überlauf-Flag zurücksetzen
		TR0 = 1;					// Timer 0 starten
		while (!TF0)
			;
	}
	restart_app();


	// ***************************************************************************
	// Hauptschleife
	// ***************************************************************************
	do  {
#ifdef DEBUG_H_
		// Here happens the serial communication with the PC
		DEBUG_POINT;
#endif

		if (APPLICATION_RUN)	// nur wenn run-mode gesetzt
		{
			if(RTCCON>=0x80){
			    dht_read_delay++;
			    delay_timer();		// Realtime clock Ueberlauf
			}

            // Sensortyp für aktuellen Kanal holen
			// Bit 0-1      0= kein Sensor, 1= Temperatur, 2= Temp/Feuchte
			// Bit 3        0= DS18B20/DHT11, 1= DS18S20/DHT22
			sensor_type = ( (eeprom[0xA9+(kanal*20)]) &0x0F);

			switch (sensor_type)
			{
			// DS Series
            case 1:
            case 9:
                if (sequence==1)
                {
                    interrupted=0;
                    start_tempconversion();         // Konvertierung starten
                    if (!interrupted) sequence=2;
                }
                else if (sequence==2)
                {
                    if (ow_read_bit()) sequence=3;  // Konvertierung abgeschlossen
                }
                else
                {
                    interrupted=0;
                    // Temperatur einlesen + Übergabe Sensortyp
                    th=read_temp(sensor_type);
                    if (!interrupted)
                    {
                        // Bei Sensorfehler wird letzter Messwert gehalten TODO Fehler Com-Objekt einfügen??
                        temp_humid[kanal]=th;
                        new_reading = 1;
                    }
                }
                break;

			// DHT Series
			case 2:
			    if (dht_read_delay >=31) //min 2 sec. delay
			        dht1x_init(kanal);
			    // no break!
			case 10:
                if (dht_read_delay >=31) //min 2 sec. delay
                {
                    // Temperatur einlesen
                    dht_error_code = receive_1wire_dht(kanal);    // TODO: Delay timer kanal sync!!
                    if (dht_error_code==0)
                       if(dht_decode(sensor_type))
                        {
                           temp_humid[kanal]= dht_temp;
                           //temp[kanal+4]= dht_humid;
                           temp_humid[4]= dht_humid;  // Test, old VD
                           new_reading = 1;
                        }
                    dht_read_delay =0;
                }
                break;


			default:
                // Kanalumschaltung wenn kein Sensor oder unbekannt
                kanal++;
                kanal&=0x03;
                break;
			}

			// Neue Messwerte verarbeiten
            if (new_reading)
            {
                // Grenzwerte
                grenzwert(kanal);

                // Messwertdifferenz
                messwert(kanal);

                // Buswiederkehr bearbeiten
                if (sende_sofort_bus_return)
                    bus_return();

                sequence=1;

                // Kanalumschaltung
                kanal++;
                kanal&=0x03;
#ifdef multiplex
                P0_0=kanal&0x01;
                P0_1=(kanal>>1)&0x01;
#endif
                new_reading = 0;    // Warte auf neuen Messwert
            }

		} // end if(APPLICATION_RUN)

			// Telegrammverarbeitung
			if (tel_arrived || tel_sent)
			{
				tel_arrived=0;
				tel_sent=0;
				process_tel();
			}
			else
			{
				for(n=0;n<100;n++);		// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
			}

		// Prog Taster und LED bedienen
		TASTER=1;			// Pin als Eingang schalten um Taster abzufragen
			if(!TASTER){ 	// Taster gedrückt
				if(tasterpegel<127)	tasterpegel++;
				else{
					if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
					tastergetoggelt=1;
				}
			}
			else {
				if(tasterpegel>0) tasterpegel--;
				else tastergetoggelt=0;
			}
			TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)

		} while(1);
}
