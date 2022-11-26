/*
 *     _____ ________    __________  __  _______    ____        __
 *    / ___// ____/ /   / ____/ __ )/ / / / ___/   / __ \__  __/ /_
 *    \__ \/ __/ / /   / /_  / __  / / / /\__ \   / / / / / / / __/
 *   ___/ / /___/ /___/ __/ / /_/ / /_/ /___/ /  / /_/ / /_/ / /_
 *  /____/_____/_____/_/   /_____/\____//____/   \____/\__,_/\__/
 *
 *  Copyright (c) 2008-2011 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* @file   fb_out.c
* @author Andreas Krebs <kubi@krebsworld.de>
* @date   Tue Jan 01 17:44:47 2009
*
* @brief  The Freebus relais application to switch up to 8 relais \n
* Manufactorer code is 0x04 = Jung \n
* Device type  8 out (2038.10) 0x2060 Ordernumber: 2138.10REG  or \n
*              4 out Devicetype 0x2062 = Jung Aktor 2134.16
*
* \par Changes:
*	2.00	erstes Programm in C f�r Hardware Ver. 2 \n
*	2.01	Schaltverz�gerung hinzugef�gt \n
*	2.02	Restart Fehler behoben \n
*	2.03	Arrays korrigiert \n
*	2.04	Bugs in bin_out behoben		\n
*	3.01	auf 89LPC922 portiert und Bugs behoben		\n
*	3.02	Verz�gerung �ber RTC		behobene Bugs: Verzoegerung geht nach einiger Zeit sehr langsam \n
*	3.03	Timer 0 f�r PWM		\n
*	3.04	RX & TX Timing nochmals optimiert 	behobene Bugs: get_ack funktionierte nicht \n
*	3.05	Zeitschaltfunktion hinzugefuegt \n
*	3.06	�ffner-/Schliesserbetrieb und Verhalten nach Busspannungswiederkehr hinzugef�gt \n
*	3.07	R�ckmeldeobjekte eingefuegt \n
*	3.08	gat Array entfernt und durch gapos_in_gat funktion ersetzt \n
*	3.09	Sperrobjekte hinzugef�gt \n
*	3.10	Fehler in main() behoben (kein delay!)
*	3.11	Fehler bei Zusatzfunktionstyp behoben,  \n
*			Fehler bei Sperrobjekten behoben, \n
*			Relais ziehen jetzt vollen Strom auch bei Busspannungswiederkehr \n
*	3.12	Fehler bei Sperrobjekten und Rueckmeldung im out8 behoben,  \n
*			ausserdem ziehen Relais jetzt auch bei Busspannungswiederkehr mit vollem Strom. \n
*	3.13	Parametrierung f�r alte/neue Relaisschaltung eingef�gt \n
*			Parametrierung f�r 4-port / 8-port hinzugef�gt, damit eine Soft f�r out4 und out8 \n
*			Parametrierung f�r Handbetrieb zunaechst eingef�gt \n
*			read_value_request lief nicht korrekt, behoben \n
*			R�ckmeldung bei Busspannungswiederkehr funktioniert jetzt \n
*			Warteschleife bei Busspannungswiederkehr eingef�gt, wg. stabilitaet
*	3.14	R�ckmelde-Telegramm l�st intern jetzt max. zwei weitere R�ckmeldungen aus
* 	3.15	Fehler mit PWM f�r alte Relais-Schaltung behoben
* 	3.16	Polarit�t der Sperrobjegte eingebaut
* 	3.17	Bug bei Polarit�t der Sperrobjekte behoben
* 	3.18	Progmode l�sst sich jetzt per ets setzen
* 			Interrupts beim retart aus, da sonst ggf. flashen unterbrochen wird wenn int
* 			Ausf�hrungszustand wird in Ger�teinfo angezeigt
* 			NACK wird bei fehlerhaft empfangenem Telegramm gesendet
* 			Handsteuerung l�uft
* 	3.19	Relais bekamen manchmal keinen Vollstrom -> behoben
* 			Interrupts bei progmode flashen in der main() aus
*   3.20	port_schalten() wird jetzt zentral von der main aufgerufen
*   3.30	umgestellt auf statemachine library
*   3.31	ein paar lokale Variablen enfernt um stack zu entlasten
*   3.32	Funktion bei Beginn/Ende der Sperre nur wenn Sperre vorher inaktiv/aktiv war
*   3.33	Auf lib Version 1.22 f.f. angepasst (tel_sent, rtc- und timer-funktion)
*	3.34	Trimfunktion via RS 600bd.(c + - w) version (v) und Type (t) abrufbar.
			progmode(p) relaise toggeln(ziffer 1-8)
*   3.35	Fehler bei R�ckmeldung und bei eeprom flashen behoben, neue LIB
* 	3.36	Umstellung auf lib1.4x.
*   3.37	Handbedienung mit zerodetection integrieren. bug RTC 8ms- 65ms gefixt
* 	3.37fb	Betrifft spi version(feedback). Pulse verl�ngert, R�cklesen eingebaut(kein zerodetect mehr m�glich, Br�cke n�tig!
* 			auf PCB Bot von INT0 an C5 und Pin 9 shiftreg)
* 	3.38	connected timout hinzugef�gt
* 	3.39	LIB 1.55 initiale PA jetzt 15.15.255
* 	3.40    EEPROM Default Werte werden in Release Builds nicht mehr bei jedem Neustart geflasht, LIB 1.56
* 	3.41    Update auf Lib 1.58
* 	3.42    ported to Selfbus Library >1.58
            Selfbus Library >1.58 (commit 04.02.2017 SHA-1: 4eb81d56885c6e13731c78e92206295304953ced "Lib, update gitignore file").
            lib with #define ADC_RESPONSE so will respond to ADCReadRequests from ETS -> faster device info.
            added build-configs for different types
 TODO

* @todo:
	- Prio beim Senden implementieren \n
	- Zwangsstellungsobjekte implementieren \n
*/


#include "fb_app_out.h"
#include "fb_rs232.h"
#include "watchdog.h"

/**
* The start point of the program, init all libraries, start the bus interface, the application
* and check the status of the program button.
*
*
*/
#ifdef MAX_PORTS_4
	#ifdef SPIBISTAB
		#ifdef HAND
			#define TYPE 7
		#else
			#define TYPE 6
		#endif
	#else	// kein SPIBISTAB
		#ifdef HAND
			#define TYPE 5
		#else
			#define TYPE 4
		#endif
	#endif
#else		// MAX_PORTS_8
	#ifdef SPIBISTAB
		#ifdef HAND
			#define TYPE 3
		#else
			#define TYPE 2
		#endif
	#else	// kein SPIBISTAB
		#ifdef HAND
			#define TYPE 1
		#else
			#define TYPE 0
		#endif
	#endif
#endif
#define VERSION 42

unsigned char __at (0x00) RAM[00];

#ifndef DEBUG_MODE
// Wenn Debug aktiv ist werden die Werte in der restart_app() geschrieben damit die Konfiguration nicht
// immer neu geschrieben werden muss. Werte mit * sind obligatorisch!
// Ger�teparameter setzen, diese k�nnen von der ETS �bschrieben werden wenn Schreibschutz nicht aktiv ist!!
static __code unsigned char __at (EEPROM_ADDR + 0x00) option_reg={0xFF};            // Option Register, ETS will write 0xFF
static __code unsigned char __at (EEPROM_ADDR + 0x01) fw_version[2]={TYPE, VERSION};// Man. Data, used for FW Version
static __code unsigned char __at (EEPROM_ADDR + 0x03) manufacturer[2]={0x00,0x04};  // Herstellercode 0x0004 = Jung *
#ifndef MAX_PORTS_4 // 8-fach Aktor
 static __code unsigned char __at (EEPROM_ADDR + 0x05) device_type[2]={0x20,0x60};  // 0x2060 = Jung Aktor 2138.10 #
#else
 static __code unsigned char __at (EEPROM_ADDR + 0x05) device_type[2]={0x20,0x62};  // 0x2062 = Jung Aktor 2134.16 #
#endif
//static __code unsigned char __at (EEPROM_ADDR + 0x07) vd_version={0x01};            // VD Version V0.1 #
//static __code unsigned char __at (EEPROM_ADDR + 0x08) eeprom_chk_limit={0xFE};      // EEPROM Check Limit
//static __code unsigned char __at (EEPROM_ADDR + 0x09) pei_type={0x11};              // Required PEI Type
static __code unsigned char __at (EEPROM_ADDR + 0x0C) port_A_direction={0x00};      // PORT A Direction Bit Setting *
static __code unsigned char __at (EEPROM_ADDR + 0x0D) run_error={0xFB};             // Run Time Error Flags, set when 0
static __code unsigned int  __at (EEPROM_ADDR + 0x17) start_pa={0xFFFF};            // Default PA is 15.15.255 *
#endif



void main(void)
{
	unsigned char timer_precounter=0;

	unsigned char n,cmd,tasterpegel=0;
	signed char cal;
//	unsigned int m;
	static __code signed char __at (0x1BFF) trimsave;
#ifdef zeroswitch
	static __code unsigned char __at (0x1BFE) phisave={16};
#endif
	unsigned char rm_count=0;
	__bit wduf;
	__bit tastergetoggelt=0;
	__bit bus_activ=0;

	wduf=WDCON&0x02;
	restart_hw();							// Hardware zuruecksetzen
// im folgendem wird der watchdof underflow abgefragt und mit gedr�cktem Progtaster
// ein resetten der cal Variable veranlasst um wieder per rs232 trimmen zu k�nnen.
	TASTER=1;
	if(!TASTER && wduf)cal=0;
	else cal=trimsave;
	TASTER=0;
	TRIM = (TRIM+trimsave);
	TRIM &= 0x3F;//oberen 2 bits ausblenden
#ifdef zeroswitch
	if(phisave<=52)	phival=phisave;
	else phival=16;
#endif
	TR0=1;
	if (!wduf){// BUS return verz�gerung nur wenn nicht watchdog underflow
		for (n=0;n<50;n++) {		// Warten bis Bus stabil
			TR0=0;					// Timer 0 anhalten
			TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Ger�te unterschiedlich beginnen zu senden
			TL0=eeprom[ADDRTAB+2];
			TF0=0;					// �berlauf-Flag zur�cksetzen
			TR0=1;					// Timer 0 starten
			while(!TF0);
		}
	}
	WATCHDOG_INIT
	WATCHDOG_START
	restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
	if(!wduf)bus_return();							// Aktionen bei Busspannungswiederkehr

#ifndef DEBUG_MODE
	RS_INIT_600
#else
	RS_INIT_115200
#endif
#ifndef BUS_DOWN
# ifdef HAND
#  ifndef zeroswitch
	SBUF=0x55;
#  endif
# else
	SBUF=0x55;
# endif
#endif

// ################## main loop #########################

	do  {
		WATCHDOG_FEED

		if(APPLICATION_RUN) {	// nur wenn run-mode gesetzt

			if(RTCCON>=0x80){
				RTCCON=0x60;		// RTC Flag l�schen
				RTCH=0x03;			// 0E reload Real Time Clock
				RTCL=0x9A;			// A0 16ms +precounter x4
				RTCCON=0x61;		// RTC  Flag l�schen
#ifdef HAND
				handbedienung();    // alle 16ms
#endif
				timer_precounter++;
				if((timer_precounter&0x03)==3)
				{
					delay_timer();	// timer handler jedes 4. mal--> 64ms
				}
			}
#ifndef zeroswitch
			if(TF0 && (TMOD & 0x0F)==0x01) {	// Vollstrom f�r Relais ausschalten und wieder PWM ein
	#ifndef SPIBISTAB
				TMOD=(TMOD & 0xF0) + 2;			// Timer 0 als PWM
				TAMOD=0x01;
				TH0=DUTY;
	#endif
				TF0=0;
	#ifndef SPIBISTAB
				AUXR1|=0x10;	// PWM von Timer 0 auf Pin ausgeben
	#endif
				PWM=1;			// PWM Pin muss auf 1 gesetzt werden, damit PWM geht !!!
	#ifndef SPIBISTAB
		#ifndef IO_BISTAB
				TR0=1;
		#endif
	#endif

	#ifdef IO_BISTAB
				P0=0;// wenn Bistabile �ber IO diese ausschalten
	#endif
			}
#endif


#ifdef BUS_DOWN
			if(TxD){
				if(bus_activ)bus_down();
			}
			else bus_activ=1;
#endif
			if (portchanged)port_schalten();	// Ausg�nge schalten

			// R�ckmeldungen senden
			if(rm_send) {	// wenn nichts zu senden ist keine Zeit vertr�deln
				if(rm_send & (1<<rm_count)) {
					if(send_obj_value(rm_count + 12)) {	// falls erfolgreich, dann n�chste
						rm_send&=(0xFF-(1<<rm_count));
						rm_count++;
#ifdef MAX_PORTS_8
						rm_count&=0x07;
#else
						rm_count&=0x03;
#endif
					}
				}
				else {	// RM sollte nicht gesendet werden
					rm_count++;
#ifdef MAX_PORTS_8
						rm_count&=0x07;
#else
						rm_count&=0x03;
#endif
				}
			}
			else rm_count=0;	// Immer mal wieder auf Null setzen, damit Reihenfolge von 1 bis 8 geht


			// portbuffer flashen, Abbruch durch ext-int wird akzeptiert und sp�ter neu probiert
			// T1-int wird solange abgeschaltet,

			if (fb_state==0 && (TH1<0XC0) && (!wait_for_ack)&& portbuffer!=eeprom[PORTSAVE]) {
				START_WRITECYCLE;
				WRITE_BYTE(0x01,PORTSAVE,portbuffer);
				STOP_WRITECYCLE;
			}

		}// end if(APPLICATION RUN..
		else if (RTCCON>=0x80 && connected)	// Realtime clock ueberlauf
			{			// wenn connected den timeout f�r Unicast connect behandeln
			RTCCON=0x61;// RTC flag l�schen
			if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
				{
				connected_timeout ++;
				}
				else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gel�scht
			}



		// Telegrammverarbeitung..
		if (tel_arrived || tel_sent) {
			tel_arrived=0;
			tel_sent=0;
			process_tel();
		}
		else {
			for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
		}
		cmd;
#ifndef BUS_DOWN

#ifndef DEBUG_MODE
		// Eingehendes Terminal Kommando verarbeiten...
		if (RI){
			RI=0;
			cmd=SBUF;

			if(cmd=='c'){
				while(!TI);
				TI=0;
				SBUF=0x55;
			}
			if(cmd=='+'){
				TRIM--;
				cal--;
			}
			if(cmd=='-'){
				TRIM++;
				cal++;
			}
			if(cmd=='w'){
				EA=0;
				START_WRITECYCLE;	//cal an 0x1bff schreiben
#ifdef zeroswitch
				FMADRH= 0x1B;
				FMADRL= 0xFE;
				FMDATA= phival;
#else
				FMADRH= 0x1B;
				FMADRL= 0xFF;
#endif
				FMDATA=	cal;
				STOP_WRITECYCLE;
				EA=1;				//int wieder freigeben
			}
			if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
#ifdef zeroswitch
			if(cmd=='<'){
				if (phival){
					phival--;
					TI=0;
					SBUF=phival;
				}
			}
			if(cmd=='>'){
				if(phival<51){
					phival++;	//
					TI=0;
					SBUF=phival;
				}
			}
#endif
			if(cmd=='v'){
				while(!TI);
				TI=0;
				SBUF=VERSION;
			}
			if(cmd=='t'){
				while(!TI);
				TI=0;
				SBUF=TYPE;
			}
#ifdef MAX_PORTS_8
			if(cmd >=49 && cmd <= 56){
				portbuffer = portbuffer ^ (0x01<< (cmd-49));
				port_schalten();
			}
#else
			if(cmd >=49 && cmd <= 52){
				portbuffer = portbuffer ^ (0x01<< (cmd-49));
				port_schalten();
			}
#endif
		}//end if(RI...

#else //ifndef DEBUG_MODE
    DEBUGPOINT;
#endif
#endif // ifndef BUS_DOWN
		TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
		if(!TASTER){ // Taster gedr�ckt
			if(tasterpegel<255)	tasterpegel++;
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
