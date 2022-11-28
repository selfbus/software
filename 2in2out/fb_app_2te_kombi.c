/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2009	Andreas Krebs <kubi@krebsworld.de>
 *                      Jan Wegner
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 */



#include <P89LPC922.h>
#include "fb_hal_lpc.h"
#include "2te_prot.h"
#include "2te_delay.h"
#include "fb_app_2te_kombi.h"

/******
 * Ein
 *****/

unsigned char button_buffer; 	// Puffer fuer Taster Werte
__bit portchanged;
__bit direktbetrieb;

__bit wait_bus_return;			//bit ist 1 bei aktiver Verz�gerung bei Buswiederkehr

/*****
 * Aus
 *****/

unsigned char portbuffer;		    // Zwischenspeicherung der Portzust�nde
unsigned char gblocked;			    // Sperrung der Ausg�nge und Eing�nge (1=gesperrt)
unsigned char logicstate;		    // Zustand der Verkn�pfungen pro Ausgang
long timer;						    // Timer f�r Schaltverz�gerungen, wird alle 130us hochgez�hlt
__bit delay_toggle;				    // um nur jedes 2. Mal die delay routine auszuf�hren
unsigned char owntele;			    // Anzahl der internen Verarbeitungen eines gesendeten Telegrammes (R�ckmeldung)
unsigned char respondpattern;	    // bit wird auf 1 gesetzt wenn objekt eine r�ckmeldung ausgel�st hat


unsigned char objektwerte[12];


/*****************
 * Eing�nge
 *****************/

/**
*  Ein oder mehrere Taster wurden gedrueckt oder losgelassen
*
* \param  portval <Beschreibung>
* @return void
*/
void port_changed(unsigned char portval)
{
	unsigned char n, buttonpattern, debtime;

    debtime=eeprom[0xD2]; // Entprellzeit in 0,5ms Schritten
			for(n=0;n<debtime;n++) delay(110);

			if ((PORT & 0x0C) == portval) {
			for (n=0; n<=1; n++) {	// alle 2 Eing�nge einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
        buttonpattern=4<<n;
				if ((portval & buttonpattern) && !(button_buffer & buttonpattern)) button_changed(n,1);	// Taster losgelassen
				if (!(portval & buttonpattern) && (button_buffer & buttonpattern)) button_changed(n,0);	// Taster gedrueckt
            }
			button_buffer=portval;	// aktuellen port wert in buffer fuer naechsten Vergleich uebernehmen
        }

        }


/**
* Taster geaendert
*
* \param  buttonno <Beschreibung>
* \param  buttonval <Beschreibung>
*
* @return void
*/
void button_changed(unsigned char buttonno, __bit buttonval)
{
	unsigned char command,command_help;
	__bit objval;

	unsigned char n,m;

	if (((eeprom[FUNCTION] >> (buttonno*4))&0x03) == 1)		// Funktion des Tasters
	{

		command_help=eeprom[COMMAND+(buttonno*4)];

		for (n=0;n<=1-direktbetrieb;n++)	// Auswahl Objekt X.1 bzw X.2 aber nicht bei Direktbetrieb
		{
			command = ((command_help >> (2*buttonval+4*n)) & 0x03);
			objval=command&0x01;
			if (command==3)
			{
				objval=!(lese_objektwerte(buttonno+(2+8*n)*(!direktbetrieb)));
			}
			if (command)
			{
				if (direktbetrieb)
				{
					object_schalten(buttonno,objval);	// bei Direktbetrieb kein Tele sonder direkt schalten
				}
				else
				{
					if ((gblocked&((buttonno+1)<<2))==0)
					{
						send_value(1,(buttonno + 2+8*n),objval);

						m=8+4*(2*buttonno+n);

						if (delrec[m]&0x80) delrec[m]&=0x7F;	// zyklisch Senden wieder starten (n�tig bei "keine Reaktion" nach Sperrung
					}

				}
			}
		}

	}

}




/******************
 * Ausg�nge
 ******************/

/**
* Schaltet einen Ausgang gem�� objstate und den zugeh�rigen Parametern
*
* \param  objno <Beschreibung>
* \param  objstate <Beschreibung>
*
* @return void
*/
void object_schalten(unsigned char objno, __bit objstate)
{

	unsigned char port_pattern,objflags,delay_base,delay_state,delay_zeit,logicfunc;
	unsigned long delay_target,delay_onoff;
	__bit off_disable,rel_mode, objlogicstate;

	objlogicstate=((logicstate>>objno)&0x01);

	delay_zeit=((eeprom[0xE9]>>objno)&0x01);

	off_disable=((eeprom[OFFDISABLE]>>objno)&0x01);	// nur ausschalten wenn AUS-Tele nicht ignoriert werden soll

	off_disable=off_disable & delay_zeit; // in OFFDISABLE stehen nur die Werte wenn Zeitschaltfunktion an

	if ((!objstate && !off_disable) || objstate) {

		schreibe_objektwerte(objno,objstate);

		objflags=read_objflags(objno);			// Objekt Flags lesen
		port_pattern=0x01<<objno;

		logicfunc=0;

		if (((eeprom[FUNCTYP]>>objno*2)&0x03)==0x00) logicfunc=(eeprom[LOGICTYP]>>objno*2)&0x03;


		if((port_pattern & (gblocked&0x03))==0 && (objflags&0x14)==0x14) {	// Objekt ist nicht gesperrt und Kommunikation zul�ssig (Bit 2 = communication enable) und Schreiben zul�ssig (Bit 4 = write enable)

			if (objno==1) delay_base=eeprom[0xF7]& 0x0F;
			else delay_base=(eeprom[0xF6]>>4) & 0x0F;

			delay_onoff=0;
			delay_state=0;

			rel_mode=(eeprom[RELMODE]>>objno)&0x01;


			// Ausschalten
			if ( (objstate==0 && (logicfunc==0 || (logicfunc==1 && objlogicstate==0x00) || logicfunc>=2))
					|| (objstate==1 && (logicfunc>=2 && objlogicstate==0x00)) )

//			if (objstate==0)
			{
			delay_onoff=((eeprom[objno+0xE7]) & 0x7F);  //Zeitfaktor Auschaltverz�gerung angepasst (bit 0-6)

				if(delay_onoff==0x00 || delay_zeit==0x01) {		// sofort ausschalten
					if (!rel_mode) portbuffer=portbuffer&~port_pattern;	// Schliesserbetrieb RELMODE angepasst
					else portbuffer=portbuffer|port_pattern;						// �ffnerbetrieb

					respond(objno,0x00);  //R�ckmeldeobjekt angepasst
				}
				else delay_state=0x80;				// verz�gert ausschalten
			}


			// Einschalten
			if ( (objstate==1 && (logicfunc==0 || logicfunc==1 || (logicfunc>=2 && objlogicstate==0x01)))
					|| (objstate==0 && (logicfunc==1 && objlogicstate==0x01)) )


//			if (objstate==1)
			{
				delay_onoff=((eeprom[objno+0xE5]) & 0x7F);  //Zeitfaktor Einschaltverz�gerung angepasst (bit 0-6)
				if(delay_onoff==0x00) {
					if(delay_zeit==0x01) { 			// Zeitschaltfunktion
						delay_state=0x80;
						delay_onoff=((eeprom[objno+0xE7]) & 0x7F);  //Zeitfaktor Auschaltverz�gerung angepasst (bit 0-6)
					}
					if (!rel_mode) portbuffer=portbuffer|port_pattern;	// sofort einschalten (Schliesserbetrieb) RELMODE angepasst
					else portbuffer=portbuffer&~port_pattern;					// sofort einschalten (�ffnerbetrieb)

					respond(objno,0x01);  //R�ckmeldeobjekt angepasst
				}
				else delay_state=0x81;				// verz�gert einschalten
			}

			if(delay_state!=0) {				// wenn Verz�gerung, dann timer-Wert ins Flash schreiben
				delay_target=(delay_onoff<<delay_base)+timer;
				write_delay_record(objno,delay_state,delay_target);
			}
			else clear_delay_record(objno);
		}
		if (portbuffer != userram[0x29]) portchanged=1;
	}
}

/**
* z�hlt alle 130ms die Variable Timer hoch und pr�ft Queue
*	Zeitfunktionen f�r Ausg�nge
*	Zyklisch senden
*	Wartezeit Busspannungswiederkehr
*
* \param  void
*
* @return void
*/
void delay_timer(void)
{
	unsigned char objno,delay_state,port_pattern,delay_zeit,delay_onoff,delay_base,m,o,zyk_basis,zyk_faktor,p;
	unsigned long delval,delay_target,zyk_val;

	__bit rel_mode,objval;

	RTCCON=0x60;		// RTC anhalten und Flag l�schen
	RTCH=0x0E;			// reload Real Time Clock
	RTCL=0xA0;

	if (delay_toggle) {	// RTC l�uft auf 65ms, daher nur jedes 2. mal timer erh�hen
		timer++;
//		if (timer==0x01000000) timer=0;	// nur 3 Byte aktiv
		timer&=0x00FFFFFF;

		for(objno=0;objno<=6;objno++) {  //nur zwei Objekte Relais angepasst
			delay_state=delrec[objno*4];
			if(delay_state!=0x00) {			// 0x00 = delay Eintrag ist leer
				delval=delrec[objno*4+1];
				delval=(delval<<8)+delrec[objno*4+2];
				delval=(delval<<8)+delrec[objno*4+3];
				if(delval==timer) {

					if (objno<=1)	// Zeitfunktionen Ausg�nge
					{
						portchanged=1;
						port_pattern=0x01<<objno;

						rel_mode=(eeprom[RELMODE]>>objno)&0x01;

						if(delay_state==0x81) {	// einschalten
							if (!rel_mode) { //RELMODE angepasst
								portbuffer=portbuffer|port_pattern;		// Einschalten (Schliesserbetrieb)
							}
							else {
								portbuffer=portbuffer&~port_pattern;	// Einschalten (�ffnerbetrieb)
							}
							respond(objno,0x01);			// ggf. R�ckmeldung angepasst
							delrec[objno*4]=0;
							delay_zeit=((eeprom[0xE9]>>objno)&0x01);

							if(delay_zeit==0x01) {

								if (objno==1) delay_base=eeprom[0xF7]& 0x0F;
								else delay_base=(eeprom[0xF6]>>4) & 0x0F;

								delay_onoff=eeprom[objno+0xE7];  //Ausschaltverz�gerung angepasst
								//if (delay_onoff!=0x00 && delay_zeit!=0x00) {
								if (delay_onoff!=0x00) {
									delay_target=(delay_onoff<<delay_base)+timer;
									write_delay_record(objno,0x80,delay_target);		// Schaltverz�gerung in Flash schreiben
								}
							}
						}
						else {	// ausschalten
							if (!rel_mode) {  //RELMODE angepasst
								portbuffer=portbuffer&~port_pattern;		// Ausschalten (Schliesserbetrieb)
							}
							else {
								portbuffer=portbuffer|port_pattern;			// Ausschalten (�ffnerbetrieb)
							}
							respond(objno,0x00);				// ggf. R�ckmeldung angepasst
							delrec[objno*4]=0;
						}

					}
					else if (objno<=5)	// Zyklisch Senden Eing�nge
					{
						m=(objno&0x04)>>2;
						o=objno&0x01;
						p=objno+7*o-m;

						zyk_faktor=eeprom[0xDE+4*m]&0x7F;
						zyk_basis=((eeprom[0xF7+m+4*o])>>(2*(objno&0x02))&0x0F);

						zyk_val=(zyk_faktor<<zyk_basis) + timer;

						delrec[objno*4+1]=zyk_val>>16;
						delrec[objno*4+2]=zyk_val>>8;
						delrec[objno*4+3]=zyk_val;

						objval=lese_objektwerte(p);

						if ((delrec[4*objno]&0x80)==0)	// pr�fen ob Eingang gesperrt ist, dann kein senden
						{
							if (((delrec[4*objno]&0x7F)>>!objval)&0x01)
							{
								send_value(2,p,objval);
							}

						}

					}

					else	// Wartezeit Busspannungswiederkehr
					{
						delrec[6*4]=0;

					}

				}
			}
		}

	}

	RTCCON=0x61;		// RTC starten
	delay_toggle=!delay_toggle;
}


/**
* Schaltet die Ports mit PWM, DUTY ist Pulsverh�ltnis
*
* \param  ports
*
* @return void
*/
void port_schalten(unsigned char ports, __bit NoPWM)		//
{
	if(NoPWM || (ports & ~userram[0x29])) {	// Vollstrom nur wenn ein relais eingeschaltet wird
		TR0=0;
		AUXR1&=0xE9;	// PWM von Timer 0 nicht mehr auf Pin ausgeben
		PWM=0;			// Vollstrom an

		P0_0=(ports & 0x01);
		P0_1=((ports >> 1) & 0x01);

		TF0=0;			// Timer 0 f�r Haltezeit Vollstrom verwenden
		TH0=0x00;		// 16ms (10ms=6fff)
		TL0=0x00;
		TMOD=0x11;		// Timer 0 als 16-Bit Timer, Timer 1 als 16-Bit Timer
		TAMOD=0x00;
		TR0=1;
	}
	else
	{
		P0_0=(ports & 0x01);
		P0_1=((ports >> 1) & 0x01);
	}

	START_WRITECYCLE
	WRITE_BYTE(0x00,0x29,ports)
	STOP_WRITECYCLE
	portchanged=0;

}



/**
* sucht Gruppenadresse f�r das Objekt objno uns sendet ein EIS 1 Telegramm
*
* \param  objno
* \param  rval
*
* @return void
*/
void respond(unsigned char objno, unsigned char rval)
{							// mit dem Wert rval (0x80 oder 0x81) f�r R�ckmeldeobjekte
	unsigned int ga;
//	unsigned char inv;

	if ((owntele < 3) && ((respondpattern & (1<<(objno))) == 0)) {  //Objektnummer angepasst
		respondpattern |= (1<<(objno)); //Objektnummern angepasst
		owntele++;


		ga=find_ga(objno+16);					// wenn keine Gruppenadresse hinterlegt nix tun
		if (ga!=0) {
			EX1=0;
			telegramm[0]=0xBC;
			telegramm[1]=eeprom[ADDRTAB+1];
			telegramm[2]=eeprom[ADDRTAB+2];
			telegramm[3]=ga>>8;
			telegramm[4]=ga;
			telegramm[5]=0xE1;
			telegramm[6]=0x00;
//			objno=objno-16;  //Objektnummer angepasst

//			inv=eeprom[0xF1];  //Verhalten R�ckmeldung angepasst
//			inv=(eeprom[0xF1]>>objno)&0x01;

//			objno=objno+16;

/*			if (inv==0) {
				telegramm[7]=rval;
				write_obj_value(objno,rval);
			}
			if (inv==1) {
				if (rval==0x80)
				{
					telegramm[7]=0x81;
					write_obj_value(objno,1);	// R�ckmeldeobjektwert setzen
				}
				else
				{
					telegramm[7]=0x80;
					write_obj_value(objno,0);	// R�ckmeldeobjektwert setzen
				}
			}
*/
/*			inv=eeprom[0xF1];
			inv=(inv>>objno)&0x01;
			if (inv==0) telegramm[7]=0x80+rval;
			if (inv==1) {
				if (rval==0) telegramm[7]=0x81;
				else telegramm[7]=0x80;
			}
*/
//			telegramm[7]=0x80+(rval^((eeprom[0xF1]>>objno)&0x01));


			rval^=((eeprom[0xF1]>>objno)&0x01);
//			write_obj_value(objno,rval);

			schreibe_objektwerte(objno+16,rval);

			telegramm[7]=0x80+rval;


			send_telegramm();
			EX1=1;
			write_value_req();

		}
	}
}


/**
* Empfangenes write_value_request Telegramm verarbeiten
*
* \param  void
*
* @return void
*/
void write_value_req(void)	//
{
	  unsigned char objno,gapos,atp,assno,n,gaposh,zftyp,objno_help;
	  unsigned char blockstart,blockend,blockpol_help,blockact_help, ohs,m;
	  unsigned char portstate, lastportstate, restorestate;
	  __bit objval;

	    gapos=gapos_in_gat(telegramm[3],telegramm[4]);	// Position der Gruppenadresse in der Adresstabelle
	    if (gapos!=0xFF)					// =0xFF falls nicht vorhanden
	    {
		  if ((telegramm[1] != eeprom[ADDRTAB+1]) || (telegramm[2] != eeprom[ADDRTAB+2])) {
			  send_ack();
		  }
		  atp=eeprom[ASSOCTABPTR];			// Start Association Table
	      assno=eeprom[atp];				// Erster Eintrag = Anzahl Eintr�ge

	      for(n=0;n<assno;n++)				// Schleife �ber alle Eintr�ge in der Ass-Table, denn es k�nnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	      {
	        gaposh=eeprom[atp+1+(n*2)];
	        if(gapos==gaposh)					// Wenn Positionsnummer �bereinstimmt
	        {
	          objno=eeprom[atp+2+(n*2)];				// Objektnummer

	          /***************************
	           * Ausg�nge
	           ***************************/

	          if (objno<=1)
	          {
	        	  object_schalten(objno,telegramm[7]&0x01);	// Objektnummer 0-1 entspricht den Ausg�ngen 1-2 angepasst
	          }


	          /***************************
	           * Eing�nge 1.Objekt
	           ***************************/

	          else if (objno<=3)
	          {
	        	  schreibe_objektwerte(objno,telegramm[7]&0x01);
	          }


	          /***************************
	           * Zusatzfunktionen Ausg�nge zftyp 00=Verk�pfung 01=Sperren 02=Zwangsstellung
	           ***************************/

	          else if (objno<=9)	// Objektnummer 8 und 9 entspricht den Zusatzfunktionen 1 (Ausgang1)und 2 (Ausgang2)
	          {

	        	  schreibe_objektwerte(objno,telegramm[7]&0x01);

	        	  blockstart=0;
	        	  blockend=0;

	        	  objno_help=objno-8;
	        	  ohs=(0x01<<objno_help);

	        	  blockact_help=eeprom[BLOCKACT]>>(objno_help)*4;

	        	  blockstart=blockact_help&0x03;
	        	  blockend=(blockact_help>>2)&0x03;

	        	  zftyp=(eeprom[FUNCTYP]>>(objno_help)*2)& 0x03;

	        	  switch (zftyp)
	        	  {
						case 0x00:			// Verkn�pfung
							if (telegramm[7]==0x80)
							{
								logicstate=logicstate&(0xFF-ohs);
							}
							if (telegramm[7]==0x81)
							{
								logicstate=logicstate|ohs;
							}
							object_schalten(objno_help, telegramm[7]&0x01);
							break;

						case 0x01:			// Sperren
							blockpol_help=eeprom[BLOCKPOL]&ohs;

							if (((telegramm[7]==0x80) && (blockpol_help==0)) || ((telegramm[7]==0x81) && (blockpol_help!=0)))
							{	// Ende der Sperrung
								gblocked=gblocked&(0xFF-ohs);
								if (blockend==0x01) portbuffer=portbuffer&(0xFF-ohs); 	    // Bei Ende der Sperrung ausschalten
								else if (blockend==0x02) portbuffer=portbuffer|ohs; 		// Bei Ende der Sperrung einschalten
								else {
									restorestate = lese_objektwerte(objno_help); // Bei Ende der Sperrung Ursprungszustand wiederherstellen
									portbuffer = portbuffer | (restorestate << objno_help);
								}
							}

							if (((telegramm[7]==0x81) && (blockpol_help==0)) || ((telegramm[7]==0x80) && (blockpol_help!=0)))
							{	// Beginn der Sperrung
								gblocked=gblocked|(ohs);
								if (blockstart==0x01) portbuffer=portbuffer&(0xFF-ohs);     // Bei Beginn der Sperrung ausschalten
								else if (blockstart==0x02) portbuffer=portbuffer|ohs; 		// Bei Beginn der Sperrung einschalten

								delrec[objno_help*4]=0;	// ggf. Eintrag f�r Schaltverz�gerung l�schen
							}
							break;

					//case 0x02:			// Zwangsstellung

	        	  }

	    	      if (portbuffer != userram[0x29]) {
	    	    	  portchanged=1;//post f�r port_schalten hinterlegen

	    	    	  lastportstate = userram[0x29] & 0x01;
	    	    	  portstate = portbuffer & 0x01;
	    	    	  if (portstate != lastportstate) respond(objno_help, portstate);  //R�ckmeldeobjekt Ausgang 1 angepasst

	    	    	  lastportstate = (userram[0x29] >> 1) & 0x01;
	    			  portstate = (portbuffer >> 1) & 0x01;
	    			  if (portstate != lastportstate) respond(objno_help, portstate);  //R�ckmeldeobjekt Ausgang 2 angepasst
	    	      }
	          }


	          /***************************
	           * Eing�nge 2.Objekt
	           ***************************/

	          else if (objno<=11)
	          {
	        	  schreibe_objektwerte(objno,telegramm[7]&0x01);
	          }


	          /***************************
	           * R�ckmeldung
	           ***************************/

	          else if (objno<=17)	// kann nicht geschrieben werden, nur wegen else if Auswertung
	          {

	          }

	          /***************************
	           * Zusatzfunktionen Eing�nge Sperren
	           ***************************/

	          else
	          {

	        	  schreibe_objektwerte(objno,telegramm[7]&0x01);


	        	  objno_help=objno-18;
		          ohs=(0x04<<objno_help);

		          blockstart=(eeprom[0xDD+objno_help*4]>>4)&0x03;
		          blockend=eeprom[0xE0+objno_help*4]&0x03;

            	  blockpol_help=eeprom[0xDD+objno_help*4]&0x03;

            	  if ((telegramm[7]-0x7f)==blockpol_help)
            	  {	// Ende der Sperrung

            		  gblocked=gblocked&(0xFF-ohs);  // Bit 3 und 4 f�r die Eing�nge Objekt 3 und 4

            		  if (blockend)
            		  {
                		  if (blockend==3)	// aktuellen Wert der Eing�nge
                		  {
                			  port_changed(PORT & ohs);
                			  button_buffer=!PORT & ohs;
                		  }
                		  else	// EIN oder AUS
                		  {
                			  for(m=2;m<=10;m=m+8)
                			  {
                				  send_value(1,(objno_help + m),(blockend & 0x01));
                			  }
                		  }

                		  m=8+8*objno_help;
    	                  if (delrec[m]&0x80) delrec[m]&=0x7F;
    	                  m=m+4;
    	                  if (delrec[m]&0x80) delrec[m]&=0x7F;

            		  }
            	  }

            	  else
            	  {	// Beginn der Sperrung

	                  gblocked=gblocked|(ohs);  // Bit 3 und 4 f�r die Eing�nge Objekt 3 und 4

	                  if (blockstart)
	                  {
	                	  for(m=2;m<=10;m=m+8)
	                	  {
	                		  if (blockstart==3)	// UM
	                		  {
	                			  objval = lese_objektwerte(objno_help + m);
			                	  objval = !objval;
	                		  }
	                		  else	// EIN oder AUS
	                		  {
	                			  objval=blockstart & 0x01;
	                		  }
							  send_value(1,objno_help + m,objval);
	                	  }
	                  }
	                  //zyk senden l�schen aber merken
	                  m=8+8*objno_help;
	                  if (delrec[m]) delrec[m]|=0x80;
	                  m=m+4;
	                  if (delrec[m]) delrec[m]|=0x80;
            	  }
	          }// Ende Zusatzfunktionen Eing�nge
	        }
	      }
	    }
	    owntele=0;
	    respondpattern=0;

}


/**
* Empfangenes read_value_request Telegramm verarbeiten
*
* \param  void
*
* @return void
*/
void read_value_req(void)
{
	unsigned char objno, objflags;
	unsigned int objvalue;

	objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
	if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
		send_ack();

//		objvalue=read_obj_value(objno);		// Objektwert aus USER-RAM lesen (Standard Einstellung)
		objvalue=lese_objektwerte(objno);

		objflags=read_objflags(objno);		// Objekt Flags lesen
		// Objekt lesen, nur wenn read enable gesetzt (Bit3) und Kommunikation zulaessig (Bit2)
		if((objflags&0x0C)==0x0C) send_value(0,objno,objvalue);
    }

}


/**
* sucht Gruppenadresse f�r das Objekt objno uns sendet ein EIS Telegramm
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
//  unsigned char objtype;

  ga=find_ga(objno);					// wenn keine Gruppenadresse hintrlegt nix tun
  if (ga!=0)
  {
    telegramm[0]=0xBC;
    telegramm[1]=eeprom[ADDRTAB+1];
    telegramm[2]=eeprom[ADDRTAB+2];
    telegramm[3]=ga>>8;
    telegramm[4]=ga;
    telegramm[6]=0x00;
//    if (type==0) telegramm[7]=0x40;		// read_value_response Telegramm (angefordert)
//    else telegramm[7]=0x80;				// write_value_request Telegramm (nicht angefordert)

    telegramm[7]=0x80;
    if (type==0) telegramm[7]=0x40;


//    objtype=read_obj_type(objno);

//    if(objtype<6) {					// Objekttyp, 1-6 Bit
    	telegramm[5]=0xE1;
    	telegramm[7]+=sval;
//    }

 /*   if(objtype>=6 && objtype<=7) {	// Objekttyp, 7-8 Bit
    	telegramm[5]=0xE2;
    	telegramm[8]=sval;
    }

     if(objtype==8) {				// Objekttyp, 16 Bit
    	telegramm[5]=0xE3;
    	telegramm[8]=sval>>8;
    	telegramm[9]=sval;
    }
*/

    EX1=0;
    send_telegramm();
    IE1=0;
    EX1=1;

    if (type==1)
    {
//    	write_obj_value(objno,sval);
    	schreibe_objektwerte(objno,sval);

    	EA=0;
    	START_WRITECYCLE
    	WRITE_BYTE(0x00,objno,sval)
    	STOP_WRITECYCLE
    	EA=1;

    	write_value_req();
    }

  }
}




/**
* schreibt die Objektwerte in eine Variable
*
*
* \param  objno
* \param  objvalue
*
* @return void
*/
void schreibe_objektwerte(unsigned char objno, unsigned char objvalue)
{
	unsigned char objekt_pos;

	objekt_pos=((objno>>1)&0xFE)+(objno&0x03);	// Anpassung Objektnummer an Variablenindex

	objektwerte[objekt_pos]=objvalue;
}


/**
* schreibt die Objektwerte in eine Variable
*
* \param  objno
*
* @return objvalue
*/
unsigned char lese_objektwerte(unsigned char objno)
{
	unsigned char objekt_pos;

	objekt_pos=((objno>>1)&0xFE)+(objno&0x03);	// Anpassung Objektnummer an Variablenindex

	return(objektwerte[objekt_pos]&0x01);
}



/**
* delay ca. 4,5�s * w
*
* \param  w
*
* @return void
*/
void delay(int w)	//
{
	int n;
	for(n=w;n>0;n--) {}
}



/**
* Verhalten bei Busspannungswiederkehr Ein und Ausg�nge
*
* \param  void
*
* @return void
*/
void bus_return(void)
{

	unsigned char n,m, bw, bwe;

	/**************************
	 * Verhalten bei Busspannungswiederkehr Ausg�nge
	 *************************/

	TMOD=0x12;		// Timer 0 als PWM, Timer 1 als 16-Bit Timer
	TAMOD=0x01;
	TH0=0x50;		// Pulsverh�ltnis PWM
	AUXR1|=0x10;	// PWM von Timer 0 auf Pin ausgeben, gleichzeitig low-powermode ein (da <8MHz)
	ET0=0;			// Interrupt f�r Timer 0 sperren
	TR0=1;			// Timer 0 starten (PWM)


	portbuffer=userram[0x29];


	bw=(eeprom[0xF3])&0x03;
	if(bw==0x01)  portbuffer=portbuffer & (0xFE);
	if(bw==0x02)  portbuffer=portbuffer | (0x01);

	bw=((eeprom[0xF3])>>2)&0x03;
	if(bw==0x01)  portbuffer=portbuffer & (0xFD);
	if(bw==0x02)  portbuffer=portbuffer | (0x02);


	port_schalten(portbuffer, 0x01); // dont use PWM to switch on the relais if needed

	portchanged=1;

	owntele=1;
	respond(0,(portbuffer & 0x01));
	owntele=1;
	respond(1,((portbuffer>>1) & 0x01));




	/**************************
	 * Verhalten bei Busspannungswiederkehr Eing�nge
	 *************************/
	direktbetrieb=(eeprom[0xF4] & 0x01);

	if (!direktbetrieb)		// Eing�nge auf Bus
	{
		for(n=0;n<=1;n++) {			// Eing�nge 1 und 2

			bw=(((eeprom[(0xDD + (4 * n))])& 0xC0)>>6);
			bwe=PORT & (0x04<<n);

			if (bw!=0)
			{
				if (bw==3)
				{
					button_changed(n,bwe>>(2+n));
				}
				else
				{
					for(m=2;m<=10;m=m+8)
					{
//						write_obj_value(n + m,(bw & 0x01));
						send_value(1,(n + m),(bw & 0x01));
					}
				}
			}
		}
		button_buffer=PORT & 0x0C;

	}

	wait_bus_return=0;

}



/**
* Alle Applikations-Parameter zur�cksetzen
*
* \param  void
*
* @return void
*/
void restart_app(void)
{

	unsigned long delay_target;
	unsigned char zyk_basis, n, m, o,zyk_funk;


	RTCCON=0x60;		// RTC anhalten und Flag l�schen
	RTCH=0x0E;			// reload Real Time Clock
	RTCL=0xA0;

	P0M1=0x0C;          // port 0 output mode 1
	P0M2=0x03;          // port 0 output mode 2 =>
	                    // pin 0.2 & 0.3 as inputs
	                    // pin 0.0 & 0.1 as outputs (push-pull)

	PORT=0x0C;				// Taster auf high, Ausg�nge zun�chst aus
	button_buffer=~0x0C;	// Variable f�r letzten abgearbeiteten Taster Status


	// zur�cklesen der Objektwerte der Eing�nge
	objektwerte[2]=userram[2];
	objektwerte[3]=userram[3];
	objektwerte[6]=userram[10];
	objektwerte[7]=userram[11];



	// Zeit f�r Busspannungswiederkehr ins delrec schreiben
	delay_target=((eeprom[0xD4]&0x7F)<<((eeprom[0xFE]>>4)&0x0F));
	write_delay_record(6,1,delay_target);

	wait_bus_return=1;


	// Bedingungen f�r zyklisch senden ins delrec schreiben
	for (n=2;n<=5;n++)
	{
		m=n>>2;
		o=n&0x01;

		zyk_funk=(eeprom[0xDD+4*m]>>2)&0x03;

		zyk_basis=((eeprom[0xF7+m+4*o])>>(4*(n&0x02))&0x0F);

		if (o==1 && zyk_basis==0x0F)
		{
			zyk_funk=0;
		}

//		delrec[n*4]=zyk_funk;
//		delrec[n*4+3]=0x0F;
		write_delay_record(n,zyk_funk,0x01);

	}

	owntele=0;
	respondpattern=0;
	gblocked=0;
	

	// Beispiel f�r die Applikations-spezifischen Eintr�ge im eeprom
	EA=0;						// Interrupts sperren, damit flashen nicht unterbrochen wird
	START_WRITECYCLE
	WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
	WRITE_BYTE(0x01,0x04,0x04)
	WRITE_BYTE(0x01,0x05,0x20)	// Devicetype 0x2071 = Jung Schaltaktor 2fach 6A UP
	WRITE_BYTE(0x01,0x06,0x71)
	WRITE_BYTE(0x01,0x07,0x01)	// Versionnumber of application programm
	WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	WRITE_BYTE(0x01,0x12,0x84)	// COMMSTAB Pointer
	STOP_WRITECYCLE

	START_WRITECYCLE;
	WRITE_BYTE(0x00,0x60,0x2E);	// system state: all layers active (run), not in prog mode
	STOP_WRITECYCLE;
	EA=1;						// Interrupts freigeben

	timer=0;			// Timer-Variable, wird alle 130ms inkrementiert
	RTCCON=0x61;		// RTC starten


}
