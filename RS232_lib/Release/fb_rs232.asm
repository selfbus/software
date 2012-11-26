;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Fri Oct 19 23:08:49 2012
;--------------------------------------------------------
	.module fb_rs232
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hex
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
	.globl _rs_send_hex_l
	.globl _rs_send_hex_i
	.globl _rs_send_hex
	.globl _rs_send
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
;Allocation info for local variables in function 'rs_init'
;------------------------------------------------------------
;baudrate                  Allocated to registers r6 r7 
;brg                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:23: void rs_init(unsigned baudrate)
;	-----------------------------------------
;	 function rs_init
;	-----------------------------------------
_rs_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:27: brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
	mov	r4,#0x30
	mov	r5,#0x00
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:28: if(baudrate==3)	// 300 Baud
	cjne	r6,#0x03,00102$
	cjne	r7,#0x00,00102$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:29: brg=0x5FF0;
	mov	r4,#0xF0
	mov	r5,#0x5F
00102$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:30: if(baudrate==6)		// 600 Baud
	cjne	r6,#0x06,00104$
	cjne	r7,#0x00,00104$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:31: brg=0x2FF0;
	mov	r4,#0xF0
	mov	r5,#0x2F
00104$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:32: if(baudrate==12)	// 1200 Baud
	cjne	r6,#0x0C,00106$
	cjne	r7,#0x00,00106$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:33: brg=0x17F0;
	mov	r4,#0xF0
	mov	r5,#0x17
00106$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:34: if(baudrate==24)	// 2400 Baud
	cjne	r6,#0x18,00108$
	cjne	r7,#0x00,00108$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:35: brg=0x2FF0;
	mov	r4,#0xF0
	mov	r5,#0x2F
00108$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:36: if(baudrate==48)	// 4800 Baud
	cjne	r6,#0x30,00110$
	cjne	r7,#0x00,00110$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:37: brg=0x05F0;
	mov	r4,#0xF0
	mov	r5,#0x05
00110$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:38: if(baudrate==96)	// 9600 Baud
	cjne	r6,#0x60,00112$
	cjne	r7,#0x00,00112$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:39: brg=0x02F0;
	mov	r4,#0xF0
	mov	r5,#0x02
00112$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:40: if(baudrate==192)	// 19200 Baud
	cjne	r6,#0xC0,00114$
	cjne	r7,#0x00,00114$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:41: brg=0x0170;
	mov	r4,#0x70
	mov	r5,#0x01
00114$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:42: if(baudrate==384)	// 38400 Baud
	cjne	r6,#0x80,00116$
	cjne	r7,#0x01,00116$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:43: brg=0x00B0;
	mov	r4,#0xB0
	mov	r5,#0x00
00116$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:44: if(baudrate==576)	// 57600 Baud
	cjne	r6,#0x40,00118$
	cjne	r7,#0x02,00118$
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
;wert                      Allocated to stack - _bp +1
;n                         Allocated to registers r4 r5 
;zero                      Allocated to registers b0 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:106: void rs_send_dec(unsigned int wert)
;	-----------------------------------------
;	 function rs_send_dec
;	-----------------------------------------
_rs_send_dec:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:112: zero=1;
	setb	b0
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:114: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:115: while(wert>=10000){
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	subb	a,#0x27
	jc	00162$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:116: n++;
	inc	r2
	cjne	r2,#0x00,00188$
	inc	r3
00188$:
	mov	ar4,r2
	mov	ar5,r3
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:117: wert-=10000;
	mov	a,r6
	add	a,#0xF0
	mov	r6,a
	mov	a,r7
	addc	a,#0xD8
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	sjmp	00101$
00162$:
	mov	ar4,r2
	mov	ar5,r3
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:119: if(n>0)
	mov	a,r2
	orl	a,r3
	jz	00108$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:121: while(!TI);
00104$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:122: TI=0;
	jbc	_SCON_1,00190$
	sjmp	00104$
00190$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:123: SBUF=n+48;
	mov	ar7,r4
	mov	a,#0x30
	add	a,r7
	mov	_SBUF,a
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:124: zero=0;
	clr	b0
00108$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:127: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:128: while(wert>=1000){
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00109$:
	clr	c
	mov	a,r2
	subb	a,#0xE8
	mov	a,r3
	subb	a,#0x03
	jc	00163$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:129: n++;
	inc	r6
	cjne	r6,#0x00,00192$
	inc	r7
00192$:
	mov	ar4,r6
	mov	ar5,r7
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:130: wert-=1000;
	mov	a,r2
	add	a,#0x18
	mov	r2,a
	mov	a,r3
	addc	a,#0xFC
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	sjmp	00109$
00163$:
	mov	ar4,r6
	mov	ar5,r7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:132: if(n>0 || !zero)
	mov	a,r6
	orl	a,r7
	jnz	00112$
	jb	b0,00116$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:134: while(!TI);
00112$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:135: TI=0;
	jbc	_SCON_1,00195$
	sjmp	00112$
00195$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:136: SBUF=n+48;
	mov	ar7,r4
	mov	a,#0x30
	add	a,r7
	mov	_SBUF,a
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:137: zero=0;
	clr	b0
00116$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:139: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:140: while(wert>=100){
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00118$:
	clr	c
	mov	a,r2
	subb	a,#0x64
	mov	a,r3
	subb	a,#0x00
	jc	00164$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:141: n++;
	inc	r6
	cjne	r6,#0x00,00197$
	inc	r7
00197$:
	mov	ar4,r6
	mov	ar5,r7
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:142: wert-=100;
	mov	a,r2
	add	a,#0x9C
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	sjmp	00118$
00164$:
	mov	ar4,r6
	mov	ar5,r7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:144: if(n>0 || !zero)
	mov	a,r6
	orl	a,r7
	jnz	00121$
	jb	b0,00125$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:146: while(!TI);
00121$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:147: TI=0;
	jbc	_SCON_1,00200$
	sjmp	00121$
00200$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:148: SBUF=n+48;
	mov	ar7,r4
	mov	a,#0x30
	add	a,r7
	mov	_SBUF,a
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:149: zero=0;
	clr	b0
00125$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:152: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:153: while(wert>=10){
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
00127$:
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	subb	a,#0x00
	jc	00165$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:154: n++;
	inc	r6
	cjne	r6,#0x00,00202$
	inc	r7
00202$:
	mov	ar4,r6
	mov	ar5,r7
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:155: wert-=10;
	mov	a,r2
	add	a,#0xF6
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	sjmp	00127$
00165$:
	mov	ar4,r6
	mov	ar5,r7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:157: if(n>0 || !zero)
	mov	a,r6
	orl	a,r7
	jnz	00130$
	jb	b0,00136$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:159: while(!TI);
00130$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:160: TI=0;
	jbc	_SCON_1,00205$
	sjmp	00130$
00205$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:161: SBUF=n+48;
	mov	a,#0x30
	add	a,r4
	mov	_SBUF,a
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:164: while(!TI);
00136$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:165: TI=0;
	jbc	_SCON_1,00206$
	sjmp	00136$
00206$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:166: SBUF=wert+48;
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	mov	a,#0x30
	add	a,r6
	mov	_SBUF,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_s'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;n                         Allocated to registers r4 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:180: void rs_send_s(unsigned char *s)
;	-----------------------------------------
;	 function rs_send_s
;	-----------------------------------------
_rs_send_s:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:183: while (s[n]!=0)
	mov	r4,#0x00
00111$:
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	jz	00113$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:185: if(s[n]=='\n')
	cjne	r3,#0x0A,00106$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:187: while(!TI);
00101$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:188: TI=0;
	jbc	_SCON_1,00133$
	sjmp	00101$
00133$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:189: SBUF=0x0d;
	mov	_SBUF,#0x0D
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:191: while(!TI);
00106$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:192: TI=0;
	jbc	_SCON_1,00134$
	sjmp	00106$
00134$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:193: SBUF=s[n];
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_SBUF,a
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:194: n++;
	inc	r4
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:195: if(n>254)
	mov	a,r4
	add	a,#0xff - 0xFE
	jnc	00111$
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:196: return;
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:198: return;
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex_l'
;------------------------------------------------------------
;wert                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:223: void rs_send_hex_l(unsigned long wert)
;	-----------------------------------------
;	 function rs_send_hex_l
;	-----------------------------------------
_rs_send_hex_l:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:225: rs_send_hex_i(wert>>16);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_rs_send_hex_i
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:226: rs_send_hex_i(wert&0xFFFF);
	mov	dpl,r4
	mov	dph,r5
	ljmp	_rs_send_hex_i
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex_i'
;------------------------------------------------------------
;wert                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:249: void rs_send_hex_i(unsigned int wert)
;	-----------------------------------------
;	 function rs_send_hex_i
;	-----------------------------------------
_rs_send_hex_i:
	mov	r6,dpl
	mov	r7,dph
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:251: rs_send_hex(wert>>8);
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_rs_send_hex
	pop	ar6
	pop	ar7
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:252: rs_send_hex(wert&0xFF);
	mov	dpl,r6
	ljmp	_rs_send_hex
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex'
;------------------------------------------------------------
;wert                      Allocated to registers r7 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:265: void rs_send_hex(unsigned char wert)
;	-----------------------------------------
;	 function rs_send_hex
;	-----------------------------------------
_rs_send_hex:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:269: rs_send(hex[wert>>4]);
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0F
	mov	dptr,#_hex
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_rs_send
	pop	ar7
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:270: rs_send(hex[wert&0x0F]);
	mov	a,#0x0F
	anl	a,r7
	mov	dptr,#_hex
	movc	a,@a+dptr
	mov	dpl,a
	ljmp	_rs_send
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send'
;------------------------------------------------------------
;z                         Allocated to registers r7 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:274: void rs_send(unsigned char z)
;	-----------------------------------------
;	 function rs_send
;	-----------------------------------------
_rs_send:
	mov	r7,dpl
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:276: while(!TI);
00101$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:277: TI=0;
	jbc	_SCON_1,00110$
	sjmp	00101$
00110$:
;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:278: SBUF=z;
	mov	_SBUF,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_hex:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
