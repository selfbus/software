/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ /
 *  /_/   /_/ |_/_____/_____/_____/\____//____/
 *
 *  Copyright (c) 2008 Andreas Krebs <kubi@krebsworld.de>
 *                      Richard Weissteiner richard@seelaus.at
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 *
 *
 * 30 12. 2008 umbau auf dimmer begonnen org file fb_app_out.c
 *
 *
 */
 //26.10.2009 werobjekt Senden fehler (Fehler : nur bei eingeschaltenen Rückmelde wertobjekt sendet das Schaltobjekt)
 //3.11.2009 einschalthellikeit (hellikeitswert vor letzten auschalten) fehler behoben
#include <P89LPC922.h>
#include "../com/fb_hal_lpc.h"
#include "../com/fb_prot.h"
#include "fb_app_dim.h"
#include "../com/fb_rs232.h"
unsigned char Tval;
unsigned char portbuffer;	// Zwischenspeicherung der Portzustände
unsigned char zfstate;		// Zustand der Objekte 8-11 = Zusatzfunktionen 1-4
unsigned char blocked;		// Sperrung der 8 Ausgänge (1=gesperrt)
unsigned char logicstate;	// Zustand der Verknüpfungen pro Ausgang
long timer;			// Timer für Schaltverzögerungen, wird alle 130us hochgezählt
bit delay_toggle;		// um nur jedes 2. Mal die delay routine auszuführen

bit write_obj_lz(unsigned char objno,int objvalue);

void send_value(unsigned char type, unsigned char objno, int sval)      // sucht Gruppenadresse für das Objekt objno uns sendet ein EIS Telegramm
{                                                                                                                                       // mit dem Wert sval
  int ga;
  unsigned char objtype;

  ga=find_ga(objno);                            // wenn keine Gruppenadresse hintrlegt nix tun
  if (ga!=0)
  {
    telegramm[0]=0xBC;
    telegramm[1]=eeprom[ADDRTAB+1];
    telegramm[2]=eeprom[ADDRTAB+2];
    telegramm[3]=ga>>8;
    telegramm[4]=ga;
    telegramm[6]=0x00;
    if (type==0) telegramm[7]=0x40;             // read_value_response Telegramm (angefordert)
    else telegramm[7]=0x80;                     // write_value_request Telegramm (nicht angefordert)

    objtype=read_obj_type(objno);

    if(objtype<6) {                             // Objekttyp, 1-6 Bit
        telegramm[5]=0xE1;
        telegramm[7]+=sval;
    }

    if(objtype>=6 && objtype<=7) {              // Objekttyp, 7-8 Bit
        telegramm[5]=0xE2;
        telegramm[8]=sval;
    }

     if(objtype==8) {                           // Objekttyp, 16 Bit
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




void write_value_req(void)				// Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
{
  unsigned char c,objno,gapos,atp,assno,n,gaposh,datal;
  bit b_send=0;//wert setzen und rueckmelden
  unsigned char dataw=0;
  unsigned char sperr=0;
  unsigned char commObjectNumber=0;
    gaposh=0;
    gapos=gapos_in_gat(telegramm[3],telegramm[4]);	// Position der Gruppenadresse in der Adresstabelle

    if (gapos!=0xFF)					// =0xFF falls nicht vorhanden
    {
      send_ack();
      rs_send_s("\nwr_val_rq ");
      atp=eeprom[ASSOCTABPTR];			// Start Association Table
      assno=eeprom[atp];			// Erster Eintrag = Anzahl Einträge
      datal=telegramm[8];                       //wert sichern nach respond ist er anders

      for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
      {
        gaposh=eeprom[atp+1+(n*2)];
        if(gapos==gaposh)			// Wenn Positionsnummer übereinstimmt
        {
          objno=eeprom[atp+2+(n*2)];		// Objektnummer
          commObjectNumber=objno;
          dataw=telegramm[7]&0x3f;

          rs_send_s(" ");
          rs_send_hex(objno);
          rs_send_s(" ");
          rs_send_hex(dataw);
         for(c=0;c<2;c++)
            {
          //KAnal 1+2
              if(dataw==0&&commObjectNumber==c && sperren[c]==0) //schaltobjekt  aus,
                {
                dimmwert[c]=0;
                b_send=1;
                }
              if(dataw==1&&commObjectNumber==c && sperren[c]==0) //schaltobjekt  EIN
                {
                dimmwert[c]=helligkeittsstufe(einschathellikeit[c]-1,c);
                b_send=1;
                }
              if(commObjectNumber==c+2 && sperren[c]==0)         //Dimmobjekt
                {
                dimm_helldunkel[c]=dataw;
                if(dataw==0) //nur senden beim aulassen der taste
                  b_send=1;
               }
              if(commObjectNumber==c+4 && sperren[c]==0)         //Wertobjekt
                {
                dimmwert[c]=telegramm[8];
                b_send=1;
                }
              if(commObjectNumber==c+0x0c && sperren[c]==0)      //Lichtzene
                {
                  if((datal&0x80)==0x80)        //Lichtzenen Speichern mit 0x8n n=szenennummer
                    {
                    if(eeprom[0xe3]&(1<<(4+c))!=0)// speichern nur wenn erlaubt
                          write_obj_lz(0xe7+(datal&~0x80)+(c*8),dimmwert[c]);
                    }
                  else                          //Lichtzenen aufrufen
                    b_send=1;
                  dimmwert[c]=eeprom[0xe7+(datal&~0x80)+(c*8)]; //Nummer der LZ
                }
              if(commObjectNumber==c+0x0a)      // Sperren
                {
                 if(eeprom[0xc3]&(1<<(3+c))!=0)//invertiert
                   {
                   if(dataw==1) sperr=0;
                   else sperr=1;
                   }
                 else sperr=dataw;
                 if (sperr==1)
                   {                          //beginn der sperrung
                   dimmwert[c]=helligkeittsstufe(eeprom[0xdf+c]&0x0f,c);
                   sperren[c]=1;
                   }
                 else
                   {                          //ende der sperrung
                   dimmwert[c]=helligkeittsstufe(eeprom[0xdf+c]>>4,c);
                   sperren[c]=0;
                   }
                 b_send=1;
                }

              if(b_send==1)
                {
                  write_obj_value(c,dimmwert[c]?1:0);     //Schaltobjekt
                  write_obj_value(c+4,dimmwert[c]);       //wertobjekt
                  if(eeprom[0xc3]&(1<<(6+c))!=0)// nur wenn  wertobjekt eingeschalten
                    respond(c+8,dimmwert[c]);
                  respond(c+6,(dimmwert[c]?1:0)+0x80);
                  if(dimmwert[c]>0)
                    ausschalthellikeit[c]=dimmwert[c];
                  b_send=0;

                }
              }

           }
        }
    }
}


bit write_obj_lz(unsigned char objno,int objvalue)  // schreibt den aktuellen Wert eines Objektes ins 'EEprom'
{
        bit write_ok=0;
        while (!write_ok)
            {
            START_WRITECYCLE
            WRITE_BYTE(0x01,objno,objvalue);
            STOP_WRITECYCLE
            if(!(FMCON & 0x01)) write_ok=1;
            }
        return(write_ok);
}

/**
* Objektwert lesen wurde angefordert, read_value_response Telegramm zurücksenden
*
*
* @return
*
*/
void read_value_req(void)
{
        unsigned char objno, objflags;
        int objvalue;

        objno=find_first_objno(telegramm[3],telegramm[4]);      // erste Objektnummer zu empfangener GA finden
        if(objno!=0xFF) {       // falls Gruppenadresse nicht gefunden
                send_ack();

                objvalue=read_obj_value(objno);         // Objektwert aus USER-RAM lesen (Standard Einstellung)

                objflags=read_objflags(objno);          // Objekt Flags lesen
                // Objekt lesen, nur wenn read enable gesetzt (Bit3) und Kommunikation zulaessig (Bit2)
                if((objflags&0x0C)==0x0C) send_value(0,objno,objvalue);
    }
}


void respond(unsigned char objno, unsigned char rval)	// sucht Gruppenadresse für das Objekt objno uns sendet ein Telegramm
{							// mit dem Wert rval
  int ga;
  ga=find_ga(objno);					// wenn keine Gruppenadresse hintrlegt nix tun
  if (ga!=0)
  {
    //EX1=0;
    telegramm[0]=0xBC;
    telegramm[1]=eeprom[ADDRTAB+1];
    telegramm[2]=eeprom[ADDRTAB+2];
    telegramm[3]=ga>>8;
    telegramm[4]=ga;
    telegramm[5]=0xD1;
    telegramm[6]=0x00;
    telegramm[7]=rval;
    if(objno==8||objno==9)   //wert objekt rückmelden 1Byte
      {
        telegramm[5]=0xE2;
        telegramm[7]=0x80;
        telegramm[8]=rval;
      }
    send_telegramm();
    //EX1=1;
  }

}


