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
 *
 */
/**
* @file   fb_delay.h
* @author Andreas Krebs <kubi@krebsworld.de>
* @date    2009
* 
* @brief  Hier sind ausschliesslich das Array und die Zeitschaltfunktionen fuer den 89LPC922
* 
* 
*/

extern unsigned char delrec[36];


void write_delay_record(unsigned char objno, unsigned char delay_status, long delay_target);	// Schreibt die Schalt-Verzoegerungswerte ins Flash
void clear_delay_record(unsigned char objno); // Loescht den Delay Eintrag
