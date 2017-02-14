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



#include "fb_app_in8.h"
#include "../com/fb_rs232.h"

#ifdef IN8_2TE
#include "spi.h"
#endif

//unsigned char prot_timer;
unsigned char portbuffer,p0h;
unsigned int objstate;		// Zwischenspeicher der Objektzustände x.1 (Bit 0-7) und x.2 (Bit 8-15)
unsigned char blocked;			//zwischenspeicherung der Sperren
unsigned char timer_base,timer_state;			// Timer für Schaltverzögerungen, wird alle 130ms hochgezählt
unsigned int timer;
unsigned char timerbase[TIMERANZ];// Speicherplatz für die Zeitbasis
unsigned char timercnt[TIMERANZ];// speicherplatz für den timercounter und 1 status bit
unsigned char timerstate[TIMERANZ];//
unsigned char pinnoX4,para_adr,pinno;
unsigned char para_value;
//unsigned char __at 0x08 objectvalue_zl[2];
unsigned char __at (0x08) objectvalue_l[8];
unsigned char __at (0x10)	objectvalue_h[8];
unsigned char __at (0x18) Sperre;
unsigned int  __at (0x19) zaehlervalue[2];
unsigned char __at (0x1E) schrittzaehler[2];//
__bit objval=0,jobj=0;
__bit st_Flanke=0;

void pin_changed(unsigned char pin_no)
{
//	long duration=1;		// falls seitens ETS falsch programmiert 8ms default
#ifdef zaehler
	int maxzaehler;
#endif
	unsigned char tmp;
	unsigned char objoffset=8;
	unsigned char typ=0;
	unsigned char n;
	timer_base=0;
	para_value=0;

	pinno=pin_no;
	pinnoX4=pinno*4;
	para_adr=0xD5+(pinnoX4);
	n;

	if (debounce(pinno))			// Entprellzeit abwarten und prüfen
  {
	timer_base=(eeprom[0xF6+((pinno+1)>>1)]>>(4*((pinno&0x01)^0x01)))&0x07  ;
	st_Flanke=(((portbuffer>>pinno)&0x01)==0) && (((p0h>>pinno)&0x01)==1);
	timer_state=timerstate[pinno];
	switch ((eeprom[0xCE+(pinno>>1)] >> ((pinno & 0x01)*4)) & 0x0F)	// Funktion des Eingangs
    {
    case 0x01:				// Funktion Schalten
    	schalten(st_Flanke,pinno);			// Flanke Eingang x.1

#ifdef zykls	// mit zyklisch senden Eingang normal behandeln
		schalten(st_Flanke,pinno+8);		// Flanke Eingang x.2

#else			// ohne zyklisch senden dafür 2. schaltebene
        tmp=(eeprom[para_adr]&0x0C);//0xD5/ bit 2-3 zykl senden aktiv 2. Schaltebene
		if ((tmp==0x04 && st_Flanke==1)||(tmp==0x08 && st_Flanke==0)){
        	 timercnt[pinno]= eeprom[para_adr+1]+ 0x80;//0xD6 Faktor Dauer )
         	 timerbase[pinno]=0;
         	 timer_state = 0x20|st_Flanke;//speichern des portzustandes
         }
         else {// kein zyklsenden, bzw loslassen
         			timercnt[pinno]=0;
         			schalten(st_Flanke,pinno+8);		// Flanke Eingang x.2
         }
#endif
     break;
      case 0x02:				// Funktion Dimmen
    		/***********************
    		 * Funktion Dimmen
    		 ***********************/
#ifdef dimmer
         if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
  			timercnt[pinno]=0x80+(eeprom[0xD7+(pinnoX4)]&0x7F);	// Faktor/Dauer
			timerbase[pinno]=timer_base;

   			objval=(read_obj_value(pinno+8)>>3)&0x01;
  			switch (eeprom[para_adr]&0x70) {
  			case 0x00:	// UM Dimmen
  				objval = !objval;	// Dimmrichtung ändern
  				break;
  			case 0x10:				// zweiflaechen heller parametriert
  			case 0x30:
  				objval=1;
  				break;
  			default:
  			//case 0x20:			// zweiflaechen dunkler parametriert
  			//case 0x40:
  				objval=0;
  			}
  			if(objval){	// wenn heller dimmen soll
  				timer_state = ((eeprom[para_adr+0x01]&0x38)>>3)+ 0x48;	// dimmen
  				}
  			else{		// wenn dunkler dimmen soll
  				timer_state = (eeprom[para_adr+0x01]&0x07)+ 0x40;	// dimmen
  				}
          }
  		else {		// Taster losgelassen
  			if ((timer_state & 0x50)== 0x40) {		// wenn delaytimer noch laeuft, dann Schalten, also EIS1 telegramm senden
  	//		if (timercnt[pinno]>0x80) {		// wenn delaytimer noch laeuft, dann Schalten, also EIS1 telegramm senden
  		  				objval = read_obj_value(pinno);
  				switch (eeprom[para_adr]&0x70) {//Bedienkonzept angucken
  				case 0x10:	// zweiflaechen ein
  					objval=1;
  					break;
  				case 0x20:	// zweiflaechen aus
  					objval=0;
  					break;
  				default:
  			//	case 0x00:	// UM Einflaeche
  			//	case 0x30:	// UM-heller
  			//	case 0x40:	// UM-dunkler
  					objval = !objval;
  				}
  				write_send(pinno,objval);
  				timercnt[pinno]=0;
  			}
  			else {	// Timer schon abgelaufen (also dimmen), dann beim loslassen stop-telegramm senden
  				tmp=read_obj_value(pinno+8);
  				if (eeprom[0xD5+(pinnoX4)] & 0x08) {	// ... natuerlich nur wenn parameter dementsprechend
  					write_send(pinno+8, tmp & 0x08);		// Stop Telegramm
  				}
  				else write_obj_value(pinno+8,tmp & 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
				timer_state=0;
				timercnt[pinno]=0;
  			}

  		}
#endif
        break;

        case 0x03:				//Funktion Jalousie
        	/****************************
        	 * Funktion Jalousie
        	 ****************************/
        	n=0xD8+(pinno*4);
			para_value=(eeprom[n]&0x30)>>4;//Jalofunktion holen
			switch (para_value){
				case 1:		//auf
					jobj=0;
				break;
				case 2:		//ab
					jobj=1;
				break;
				case 3:		//UM
	    			jobj=read_obj_value(pinno+8)^0x01;//neues Jaloobj invers zum langzeit
	    		break;
			}
			if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
            	if(eeprom[n]& 0x08){	//wenn Bedienkonzept lang-kurz ()
            		//timerbase[pinno]=0;
            		timer_state = jobj+0x80;
            		timercnt[pinno]=0x80;//langzeit in delay_timer SOFORT ausführen
            	}
            	else{								//wenn Bedienkonzept kurz-lang-kurz
	            	write_send( pinno, jobj);	// Kurzzeit telegramm immer bei Drücken senden
	    			timercnt[pinno]=0x80+eeprom[0xD6+(pinno*4)];//Faktor Dauer )
	    			timerbase[pinno]=timer_base;
	    			// Zeit zwischen kurz und langzeit)
	     			//
	    			timer_state = jobj+0x80;
	            }// ende Bedienkonzept lang-kurz-lang
            }//ende steigende Flanke
    		else {	// Taster losgelassen
  			if (timer_state & 0x10) write_send( pinno, jobj);	// wenn delaytimer noch laueft und in T2 ist, dann kurzzeit telegramm senden
    			else timercnt[pinno]=0;	// T2 bereits abgelaufen
    		}
        break;

#ifdef wertgeber
    	/**********************************************************
    	 * Funktion Wertgeber Dimmen,Temparatur,Helligkeit
    	 **********************************************************/

        case 0x04:// Dimmwertgeber
        	para_value=0xFF;
        	typ=0x01;
        	objoffset=0;//läuft absichtlich in den nächsten case
        case 0x07:// Temperaturwertgeber
         	//para_value=para_value |0x1F; <--wird in Helligkeitswertgeber eh nochmal erledigt!
         	typ=typ|0x02;//kein objoffset zugewiesen,d.h. 8,da mit 8 initialisiert
        case 0x08:// Helligkeitswertgeber,
        	para_value=para_value |0x1F;
        	typ=typ|0x04;//kein objoffset zugewiesen,d.h. 8,da mit 8 initialisiert
        	n=0xD5+(pinno*4);
        	tmp=(((eeprom[n]&0x04)>>2)|(eeprom[n+1]&0x80)>>6);//in tmp steigend fallend reaktion
        	if (st_Flanke){// Taster gedrueckt       in tmp bit0 steigend, bit1 fallend

        		if(tmp&0x01) write_send( pinno+objoffset, eis5conversion((eeprom[n+2]& para_value),typ));	//wert senden
        	}//ende steigende Flanke
    		else {	// Taster losgelassen dimmwert senden
  			if (tmp>=0x02) write_send( pinno+objoffset, eis5conversion(eeprom[n+tmp]& para_value,typ));
    		}
         break;

         case 0x05:
    	/*******************************************
    	 * Funktion Wertgeber Lichtszenen
    	 *******************************************/
        	 n=0xD5+(pinno*4);
        	 para_value=eeprom[n] & 0x0C;

		if (st_Flanke){// Taster gedrueckt
			if(para_value!=0x04) write_send( pinno,eeprom[n+2]&0x7F );	// Lichtszenennummer senden
		}
		else{
			if(para_value>=0x04) write_send( pinno,eeprom[n+3]&0x7F );	// Lichtszenennummer senden
		}

        break;
#endif


#ifdef zaehler
         case 0x09:
        	/*******************************************
        	 * Funktion Impulszaehler
        	 *******************************************/
        	n=eeprom[0xD5+(pinno*4)];// Parameter Flanke für Zählimpuls
        	if (pinno<=1){// pinno 0-1 Zähleingnag
        		if ((n&0x01 && st_Flanke)||(n&0x02 &! st_Flanke)){
        			if (zaehlervalue[pinno]< 0xFFFF)zaehlervalue[pinno]++;
        		}
        	}
        	else{ //pinno also grösser 1, bei Impulszähler hier die Syncron eingänge
        		n=eeprom[0xD5+((pinno-2)*4)];// Parameter Flanke für Zählimpuls
        		if ((n&0x04 && st_Flanke)||(n&0x08 &! st_Flanke)){
        			if (pinno==2){
        				zaehlervalue[0]=0;//pinno-2 , da die parameter den zählereingangen zugeordnet sind
        				timercnt[0]=eeprom[0xD6]|0x80;//Torzeit setzen
        				timerbase[0]=((eeprom[0xF6]&0xF0)>>4)|0x80;
        			}
        			else{
        				zaehlervalue[1]=0;//pinno-2 , da die parameter den zählereingangen zugeordnet sind
        				timercnt[1]=eeprom[0xD6]|0x80;//Torzeit setzen
        				timerbase[1]=((eeprom[0xF7]&0x0F))|0x80;

        			}
        		}
        		n = n & 0xF0;
        		tmp=0;
        		if (st_Flanke){// telegramme bei synceingang
        			if(n==0x40||n==0x60)tmp=0x11;
        			if(n==0x80||n==0x90)tmp=0x10;
        			if(n==0xC0||n==0xF0)tmp=0x12;
        		}
        		else {			// fallende flanke
        			if(n==0x10||n==0x90)tmp=0x11;
        			if(n==0x20||n==0x60)tmp=0x10;
        			if(n==0x30||n==0xF0)tmp=0x12;
        		}
        		if (tmp==0x12)tmp= (read_obj_value(pinno)^0x01)|0x10;
        		if(tmp)write_send(pinno,tmp&0x01);
        	}
        	break;
        case 10:// ### Schaltzähler ###
        	n=eeprom[0xD5+(pinno*4)];// Parameter Flanke für Zählimpuls
            	if ((n&0x01 && st_Flanke)||(n&0x02 &! st_Flanke)){
            		zaehlervalue[pinno]++;// zählwert erhöhen
            		schrittzaehler[pinno]++;// schrittzähler erhöhen
            		maxzaehler=(eeprom[para_adr +2]<<8) +eeprom[para_adr+3];
            		tmp=0;
            		if (zaehlervalue[pinno]>=maxzaehler){// wenn zählwert erreicht
            			tmp=(n>>6);// parameter für ausgange 1Bit
            			if (tmp==0x03)tmp= (read_obj_value(pinno)^0x01);//UM
                		if (tmp==0x02)tmp=0;// AUS
            			write_send(pinno,tmp);// 1Bit objekt senden
            			send_obj_value(pinno+8);//16Bit objekt senden
                		schrittzaehler[pinno]=0;// reset schritt
                		while(TR1);
                		zaehlervalue[pinno]=0;// reset Zähler
                	}
                	if(schrittzaehler[pinno]>=eeprom[para_adr+1]){// wenn schrittzählerwert erreicht
            			send_obj_value(pinno+8);// 16Bit objekt senden
                		schrittzaehler[pinno]=0;		// reset schrittzähler
                	}
            	}

        	break;
        default:
        break;
#endif
    }
	timerstate[pinno]=timer_state;
  }// end if (debounce)...
//  IE1=0;	// IRQ 1 Flag zurücksetzen
//  EX1=1;	// externen Interrupt 1 wieder freigeben
}






#ifdef wertgeber
int eis5conversion(unsigned char zahl,unsigned char Typ)
{
	unsigned char exp=0;
	unsigned int wert=0;
	if (Typ==4){// Helligkeitwert
		exp=3;// Da kleinster wert 50 lux*100=5000 ==> 5000/8 (exp=3)
	 	wert=zahl*625;//= 625
	}
	if (Typ==6){// Temperaturwert kleinster wert =1 größter 31

		wert=zahl*100;// Hier reicht uns eine 16bit int var
	}
	if (Typ==7){// wenn Dimmwert ( EIS2, also keine Fließkomma)
		wert=zahl;
	}
	else{// fließkomma EIS5 berechnen
	 		while (wert > 2047){//solange Mantisse größer 11 Bit
	 			wert=wert>>1;// Mantisse /2
	 			exp++;// und exponent um 1 erhöhen (ist ein 2^exp)
	 		}
	}
 	return (wert+(exp<<11));// exponent dazu, geht auch bei EIS2 da EXP hier 0 ist.
}
#endif

/**
* zaehlt alle 130ms die Variable Timer hoch und prueft records
*
* \param void
* @return void
*/
void delay_timer(void)
{
	unsigned char  m,objno,n;
	unsigned int timerflags;
	__bit jobj=0;


//	SET_RTC(65)// timer auf die hälfte der kleinsten basis setzen
	RTCCON=0x60;		// RTC anhalten und Flag löschen
	RTCH=0x0E;			// reload Real Time Clock
	RTCL=0xA0;			// auf 65ms
	RTCCON=0x61;//	START_RTC	// RTC starten
	timer++;
	timerflags = timer&(~(timer-1));// flanke generieren
	for(n=0;n<16;n++){
		if(timerflags & 0x0001){// positive flags erzeugen und schieben
			for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
				if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
					if (timercnt[m]>0x80){// wenn der counter läuft...
						timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
					}// end if (timercnt...
				}//end if(timerbase...
			}// end  for(m..
		}// end if timer...
		timerflags = timerflags>>1;
	}//end for (n=...

	for(objno=0;objno<8;objno++) {
		timer_state=timerstate[objno];
		if(timercnt[objno]==0x80) {

#ifndef zykls
			if (timer_state & 0x20){

					schalten(timer_state & 0x01,objno+8);
					jobj=read_obj_value((objno&0x07)+8);
		/*			if(timerbase[objno]<15){
						schalten(jobj,objno+8);
					}
		*/			//timercnt[objno]=(eeprom[0xD6+(objno*4)]&0x7F)+0x80;
					//schalten(timer_state & 0x01,objno+8);
					//timerbase[objno]=0;
					timercnt[objno]=0;
					//timerstate=0;
			}
#endif
			if (timer_state & 0x80) { // 0x80, 0x81 für langzeit telegramm senden
						write_send( objno+8, timer_state & 0x01);	// Langzeit Telegramm senden
						// *** delay record neu laden für Dauer Lamellenverstellung ***

		    			m = eeprom[0xD7+(objno*4)];	// Faktor Dauer	Lamelle	T2
		    			if (m > 3){// wenn lamellenverstellzeit >3 dann zeit sichern und kurztele zwecks stop
		    				//d.h. bei minimum nach ETS Faktor=3 T2 ist abgeschaltet->kein stop
		    				//damit kann Jalousie als schalter mit 2 schaltebenen verwendung finden

		    				timerbase[objno]= ((eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07);
		    				jobj=read_obj_value((objno&0x07)+8);
		    				timerstate[objno]= jobj|0x10; // 0x10,0x11 fuer ende T2 (lamellenvestellzeit)
		    				timercnt[objno]= m + 0x80;
		    			}
						else timercnt[objno]=0;
		    			//timerbase[objno]=0;
			}
			switch (timer_state & 0x50){
			case 0x10:
						timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
			break;
#ifdef dimmer
			case 0x40:
				 // 0x4x fuer Dimmer Funktion
						write_send( objno+8, timer_state );	// Langzeit Telegramm senden
						timerstate[objno]|=0x10;
						timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
						timerbase[objno]=(eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x0F;	//Basis Tele wdg
			break;
			case 0x50: // 0x50 Dimmer telegramm wiederholung
						timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
						send_obj_value(objno+8);
			break;
#endif
			default:
			}
#ifdef zaehler
			if(timer_state==0 && (timerbase[objno]& 0x80)==0x80){//Impulszähler
        			timercnt[objno]=eeprom[0xD6+(objno)*4]|0x80;//Torzeit setzen;Löschung anfordern
        			timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))|0xC0;
        			send_obj_value(objno+8);
			}
#endif
		}// end if(timercnt...
	} // end for(objno...

}


void schalten(__bit risefall, unsigned char pinno)	// Schaltbefehl senden
{
	unsigned char func,sendval=0;

		func=eeprom[0xD7+(pinno & 0x07)*4]; //0xD7
		if (pinno>=8)func=func>>4;			// wenn 2. Schaltobjekt dann obere 4 bit
		if (risefall) func=(func>>2);		// Funktion bei steigender Flanke obere 2 bit
		func=func&0x03;					// Funktion maskieren
		if (func!=0)
		{
			if (func==0x03) sendval=read_obj_value(pinno) ^0x01;  //UM
			else sendval = func & 0x01;	// EIN   AUS
			write_send(pinno,sendval);
		}

}





unsigned char debounce(unsigned char pinno)	// Entprellzeit abwarten und prüfen !!
{
  unsigned char debtime,n,w;//,ret;//,port_help;
  debtime=eeprom[DEBTIME];			// Entprellzeit in 0,5ms Schritten
  if (debtime>0) {
	  for(n=0;n<debtime;n++){
	  	for(w=112;w>0;w--);
	  	}// delay ca. 4,5µs
  }

#ifndef IN8_2TE
  return ((~(P0^p0h))& bitmask_1[pinno]);//ret=1;

#else
  return ((~(spi_in_out()^p0h))& bitmask_1[pinno]);//ret=1;

#endif

}



void write_value_req(unsigned char objno)		// Objekt-Wert setzen gemäß empfangenem EIS Telegramms
{
	unsigned char para_value,tmp;
	unsigned char objtype;
    objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
    				if (objno<16) {					// Status der Eingangsobjekte 0-15
#ifdef zaehler
    					if (objtype<=6){
	    					write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
	    				}
	    				if (objtype==7)write_obj_value(objno,telegramm[8]);
	    				if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
#else
    					write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
#endif
    				}
    				else{		//16-23 Sperrobjekte
    					tmp=telegramm[7]& 0x01;
    					if (read_obj_value(objno)^tmp) {// nur wenn sich Objekt geändert hat
	    					write_obj_value(objno,tmp);// objekt sichern
	    					para_value= (eeprom[0xD5+((objno & 0x07)*4)]&0x03);
	    					tmp = tmp ^ ((para_value) & 0x01);//bei 'nicht invertieren' invertieren,weil wir invertiert abfragen :-(
	    					if (para_value){			// wenn eine sperre aktiviert parametriert ist
	    						if(tmp){		//nicht gesperrt(invertierte Abfrage)
	    							blocked=blocked & (0xff-(bitmask_1[objno&0x07]));
	    						}
	    						else {			//gesperrt
	    							blocked=blocked |bitmask_1[objno&0x07];
	    						}
    							sperren(objno&0x07,tmp);//temp=1 bedeutet Freigabe
	    					}//ende if para_value
    					}//ende if read...
    				}//ende if (objno<16)..

}// end function


void sperren (unsigned char obj,unsigned char freigabe)
{
	__bit objval=0;
	//__bit sending ;
	//sending=1;
	unsigned char sendobj=255;//obj=obj & 0x07;
	switch ((eeprom[0xCE+(obj>>1)] >> ((obj & 0x01)*4)) & 0x0F){// Funtion des zugehörigen Eingangs
	case 0x01:// funktion Schalten sperren
		sendobj=obj;
		switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){

			case 0x04:		//EIN
				objval=1;
			break;
			case 0x08:		//AUS
				objval=0;
			break;
			case 0x0C:	//UM
				if (freigabe){ //ende sperre-> aktueller Zustand
				objval= (portbuffer>>obj)& 0x01;
				}
				else{
    			objval=read_obj_value(obj)^0x01;//Tele invers senden
				}
			break;
			default:
			sendobj=255;
		}

		//if (sending) write_send(obj,objval);
	break;
	case 0x02:// funktion Dimmer-sperren
#ifdef dimmer
		objval = read_obj_value(obj);
		sendobj=obj;
		if (freigabe){		// Ende Sperre
			if (eeprom[0xD5+(obj*4)]&0x80) objval=0;
			else sendobj=255;
		}
		else{				// Beginn Sperre
			switch (eeprom[0xD5+(obj*4)+1]& 0xC0) {//Bedienkonzept angucken
			case 0x40:	// zweiflaechen ein
				objval=1;
				break;
			case 0x80:	// zweiflaechen aus
				objval=0;
				break;
			case 0xC0:	// UM-heller
				objval = !objval;
				break;
			default:
			sendobj=255;
			}
		}
		//if (sending) write_send(obj,objval);	// value senden
#endif
	break;
	case 0x03:// Funktion Jalousie - Sperren
		sendobj=obj+8;
		switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
			case 0x04:		//ab
				objval=0;
			break;
			case 0x08:		//auf
				objval=1;
			break;
			case 0x0c:	//UM
    			objval=read_obj_value(obj+8)^0x01;//neues Jaloobj invers zum langzeit
    		break;
			default:
			sendobj=255;
		}
		//if (sending) write_send(obj+8,objval);
	break;
	}// Ende switch funktion
	if(sendobj<=16){
		write_obj_value(sendobj,objval);
		while(!send_obj_value(sendobj));
	}

}// End function



/**
* Objektwert lesen wurde angefordert, read_value_response Telegramm zurücksenden
*
*
* @return
*
*/
void read_value_req(unsigned char objno)
{

	send_obj_value(objno+0x40);
}


void (write_send)(unsigned char objno,unsigned int value){

	write_obj_value(objno,value);
	send_obj_value(objno);
}


void bus_return(void){
	unsigned char n,senden;
	  //  ++++++++++++    Startverhalten bei Buswiederkehr ++++++++++
	__bit objval=0;
	blocked=0;

	for (n=0;n<8;n++){
		  senden=0;
		  timercnt[n]=0;// alle timer ausschalten
		  objectvalue_l[n]=0;
		  objectvalue_h[n]=0;
		  switch ((eeprom[0xCE+(n>>1)] >> ((n & 0x01)*4)) & 0x0F)	// Funktion des objektes
			{
			case 0x01:// schalten
			timerstate[n]=0;
			case 0x03:// Jalousie
		//  case 0x04:// Wertgeber(lichtszene)
				switch(eeprom[0xD5+(n*4)]&0xC0){
				case 0x40:
					objval=1;
					senden=1;
				break;
				case 0x80:
					objval=0;
					senden=1;
				break;
				case 0xC0:
					portbuffer ^= (0x01<<n);//Bit im portbuffer invertieren, löst eine Flanke aus
				}
			break;
			case 0x02://dimmen austele
				if(eeprom[0xD7+(n*4)]&0x80){
					objval=0;
					senden=1;
					}
				if(eeprom[0xD8+(n*4)]&0x80){
					objval=1;
					senden=1;
				//ansonsten nichts tun !
				}
			break;
			case 0x09:	// timer für impulszähler starten falls kein sync angeschlossen
				if (n<=1){
					timercnt[n]=0x80;
					timerbase[n]=0x80;
					zaehlervalue[n]=0;
				}
			//break;
	  		}
		if (senden){
			write_obj_value(n,objval);// eis1, kein selftele, speichern ja
			while(!send_obj_value(n));
		}
		if((eeprom[0xD5+(n*4)]& 0x03)==2){ //bei invertierter Sperre Sperrobjekt setzen.
			Sperre |= bitmask_1[n];
		}
		else{
			Sperre &= (~bitmask_1[n]);
		}
	  }
}
#ifdef zaehler
unsigned long read_obj_value(unsigned char objno)
{
	unsigned long objvalue=0;
	unsigned char objtype;
	objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];

	if (objno <= 15) {	// wenn objno <= anzahl objekte
		if (objtype>=8){// bei 16bit
			if (objno>=8 && objno<=9)objvalue=zaehlervalue[objno&0x01];//objvalue=objvalue<<8;
			else {
				objvalue=objectvalue_h[objno&0x07]<<8;
				objvalue+=(objectvalue_l[objno&0x07]);
			}
		}
		else objvalue = objectvalue_l[objno]&(0xFF>>(7-objtype));
	}
	else {// also >15
		objvalue=(Sperre>>(objno-16))&0x01;
	}
	return(objvalue);

}



void write_obj_value(unsigned char objno,long objvalue)
{
	unsigned char objtype;

	objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];

	if (objno <= 15) {	// wenn objno <= anzahl objekte
		if (objtype>=8){
			//objno &= 0x07;
			if (objno>=8 && objno<=9)zaehlervalue[objno&0x01]=objvalue ;
			else{
				objectvalue_h[objno&0x07]=(objvalue>>8);
				objectvalue_l[objno&0x07]=objvalue & 0xFF;
				}
		}
		else 			objectvalue_l[objno]=objvalue & 0xFF;
	}
	else {// also >15
		Sperre &= (0xff-(bitmask_1[objno-16]));
		Sperre |= ((objvalue&0x01)<<(objno-16));
	}
}
#else


unsigned long read_obj_value(unsigned char objno)
{
	unsigned long objvalue=0;
	unsigned char objtype;
	objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];

	if (objno <= 15) {	// wenn objno <= anzahl objekte
		if (objtype>=8){// bei 16bit
			objvalue=objectvalue_h[objno&0x07]<<8;
			objvalue+=(objectvalue_l[objno&0x07]);//objvalue=objvalue<<8;
		}
		else objvalue = objectvalue_l[objno]&(0xFF>>(7-objtype));
	}
	else {// also >15
		objvalue=(Sperre>>(objno-16))&0x01;
	}
	return(objvalue);
}



void write_obj_value(unsigned char objno,long objvalue)
{
	unsigned char objtype;

	objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];

	if (objno <= 15) {	// wenn objno <= anzahl objekte
		if (objtype>=8){
			objectvalue_h[objno&0x07]=objvalue>>8;
			objno &= 0x07;
		}
		objectvalue_l[objno]=objvalue & 0xFF;

	}
	else {// also >15
		Sperre &= (0xff-(bitmask_1[objno-16]));
		Sperre |= ((objvalue&0x01)<<(objno-16));
	}
}
#endif


void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
{
#ifdef in4
	P0M1=0x0F;	//P0_0-0_3 auf input only (high impedance!)
	P0M2=0x00;	// 0_4-0_7 auf  push-pull
	P0=0xFF;

#else
#ifndef IN8_2TE
	P0M1=0xFF;	//P0 auf input only (high impedance!)
	P0M2=0x00;
	P0=0xFF;
#else
	P0M1=0x00;	// P0_1 Biderektional, Rest PushPull
	P0M2=0xFD;
	P0=0x22;	// WRITE=1 SER_IN=1
#endif
#endif
	RTCCON=0x81;		// RTC starten

	timer=0;			// Timer-Variable, wird alle 65ms inkrementiert
/*
  EA=0;
  START_WRITECYCLE
  WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
  WRITE_BYTE(0x01,0x04,0x04)
//  WRITE_BYTE(0x01,0x05,0x70)	// Geräte Typ (2118) 7054h
//  WRITE_BYTE(0x01,0x06,0x54)  // 	"	"	"
//  WRITE_BYTE(0x01,0x07,0x02)	// Versionsnummer
  WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
  WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
//  WRITE_BYTE(0x01,0x12,0x84)	// COMMSTAB Pointer
  STOP_WRITECYCLE

  EA=1;
*/

}
