/*
 * fb_i2c.c
 *
 *  Created on: 02.01.2009
 *      Author: Richard
 */
#include <P89LPC922.h>
#include "fb_i2c.h"

//#include "fb_rs232.h"


void i2c_sla_init(void)
{
  P1M1 |= 0x0c;//(1<<2)+(1<<3);
  P1M2 &= ~0x0c;
  I2ADR = 0xa0; // default slave address
  I2CON = 0x44;
  I2SCLH=0; //I2C takt
  I2SCLL=0; //I2C takt
  SDA=1;
  SCL=1;
  EI2C=1;
  EA=1;
  return;
}

void i2c_ma_init(void)
{
  P1M1 |= 0x0c;//(1<<2)+(1<<3);
  P1M2 |= 0x0c;//((1<<2)+(1<<3));
  I2ADR = 0xa0; // default slave address
  I2CON = 0x44;
  I2SCLH=17; //I2C takt
  I2SCLL=17; //I2C takt
  SDA=1;
  SCL=1;
  return;
}
unsigned char i2c_wait(void)
        {
        unsigned int timeueberlauf=0;

        while (SI==0)
                {
                //rs_send_s("I2C warten auf Gesendet\n");
                timeueberlauf++;
                if(timeueberlauf>MAX_I2C_ZEIT)
                  {
                    //rs_send_s("TimeOutI2C\n");
                    SI=0;
                    return 0xFF;

                  }
                }
        //rs_send_s("I2C Send OK\n");
        SI=0;
        return 0;
        }


unsigned char i2c_send_daten(unsigned char K1,unsigned char K2)
  {
    unsigned char m1=P0M1;      //wert sichern
    unsigned char m2=P0M2;      //wert sichern
    P0M1=0xFF;  //eingänge umschalten wegen Tastererweiterung
    P0M2=0x00;  //eingänge umschalten wegen Tastererweiterung
    I2SCLH=17;
    I2SCLL=17;
    I2CON=0;
    I2EN=1;         //Master Transmit mode
    CRSEL=0;        //CRSEL=0
    STA=1;           //send Start MASTER
    if(i2c_wait()!=0)
            return 0xff;
    STA=0;
    I2DAT = 0xa0+0;//a0= adresse i2c eeprom 0=schreiben SLA_W;       //Adresse senden MASTER
    if(i2c_wait()!=0)
            return 0xff;
    I2DAT = 0x00;                           //Daten Senden MASTER
    if(i2c_wait()!=0)
            return 0xff;
    I2DAT = K1;                             //Daten Senden MASTER
    if(i2c_wait()!=0)
            return 0xff;
    I2DAT = K2;                             //Daten Senden MASTER
    //AA=0;
    if(i2c_wait()!=0)
            return 0xff;
    STO=1;            //send Stop MASTER
    P0M1=m1;  //eingänge umschalten wegen Tastererweiterung
    P0M2=m2;  //eingänge umschalten wegen Tastererweiterung
    return 0;
  }



