/*
 * watchdog.c
 *
 *  Created on: 17.05.2010
 *      Author: Jan
 */

/***********************************************************************
MODULE:    Watchdog
VERSION:   1.01
CONTAINS:  Routines for controlling the Watchdog on the
           P89LPC922
COPYRIGHT: Embedded Systems Academy, Inc. - www.esacademy.com
LICENSE:   May be freely used in commercial and non-commercial code
           without royalties provided this copyright notice remains
           in this file and unaltered
WARNING:   IF THIS FILE IS REGENERATED BY CODE ARCHITECT ANY CHANGES
           MADE WILL BE LOST. WHERE POSSIBLE USE ONLY CODE ARCHITECT
           TO CHANGE THE CONTENTS OF THIS FILE
GENERATED: On "May 17 2010" at "21:05:36" by Code Architect 2.06
***********************************************************************/

// SFR description needs to be included
#include <P89LPC922.h>
#include "watchdog.h"


/***********************************************************************
DESC:    Initializes the watchdog as a Watchdog Timer
         Uses Watchdog clock at 400kHz as a clock source
         Resets the device if not fed within 2.622 s
RETURNS: Nothing
************************************************************************/
void watchdog_init(void)
{
//  __bit eacopy;

  // init reload value and prescaler
  // select Watchdog clock at 400kHz
  // start watchdog
  WDL = 0xFF;
//  eacopy = EA;
  EA = 0;
  WDCON = 0xE5;
  WFEED1 = 0xA5;
  WFEED2 = 0x5A;
//  EA = eacopy;
  EA=1;
}

/***********************************************************************
DESC:    Feeds the Watchdog to stop the device from resetting
RETURNS: Nothing
CAUTION: watchdog_init must be called first
************************************************************************/
void watchdog_feed(void)
{
//  __bit eacopy;

  // disable interrupts
//  eacopy = EA;
  EA = 0;
  // feed the watchdog
  WFEED1 = 0xA5;
  WFEED2 = 0x5A;
  // restore interrupts
//  EA = eacopy;
  EA=1;
}

/***********************************************************************
DESC:    Starts the Watchdog
RETURNS: Nothing
CAUTION: watchdog_init must be called first
************************************************************************/
void watchdog_start(void)
{
  __bit eacopy;

  // disable interrupts
  eacopy = EA;
  EA = 0;
  // start the watchdog
  WDCON |= 0x04;
  // feed the watchdog
  WFEED1 = 0xA5;
  WFEED2 = 0x5A;
  // restore interrupts
  EA = eacopy;
}

/***********************************************************************
DESC:    Stops the Watchdog
RETURNS: Nothing
CAUTION: watchdog_init must be called first
************************************************************************/
void watchdog_stop(void)
{
  __bit eacopy;

  // disable interrupts
  eacopy = EA;
  EA = 0;
  // stop the watchdog
  WDCON &= ~0x04;
  // feed the watchdog
  WFEED1 = 0xA5;
  WFEED2 = 0x5A;
  // restore interrupts
  EA = eacopy;
}

/*
void watchdog_count(void)
{
	unsigned char n, m;


	m=userram[0x01];
	m++;
	EA=0;
	START_WRITECYCLE
	WRITE_BYTE(0x00,0x01,m)
	STOP_WRITECYCLE
	EA=1;


	if (WDCON&0x02)
	{
		n=userram[0x00];
		n++;

		EA=0;
		START_WRITECYCLE
		WRITE_BYTE(0x00,0x00,n)
		STOP_WRITECYCLE
		EA=1;
	}
}

*/

