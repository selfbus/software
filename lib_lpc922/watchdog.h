/***********************************************************************
MODULE:    Watchdog
VERSION:   1.02
CONTAINS:  Routines for controlling the Watchdog on the
           P89LPC922
COPYRIGHT: Embedded Systems Academy, Inc. - www.esacademy.com
LICENSE:   May be freely used in commercial and non-commercial code
           without royalties provided this copyright notice remains
           in this file and unaltered
***********************************************************************/

#ifndef watchdog_h
#define watchdog_h

/**
 * Initialize the watchdog
 */
#define WATCHDOG_INIT \
{ WDL = 0xFF;\
  EA = 0;\
  WDCON = 0xE5;\
  WFEED1 = 0xA5;\
  WFEED2 = 0x5A;\
  EA=1; \
}

/**
 * Start the watchdog.
 * CAUTION: WATCHDOG_INIT must be called first
 */
#define WATCHDOG_START \
{ EA = 0;\
  WDCON |= 0x04;\
  WFEED1 = 0xA5;\
  WFEED2 = 0x5A;\
  EA = 1; \
}

/**
 * Feeds the watchdog to stop the device from resetting.
 * CAUTION: WATCHDOG_INIT must be called first
 */
#define WATCHDOG_FEED \
{ EA = 0; \
  WFEED1 = 0xA5;\
  WFEED2 = 0x5A;\
  EA=1; \
}

/**
 * Stop the watchdog.
 */
#define WATCHDOG_STOP \
{ EA = 0;\
  WDCON &= ~0x04;\
  WFEED1 = 0xA5;\
  WFEED2 = 0x5A;\
  EA = 1; \
}

// Compatibility for old code
#define watchdog_init() WATCHDOG_INIT
#define watchdog_start() WATCHDOG_START
#define watchdog_feed() WATCHDOG_FEED
#define watchdog_stop() WATCHDOG_STOP

#endif /*watchdog_h*/
