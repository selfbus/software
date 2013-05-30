/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2010 Jan Wegner
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#include <P89LPC922.h>
#include "../com/fb_hal_lpc.h"
#include "../com/fb_prot.h"
#include "4temp_delay.h"
#include "fb_app_4temp.h"
#include "4temp_onewire.h"



long timer;			// Timer für Schaltverzögerungen, wird alle 130us hochgezählt
bit delay_toggle;	// um nur jedes 2. Mal die delay routine auszuführen
int temp[4],lasttemp[4],lastsendtemp[4];	// Temperaturwerte speichern

//unsigned char kanal;
unsigned char zyk_senden_basis;
unsigned char sequence;
unsigned char sende_sofort_bus_return;


/**
* Empfangenes write_value_request Telegramm verarbeiten
*	unbenutzt, Objekte können nicht geschrieben werden
*
* \param  void
*
* @return void
*/
void write_value_req(void)
{
	// nix zu schreiben
}



/**
* Empfangenes read_value_request Telegramm verarbeiten
*
* \param  void
*
* @return void
*/
void read_value_req(void)	// Empfangenes read_value_request Telegramm verarbeiten
{
	unsigned char objno, objflags;
	unsigned int objvalue;

	objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
	if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
		send_ack();

		// Messwerte Objekte 0,2,4,6
		if((objno&0x01)==0)
		{
			objvalue=sendewert(objno);
		}
		// Grenzwerte Objekte 1,3,5,7
		else
		{
			objvalue=read_obj_value(objno);		// Objektwert aus USER-RAM lesen (Standard Einstellung)
		}

		objflags=read_objflags(objno);		// Objekt Flags lesen
		// Objekt lesen, nur wenn read enable gesetzt (Bit3) und Kommunikation zulaessig (Bit2)
		if((objflags&0x0C)==0x0C) send_value(0,objno,objvalue);
    }
}



/**
* bringt den Messwert ins Sendeformat EIS 5 oder EIS 6
*
* \param  objno
*
* @return sendewert
*/
unsigned int sendewert(unsigned char objno)
{
	int eis5temp, eis6temp;
	unsigned char objno_help, n;

	objno_help=objno>>1;

	eis6temp=-5500;
	n=255;

	// Sendeformat EIS 6
	if ((eeprom[0xA4]>>4)&(1<<objno_help))
	{
		while(eis6temp<temp[objno])
		{
			n++;
			eis6temp+=70;
			if (n&0x01) eis6temp++;
		}
		return n;
	}

	// Sendeformat EIS 5
	else
	{
		eis5temp=(temp[objno_help]>>3)&0x07FF;			// durch 8 teilen, da später Exponent 3 dazukommt
		eis5temp=eis5temp+(0x18 << 8);
		if (temp[objno_help]<0) eis5temp+=0x8000;		// Vorzeichen

		return eis5temp;
	}
}




/**
* sucht Gruppenadresse für das Objekt objno uns sendet ein EIS Telegramm
*
* \param  type
* \param  objno
* \param  sval
*
* @return void
*/
void send_value(unsigned char type, unsigned char objno, unsigned int sval)
{
	unsigned int ga;
	unsigned char objtype;

	if (((eeprom[0x6B+((objno>>2)&0x01)])<<(4*((objno>>1)&0x01))&0xF0)!=0x70)
	{
		ga=find_ga(objno);					// wenn keine Gruppenadresse hintrlegt nix tun
		if (ga!=0)
		{
			telegramm[0]=0xBC;
			telegramm[1]=eeprom[ADDRTAB+1];
			telegramm[2]=eeprom[ADDRTAB+2];
			telegramm[3]=ga>>8;
			telegramm[4]=ga;
			telegramm[6]=0x00;

			telegramm[7]=0x80;					// write_value_request Telegramm (nicht angefordert)
			if (type==0) telegramm[7]=0x40;		// read_value_response Telegramm (angefordert)


			objtype=read_obj_type(objno);

			if(objtype<=5)			// Objekttyp, 1-6 Bit
			{
				telegramm[5]=0xE1;
				telegramm[7]+=sval;
			}
			else if(objtype<=7)		// Objekttyp, 7-8 Bit
			{
				telegramm[5]=0xE2;
				telegramm[8]=sval;
			}
			else if(objtype<=8)		// Objekttyp, 16 Bit
			{
				telegramm[5]=0xE3;
				telegramm[8]=sval>>8;
				telegramm[9]=sval;
			}

			EX1=0;
			send_telegramm();
			IE1=0;
			EX1=1;

		}
	}
}


/**
* Senden bei Grenzwertüber- bzw. unterschreitung
*	überprüft die Grenzwerte
*	schreibt die Objektwerte und sendet Telegramm
*
* \param  eingang
*
* @return void
*/
void grenzwert (unsigned char eingang)
{
	int schwelle1, schwelle2;
	unsigned char reaktion, wert, objno;

	objno=(eingang<<1)+1;

	reaktion=eeprom[0x6D+eingang];

	schwelle1=-5500+180*(eeprom[0x71+eingang]&0x7F);
	schwelle2=-5500+180*(eeprom[0x75+eingang]&0x7F);


	//steigend
	if ((lasttemp[eingang]<schwelle2 || sende_sofort_bus_return) && temp[eingang]>schwelle2)	// GW 2 überschritten
	{
		if (reaktion&0x0C)
		{
			wert=(reaktion>>2)&0x01;
			write_obj_value(objno,wert);
			if(!sende_sofort_bus_return)
			{
				send_value(1,objno,wert);
			}
		}
	}

	if ((lasttemp[eingang]<schwelle1 || sende_sofort_bus_return) && temp[eingang]>schwelle1)	// GW 1 überschritten
	{
		if (reaktion&0xC0)
		{
			wert=(reaktion>>6)&0x01;
			write_obj_value(objno,wert);
			if(!sende_sofort_bus_return)
			{
				send_value(1,objno,wert);
			}
		}
	}


	//fallend
	if ((lasttemp[eingang]>schwelle1 || sende_sofort_bus_return) && temp[eingang]<schwelle1)	// GW 1 unterschritten
	{
		if (reaktion&0x30)
		{
			wert=(reaktion>>4)&0x01;
			write_obj_value(objno,wert);
			if(!sende_sofort_bus_return)
			{
				send_value(1,objno,wert);
			}
		}
	}

	if ((lasttemp[eingang]>schwelle2 || sende_sofort_bus_return) && temp[eingang]<schwelle2)	// GW 2 unterschritten
	{
		if (reaktion&0x03)
		{
			wert=reaktion&0x01;
			write_obj_value(objno,wert);
			if(!sende_sofort_bus_return)
			{
				send_value(1,objno,wert);
			}
		}
	}


	lasttemp[eingang]=temp[eingang];
}



/**
* Senden bei Messwertdifferenz
*	überprüft die Messwertdifferenz
*	schreibt die Verzögerungszeit ins delrec
*
* \param  eingang
*
* @return void
*/
void messwert (unsigned char eingang)
{
	unsigned int mess_diff;
	int mess_change;
	unsigned long zyk_val;

	unsigned char zykval_help;

	if (eeprom[0x65+eingang]&0x80)
	{
		mess_diff=180*(eeprom[0x65+eingang]&0x7F);

		if (temp[eingang]<=lastsendtemp[eingang])
		{
			mess_change=lastsendtemp[eingang]-temp[eingang];
		}
		else
		{
			mess_change=temp[eingang]-lastsendtemp[eingang];
		}

//		if (mess_change<0) mess_change=0-mess_change;

		if(mess_change>mess_diff)
		{
			if (delrec[(eingang+4)*4]==0)
			{
				zykval_help=(eeprom[0x69+(eingang>>1)])>>(4*(!(eingang&0x01)))&0x0F;

				if (zykval_help<=5)
				{
					zyk_val=zykval_help*8;
				}
				else if (zykval_help<=10)
				{
					zyk_val=(zykval_help-5)*77;
				}
				else
				{
					zyk_val=(zykval_help-10)*462;
				}

				zyk_val=zyk_val+timer+1;

				write_delay_record((eingang+4),1,zyk_val);
			}
		}
		else
		{
			clear_delay_record(eingang+4);
		}
	}
}




/**
* zählt alle 130ms die Variable Timer hoch und prüft Queue
*	Zyklisch senden Messwerte und Grenzwerte
*	Verzögerungszeit senden Messwerte
*	Sendeverzögerung Messwerte bei Busspannungswiederkehr
*
* \param  void
*
* @return void
*/
void delay_timer(void)
{
	unsigned char objno,delay_state,zyk_faktor,objno_help,n;
	unsigned long delval,zyk_val;


	RTCCON=0x60;		// RTC anhalten und Flag löschen
	RTCH=0x0E;			// reload Real Time Clock
	RTCL=0xA0;
	objno=0;

	if (delay_toggle) {	// RTC läuft auf 65ms, daher nur jedes 2. mal timer erhöhen
		timer++;
		timer&=0x00FFFFFF;

		for(objno=0;objno<=8;objno++) {
			delay_state=delrec[objno*4];
			if(delay_state!=0x00) {			// 0x00 = delay Eintrag ist leer
				delval=delrec[objno*4+1];
				delval=(delval<<8)+delrec[objno*4+2];
				delval=(delval<<8)+delrec[objno*4+3];
				if(delval==timer) {

					if (objno<=3)	// Zyklisch Senden Eingänge Messwert und Grenzwert
					{
						zyk_faktor=eeprom[0x61+objno]&0x7F;

						zyk_val=(zyk_faktor<<zyk_senden_basis);

						zyk_val=zyk_val+timer;

						write_delay_record(objno,delay_state,zyk_val);

						if ((delay_state&0x80) && (sende_sofort_bus_return==0))	// Messwert zyk senden
						{
							send_value(1,(objno<<1),sendewert(objno<<1));
							if (delay_state&0x01)	// Grenzwert zyk senden
							{
								send_value(1,((objno<<1)+1),read_obj_value((objno<<1)+1));
							}
						}
					}
					else if (objno<=7)	// Sendeverzögerung Eingänge Messwerte
					{
						objno_help=objno-4;

						send_value(1,(objno_help<<1),sendewert(objno_help<<1));
						lastsendtemp[objno_help]=temp[objno_help];

						clear_delay_record(objno);
					}

					else	// Sendeverzögerung Eingänge Messwerte Busspannungswiederkehr
					{
						for (n=0;n<=6;n=n+2)
						{
							if (delay_state&(0x40>>n))
							{
								send_value(1,n,sendewert(n));
							}
						}
						delrec[8*4]=0;
					}
				}
			}
		}
	}
	RTCCON=0x61;		// RTC starten
	delay_toggle=!delay_toggle;
}



/**
* Verhalten bei Busspannungswiederkehr
*	sofortiges Senden der Messwerte und Grenzwerte bei Busspannungswiederkehr
*
* \param  void
*
* @return void
*/
void bus_return(void)
{
	unsigned char kanal_help;

	kanal_help=kanal<<1;

	if (sende_sofort_bus_return&(0x80>>kanal_help))
	{
		send_value(1,(kanal_help),sendewert(kanal_help));
		sende_sofort_bus_return&=0xFF-(0x80>>kanal_help);
	}

	if (sende_sofort_bus_return&(0x40>>kanal_help))
	{
		send_value(1,(kanal_help+1),read_obj_value(kanal_help+1));
		sende_sofort_bus_return&=0xFF-(0x40>>kanal_help);
	}


}



/**
* Alle Applikations-Parameter zurücksetzen
*
* \param  void
*
* @return void
*/
void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
{

	unsigned char zyk_funk, n;
	unsigned int sendeverzoegerung;

	RTCCON=0x60;				// RTC anhalten und Flag löschen
	RTCH=0x0E;					// reload Real Time Clock
	RTCL=0xA0;

	// Port Konfigurieren
	P0M1= 0x00;
	P0M2= 0x00;	// alle auf quasi bidirektional

	// Zeit für Sendeverzögerung bei Busspannungswiederkehr ins delrec schreiben
	sendeverzoegerung=eeprom[0xA0]<<3;
	delrec[8*4+2]=sendeverzoegerung>>8;
	delrec[8*4+3]=sendeverzoegerung;

	// Verhalten bei Busspannungswiederkehr Messwewrte
	sende_sofort_bus_return=eeprom[0x79]&0xAA;
	delrec[8*4]=eeprom[0x79]&0x55;

	// zyk Senden Basis für alle Eingänge
	zyk_senden_basis=eeprom[0x060]&0x0F;

	// Schleife für alle Eingänge
	for(n=0;n<=3;n++)
	{
		// Verhalten bei Busspannungswiederkehr Grenzwerte
		sende_sofort_bus_return|=(eeprom[0x71+n]&0x80)>>(2*n+1);

		// Bedingungen für zyklisch senden ins delrec schreiben
		zyk_funk=(eeprom[0x61+n]&0x80);
		zyk_funk=zyk_funk+((eeprom[0x75+n]>>7)&0x01);
//		delrec[n*4]=zyk_funk;
//		delrec[n*4+3]=0x05;

		write_delay_record(n,zyk_funk,0x01);


		// Werte zurücksetzen
		temp[n]=0;
		lasttemp[n]=0;
		lastsendtemp[n]=0;
	}

	sequence=1;
	kanal=0;

	EA=0;						// Interrupts sperren, damit flashen nicht unterbrochen wird
	START_WRITECYCLE
	WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0008 = GIRA
	WRITE_BYTE(0x01,0x04,0x08)
	WRITE_BYTE(0x01,0x05,0xB0)	// Devicetype 0xB003 = GIRA Analogeingang 960 00
	WRITE_BYTE(0x01,0x06,0x03)
	WRITE_BYTE(0x01,0x07,0x01)	// Versionnumber of application programm
	WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	WRITE_BYTE(0x01,0x12,0x3A)	// COMMSTAB Pointer
	STOP_WRITECYCLE
	START_WRITECYCLE;
	WRITE_BYTE(0x00,0x60,0x2E);	// system state: all layers active (run), not in prog mode
	STOP_WRITECYCLE;
	EA=1;						// Interrupts freigeben

	timer=0;					// Timer-Variable, wird alle 130ms inkrementiert
	RTCCON=0x61;				// RTC starten

}
