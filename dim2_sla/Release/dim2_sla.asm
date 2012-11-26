;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Sun Apr 22 12:04:50 2012
;--------------------------------------------------------
	.module dim2_sla
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _send
	.globl _in50hz_init
	.globl _tim0_int
	.globl _ex1_int
	.globl _nulldurchgang
	.globl _i2c_int
	.globl _i2c_sla_init
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
	.globl _cmd
	.globl _dimmcompare
	.globl _mode
	.globl _dimmzl
	.globl _m
	.globl _sp
	.globl _zl_50hz
	.globl _bytenummer
	.globl _mk
	.globl _dimm_I2C
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_dimm_I2C::
	.ds 2
_mk::
	.ds 2
_bytenummer::
	.ds 1
_zl_50hz::
	.ds 2
_sp::
	.ds 2
_m::
	.ds 2
_dimmzl::
	.ds 1
_mode::
	.ds 1
_dimmcompare::
	.ds 1
_cmd::
	.ds 1
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
	ljmp	_tim0_int
	.ds	5
	ljmp	_ex1_int
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_i2c_int
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
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:35: unsigned int zl_50hz=0;
	clr	a
	mov	_zl_50hz,a
	mov	(_zl_50hz + 1),a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:36: unsigned int sp=0;
	clr	a
	mov	_sp,a
	mov	(_sp + 1),a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:37: unsigned int m=0;
	clr	a
	mov	_m,a
	mov	(_m + 1),a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:38: unsigned char dimmzl=0; //beim nulldurchgang auf 0 setzen
	mov	_dimmzl,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:39: unsigned char mode=AN; //modus des dimmer Anschnitt Abschnitt oder PWM
	mov	_mode,#0x01
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
;Allocation info for local variables in function 'i2c_int'
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:45: void i2c_int(void)__interrupt (6)
;	-----------------------------------------
;	 function i2c_int
;	-----------------------------------------
_i2c_int:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	ar7
	push	ar1
	push	psw
	mov	psw,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:47: if(I2STAT==0x60)      //Slaveadresse
	mov	a,#0x60
	cjne	a,_I2STAT,00102$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:48: bytenummer=0;
	mov	_bytenummer,#0x00
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:49: if(I2STAT==0x80)      //Datenbyte emfangen
	mov	a,#0x80
	cjne	a,_I2STAT,00104$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:50: bytenummer++;
	inc	_bytenummer
00104$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:51: if(I2STAT==0xA0)      //Stop emfangen
	mov	a,#0xA0
	cjne	a,_I2STAT,00106$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:52: bytenummer=0;
	mov	_bytenummer,#0x00
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:53: if(bytenummer>1&&bytenummer<4)  //erstes byte verwerfen
	mov	a,_bytenummer
	add	a,#0xff - 0x01
	jnc	00108$
	mov	a,#0x100 - 0x04
	add	a,_bytenummer
	jc	00108$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:54: dimm_I2C[bytenummer-2]= 0 - I2DAT; //zweites und drittes byte sind K1 + K2
	mov	a,_bytenummer
	add	a,#0xFE
	add	a,#_dimm_I2C
	mov	r1,a
	clr	c
	clr	a
	subb	a,_I2DAT
	mov	r7,a
	mov	@r1,a
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:56: SI=0;
	clr	_I2CON_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:57: return;
	pop	psw
	pop	ar1
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'nulldurchgang'
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:60: void nulldurchgang(void)
;	-----------------------------------------
;	 function nulldurchgang
;	-----------------------------------------
_nulldurchgang:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:63: if(mode==AB)
	mov	a,_mode
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:65: dimmzl=0;
	jnz	00106$
	mov	_dimmzl,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:66: if(dimm_I2C[0])  //dimmwert grösser 0 Dimmer  ein bei abschnitt
	mov	a,_dimm_I2C
	jz	00102$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:67: K1OUT=0;       //EIN
	clr	_P0_7
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:68: if(dimm_I2C[1])  //dimmwert grösser 0 Dimmer  ein
	mov	a,(_dimm_I2C + 0x0001)
	jz	00106$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:69: K2OUT=0;       //EIN
	clr	_P0_6
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:71: if(mode==AN)
	mov	a,#0x01
	cjne	a,_mode,00108$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:73: dimmzl=0xff;
	mov	_dimmzl,#0xFF
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:74: K1OUT=1;     //AUS bei anschnitt
	setb	_P0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:75: K2OUT=1;
	setb	_P0_6
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:77: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ex1_int'
;------------------------------------------------------------
;dc_mess                   Allocated to registers r7 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:81: void ex1_int(void) __interrupt (2)// ERKENNUNG NULLDURCHGANG
;	-----------------------------------------
;	 function ex1_int
;	-----------------------------------------
_ex1_int:
	push	acc
	push	ar7
	push	psw
	mov	psw,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:87: dc_mess=dimmcompare-20;
	mov	a,_dimmcompare
	add	a,#0xEC
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:89: if(dc_mess){
	mov	r7,a
	jz	00108$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:90: if (dc_mess>200 && dc_mess<253)TH0++;
	mov	a,r7
	add	a,#0xff - 0xC8
	jnc	00102$
	cjne	r7,#0xFD,00123$
00123$:
	jnc	00102$
	inc	_TH0
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:91: if(dc_mess>=3 && dc_mess<=50)TH0--;	
	cjne	r7,#0x03,00125$
00125$:
	jc	00108$
	mov	a,r7
	add	a,#0xff - 0x32
	jc	00108$
	dec	_TH0
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:93: dimmcompare=20;/*
	mov	_dimmcompare,#0x14
	pop	psw
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'tim0_int'
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:117: void tim0_int(void) __interrupt (1)
;	-----------------------------------------
;	 function tim0_int
;	-----------------------------------------
_tim0_int:
	push	acc
	push	ar7
	push	psw
	mov	psw,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:119: dimmcompare++;
	inc	_dimmcompare
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:150: if(dimmcompare<=dimm_I2C[0]|| dimm_I2C[0]==0)K1OUT=1;
	mov	r7,_dimm_I2C
	clr	c
	mov	a,r7
	subb	a,_dimmcompare
	jnc	00101$
	mov	a,r7
	jnz	00102$
00101$:
	setb	_P0_7
	sjmp	00103$
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:151: else K1OUT=0;
	clr	_P0_7
00103$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:152: if(dimmcompare<=dimm_I2C[1]|| dimm_I2C[1]==0)K2OUT=1;
	mov	r7,(_dimm_I2C + 0x0001)
	clr	c
	mov	a,r7
	subb	a,_dimmcompare
	jnc	00105$
	mov	a,r7
	jnz	00106$
00105$:
	setb	_P0_6
	sjmp	00109$
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:153: else K2OUT=0;
	clr	_P0_6
00109$:
	pop	psw
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'in50hz_init'
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:162: void in50hz_init(void)
;	-----------------------------------------
;	 function in50hz_init
;	-----------------------------------------
_in50hz_init:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:164: P1M1 |= (1<<4); //Pin P1.4 input
	orl	_P1M1,#0x10
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:165: P1M2 &= ~(1<<4);
	mov	r7,_P1M2
	anl	ar7,#0xEF
	mov	_P1M2,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:166: EX1=1; //Externer interrupt ein
	setb	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:167: IT1=1; //fallende flanke
	setb	_TCON_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:168: IP0 = 0x02;
	mov	_IP0,#0x02
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:169: IP0H = 0x04;
	mov	_IP0H,#0x04
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:170: EA=1;  //globale interruptfreigabe
	setb	_IEN0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:171: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;buf                       Allocated to registers r7 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:174: void send(unsigned char buf)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
	mov	r7,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:176: while(!TI);
00101$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:177: TI=0;
	jbc	_SCON_1,00110$
	sjmp	00101$
00110$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:178: SBUF=buf;
	mov	_SBUF,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:181: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:187: i2c_sla_init();
	lcall	_i2c_sla_init
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:188: in50hz_init();
	lcall	_in50hz_init
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:192: BRGCON&=0xFE;	// Baudrate Generator stoppen
	anl	_BRGCON,#0xFE
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:193: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	anl	_P1M1,#0xFC
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:194: P1M2&=0xFC;
	anl	_P1M2,#0xFC
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:195: SCON=0x50;		// Mode 1, receive enable
	mov	_SCON,#0x50
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:196: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	orl	_SSTAT,#0xE0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:197: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:198: BRGR1=0x00;	//05 Baudrate = cclk/((BRGR1,BRGR0)+16)
	mov	_BRGR1,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:199: BRGR0=0x30;	//F0 für 115200 0030 nehmen, autocal: 600bd= 0x2FF0, 19200: 0x0170
	mov	_BRGR0,#0x30
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:200: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:201: SBUF=0x55; // hiernach ist TI==1
	mov	_SBUF,#0x55
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:205: P0M1 &= ~0xc0; //pin 0.6 und 0.7 Ausgang
	mov	r7,_P0M1
	anl	ar7,#0x3F
	mov	_P0M1,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:206: P0M2 |= 0xc0;
	orl	_P0M2,#0xC0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:207: K1OUT=0;
	clr	_P0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:208: K2OUT=0;
	clr	_P0_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:210: TMOD=0x02;   // Timer 0 als reload
	mov	_TMOD,#0x02
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:211: TH0=0x70; //für 10ms / 256
	mov	_TH0,#0x70
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:212: TL0=0x70; //für 10ms / 256  
	mov	_TL0,#0x70
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:215: ET0=1;                        // Interrupt für Timer 0 freigeben
	setb	_IEN0_1
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:216: IP0 |= 0x02;
	orl	_IP0,#0x02
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:217: TR0=1;                        // Timer 0 starten
	setb	_TCON_4
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:218: EA=1;
	setb	_IEN0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:220: P0M1 &= ~(1<<1); // P0_1 = EINGANG zum test
	mov	r7,_P0M1
	anl	ar7,#0xFD
	mov	_P0M1,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:221: P0M2 &= ~(1<<1);
	mov	r7,_P0M2
	anl	ar7,#0xFD
	mov	_P0M2,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:222: P0_1=1;
	setb	_P0_1
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:224: P0M1 |= (1<<2); // P0_2 = EINGANG zum test
	orl	_P0M1,#0x04
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:225: P0M2 &= ~(1<<2);
	mov	r7,_P0M2
	anl	ar7,#0xFB
	mov	_P0M2,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:226: P0_2=0;
	clr	_P0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:228: if(P0_1==0)
	jb	_P0_1,00102$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:230: mode=AN;    //anschnittdimmer
	mov	_mode,#0x01
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:233: dimm_I2C[0]=0;
	mov	_dimm_I2C,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:234: dimm_I2C[1]=0;
	mov	(_dimm_I2C + 0x0001),#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:236: while(1)
00114$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:247: if(RI){
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:248: RI=0;
	jbc	_SCON_0,00139$
	sjmp	00108$
00139$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:249: cmd=SBUF;
	mov	_cmd,_SBUF
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:250: if (cmd=='+')TRIM-=1;
	mov	a,#0x2B
	cjne	a,_cmd,00104$
	dec	_TRIM
00104$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:251: if (cmd=='-')TRIM+=1;
	mov	a,#0x2D
	cjne	a,_cmd,00106$
	inc	_TRIM
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:252: send(cmd);
	mov	dpl,_cmd
	lcall	_send
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:253: send(TH0);
	mov	dpl,_TH0
	lcall	_send
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:255: if(dimm_I2C[0]!=mk[0]||dimm_I2C[1]!=mk[1])
	mov	a,_dimm_I2C
	mov	r7,a
	cjne	a,_mk,00109$
	mov	a,(_mk + 0x0001)
	cjne	a,(_dimm_I2C + 0x0001),00146$
	sjmp	00127$
00146$:
00109$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:262: mk[0]=dimm_I2C[0];
	mov	_mk,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:263: mk[1]=dimm_I2C[1];
	mov	(_mk + 0x0001),(_dimm_I2C + 0x0001)
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/app_dim2/dim2_sla.c:266: for (i=0;i<5000;++i);
	sjmp	00114$
00127$:
	mov	r6,#0x88
	mov	r7,#0x13
00118$:
	dec	r6
	cjne	r6,#0xFF,00147$
	dec	r7
00147$:
	mov	a,r6
	orl	a,r7
	jnz	00118$
	sjmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
