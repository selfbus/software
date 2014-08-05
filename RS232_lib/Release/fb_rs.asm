;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
; This file was generated Tue Aug  5 21:15:16 2014
;--------------------------------------------------------
	.module fb_rs
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hex
	.globl _main
	.globl _convert_adr
	.globl _save_ga
	.globl _restart_app
	.globl _set_filtermode
	.globl _send_ok
	.globl _process_tel
	.globl _restart_hw
	.globl _send_obj_value
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
	.globl _rsin_busy
	.globl _write_ok
	.globl _filtermode
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
	.area OSEG    (OVR,DATA)
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
_filtermode::
	.ds 1
_write_ok::
	.ds 1
_rsin_busy::
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_X1_int
	.ds	5
	ljmp	_T1_int
	.ds	5
	ljmp	_serial_int
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
;Allocation info for local variables in function 'rs_init'
;------------------------------------------------------------
;baudrate                  Allocated to registers r6 r7 
;brg                       Allocated to registers r4 r5 
;------------------------------------------------------------
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:23: void rs_init(unsigned baudrate)
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:27: brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
	mov	r4,#0x30
	mov	r5,#0x00
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:28: if(baudrate==3)	// 300 Baud
	cjne	r6,#0x03,00102$
	cjne	r7,#0x00,00102$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:29: brg=0x5FF0;
	mov	r4,#0xF0
	mov	r5,#0x5F
00102$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:30: if(baudrate==6)		// 600 Baud
	cjne	r6,#0x06,00104$
	cjne	r7,#0x00,00104$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:31: brg=0x2FF0;
	mov	r4,#0xF0
	mov	r5,#0x2F
00104$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:32: if(baudrate==12)	// 1200 Baud
	cjne	r6,#0x0C,00106$
	cjne	r7,#0x00,00106$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:33: brg=0x17F0;
	mov	r4,#0xF0
	mov	r5,#0x17
00106$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:34: if(baudrate==24)	// 2400 Baud
	cjne	r6,#0x18,00108$
	cjne	r7,#0x00,00108$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:35: brg=0x2FF0;
	mov	r4,#0xF0
	mov	r5,#0x2F
00108$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:36: if(baudrate==48)	// 4800 Baud
	cjne	r6,#0x30,00110$
	cjne	r7,#0x00,00110$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:37: brg=0x05F0;
	mov	r4,#0xF0
	mov	r5,#0x05
00110$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:38: if(baudrate==96)	// 9600 Baud
	cjne	r6,#0x60,00112$
	cjne	r7,#0x00,00112$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:39: brg=0x02F0;
	mov	r4,#0xF0
	mov	r5,#0x02
00112$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:40: if(baudrate==192)	// 19200 Baud
	cjne	r6,#0xC0,00114$
	cjne	r7,#0x00,00114$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:41: brg=0x0170;
	mov	r4,#0x70
	mov	r5,#0x01
00114$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:42: if(baudrate==384)	// 38400 Baud
	cjne	r6,#0x80,00116$
	cjne	r7,#0x01,00116$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:43: brg=0x00B0;
	mov	r4,#0xB0
	mov	r5,#0x00
00116$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:44: if(baudrate==576)	// 57600 Baud
	cjne	r6,#0x40,00118$
	cjne	r7,#0x02,00118$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:45: brg=0x0070;
	mov	r4,#0x70
	mov	r5,#0x00
00118$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:48: BRGCON&=0xFE;	// Baudrate Generator stoppen
	anl	_BRGCON,#0xFE
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:49: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	anl	_P1M1,#0xFC
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:50: P1M2&=0xFC;
	anl	_P1M2,#0xFC
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:51: SCON=0x50;		// Mode 1, receive enable
	mov	_SCON,#0x50
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:52: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	orl	_SSTAT,#0xE0
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:53: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:54: BRGR1=brg>>8;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
	mov	_BRGR1,r5
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:55: BRGR0=brg;
	mov	_BRGR0,r4
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:56: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:57: TI=1;
	setb	_SCON_1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_dec'
;------------------------------------------------------------
;wert                      Allocated to stack - _bp +1
;n                         Allocated to registers r4 r5 
;zero                      Allocated to registers b0 
;------------------------------------------------------------
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:106: void rs_send_dec(unsigned int wert)
;	-----------------------------------------
;	 function rs_send_dec
;	-----------------------------------------
_rs_send_dec:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:112: zero=1;
	setb	b0
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:114: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:115: while(wert>=10000){
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:116: n++;
	inc	r2
	cjne	r2,#0x00,00167$
	inc	r3
00167$:
	mov	ar4,r2
	mov	ar5,r3
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:117: wert-=10000;
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:119: if(n>0)
	mov	a,r2
	orl	a,r3
	jz	00108$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:121: while(!TI);
00104$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:122: TI=0;
	jbc	_SCON_1,00169$
	sjmp	00104$
00169$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:123: SBUF=n+48;
	mov	ar7,r4
	mov	a,#0x30
	add	a,r7
	mov	_SBUF,a
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:124: zero=0;
	clr	b0
00108$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:127: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:128: while(wert>=1000){
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:129: n++;
	inc	r6
	cjne	r6,#0x00,00171$
	inc	r7
00171$:
	mov	ar4,r6
	mov	ar5,r7
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:130: wert-=1000;
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:132: if(n>0 || !zero)
	mov	a,r6
	orl	a,r7
	jnz	00112$
	jb	b0,00116$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:134: while(!TI);
00112$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:135: TI=0;
	jbc	_SCON_1,00174$
	sjmp	00112$
00174$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:136: SBUF=n+48;
	mov	ar7,r4
	mov	a,#0x30
	add	a,r7
	mov	_SBUF,a
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:137: zero=0;
	clr	b0
00116$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:139: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:140: while(wert>=100){
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:141: n++;
	inc	r6
	cjne	r6,#0x00,00176$
	inc	r7
00176$:
	mov	ar4,r6
	mov	ar5,r7
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:142: wert-=100;
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:144: if(n>0 || !zero)
	mov	a,r6
	orl	a,r7
	jnz	00121$
	jb	b0,00125$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:146: while(!TI);
00121$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:147: TI=0;
	jbc	_SCON_1,00179$
	sjmp	00121$
00179$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:148: SBUF=n+48;
	mov	ar7,r4
	mov	a,#0x30
	add	a,r7
	mov	_SBUF,a
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:149: zero=0;
	clr	b0
00125$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:152: n=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:153: while(wert>=10){
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:154: n++;
	inc	r6
	cjne	r6,#0x00,00181$
	inc	r7
00181$:
	mov	ar4,r6
	mov	ar5,r7
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:155: wert-=10;
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:157: if(n>0 || !zero)
	mov	a,r6
	orl	a,r7
	jnz	00130$
	jb	b0,00136$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:159: while(!TI);
00130$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:160: TI=0;
	jbc	_SCON_1,00184$
	sjmp	00130$
00184$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:161: SBUF=n+48;
	mov	a,#0x30
	add	a,r4
	mov	_SBUF,a
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:164: while(!TI);
00136$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:165: TI=0;
	jbc	_SCON_1,00185$
	sjmp	00136$
00185$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:166: SBUF=wert+48;
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:180: void rs_send_s(unsigned char *s)
;	-----------------------------------------
;	 function rs_send_s
;	-----------------------------------------
_rs_send_s:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:183: while (s[n]!=0)
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:185: if(s[n]=='\n')
	cjne	r3,#0x0A,00106$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:187: while(!TI);
00101$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:188: TI=0;
	jbc	_SCON_1,00126$
	sjmp	00101$
00126$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:189: SBUF=0x0d;
	mov	_SBUF,#0x0D
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:191: while(!TI);
00106$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:192: TI=0;
	jbc	_SCON_1,00127$
	sjmp	00106$
00127$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:193: SBUF=s[n];
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:194: n++;
	inc	r4
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:195: if(n>254)
	mov	a,r4
	add	a,#0xff - 0xFE
	jnc	00111$
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:196: return;
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:198: return;
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex_l'
;------------------------------------------------------------
;wert                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:223: void rs_send_hex_l(unsigned long wert)
;	-----------------------------------------
;	 function rs_send_hex_l
;	-----------------------------------------
_rs_send_hex_l:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:225: rs_send_hex_i(wert>>16);
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:226: rs_send_hex_i(wert&0xFFFF);
	mov	dpl,r4
	mov	dph,r5
	ljmp	_rs_send_hex_i
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex_i'
;------------------------------------------------------------
;wert                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:249: void rs_send_hex_i(unsigned int wert)
;	-----------------------------------------
;	 function rs_send_hex_i
;	-----------------------------------------
_rs_send_hex_i:
	mov	r6,dpl
	mov	r7,dph
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:251: rs_send_hex(wert>>8);
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_rs_send_hex
	pop	ar6
	pop	ar7
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:252: rs_send_hex(wert&0xFF);
	mov	dpl,r6
	ljmp	_rs_send_hex
;------------------------------------------------------------
;Allocation info for local variables in function 'rs_send_hex'
;------------------------------------------------------------
;wert                      Allocated to registers r7 
;------------------------------------------------------------
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:265: void rs_send_hex(unsigned char wert)
;	-----------------------------------------
;	 function rs_send_hex
;	-----------------------------------------
_rs_send_hex:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:269: rs_send(hex[wert>>4]);
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:270: rs_send(hex[wert&0x0F]);
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
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:274: void rs_send(unsigned char z)
;	-----------------------------------------
;	 function rs_send
;	-----------------------------------------
_rs_send:
	mov	r7,dpl
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:276: while(!TI);
00101$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:277: TI=0;
	jbc	_SCON_1,00108$
	sjmp	00101$
00108$:
;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:278: SBUF=z;
	mov	_SBUF,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;n                         Allocated to stack - _bp +1
;busy                      Allocated to registers b0 
;value                     Allocated to registers r4 r5 
;baud_tmp                  Allocated to registers r5 r6 
;esc                       Allocated to registers r7 
;------------------------------------------------------------
;	../fb_rs.c:44: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	inc	sp
;	../fb_rs.c:47: __bit busy=0;
	clr	b0
;	../fb_rs.c:50: unsigned char esc=esc_char;
	mov	dptr,#_esc_char
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	../fb_rs.c:52: restart_hw();			// Hardware zurücksetzen
	push	ar7
	push	bits
	lcall	_restart_hw
	pop	bits
;	../fb_rs.c:53: rs_init(baud);			// serielle Schnittstelle initialisieren, muss hier sein
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	bits
	lcall	_rs_init
	pop	bits
;	../fb_rs.c:56: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
	push	bits
	lcall	_restart_app
	pop	bits
;	../fb_rs.c:58: RXLED=1;
	setb	_P0_6
;	../fb_rs.c:59: EIBLED=1;
	setb	_P0_7
;	../fb_rs.c:60: ledcount=0xff;
	mov	_ledcount,#0xFF
;	../fb_rs.c:61: eibledcount=0;
	mov	_eibledcount,#0x00
;	../fb_rs.c:62: rxledcount=0;
	mov	_rxledcount,#0x00
;	../fb_rs.c:63: rsinpos=0;
	mov	_rsinpos,#0x00
;	../fb_rs.c:65: rs_send_s("Kubi's RS-interface V3.00 ");
	mov	dptr,#__str_0
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
;	../fb_rs.c:66: if (baud==96 || baud==192 || baud==384 || baud==576) rs_send_dec(baud);
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	cjne	r5,#0x60,00412$
	cjne	r6,#0x00,00412$
	sjmp	00101$
00412$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	cjne	r5,#0xC0,00413$
	cjne	r6,#0x00,00413$
	sjmp	00101$
00413$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	cjne	r5,#0x80,00414$
	cjne	r6,#0x01,00414$
	sjmp	00101$
00414$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	cjne	r5,#0x40,00102$
	cjne	r6,#0x02,00102$
00101$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	push	bits
	lcall	_rs_send_dec
	pop	bits
	pop	ar7
	sjmp	00103$
00102$:
;	../fb_rs.c:67: else rs_send_s("1152");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar7
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
00103$:
;	../fb_rs.c:68: rs_send_s("00 Baud. ");
	mov	dptr,#__str_2
	mov	b,#0x80
	push	ar7
	push	bits
	lcall	_rs_send_s
	pop	bits
;	../fb_rs.c:69: rs_send_s("Esc=");
	mov	dptr,#__str_3
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
;	../fb_rs.c:70: rs_send(esc);
	mov	dpl,r7
	push	ar7
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:71: rs_send_s("\n");
	mov	dptr,#__str_4
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
;	../fb_rs.c:72: WATCHDOG_INIT 
	mov	_WDL,#0xFF
	clr	_IEN0_7
	mov	_WDCON,#0xE5
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
;	../fb_rs.c:73: WATCHDOG_START
	clr	_IEN0_7
	orl	_WDCON,#0x04
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
;	../fb_rs.c:75: if(fm){
	mov	dptr,#_fm
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jz	00108$
;	../fb_rs.c:76: filtermode=1;
	setb	_filtermode
;	../fb_rs.c:77: rs_send_s("filtered\n");
	mov	dptr,#__str_5
	mov	b,#0x80
	push	ar7
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
	sjmp	00275$
00108$:
;	../fb_rs.c:79: else filtermode=0;
	clr	_filtermode
;	../fb_rs.c:81: do  {
00275$:
;	../fb_rs.c:82: WATCHDOG_FEED
	clr	_IEN0_7
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
;	../fb_rs.c:83: ledcount--;
;	../fb_rs.c:84: if(!ledcount){
	djnz	_ledcount,00117$
;	../fb_rs.c:85: if(!eibledcount)EIBLED=1;
	mov	a,_eibledcount
	jnz	00111$
	setb	_P0_7
	sjmp	00112$
00111$:
;	../fb_rs.c:87: eibledcount--;
	dec	_eibledcount
;	../fb_rs.c:88: EIBLED=0;
	clr	_P0_7
00112$:
;	../fb_rs.c:90: if(!rxledcount)RXLED=1;
	mov	a,_rxledcount
	jnz	00114$
	setb	_P0_6
	sjmp	00117$
00114$:
;	../fb_rs.c:92: rxledcount--;
	dec	_rxledcount
;	../fb_rs.c:93: RXLED=0;
	clr	_P0_6
00117$:
;	../fb_rs.c:96: if(rsin[rsinpos-1]==0x0A) rsinpos--;	// ggf. LF entfernen
	mov	a,_rsinpos
	dec	a
	add	a,#_rsin
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x0A,00119$
	dec	_rsinpos
00119$:
;	../fb_rs.c:97: if(rsinpos>0 && rsin[rsinpos-1]==0x0D&& !busy)	// CR empfangen
	mov	a,_rsinpos
	jnz	00423$
	ljmp	00260$
00423$:
	mov	a,_rsinpos
	dec	a
	add	a,#_rsin
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x0D,00424$
	sjmp	00425$
00424$:
	ljmp	00260$
00425$:
	jnb	b0,00426$
	ljmp	00260$
00426$:
;	../fb_rs.c:99: rxledcount=0xff;// * RXLED lang einschalten
	mov	_rxledcount,#0xFF
;	../fb_rs.c:100: if(echo) rs_send(0x0A);
	mov	dptr,#_echo
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jz	00121$
	mov	dpl,#0x0A
	push	ar7
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar7
00121$:
;	../fb_rs.c:104: if (rsin[0]==esc && rsin[1]=='b') {	// Magic-word 'esc b' empfangen
	mov	a,r7
	cjne	a,_rsin,00428$
	sjmp	00429$
00428$:
	ljmp	00254$
00429$:
	mov	a,#0x62
	cjne	a,(_rsin + 0x0001),00430$
	sjmp	00431$
00430$:
	ljmp	00254$
00431$:
;	../fb_rs.c:106: if(rsin[2]=='s') {		// s=senden oder setzen
	mov	a,#0x73
	cjne	a,(_rsin + 0x0002),00432$
	sjmp	00433$
00432$:
	ljmp	00190$
00433$:
;	../fb_rs.c:108: if(rsin[3]=='0')
	mov	a,#0x30
	cjne	a,(_rsin + 0x0003),00136$
;	../fb_rs.c:110: if( rsin[4]=='1' && rsin[rsinpos-3]=='=' && (rsin[rsinpos-2]=='0' || rsin[rsinpos-2]=='1')) {
	mov	a,#0x31
	cjne	a,(_rsin + 0x0004),00130$
	mov	a,_rsinpos
	add	a,#0xFD
	add	a,#_rsin
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x3D,00130$
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x30,00440$
	sjmp	00129$
00440$:
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x31,00130$
00129$:
;	../fb_rs.c:111: send_obj_value(1);
	mov	dpl,#0x01
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_rs.c:112: busy=1;
	setb	b0
	sjmp	00136$
00130$:
;	../fb_rs.c:115: else if(  rsin[4]=='2' && rsin[rsinpos-4]=='=') {
	mov	a,#0x32
	cjne	a,(_rsin + 0x0004),00126$
	mov	a,_rsinpos
	add	a,#0xFC
	add	a,#_rsin
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x3D,00126$
;	../fb_rs.c:116: send_obj_value(2);
	mov	dpl,#0x02
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_rs.c:117: busy=1;
	setb	b0
	sjmp	00136$
00126$:
;	../fb_rs.c:124: else if( rsin[4]>='3'&& rsin[4]<='6') {
	mov	r6,(_rsin + 0x0004)
	cjne	r6,#0x33,00447$
00447$:
	jc	00136$
	mov	a,r6
	add	a,#0xff - 0x36
	jc	00136$
;	../fb_rs.c:125: send_obj_value(rsin[4]-'0');
	mov	a,r6
	add	a,#0xD0
	mov	dpl,a
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_rs.c:126: busy=1;
	setb	b0
00136$:
;	../fb_rs.c:147: if(rsin[3]=='1' && rsin[4]=='5') {
	mov	a,#0x31
	cjne	a,(_rsin + 0x0003),00138$
	mov	a,#0x35
	cjne	a,(_rsin + 0x0004),00138$
;	../fb_rs.c:148: send_obj_value(15);
	mov	dpl,#0x0F
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_rs.c:149: busy=1;
	setb	b0
00138$:
;	../fb_rs.c:152: if(rsin[3]=='f' && rsin[4]=='a'){
	mov	a,#0x66
	cjne	a,(_rsin + 0x0003),00141$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00141$
;	../fb_rs.c:153: set_filtermode('1');
	mov	dpl,#0x31
	push	ar7
	push	bits
	lcall	_set_filtermode
	pop	bits
;	../fb_rs.c:154: save_ga(convert_adr(6),0);
	mov	dpl,#0x06
	push	bits
	lcall	_convert_adr
	pop	bits
	push	bits
	clr	a
	push	acc
	push	acc
	lcall	_save_ga
	dec	sp
	dec	sp
	pop	bits
;	../fb_rs.c:155: send_ok();//rs_send_s("OK\n");
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00141$:
;	../fb_rs.c:159: if(rsin[3]=='p' && rsin[4]=='a')
	mov	a,#0x70
	cjne	a,(_rsin + 0x0003),00149$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00149$
;	../fb_rs.c:161: pa_tmp=convert_adr(5);
	mov	dpl,#0x05
	push	ar7
	push	bits
	lcall	_convert_adr
	mov	_pa_tmp,dpl
	mov	(_pa_tmp + 1),dph
	pop	bits
	pop	ar7
;	../fb_rs.c:162: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:163: while (!write_ok) {
00145$:
	jb	_write_ok,00147$
;	../fb_rs.c:164: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:165: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:166: FMADRL = 0xFB;
	mov	_FMADRL,#0xFB
;	../fb_rs.c:167: FMDATA = pa_tmp>>8;
	mov	_FMDATA,(_pa_tmp + 1)
;	../fb_rs.c:168: FMDATA = pa_tmp;
	mov	_FMDATA,_pa_tmp
;	../fb_rs.c:169: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:170: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00145$
	setb	_write_ok
	sjmp	00145$
00147$:
;	../fb_rs.c:172: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00149$:
;	../fb_rs.c:175: if(rsin[3]=='g' && rsin[4]=='a')
	mov	a,#0x67
	cjne	a,(_rsin + 0x0003),00157$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00157$
;	../fb_rs.c:177: pa_tmp=convert_adr(5);
	mov	dpl,#0x05
	push	ar7
	push	bits
	lcall	_convert_adr
	mov	_pa_tmp,dpl
	mov	(_pa_tmp + 1),dph
	pop	bits
	pop	ar7
;	../fb_rs.c:178: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:179: while (!write_ok) {
00153$:
	jb	_write_ok,00155$
;	../fb_rs.c:180: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:181: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:182: FMADRL = 0xF8;
	mov	_FMADRL,#0xF8
;	../fb_rs.c:183: FMDATA = pa_tmp>>8;
	mov	_FMDATA,(_pa_tmp + 1)
;	../fb_rs.c:184: FMDATA = pa_tmp;
	mov	_FMDATA,_pa_tmp
;	../fb_rs.c:185: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:186: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00153$
	setb	_write_ok
	sjmp	00153$
00155$:
;	../fb_rs.c:188: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00157$:
;	../fb_rs.c:190: if(rsin[3]=='e' && rsin[4]=='c')
	mov	a,#0x65
	cjne	a,(_rsin + 0x0003),00165$
	mov	a,#0x63
	cjne	a,(_rsin + 0x0004),00165$
;	../fb_rs.c:192: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:193: esc=rsin[5];
	mov	r7,(_rsin + 0x0005)
;	../fb_rs.c:194: while (!write_ok) {
00161$:
	jb	_write_ok,00163$
;	../fb_rs.c:195: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:196: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:197: FMADRL = 0xF7;
	mov	_FMADRL,#0xF7
;	../fb_rs.c:198: FMDATA = esc;
	mov	_FMDATA,r7
;	../fb_rs.c:199: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:200: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00161$
	setb	_write_ok
	sjmp	00161$
00163$:
;	../fb_rs.c:202: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00165$:
;	../fb_rs.c:207: if(rsin[3]=='b' && rsin[4]=='r') {
	mov	a,#0x62
	cjne	a,(_rsin + 0x0003),00476$
	sjmp	00477$
00476$:
	ljmp	00190$
00477$:
	mov	a,#0x72
	cjne	a,(_rsin + 0x0004),00478$
	sjmp	00479$
00478$:
	ljmp	00190$
00479$:
;	../fb_rs.c:208: baud_tmp=0;
;	../fb_rs.c:209: if(rsinpos>9 && rsin[rsinpos-3]=='0' && rsin[rsinpos-2]=='0') {
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,_rsinpos
	add	a,#0xff - 0x09
	jc	00480$
	ljmp	00168$
00480$:
	mov	a,_rsinpos
	add	a,#0xFD
	add	a,#_rsin
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x30,00168$
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x30,00168$
;	../fb_rs.c:210: for(n=5;n<rsinpos-3;n++) {
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x05
00278$:
	push	ar7
	mov	r2,_rsinpos
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xFD
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	mov	r7,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	jnc	00168$
;	../fb_rs.c:211: baud_tmp*=10;
	push	ar7
	push	bits
	push	ar5
	push	ar6
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	bits
	pop	ar7
	mov	ar5,r3
	mov	ar6,r4
;	../fb_rs.c:212: baud_tmp+=rsin[n]-48;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_rsin
	mov	r1,a
	mov	ar4,@r1
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r4,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	a,r4
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
;	../fb_rs.c:210: for(n=5;n<rsinpos-3;n++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	sjmp	00278$
00168$:
;	../fb_rs.c:215: if (baud_tmp==96 || baud_tmp==192 || baud_tmp==384 || baud_tmp==576 || baud_tmp==1152) {
	cjne	r5,#0x60,00486$
	cjne	r6,#0x00,00486$
	sjmp	00179$
00486$:
	cjne	r5,#0xC0,00487$
	cjne	r6,#0x00,00487$
	sjmp	00179$
00487$:
	cjne	r5,#0x80,00488$
	cjne	r6,#0x01,00488$
	sjmp	00179$
00488$:
	cjne	r5,#0x40,00489$
	cjne	r6,#0x02,00489$
	sjmp	00179$
00489$:
	cjne	r5,#0x80,00180$
	cjne	r6,#0x04,00180$
00179$:
;	../fb_rs.c:216: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
;	../fb_rs.c:217: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:218: while (!write_ok) {
	mov	ar4,r6
00173$:
	jb	_write_ok,00176$
;	../fb_rs.c:219: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:220: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:221: FMADRL = 0xFE;
	mov	_FMADRL,#0xFE
;	../fb_rs.c:222: FMDATA = baud_tmp;		// LSB
	mov	_FMDATA,r5
;	../fb_rs.c:223: FMDATA = baud_tmp>>8;	// MSB
	mov	_FMDATA,r4
;	../fb_rs.c:224: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:225: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00173$
	setb	_write_ok
;	../fb_rs.c:227: while(!TI);
	sjmp	00173$
00176$:
	jnb	_SCON_1,00176$
;	../fb_rs.c:228: rs_init(baud_tmp);
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	push	bits
	lcall	_rs_init
	pop	bits
	pop	ar7
	sjmp	00190$
00180$:
;	../fb_rs.c:231: rs_send_s("error: unknown baudrate!\n");
	mov	dptr,#__str_6
	mov	b,#0x80
	push	ar7
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
00190$:
;	../fb_rs.c:239: if(rsin[2]=='r') {	// r=read
	mov	a,#0x72
	cjne	a,(_rsin + 0x0002),00495$
	sjmp	00496$
00495$:
	ljmp	00206$
00496$:
;	../fb_rs.c:242: if(rsin[3]=='p' && rsin[4]=='a')
	mov	a,#0x70
	cjne	a,(_rsin + 0x0003),00192$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00192$
;	../fb_rs.c:244: rs_send_dec(pa_h>>4);
	mov	dptr,#_pa_h
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	push	ar7
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:245: rs_send('.');
	mov	dpl,#0x2E
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:246: rs_send_dec(pa_h&0x0F);
	mov	dptr,#_pa_h
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x0F
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:247: rs_send('.');
	mov	dpl,#0x2E
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:248: rs_send_dec(pa_l);
	mov	dptr,#_pa_l
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r5
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:249: rs_send_s("\n");
	mov	dptr,#__str_4
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
00192$:
;	../fb_rs.c:254: if(rsin[3]=='g' && rsin[4]=='a') {
	mov	a,#0x67
	cjne	a,(_rsin + 0x0003),00501$
	sjmp	00502$
00501$:
	ljmp	00200$
00502$:
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00200$
;	../fb_rs.c:255: groupadr=convert_adr(5);
	mov	dpl,#0x05
	push	ar7
	push	bits
	lcall	_convert_adr
	mov	_groupadr,dpl
	mov	(_groupadr + 1),dph
	pop	bits
	pop	ar7
;	../fb_rs.c:256: n=0;
	mov	r6,#0x00
;	../fb_rs.c:257: value=0xFFFF;
	mov	r4,#0xFF
	mov	r5,#0xFF
;	../fb_rs.c:258: do {								// Wert der GA aus Flash lesen
00196$:
;	../fb_rs.c:259: if(ga_db[n].ga==groupadr) {
	push	ar4
	push	ar5
	mov	a,r6
	add	a,r6
	add	a,acc
	mov	r3,a
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r2
	cjne	a,_groupadr,00505$
	mov	a,r5
	cjne	a,(_groupadr + 1),00505$
	sjmp	00506$
00505$:
	pop	ar5
	pop	ar4
	sjmp	00195$
00506$:
	pop	ar5
	pop	ar4
;	../fb_rs.c:260: value=ga_db[n].val;
	mov	r2,#(_ga_db >> 8)
	mov	dpl,r3
	mov	dph,r2
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
;	../fb_rs.c:261: n=255;
	mov	r6,#0xFF
00195$:
;	../fb_rs.c:263: n++;
	inc	r6
;	../fb_rs.c:264: }while (n>0);
	mov	a,r6
	jnz	00196$
;	../fb_rs.c:265: rs_send_dec(value);
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:266: rs_send_s("\n");// cr schiebt die funktion dazwischen
	mov	dptr,#__str_4
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
00200$:
;	../fb_rs.c:271: if(rsin[3]=='v' && rsin[4]=='a') {
	mov	a,#0x76
	cjne	a,(_rsin + 0x0003),00206$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00206$
;	../fb_rs.c:272: send_obj_value(16);
	mov	dpl,#0x10
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_rs.c:273: busy=1;
	setb	b0
00206$:
;	../fb_rs.c:276: if(rsin[2]=='k'&& rsin[3]=='a'){// kill all
	mov	a,#0x6B
	cjne	a,(_rsin + 0x0002),00216$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0003),00216$
;	../fb_rs.c:277: set_filtermode('0');
	mov	dpl,#0x30
	push	ar7
	push	bits
	lcall	_set_filtermode
	pop	bits
	pop	ar7
;	../fb_rs.c:279: do {								// GA Tabelle löschen
	mov	r6,#0x00
00212$:
;	../fb_rs.c:280: write_ok=0; 
	clr	_write_ok
;	../fb_rs.c:281: while (!write_ok) {
	mov	a,r6
	add	a,r6
	add	a,acc
	mov	r5,a
00209$:
	jb	_write_ok,00211$
;	../fb_rs.c:282: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:283: FMADRH = 0x1D;//(n >> 6) + 0x1D;
	mov	_FMADRH,#0x1D
;	../fb_rs.c:284: FMADRL = n*4;//((n & 0x3F) * 4);
	mov	_FMADRL,r5
;	../fb_rs.c:285: FMDATA=0xFF;					// High Byte GA schreiben
	mov	_FMDATA,#0xFF
;	../fb_rs.c:286: FMDATA=0xFF;					// Low Byte GA schreiben
	mov	_FMDATA,#0xFF
;	../fb_rs.c:287: FMDATA=0xFF;					// Wert
	mov	_FMDATA,#0xFF
;	../fb_rs.c:288: FMDATA=0xFF;
	mov	_FMDATA,#0xFF
;	../fb_rs.c:289: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:290: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00209$
	setb	_write_ok
	sjmp	00209$
00211$:
;	../fb_rs.c:292: n++;
	inc	r6
;	../fb_rs.c:293: }while(n<=62);
	mov	a,r6
	add	a,#0xff - 0x3E
	jnc	00212$
;	../fb_rs.c:294: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00216$:
;	../fb_rs.c:296: if(rsin[2]=='d' && rsin[3]=='u'  && rsinpos==7) {
	mov	a,#0x64
	cjne	a,(_rsin + 0x0002),00519$
	sjmp	00520$
00519$:
	ljmp	00222$
00520$:
	mov	a,#0x75
	cjne	a,(_rsin + 0x0003),00521$
	sjmp	00522$
00521$:
	ljmp	00222$
00522$:
	mov	a,#0x07
	cjne	a,_rsinpos,00523$
	sjmp	00524$
00523$:
	ljmp	00222$
00524$:
;	../fb_rs.c:298: while(n<=61) {
	mov	r6,#0x00
00218$:
	mov	a,r6
	add	a,#0xff - 0x3D
	jc	00222$
;	../fb_rs.c:299: rs_send_hex(n);
	mov	dpl,r6
	push	ar7
	push	ar6
	push	bits
	lcall	_rs_send_hex
	pop	bits
;	../fb_rs.c:300: rs_send_s(": ");
	mov	dptr,#__str_7
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar6
;	../fb_rs.c:302: rs_send_hex_i(ga_db[n].ga);
	mov	a,r6
	add	a,r6
	add	a,acc
	mov	r5,a
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar6
	push	ar5
	push	bits
	lcall	_rs_send_hex_i
	pop	bits
;	../fb_rs.c:303: rs_send(' ');
	mov	dpl,#0x20
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar5
;	../fb_rs.c:304: rs_send_hex_i(ga_db[n].val);
	mov	r4,#(_ga_db >> 8)
	mov	dpl,r5
	mov	dph,r4
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	bits
	lcall	_rs_send_hex_i
	pop	bits
;	../fb_rs.c:305: rs_send_s("\n");
	mov	dptr,#__str_4
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar6
	pop	ar7
;	../fb_rs.c:307: n++;
	inc	r6
	sjmp	00218$
00222$:
;	../fb_rs.c:312: if(rsin[2]=='l' && rsin[3]=='i'  && rsinpos==7) {
	mov	a,#0x6C
	cjne	a,(_rsin + 0x0002),00526$
	sjmp	00527$
00526$:
	ljmp	00230$
00527$:
	mov	a,#0x69
	cjne	a,(_rsin + 0x0003),00528$
	sjmp	00529$
00528$:
	ljmp	00230$
00529$:
	mov	a,#0x07
	cjne	a,_rsinpos,00530$
	sjmp	00531$
00530$:
	ljmp	00230$
00531$:
;	../fb_rs.c:314: while(n<=61&& ga_db[n].ga<0xFFFF) {
	mov	r6,#0x00
00226$:
	mov	a,r6
	add	a,#0xff - 0x3D
	jnc	00532$
	ljmp	00228$
00532$:
	mov	a,r6
	add	a,r6
	add	a,acc
	mov	r5,a
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	c
	mov	a,r3
	subb	a,#0xFF
	mov	a,r4
	subb	a,#0xFF
	jc	00533$
	ljmp	00228$
00533$:
;	../fb_rs.c:315: rs_send_dec(((ga_db[n].ga)>>11)&0x0F);
	mov	dpl,r5
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r3,a
	mov	a,#0x0F
	anl	a,r3
	mov	dpl,a
	mov	dph,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:316: rs_send('/');
	mov	dpl,#0x2F
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar5
;	../fb_rs.c:317: rs_send_dec(((ga_db[n].ga)>>8)&0x07);
	mov	dpl,r5
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x07
	anl	a,r3
	mov	dpl,a
	mov	dph,#0x00
	push	ar5
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:318: rs_send('/');
	mov	dpl,#0x2F
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar5
;	../fb_rs.c:319: rs_send_dec((ga_db[n].ga)&0xFF);
	mov	dpl,r5
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r3
	mov	dph,#0x00
	push	ar5
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:320: rs_send_s("= hex");
	mov	dptr,#__str_8
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar5
;	../fb_rs.c:321: rs_send_hex_i(ga_db[n].val);
	mov	ar3,r5
	mov	r4,#(_ga_db >> 8)
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	push	ar5
	push	bits
	lcall	_rs_send_hex_i
	pop	bits
;	../fb_rs.c:322: rs_send_s(" dec ");
	mov	dptr,#__str_9
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar5
;	../fb_rs.c:323: rs_send_dec(ga_db[n].val);
	mov	r4,#(_ga_db >> 8)
	mov	dpl,r5
	mov	dph,r4
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:326: rs_send_s("\n");
	mov	dptr,#__str_4
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar6
	pop	ar7
;	../fb_rs.c:327: n++;
	inc	r6
	ljmp	00226$
00228$:
;	../fb_rs.c:329: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00230$:
;	../fb_rs.c:331: if(rsin[2]=='f'&& rsin[3]=='m'){// filter mode 1/0
	mov	a,#0x66
	cjne	a,(_rsin + 0x0002),00234$
	mov	a,#0x6D
	cjne	a,(_rsin + 0x0003),00234$
;	../fb_rs.c:332: set_filtermode(rsin[5]);
	mov	dpl,(_rsin + 0x0005)
	push	ar7
	push	bits
	lcall	_set_filtermode
	pop	bits
;	../fb_rs.c:333: send_ok();//rs_send_s("OK\n");
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00234$:
;	../fb_rs.c:336: if(rsin[2]=='e' && rsin[3]=='c' && rsin[4]=='h' && rsin[5]=='o' && rsin[6]=='=' && rsinpos==9) {
	mov	a,#0x65
	cjne	a,(_rsin + 0x0002),00255$
	mov	a,#0x63
	cjne	a,(_rsin + 0x0003),00255$
	mov	a,#0x68
	cjne	a,(_rsin + 0x0004),00255$
	mov	a,#0x6F
	cjne	a,(_rsin + 0x0005),00255$
	mov	a,#0x3D
	cjne	a,(_rsin + 0x0006),00255$
	mov	a,#0x09
	cjne	a,_rsinpos,00255$
;	../fb_rs.c:337: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:338: while (!write_ok) {
00241$:
	jb	_write_ok,00243$
;	../fb_rs.c:339: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:340: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:341: FMADRL = 0xFD;
	mov	_FMADRL,#0xFD
;	../fb_rs.c:342: if(rsin[7]=='0') FMDATA=0; else FMDATA=1;
	mov	a,#0x30
	cjne	a,(_rsin + 0x0007),00237$
	mov	_FMDATA,#0x00
	sjmp	00238$
00237$:
	mov	_FMDATA,#0x01
00238$:
;	../fb_rs.c:343: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:344: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00241$
	setb	_write_ok
	sjmp	00241$
00243$:
;	../fb_rs.c:346: send_ok();
	push	ar7
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
	sjmp	00255$
00254$:
;	../fb_rs.c:351: else if(esc!='f')// also kein ESC und esc nicht 'f'--> normaler Text mit CR am Ende
	cjne	r7,#0x66,00554$
	sjmp	00255$
00554$:
;	../fb_rs.c:353: send_obj_value(14);
	mov	dpl,#0x0E
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_rs.c:354: busy=1;
	setb	b0
00255$:
;	../fb_rs.c:357: if(!busy){// wenn nichts zu senden ist den Empfangspuffer löschen
	jb	b0,00260$
;	../fb_rs.c:358: for(n=0;n<30;n++) rsin[n]=0x00;
	mov	r6,#0x00
00282$:
	cjne	r6,#0x1E,00556$
00556$:
	jnc	00285$
	mov	a,r6
	add	a,#_rsin
	mov	r0,a
	mov	@r0,#0x00
	inc	r6
	sjmp	00282$
00285$:
;	../fb_rs.c:359: rsinpos=0;
	mov	_rsinpos,#0x00
00260$:
;	../fb_rs.c:364: if(rsin[0]!=esc && esc!='f' && rsinpos>=14 && !busy)	// 
	mov	a,r7
	cjne	a,_rsin,00558$
	sjmp	00264$
00558$:
	cjne	r7,#0x66,00559$
	sjmp	00264$
00559$:
	mov	a,#0x100 - 0x0E
	add	a,_rsinpos
	jnc	00264$
	jb	b0,00264$
;	../fb_rs.c:366: send_obj_value(14);
	mov	dpl,#0x0E
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_rs.c:367: busy=1;
	setb	b0
00264$:
;	../fb_rs.c:372: if(tel_sent && fb_state==0 && (TH1<0XC0) && (!wait_for_ack))//wenn tele gesendet ist
	jnb	_tel_sent,00269$
	mov	a,_fb_state
	jnz	00269$
	mov	a,#0x100 - 0xC0
	add	a,_TH1
	jc	00269$
	jb	_wait_for_ack,00269$
;	../fb_rs.c:374: process_tel();
	push	ar7
	lcall	_process_tel
	pop	ar7
;	../fb_rs.c:375: tel_sent=0;
	clr	_tel_sent
;	../fb_rs.c:376: for(n=0;n<30;n++) rsin[n]=0x00;
	mov	r6,#0x00
00286$:
	cjne	r6,#0x1E,00566$
00566$:
	jnc	00289$
	mov	a,r6
	add	a,#_rsin
	mov	r0,a
	mov	@r0,#0x00
	inc	r6
	sjmp	00286$
00289$:
;	../fb_rs.c:377: rsinpos=0;
	mov	_rsinpos,#0x00
;	../fb_rs.c:378: busy=0;
	clr	b0
;	../fb_rs.c:379: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar7
00269$:
;	../fb_rs.c:381: if (tel_arrived ){//&& fb_state==13 //|| (tel_sent&& (telegramm[0]&0x20))
	jb	_tel_arrived,00568$
	ljmp	00275$
00568$:
;	../fb_rs.c:382: process_tel();
	push	ar7
	push	bits
	lcall	_process_tel
	pop	bits
	pop	ar7
;	../fb_rs.c:384: } while(1);
	ljmp	00275$
	dec	sp
	pop	_bp
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
__str_0:
	.ascii "Kubi's RS-interface V3.00 "
	.db 0x00
__str_1:
	.ascii "1152"
	.db 0x00
__str_2:
	.ascii "00 Baud. "
	.db 0x00
__str_3:
	.ascii "Esc="
	.db 0x00
__str_4:
	.db 0x0A
	.db 0x00
__str_5:
	.ascii "filtered"
	.db 0x0A
	.db 0x00
__str_6:
	.ascii "error: unknown baudrate!"
	.db 0x0A
	.db 0x00
__str_7:
	.ascii ": "
	.db 0x00
__str_8:
	.ascii "= hex"
	.db 0x00
__str_9:
	.ascii " dec "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
