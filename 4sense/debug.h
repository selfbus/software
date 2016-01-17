/*
 * debug.h
 */
#ifndef DEBUG_H_
#define DEBUG_H_

/*
 * Initialize the debug variables.
 *
 * Must be added to your program once in global scope, e.g. outside
 * main(),
 */
#define DEBUG_VARIABLES unsigned char __at 00 __debug_ram[0]

/*
 * Setup the serial port communication for debugging.
 *
 * Must be called once in your program, e.g. in main()
 */
#define DEBUG_SETUP { \
	BRGCON &= 0xFE;	/* Stop the baud-rate generator */ \
	P1M1 &= 0xFC;   /* Set RX/TX to bidirectional */ \
	P1M2 &= 0xFC; \
	SCON = 0x50;	/* Mode 1, receive enable */ \
	SSTAT |= 0xE0;	/* Set TI at the end of the stop bit, interrupt for RX only and double-buffer TX */ \
	BRGCON |= 0x02;	/* Use baud-rate generator (still stopped) */ \
	BRGR1 = 0x00;	/* BaudRate = cclk / ((BRGR1,BRGR0) + 16) */ \
	BRGR0 = 0x30;	/* for 115200 use 0x30, auto-cal: 600bd => 0x2FF0 */ \
	BRGCON |= 0x01;	/* Start the baud-rate generator */ \
	SBUF = 0x55; \
}

/*
 * Output a byte to the serial port in debug mode.
 * Probably internal use only.
 */
#define DEBUG_OUTPUT(x) { while (!TI); TI = 0; SBUF = x; }

/*
 * The debug point is where variables are queried.
 *
 * Add the debug point somewhere in your main loop.
 */
#define DEBUG_POINT { if (RI) { DEBUG_OUTPUT(__debug_ram[SBUF]); RI = 0; } }

#endif /* DEBUG_H_ */
