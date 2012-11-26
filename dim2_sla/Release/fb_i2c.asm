;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Thu Apr 19 21:17:26 2012
;--------------------------------------------------------
	.module fb_i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _i2c_sla_init
	.globl _i2c_ma_init
	.globl _i2c_wait
	.globl _i2c_send_daten
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'i2c_sla_init'
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:13: void i2c_sla_init(void)
;	-----------------------------------------
;	 function i2c_sla_init
;	-----------------------------------------
_i2c_sla_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:15: P1M1 |= 0x0c;//(1<<2)+(1<<3);
	orl	_P1M1,#0x0C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:16: P1M2 &= ~0x0c;
	mov	r7,_P1M2
	anl	ar7,#0xF3
	mov	_P1M2,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:17: I2ADR = 0xa0; // default slave address
	mov	_I2ADR,#0xA0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:18: I2CON = 0x44;
	mov	_I2CON,#0x44
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:19: I2SCLH=0; //I2C takt
	mov	_I2SCLH,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:20: I2SCLL=0; //I2C takt
	mov	_I2SCLL,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:21: SDA=1;
	setb	_P1_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:22: SCL=1;
	setb	_P1_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:23: EI2C=1;
	setb	_IEN1_0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:24: EA=1;
	setb	_IEN0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:25: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_ma_init'
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:28: void i2c_ma_init(void)
;	-----------------------------------------
;	 function i2c_ma_init
;	-----------------------------------------
_i2c_ma_init:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:30: P1M1 |= 0x0c;//(1<<2)+(1<<3);
	orl	_P1M1,#0x0C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:31: P1M2 |= 0x0c;//((1<<2)+(1<<3));
	orl	_P1M2,#0x0C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:32: I2ADR = 0xa0; // default slave address
	mov	_I2ADR,#0xA0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:33: I2CON = 0x44;
	mov	_I2CON,#0x44
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:34: I2SCLH=17; //I2C takt
	mov	_I2SCLH,#0x11
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:35: I2SCLL=17; //I2C takt
	mov	_I2SCLL,#0x11
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:36: SDA=1;
	setb	_P1_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:37: SCL=1;
	setb	_P1_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:38: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_wait'
;------------------------------------------------------------
;timeueberlauf             Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:40: unsigned char i2c_wait(void)
;	-----------------------------------------
;	 function i2c_wait
;	-----------------------------------------
_i2c_wait:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:44: while (SI==0)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	jb	_I2CON_3,00105$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:47: timeueberlauf++;
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:48: if(timeueberlauf>MAX_I2C_ZEIT)
	clr	c
	mov	a,#0xB8
	subb	a,r6
	mov	a,#0x0B
	subb	a,r7
	jnc	00103$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:51: SI=0;
	clr	_I2CON_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:52: return 0xFF;
	mov	dpl,#0xFF
	ret
00105$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:57: SI=0;
	clr	_I2CON_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:58: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_send_daten'
;------------------------------------------------------------
;K2                        Allocated to stack - _bp -3
;K1                        Allocated to registers r7 
;m1                        Allocated to registers r6 
;m2                        Allocated to registers r5 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:62: unsigned char i2c_send_daten(unsigned char K1,unsigned char K2)
;	-----------------------------------------
;	 function i2c_send_daten
;	-----------------------------------------
_i2c_send_daten:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:64: unsigned char m1=P0M1;      //wert sichern
	mov	r6,_P0M1
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:65: unsigned char m2=P0M2;      //wert sichern
	mov	r5,_P0M2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:66: P0M1=0xFF;  //eingänge umschalten wegen Tastererweiterung
	mov	_P0M1,#0xFF
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:67: P0M2=0x00;  //eingänge umschalten wegen Tastererweiterung
	mov	_P0M2,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:68: I2SCLH=17;
	mov	_I2SCLH,#0x11
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:69: I2SCLL=17;
	mov	_I2SCLL,#0x11
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:70: I2CON=0;
	mov	_I2CON,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:71: I2EN=1;         //Master Transmit mode
	setb	_I2CON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:72: CRSEL=0;        //CRSEL=0
	clr	_I2CON_0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:73: STA=1;           //send Start MASTER
	setb	_I2CON_5
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:74: if(i2c_wait()!=0)
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_wait
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00102$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:75: return 0xff;
	mov	dpl,#0xFF
	sjmp	00111$
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:76: STA=0;
	clr	_I2CON_5
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:77: I2DAT = 0xa0+0;//a0= adresse i2c eeprom 0=schreiben SLA_W;       //Adresse senden MASTER
	mov	_I2DAT,#0xA0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:78: if(i2c_wait()!=0)
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_wait
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00104$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:79: return 0xff;
	mov	dpl,#0xFF
	sjmp	00111$
00104$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:80: I2DAT = 0x00;                           //Daten Senden MASTER
	mov	_I2DAT,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:81: if(i2c_wait()!=0)
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_wait
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00106$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:82: return 0xff;
	mov	dpl,#0xFF
	sjmp	00111$
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:83: I2DAT = K1;                             //Daten Senden MASTER
	mov	_I2DAT,r7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:84: if(i2c_wait()!=0)
	push	ar6
	push	ar5
	lcall	_i2c_wait
	mov	a,dpl
	pop	ar5
	pop	ar6
	jz	00108$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:85: return 0xff;
	mov	dpl,#0xFF
	sjmp	00111$
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:86: I2DAT = K2;                             //Daten Senden MASTER
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	_I2DAT,@r0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:88: if(i2c_wait()!=0)
	push	ar6
	push	ar5
	lcall	_i2c_wait
	mov	a,dpl
	pop	ar5
	pop	ar6
	jz	00110$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:89: return 0xff;
	mov	dpl,#0xFF
	sjmp	00111$
00110$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:90: STO=1;            //send Stop MASTER
	setb	_I2CON_4
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:91: P0M1=m1;  //eingänge umschalten wegen Tastererweiterung
	mov	_P0M1,r6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:92: P0M2=m2;  //eingänge umschalten wegen Tastererweiterung
	mov	_P0M2,r5
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:93: return 0;
	mov	dpl,#0x00
00111$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
