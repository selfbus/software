;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Wed Nov 14 20:02:04 2012
;--------------------------------------------------------
	.module watchdog
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
	.globl _watchdog_init
	.globl _watchdog_feed
	.globl _watchdog_start
	.globl _watchdog_stop
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
;Allocation info for local variables in function 'watchdog_init'
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:34: void watchdog_init(void)
;	-----------------------------------------
;	 function watchdog_init
;	-----------------------------------------
_watchdog_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:41: WDL = 0xFF;
	mov	_WDL,#0xFF
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:43: EA = 0;
	clr	_IEN0_7
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:44: WDCON = 0xE5;
	mov	_WDCON,#0xE5
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:45: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:46: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:48: EA=1;
	setb	_IEN0_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_feed'
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:56: void watchdog_feed(void)
;	-----------------------------------------
;	 function watchdog_feed
;	-----------------------------------------
_watchdog_feed:
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:62: EA = 0;
	clr	_IEN0_7
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:64: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:65: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:68: EA=1;
	setb	_IEN0_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_start'
;------------------------------------------------------------
;eacopy                    Allocated to registers b0 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:76: void watchdog_start(void)
;	-----------------------------------------
;	 function watchdog_start
;	-----------------------------------------
_watchdog_start:
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:81: eacopy = EA;
	mov	c,_IEN0_7
	mov	b0,c
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:82: EA = 0;
	clr	_IEN0_7
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:84: WDCON |= 0x04;
	orl	_WDCON,#0x04
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:86: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:87: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:89: EA = eacopy;
	mov	c,b0
	mov	_IEN0_7,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_stop'
;------------------------------------------------------------
;eacopy                    Allocated to registers b0 
;------------------------------------------------------------
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:97: void watchdog_stop(void)
;	-----------------------------------------
;	 function watchdog_stop
;	-----------------------------------------
_watchdog_stop:
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:102: eacopy = EA;
	mov	c,_IEN0_7
	mov	b0,c
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:103: EA = 0;
	clr	_IEN0_7
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:105: WDCON &= ~0x04;
	mov	r7,_WDCON
	anl	ar7,#0xFB
	mov	_WDCON,r7
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:107: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:108: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
;	C:/Freebus/C_Programme/oldisprogramm/com/watchdog.c:110: EA = eacopy;
	mov	c,b0
	mov	_IEN0_7,c
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
