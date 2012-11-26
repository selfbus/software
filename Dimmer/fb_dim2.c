/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2008 Andreas Krebs <kubi@krebsworld.de>
 *                   Richard Weissteiner richard@seelaus.at
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */


//              umbau anfang zum dimmer (Gira 1032) 30.12.2008
//dimmer kann:
//      Dimmen
//      grundhellikeit
//      wertobjekt
//      einschalthellikeit
//      verhalten bei busspannungswiederkehr auch letzter wert
//      verhalten beim emfang eines wertes andimmen oder anspringen
//      dimmgeschwindikeit @TODO nicht fertig
//      lesen der objekte
//      rückmeldeobjekte 1bit + 1 byte(ok am 26.10.2009)
//      Lichtzenenfunktionen
//      Sperrfunktion

//dimmer kann nicht: @TODO noch viele kleinikeiten zb

//      zeitfunktionen
//      ausschalfunktion

//10.11.2009    schrittweite zwischen zwei dimmstufen zugefügt

#include <P89LPC922.h>
#include "../com/fb_hal_lpc.h"
#include "../com/fb_prot.h"
#include "fb_app_dim.h"
#include "../com/fb_rs232.h"
#include "fb_i2c.h"

#define VERSION 1
#define TYPE	1
extern unsigned char Tval;
#define MAXDIMMWERT 255


unsigned char anspringen[DIMKREISE];          //andimmen (0) oder anspringen (1) [0]=K1
unsigned char dimm_helldunkel[DIMKREISE];          //9=heller 0=stop 1=dunkler
unsigned char dimm_I2C[DIMKREISE];
unsigned char dimmwert[DIMKREISE];
unsigned char mindimmwert[DIMKREISE];             //minimaldimmwert von der applikation
unsigned char einschathellikeit[DIMKREISE];
unsigned char mk[DIMKREISE]; //merker Kanal zum übertragen uber i2c
unsigned char sperren[DIMKREISE];             //Sperren oder nicht 1=sperren
unsigned int ie=0;              // dimmer immer wieder aktualisieren
//unsigned char faktor_dimmgeschwindikeit[DIMKREISE];
unsigned int basis_dimmgeschwindikeit[DIMKREISE];
unsigned char code hellikeit[]={0,25,40,51,76,102,127,153,178,204,230,255,255};
unsigned int code basis[]={0,1,16,260,4200,65000};
unsigned char code schritttabelle[]={0,200,100,50,25,12,6,3}; //schrittweite heller dunkler dimmen
unsigned char ausschalthellikeit[DIMKREISE];
unsigned char faktor_zl[DIMKREISE];
unsigned int basis_zl[DIMKREISE];
unsigned char kanal_zl=0;
unsigned char andimm_zl=0;
unsigned char ctaste;    //zähler für Taste welche gerade abgefragt wird
unsigned char mtaste[8]; //merker Taste mit zähler (Tastenprllung und langer tastendruck)  1-8 =tasten
unsigned char schritt_zl_dim[DIMKREISE];//zähler schrittweite zum heller-dunklerdimmen
unsigned char helligkeittsstufe(unsigned char stufe,unsigned char kanal)//Stufe 0-c
{
  if(stufe == 1)
    return mindimmwert[kanal];
  if(stufe == 0x0b)
    return MAXDIMMWERT;
  if(stufe == 0x0c)
    return ausschalthellikeit[kanal];
  return hellikeit[stufe];
}


void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
{
    //Timer0 einstellen
    TMOD&=0xf0;   //register für Timer 0 löschen
    TMOD|=0x01;   // Timer 0 als reload, Timer 1 nicht ändern !
    TAMOD&=0xf0;
    TH0 = 0xff;
    AUXR1&=~0x10;      // toggled whenever Timer0 overflows ausschalten
    ET0=1;             // Interrupt für Timer 0 freigeben
    TR0=1;             // Timer 0 starten
    EA=1;

    Tval=0x00;

  P0M1=0xEE;            // Port 0 Modus push-pull für Ausgang nur PIN 0 und 4 Output
  P0M2=0x11;            // nur PIN 0 und 4 Output
  P0=0;

  anspringen[0]=(eeprom[0xC6]&(1<<3))>>3;
  anspringen[1]=(eeprom[0xC6]&(1<<7))>>7;
  einschathellikeit[0]=eeprom[0xC4]&0x0f;       //wert 0 - 0x0c
  einschathellikeit[1]=eeprom[0xC4]>>4;         //wert 0 - 0x0c
  dimmwert[0]=helligkeittsstufe(eeprom[0xe2]&0x0f,0);     //Verhalten bei Busspannungswiederkehr
  dimmwert[1]=helligkeittsstufe((eeprom[0xe2]>>4)&0x0f,1);//Verhalten bei Busspannungswiederkehr
  mindimmwert[0]=(eeprom[0xc2]&0x0f)*15+30;
  mindimmwert[1]=(eeprom[0xc2]>>4)*15+30;

  basis_dimmgeschwindikeit[0]=basis[(eeprom[0xC6]&0x07)];
  basis_dimmgeschwindikeit[1]=basis[(eeprom[0xC6]>>4)&0x07];
  //rs_send_s("M=");


 // rs_send_hex(mindimmwert[0]);
 // rs_send_s(" ");
 // rs_send_hex(mindimmwert[1]);
 // rs_send_s(" ");
  EA=0;
  START_WRITECYCLE
  WRITE_BYTE(0x01,0x03,0x00);	// Herstellercode 0x0004 = Jung 0x0008 = Gira
  WRITE_BYTE(0x01,0x04,0x08);
  WRITE_BYTE(0x01,0x05,0x30);	// Device Type (2038.10) 2060h (0x3015 gira 1032)
  WRITE_BYTE(0x01,0x06,0x15);	// 	"	"	"
  WRITE_BYTE(0x01,0x07,0x01);	// Versionsnummer
  WRITE_BYTE(0x01,0x0C,0x00);	// PORT A Direction Bit Setting
  WRITE_BYTE(0x01,0x0D,0xFF);	// Run-Status (00=stop FF=run)
  WRITE_BYTE(0x01,COMMSTABPTR,0x8a);	// COMMSTAB Pointer
  STOP_WRITECYCLE
  START_WRITECYCLE;
  WRITE_BYTE(0x00,0x60,0x2E);     // system state: all layers active (run), not in prog mode
  STOP_WRITECYCLE;
  EA=1;
}




void tastenauswertung(void)
{
  unsigned char retp0=P0;//port 0 merken
  P3_0=0;                //SCL damit i2c nicht meckert
  P0=0;
  if(ctaste<6)           //0 bis 5
    ctaste++;
  else ctaste=0;
  P0M1=~(1<<ctaste);    // Port 0  PIN Output
  P0M2=(1<<ctaste);
  P0=~(1<<ctaste);      //nur eine Taste aktivieren
  if(P1_3==0)           //abfrage Taste getrückt
    {
      if(mtaste[ctaste]<254)  mtaste[ctaste]++;
      if(mtaste[ctaste]==200) //langer tastendruck
        {
          if(ctaste==1)
            dimm_helldunkel[0]=9;
          if(ctaste==2)
            dimm_helldunkel[0]=1;
          if(ctaste==5)
            dimm_helldunkel[1]=9;
          if(ctaste==6)
            dimm_helldunkel[1]=1;
        }

     }
  else
    {
      if(mtaste[ctaste]>20)
        {
          if(mtaste[ctaste]>20&&mtaste[ctaste]<200) //kurzer tastendruck mit Tastenprellung
            {
              if(ctaste==1) dimmwert[0]=0xff;
              if(ctaste==2) dimmwert[0]=0x0;
              if(ctaste==5) dimmwert[1]=0xff;
              if(ctaste==6) dimmwert[1]=0x0;
            }
          if(mtaste[ctaste]>199) //langer tastendruck
            if(ctaste==1||ctaste==2)
              dimm_helldunkel[0]=0;
            if(ctaste==5||ctaste==6)
              dimm_helldunkel[1]=0;
        }
      mtaste[ctaste]=0;
    }
  P0=retp0;
  //wieder auf eingang stellen
  P0M1=0x00;    //ee   // Port 0  PIN 0 und 4 Output
  P0M2=0xFF;    //11
  P3_1=1;       //SDA damit i2c nicht meckert
  P3_0=1;       //SCL damit i2c nicht meckert


}

void tr0_int(void) interrupt 1         //n=nummer 0x03+8*n
{

  TL0=0x09;     // timer mit H=0xf9 L=0x09 2KHz = 0,5ms
  TH0=0xf9;     // timer mit 0xb7 200HZ = 5ms

  tastenauswertung();
    P0_3=(dimm_I2C[0])?1:0;     //LED_zeile K1
    if(dimm_I2C[0]>75) P0_2=1;
    else P0_2=0;
    if(dimm_I2C[0]>125) P0_1=1;
    else P0_1=0;
    if(dimm_I2C[0]>220) P0_0=1;
    else P0_0=0;

    P0_7=(dimm_I2C[1])?1:0;     //LED_zeile K2
    if(dimm_I2C[1]>75) P0_6=1;
    else P0_6=0;
    if(dimm_I2C[1]>125) P0_5=1;
    else P0_5=0;
    if(dimm_I2C[1]>220) P0_4=1;
    else P0_4=0;

  if(ie<40000)                   //interwallmäsiges senden kann evetuel raus
    ++ie;
   else
    {
    i2c_send_daten(dimm_I2C[0],dimm_I2C[1]);
    ie=0;
    }

  if(dimm_I2C[0]!=mk[0]||dimm_I2C[1]!=mk[1])   //i2c übertragen
     {
/*      //zum Testen rs232 Ausgabe
       rs_send_s("D=");//Dimmwert
       rs_send_hex(dimm_I2C[0]);
       rs_send(' ');
       rs_send_hex(dimm_I2C[1]);
       rs_send_s("\n");
*/
       ie=0;
       mk[0]=dimm_I2C[0];
       mk[1]=dimm_I2C[1];
       i2c_send_daten(dimm_I2C[0],dimm_I2C[1]);
     }

   if(anspringen[0])
           dimm_I2C[0]=dimmwert[0];  //anspringen vom wert K1
   if(anspringen[1])
           dimm_I2C[1]=dimmwert[1];  //anspringen vom wert K2

    if(andimm_zl>8)                    //andimmern vom wert
     {
       andimm_zl=0;
       for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)
         {
           if(dimmwert[kanal_zl]!=dimm_I2C[kanal_zl])        //andimmern von wert
             {
             if(dimm_I2C[kanal_zl] > dimmwert[kanal_zl])    //dunkler andimmen
                dimm_I2C[kanal_zl]--;
             if(dimm_I2C[kanal_zl] < dimmwert[kanal_zl])    //heller andimmen
               {
               if(dimmwert[kanal_zl]<mindimmwert[kanal_zl])   // mit minimalwert Starten
                  {
                  dimm_I2C[kanal_zl]=mindimmwert[kanal_zl];
                  dimmwert[kanal_zl]=dimm_I2C[kanal_zl];
                  }
               else dimm_I2C[kanal_zl]++;
               }
             }
         }
     }
     else andimm_zl++;


   for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)//basis und faktor für dimmstufen
     {
       basis_zl[kanal_zl]++;
       if(basis_zl[kanal_zl] > basis_dimmgeschwindikeit[kanal_zl])//1-65000
          {
          basis_zl[kanal_zl]=0;
          faktor_zl[kanal_zl]++;
          if(faktor_zl[kanal_zl] > eeprom[0xc8+(kanal_zl)])
             {
             faktor_zl[kanal_zl]=0;
              if(dimm_helldunkel[kanal_zl]>=9 && dimm_helldunkel[kanal_zl]<=0xf)//heller=9==100%
               {
               if(dimmwert[kanal_zl]<MAXDIMMWERT-1)
                 {
                   schritt_zl_dim[kanal_zl]+=schritttabelle[(dimm_helldunkel[kanal_zl]-8)];
                   dimmwert[kanal_zl]+=(schritt_zl_dim[kanal_zl]/100);
                   schritt_zl_dim[kanal_zl]%=100;
                 }
               }
              if(dimm_helldunkel[kanal_zl]>=1 && dimm_helldunkel[kanal_zl]<8) //dunkler=1==100%
               {
               if(dimmwert[kanal_zl]>mindimmwert[kanal_zl]+1)
                 {
                   schritt_zl_dim[kanal_zl]+=schritttabelle[(dimm_helldunkel[kanal_zl])];
                   dimmwert[kanal_zl]-=(schritt_zl_dim[kanal_zl]/100);
                   schritt_zl_dim[kanal_zl]%=100;
                 }
               }
            }
         }
     }
  }







void main(void)
{
unsigned int i=0;
  unsigned char n,cmd;
	signed char cal;
	static __code signed char __at 0x1BFF trimsave;

  bit flag50hz=0;

  restart_hw();				// Hardware zurücksetzen
  restart_prot();			// Protokoll-relevante Parameter zurücksetzen
  rs_init(6);
  i2c_ma_init();
  restart_app();                        // Anwendungsspezifische Einstellungen zurücksetzen
 // rs_send_s("Programmstart\n");
	TASTER=1;
	if(!TASTER )cal=0;// && wduf
	else cal=trimsave;
	TRIM = (TRIM+trimsave);
	TRIM &= 0x3F;//oberen 2 bits ausblenden


  rs_send(0x55);
  do
      {
		if (RI){
			RI=0;
			cmd=SBUF;
			if(cmd=='c')rs_send(0x55);
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
				FMADRH= 0x1B;		
				FMADRL= 0xFF; 
				FMDATA=	cal; 
				STOP_WRITECYCLE;
				EA=1;				//int wieder freigeben
			}
			if(cmd=='v')rs_send(VERSION);
			if(cmd=='t')rs_send(TYPE);
			//if(cmd >=49 && cmd <= 56){
			//	portbuffer = portbuffer ^ (0x01<< (cmd-49));
			//	port_schalten();
			//}
		}
		
	  //if(RTCCON>=0x80) delay_timer();	// Realtime clock Überlauf
      //
      // +++++ Handhabung des Programmiertasters und der ProgrammierLED +++++
      //
        TASTER=1;                       // Pin als Eingang schalten um Taster abzufragen
        if(!TASTER) {                   // Taster gedrückt
                for(n=0;n<200;n++) {}   // Entprell-Zeit
                while(!TASTER);         // warten bis Taster losgelassen
                EA=0;
                START_WRITECYCLE;
                WRITE_BYTE(0x00,0x60,userram[0x60] ^ 0x81);     // Prog-Bit und Parity-Bit im system_state toggeln
                STOP_WRITECYCLE;
                EA=1;
        }
        TASTER=!(userram[0x060] & 0x01);// LED entsprechend Prog-Bit schalten (low=LED an)
        for(n=0;n<100;n++) {}           // falls Hauptroutine keine Zeit verbraucht, der LED etwas Zeit geben, damit sie auch leuchten kann
      }
        while(1)
    ;
}


