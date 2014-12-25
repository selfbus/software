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
 * Versionen:	1.00  erste Version
 *				2.00  erste Version mit Lib 1.4  -- WIP
 *				2.01  Bugfix, Sensoren wurde mit Buserkennung nicht mehr gelesen
 *				2.02  Bugifx, Verbindung wird nach timeout abgebaut (Line-Scan)
 */

#include "fb_app_4temp.h"
#include "4temp_onewire.h"

#ifdef DEBUG_H_
	// Setup the debug variables
	DEBUG_VARIABLES;
#endif

extern unsigned char family_code[4];

#ifndef DEBUG_H_
// Wenn Debug aktiv ist werden die Werte in der restart_app() geschrieben damit die Konfiguration nicht
// immer neu geschrieben werden muss.
// Geräteparameter setzen, diese können von der ETS übschrieben werden wenn Schreibschutz nicht aktiv
static __code unsigned char __at (EEPROM_ADDR + 0x03) manufacturer[2]={0x00,0x08};	// Herstellercode 0x0008 = GIRA
static __code unsigned char __at (EEPROM_ADDR + 0x05) device_type[2]={0x04, 0x38};	// 1080 Selfbus 4temp
static __code unsigned char __at (EEPROM_ADDR + 0x0C) port_A_direction={0};			// PORT A Direction Bit Setting
static __code unsigned char __at (EEPROM_ADDR + 0x0D) run_state={255};				// Run-Status (00=stop FF=run)
#endif



void main(void)
{
	unsigned char n, tasterpegel=0;
	__bit tastergetoggelt=0;

	int th;
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
// Needs to be after restart_app
#ifdef DEBUG_H_
    // Initialize the debugging
    DEBUG_SETUP;
#endif


	// ***************************************************************************
	// Hauptschleife
	// ***************************************************************************
	do  {
#ifdef DEBUG_H_
		// Here happens the serial communication with the PC
		DEBUG_POINT;
#endif

		if (RTCCON>=0x80 && connected)   // Realtime clock ueberlauf und
        {                                // wenn connected den timeout für Unicast connect behandeln
            RTCCON=0x61;// RTC flag löschen
            if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
                connected_timeout++;
            else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
        }

		if (APPLICATION_RUN)	// nur wenn run-mode gesetzt
		{
			if(RTCCON>=0x80) delay_timer();		// Realtime clock Ueberlauf

			if (sequence==1)
			{
			    interrupted=0;                                      // TODO: Info, family code check optional
				if(family_code[kanal] && start_tempconversion())    // Start convert if sensor known
				{
				    if(!interrupted)
				        sequence=2;
				}
				else
				{
				    onewire_error |= bitmask_1[kanal<<1];    // not connected
				    kanal++;                    // No present sensor, next channel
				}

			}
			else if (sequence==2)
			{
			    timercnt[9] = 0x80+7;   // wait approx. 0.9s for sensor to be done
			                            // secuence 3 set by delaytimer
			    sequence=3;             // Konvertierung abgeschlossen
			}
			else if(sequence==4)        // && !TR1 // can be used to sync
			{
				// Temperatur einlesen + Übergabe Sensortyp
				//th=read_temp(  ((eeprom[0x6B+(kanal>>1)])>>(((~kanal)&0x01)<<2))&0x0F  ); // VD
				th=read_temp(family_code[kanal]);   // Read sensor with detected codes
				// interrupted/crc error -60
				// sensor not found -61
				if(th>-5600)
				{
					temp[kanal]=th;

					// Grenzwerte
					grenzwert(kanal);

					// Messwertdifferenz
					messwert(kanal);

					// Buswiederkehr bearbeiten
					if (sende_sofort_bus_return)
						bus_return();
				}

                sequence=1;

                // OK, next channel
                kanal++;
#ifdef multiplex
                P0_0=kanal&0x01;
                P0_1=(kanal>>1)&0x01;
#endif
			}
            // Only channel 0-3
			kanal&=0x03;
		} // end if(APPLICATION_RUN)

			// Telegrammverarbeitung
			if (tel_arrived || tel_sent)
			{
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
