/*
 *  Copyright (c) 2008-2012 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#include <P89LPC922.h>
#include <fb_lpc922_1.51.h>
//#include <fb_lpc922_1.58.h>
//#include <fb_lpc922.h>

#include "app_kombi.h"

#include <onewire.c>

#define CMPOUT	0x80	// Comparator output zum Laden des Kondensators (0x80=P0.0 in HEX, da in asm verwendet)
#include <adc_922.c>

unsigned int timer;
unsigned int lastlux;
signed int lasttemp;
signed int temp;
unsigned int lux;
unsigned char tasterpegel = 0;
__bit tastergetoggelt = 0;
__bit bFirstStart = 1;

const unsigned char logtable[] =
{ 0, 9, 17, 27, 40, 53, 66, 79, 88, 96, 101, 106, 109, 112, 255 };
const unsigned char luxchange[] =
{ 100, 20, 10, 5, 3 };

//#define DEBUG

#ifdef DEBUG
signed int ti=2000;
#endif

void main(void)
{
	unsigned char n, m, delta;
	signed int th, change = 0, eis5temp;
	signed char korrektur;
	unsigned int exponent, eis5lux, rest;

	// start watchdog 2,6 sec
	WDL = 0xFF;
	EA = 0;
	WDCON = 0xE5;
	WFEED1 = 0xA5;
	WFEED2 = 0x5A;
	EA = 1;

	restart_hw();				// Hardware zuruecksetzen

	for (n = 0; n < 50; n++)
	{		// Warten bis Bus stabil, nach Busspannungswiederkehr
		TR0 = 0;					// Timer 0 anhalten
		TH0 = eeprom[ADDRTAB + 1];// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
		TL0 = eeprom[ADDRTAB + 2];
		TF0 = 0;					// Überlauf-Flag zurücksetzen
		TR0 = 1;					// Timer 0 starten
		while (!TF0)
			;
	}
	restart_app();			// Anwendungsspezifische Einstellungen zuruecksetzen

	// feed watchdog
	EA = 0;
	WFEED1 = 0xA5;
	WFEED2 = 0x5A;
	EA = 1;

	bFirstStart = 1;


	do
	{
		if (eeprom[0x0D] == 0xFF && fb_state == 0 && !connected)
		{	// Nur wenn im run-mode und statemachine idle
			ET1 = 0;									// statemachine stoppen
			switch (sequence)
			{
			case 1:
				//if (((timer & 0x3F) == 0x30) || (bFirstStart)) //0x30 = 48 * 130ms = 6,24s // nur alle 10 Sekunden wandeln ?
				if (((timer & 0x0F) == 0x0F) || (bFirstStart)) //0x0F = 15 * 130ms = 1,95s
				{
					bFirstStart = 0;
					interrupted = 0;
					start_tempconversion();				// Konvertierung starten
					if (!interrupted)
						sequence = 2;
				}
				ET1 = 1;						// statemachine starten
				break;
			case 2:
				if ((timer & 0x07) == 0x07) // nur ein mal pro Sekunde pollen
				{
					interrupted = 0;
					if (ow_read_bit() && !interrupted)
						sequence = 3;	// Konvertierung abgeschlossen
				}
				ET1 = 1;						// statemachine starten
				break;
			case 3:
				interrupted = 0;
#ifdef DEBUG
				th = ti;
				ti+=100;
				if (ti>2800) ti=2000;
#else
				th = read_temp();					// Temperatur einlesen
#endif
				ET1 = 1;						// statemachine starten
				korrektur = (signed char) eeprom[TEMPCORR];	// Parameter Korrekturwert Temperatur
				for (n = 0; n < 10; n++)
					th += korrektur;

				if (!interrupted)
				{
					temp = th;
					if (temp != lasttemp)
					{
						eis5temp = (temp >> 3) & 0x07FF;// durch 8 teilen, da später Exponent 3 dazukommt
						eis5temp = eis5temp + (0x18 << 8);
						if (temp < 0)
							eis5temp += 0x8000;	// Vorzeichen
						write_obj_value(1, eis5temp);

						schwelle(6); // Temperaturschwellen prüfen und ggf. reagieren
						schwelle(7);
					}
					sequence = 4;
				}
				break;
			case 4:				// Helligkeitswert konvertieren
				interrupted = 0;
				Get_ADC(3);		// ADC-Wert holen
				ET1 = 1;			// statemachine starten
				if (!interrupted)
				{
					n = 0;
					if (HighByte >= 112)
					{
						lux = 65535;
					}
					else
					{
						/*
						 while (HighByte >= logtable[n]) n++;

						 if (n>1) {
						 lux=8;
						 lux=lux<<(n-1);	// unterer Wert
						 }

						 else lux=0;
						 */
						lux = 2;
						while (HighByte >= logtable[n])
						{
							n++;
							lux = lux * 2;
						}
						if (n <= 1)
							lux = 0;

						rest = HighByte - logtable[n - 1];
						delta = logtable[n] - logtable[n - 1];

						/*
						 if (n<11) lux+=_divuint(rest<<(n+2),delta);
						 else lux+=_divuint(rest<<(n-2),delta)<<4;
						 */
						if (n < 11)
							m = n + 2;
						else
							m = n - 2;
						rest = rest << m;
						rest = _divuint(rest, delta);
						if (n < 11)
							lux += rest;
						else
							lux += rest << 4;

						if (n < 7)
							lux += (_divuint(LowByte << (n + 2), delta) >> 8);

					}
					if (lux != lastlux)
					{
						exponent = 0x3800;	// Exponent 7

						eis5lux = lux >> 1;
						eis5lux += lux >> 2;
						eis5lux += lux >> 5;

						while (eis5lux > 0x07FF)
						{	// Exponent erhöhen falls Mantisse zu groß
							eis5lux = eis5lux >> 1;
							exponent += 0x0800;
						}
						eis5lux += exponent;

						write_obj_value(0, eis5lux);// Lux Wert im userram speichern
						schwelle(4);             // Helligkeitsschwellen 2 und 3
						schwelle(5);
					}
					schwelle(3); // Helligkeitsschwelle 1 trotzdem jedes mal weil es auch Nachregelung sein könnte
					sequence = 1;
				}
				break;
			}

			// Senden von Temperatur bei Änderung
			change = ((eeprom[TEMPPARAM] & 0x70) >> 4) * 100;// wenn change=0 wird nicht gesendet
			if (change)
			{
				//if (((temp + change) <= lasttemp) || ((lasttemp + change) <= temp)) // das funktioniert nicht
				if ((temp > lasttemp && (temp - lasttemp) >= change) || (temp < lasttemp && (lasttemp - temp) >= change))
				{	// bei Änderung um 1-3K
					WRITE_DELAY_RECORD(1, 1, 1, timer + 1)
					lasttemp = temp;
				}
			}

			// Senden von Lux bei Änderung
			if (eeprom[LUXPARAM] & 0x70)
			{	// wenn Lux senden bei Änderung aktiv
				change = _divuint(lastlux,
						luxchange[(eeprom[LUXPARAM] & 0x70) >> 4]);
				if (change == 0)
					change = 1;		// mindestens 1 Lux Änderung
				if ((lux > lastlux && (lux - lastlux) >= change)
						|| (lux < lastlux && (lastlux - lux) >= change))
				{
					WRITE_DELAY_RECORD(0, 1, 1, timer + 1)
					lastlux = lux;
				}
			}

			schwelle(8);     // Verknüpfungsobjekte
			schwelle(9);

			if (RTCCON >= 0x80)
				delay_timer();	// Realtime clock Überlauf

		}	// Ende des Bereiches, der nur im run-state laufen darf

		// feed watchdog
		EA = 0;
		WFEED1 = 0xA5;
		WFEED2 = 0x5A;
		EA = 1;

		if (tel_arrived)
			process_tel();			// empfangenes Telegramm abarbeiten

		// Programmiertaster abfragen
		TASTER = 1;				// Pin als Eingang schalten um Taster abzufragen
		if (!TASTER)
		{ // Taster gedrückt
			if (tasterpegel < 255)
				tasterpegel++;
			else
			{
				if (!tastergetoggelt)
					status60 ^= 0x81;// Prog-Bit und Parity-Bit im system_state toggeln
				tastergetoggelt = 1;
			}
		}
		else
		{
			if (tasterpegel > 0)
				tasterpegel--;
			else
				tastergetoggelt = 0;
		}
		TASTER = !(status60 & 0x01);// LED entsprechend Prog-Bit schalten (low=LED an)

		if (status60 & 0x01)
		{
			// im Programmiermodus kurze Pause einlegen
			/*
			for (n = 0; n < 255; n++)
			{
			}	// etwas zeit zum leuchten, wenn Hauptschleife nicht aktiv
			*/
		}

		if (fb_state == 0)
			for (n = 0; n < 100; n++)
			{
			}	// etwas zeit zum leuchten, wenn Hauptschleife nicht aktiv
	} while (1);
}

