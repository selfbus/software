/*
 *  Copyright (c) 2013 Stefan Taferner <stefan.taferner@gmx.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */

//#include <mcs51/P89LPC922.h>
//#include <fb_lpc922_1.4x.h>

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
		TH0 = eeprom[ADDRTAB + 1];  // Timer 0 setzen mit phys. Adr. damit GerÃ¤te unterschiedlich beginnen zu senden
		TL0 = eeprom[ADDRTAB + 2];
		TF0 = 0;					// Ãœberlauf-Flag zurÃ¼cksetzen
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
		// Watchdog rÃ¼cksetzen
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
