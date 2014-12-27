/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2013 Andreas Krieger
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 * 
 * 	
 * 
 */




//#include <P89LPC922.h>
//#include "../lib_lpc922/Releases/fb_lpc922_1.4x.h"
#include  "fb_app_meldetableau24.h"
//#include "../com/debug.h"

#include "../com/fb_rs232.h"
unsigned char portbuffer;	// Zwischenspeicherung der Portzustände

//unsigned char timerstart[3];
//unsigned char timerstate[3];
unsigned char timerbase[TIMERANZ];// Speicherplatz für die Zeitbasis und 4 status bits
unsigned char timercnt[TIMERANZ];// speicherplatz für den timercounter und 1 status bit

unsigned char led_obj[3];		
unsigned char led_hell_obj;
unsigned char quitted_obj[3];
__bit zentral_alarm_obj,reset_obj,blocked_obj;
unsigned char timer;		// Timer für Schaltverzögerungen, wird alle 100ms hochgezählt
unsigned char blink;		//pattern das blinkt
unsigned char led_activ;	//pattern das die LED Anzeige aktiviert/deaktiviert
unsigned char beep_state,beep_all,hellwert;
unsigned char t0_div,beep_req,beep_clk;

__bit delay_toggle;			// um nur jedes 2. Mal die delay routine auszuführen
__bit portchanged;

											//{15,30...

const unsigned char bitmask_1[]={0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
const unsigned char bitmask_0[]={0xFE,0xFD,0xFB,0xF7,0xEF,0xDF,0xBF,0x7F};

// Version mit Schallwandler 
void timer0_int  (void) __interrupt (1) {// Interrupt T0 für sound
	t0_div++;
#ifdef AC_BEEP
	if(t0_div & beep_req)beep_port=1;
	else beep_port=0;
#else
	if(beep_req)beep_port=1;
	else beep_port=0;
#endif
} // timer0_int



void write_value_req(unsigned char objno)	// Objekte steuern gemäß EIS  Protokoll (an/aus/dimm/set)
{
  unsigned char valtmp;
  //unsigned char blockstart, blockend, block_polarity;
  unsigned char obj,group;
          	obj=objno%8;// modulo 3 ergibt die LED-io Nummer in der Gruppe
	          group=objno/8;// /3 ergibt die Gruppennummer
	          valtmp=telegramm[7]&0x01;
	
		         // Objektbehandlung:
		         if(objno<=23){ // die LED objekte..
		        	 if(valtmp ^ ((eeprom[0xFA + group])>>obj)&0x01) {
        				led_obj[group]|= bitmask_1[obj];// Alarmbeginn
		        	 }
		        	 else{ 									// Alarm Ende
	        		 	if(!(eeprom[0xF1+group]& bitmask_1[obj])){	// wenn nicht 'speichernd'
	        		 		led_obj[group]&= bitmask_0[obj]; 		// objekt löschen
	        		 		quitted_obj[group]&= bitmask_0[obj];	// Quittierung löschen
	        		 	}
		        	 }
		         }
		         if(objno==24){								// helligkeitsobjekt
		        	 led_hell_obj=telegramm[8];
		         }
		         if(objno==26 ){							// Rücksetzobjekt
		        	 if (valtmp^((__bit)(eeprom[0xEE]&0x02))){	// Polarität einbeziehen
		        		 erease_alarm(1);
		        		 reset_obj=1;
		        	 }
		        	 else reset_obj=0;
		         }
		         if(objno==27){//sperre
		        	 if (valtmp^((__bit)(eeprom[0xEE]&0x40))){	// Polarität einbeziehen
		        		 blocked_obj=1;
		        	 }
		        	 else blocked_obj=0;
		         }

}




/** 
* Objektwert lesen wurde angefordert, read_value_response Telegramm zurücksenden
*
* 
* @return
* 
*/
void read_value_req(unsigned char objno)
{
  send_obj_value(objno+64); // die 64 macht ein response Telegramm daraus
}


unsigned long read_obj_value(unsigned char objno)	// gibt den Wert eines Objektes zurueck
{
	unsigned char ret_val=0,obj,group;
	obj = objno % 8;
	group=objno /8;
	if(objno<=23) {
		if((led_obj[group]^eeprom[0xFA+group])& bitmask_1[obj]) ret_val=1;
	}
	else{
		if(objno==24) ret_val = led_hell_obj;
		if(objno==25) ret_val = zentral_alarm_obj^((__bit)(eeprom[0xED]&0x80));
		if(objno==26) ret_val = reset_obj^((__bit)(eeprom[0xEE]&0x02));
		if(objno==27) ret_val = blocked_obj^((__bit)(eeprom[0xEE]&0x40));
	}
	return(ret_val);
}


void write_obj_value(unsigned char objno,unsigned int objvalue)	// schreibt den aktuellen Wert eines Objektes ins 'USERRAM'
{
unsigned char obj,group;
	group= objno/8;
	obj = objno % 8;
	
	if(objno<=23) {
		if(objvalue==0) led_obj[group] &= bitmask_0[obj];
		else led_obj[group] |= bitmask_1[obj];
	}
	else{
		if(objno==24) led_hell_obj = objvalue &0xff;
		if(objno==25) zentral_alarm_obj = objvalue &0x01;
		if(objno==26) reset_obj = objvalue &0x01;
		
	}
}


void erease_alarm(__bit value)//quittieren oder löschen der Alarme
{
	if(value){
		led_obj[0]&= ~eeprom[0xF1];	// wenn nicht 'speichernd'
		quitted_obj[0]&= ~eeprom[0xF1];	// wenn nicht 'speichernd'
		led_obj[1]&= ~eeprom[0xF2];	// wenn nicht 'speichernd'
		quitted_obj[1]&= ~eeprom[0xF2];	// wenn nicht 'speichernd'
		led_obj[2]&= ~eeprom[0xF3];	// wenn nicht 'speichernd'
		quitted_obj[2]&= ~eeprom[0xF3];	// wenn nicht 'speichernd'
		
		quitted_obj[0]|=led_obj[0];
		quitted_obj[1]|=led_obj[1];
		quitted_obj[2]|=led_obj[2];
		if(!(eeprom[0xED]& 0x04)){
			zentral_alarm_obj=1;	//Wenn nicht automatisches rücksetzen aktiviert ist
			send_obj_value(25);		//wird beim rücksetzen das zentralalarm Obejkt zurückgesetzt
		}
	}
	
}



void delay_timer(void)	// zählt alle 0,1s die Variable Timer hoch 
{
	unsigned char objno,n,m;
	unsigned int timerflags;
	objno;n;m;

	RTCCON=0x60;		// RTC anhalten und Flag löschen
	RTCH=0x16;			// reload Real Time Clock
	RTCL=0x80;			//100ms laden
	RTCCON=0x61;		// RTC starten, RUN Bit löschen
	
	timer++;// wird alle 0.1s aufgerufen
	timerflags = 1;
	if (timer>=10){
		timer=0;
		timerflags=3;
	}
	if(timercnt[0])timercnt[0]--;
	if(timerbase[1]&0x01){
		if ((timercnt[1])&& (timerflags&0x02))timercnt[1]--;
	}
	else if (timercnt[1])timercnt[1]--;
		
		
		// ab Hier die aktion...
		
		
			if(!timercnt[0]){	// blinken
				if((blocked_obj)&&(eeprom[0xEE]&0x34)==0x24) blink=0xFF;
				else blink=~blink;
				if((blocked_obj)&&(eeprom[0xEE]&0x34)==0x34)led_activ=0;
				else led_activ=0xFF;
				timercnt[0]=eeprom[0xEF];
			}
			if(!timercnt[1]){	//beep
				switch (eeprom[0xED]& 0x60){
				case 0x20:
						if(!beep_clk){
							beep_clk=1;
							timercnt[1]=eeprom[0xFD]; //Dauer laden
							timerbase[1]=0;
						}
						else{
							beep_clk=0;
							timercnt[1]=eeprom[0xFE]; //Pause laden
							timerbase[1]=1;
						}
					break;
				case 0x40:	
				case 0x60:
					switch(beep_state){
						case 0:
							beep_clk=1;
							beep_state=1;
							timercnt[1]=eeprom[0xFD];//Dauer laden
							timerbase[1]=0;
						break;
						case 1:
							beep_state=2;
							timercnt[1]=eeprom[0xFD];//Lücke laden
							beep_clk=0;
						break;
						case 2:
							beep_state=3;
							timercnt[1]=eeprom[0xFD];//dauer laden
							if((eeprom[0xED]& 0x60)==0x60) beep_clk=3;
							else beep_clk=1;
						break;
						case 3:
							beep_state=0;
							timercnt[1]=eeprom[0xFE];//Pause laden
							timerbase[1]=1;
							beep_clk=0;
						default:	
					}
					break;
				default:
						timercnt[1]=0;
						beep_clk=0;
				}// ende switch
		}// ende if(!timercnt...
		if ((led_obj[0]& ~quitted_obj[0])
			||(led_obj[1]& ~quitted_obj[1])
			||(led_obj[2]& ~quitted_obj[2]))
			beep_all=1;
		else beep_all=0;

		if((zentral_alarm_obj||((eeprom[0xED]&0x08)&&beep_all))&& beep_clk && !((eeprom[0xEE]&0x04)&& blocked_obj)){
			if(beep_clk&0x02)beep_req=0x08;
			else beep_req=0x04;
		}
		else beep_req=0;
		
		hell_stellen();
}




void hell_stellen(void)
{
unsigned char duty;
	if ((eeprom[0xED]&0x12==0x12)&&zentral_alarm_obj){
		duty=255;	// bei Alarm Helligkeit auf 100% wen gewünscht
	}
	else{
		if(!(eeprom[0xED]&0x01))duty=eeprom[0xF0];// festeingestellter helligkeitswert
		else{	//Helligkeitsobjekt
			if(led_hell_obj<eeprom[0xF0])duty=eeprom[0xF0];//Mindesthelligkeit
			else duty=led_hell_obj;// oder Helligkeits objekt
		}
		
	}
	TH0=duty;
}



void LED_schalten(void)		// Schaltet die LEDs und kalkuliert den Zentral-Alarm
{
	
	//LED  Ausgänge setzen
	WRITE=0;
	spi_2_out(led_obj[2]& led_activ&(~eeprom[0xF9]|blink | quitted_obj[2]));
	spi_2_out(led_obj[1]& led_activ&(~eeprom[0xF8]|blink | quitted_obj[1]));
	spi_2_out(led_obj[0]& led_activ&(~eeprom[0xF7]|blink | quitted_obj[0]));
	WRITE=1;
	DATAOUT=0;
	DATAOUT=0;
	WRITE=0;

	
	//P0=led_obj[0]& led_activ&(~eeprom[0xF7]|blink | quitted_obj[0]);// debugausgabe

	// Zentral Alarm kalkulieren
	if(eeprom[0xED]&0x02 ){// Wenn zentralalarm aktiviert
		if (((eeprom[0xF4]& led_obj[0]& ~quitted_obj[0])\
			||(eeprom[0xF5]& led_obj[1]& ~quitted_obj[1])\
			||(eeprom[0xF6]& led_obj[2]& ~quitted_obj[2])))//wenn jeweils aktiviert, eingetroffen und nicht quittiert...
			{
			if(!zentral_alarm_obj && !(blocked_obj &&((eeprom[0xEE]&0x34)>=0x14 ))){// wenn noch nicht gesetzt und nicht gesperrt...
				zentral_alarm_obj =1;
				send_obj_value(25);
			}
		}
		else
		{									// zentralalarm automatisch zurücknehmen wenn so parametriert
			if(zentral_alarm_obj && eeprom[0xED]&0x04){
				zentral_alarm_obj =0;
				send_obj_value(25);
			}
		}	
	}	

}

void spi_2_out(unsigned char daten)
{

	unsigned char n;
		
//	WRITE=0;
	CLK=0;
	for(n=0;n<=7;n++){

		DATAOUT=(daten & 0x080)>>7;
		daten<<=1;
		CLK=1;
		CLK=1;
		CLK=1;
		CLK=0;
	}
//	WRITE=1;
//	DATAOUT=0;
//	DATAOUT=0;
//	WRITE=0;

}






void bus_return(void)		// Aktionen bei Busspannungswiederkehr
{
//	__bit bitval;
//	unsigned char n,m;
// hier einschaltverhalten bei busreturn rein...
}



void restart_app(void)		// Alle Applikations-Parameter zurücksetzen

{
	P0=0;
	P0M1=0x00;		// Port 0 Modus push-pull für Ausgang
	P0M2=0x7F;		//alle ausser io7 push-pull
 


	
	ET0=0;			// Interrupt für Timer 0 sperren

//	zf_state=0x00;		// Zustand der Zusatzfunktionen 1-4
//	blocked=0x00;		// Ausgänge nicht gesperrt
	timer=0;			// Timer-Variable, wird alle 130ms inkrementiert
  
	
	EA=0;						// Interrupts sperren, damit flashen nicht unterbrochen wird
	START_WRITECYCLE
	WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x004C = Bosch
	WRITE_BYTE(0x01,0x04,0x4C)


				
	//WRITE_BYTE(0x01,0x05,0x04)	// Devicetype 0x0410 = Bosch Meldetableau ID 1040
	//WRITE_BYTE(0x01,0x06,0x10)


	//WRITE_BYTE(0x01,0x07,0x01)	// Versionnumber of application programm

	WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	STOP_WRITECYCLE
//  set timer 0 autoreload 0.05ms
//	TR0=0;
//	TMOD &= 0xF0;
//	TMOD |= 0x02;// T0 autoreload
//	TH0=0x47; //47 bei 50µs  40 bei 52µ für 2400bd
//	TL0=0x47; //47 bei 50µs  40 bei 52µ für 2400bd
//	TR0=1;
	// prirority bits in p0 byte;bit     7     6     5    4      3    2     1     0
	//IP0* Interrupt priority 0 B8H -          PWDRT PBO  PS/PSR PT1  PX1   PT0   PX0
	//IP0H Interrupt priority 0 HIGH B7H -     PWDRT PBOH PSH/   PT1H PX1H  PT0H  PX0H
	
	//IP1* Interrupt priority 1    F8H   PAD   PST   -    -      -    PC    PKBI  PI2C
//	IP1H Interrupt priority 1 HIGH F7H   PADH  PSTH  -    -      -    PCH   PKBIH PI2CH

	// set timer 0 isr priority to 1
	IP0 &= 0xFD;
	IP0H &= 0xFD;
	IP0 |= 0x02;// level 1
	IP0H |= 0x08;//Timer 1 auf Level 2
	TF0=0; //timer0 flag löschen
	ET0=1;// timer 0 interupt freigeben	
	EA=1;						// Interrupts freigeben
	blink=0;					// init  pattern der Blinkanzeige
	
	RTCCON=0x81;		// RTC starten und ov flag setzen

	beep_state=0;
	timercnt[0]=1;
	timercnt[1]=1;
	
//	TR0=0;
	TMOD=(TMOD & 0xF0) + 2;			// Timer 0 als PWM
	TAMOD=0x01;
	hell_stellen();
	TH0=127;
	AUXR1|=0x10;	// PWM von Timer 0 auf Pin ausgeben
	PWM=1;			// PWM Pin muss auf 1 gesetzt werden, damit PWM geht !!!
	TR0=1;

	
	QUIT=1;				// Pin als Eingang schalten um Taster abzufragen
	led_activ=0xFF;
	
	
}// Ende restart app
