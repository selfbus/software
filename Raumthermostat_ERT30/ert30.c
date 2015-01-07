/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2008-2012 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* 
*
*
*		1.00	erste Version
*		1.10	auf lib portiert, Bugs bei Verknüpfung raus
*		1.11	Wartezeit nach reset verlängert (Probleme mit solltemp einstellung)
*		1.12	Solltemperaturobjekt eingefügt, Sollwert wird im EEPROM gespeichert
*		1.13	define für 24-Version eingefügt, Tastenentprellung auf Messung Pulsbreite umgebaut
* 		1.14	Klammerfehler bei zykl. senden behoben (ging bei 3min,10min, etc. nicht)
* 				ADC Routine wird bei interrupted unterbrochen um Programmieren zu erleichtern
* 		1.15	Fehler bei Senden Tempschwelle1 behoben (PT0AD in restart)
* 		1.16 	Tasterprellen
* 		1.17	gemeinsamer Anschluss der Taster auf Spare1 gelegt, Repeat Funktion funktioniert jetzt
* 		1.18	zyklisches Senden und Watchdog eingebaut
* 		1.19	Kompilerfehler!!! Indexberechnungen in [ ] funktionieren nicht immer korrekt! Daher vorher berechnen!
* 		1.20	mit lib 1.32 kompiliert
* 		1.21	Temperaturwandeln auf 10 Sekunden gesetzt
* 		1.22	Abgleichwert für LC-Display und Temperatur Bus über ETS mit Faktor 0,1 K einstellbar
* 				Dazu wurde ein neues Array mit DAC-Werten für die Isttemp hinterlegt und die Berechnung
* 				zur Ermittlung des Indexes vereinfacht.
* 				Potentielles Hänger/Endlossschleifen Problem behoben
* 				Drücken der Tasten während LPC Sollwerttemp einstellt unterbunden, somit keine Differenzbildung
* 				zwischen Bus und ERT mehr möglich
*				Soft-Reset eingebaut, dadurch wird auch am LPC ein Reset durchgeführt.
*				Define für EDITMODE eingefügt. Es kann damit festgelegt werden, wie oft eine Taste gedrückt
*				werden muss, bis man in den Editiermodus kommt.
*		1.23	Für diese Version wird ert30g.vd1 benötigt.
*				Die ERT30 Version wird in der ETS eingestellt (230V oder 24V).
*				Der Temperatursensor wird nun in der onewire Bibliothek automatisch erkannt,
*				hierzu muss vor der Verwendung von read_temp() ow_read_rom() aufgerufen werden.
*				Des Weiteren wird die Temperaturabfrage auf dem onewire mittels einer CRC8 Checksumme
*				geprüft. Im Fehlerfall (Keine Geräte am onewire oder CRC Fehler erkannt)
*				wird die Debug LED einmalig eingeschalten.
*		1.24	Für diese Version wird ert30h.vd1 benötigt. ert30h.vd1 funktioniert mit ETS3/4.
*				Herstellercode in 0x004C für Bosch und Devicetype in 1130 (0x046A) geändert.
*
*
* Todo: Echter Hardware-Reset im Layout (EAGLE) einfügen
* 		Frostschutz per ETS und am Geräte mit buttons aktivieren
*/

#include "hardware.h"

#include <p89lpc935_6.h>
#include "lib_lpc936/fb_lpc936.h"

#include "app_ert30.h"
#include "onewire.h"
#include "adc_922.h"


unsigned int timer;
unsigned int lastlux;
int lasttemp;
unsigned char tasterpegel=0;
__bit tastergetoggelt=0;

const unsigned char logtable[] = {0, 9, 17, 27, 40, 53, 66, 79, 88, 96, 101, 106, 109, 112, 255};
const unsigned char luxchange[] = {100, 20, 10, 5, 3};

// DAC Werte in 0,5° Schritten von 9,0° bis 40,0°
//const unsigned char dactemp[] = {0,4, 	  8, 12, 15, 19, 22, 25, 28, 32, 36, 39,
//										 43, 47, 51, 55, 59, 63, 67, 71, 77, 81,
//										 85, 90, 94, 99,103,108,113,118,122,127,
//										131,136,141,145,149,154,159,164,169,174,
//										179,183,188,193,197,201,205,209,213,217,
//										220,224,227,231,234,237,240,243,246,250,  253};

// DAC Werte in 0,5° Schritten von 8,5 °C bis 41,0 °C
const unsigned char dactemp[] = {     0,   4,   6,   9,  13,  16,  20,  24,  27,  30, //  8,5 - 13,0 °C
									 33,  38,  42,  45,  49,  52,  56,  60,  65,  69, // 13,5 - 18,0 °C
									 73,  77,  81,  86,  90,  94,  99, 103, 108, 112, // 18,5 - 23,0 °C
									117, 121, 126, 130, 134, 139, 143, 147, 152, 157, // 23,5 - 28,0 °C
									161, 165, 170, 175, 180, 184, 189, 193, 197, 201, // 28,5 - 33,0 °C
									205, 209, 213, 217, 220, 224, 226, 230, 233, 236, // 33,5 - 38,0 °C
									240, 242, 246, 249, 253, 255 }; // 38,5 - 41,0 °C

// DAC Werte für einen über ein Jahr in Betrieb gewesenen ERT30
// Messungen wurden durchgeführt, da dieser auf einmal 1-1,5°C Abweichung zur Temperatur auf dem Bus aufwies!
// DAC Werte in 0,5° Schritten von 8,5 °C bis 41,0 °C
//const unsigned char dactemp[] = {     3,   6,  10,  13,  15,  19,   23,  27,  30,  34, //  8,5 - 13,0 °C
//									 38,  42,  46,  49,  53,  58,   63,  66,  70,  74, // 13,5 - 18,0 °C
//									 79,  84,  89,  92,  96, 100,  105, 110, 113, 118, // 18,5 - 23,0 °C
//									124, 128, 133, 136, 140, 146,  151, 154, 158, 163, // 23,5 - 28,0 °C
//									169, 172, 177, 183, 188, 192,  197, 202, 206, 209, // 28,5 - 33,0 °C
//									213, 217, 220, 224, 227, 231,  234, 239, 242, 245, // 33,5 - 38,0 °C
//									248, 250, 253, 255}; // 38,5 - 40,0 °C

void main(void)
{ 
	unsigned char n, m, delta, tempx2;
	int th, change = 0, eis5temp;
	unsigned int exponent, eis5lux, rest;

	// start watchdog 2,6 sec
	WDL=0xFF;
	EA=0;
	WDCON=0xE5;
	WFEED1=0xA5;
	WFEED2=0x5A;
	EA=1;

	restart_hw();			// Hardware zurücksetzen
	restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
	ow_read_rom();			// Identifiziere den Temperatursensor für onewire
	P1_2=1;					// debug-led aus

	// feed watchdog
	EA=0;
	WFEED1=0xA5;
	WFEED2=0x5A;
	EA=1;

	do {
		if (eeprom[0x0D]==0xFF && fb_state==0 && !connected) {	// Nur wenn nicht gerade TR1 läuft, also Senden/Empfangen noch nicht abgeschlossen
			if (!editmode) {		// keine Messungen wenn im Editier-Modus
				ET1=0;									// statemachine stoppen
				switch (sequence) {						// Temperatur messen
				case 1:
					if((timer&0x3F) == 0x30) {	// nur alle 10 Sekunden wandeln
						//P1_2 = 1; // debug-led aus
						interrupted=0;
						start_tempconversion();				// Konvertierung starten
						if (!interrupted) sequence=2;
					}
					ET1=1;								// statemachine starten
					break;
				case 2:
					if((timer&0x07) == 0x07) {	// nur ein mal pro Sekunde pollen
						interrupted=0;
						if (ow_read_bit() && !interrupted) sequence=3;		// Konvertierung abgeschlossen
					}
					ET1=1;												// statemachine starten
					break;
				case 3:
					interrupted=0;
					th=read_temp();							// Temperatur einlesen
					ET1=1;									// statemachine starten
					if (!interrupted) {
						// überprüfe ob ow_init() in read_temp() und CRC8 der Daten in Ordnung sind
						// Hinweis: Erste Überprüfung ist nicht unbedingt nötig, da eine Begrenzung statt findet!
						if((th != 0xffff) && (ow_blockCRC8(g_rguch_ds1820, 8) == g_rguch_ds1820[8]))
						{
							temp = th + ((signed char)eeprom[TEMPCORR] * 10); // + Abgleichwert in 0,1 K Schritten einstellbar über ETS

							if (temp != lasttemp) {
								// DAC Stellwert für Anzeige der Temperatur auf dem ERT30 Display ermitteln
								tempx2 = (temp - 850) / 50;
								// Begrenzung auf min oder max Isttemp
								if (tempx2 < EDITMIN) tempx2 = EDITMIN;
								if (tempx2 > EDITMAX) tempx2 = EDITMAX;
								// Stellwert des DAC in Register schreiben
								AD0DAT3 = dactemp[tempx2];

								eis5temp=(temp>>3)&0x07FF;		// durch 8 teilen, da später Exponent 3 dazukommt
								eis5temp=eis5temp+(0x18 << 8);
								if (temp<0) eis5temp+=0x8000;	// Vorzeichen
								write_obj_value(1,eis5temp);

								if(g_uch_ERT_Version == ERT30_24V) schwelle(6); // Temperaturschwellen prüfen und ggf. reagieren

								schwelle(7);	  				// (nur Temp.Schwelle 2 prüfen)
							}
						}
						else
						{
							// switch debug LED on in case that we get an error
							P1_2 = 0; // debug-led an
						}

						sequence=4;
					}
					break;
				case 4:		// Helligkeitswert konvertieren
					interrupted=0;
					Get_ADC(2);		// ADC-Wert holen
					ET1=1;			// statemachine starten
					if (!interrupted) {
						n=0;
						if (HighByte>=112) {
							lux=65535;
						}
						else {
							/*
							while (HighByte >= logtable[n]) n++;

							if (n>1) {
								lux=8;
								lux=lux<<(n-1);	// unterer Wert
							}

							else lux=0;
							*/
							lux=2;
							while (HighByte >= logtable[n]) {
								n++;
								lux=lux*2;
							}
							if (n<=1) lux=0;


							rest=HighByte-logtable[n-1];
							delta=logtable[n]-logtable[n-1];

							/*
							if (n<11) lux+=_divuint(rest<<(n+2),delta);
							else lux+=_divuint(rest<<(n-2),delta)<<4;
							*/
							if (n<11) m=n+2; else m=n-2;
							rest=rest<<m;
							rest=_divuint(rest,delta);
							if (n<11) lux+=rest; else lux+=rest<<4;


							if (n<7) lux+=(_divuint(LowByte<<(n+2),delta)>>8);

						}
						if (lux!=lastlux) {
							exponent=0x3800;	// Exponent 7

							eis5lux=lux>>1;
							eis5lux+=lux>>2;
							eis5lux+=lux>>5;


							while (eis5lux > 0x07FF) {	// Exponent erhöhen falls Mantisse zu groß
								eis5lux=eis5lux>>1;
								exponent+=0x0800;
							}
							eis5lux+=exponent;

							write_obj_value(0,eis5lux);		// Lux Wert im userram speichern
							schwelle(4);					// Helligkeitsschwellen 2 und 3
							schwelle(5);
						}
						schwelle(3);	// Helligkeitsschwelle 1 trotzdem jedes mal weil es auch Nachregelung sein könnte
						sequence=1;
					}
					break;

				}


				// Senden von Temp bei Änderung
				change=((eeprom[TEMPPARAM]&0x70)>>4)*100;	// wenn change=0 wird nicht gesendet
				if(change) {
					if (((temp + change)<= lasttemp) || ((lasttemp + change)<= temp)) {	// bei Änderung um 1-3K
						WRITE_DELAY_RECORD(1,1,1,timer+1)
						lasttemp=temp;
					}
				}

				// Senden von Lux bei Änderung
				if (eeprom[LUXPARAM] & 0x70) {	// wenn Lux senden bei Änderung aktiv
					change=_divuint(lastlux,luxchange[(eeprom[LUXPARAM]&0x70)>>4]);
					if (change==0) change=1;		// mindestens 1 Lux Änderung
					if ((lux>lastlux && (lux-lastlux)>=change) || (lux<lastlux && (lastlux-lux)>=change)) {
						WRITE_DELAY_RECORD(0,1,1,timer+1)
						lastlux=lux;
					}
				}

				schwelle(8);	// Verknüpfungsobjekte
				schwelle(9);
			}

			if(g_uch_ERT_Version != ERT30_24V)
			{
				if (RLY && !lastrly) {	// Schaltausgang ein
					lastrly=1;
					delrec[5].delayactive=3;
					delrec[5].delaystate=1;
					if ((eeprom[0xEA] & 0x20)==0) delrec[5].delayvalue=timer+1;	// bei zyklisch NUR zyklisch, sonst sofort
				}
				if (!RLY && lastrly) {	// Schaltausgang aus
					lastrly=0;
					delrec[5].delayactive=1;
					delrec[5].delaystate=0;
					if ((eeprom[0xEA] & 0x80)==0) delrec[5].delayvalue=timer+1;	// bei zyklisch NUR zyklisch, sonst sofort
				}
			}

			if (!editmode && solltemplcd != solltemplpc) sync();	// falls Solltemperatur im LPC verändert wurde -> LCD einstellen

			if(RTCCON>=0x80) delay_timer();	// Realtime clock Überlauf

		}	// Ende des Bereiches, der nur im run-state laufen darf

		// feed watchdog
		EA=0;
		WFEED1=0xA5;
		WFEED2=0x5A;
		EA=1;

		// TODO Kann bei echtem Hardware-Reset gelöscht werden
		// Layoutanpassung ist nötig (Pin16 von Leiste trennen und Leiste mit Reset-Pin (ISP) verbinden)
		if (!RESET) // Wenn Reset-Taste am ERT30 gedrückt wurde
		{
			// auch Reset am LPC (Software-Reset) auslösen
			AUXR1 |= SRST;

			// restart_app(); // wird bei Reset automatisch zu Beginn der main ausgeführt!
		}

		
		if(tel_arrived) process_tel();			// empfangenes Telegramm abarbeiten


		// Programmiertaster abfragen
		TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
		if(!TASTER){ // Taster gedrückt
			if(tasterpegel<255)	tasterpegel++;
			else{
				if(!tastergetoggelt) userram[0x60]^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
				tastergetoggelt=1;
			}
		}
		else {
			if(tasterpegel>0) tasterpegel--;
			else tastergetoggelt=0;
		}
		TASTER=!(userram[0x60] & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
		if (fb_state==0) for(n=0;n<100;n++) {}	// etwas zeit zum leuchten, wenn Hauptschleife nicht aktiv


	} while(1);
}

