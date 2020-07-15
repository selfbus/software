/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2008 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* @file   fb_hal_lpc.c
* @author Andreas Krebs <kubi@krebsworld.de>
* @date    2008
* 
* @brief  Hier sind ausschliesslich die Hardware-spezifischen aber Applikations-unabhaengigen Routinen fuer den 89LPC922
* 
* 
*/

#include <P89LPC922.h>
#include "fb_hal_lpc.h"
#include "2te_const.h"

unsigned char telegramm[23];
unsigned char telpos;		// Zeiger auf naechste Position im Array Telegramm
unsigned char cs;			// checksum

__code unsigned char __at(0x1C00) userram[255];	/// Bereich im Flash fuer User-RAM
__code unsigned char __at(0x1D00) eeprom[255];	/// Bereich im Flash fuer EEPROM

__bit parity_ok;			/// Parity Bit des letzten empfangenen Bytes OK
__bit interrupted;		/// Wird durch interrupt-routine gesetzt. So kann eine andere Routine pruefen, ob sie unterbrochen wurde



/** 
* RTC starten, base in ms
*
*
*/
void start_rtc(unsigned char base)
{
	unsigned long rtcval=0;
	unsigned char n;
	
	for (n=0;n<base;n++) rtcval+=7373;
	//rtcval=7373*base;
	rtcval=rtcval>>7;	// 7 bit prescaler ( /128 )
	RTCH=(rtcval>>8);
	RTCL=rtcval;
	RTCCON=0x61;	// ... und starten
}


/** 
* RTC stoppen
*
*
*/
void stop_rtc(void)
{
	RTCCON=0x60;
}





/** 
* 
*
*
* @return
*/
unsigned char get_byte(void)
{
  __bit rbit,parity,ph;
  unsigned char n,m,fbb;
  						
  EX1=0;				// Interrupt 1 sperren
  ET1=0;				// Interrupt von Timer 1 sperren
  
  set_timer1(380);		// Timer setzen um 1. Bit zu treffen (320-440)
#ifdef HAND
  REFRESH				//refresh
#endif   
  ph=0;					// Paritybit wird aus empfangenem Byte berechnet
  parity_ok=0;
  while(!TF1);			// warten auf Timer 1
  set_timer1(360);		// Timer 1 neu setzen fuer 2.Bit (300-420)
  rbit=FBINC;			// 1.Bit einlesen
  for(m=0;m<5;m++) rbit&=FBINC;		// zur Steigerung der Fehlertoleranz mehrfach lesen
  fbb=rbit;
  if(rbit) ph=!ph;		// Paritybit berechnen 
  //for(n=1;n<8;n++) {	// 2. bis 8. Bit
  for (n=2;n!=0;n=n<<1) {
    while(!TF1);
    set_timer1(350);	// Timer 1 setzen fuer Position 2.-9.Bit (342-359)
    rbit=FBINC;
    for(m=0;m<5;m++) rbit&=FBINC;	// zur Steigerung der Fehlertoleranz mehrfach lesen
    //fbb|=rbit<<n;
    if (rbit) fbb+=n;
    
    if(rbit) ph=!ph;	// Paritybit berechnen
  }  
  while(!TF1);				
  TR1=0;
  parity=FBINC;			// Paritybit lesen
  for(m=0;m<5;m++) parity&=FBINC;	// zur Steigerung der Fehlertoleranz mehrfach lesen
  if(parity==ph) parity_ok=1;
  return (fbb);	
}



/** 
* Byte vom Bus empfangen, wird durch negative Flanke am INT1 Eingang getriggert
*
* liest ein Byte und prueft das Parity-bit
* wenn OK wird das Byte in das Array Telegramm an die Position telpos abgelegt
* anschliessend wird der time-out Zaehler gestartet, wenn waehrend 370us nichts empfangen wird
* dann ist das Telegramm komplett uebertragen worden
*
*
*/
void ext_int0(void) __interrupt(2)
{
  unsigned char fbbh;

  TR1=0;
  EX1=0;					// Interrupt 1 sperren
  ET1=0;					// Interrupt von Timer 1 sperren
  						
  fbbh=get_byte();			// Byte vom Bus empfangen
  sysdelay(200);
  set_timer1(1350);			// Timer 1 starten fuer Timeout 370us -> signalisiert Telegrammende (1350)
  
  if(parity_ok)				// wenn Parity OK
  { 
    if (telpos!=0 || (fbbh&0xF0)!=0xC0) telegramm[telpos]=fbbh;	// keine ACK oder NACK als telegramm speichern
    if(telpos==0) cs=0;
    cs^=fbbh;				// Checksum durch EXOR der einzelnen Telegramm-Bytes bilden
    telpos++;
    ET1=1;
  }
  else {					// bei fehlerhaften Bytes alles verwerfen
	  telpos=0;
	  ET1=0;
	  TR1=0;	// ???????????????????
	  TF1=0;
	  cs=0;
  }
  

  
  //ET1=1;					// Interrupt fuer Timer 1 freigeben
  IE1=0;					// Interrupt 0 request zuruecksetzen
  EX1=1;					// Interrupt 0 wieder freigeben
  interrupted=1;			// teilt anderen Routinen mit, dass sie unterbrochen wurden
} 



/** 
* 
* \param fbsb
*
* @return
*/
__bit sendbyte(unsigned char fbsb)
{
  unsigned char n,m;
  __bit sendbit,parity,error;
  
  parity=1;
  error=0;
  
  FBOUTC=1;	// Startbit senden
  sysdelay(95);	// 35us
  FBOUTC=0;
  
  for(n=0;n<8;n++)		// 8 Datenbits senden
  {
    set_timer1(215);		// 69us Pause
    if(((fbsb>>n)&0x01)==1) sendbit=0;
    else sendbit=1;
    while(!TF1);		// Warten bis 69us Pause fretig ist
    
    FBOUTC=sendbit;		// Bit senden
			
    set_timer1(100);		//35us Haltezeit fuer Bit 
    
    if(!sendbit) {		// wenn logische 1 gesendet wird, auf Kollision pruefen
      parity=!parity;
      for(m=0;m<5;m++) if(!FBINC) error=1;
    }
    if(error) break;  
      
    while(!TF1);		// Warten bis 35us abgelaufen
    FBOUTC=0;
  }
  if(!error) {
	  sysdelay(212);			// 69 us Pause vor Parity-Bit
	  FBOUTC=parity;
	  sysdelay(95);			// 35us fuer Parity-Bit
	  FBOUTC=0;
  }
  TR1=0;
  
  return (error);
}







/** 
* Warten, deltime = Anzahl Takte / 2 (Timer wird mit CCLK/2 betrieben) 
*
* Der Aufruf allein dauert schon ca. 12µs !!!
* NICHT IN APP VERWENDEN !!!
*
* \param deltime
*/
void sysdelay(unsigned int deltime)
{
  TR1=0;					// Timer 1 anhalten
  deltime=0xFFFF-deltime;
  TH1=deltime>>8;			// Timer 1 setzen 
  TL1=deltime;	
  TF1=0;
  TR1=1;
  while(!TF1);				// warten auf Timer 1
  TR1=0;		
}



/** 
* Timer 0 stoppen, setzen und starten (Timer wird mit CCLK/2 betrieben)
*
*
* \param deltime
*/
void set_timer0(unsigned int deltime)
{
  TR0=0;					// Timer 0 anhalten
  deltime=0xFFFF-deltime;
  TH0=deltime>>8;			// Timer 0 setzen 
  TL0=deltime;	
  TF0=0;					// ï¿½berlauf-Flag zuruecksetzen
  TR0=1;					// Timer 0 starten
}




/** 
* Timer 1 stoppen, setzen und starten (Timer wird mit CCLK/2 betrieben)
*
*
* \param deltime
*/
void set_timer1(unsigned int deltime)
{
  TR1=0;				// Timer 1 anhalten
  deltime=0xFFFF-deltime;
  TH1=deltime>>8;			// Timer 1 setzen 
  TL1=deltime;	
  TF1=0;				// Ueberlauf-Flag zuruecksetzen
  TR1=1;				// Timer 1 starten
}

/*
void calibrate(void)
{
	unsigned int t;
	unsigned char n;
	
	for (n=0;n<50;n++) {
		TR0=0;
		TH0=0;
		TL0=0;
		TASTER=0;
		while(P1_4);
		TR0=1;
		while(!P1_4);
		while(P1_4);
		TR0=0;
		t=TH0*256+TL0;
		if (t<500) {	
				if (t>385) TRIM+=1;
				if (t<383) TRIM-=1;
		}
		t=0;
		while(!P1_4);
		START_WRITECYCLE
		WRITE_BYTE(0x00,0x30,TRIM)
		STOP_WRITECYCLE
	}
}
*/

/** 
* Alle Hardware Einstellungen zuruecksetzen
*
*
*
*/
void restart_hw(void)
{
	
	DIVM=0;			// Taktfrequenz nicht teilen -> volles Tempo
  
	P1M1=0x14;		// Port 1 auf quasi-bidirektional,
							// ausser P1.2(T0 als PWM Ausgang)=open-drain,
							// P1.3 open drain (muss sein),
							// P1.4(INT1)=Input only, P1.6(FBOUTC) push-pull

	P1M2=0x4C;
   
	FBOUTC=0;		// Bus-Ausgang auf low
  
	TMOD=0x11;		// Timer 0 und Timer 1 als 16-Bit Timer
	TAMOD=0x00;
	TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen 
	TR1=0;			// Timer 1 (Empfangs-Timeout, nicht in app verwenden!) zunaechst stoppen
 
	RTCH=0x0E;		// Real Time Clock auf 65ms laden
	RTCL=0xA0;		// (RTC ist ein down-counter mit 128 bit prescaler und osc-clock)
	RTCCON=0x61;	// ... und starten

	interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
	IEN0=0x00;
	IEN1=0x00;

	ET1=0;			// Interrupt von Timer 1 sperren
	EX0=0;			// Externen Interrupt 0 sperren
	EX1=1;			// Externen Interrupt 1 freigeben	
	EA=1;			// Interrupts prinzipiell freigeben
	
	IP0=0x0C;		// höchste Priorität fuer ext. Int. 1 und Timer 1 (Bit 0 und 3)
	IP0H=0x0C;
	IP1=0x00;
	IP1H=0x00;
	IT1=1;			// Interrupt 1 flankengetriggert=1 pegelgetriggert=0
  
}
