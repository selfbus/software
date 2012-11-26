/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2008-2010 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 *
 *  Dies ist ein EIB-RS232 Interface auf Basis des LPC-Controllerboards.
 *
 *	Die Schnittstelle ist default auf 115.200 Baud,n,8,1 eingestellt.
 *
 *  Versionen:	1.00	erste Version
 * 				1.01	erweitert um 1-Byte Empfang (zB. EIS6)
 * 				1.02	empfangege Telegramme werdwen gespeichert,
 * 						gespeicherte Werte einer GA können mit fbrgaxx/x/xxx ausgelesen werden
 *						mit fbdump wird die interne Tabelle ausgegeben
 *				1.03	EIS5 und EIS15 eingebaut (thx daywalker)
 *						echo eingebaut
 *				1.04	Baudrate einstellbar mit fbsbrXXXXX (XXXXX=9600, 19200, 38400, 57600, 115200)
 *						echo status wird gespeichert
 *						kein Auffüllen mit Nullen mehr bei GA und PA
 *						Status-LEDs für RX und EIB
 *						serielles Empfangen auf Int umgestellt
 *						fbrva für lesen eines GA-Wertes über bus
 * 				2.00	Umbau auf die minilib.
 * 						EIS2 zugefügt
 * 				2.01	bug in minilib bezüglich fbrva behoben. 
 * 						EIS3/EIS4  TIME bzw DATE zugefügt.
 */


#include <P89LPC922.h>
#include "../com/fb_rs232.h"
#include "../lib_LPC922_mini/fb_lpc922_mini.h"

#include "fb_app_rs.h"
#include"../com/watchdog.h"
// kubi-----

__bit filtermode,write_ok;
__bit rsin_busy;
void main(void)
{
	unsigned char n;//, value_pos;
	__bit busy=0;
	unsigned int value=0;
	unsigned int baud_tmp;


	restart_hw();			// Hardware zurücksetzen
	rs_init(baud);			// serielle Schnittstelle initialisieren, muss hier sein
							// weil etwas Zeit vergehen muss bis erstmals gesendet werden kann
//	restart_prot();			// Protokoll-relevante Parameter zurücksetzen
	restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen

	RXLED=1;
	EIBLED=1;
	ledcount=0xff;
	eibledcount=0;
	rxledcount=0;
	rsinpos=0;

	rs_send_s("Kubi's RS-interface V2.01 ");
	if (baud==96 || baud==192 || baud==384 || baud==576) rs_send_dec(baud);
	else rs_send_s("1152");
	rs_send_s("00 Baud.\n");
	watchdog_init();
	watchdog_start();

	if(fm){
		filtermode=1;
		rs_send_s("filtered\n");
	}
	else filtermode=0;

	do  {
		watchdog_feed();
		ledcount--;
		if(!ledcount){
			if(!eibledcount)EIBLED=1;
			else {
				eibledcount--;
				EIBLED=0;
			}
			if(!rxledcount)RXLED=1;
			else {
				rxledcount--;
				RXLED=0;
			}
		}
		if(rsin[rsinpos-1]==0x0A) rsinpos--;	// ggf. LF entfernen
		if(rsinpos>0 && rsin[rsinpos-1]==0x0D&& !busy)	// CR empfangen
		{
			rxledcount=0xff;// * RXLED lang einschalten
			if(echo) rs_send(0x0A);
			
			if (rsin[0]=='f' && rsin[1]=='b') {	// Magic-word 'fb' empfangen
				if(rsin[2]=='s') {		// s=senden oder setzen
					// EIS 1
					if(rsin[3]=='0' && rsin[4]=='1' && rsin[rsinpos-3]=='=' && (rsin[rsinpos-2]=='0' || rsin[rsinpos-2]=='1')) {
						send_obj_value(1);
						busy=1;
					}
					
					// EIS 2 Dimmer, motion control
					if(rsin[3]=='0' && rsin[4]=='2' && rsin[rsinpos-4]=='=') {
						send_obj_value(2);
						busy=1;
					}

					// EIS 3 senden Zeit
					if(rsin[3]=='0' && rsin[4]=='3') {
						send_obj_value(3);
						busy=1;
					}
					// EIS 4 senden Datum
					if(rsin[3]=='0' && rsin[4]=='4') {
						send_obj_value(4);
						busy=1;
					}
					// EIS 5 senden Mantisse+exponent 
					if(rsin[3]=='0' && rsin[4]=='5') {
						send_obj_value(5);
						busy=1;
					}

					// EIS 6 senden 8 Bit Wert
						if(rsin[3]=='0' && rsin[4]=='6') {
						send_obj_value(6);
						busy=1;
					}

					// EIS 15 senden, wird nicht im Speicher abgelegt
					if(rsin[3]=='1' && rsin[4]=='5') {
						send_obj_value(15);
						busy=1;
					}
					// Filteradresse speichern und Filter-mode einschalten
					if(rsin[3]=='f' && rsin[4]=='a'){
						set_filtermode('1');
						save_ga(convert_adr(6),0);
						send_ok;//rs_send_s("OK\n");
					}

					// phys. Adresse des Adapters setzen (fbspaX.X.X)
					if(rsin[3]=='p' && rsin[4]=='a')
					{
						pa_tmp=convert_adr(5);
						write_ok=0;
						while (!write_ok) {
							START_WRITECYCLE
							FMADRH = 0x1C;
							FMADRL = 0xFB;
							FMDATA = pa_tmp>>8;
							FMDATA = pa_tmp;
							STOP_WRITECYCLE
							if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
						}
						send_ok();//rs_send_s("OK\n");
					}

					// Baudrate setzen mit fbsbrXXXXX
					if(rsin[3]=='b' && rsin[4]=='r') {
						baud_tmp=0;
						if(rsinpos>9 && rsin[rsinpos-3]=='0' && rsin[rsinpos-2]=='0') {
							for(n=5;n<rsinpos-3;n++) {
								baud_tmp*=10;
								baud_tmp+=rsin[n]-48;
							}
						}
						if (baud_tmp==96 || baud_tmp==192 || baud_tmp==384 || baud_tmp==576 || baud_tmp==1152) {
							send_ok();//rs_send_s("OK\n");
							write_ok=0;
							while (!write_ok) {
								START_WRITECYCLE
								FMADRH = 0x1C;
								FMADRL = 0xFE;
								FMDATA = baud_tmp;		// LSB
								FMDATA = baud_tmp>>8;	// MSB
								STOP_WRITECYCLE
								if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
							}
							while(!TI);
							rs_init(baud_tmp);
						}
						else {
							rs_send_s("error: unknown baudrate!\n");
						}
					}


				}	// Ende senden/setzen


				if(rsin[2]=='r') {	// r=read

					// physikalische Adresse des Adaptrs lesen (fbrpa)
					if(rsin[3]=='p' && rsin[4]=='a')
					{
						rs_send_dec(pa_h>>4);
						rs_send('.');
						rs_send_dec(pa_h&0x0F);
						rs_send('.');
						rs_send_dec(pa_l);
						rs_send(0x0D);
						rs_send(0x0A);
					}

					// gespeicherten Wert einer Gruppen-Adresse lesen (fbrgax/x/x)
					if(rsin[3]=='g' && rsin[4]=='a') {
						groupadr=convert_adr(5);
						n=0;
						value=0xFFFF;
						do {								// Wert der GA aus Flash lesen
							if(ga_db[n].ga==groupadr) {
								value=ga_db[n].val;
								n=255;
							}
							n++;
						}while (n>0);
						rs_send_dec(value);
						rs_send(13);
						rs_send(10);
					}

					// Wert einer Gruppen-Adresse über Bus lesen (fbrva/x/x/x)
					if(rsin[3]=='v' && rsin[4]=='a') {
						send_obj_value(16);
						busy=1;
					}
				}	// ende read
				if(rsin[2]=='k'&& rsin[3]=='a'){// kill all
					set_filtermode('0');
					n=0;
					do {								// GA Tabelle löschen
						write_ok=0; 
						while (!write_ok) {
							START_WRITECYCLE
							FMADRH = 0x1D;//(n >> 6) + 0x1D;
							FMADRL = n*4;//((n & 0x3F) * 4);
							FMDATA=0xFF;					// High Byte GA schreiben
							FMDATA=0xFF;					// Low Byte GA schreiben
							FMDATA=0xFF;					// Wert
							FMDATA=0xFF;
							STOP_WRITECYCLE
							if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
						}
						n++;
					}while(n<=62);
					send_ok();//rs_send_s("OK\n");
				}
				if(rsin[2]=='d' && rsin[3]=='u'  && rsinpos==7) {
					n=0;
					while(n<=61) {
						rs_send_hex(n);
						rs_send(':');
						rs_send(' ');
						rs_send_hex_i(ga_db[n].ga);
						rs_send(' ');
						rs_send_hex_i(ga_db[n].val);
						rs_send(13);
						rs_send(10);
						n++;
					}
				}

				// GA-Tabelle ausgeben
				if(rsin[2]=='l' && rsin[3]=='i'  && rsinpos==7) {
					n=0;
					while(n<=61&& ga_db[n].ga<0xFFFF) {
						rs_send_dec(((ga_db[n].ga)>>11)&0x0F);
						rs_send('/');
						rs_send_dec(((ga_db[n].ga)>>8)&0x07);
						rs_send('/');
						rs_send_dec((ga_db[n].ga)&0xFF);
						rs_send_s("= hex");
						rs_send_hex_i(ga_db[n].val);
						rs_send_s(" dec ");
						rs_send_dec(ga_db[n].val);
						rs_send(13);
						rs_send(10);
						n++;
					}
					send_ok();//rs_send_s("OK\n");
				}
				if(rsin[2]=='f'&& rsin[3]=='m'){// filter mode 1/0
					set_filtermode(rsin[5]);
					send_ok();//rs_send_s("OK\n");
				}
				// echo an-/ausschalten
				if(rsin[2]=='e' && rsin[3]=='c' && rsin[4]=='h' && rsin[5]=='o' && rsin[6]=='=' && rsinpos==9) {
					write_ok=0;
					while (!write_ok) {
						START_WRITECYCLE
						FMADRH = 0x1C;
						FMADRL = 0xFD;
						if(rsin[7]=='0') FMDATA=0; else FMDATA=1;
						STOP_WRITECYCLE
						if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
					}
					send_ok();
				}

			} // von if(fb...)
			if(!busy){// wenn nichts zu senden ist den Empfangspuffer löschen
				for(n=0;n<30;n++) rsin[n]=0x00;
				rsinpos=0;
			}	
		} // von if(crlf_received)

		if(tel_sent && fb_state==0 && (TH1<0XC0) && (!wait_for_ack))//wenn tele gesendet ist
		{
			process_tel();
			tel_sent=0;
			for(n=0;n<30;n++) rsin[n]=0x00;
			rsinpos=0;
			busy=0;
			send_ok();//rs_send_s("OK\n");
		}
		if (tel_arrived ){//&& fb_state==13 //|| (tel_sent&& (telegramm[0]&0x20))
			process_tel();
		}
	} while(1);
}


