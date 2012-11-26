;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
; This file was generated Sun Aug 14 13:44:18 2011
;--------------------------------------------------------
	.module fb_hal_lpc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeprom
	.globl _userram
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
	.globl _interrupted
	.globl _parity_ok
	.globl _cs
	.globl _telpos
	.globl _telegramm
	.globl _start_rtc
	.globl _stop_rtc
	.globl _get_byte
	.globl _ext_int0
	.globl _sendbyte
	.globl _sysdelay
	.globl _set_timer0
	.globl _set_timer1
	.globl _restart_hw
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
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
	.area RSEG    (DATA)
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
_telegramm::
	.ds 23
_telpos::
	.ds 1
_cs::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
_parity_ok::
	.ds 1
_interrupted::
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'start_rtc'
;------------------------------------------------------------
;base                      Allocated to registers r2 
;rtcval                    Allocated to registers r3 r4 r5 r6 
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:47: void start_rtc(unsigned char base)
;	-----------------------------------------
;	 function start_rtc
;	-----------------------------------------
_start_rtc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:52: for (n=0;n<base;n++) rtcval+=7373;
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r7
	subb	a,r2
	jnc	00104$
	mov	a,#0xCD
	add	a,r3
	mov	r3,a
	mov	a,#0x1C
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	inc	r7
	sjmp	00101$
00104$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:54: rtcval=rtcval>>7;	// 7 bit prescaler ( /128 )
	mov	a,r4
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	mov	r4,a
	mov	a,r5
	add	a,r5
	orl	a,r4
	mov	r4,a
	mov	a,r6
	mov	c,acc.7
	xch	a,r5
	rlc	a
	xch	a,r5
	rlc	a
	xch	a,r5
	anl	a,#0x01
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:55: RTCH=(rtcval>>8);
	mov	_RTCH,r4
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:56: RTCL=rtcval;
	mov	_RTCL,r3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:57: RTCCON=0x61;	// ... und starten
	mov	_RTCCON,#0x61
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_rtc'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:66: void stop_rtc(void)
;	-----------------------------------------
;	 function stop_rtc
;	-----------------------------------------
_stop_rtc:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:68: RTCCON=0x60;
	mov	_RTCCON,#0x60
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_byte'
;------------------------------------------------------------
;rbit                      Allocated to registers b1 
;parity                    Allocated to registers b1 
;ph                        Allocated to registers b0 
;n                         Allocated to registers r3 
;m                         Allocated to registers r2 
;fbb                       Allocated to registers r2 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:81: unsigned char get_byte(void)
;	-----------------------------------------
;	 function get_byte
;	-----------------------------------------
_get_byte:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:86: EX1=0;				// Interrupt 1 sperren
	clr	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:87: ET1=0;				// Interrupt von Timer 1 sperren
	clr	_IEN0_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:89: set_timer1(380);		// Timer setzen um 1. Bit zu treffen (320-440)
	mov	dptr,#0x017C
	lcall	_set_timer1
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:93: ph=0;					// Paritybit wird aus empfangenem Byte berechnet
	clr	b0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:94: parity_ok=0;
	clr	_parity_ok
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:95: while(!TF1);			// warten auf Timer 1
00101$:
	jnb	_TCON_7,00101$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:96: set_timer1(360);		// Timer 1 neu setzen fuer 2.Bit (300-420)
	mov	dptr,#0x0168
	push	bits
	lcall	_set_timer1
	pop	bits
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:97: rbit=FBINC;			// 1.Bit einlesen
	mov	c,_P1_4
	mov	b1,c
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:98: for(m=0;m<5;m++) rbit&=FBINC;		// zur Steigerung der Fehlertoleranz mehrfach lesen
	mov	r2,#0x05
00120$:
	mov	c,_P1_4
	anl	c,b1
	mov	b1,c
	djnz	r2,00120$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:99: fbb=rbit;
	mov	c,b1
	clr	a
	rlc	a
	mov	r2,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:100: if(rbit) ph=!ph;		// Paritybit berechnen 
	jnb	b1,00105$
	setb	b0
00105$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:102: for (n=2;n!=0;n=n<<1) {
	mov	r3,#0x02
00124$:
	cjne	r3,#0x00,00157$
	sjmp	00113$
00157$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:103: while(!TF1);
00106$:
	jnb	_TCON_7,00106$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:104: set_timer1(350);	// Timer 1 setzen fuer Position 2.-9.Bit (342-359)
	mov	dptr,#0x015E
	push	ar2
	push	ar3
	push	bits
	lcall	_set_timer1
	pop	bits
	pop	ar3
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:105: rbit=FBINC;
	mov	c,_P1_4
	mov	b1,c
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:106: for(m=0;m<5;m++) rbit&=FBINC;	// zur Steigerung der Fehlertoleranz mehrfach lesen
	mov	r4,#0x05
00123$:
	mov	c,_P1_4
	anl	c,b1
	mov	b1,c
	djnz	r4,00123$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:108: if (rbit) fbb+=n;
	jnb	b1,00110$
	mov	a,r3
	add	a,r2
	mov	r2,a
00110$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:110: if(rbit) ph=!ph;	// Paritybit berechnen
	jnb	b1,00126$
	cpl	b0
00126$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:102: for (n=2;n!=0;n=n<<1) {
	mov	a,r3
	add	a,r3
	mov	r3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:112: while(!TF1);				
	sjmp	00124$
00113$:
	jnb	_TCON_7,00113$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:113: TR1=0;
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:114: parity=FBINC;			// Paritybit lesen
	mov	c,_P1_4
	mov	b1,c
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:115: for(m=0;m<5;m++) parity&=FBINC;	// zur Steigerung der Fehlertoleranz mehrfach lesen
	mov	r3,#0x05
00130$:
	mov	c,_P1_4
	anl	c,b1
	mov	b1,c
	djnz	r3,00130$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:116: if(parity==ph) parity_ok=1;
	mov	c,b1
	jb	b0,00166$
	cpl	c
00166$:
	jnc	00117$
	setb	_parity_ok
00117$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:117: return (fbb);	
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ext_int0'
;------------------------------------------------------------
;fbbh                      Allocated to registers r2 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:132: void ext_int0(void) interrupt 2
;	-----------------------------------------
;	 function ext_int0
;	-----------------------------------------
_ext_int0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:136: TR1=0;
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:137: EX1=0;					// Interrupt 1 sperren
	clr	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:138: ET1=0;					// Interrupt von Timer 1 sperren
	clr	_IEN0_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:140: fbbh=get_byte();			// Byte vom Bus empfangen
	lcall	_get_byte
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:141: sysdelay(200);
	mov	dptr,#0x00C8
	push	ar2
	lcall	_sysdelay
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:142: set_timer1(1350);			// Timer 1 starten fuer Timeout 370us -> signalisiert Telegrammende (1350)
	mov	dptr,#0x0546
	lcall	_set_timer1
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:144: if(parity_ok)				// wenn Parity OK
	jnb	_parity_ok,00107$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:146: if (telpos!=0 || (fbbh&0xF0)!=0xC0) telegramm[telpos]=fbbh;	// keine ACK oder NACK als telegramm speichern
	mov	a,_telpos
	jnz	00101$
	mov	a,#0xF0
	anl	a,r2
	mov	r3,a
	cjne	r3,#0xC0,00116$
	sjmp	00102$
00116$:
00101$:
	mov	a,_telpos
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,ar2
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:147: if(telpos==0) cs=0;
	mov	a,_telpos
	jnz	00105$
	mov	_cs,a
00105$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:148: cs^=fbbh;				// Checksum durch EXOR der einzelnen Telegramm-Bytes bilden
	mov	a,r2
	xrl	_cs,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:149: telpos++;
	inc	_telpos
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:150: ET1=1;
	setb	_IEN0_3
	sjmp	00108$
00107$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:153: telpos=0;
	mov	_telpos,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:154: ET1=0;
	clr	_IEN0_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:155: TR1=0;	// ???????????????????
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:156: TF1=0;
	clr	_TCON_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:157: cs=0;
	mov	_cs,#0x00
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:163: IE1=0;					// Interrupt 0 request zuruecksetzen
	clr	_TCON_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:164: EX1=1;					// Interrupt 0 wieder freigeben
	setb	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:165: interrupted=1;			// teilt anderen Routinen mit, dass sie unterbrochen wurden
	setb	_interrupted
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'sendbyte'
;------------------------------------------------------------
;fbsb                      Allocated to registers r2 
;n                         Allocated to registers r3 
;m                         Allocated to registers r4 
;sendbit                   Allocated to registers b2 
;parity                    Allocated to registers b0 
;error                     Allocated to registers b1 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:176: bit sendbyte(unsigned char fbsb)
;	-----------------------------------------
;	 function sendbyte
;	-----------------------------------------
_sendbyte:
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:181: parity=1;
	setb	b0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:182: error=0;
	clr	b1
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:184: FBOUTC=1;	// Startbit senden
	setb	_P1_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:185: sysdelay(95);	// 35us
	mov	dptr,#0x005F
	push	ar2
	push	bits
	lcall	_sysdelay
	pop	bits
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:186: FBOUTC=0;
	clr	_P1_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:188: for(n=0;n<8;n++)		// 8 Datenbits senden
	mov	r3,#0x00
00116$:
	cjne	r3,#0x08,00141$
00141$:
	jnc	00119$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:190: set_timer1(215);		// 69us Pause
	mov	dptr,#0x00D7
	push	ar2
	push	ar3
	push	bits
	lcall	_set_timer1
	pop	bits
	pop	ar3
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:191: if(((fbsb>>n)&0x01)==1) sendbit=0;
	mov	b,r3
	inc	b
	mov	a,r2
	sjmp	00144$
00143$:
	clr	c
	rrc	a
00144$:
	djnz	b,00143$
	anl	a,#0x01
	mov	r4,a
	cjne	r4,#0x01,00102$
	clr	b2
	sjmp	00104$
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:192: else sendbit=1;
	setb	b2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:193: while(!TF1);		// Warten bis 69us Pause fretig ist
00104$:
	jnb	_TCON_7,00104$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:195: FBOUTC=sendbit;		// Bit senden
	mov	c,b2
	mov	_P1_6,c
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:197: set_timer1(100);		//35us Haltezeit fuer Bit 
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	bits
	lcall	_set_timer1
	pop	bits
	pop	ar3
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:199: if(!sendbit) {		// wenn logische 1 gesendet wird, auf Kollision pruefen
	jb	b2,00110$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:200: parity=!parity;
	cpl	b0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:201: for(m=0;m<5;m++) if(!FBINC) error=1;
	mov	r4,#0x05
00124$:
	jb	_P1_4,00108$
	setb	b1
00108$:
	djnz	r4,00124$
00110$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:203: if(error) break;  
	jb	b1,00119$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:205: while(!TF1);		// Warten bis 35us abgelaufen
00113$:
	jnb	_TCON_7,00113$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:206: FBOUTC=0;
	clr	_P1_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:188: for(n=0;n<8;n++)		// 8 Datenbits senden
	inc	r3
	sjmp	00116$
00119$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:208: if(!error) {
	jb	b1,00121$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:209: sysdelay(212);			// 69 us Pause vor Parity-Bit
	mov	dptr,#0x00D4
	push	bits
	lcall	_sysdelay
	pop	bits
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:210: FBOUTC=parity;
	mov	c,b0
	mov	_P1_6,c
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:211: sysdelay(95);			// 35us fuer Parity-Bit
	mov	dptr,#0x005F
	push	bits
	lcall	_sysdelay
	pop	bits
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:212: FBOUTC=0;
	clr	_P1_6
00121$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:214: TR1=0;
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:216: return (error);
	mov	c,b1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sysdelay'
;------------------------------------------------------------
;deltime                   Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:233: void sysdelay(unsigned int deltime)
;	-----------------------------------------
;	 function sysdelay
;	-----------------------------------------
_sysdelay:
	mov	r2,dpl
	mov	r3,dph
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:235: TR1=0;					// Timer 1 anhalten
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:236: deltime=0xFFFF-deltime;
	mov	a,#0xFF
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0xFF
	subb	a,r3
	mov	r3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:237: TH1=deltime>>8;			// Timer 1 setzen 
	mov	_TH1,r3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:238: TL1=deltime;	
	mov	_TL1,r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:239: TF1=0;
	clr	_TCON_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:240: TR1=1;
	setb	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:241: while(!TF1);				// warten auf Timer 1
00101$:
	jnb	_TCON_7,00101$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:242: TR1=0;		
	clr	_TCON_6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_timer0'
;------------------------------------------------------------
;deltime                   Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:253: void set_timer0(unsigned int deltime)
;	-----------------------------------------
;	 function set_timer0
;	-----------------------------------------
_set_timer0:
	mov	r2,dpl
	mov	r3,dph
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:255: TR0=0;					// Timer 0 anhalten
	clr	_TCON_4
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:256: deltime=0xFFFF-deltime;
	mov	a,#0xFF
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0xFF
	subb	a,r3
	mov	r3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:257: TH0=deltime>>8;			// Timer 0 setzen 
	mov	_TH0,r3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:258: TL0=deltime;	
	mov	_TL0,r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:259: TF0=0;					// ï¿½berlauf-Flag zuruecksetzen
	clr	_TCON_5
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:260: TR0=1;					// Timer 0 starten
	setb	_TCON_4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_timer1'
;------------------------------------------------------------
;deltime                   Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:272: void set_timer1(unsigned int deltime)
;	-----------------------------------------
;	 function set_timer1
;	-----------------------------------------
_set_timer1:
	mov	r2,dpl
	mov	r3,dph
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:274: TR1=0;				// Timer 1 anhalten
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:275: deltime=0xFFFF-deltime;
	mov	a,#0xFF
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0xFF
	subb	a,r3
	mov	r3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:276: TH1=deltime>>8;			// Timer 1 setzen 
	mov	_TH1,r3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:277: TL1=deltime;	
	mov	_TL1,r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:278: TF1=0;				// Ueberlauf-Flag zuruecksetzen
	clr	_TCON_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:279: TR1=1;				// Timer 1 starten
	setb	_TCON_6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_hw'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:318: void restart_hw(void)
;	-----------------------------------------
;	 function restart_hw
;	-----------------------------------------
_restart_hw:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:321: DIVM=0;			// Taktferquenz nicht teilen -> volles Tempo
	mov	_DIVM,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:323: P1M1=0x14;		// Port 1 auf quasi-bidirektional,
	mov	_P1M1,#0x14
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:328: P1M2=0x4C;
	mov	_P1M2,#0x4C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:330: FBOUTC=0;		// Bus-Ausgang auf low
	clr	_P1_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:332: TMOD=0x11;		// Timer 0 und Timer 1 als 16-Bit Timer
	mov	_TMOD,#0x11
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:333: TAMOD=0x00;
	mov	_TAMOD,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:334: TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen 
	clr	_TCON_4
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:335: TR1=0;			// Timer 1 (Empfangs-Timeout, nicht in app verwenden!) zunaechst stoppen
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:337: RTCH=0x0E;		// Real Time Clock auf 65ms laden
	mov	_RTCH,#0x0E
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:338: RTCL=0xA0;		// (RTC ist ein down-counter mit 128 bit prescaler und osc-clock)
	mov	_RTCL,#0xA0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:339: RTCCON=0x61;	// ... und starten
	mov	_RTCCON,#0x61
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:341: interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
	clr	_interrupted
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:342: IEN0=0x00;
	mov	_IEN0,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:343: IEN1=0x00;
	mov	_IEN1,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:345: ET1=0;			// Interrupt von Timer 1 sperren
	clr	_IEN0_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:346: EX0=0;			// Externen Interrupt 0 sperren
	clr	_IEN0_0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:347: EX1=1;			// Externen Interrupt 1 freigeben	
	setb	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:348: EA=1;			// Interrupts prinzipiell freigeben
	setb	_IEN0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:350: IP0=0x0C;		// höchste Priorität fuer ext. Int. 1 und Timer 1 (Bit 0 und 3)
	mov	_IP0,#0x0C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:351: IP0H=0x0C;
	mov	_IP0H,#0x0C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:352: IP1=0x00;
	mov	_IP1,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:353: IP1H=0x00;
	mov	_IP1H,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:354: IT1=1;			// Interrupt 1 flankengetriggert=1 pegelgetriggert=0
	setb	_TCON_2
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_userram	=	0x1c00
_eeprom	=	0x1d00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
