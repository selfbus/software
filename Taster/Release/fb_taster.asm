;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Sat May 12 21:47:29 2012
;--------------------------------------------------------
	.module fb_taster
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _watchdog_start
	.globl _watchdog_feed
	.globl _watchdog_init
	.globl _delay_timer
	.globl _switch_led
	.globl _port_changed
	.globl _restart_app
	.globl _process_tel
	.globl _restart_hw
	.globl _P3_1
	.globl _P3_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _I2CON_0
	.globl _I2CON_2
	.globl _I2CON_3
	.globl _I2CON_4
	.globl _I2CON_5
	.globl _I2CON_6
	.globl _SCON_7
	.globl _SCON_6
	.globl _SCON_5
	.globl _SCON_4
	.globl _SCON_3
	.globl _SCON_2
	.globl _SCON_1
	.globl _SCON_0
	.globl _IP0_0
	.globl _IP0_1
	.globl _IP0_2
	.globl _IP0_3
	.globl _IP0_4
	.globl _IP0_5
	.globl _IP0_6
	.globl _IP1_0
	.globl _IP1_1
	.globl _IP1_2
	.globl _IP1_6
	.globl _IEN1_0
	.globl _IEN1_1
	.globl _IEN1_2
	.globl _IEN0_0
	.globl _IEN0_1
	.globl _IEN0_2
	.globl _IEN0_3
	.globl _IEN0_4
	.globl _IEN0_5
	.globl _IEN0_6
	.globl _IEN0_7
	.globl _TCON_0
	.globl _TCON_1
	.globl _TCON_2
	.globl _TCON_3
	.globl _TCON_4
	.globl _TCON_5
	.globl _TCON_6
	.globl _TCON_7
	.globl _PSW_7
	.globl _PSW_6
	.globl _PSW_5
	.globl _PSW_4
	.globl _PSW_3
	.globl _PSW_2
	.globl _PSW_1
	.globl _PSW_0
	.globl _IEN1
	.globl _IP0H
	.globl _WFEED2
	.globl _WFEED1
	.globl _WDL
	.globl _WDCON
	.globl _TRIM
	.globl _TAMOD
	.globl _SSTAT
	.globl _RTCL
	.globl _RTCH
	.globl _RTCCON
	.globl _RSTSRC
	.globl _PT0AD
	.globl _PCONA
	.globl _P3M2
	.globl _P3M1
	.globl _P1M2
	.globl _P1M1
	.globl _P0M2
	.globl _P0M1
	.globl _KBPATN
	.globl _KBMASK
	.globl _KBCON
	.globl _IP1H
	.globl _IP1
	.globl _I2STAT
	.globl _I2SCLL
	.globl _I2SCLH
	.globl _I2DAT
	.globl _I2CON
	.globl _I2ADR
	.globl _FMDATA
	.globl _FMCON
	.globl _FMADRL
	.globl _FMADRH
	.globl _DIVM
	.globl _CMP2
	.globl _CMP1
	.globl _BRGCON
	.globl _BRGR1
	.globl _BRGR0
	.globl _SADEN
	.globl _SADDR
	.globl _AUXR1
	.globl _SBUF
	.globl _SCON
	.globl _IP0
	.globl _IEN0
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _P3
	.globl _P1
	.globl _P0
	.globl _object_value
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_P1	=	0x0090
_P3	=	0x00b0
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_IEN0	=	0x00a8
_IP0	=	0x00b8
_SCON	=	0x0098
_SBUF	=	0x0099
_AUXR1	=	0x00a2
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_BRGR0	=	0x00be
_BRGR1	=	0x00bf
_BRGCON	=	0x00bd
_CMP1	=	0x00ac
_CMP2	=	0x00ad
_DIVM	=	0x0095
_FMADRH	=	0x00e7
_FMADRL	=	0x00e6
_FMCON	=	0x00e4
_FMDATA	=	0x00e5
_I2ADR	=	0x00db
_I2CON	=	0x00d8
_I2DAT	=	0x00da
_I2SCLH	=	0x00dd
_I2SCLL	=	0x00dc
_I2STAT	=	0x00d9
_IP1	=	0x00f8
_IP1H	=	0x00f7
_KBCON	=	0x0094
_KBMASK	=	0x0086
_KBPATN	=	0x0093
_P0M1	=	0x0084
_P0M2	=	0x0085
_P1M1	=	0x0091
_P1M2	=	0x0092
_P3M1	=	0x00b1
_P3M2	=	0x00b2
_PCONA	=	0x00b5
_PT0AD	=	0x00f6
_RSTSRC	=	0x00df
_RTCCON	=	0x00d1
_RTCH	=	0x00d2
_RTCL	=	0x00d3
_SSTAT	=	0x00ba
_TAMOD	=	0x008f
_TRIM	=	0x0096
_WDCON	=	0x00a7
_WDL	=	0x00c1
_WFEED1	=	0x00c2
_WFEED2	=	0x00c3
_IP0H	=	0x00b7
_IEN1	=	0x00e8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW_0	=	0x00d0
_PSW_1	=	0x00d1
_PSW_2	=	0x00d2
_PSW_3	=	0x00d3
_PSW_4	=	0x00d4
_PSW_5	=	0x00d5
_PSW_6	=	0x00d6
_PSW_7	=	0x00d7
_TCON_7	=	0x008f
_TCON_6	=	0x008e
_TCON_5	=	0x008d
_TCON_4	=	0x008c
_TCON_3	=	0x008b
_TCON_2	=	0x008a
_TCON_1	=	0x0089
_TCON_0	=	0x0088
_IEN0_7	=	0x00af
_IEN0_6	=	0x00ae
_IEN0_5	=	0x00ad
_IEN0_4	=	0x00ac
_IEN0_3	=	0x00ab
_IEN0_2	=	0x00aa
_IEN0_1	=	0x00a9
_IEN0_0	=	0x00a8
_IEN1_2	=	0x00ea
_IEN1_1	=	0x00e9
_IEN1_0	=	0x00e8
_IP1_6	=	0x00fe
_IP1_2	=	0x00fa
_IP1_1	=	0x00f9
_IP1_0	=	0x00f8
_IP0_6	=	0x00be
_IP0_5	=	0x00bd
_IP0_4	=	0x00bc
_IP0_3	=	0x00bb
_IP0_2	=	0x00ba
_IP0_1	=	0x00b9
_IP0_0	=	0x00b8
_SCON_0	=	0x0098
_SCON_1	=	0x0099
_SCON_2	=	0x009a
_SCON_3	=	0x009b
_SCON_4	=	0x009c
_SCON_5	=	0x009d
_SCON_6	=	0x009e
_SCON_7	=	0x009f
_I2CON_6	=	0x00de
_I2CON_5	=	0x00dd
_I2CON_4	=	0x00dc
_I2CON_3	=	0x00db
_I2CON_2	=	0x00da
_I2CON_0	=	0x00d8
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P3_0	=	0x00b0
_P3_1	=	0x00b1
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_object_value::
	.ds 12
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_int
	.ds	5
	ljmp	_X1_int
	.ds	5
	ljmp	_T1_int
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;n                         Allocated to registers r5 
;LED                       Allocated to registers 
;cmd                       Allocated to registers r5 
;tasterpegel               Allocated to registers r7 
;blink                     Allocated to registers b2 
;verstell                  Allocated to registers b3 
;verstellt                 Allocated to registers b1 
;tastergetoggelt           Allocated to registers b0 
;cal                       Allocated to registers r6 
;buttonpattern             Allocated to registers 
;wduf                      Allocated to registers b1 
;------------------------------------------------------------
;	../fb_taster.c:74: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../fb_taster.c:76: unsigned char n,LED,cmd,tasterpegel=0;
	mov	r7,#0x00
;	../fb_taster.c:77: __bit blink, verstell, verstellt,tastergetoggelt=0;
	clr	b0
;	../fb_taster.c:84: wduf=WDCON&0x02;
	mov	a,_WDCON
	rr	a
	anl	a,#0x01
	add	a,#0xff
	mov	b1,c
;	../fb_taster.c:86: restart_hw();							// Hardware zuruecksetzen	
	push	ar7
	push	bits
	lcall	_restart_hw
	pop	bits
	pop	ar7
;	../fb_taster.c:88: if((((PORT & 0x0F)== 0x03) || ((PORT & 0x0F)== 0x0C)) && wduf) cal=0;
	mov	a,#0x0F
	anl	a,_P0
	mov	r6,a
	cjne	r6,#0x03,00285$
	sjmp	00105$
00285$:
	mov	a,#0x0F
	anl	a,_P0
	mov	r6,a
	cjne	r6,#0x0C,00102$
00105$:
	jnb	b1,00102$
	mov	r6,#0x00
	sjmp	00103$
00102$:
;	../fb_taster.c:89: else cal=trimsave;
	mov	dptr,#_main_trimsave_1_33
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r6,a
00103$:
;	../fb_taster.c:96: TRIM = (TRIM+trimsave);
	mov	dptr,#_main_trimsave_1_33
	clr	a
	movc	a,@a+dptr
	mov	r4,_TRIM
	add	a,r4
	mov	r5,a
	mov	_TRIM,r5
;	../fb_taster.c:97: TRIM &= 0x3F;//oberen 2 bits ausblenden
	anl	_TRIM,#0x3F
;	../fb_taster.c:98: watchdog_init();
	push	ar7
	push	ar6
	push	bits
	lcall	_watchdog_init
	pop	bits
;	../fb_taster.c:99: watchdog_start();
	push	bits
	lcall	_watchdog_start
	pop	bits
	pop	ar6
	pop	ar7
;	../fb_taster.c:100: for (n=0;n<50;n++) {
	mov	r5,#0x00
00183$:
	cjne	r5,#0x32,00289$
00289$:
	jnc	00186$
;	../fb_taster.c:101: TR0=0;					// Timer 0 anhalten
	clr	_TCON_4
;	../fb_taster.c:102: TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	_TH0,a
;	../fb_taster.c:103: TL0=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	_TL0,a
;	../fb_taster.c:104: TF0=0;					// Überlauf-Flag zurücksetzen
	clr	_TCON_5
;	../fb_taster.c:105: TR0=1;					// Timer 0 starten
	setb	_TCON_4
;	../fb_taster.c:106: while(!TF0);
00106$:
	jnb	_TCON_5,00106$
;	../fb_taster.c:100: for (n=0;n<50;n++) {
	inc	r5
	sjmp	00183$
00186$:
;	../fb_taster.c:108: restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
	push	ar7
	push	ar6
	push	bits
	lcall	_restart_app
	pop	bits
	pop	ar6
	pop	ar7
;	../fb_taster.c:110: BRGCON&=0xFE;	// Baudrate Generator stoppen
	anl	_BRGCON,#0xFE
;	../fb_taster.c:111: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	anl	_P1M1,#0xFC
;	../fb_taster.c:112: P1M2&=0xFC;
	anl	_P1M2,#0xFC
;	../fb_taster.c:113: SCON=0x50;		// Mode 1, receive enable
	mov	_SCON,#0x50
;	../fb_taster.c:114: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	orl	_SSTAT,#0xE0
;	../fb_taster.c:115: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
;	../fb_taster.c:116: BRGR1=0x2F;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
	mov	_BRGR1,#0x2F
;	../fb_taster.c:117: BRGR0=0xF0;	// für 115200 0030 nehmen, autocal: 600bd= 0x2FF0
	mov	_BRGR0,#0xF0
;	../fb_taster.c:118: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
;	../fb_taster.c:119: SBUF=0x55; // hiernach ist TI==1
	mov	_SBUF,#0x55
;	../fb_taster.c:121: for (n=0;n<4;n++) switch_led(n,0);	// Alle LEDs gemaess ihren Parametern setzen
	mov	r5,#0x00
00187$:
	cjne	r5,#0x04,00292$
00292$:
	jnc	00190$
	clr	b[0]
	push	ar7
	push	ar6
	push	ar5
	push	bits
	mov	bits,b
	mov	dpl,r5
	lcall	_switch_led
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	sjmp	00187$
00190$:
;	../fb_taster.c:124: verstellt=0;
	clr	b1
;	../fb_taster.c:125: dimmwert = LED_hell;
	mov	dptr,#_main_LED_hell_1_33
	clr	a
	movc	a,@a+dptr
	mov	_dimmwert,a
;	../fb_taster.c:127: do  {
00180$:
;	../fb_taster.c:128: watchdog_feed();
	push	ar7
	push	ar6
	push	bits
	lcall	_watchdog_feed
	pop	bits
	pop	ar6
	pop	ar7
;	../fb_taster.c:129: if (RTCCON>=0x80) delay_timer();	// Realtime clock ueberlauf
	mov	a,#0x100 - 0x80
	add	a,_RTCCON
	jnc	00110$
	push	ar7
	push	ar6
	push	bits
	lcall	_delay_timer
	pop	bits
	pop	ar6
	pop	ar7
00110$:
;	../fb_taster.c:131: n=timer;
;	../fb_taster.c:132: blink=((n>>5) & 0x01);
	mov	a,_timer
	mov	r5,a
	mov	c,acc[5]
	clr	a
	rlc	a
	add	a,#0xff
	mov	b2,c
;	../fb_taster.c:133: verstell=((n>>2) & 0x01);
	mov	a,r5
	rr	a
	rr	a
	anl	a,#0x01
	mov	r4,a
	add	a,#0xff
;	../fb_taster.c:135: if (verstell==0)verstellt=0;
	mov	b3,c
	jc	00112$
	clr	b1
00112$:
;	../fb_taster.c:139: if (status60 & 0x01){			//wenn progmode aktiv ist...
	mov	a,_status60
	jnb	acc.0,00131$
;	../fb_taster.c:141: if ((PORT & 0x0F)==0x0E){	// Taste 1 gedrück
	mov	a,#0x0F
	anl	a,_P0
	mov	r4,a
	cjne	r4,#0x0E,00118$
;	../fb_taster.c:142: if ((dimmwert<254) && (verstell==1)&& verstellt==0){
	mov	a,#0x100 - 0xFE
	add	a,_dimmwert
	jc	00118$
	mov	c,b3
	clr	a
	rlc	a
	mov	r4,a
	cjne	r4,#0x01,00118$
	jb	b1,00118$
;	../fb_taster.c:143: dimmwert++;
	inc	_dimmwert
;	../fb_taster.c:144: verstellt=1;
	setb	b1
00118$:
;	../fb_taster.c:147: if ((PORT & 0x0F)==0x0D){ // Taste 2 gedrückt
	mov	a,#0x0F
	anl	a,_P0
	mov	r4,a
	cjne	r4,#0x0D,00132$
;	../fb_taster.c:148: if ((dimmwert>1) && (verstell==1)&& verstellt==0){
	mov	a,_dimmwert
	add	a,#0xff - 0x01
	jnc	00132$
	mov	c,b3
	clr	a
	rlc	a
	mov	r4,a
	cjne	r4,#0x01,00132$
	jb	b1,00132$
;	../fb_taster.c:149: dimmwert--;
	dec	_dimmwert
;	../fb_taster.c:150: verstellt=1;
	setb	b1
	sjmp	00132$
00131$:
;	../fb_taster.c:157: if(APPLICATION_RUN)	{// nur wenn im Run modus und nicht connected
	mov	dptr,#(_eeprom + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xFF,00132$
	jb	_connected,00132$
;	../fb_taster.c:158: if ((PORT & 0x0F) != button_buffer) port_changed(PORT & 0x0F);	// ein Taster wurde gedrueckt
	mov	a,#0x0F
	anl	a,_P0
	mov	r4,a
	cjne	a,_button_buffer,00312$
	sjmp	00132$
00312$:
	mov	a,#0x0F
	anl	a,_P0
	mov	dpl,a
	push	ar7
	push	ar6
	push	bits
	lcall	_port_changed
	pop	bits
	pop	ar6
	pop	ar7
00132$:
;	../fb_taster.c:162: if (tel_arrived || tel_sent) {//
	jb	_tel_arrived,00133$
	jnb	_tel_sent,00134$
00133$:
;	../fb_taster.c:163: tel_sent=0;
	clr	_tel_sent
;	../fb_taster.c:164: process_tel();
	push	ar7
	push	ar6
	push	bits
	lcall	_process_tel
	pop	bits
	pop	ar6
	pop	ar7
	sjmp	00135$
00134$:
;	../fb_taster.c:167: for(n=0;n<100;n++);
	mov	r5,#0x64
00193$:
	mov	ar4,r5
	dec	r4
	mov	ar5,r4
	mov	a,r5
	jnz	00193$
00135$:
;	../fb_taster.c:173: if (RI){
;	../fb_taster.c:174: RI=0;
	jbc	_SCON_0,00316$
	sjmp	00161$
00316$:
;	../fb_taster.c:175: cmd=SBUF;
	mov	r5,_SBUF
;	../fb_taster.c:176: if(cmd=='c'){
	cjne	r5,#0x63,00141$
;	../fb_taster.c:177: while(!TI);
00137$:
;	../fb_taster.c:178: TI=0;
	jbc	_SCON_1,00319$
	sjmp	00137$
00319$:
;	../fb_taster.c:179: SBUF=0x55;
	mov	_SBUF,#0x55
00141$:
;	../fb_taster.c:181: if(cmd=='+'){
	cjne	r5,#0x2B,00143$
;	../fb_taster.c:182: TRIM--;
	dec	_TRIM
;	../fb_taster.c:183: cal--;
	dec	r6
00143$:
;	../fb_taster.c:185: if(cmd=='-'){
	cjne	r5,#0x2D,00145$
;	../fb_taster.c:186: TRIM++;
	inc	_TRIM
;	../fb_taster.c:187: cal++;
	inc	r6
00145$:
;	../fb_taster.c:189: if(cmd=='w'){
	cjne	r5,#0x77,00147$
;	../fb_taster.c:190: EA=0;
	clr	_IEN0_7
;	../fb_taster.c:191: START_WRITECYCLE;	//cal an 0x1bff schreiben
	mov	_FMCON,#0x00
;	../fb_taster.c:192: FMADRH= 0x1C;		
	mov	_FMADRH,#0x1C
;	../fb_taster.c:193: FMADRL= 0xBF; 
	mov	_FMADRL,#0xBF
;	../fb_taster.c:194: FMDATA=	cal; 
	mov	_FMDATA,r6
;	../fb_taster.c:195: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_taster.c:196: EA=1;				//int wieder freigeben
	setb	_IEN0_7
00147$:
;	../fb_taster.c:198: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	cjne	r5,#0x70,00149$
	xrl	_status60,#0x81
00149$:
;	../fb_taster.c:199: if(cmd=='v'){
	cjne	r5,#0x76,00154$
;	../fb_taster.c:200: while(!TI);
00150$:
;	../fb_taster.c:201: TI=0;
	jbc	_SCON_1,00330$
	sjmp	00150$
00330$:
;	../fb_taster.c:202: SBUF=VERSION;
	mov	_SBUF,#0x69
00154$:
;	../fb_taster.c:204: if(cmd=='t'){
	cjne	r5,#0x74,00161$
;	../fb_taster.c:205: while(!TI);
00155$:
;	../fb_taster.c:206: TI=0;
	jbc	_SCON_1,00333$
	sjmp	00155$
00333$:
;	../fb_taster.c:207: SBUF=TYPE;
	mov	_SBUF,#0x03
00161$:
;	../fb_taster.c:240: if (((PORT & 0x0F)== 0x03) || ((PORT & 0x0F)== 0x0C)) {
	mov	a,#0x0F
	anl	a,_P0
	mov	r5,a
	cjne	r5,#0x03,00334$
	sjmp	00169$
00334$:
	mov	a,#0x0F
	anl	a,_P0
	mov	r5,a
	cjne	r5,#0x0C,00170$
00169$:
;	../fb_taster.c:241: if(tasterpegel<255)	tasterpegel++;
	cjne	r7,#0xFF,00337$
00337$:
	jnc	00167$
	inc	r7
	sjmp	00170$
00167$:
;	../fb_taster.c:243: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	jb	b0,00163$
	xrl	_status60,#0x81
00163$:
;	../fb_taster.c:244: tastergetoggelt=1;
	setb	b0
;	../fb_taster.c:245: if((status60 & 0x01)==0){	//wenn ausgemacht Dimmwert speichern
	mov	a,_status60
	jb	acc.0,00170$
;	../fb_taster.c:246: EA=0;
	clr	_IEN0_7
;	../fb_taster.c:247: START_WRITECYCLE;
	mov	_FMCON,#0x00
;	../fb_taster.c:248: FMADRH= 0x1C;		
	mov	_FMADRH,#0x1C
;	../fb_taster.c:249: FMADRL= 0xBE; 
	mov	_FMADRL,#0xBE
;	../fb_taster.c:250: FMDATA=	dimmwert; 
	mov	_FMDATA,_dimmwert
;	../fb_taster.c:251: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_taster.c:252: EA=1;
	setb	_IEN0_7
00170$:
;	../fb_taster.c:258: if ((PORT & 0x0F)== 0x0F){ ;	// Warten bis alle Taster losgelassen
	mov	a,#0x0F
	anl	a,_P0
	mov	r5,a
	cjne	r5,#0x0F,00176$
;	../fb_taster.c:259: if(tasterpegel>0) tasterpegel--;
	mov	a,r7
	jz	00173$
	dec	r7
	sjmp	00176$
00173$:
;	../fb_taster.c:260: else tastergetoggelt=0;
	clr	b0
00176$:
;	../fb_taster.c:265: if (status60 & 0x01) TASTER = blink;		// LED blinkt im Prog-Mode
	mov	a,_status60
	jnb	acc.0,00178$
	mov	c,b2
	mov	_P1_7,c
	ljmp	00180$
00178$:
;	../fb_taster.c:266: else TASTER = !((eeprom[0xCD] & 0x10) >> 4);	// LED ist an oder aus gemaess Parameter fuer Betriebs-LED
	mov	dptr,#(_eeprom + 0x00cd)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x10
	swap	a
	anl	a,#0x0F
	mov	r5,a
	cjne	a,#0x01,00345$
00345$:
	clr	a
	rlc	a
	mov	r5,a
	add	a,#0xff
	mov	_P1_7,c
;	../fb_taster.c:273: }  while(1);
	ljmp	00180$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_main_trimsave_1_33	=	0x1cbf
_main_LED_hell_1_33	=	0x1cbe
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
