/*
 *  Copyright (c) 2013 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */

#include <fb_lpc922.h>

#include "rm_app.h"
#include "rm_com.h"

// Default EEPROM values
#ifdef DEVICE_ID_CHECK
const static unsigned char dev_application_id[4] = {0x00,0x4C,0x03,0xF2};
#endif

#ifndef DEBUG_H_
// Wenn Debug aktiv ist werden die Werte in der restart_app() geschrieben damit die Konfiguration nicht
// immer neu geschrieben werden muss.
// Geräteparameter setzen, diese können von der ETS übschrieben werden wenn Schreibschutz nicht aktiv
static __code unsigned char __at (EEPROM_ADDR + 0x00) option_reg={0xFF};                    // Option Register, ETS will write 0xFF
static __code unsigned char __at (EEPROM_ADDR + 0x01) fw_version[2]={FW_VER_MAJ,FW_VER_MIN};// Man. Data, used for FW Version
static __code unsigned char __at (EEPROM_ADDR + 0x03) manufacturer[2]={0x00,0x4C};          // Herstellercode 0x004C = Robert Bosch *
static __code unsigned char __at (EEPROM_ADDR + 0x05) device_type[2]={0x03,0xF2};           // Devicetype 1010 (0x03F2) #
static __code unsigned char __at (EEPROM_ADDR + 0x07) vd_version={0x23};                    // VD Version V2.3 #
static __code unsigned char __at (EEPROM_ADDR + 0x08) eeprom_chk_limit={0xFF};              // EEPROM Check Limit
static __code unsigned char __at (EEPROM_ADDR + 0x09) pei_type={0x00};                      // Required PEI Type, written by VD
static __code unsigned char __at (EEPROM_ADDR + 0x0C) port_A_direction={0x00};              // PORT A Direction Bit Setting *
static __code unsigned char __at (EEPROM_ADDR + 0x0D) run_error={0xFB};                     // Run Time Error Flags, set when 0
static __code unsigned int  __at (EEPROM_ADDR + 0x17) start_pa={0xFFFF};                    // Default PA is 15.15.255 *
#endif

void main(void)
{
	unsigned char n;

	//
	//  Initialisierung
	//
	restart_hw();
	TASTER=0;                       // Prog. LED kurz Ein

	// Warten bis Bus stabil, nach Busspannungswiederkehr
	for (n = 0; n < 50; n++)
	{
		TR0 = 0;					// Timer 0 anhalten
		TH0 = 0;                    // Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
		TL0 = eeprom[ADDRTAB + 2];  // Nur Low Byte der PA nutzen, sonst sehr kurze Wartezeit bei 15.15.255
		TF0 = 0;					// Überlauf-Flag zurücksetzen
		TR0 = 1;					// Timer 0 starten
		while (!TF0)
			;
	}

#ifdef DEVICE_ID_CHECK
	// Only start if correct application has been loaded
	for(n = 0; n<=3; n++)
	{
	    if(eeprom[0x03+n] != dev_application_id[n])
	    {
	        EA = 0;
	        START_WRITECYCLE;
	        WRITE_BYTE(0x01,0x0D,0xFB); // Indicate Stack Overflow, holds app
	        STOP_WRITECYCLE;
	        EA = 1;
	        break;                  // Flash just once
	    }
	}
#endif

	restart_app();

	do
	{
		//
		//  Hauptverarbeitung
		//
		if (APPLICATION_RUN)
		{
			if (RI)
				rm_recv_byte();

			if (RTCCON >= 0x80)
				timer_event();

			if (!answerWait)
				process_alarm_stats();

			if (!answerWait)
				process_objs();
		}
		else if (RTCCON>=0x80 && connected)	// Realtime clock ueberlauf
			{			// wenn connected den timeout für Unicast connect behandeln
			RTCCON=0x61;// RTC flag löschen
			if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
				{
				connected_timeout ++;
				}
				else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
			}

		//
		// Empfangenes Telegramm bearbeiten, aber nur wenn wir gerade nichts
		// vom Rauchmelder empfangen.
		//
		if (tel_arrived) // && recvCount < 0)
			process_tel();

		//
		// Watchdog rücksetzen
		//
		EA = 0;
		WFEED1 = 0xA5;
		WFEED2 = 0x5A;
		EA = 1;

		//
		// Abfrage des Programmier-Tasters
		//
		TASTER = 1;
		if (!TASTER)
		{
			for (n = 0; n < 100; n++) // Entprellen
				;
			while (!TASTER) // Warten bis Taster losgelassen
				;
			status60 ^= 0x81;// Prog-Bit und Parity-Bit im system_state toggeln
		}
		TASTER = !(status60 & 0x01);// LED entsprechend Prog-Bit schalten (low=LED an)

	} while (1);
}
