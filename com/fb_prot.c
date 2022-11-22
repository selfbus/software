/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2008,2009 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 * 09.11.08	- array delrec[] statt flash fï¿½r zeitverzï¿½gerung, auf 24bit gekï¿½rzt
 * 			- funktionen write_delay_record() und clear_delay_record() angepasst
 * 			- globale variablen pah und pal durch direktes eeprom[] lesen ersetzt
 * 14.11.08	- in find_ga() default value von ga auf 0xFE gesetzt
 * 
 * 
 */
/**
* @file   fb_prot.c
* @author Andreas Krebs <kubi@krebsworld.de>
* @date    2008
* 
* @brief  Hier befinden sich die Protokoll-Handling Routinen fuer den 89LPC922/936
* 
* 
*/




#ifndef LPC936
	#include <P89LPC922.h>
	#include "../com/fb_hal_lpc.h"
	#define USERRAMADDRH	0x1C 
	#define EEPROMADDRH		0x1D
#else
	#include <P89LPC935_6.h>
	#include "../com/fb_hal_lpc936.h"
	#define USERRAMADDRH	0x36 
	#define EEPROMADDRH		0x37
#endif
#include "../com/fb_prot.h"



__bit connected;	/// Programmiermodus, Verbindung steht
unsigned char conh, conl;	/// bei bestehender Verbindung phys. Adresse des Kommunikationspartners
unsigned char pcount;		/// Paketzaehler, Gruppenadresszaehler
unsigned char last_tel;
__bit transparency;
//__bit con_timer_refresh;


/** 
* Interrupt von Timer 1, 370us keine Busaktivitï¿½t seit letztem Byte,
* d.h. Telegramm wurde komplett uebertragen
*
* 
* @return 
*/
void timer1(void) __interrupt 3
{
	unsigned char tpdu;


	EX1=0;					// ext. Interrupt stoppen 
	ET1=0;					// Interrupt von Timer 1 sperren
	set_timer1(4720);		// 4720 und neu starten fuer korrekte Positionierung des ACK Bytes
#ifdef HAND
	REFRESH
	interrupted=1;			// teilt anderen Routinen mit, dass sie unterbrochen wurden
#endif
	
	if(cs==0xff) {			// Checksum des Telegramms ist OK
		if (transparency) last_tel=telpos;
		else {

			tpdu=telegramm[6]&0xC3;
			
			
			// Broadcast, wenn Zieladresse = 0
			if(telegramm[3]==0 && telegramm[4]==0) {		
				
				if(userram[0x60] & 0x01) {		// prog mode
					if(tpdu==0x00 && telegramm[7]==0xC0) set_pa();	// set_pa_req
					if(tpdu==0x01 && telegramm[7]==0x00) read_pa();	// read_pa_req
				}
			}
			
			

			else {	// Unicast oder Multiccast		
				if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag = Bit 7, 0=phys. Adr., 1=Gruppenadr.														
					if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) {	// nur wenn es die eigene phys. Adr. ist
						
						
						// Unicast, wenn Zieladresse physikalische Adresse ist					
						switch (tpdu) {	// transport layer control field
						
						case 0x42:	// Data PDU - memory operations
							//con_timer_refresh=1; // connect timeout auffrischen
							if((telegramm[7]&0xC0)==0x80) write_memory();	// write_memory_request	
							if((telegramm[7]&0xC0)==0x00) read_memory();	// read_memory_request
							break;
							
						case 0x43:	// Data PDU - misc.
							//con_timer_refresh=1; // connect timeout auffrischen
							if(telegramm[7]==0x80) {	// restart request
								restart_hw();			// Hardware zuruecksetzen
								restart_prot();			// Protokoll-relevante Parameter zuruecksetzen
								restart_app();			// Anwendungsspezifische Einstellungen zuruecksetzen
							}
							if(telegramm[7]==0x00) read_masq();		// read_mask_version_request
							break;
							
						case 0x80:	// UCD Verbindungsaufbau
							if(!connected) {		// wenn bereits verbunden: ignorieren
								//con_timer_refresh=1; // connect timeout auffrischen
								connected=1;
							    conh=telegramm[1];	// phys. Adresse des Verbindungspartners
							    conl=telegramm[2];
							    send_ack();			// quittieren
							    pcount=1;			// Paketzaehler zuruecksetzen
							}
							break;
							
						case 0x81:	// UCD Verbindungsabbau
							if(conh==telegramm[1] && conl==telegramm[2] && connected)	{	// nur abbauen, wenn verbunden und Anforderung vom Verbindungspartner, kein ACK senden
								connected=0;
								pcount=1;			// Paketzaehler zuruecksetzen
							}
							break;
							
						case 0xC2:	// ACK PDU
							send_ack();				// auf NCD_Quittierung mit ACK antworten
							break;
							
						case 0xC3:	// NACK PDU
							send_ack();
						}
					}
				}
				
				
				// Multicast, wenn Zieladresse Gruppenadresse ist
				else {
					if(tpdu==0x00){
						if((telegramm[7]&0xC0)==0x80) write_value_req();	// Objektwerte schreiben (zB. EISx)
						if(telegramm[7]==0x00) read_value_req();			// Objektwert lesen und als read_value_response auf Bus senden
					}


				}
			}
		} 
	}
	else {
		if(telpos>1) send_nack();	// falls checksum nicht ok war, nack senden
	}
	telpos=0;  
	IE1=0;					// IRQ Flag zuruecksetzen
	EX1=1;					// externen Interrupt 0 wieder freigeben
	if (!transparency) {	// Telegramm abgearbeitet
		TR1=0;				// Timer 1 stoppen
		cs=0;				// cheksum zurï¿½cksetzen
	}
}// end function



/** 
* Byte empfangen und pruefen ob es ein ACK war
*
* 
*
*/
__bit get_ack(void)
{
  __bit ret;
  unsigned int n;

  n=0;
  ret=0;
  do {
    if(FBINC) n++;
    else {
      if (get_byte()==0xCC && parity_ok) {
    	  ret=1;
    	  n=3000;
      }
    }
  } while (n<3000);
  return(ret);
}



/** 
* sendet das Telegramm, das in telegramm[] vorher abgelegt wurde und berechnet die checksum
*
*
*
*/
void send_telegramm(void)
{
  unsigned char data_laenge,l,checksum,r;
  r=0;
  do
  {
    checksum=0;
    data_laenge=telegramm[5]&0x0F;	// Telegramm-Laenge = Bit 0 bis 3

    set_timer1(18780);			// Warten bis Bus frei ist
    while(!TF1) {
      if(!FBINC) set_timer1(18780);
    }
    TR1=0;
  
    for(l=0;l<=data_laenge+6;l++)
    {
      sendbyte(telegramm[l]);
      checksum^=telegramm[l];
      sysdelay(1230);			// Interbyte-Abstand
    }
    checksum=~checksum;
    sendbyte(checksum);
    if(get_ack()) r=3;		// wenn ACK empfangen, dann nicht nochmal senden
    r++;
    telegramm[0]&=0xDF;			// Bit 5 loeschen = Wiederholung
  }
  while(r<=3); 				// falls kein ACK max. 3 Mal wiederholen
  
}




/** 
* wartet auf Timer 1 wegen korrekter Positionierung und sendet ACK (0xCC)
*
*
*
*/
void send_ack(void)
{
  while(!TF1&&TR1);
  sendbyte(0xCC);
  TR1=0;
  TF1=0;
  ET1=0;
}



/** 
* wartet auf Timer 1 wegen korrekter Positionierung und sendet NACK (0x0C)
*
*
*
*/
void send_nack(void)
{
  while(!TF1&&TR1);
  sendbyte(0x0C);
  TR1=0;
  TF1=0;
  ET1=0;
}


/*
void T_Disconnect(void)
{
	  EX1=0;
	  telegramm[0]=0xB0;			// Control Byte			
	  telegramm[1]=eeprom[ADDRTAB+1];			// Quelladresse ist phys. Adresse
	  telegramm[2]=eeprom[ADDRTAB+2];
	  telegramm[3]=conh;		// Zieladresse ist Quelladresse vom Aufbau
	  telegramm[4]=conl;
	  telegramm[5]=0x60;			// DRL
	  telegramm[6]=0x81;			// 
	  send_telegramm();
      IE1=0;
      EX1=1;
	  connected=0;
	}
*/
/** 
* NCD Quittierung zurueck senden. 
*
* 
* @return Setzt telegramm Bytes 0 bis 6 !!!
*/
void ncd_quit(void)
{
  telegramm[0]=0xB0;			// Control Byte			
  telegramm[3]=telegramm[1];		// Zieladresse wird Quelladresse
  telegramm[4]=telegramm[2];
  telegramm[1]=eeprom[ADDRTAB+1];			// Quelladresse ist phys. Adresse
  telegramm[2]=eeprom[ADDRTAB+2];
  telegramm[5]=0x60;			// DRL
  telegramm[6]|=0xC0;			// Bit 6 und 7 setzen (TCPI = 11 NCD Quittierung)
  telegramm[6]&=0xFE;			// Bit 0 loeschen 
  send_telegramm();
}



/** 
* Maskenversion senden
*
*
*
*/
void read_masq(void)
{

  
  send_ack();
  ncd_quit();				// NCD Quittierung senden

  telegramm[0]=0xB0;			// Control Byte
		
    telegramm[5]=0x63;			// DRL
    telegramm[6]=0x43;
    telegramm[7]=0x40;
    telegramm[8]=0x00;
    telegramm[9]=0x12;			// Maskenversion 1 = BCU1
    send_telegramm();

}




/** 
* read_memory_request - Speicher auslesen und senden
*
*
*
*/
void read_memory(void)
{
	unsigned char ab,n;

	send_ack();					// erstmal ack senden
	ab=telegramm[7];			// Anzahl Bytes
	ncd_quit();					// quittieren
  
	for(n=0;n<ab;n++) {
		if (telegramm[8]==0) telegramm[n+10]=userram[telegramm[9]+n];
		else telegramm[n+10]=eeprom[telegramm[9]+n];    
	}

	telegramm[0]=0xB0;			// read_memory_res senden
			
	telegramm[5]=ab+0x63;		// DRL (Anzahl Bytes + 3)
	telegramm[6]=(pcount<<2)|0x42;	// Paketzaehler, TCPI und ersten beiden Befehlsbits
	telegramm[7]=ab|0x40;		// letzten 2 Befehlsbits
	send_telegramm();

	pcount++;					// Paketzï¿½hler erhoehen
	pcount&=0x0F;				// max. 15
}



/** 
* write_memory_request - empfangene Daten in Speicher schreiben
*
*
*
*/
void write_memory(void)
{
	unsigned char ab,n;
 
	send_ack();
	ab=telegramm[7]&0x0F;		// Anzahl Bytes
	ncd_quit();
  
	FMCON=0x00;					// load command, leert das pageregister
	for(n=0;n<ab;n++) {
		
		// *** noch nicht optimieren, braucht mehr platz, da letzes Vorkommen von write_byte ***
		WRITE_BYTE(telegramm[8],telegramm[9]+n,telegramm[n+10])
		
		if ((((telegramm[9]+n)&0x3F)==0x3F) && n!=(ab-1)) {		// Ende des 64-Byte Pageregisters, also zwischendurch flashen
			STOP_WRITECYCLE			// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
			START_WRITECYCLE		// load command, leert das pageregister
		}
	}
	FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	//if (telegramm[8]==0x00 && telegramm[9]==0x60) progmode=userram[0x60]&0x01;	//Progmode wurde evtl. gesetzt
}



/** 
* neue phys. Adresse programmieren
*
*
*
*/
void set_pa(void)
{
	EA=0;
	FMCON=0x00;				// load command, leert das pageregister
    FMADRH=EEPROMADDRH;
    FMADRL=ADDRTAB+1;
    FMDATA=telegramm[8];
    FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
	FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	EA=1;
}



/** 
* phys. Adresse senden
*
*
*
*/
void read_pa(void)
{
	send_ack();
	telegramm[0]=0xB0;				// read_memory_res senden
    telegramm[1]=eeprom[ADDRTAB+1];	// PA
    telegramm[2]=eeprom[ADDRTAB+2];
    telegramm[3]=0x00;
    telegramm[4]=0x00;			
    telegramm[5]=0xE1;				// DRL
    telegramm[6]=0x01;		
    telegramm[7]=0x40;
    send_telegramm();
}



/** 
* Objektwert lesen angefordert
*
* 
* @return
* @todo: sendet derzeit nur Typen 1 bis 16 Bit
*/

/*
void read_value_req(void)
{
	unsigned char objno, objflags, objtype;
	int objvalue, ga;
	
	objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
	if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
		send_ack(); 
		objvalue=read_obj_value(objno);	// Objektwert aus USER-RAM lesen
		objflags=read_objflags(objno);						// Objekt Flags lesen  
		if((objflags&0x0C)==0x0C) {		// Objekt lesen, nur wenn read enable gesetzt (Bit3) und Kommunikation zulaessig (Bit2)
			telegramm[0]=0xBC;
			telegramm[1]=eeprom[ADDRTAB+1];		// Source Adresse
			telegramm[2]=eeprom[ADDRTAB+2];
			ga=find_ga(objno);
			telegramm[3]=ga>>8;
			telegramm[4]=ga;
			telegramm[6]=0x00;
			telegramm[7]=0x40;
			objtype=read_obj_type(objno);
			if(objtype<6) {		// Objekttyp, 1-6 Bit
				telegramm[5]=0xE1;				// DRL
				telegramm[7]+=objvalue;			// bis zu 6 Bit passen in das Byte 7
			}
			if(objtype>=6 && objtype<=7) {	// Objekttyp, 7-8 Bit
				telegramm[5]=0xE2;				// DRL
				telegramm[8]=objvalue;	
			}		
			if(objtype==8) {		// Objekttyp, 16 Bit
				telegramm[5]=0xE3;				// DRL
				telegramm[8]=objvalue>>8;
				telegramm[9]=objvalue;
			}		
			send_telegramm();
    	}
    }
}	
*/


/** 
* Objektflags lesen
*
*
* \param objno
*
* @return
*/
unsigned char read_objflags(unsigned char objno)
{
  unsigned char ctp,addr,flags;
  
  ctp=eeprom[COMMSTABPTR];		// COMMSTAB Pointer
  addr=ctp+3+3*objno;
  flags=eeprom[addr];	// Objektflags
  return(flags);
}



/** 
* Gruppenadresse ueber Assoziationstabelle finden
*
* Die sendende Adresse ist diejenige, bei der die Objektnummer
* und die Assoziationsnummer uebereinstimmt
*
* \param objno
*
* @return
*/
unsigned int find_ga(unsigned char objno)
{
	unsigned char asstab,gapos,gah,gal;
	unsigned int ga;

	gapos=0xFE;
	asstab=eeprom[ASSOCTABPTR];		// Adresse der Assoziationstabelle

	if(eeprom[asstab+2+2*objno]==objno) gapos=eeprom[asstab+1+2*objno];


    if(gapos!=0xFE) {

    	gah=eeprom[ADDRTAB+1+gapos*2];
    	gal=eeprom[ADDRTAB+2+gapos*2];
    	ga=gal+256*gah;

    }
    else ga=0;

    return(ga);
} 




/** 
* GA-Positionsnummer in Groppenadresstabelle finden
*
* erste GA=1 (da 0=PA)
*
* \param gah
* \param gal
*
* @return
*/
unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
{
  unsigned char ga_position,ga_count,n;
  
  ga_count=eeprom[ADDRTAB];		// Anzahl der Adressen in der Adresstabelle
  ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
  if (ga_count) {
    for (n=1;n<=ga_count;n++) {
      if (gah==eeprom[ADDRTAB+n*2+1] && gal==eeprom[ADDRTAB+n*2+2]) ga_position=n;	// Berechnung in [] nicht in lokale var !!! 
    }
  }
  return (ga_position);
}




/** 
*
*
* \param gah
* \param gal
*
* @return
*/
unsigned char find_first_objno(unsigned char gah, unsigned char gal)
{
	unsigned char gapos, gaposh, atp, assmax, n, objno;
	
	objno=0xFF;
	gapos=gapos_in_gat(gah,gal);
	
	atp=eeprom[ASSOCTABPTR];
	assmax=eeprom[atp];
	if (gapos!=0xFF) {	// falls Gruppenadresse nicht vorhanden
		n=0;
		while(objno==0xFF && n<assmax) {	// Schleife ueber Assoziationstabelle
			gaposh=eeprom[atp+1+(n*2)];
		    if(gapos==gaposh) objno=eeprom[atp+2+(n*2)];
		    n++;
		}       	       
	}
	return (objno);
}




/** 
* 
*
*
* @return gibt den aktuellen Wert eines Objektes zurueck
*/
unsigned int read_obj_value(unsigned char objno)
{
	unsigned char valuepointer, offset, commstab, objtype;
	unsigned int objvalue;
	
	objvalue=0xFFFF;
	offset=objno*3;
	commstab=eeprom[COMMSTABPTR];
	objtype=eeprom[commstab+offset+4];
	
	if (objno <= commstab) {	// wenn objno <= anzahl objekte
		valuepointer=eeprom[commstab+offset+2];
		if (objtype < 8 ) objvalue=userram[valuepointer];
		if (objtype == 8) objvalue=256*userram[valuepointer] + userram[valuepointer+1];
	}
	return(objvalue);
}



/**
*
*
* \param objno
*
* @return gibt den Typ eines Objektes zurueck
*/
unsigned char read_obj_type(unsigned char objno)
{
	unsigned char  commstab, objtype;
	
	objtype=0xFF;
	commstab=eeprom[COMMSTABPTR];	
	if (objno <= commstab) {	// wenn objno <= anzahl objekte
		objtype=eeprom[commstab+objno*3+4];
	}
	return(objtype);
}




/** 
* schreibt den aktuellen Wert eines Objektes ins 'RAM'
*
* \param objno
* \param objvalue
*
* @return
*/
__bit write_obj_value(unsigned char objno,int objvalue)
{
	unsigned char objtype, valuepointer, offset, commstab;
	__bit write_ok=0;
	
	offset=objno*3;
	commstab=eeprom[COMMSTABPTR];
	objtype=eeprom[commstab+offset+4];
	
	if (objno <= commstab) {	// wenn objno <= anzahl objekte
		valuepointer=eeprom[commstab+offset+2];	// Zeiger auf USERRAM, wo der Objekt-Wert gespeichert ist
		
	  // ACHTUNG! die beiden if's nicht zusammenfassen, das braucht mehr Speicher!
		if (objtype < 8) {	// Typ zwischen 1 und 8 Bit gross
			while (!write_ok) {
				FMCON=0x00;					// load command, leert das pageregister
				
				//write_byte(0x00,valuepointer,objvalue & (0xFF>>(7-objtype)));	// nur die tatsaechlich erforderlichen bits speichern
				FMADRH=USERRAMADDRH;
				FMADRL=valuepointer;
				FMDATA=objvalue & (0xFF>>(7-objtype));
				
				
				FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
				if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
			}
		}
		if (objtype == 8) {	// 2-Byte Wert
			while (!write_ok) {
				FMCON=0x00;				// load command, leert das pageregister
				
				//write_byte(0x00,valuepointer,objvalue>>8);
			    FMADRH=USERRAMADDRH;
			    FMADRL=valuepointer;
			    FMDATA=objvalue>>8;
				
				//write_byte(0x00,valuepointer+1,objvalue);
			    FMDATA=objvalue;	// Autoinkrement, nächste Daten
			    
			    
				FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
				if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
			}
		}
	}
	return(write_ok);
}



/** 
* Protokoll-relevante Parameter zuruecksetzen
*
*
*
*/
void restart_prot(void)
{
  
  //progmode=0;			// kein Programmiermodus
	
	EA=0;
	START_WRITECYCLE;
	WRITE_BYTE(0x00,0x60,0x00);
	STOP_WRITECYCLE;
	EA=1;
	
	
  pcount=1;				// Paketzaehler initialisieren
  connected=0;			// keine Verbindung
  
  telpos=0;				// empfangene Bytes an dieser Position im Array telegramm[] ablegen
  last_tel=0;
  transparency=0;
}
