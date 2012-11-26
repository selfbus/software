;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
; This file was generated Thu Feb 23 22:43:21 2012
;--------------------------------------------------------
	.module fb_rs232
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
	.globl _rs_init
	.globl _rs_send_dec
	.globl _rs_send_s
	.globl _rs_send_hex_i
	.globl _rs_send_hex
	.globl _rs_send
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
;Allocation info for local variables in function 'rs_init'
;------------------------------------------------------------
;baudrate                  Allocated to registers r2 r3 
;brg                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:23: void rs_init(unsigned int baudrate)
;	-----------------------------------------
;	 function rs_init
;	-----------------------------------------
_rs_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:27: brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
	mov	r4,#0x30
	mov	r5,#0x00
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:28: if(baudrate==3)	// 300 Baud
	cjne	r2,#0x03,00102$
	cjne	r3,#0x00,00102$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:29: brg=0x5FF0;
	mov	r4,#0xF0
	mov	r5,#0x5F
00102$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:30: if(baudrate==6)		// 600 Baud
	cjne	r2,#0x06,00104$
	cjne	r3,#0x00,00104$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:31: brg=0x2FF0;
	mov	r4,#0xF0
	mov	r5,#0x2F
00104$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:32: if(baudrate==12)	// 1200 Baud
	cjne	r2,#0x0C,00106$
	cjne	r3,#0x00,00106$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:33: brg=0x17F0;
	mov	r4,#0xF0
	mov	r5,#0x17
00106$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:34: if(baudrate==24)	// 2400 Baud
	cjne	r2,#0x18,00108$
	cjne	r3,#0x00,00108$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:35: brg=0x2FF0;
	mov	r4,#0xF0
	mov	r5,#0x2F
00108$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:36: if(baudrate==48)	// 4800 Baud
	cjne	r2,#0x30,00110$
	cjne	r3,#0x00,00110$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:37: brg=0x05F0;
	mov	r4,#0xF0
	mov	r5,#0x05
00110$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:38: if(baudrate==96)	// 9600 Baud
	cjne	r2,#0x60,00112$
	cjne	r3,#0x00,00112$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:39: brg=0x02F0;
	mov	r4,#0xF0
	mov	r5,#0x02
00112$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:40: if(baudrate==192)	// 19200 Baud
	cjne	r2,#0xC0,00114$
	cjne	r3,#0x00,00114$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:41: brg=0x0170;
	mov	r4,#0x70
	mov	r5,#0x01
00114$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:42: if(baudrate==384)	// 38400 Baud
	cjne	r2,#0x80,00116$
	cjne	r3,#0x01,00116$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:43: brg=0x00B0;
	mov	r4,#0xB0
	mov	r5,#0x00
00116$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:44: if(baudrate==576)	// 57600 Baud
	cjne	r2,#0x40,00118$
	cjne	r3,#0x02,00118$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:45: brg=0x0070;
	mov	r4,#0x70
	mov	r5,#0x00
00118$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:48: BRGCON&=0xFE;	// Baudrate Generator stoppen
	anl	_BRGCON,#0xFE
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:49: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	anl	_P1M1,#0xFC
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:50: P1M2&=0xFC;
	anl	_P1M2,#0xFC
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:51: SCON=0x50;		// Mode 1, receive enable
	mov	_SCON,#0x50
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:52: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	orl	_SSTAT,#0xE0
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:53: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:54: BRGR1=brg>>8;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
	mov	_BRGR1,r5
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:55: BRGR0=brg;
	mov	_BRGR0,r4
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:56: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:57: TI=1;
	setb	_SCON_1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_dec'
;------------------------------------------------------------
;wert                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:85: void rs_send_dec(unsigned int wert)
;	-----------------------------------------
;	 function rs_send_dec
;	-----------------------------------------
_rs_send_dec:
	mov	r2,dpl
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:145: TI=0;
	clr	_SCON_1
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:146: SBUF=wert+48;
	mov	a,#0x30
	add	a,r2
	mov	_SBUF,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_s'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;n                         Allocated to registers r5 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:160: void rs_send_s(unsigned char *s)
;	-----------------------------------------
;	 function rs_send_s
;	-----------------------------------------
_rs_send_s:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:163: while (s[n]!=0)
	mov	r5,#0x00
00111$:
	mov	a,r5
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	jz	00113$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:165: if(s[n]=='\n')
	cjne	r6,#0x0A,00106$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:167: while(!TI);
00101$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:168: TI=0;
	jbc	_SCON_1,00126$
	sjmp	00101$
00126$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:169: SBUF=0x0d;
	mov	_SBUF,#0x0D
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:171: while(!TI);
00106$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:172: TI=0;
	jbc	_SCON_1,00127$
	sjmp	00106$
00127$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:173: SBUF=s[n];
	mov	a,r5
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_SBUF,a
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:174: n++;
	inc	r5
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:175: if(n>254)
	mov	a,r5
	add	a,#0xff - 0xFE
	jnc	00111$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:176: return;
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:178: return;
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex_i'
;------------------------------------------------------------
;wert                      Allocated to registers 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:230: void rs_send_hex_i(unsigned int wert)
;	-----------------------------------------
;	 function rs_send_hex_i
;	-----------------------------------------
_rs_send_hex_i:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:231: {wert;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex'
;------------------------------------------------------------
;wert                      Allocated to registers 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:243: void rs_send_hex(unsigned char wert)
;	-----------------------------------------
;	 function rs_send_hex
;	-----------------------------------------
_rs_send_hex:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:245: wert;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send'
;------------------------------------------------------------
;z                         Allocated to registers r2 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:254: void rs_send(unsigned char z)
;	-----------------------------------------
;	 function rs_send
;	-----------------------------------------
_rs_send:
	mov	r2,dpl
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:256: while(!TI);
00101$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:257: TI=0;
	jbc	_SCON_1,00108$
	sjmp	00101$
00108$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:258: SBUF=z;
	mov	_SBUF,r2
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
