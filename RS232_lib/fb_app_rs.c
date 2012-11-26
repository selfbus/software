/*
 *   
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
 */


#include <P89LPC922.h>
#include "../lib_LPC922_mini/fb_lpc922_mini.h"
#include "fb_app_rs.h"
#include "../com/fb_rs232.h"


unsigned char rsin[30];		// seriell empfangener string
unsigned char rsinpos;
unsigned int groupadr=0,pa_tmp;
unsigned char ledcount;
unsigned char eibledcount;
unsigned char rxledcount;
__code unsigned char __at 0x1CFA fm;
__code unsigned char __at 0x1CFB pa_h;
__code unsigned char __at 0x1CFC pa_l;

__code unsigned char __at 0x1CFD echo;
__code unsigned int __at 0x1CFE baud=192;
__code struct ga_record __at 0x1D00 ga_db[62];
//const unsigned char __at 1D0 [62*4]={0xFF}; 

/* Flash Belegung:
 * 1D00 bis 1Dxx    62 mal GA und 2-Byte Wert
 *
 * 1DFA				filter Funktion ein/aus
 * 1DFB				lokales Echo an/aus
 * 1DFC bis 1DFD	eigene PA
 * 1DFE bis 1DFF	Baudrate
 */



__bit build_tel(unsigned char objno)
{
	__bit build_ok=1;
	unsigned int value, value_pos;
	int eis5temp, d, exp;
	unsigned long temp;

//	unsigned int ga=0;
//	unsigned char objtype=0;
	unsigned char day=0;//, length;
	//__bit type,
	__bit repeatflag;

	repeatflag=objno&0x20;
	groupadr=convert_adr(6);
	value_pos=equal_pos()+1;
	switch (objno)// entspricht in der rs soft dem eis type.
	{
//	case 0:	// kein Datenpunkt, binär senden
//	break;

	case 1:// EIS1
		tel_header(groupadr, 1);
		if (rsin[rsinpos-2]=='1') value=1;
		else value=0;
		telegramm[7]=0x80+value;

		break;	
	case 2:// EIS2
		tel_header(groupadr, 1);
		if (rsin[rsinpos-3]=='u') value=0x88;
		else value=0x80;
		value+=((rsin[rsinpos-2]-48));
		telegramm[7]=value&0xFF;
	break;	
	case 3:// EIS3
		day=(rsin[value_pos]-48)<<5;
		value_pos+=2;
	case 4:// EIS4	
		tel_header(groupadr, 4);
		telegramm[7]=0x80;
		telegramm[8]=((rsin[value_pos]-48)*10)+(rsin[value_pos+1]-48)+day;
		telegramm[9]=((rsin[value_pos+3]-48)*10)+(rsin[value_pos+4]-48);
		telegramm[10]=((rsin[value_pos+6]-48)*10)+(rsin[value_pos+7]-48);
	break;
/*	case 4:// EIS4
		tel_header(groupadr, 4);
		if (rsin[rsinpos-3]=='u') value=0x88;
		else value=0x80;
		value+=((rsin[rsinpos-2]-48));
		telegramm[7]=value&0xFF;
	break;	
*/	case 5://
		tel_header(groupadr, 3);
		telegramm[7]=0x80;

		if(rsin[value_pos]<48 || rsin[value_pos]>57) d=value_pos+1; else d=value_pos;	// falls Vorzeichen
					//ascii Zeichen in Int wandeln, Anfang:

		temp=0;
		while (d<(rsinpos-1) && rsin[d]!=0x2E && rsin[d]!=0x2C) {
			temp=temp*10;
			temp=temp+(rsin[d]-48);
			d++;
		}
		d++;
		temp=temp*10;
		if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//erste Stelle nach dem Komma
		d++;
		temp=temp*10;
		if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//zweite Stelle nach dem Komma gen
		//ascii Zeichen in Int wandeln, Ende
		exp=(0x0000);
		while(temp > 0x07FF) {
			temp=temp>>1;
			exp=exp + (0x800);
		}
		if (rsin[value_pos]=='-') {
			temp=(0x7FF-temp)+1;
			eis5temp=temp+exp;
			eis5temp+=0x8000;
		}
		else eis5temp=temp+exp;
		telegramm[8]=eis5temp>>8;
		telegramm[9]=eis5temp;		
		break;
	case 6:// EIS 6
		tel_header(groupadr, 2);
		telegramm[7]=0x80;

		value=0;
		d=value_pos;
		while(d<(rsinpos-1)) {
			value*=10;
			value+=rsin[d]-48;
			d++;
		}
		//telegramm[8]=((rsin[15]-48)*100) + ((rsin[16]-48)*10) + (rsin[17]-48);
		telegramm[8]=value;
		break;
	case 15: // EIS 15
		tel_header(groupadr,15); //15
		telegramm[7]=0x80;
		for(d=8;d<22;d++){
			if((value_pos+d-8)>=(rsinpos-1)) telegramm[d]=0x00;
			else telegramm[d]=rsin[(value_pos+d-8)];
		}
		break;
	case 16:
		groupadr=convert_adr(5);
		tel_header(groupadr, 1);
		telegramm[7]=0x00;
		break;
	}
	if(repeatflag) telegramm[0]&=0xDF;		// Wiederholungsbit löschen für Wiederholtelegramm
	return(build_ok);
}

// ermittelt die Position einer GA in der GA-Tabelle, 0xFF falls nicht gefunden

unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
{
	unsigned char ga_position,n;
	
	ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
	n=0;
		while(ga_db[n].ga==((gah<<8)+gal) && n<=62){
			n++;
			}
		if(n<62|| !filtermode)ga_position=n;// wenn GA gefunden oder kein filtermode aktiv ist... 
  return (ga_position);						// wird geackt
}




// Empfangenes Telegramm verarbeiten
void write_value_req(void)
{
	unsigned char length,n=0;
	unsigned int ga;
	unsigned int val=0;

	eibledcount=0xff;// EIBLED lang einschalten
	length=telegramm[5]&0x0F;
	if (length<=15 )	{// wenn ein Telegramm reinkommt..
		if(length==1)val=telegramm[7] & 0x3F;
		if(length==2)val=telegramm[8] ;
		if(length==3)val=256*telegramm[8]+telegramm[9];
		ga=256*telegramm[3]+telegramm[4];
		if(filtermode){
			for(n=0;n<=61;n++) {						// Wert der GA aus Flash lesen
				if(ga_db[n].ga==ga) {
					n=63;
				}
			}
		}
		if ((n>=63 || !filtermode)) {
			if(!tel_sent){
				rs_send_dec(telegramm[3]>>3);			// GA senden
				rs_send('/');
				rs_send_dec(telegramm[3] & 0x07);
				rs_send('/');
				rs_send_dec(telegramm[4]);
				rs_send('=');
				if (length<=3)	rs_send_dec(val);		// Value senden
				if(length==4){
					n='.';  
					if(telegramm[8]>31){// time
						rs_send((telegramm[8]>>5)+48);
						rs_send(',');
						n=':';
					}
					rs_send_dec(telegramm[8]&0x1F);
					rs_send(n);
					rs_send_dec(telegramm[9]);
					rs_send(n);
					rs_send_dec(telegramm[10]);
				}
				if(length>4){
					for(n=8;n <= length+6;n++){
						rs_send(telegramm[n]);
					}
				}
				rs_send(13);							// CR LF
				rs_send(10);
			}
			 save_ga(ga,val);						// GA mit Wert speichern
		}//ende if(!tel_sent ..
		
	
	}// ende if(lenght...
}//ende funktion
//				


void read_value_req(void)
{

}
/**
* Gruppenadresse und deren Wert im Flash speichern
*
*
* @return
*/
void save_ga(unsigned int ga, unsigned int val)
{
	unsigned char n;
	__bit write_ok;

	n=0;
	do {								// Wert der GA in Flash schreiben
		if(ga_db[n].ga==ga || ga_db[n].ga==0xFFFF) {
			write_ok=0;
			while (!write_ok) {
				START_WRITECYCLE
				if(ga_db[n].ga==0xFFFF) {			// GA noch nicht gespeichert
					FMADRH = 0x1D;//(n >> 6) + 0x1D;		// GA schreiben
					FMADRL = n*4;//((n & 0x3F) * 4);		// (int wird LSB first abgelegt)
					FMDATA=ga;
					FMDATA=ga>>8;
				}
				FMADRH = 0x1D;//(n >> 6) + 0x1D;		// Value schreiben
				FMADRL = (n*4) +2;//((n & 0x3F) * 4) + 2;
				FMDATA=val;
				FMDATA=val>>8;					// High Byte schreiben
				STOP_WRITECYCLE
				if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
			}				
			n=62;	// Schleife abbrechen
		}
		n++;
	}while (n<62);
}


// erstellt den Anfang des Telegramms, length ist die Länge der Nutzdaten
void tel_header(unsigned int ga, unsigned char length)
{
    telegramm[0]=0xBC;
    telegramm[1]=pa_h;
    telegramm[2]=pa_l;
    telegramm[3]=ga>>8;
    telegramm[4]=ga;
    telegramm[5]=0xE0 + length;
    telegramm[6]=0x00;
}


// konvertiert die GA oder PA, die ab Position pos in rsin[] steht in eine int
unsigned int convert_adr(unsigned char pos)
{
	unsigned int adr;
	unsigned char sepcount, n, adr_tmp;
	__bit firstrun;

	firstrun=1;
	sepcount=0;
	n=pos;
	adr=0;
	adr_tmp=0;
	while(rsin[n]!='=' && n<(rsinpos-1)) {
		if(rsin[n]!='/' && rsin[n]!='.') {
			if(!firstrun) adr_tmp*=10;
			adr_tmp+=rsin[n]-48;
			firstrun=0;
		}
		else {
			sepcount++;
			firstrun=1;
			adr+=adr_tmp;
			if (rsin[n]=='/') {		// für GA
				if (sepcount==1) adr=adr<<3; else adr=adr<<8;
			}
			else {					// für PA
				if (sepcount==1) adr=adr<<4; else adr=adr<<8;
			}
			adr_tmp=0;
		}
		n++;
	}
	adr+=adr_tmp;
    return(adr);
}



// gibt die Position des = Zeichens im empfangenen string zurück
unsigned char equal_pos(void)
{
	unsigned char n, pos;

	n=0;
	pos=0xFF;
	while(n<(rsinpos-1)) {
		if(rsin[n]=='=') pos=n;
		n++;
	}
	return(pos);
}


void serial_int(void) __interrupt (4) __using (1)	// Interrupt on received char from serial port
{
	ES=0;
	if (RI){
		if (rsinpos<30) {
			rxledcount=0x40;// * RXLED kurz eischalten
			if(SBUF!=0x0A) {
				rsin[rsinpos]=SBUF;		// store byte in rsin
				rsinpos++;
				if (echo) {
					while(!TI);
					TI=0;
					SBUF=SBUF;
				}
			}
		}
		else rsinpos=0;
		RI=0;	
	}
	ES=1;
}

void send_ok(void)
{
	rs_send_s("OK\n");
}

void set_filtermode(unsigned char mode)
{
	write_ok=0;
	while (!write_ok) {
		START_WRITECYCLE
		FMADRH = 0x1C;
		FMADRL = 0xFA;
		if(mode =='1'){
			filtermode=1;
			transparency=0;
			FMDATA = 1;		// LSB
		}
		else{
			filtermode=0;
			transparency=1;
			FMDATA=0;
		}
		STOP_WRITECYCLE
		if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	}

}

void restart_app(void)
{
	unsigned char n;
	//__bit write_ok;
	
	P0M1=0x00;
	P0M2=0xC0;
	P0=0xC0;

	for (n=0;n<255;n++) ;	// Warten bis Bus stabil
	

//	transparency=1;	//alle GA verarbeiten. wird in der gapos_in_gat gemacht wenn !filtermode

	RI=0;
	TI=1;
	ES=1;
}
