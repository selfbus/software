/*
 *      __________  ________________  __  _______
 *     / ____/ __ \/ ____/ ____/ __ )/ / / / ___/
 *    / /_  / /_/ / __/ / __/ / __  / / / /\__ \ 
 *   / __/ / _, _/ /___/ /___/ /_/ / /_/ /___/ / 
 *  /_/   /_/ |_/_____/_____/_____/\____//____/  
 *                                      
 *  Copyright (c) 2009 Andreas Krebs <kubi@krebsworld.de>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License version 2 as
 *  published by the Free Software Foundation.
 *
 *
 */
/**
* @file   fb_delay.c
* @author Andreas Krebs <kubi@krebsworld.de>
* @date    2009
* 
* @brief  Hier sind ausschliesslich das Array und die Zeitschaltfunktionen fuer den 89LPC922
* 
* 
*/

unsigned char delrec[32];

/** 
* Schreibt die Schalt-Verzoegerungswerte ins Flash
*
*
*
*/
void write_delay_record(unsigned char objno, unsigned char delay_state, long delay_target)
{
	delrec[objno*4]=delay_state;
	delrec[objno*4+1]=delay_target>>16;
	delrec[objno*4+2]=delay_target>>8;
	delrec[objno*4+3]=delay_target;
}


/** 
* loescht die Schalt-Verzoegerungswerte im Flash
*
*
*
*/
void clear_delay_record(unsigned char objno)
{
	delrec[objno*4]=0;
	delrec[objno*4+1]=0;
	delrec[objno*4+2]=0;
	delrec[objno*4+3]=0;
}
