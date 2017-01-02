/*
 * dim2_sla.h
 *
 *  Created on: Jan 2, 2017
 *      Author: stefan
 */

#ifndef DIM2_SLA_H_
#define DIM2_SLA_H_

#include <P89LPC922.h>

#include "../com/fb_rs232.h"
#include "watchdog.h"
#include "fb_i2c.h"

//#include "../com/debug.h"

// Damit die Eclipse Code Analyse nicht so viele Warnungen anzeigt:
#ifndef SDCC
# define __interrupt(x)
# define __at(x)
# define __idata
# define __code
#endif


void tim0_int(void) __interrupt (1);
void ex1_int(void) __interrupt (2); // ERKENNUNG NULLDURCHGANG
void i2c_int(void) __interrupt (6);



#define K1OUT P0_7
#define K2OUT P0_6
#define AB 0 //abschnittdimmer
#define AN 1 //anschnittdimmer
#define PW 3 //Pulweitemod

// Flash write
#define START_WRITECYCLE \
    FMCON=0x00;

#define STOP_WRITECYCLE \
    FMCON=0x68;

#define WRITE_BYTE(addrh, addrl, zdata) { \
        FMADRH=addrh; \
        FMADRL=addrl; \
        FMDATA=zdata;}


#endif /* DIM2_SLA_H_ */
