/* $Id$ */
/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2009 Richard Weissteiner richard@seelaus.at
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */
/**
* @file   dim2_sla.c
* @author
* @date   Sun Jan 12 21:30:01 2009
*
* @brief  Dimmer Slave  2 channel dimmer mit I2C.
*/

#include <P89LPC922.h>
#include "..\com\fb_rs232.h"
#include "..\dim2\fb_i2c.h"

#define K1OUT P0_7
#define K2OUT P0_6
#define AB 0 //abschnittdimmer
#define AN 1 //anschnittdimmer
#define PW 3 //Pulweitemod
unsigned char dimm_I2C[2];
unsigned char mk[2];
unsigned char bytenummer;
unsigned int zl_50hz=0;
unsigned int sp=0;
unsigned int m=0;
unsigned char dimmzl=0; //beim nulldurchgang auf 0 setzen
unsigned char mode=AB; //modus des dimmer Anschnitt Abschnitt oder PWM
bit strom0_fl=0;


void i2c_int(void)interrupt 6
{
  if(I2STAT==0x60)      //Slaveadresse
    bytenummer=0;
  if(I2STAT==0x80)      //Datenbyte emfangen
    bytenummer++;
  if(I2STAT==0xA0)      //Stop emfangen
    bytenummer=0;
  if(bytenummer>1&&bytenummer<4)  //erstes byte verwerfen
    dimm_I2C[bytenummer-2]=I2DAT; //zweites und drittes byte sind K1 + K2
  SI=0;
  return;
}

void nulldurchgang(void)
  {

  if(mode==AB)
    {
    dimmzl=0;
    if(dimm_I2C[0])  //dimmwert grösser 0 Dimmer  ein bei abschnitt
      K1OUT=0;       //EIN
    if(dimm_I2C[1])  //dimmwert grösser 0 Dimmer  ein
      K2OUT=0;       //EIN
    }
  if(mode==AN)
    {
      dimmzl=0xff;
      K1OUT=1;     //AUS bei anschnitt
      K2OUT=1;
    }
    return;
  }

void ex1_int(void) interrupt 2
{
//sp=zl_50hz;
//  if(mode==AN&&zl_50hz>450)
zl_50hz=0;
//P0_1 =! P0_1;
return;
}

void tim0_int(void) interrupt 1
{
  TL0=0x95;
  TH0=0xff;
  if(zl_50hz<5000)
    zl_50hz++;
  if(mode==AN)
    {
      if(P0_2==1 && strom0_fl==0)//flankenauswertung Strommessen
        {
          strom0_fl=1;
          zl_50hz=85;
        }
      if(P0_2==0)
        strom0_fl=0;
    }
  //if(zl_50hz==460||zl_50hz==205)      //mit r 100K
  if(zl_50hz==330||zl_50hz==85)         //mit 68nF
      nulldurchgang();
  if(mode==AB)
    {
      if(dimmzl!=255)
        dimmzl++;
      if(dimmzl>=dimm_I2C[0])
        K1OUT=1;
      if(dimmzl>=dimm_I2C[1])
        K2OUT=1;
    }
  if(mode==AN)
    {
      if(dimmzl!=0)
        dimmzl--;
      if(dimmzl==dimm_I2C[0]&& dimm_I2C[0]>0)
          K1OUT=0;
      if(dimmzl==dimm_I2C[1]&& dimm_I2C[1]>0)
          K2OUT=0;
    }
  //P0_1 =! P0_1;
   return;
}
void in50hz_init(void)
{
  P1M1 |= (1<<4); //Pin P1.4 input
  P1M2 &= ~(1<<4);
  EX1=1; //Externer interrupt ein
  IT1=1; //fallende flanke
  IP0H |= 0x01;
  EA=1;  //globale interruptfreigabe
  return;

}


void main(void)
{
  int i;
//  rs_init(9600);
  i2c_sla_init();
  in50hz_init();
  P1M1 |= 0x03; //rs232 open drain
  P1M2 |= 0x03; //rs232 open drain

 // rs_send_s("Programmstart\n");

  P0M1 &= ~0xc0; //pin 0.6 und 0.7 Ausgang
  P0M2 |= 0xc0;
  K1OUT=0;
  K2OUT=0;

  TMOD=0x01;   // Timer 0 als reload
  //AUXR1&=~0x10;             // toggled whenever Timer0 overflows ausschalten
  ET0=1;                        // Interrupt für Timer 0 freigeben
  IP0 |= 0x02;
  TR0=1;                        // Timer 0 starten
  EA=1;

  P0M1 &= ~(1<<1); // P0_1 = EINGANG zum test
  P0M2 &= ~(1<<1);
  P0_1=1;

  P0M1 |= (1<<2); // P0_2 = EINGANG zum test
  P0M2 &= ~(1<<2);
  P0_2=0;

  if(P0_1==0)
    {
      mode=AN;    //anschnittdimmer
 //     rs_send_s("Anschnitt\n");
    }
  while(1)
    {
      /*if(m<sp-1||m>sp+1)
        {
          rs_send_hex(sp>>8);
          rs_send_hex(sp&0xff);
          rs_send(' ');
          m=sp;
        }*/


      if(dimm_I2C[0]!=mk[0]||dimm_I2C[1]!=mk[1])
         {
   //       rs_send_s("D");
   //       rs_send_hex(dimm_I2C[0]);
   //       rs_send(' ');
   //       rs_send_hex(dimm_I2C[1]);
  //        rs_send_s("\n");
          mk[0]=dimm_I2C[0];
          mk[1]=dimm_I2C[1];
         }
      else
        for (i=0;i<5000;++i);

    }

}


