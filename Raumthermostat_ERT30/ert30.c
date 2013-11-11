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
*
* todo:	2-fach Tastendruck für neue Version
*/

#define LPC936




#include <P89LPC935_6.h>

#include "../lib_lpc936/fb_lpc936.h"
#include "app_ert30.h"
#include "../../89LPC922/com/onewire.h"
#include "../../89LPC922/com/adc_922.h"




unsigned int timer;
unsigned int lastlux;
int lasttemp;
unsigned char tasterpegel=0;
__bit tastergetoggelt=0;

const unsigned char logtable[] = {0,9,17,27,40,53,66,79,88,96,101,106,109,112,255};
const unsigned char luxchange[] = {100,20,10,5,3};

// DAC Werte in 0,5° Schritten von 9,0° bis 40,0°
const unsigned char dactemp[] = {0,4, 	  8, 12, 15, 19, 22, 25, 28, 32, 36, 39,
										 43, 47, 51, 55, 59, 63, 67, 71, 77, 81,
										 85, 90, 94, 99,103,108,113,118,122,127,
										131,136,141,145,149,154,159,164,169,174,
										179,183,188,193,197,201,205,209,213,217,
										220,224,227,231,234,237,240,243,246,250,  253};


void main(void)
{ 
	unsigned char n,m,delta, tempx2;
	int th, change=0, eis5temp;
	unsigned int exponent, eis5lux,rest;

	// start watchdog 2,6 sec
	WDL=0xFF;
	EA=0;
	WDCON=0xE5;
	WFEED1=0xA5;
	WFEED2=0x5A;
	EA=1;


	restart_hw();			// Hardware zurücksetzen
	restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
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
						temp=th;

						// Anzeige der Temperatur auf dem ERT30 Display
						tempx2=_divuint((temp-25),50);

						if (tempx2<18) tempx2=18;
						if (tempx2>80) tempx2=80;
						tempx2-=18;	// Berechnung des Index nicht in den [ ] durchführen!!! Kompilerfehler !!!
						AD0DAT3=dactemp[tempx2]+eeprom[TEMPCORR];	// + Abgleichwert

						if (temp != lasttemp) {
							eis5temp=(temp>>3)&0x07FF;		// durch 8 teilen, da später Exponent 3 dazukommt
							eis5temp=eis5temp+(0x18 << 8);
							if (temp<0) eis5temp+=0x8000;	// Vorzeichen
							write_obj_value(1,eis5temp);
	#ifdef V24
							schwelle(6);					// Temperaturschwellen prüfen und ggf. reagieren
	#endif
							schwelle(7);	  				// (nur Temp.Schwelle 2 prüfen)
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


#ifndef V24
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
#endif
			if (!editmode && solltemplcd != solltemplpc) sync();	// falls Solltemperatur im LPC verändert wurde -> LCD einstellen

			if (!RESET) restart_app();		// wenn Reset-Taste am ERT30 gedrückt wurde

			if(RTCCON>=0x80) delay_timer();	// Realtime clock Überlauf

		}	// Ende des Bereiches, der nur im run-state laufen darf

		// feed watchdog
		EA=0;
		WFEED1=0xA5;
		WFEED2=0x5A;
		EA=1;

		
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

