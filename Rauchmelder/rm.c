/*
 *  Copyright (c) 2013 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */

#include <mcs51/P89LPC922.h>
#include <fb_lpc922_1.4x.h>

#include "rm_app.h"
#include "rm_com.h"


void main(void)
{
	unsigned char n;

	//
	//  Initialisierung
	//
	restart_hw();

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
