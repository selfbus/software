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



#include <P89LPC922.h>
#include "../com/adc_922.h"

unsigned char LowByte,HighByte,CMPx,CMPModex;
unsigned char CMPbufaddr,CMPbuf[2];





void Get_SD_ADC(void) __naked
{
	__asm
	
	00001$:					//Get_SD_ADC:
	PUSH ACC
	PUSH PSW
	push ar0
	PUSH ar4
	PUSH ar5
	
	MOV R0,_CMPbufaddr
	MOV _CMP1,_CMPModex			; load CMPModex into comparator control register CMP1
	MOV _CMP2,_CMPModex			; load CMPModex "" "" CMP2
	MOV R4,#0
	MOV R5,#0
	
	00002$:						; Precharge (charges capacitor exactly to voltage of positive input)
	MOV _CMPbuf,_CMP1			; comparatur control registers into CMPbuf
	MOV _CMPbuf+1,_CMP2
	MOV A,@R0 					; get CMPx indirectly, R0 is address of the variable CMPbuf
	ANL A,#0x02					; only take the comparator output bit
	MOV C,0xE1					; comparator output –> carry (0xE1 is second bit of ACC)
	CLR A
	MOV CMPOUT,C 				; P0.0 = comparator output (charge capacitor when negative input is lower than positive)
	
	;Counter
	CLR C						; increase 16-bit counter register R4/R5
	MOV A,R4
	ADD A,#0x01
	MOV R4,A
	MOV A,R5
	ADDC A,#0x00
	MOV R5,A
	CJNE A,#0x40,00002$			; precharge loop (enough cycles, so that C could be fully charged to Vcc)
	
	
	MOV R4,#0x80				; R4/R5 are 16-bit counter for Measurecycles (should be 10.000 times Vcc, e.g. 5V=50.000 cycles)
	MOV R5,#0x00				; low byte is preset, so that at the end of loop only highbyte needs to be checked
	MOV _LowByte,#0x00;
	MOV _HighByte,#0x00;
	
	00003$:					//MAINLOOP:
	;Sigma
	CLR C
	MOV _CMPbuf,_CMP1		; comparatur control registers into CMPbuf
	MOV _CMPbuf+1,_CMP2
	MOV A,@R0 				; get CMPx indirectly, R0 is address of the variable CMPbuf
	ANL A,#0x02				; only take the comparator output bit
	MOV C,0xE1				; comparator output –> carry (0xE1 is second bit of ACC)
	CLR A
	MOV CMPOUT,C 			; comparator output (charge capacitor when negative input is lower than positive)
	
	ADDC A,_LowByte			; increase LowByte/HighByte counter if comparator output is high
	MOV _LowByte,A
	MOV A,_HighByte
	ADDC A,#0x00			
	MOV _HighByte,A
	
	;Counter Measurementcycles
	CLR C
	MOV A,R4				; increase R4/R5 counter
	ADD A,#0x01
	MOV R4,A
	MOV A,R5
	ADDC A,#0x00
	MOV R5,A
	
	CJNE A,#0xC4,00003$		; check only high byte of R4/R5 to get correct number of measure cycles
	
	POP ar5;
	POP ar4;
	pop ar0
	POP PSW;
	POP ACC;
	RET
	
	__endasm;
}




void Get_ADC(char channel)	// Channel 0-3
{
	if (channel & 1)		// for channel 1 and 3
		CMPModex = 0x030;		// comparator enabled, positive input pin CINnA, 
								// negative input is CMPREF pin, output to pin is disabled
	
	else					// for channel 0 and 2
		CMPModex = 0x020;		// same, but positive input pin is CINnB
	
	if (channel & 2)
		CMPbufaddr = (char) &CMPbuf[1];
	else
		CMPbufaddr = (char) &CMPbuf[0];
	Get_SD_ADC();
}
