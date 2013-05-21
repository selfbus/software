/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2008-2012 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 */

#ifndef FB_APP_FT
#define FB_APP_FT

#define ASSOCTABPTR 	0x11	// Adresse des Pointers auf die Assoziations-Tabelle
#define COMMSTABPTR 	0x12	// Adresse des Pointers auf die Kommunikationsobjekt-Tabelle
#define ADDRTAB		0x16	// Startadresse der Adresstabelle
#define FUNCASS		0xD8	// Startadresse der Zuordnung der Zusatzfunktionen (2 Byte)
#define FUNCTYP		0xED	// Typ der Zusatzfunktion
#define LOGICTYP	0xEE	// Verknüpfungs Typ 0=keine 1=ODER 2=UND 3=UND mir Rückführung
#define BLOCKACT	0xEF	// Verhalten beim Sperren
#define RELMODE		0xF2	// Relaisbetrieb
#define	DELAYTAB	0xF9	// Start der Tabelle für Verzögerungswerte (Basis)

#define TLlocal		0x03
#define LL			0x04

#define RSIN_NONE      0
#define RSIN_VARFRAME  1
#define RSIN_FIXFRAME  2

#ifdef FB_APP_FT_C
#define FB_APP_EXTERN
#else
#define FB_APP_EXTERN extern
#endif

#define LED_run 	P0_1
#define LED_data	P0_0

FB_APP_EXTERN unsigned char rsin[32];
FB_APP_EXTERN unsigned char rsinpos, switch_mode, rsin_stat;
FB_APP_EXTERN __bit fcb, tel_was_acked;
FB_APP_EXTERN unsigned char property_5;
FB_APP_EXTERN __bit ft_ack;

extern unsigned char timer_data;

void ft_process_var_frame();
void ft_process_fix_frame();
void ft_process_telegram(void);
void PEI_identify_req(void);
void ft_send_T_DataConnected_conf();
void ft_send_L_Data_conf();
void ft_send_Read_Memory_Res(unsigned char bytecount, unsigned char adrh, unsigned char adrl);
// void ft_set_header(unsigned char length, unsigned char control);
//bit ft_get_ack(void);
void ft_rs_init(void);
void ft_send_frame(void);
void ft_send_fixed_frame(unsigned char controlfield);
void serial_int(void) __interrupt (4) __using (2);
// void ft_send_char(unsigned char sc);
void restart_app(void);		// Alle Applikations-Parameter zurücksetzen
void write_value_req(void);
void read_value_req(void);
unsigned long read_obj_value(unsigned char objno);
#endif
