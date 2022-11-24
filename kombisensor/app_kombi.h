/**
 * app_kombi.h
 */
#ifndef FB_APP_KOMBI
#define FB_APP_KOMBI

#define	TEMPCORR			0xCA	// Abgleichwert für Temperatur in 0,1°C (-127 bis 128)
#define FUNKTION			0xCB	// schalten oder wert senden
#define LUXDELAY3			0xCC
#define LUXDELAY12			0xCD

#define TEMPPARAM			0xD2
#define LUXPARAM			0xD3

#define VERKWERT2L			0xD7
#define VERKWERT2H			0xD8
#define VERKLUX2			0xD9
#define	VERKCTRL2			0xDA
#define VERKCYCLE_TEMP2		0xDB

#define WINDEXIST			0xDC

#define VERKWERT1L			0xDD
#define VERKWERT1H			0xDE
#define VERKLUX1			0xDF
#define	VERKCTRL1			0xE0
#define VERKCYCLE_TEMP1		0xE1

#define WINDCTRL			0xE2

#define TEMPWERT2L			0xE3
#define TEMPWERT2H			0xE4
#define	TEMPCTRL2			0xE5
#define TEMPCYCLE2			0xE6
#define TEMPSCHWELLWERT2	0xE7

#define TEMPWERT1L			0xE8
#define TEMPWERT1H			0xE9
#define	TEMPCTRL1			0xEA
#define TEMPCYCLE1			0xEB
#define TEMPSCHWELLWERT1	0xEC

#define LUX_UNDER3			0xED
#define LUX_OVER3			0xEE
#define LUXCTRL3			0xEF
#define LUXCYCLE3			0xF0
#define LUXSCHWELLWERT3		0xF1

#define LUX_UNDER2			0xF2
#define LUX_OVER2			0xF3
#define LUXCTRL2			0xF4
#define LUXCYCLE2			0xF5
#define LUXSCHWELLWERT2		0xF6

#define LUX_UNDER			0xF7
#define LUX_OVER			0xF8
#define LUXCTRL				0xF9
#define LUXCYCLE1			0xFA
#define LUXSCHWELLWERT		0xFB

#define DELREC_CNT 9

extern unsigned int timer;// Timer für Schaltverzögerungen, wird alle 130us hochgezählt
extern int temp, lasttemp;
extern unsigned int lux, lastlux;
extern __idata unsigned char overrun, underrun, dimmwert, sequence, lockatt, resend;
extern int global_object_value_0_to_1[2];
extern unsigned char global_object_value_3_to_10;

extern __bit bFirstStart;

struct delayrecord
{
	unsigned char delayactive;
	unsigned char delaystate;
	unsigned int delayvalue;
};

extern struct delayrecord delrec[DELREC_CNT];

#define WRITE_DELAY_RECORD(wdro,wdra,wdrs,wdrt) \
	delrec[wdro].delayactive=wdra; \
	delrec[wdro].delaystate=wdrs; \
	delrec[wdro].delayvalue=wdrt; 

void write_delay_record(unsigned char objno, unsigned char state, long deltime);

void restart_app(void);				// Alle Applikations-Parameter zurücksetzen
void schwelle(unsigned char objno);
void delay_timer(void);	// zählt alle 130ms die Variable Timer hoch und prüft Queue

unsigned long read_obj_value(unsigned char objno);
void write_obj_value(unsigned char objno, int objvalue);

#endif  /* FB_APP_KOMBI */
