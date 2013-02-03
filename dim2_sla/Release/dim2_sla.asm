;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sun Feb 03 20:05:32 2013
;--------------------------------------------------------
	.module dim2_sla
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _send
	.globl _in50hz_init
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
	.globl _locked
	.globl _RAM
	.globl _phase
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
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
G$IP0$0$0 == 0x00b8
_IP0	=	0x00b8
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$AUXR1$0$0 == 0x00a2
_AUXR1	=	0x00a2
G$SADDR$0$0 == 0x00a9
_SADDR	=	0x00a9
G$SADEN$0$0 == 0x00b9
_SADEN	=	0x00b9
G$BRGR0$0$0 == 0x00be
_BRGR0	=	0x00be
G$BRGR1$0$0 == 0x00bf
_BRGR1	=	0x00bf
G$BRGCON$0$0 == 0x00bd
_BRGCON	=	0x00bd
G$CMP1$0$0 == 0x00ac
_CMP1	=	0x00ac
G$CMP2$0$0 == 0x00ad
_CMP2	=	0x00ad
G$DIVM$0$0 == 0x0095
_DIVM	=	0x0095
G$FMADRH$0$0 == 0x00e7
_FMADRH	=	0x00e7
G$FMADRL$0$0 == 0x00e6
_FMADRL	=	0x00e6
G$FMCON$0$0 == 0x00e4
_FMCON	=	0x00e4
G$FMDATA$0$0 == 0x00e5
_FMDATA	=	0x00e5
G$I2ADR$0$0 == 0x00db
_I2ADR	=	0x00db
G$I2CON$0$0 == 0x00d8
_I2CON	=	0x00d8
G$I2DAT$0$0 == 0x00da
_I2DAT	=	0x00da
G$I2SCLH$0$0 == 0x00dd
_I2SCLH	=	0x00dd
G$I2SCLL$0$0 == 0x00dc
_I2SCLL	=	0x00dc
G$I2STAT$0$0 == 0x00d9
_I2STAT	=	0x00d9
G$IP1$0$0 == 0x00f8
_IP1	=	0x00f8
G$IP1H$0$0 == 0x00f7
_IP1H	=	0x00f7
G$KBCON$0$0 == 0x0094
_KBCON	=	0x0094
G$KBMASK$0$0 == 0x0086
_KBMASK	=	0x0086
G$KBPATN$0$0 == 0x0093
_KBPATN	=	0x0093
G$P0M1$0$0 == 0x0084
_P0M1	=	0x0084
G$P0M2$0$0 == 0x0085
_P0M2	=	0x0085
G$P1M1$0$0 == 0x0091
_P1M1	=	0x0091
G$P1M2$0$0 == 0x0092
_P1M2	=	0x0092
G$P3M1$0$0 == 0x00b1
_P3M1	=	0x00b1
G$P3M2$0$0 == 0x00b2
_P3M2	=	0x00b2
G$PCONA$0$0 == 0x00b5
_PCONA	=	0x00b5
G$PT0AD$0$0 == 0x00f6
_PT0AD	=	0x00f6
G$RSTSRC$0$0 == 0x00df
_RSTSRC	=	0x00df
G$RTCCON$0$0 == 0x00d1
_RTCCON	=	0x00d1
G$RTCH$0$0 == 0x00d2
_RTCH	=	0x00d2
G$RTCL$0$0 == 0x00d3
_RTCL	=	0x00d3
G$SSTAT$0$0 == 0x00ba
_SSTAT	=	0x00ba
G$TAMOD$0$0 == 0x008f
_TAMOD	=	0x008f
G$TRIM$0$0 == 0x0096
_TRIM	=	0x0096
G$WDCON$0$0 == 0x00a7
_WDCON	=	0x00a7
G$WDL$0$0 == 0x00c1
_WDL	=	0x00c1
G$WFEED1$0$0 == 0x00c2
_WFEED1	=	0x00c2
G$WFEED2$0$0 == 0x00c3
_WFEED2	=	0x00c3
G$IP0H$0$0 == 0x00b7
_IP0H	=	0x00b7
G$IEN1$0$0 == 0x00e8
_IEN1	=	0x00e8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$PSW_0$0$0 == 0x00d0
_PSW_0	=	0x00d0
G$PSW_1$0$0 == 0x00d1
_PSW_1	=	0x00d1
G$PSW_2$0$0 == 0x00d2
_PSW_2	=	0x00d2
G$PSW_3$0$0 == 0x00d3
_PSW_3	=	0x00d3
G$PSW_4$0$0 == 0x00d4
_PSW_4	=	0x00d4
G$PSW_5$0$0 == 0x00d5
_PSW_5	=	0x00d5
G$PSW_6$0$0 == 0x00d6
_PSW_6	=	0x00d6
G$PSW_7$0$0 == 0x00d7
_PSW_7	=	0x00d7
G$TCON_7$0$0 == 0x008f
_TCON_7	=	0x008f
G$TCON_6$0$0 == 0x008e
_TCON_6	=	0x008e
G$TCON_5$0$0 == 0x008d
_TCON_5	=	0x008d
G$TCON_4$0$0 == 0x008c
_TCON_4	=	0x008c
G$TCON_3$0$0 == 0x008b
_TCON_3	=	0x008b
G$TCON_2$0$0 == 0x008a
_TCON_2	=	0x008a
G$TCON_1$0$0 == 0x0089
_TCON_1	=	0x0089
G$TCON_0$0$0 == 0x0088
_TCON_0	=	0x0088
G$IEN0_7$0$0 == 0x00af
_IEN0_7	=	0x00af
G$IEN0_6$0$0 == 0x00ae
_IEN0_6	=	0x00ae
G$IEN0_5$0$0 == 0x00ad
_IEN0_5	=	0x00ad
G$IEN0_4$0$0 == 0x00ac
_IEN0_4	=	0x00ac
G$IEN0_3$0$0 == 0x00ab
_IEN0_3	=	0x00ab
G$IEN0_2$0$0 == 0x00aa
_IEN0_2	=	0x00aa
G$IEN0_1$0$0 == 0x00a9
_IEN0_1	=	0x00a9
G$IEN0_0$0$0 == 0x00a8
_IEN0_0	=	0x00a8
G$IEN1_2$0$0 == 0x00ea
_IEN1_2	=	0x00ea
G$IEN1_1$0$0 == 0x00e9
_IEN1_1	=	0x00e9
G$IEN1_0$0$0 == 0x00e8
_IEN1_0	=	0x00e8
G$IP1_6$0$0 == 0x00fe
_IP1_6	=	0x00fe
G$IP1_2$0$0 == 0x00fa
_IP1_2	=	0x00fa
G$IP1_1$0$0 == 0x00f9
_IP1_1	=	0x00f9
G$IP1_0$0$0 == 0x00f8
_IP1_0	=	0x00f8
G$IP0_6$0$0 == 0x00be
_IP0_6	=	0x00be
G$IP0_5$0$0 == 0x00bd
_IP0_5	=	0x00bd
G$IP0_4$0$0 == 0x00bc
_IP0_4	=	0x00bc
G$IP0_3$0$0 == 0x00bb
_IP0_3	=	0x00bb
G$IP0_2$0$0 == 0x00ba
_IP0_2	=	0x00ba
G$IP0_1$0$0 == 0x00b9
_IP0_1	=	0x00b9
G$IP0_0$0$0 == 0x00b8
_IP0_0	=	0x00b8
G$SCON_0$0$0 == 0x0098
_SCON_0	=	0x0098
G$SCON_1$0$0 == 0x0099
_SCON_1	=	0x0099
G$SCON_2$0$0 == 0x009a
_SCON_2	=	0x009a
G$SCON_3$0$0 == 0x009b
_SCON_3	=	0x009b
G$SCON_4$0$0 == 0x009c
_SCON_4	=	0x009c
G$SCON_5$0$0 == 0x009d
_SCON_5	=	0x009d
G$SCON_6$0$0 == 0x009e
_SCON_6	=	0x009e
G$SCON_7$0$0 == 0x009f
_SCON_7	=	0x009f
G$I2CON_6$0$0 == 0x00de
_I2CON_6	=	0x00de
G$I2CON_5$0$0 == 0x00dd
_I2CON_5	=	0x00dd
G$I2CON_4$0$0 == 0x00dc
_I2CON_4	=	0x00dc
G$I2CON_3$0$0 == 0x00db
_I2CON_3	=	0x00db
G$I2CON_2$0$0 == 0x00da
_I2CON_2	=	0x00da
G$I2CON_0$0$0 == 0x00d8
_I2CON_0	=	0x00d8
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
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
G$dimm_I2C$0$0==.
_dimm_I2C::
	.ds 2
G$mk$0$0==.
_mk::
	.ds 2
G$bytenummer$0$0==.
_bytenummer::
	.ds 1
G$zl_50hz$0$0==.
_zl_50hz::
	.ds 2
G$sp$0$0==.
_sp::
	.ds 2
G$m$0$0==.
_m::
	.ds 2
G$dimmzl$0$0==.
_dimmzl::
	.ds 1
G$mode$0$0==.
_mode::
	.ds 1
G$dimmcompare$0$0==.
_dimmcompare::
	.ds 1
G$cmd$0$0==.
_cmd::
	.ds 1
G$phase$0$0==.
_phase::
	.ds 1
G$RAM$0$0 == 0x0000
_RAM	=	0x0000
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
G$locked$0$0==.
_locked::
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
	G$main$0$0 ==.
	C$dim2_sla.c$37$1$1 ==.
;	..\dim2_sla.c:37: unsigned int zl_50hz=0;
	clr	a
	mov	_zl_50hz,a
	mov	(_zl_50hz + 1),a
	G$main$0$0 ==.
	C$dim2_sla.c$38$1$1 ==.
;	..\dim2_sla.c:38: unsigned int sp=0;
	clr	a
	mov	_sp,a
	mov	(_sp + 1),a
	G$main$0$0 ==.
	C$dim2_sla.c$39$1$1 ==.
;	..\dim2_sla.c:39: unsigned int m=0;
	clr	a
	mov	_m,a
	mov	(_m + 1),a
	G$main$0$0 ==.
	C$dim2_sla.c$40$1$1 ==.
;	..\dim2_sla.c:40: unsigned char dimmzl=0; //beim nulldurchgang auf 0 setzen
	mov	_dimmzl,#0x00
	G$main$0$0 ==.
	C$dim2_sla.c$41$1$1 ==.
;	..\dim2_sla.c:41: unsigned char mode=AB; //modus des dimmer Anschnitt Abschnitt oder PWM
	mov	_mode,#0x00
	G$main$0$0 ==.
	C$dim2_sla.c$46$1$1 ==.
;	..\dim2_sla.c:46: __bit locked=0;
	clr	_locked
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
	G$i2c_int$0$0 ==.
	C$dim2_sla.c$48$0$0 ==.
;	..\dim2_sla.c:48: void i2c_int(void)__interrupt (6)
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
	push	ar0
	push	psw
	mov	psw,#0x00
	C$dim2_sla.c$50$1$1 ==.
;	..\dim2_sla.c:50: if(I2STAT==0x60)      //Slaveadresse
	mov	a,#0x60
	cjne	a,_I2STAT,00102$
	C$dim2_sla.c$51$1$1 ==.
;	..\dim2_sla.c:51: bytenummer=0;
	mov	_bytenummer,#0x00
00102$:
	C$dim2_sla.c$52$1$1 ==.
;	..\dim2_sla.c:52: if(I2STAT==0x80)      //Datenbyte emfangen
	mov	a,#0x80
	cjne	a,_I2STAT,00104$
	C$dim2_sla.c$53$1$1 ==.
;	..\dim2_sla.c:53: bytenummer++;
	inc	_bytenummer
00104$:
	C$dim2_sla.c$54$1$1 ==.
;	..\dim2_sla.c:54: if(I2STAT==0xA0)      //Stop emfangen
	mov	a,#0xA0
	cjne	a,_I2STAT,00106$
	C$dim2_sla.c$55$1$1 ==.
;	..\dim2_sla.c:55: bytenummer=0;
	mov	_bytenummer,#0x00
00106$:
	C$dim2_sla.c$56$1$1 ==.
;	..\dim2_sla.c:56: if(bytenummer>1&&bytenummer<4)  //erstes byte verwerfen
	mov	a,_bytenummer
	add	a,#0xff - 0x01
	jnc	00111$
	mov	a,#0x100 - 0x04
	add	a,_bytenummer
	jc	00111$
	C$dim2_sla.c$57$1$1 ==.
;	..\dim2_sla.c:57: if (mode==AB)dimm_I2C[bytenummer-2]= I2DAT; //zweites und drittes byte sind K1 + K2
	mov	a,_mode
	jnz	00108$
	mov	a,_bytenummer
	add	a,#0xFE
	add	a,#_dimm_I2C
	mov	r0,a
	mov	@r0,_I2DAT
	sjmp	00111$
00108$:
	C$dim2_sla.c$58$1$1 ==.
;	..\dim2_sla.c:58: else dimm_I2C[bytenummer-2]= 0 - I2DAT;		
	mov	a,_bytenummer
	add	a,#0xFE
	add	a,#_dimm_I2C
	mov	r1,a
	clr	c
	clr	a
	subb	a,_I2DAT
	mov	r7,a
	mov	@r1,a
00111$:
	C$dim2_sla.c$59$1$1 ==.
;	..\dim2_sla.c:59: SI=0;
	clr	_I2CON_3
	C$dim2_sla.c$60$1$1 ==.
;	..\dim2_sla.c:60: return;
	pop	psw
	pop	ar0
	pop	ar1
	pop	ar7
	pop	acc
	C$dim2_sla.c$61$1$1 ==.
	XG$i2c_int$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'nulldurchgang'
;------------------------------------------------------------
	G$nulldurchgang$0$0 ==.
	C$dim2_sla.c$63$1$1 ==.
;	..\dim2_sla.c:63: void nulldurchgang(void)
;	-----------------------------------------
;	 function nulldurchgang
;	-----------------------------------------
_nulldurchgang:
	C$dim2_sla.c$66$1$1 ==.
;	..\dim2_sla.c:66: if(mode==AB)
	mov	a,_mode
	C$dim2_sla.c$68$2$2 ==.
;	..\dim2_sla.c:68: dimmzl=0;
	jnz	00106$
	mov	_dimmzl,a
	C$dim2_sla.c$69$2$2 ==.
;	..\dim2_sla.c:69: if(dimm_I2C[0])  //dimmwert grösser 0 Dimmer  ein bei abschnitt
	mov	a,_dimm_I2C
	jz	00102$
	C$dim2_sla.c$70$2$2 ==.
;	..\dim2_sla.c:70: K1OUT=0;       //EIN
	clr	_P0_7
00102$:
	C$dim2_sla.c$71$2$2 ==.
;	..\dim2_sla.c:71: if(dimm_I2C[1])  //dimmwert grösser 0 Dimmer  ein
	mov	a,(_dimm_I2C + 0x0001)
	jz	00106$
	C$dim2_sla.c$72$2$2 ==.
;	..\dim2_sla.c:72: K2OUT=0;       //EIN
	clr	_P0_6
00106$:
	C$dim2_sla.c$74$1$1 ==.
;	..\dim2_sla.c:74: if(mode==AN)
	mov	a,#0x01
	cjne	a,_mode,00108$
	C$dim2_sla.c$76$2$3 ==.
;	..\dim2_sla.c:76: dimmzl=0xff;
	mov	_dimmzl,#0xFF
	C$dim2_sla.c$77$2$3 ==.
;	..\dim2_sla.c:77: K1OUT=1;     //AUS bei anschnitt
	setb	_P0_7
	C$dim2_sla.c$78$2$3 ==.
;	..\dim2_sla.c:78: K2OUT=1;
	setb	_P0_6
00108$:
	C$dim2_sla.c$80$1$1 ==.
;	..\dim2_sla.c:80: return;
	C$dim2_sla.c$81$1$1 ==.
	XG$nulldurchgang$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ex1_int'
;------------------------------------------------------------
;dc_mess                   Allocated to registers r7 
;------------------------------------------------------------
	G$ex1_int$0$0 ==.
	C$dim2_sla.c$84$1$1 ==.
;	..\dim2_sla.c:84: void ex1_int(void) __interrupt (2)// ERKENNUNG NULLDURCHGANG
;	-----------------------------------------
;	 function ex1_int
;	-----------------------------------------
_ex1_int:
	push	acc
	push	ar7
	push	psw
	mov	psw,#0x00
	C$dim2_sla.c$89$1$1 ==.
;	..\dim2_sla.c:89: dc_mess=dimmcompare-61;// 20
	mov	a,_dimmcompare
	add	a,#0xC3
	C$dim2_sla.c$90$1$1 ==.
;	..\dim2_sla.c:90: phase=dc_mess;//	SBUF=dimmcompare;
	C$dim2_sla.c$91$1$1 ==.
;	..\dim2_sla.c:91: if(dc_mess ){
	mov	r7,a
	mov	_phase,r7
	jz	00109$
	C$dim2_sla.c$92$2$2 ==.
;	..\dim2_sla.c:92: if (dc_mess>200 && dc_mess<253){
	mov	a,r7
	add	a,#0xff - 0xC8
	jnc	00105$
	cjne	r7,#0xFD,00143$
00143$:
	jnc	00105$
	C$dim2_sla.c$93$3$3 ==.
;	..\dim2_sla.c:93: TH0++;
	inc	_TH0
	sjmp	00109$
00105$:
	C$dim2_sla.c$96$2$2 ==.
;	..\dim2_sla.c:96: else if(dc_mess>=3 && dc_mess<=50){
	cjne	r7,#0x03,00145$
00145$:
	jc	00109$
	mov	a,r7
	add	a,#0xff - 0x32
	jc	00109$
	C$dim2_sla.c$98$3$4 ==.
;	..\dim2_sla.c:98: TH0--;
	dec	_TH0
00109$:
	C$dim2_sla.c$108$1$1 ==.
;	..\dim2_sla.c:108: dimmcompare=61;//20
	mov	_dimmcompare,#0x3D
	C$dim2_sla.c$142$1$1 ==.
;	..\dim2_sla.c:142: */if(mode==AB)
	mov	a,_mode
	jnz	00127$
	C$dim2_sla.c$151$2$5 ==.
;	..\dim2_sla.c:151: if(dimmcompare<=dimm_I2C[0]|| dimm_I2C[0]==0)K1OUT=0;
	mov	r7,_dimm_I2C
	cjne	r7,#0x3D,00149$
00149$:
	jnc	00110$
	mov	a,r7
	jnz	00111$
00110$:
	clr	_P0_7
	sjmp	00112$
00111$:
	C$dim2_sla.c$152$2$5 ==.
;	..\dim2_sla.c:152: else K1OUT=1;
	setb	_P0_7
00112$:
	C$dim2_sla.c$153$2$5 ==.
;	..\dim2_sla.c:153: if(dimmcompare<=dimm_I2C[1]|| dimm_I2C[1]==0)K2OUT=0;
	mov	r7,(_dimm_I2C + 0x0001)
	cjne	r7,#0x3D,00152$
00152$:
	jnc	00114$
	mov	a,r7
	jnz	00115$
00114$:
	clr	_P0_6
	sjmp	00129$
00115$:
	C$dim2_sla.c$154$2$5 ==.
;	..\dim2_sla.c:154: else K2OUT=1;
	setb	_P0_6
	sjmp	00129$
00127$:
	C$dim2_sla.c$158$2$6 ==.
;	..\dim2_sla.c:158: if(dimmcompare<=dimm_I2C[0]|| dimm_I2C[0]==0)K1OUT=1;
	mov	r7,_dimm_I2C
	cjne	r7,#0x3D,00155$
00155$:
	jnc	00118$
	mov	a,r7
	jnz	00119$
00118$:
	setb	_P0_7
	sjmp	00120$
00119$:
	C$dim2_sla.c$159$2$6 ==.
;	..\dim2_sla.c:159: else K1OUT=0;
	clr	_P0_7
00120$:
	C$dim2_sla.c$160$2$6 ==.
;	..\dim2_sla.c:160: if(dimmcompare<=dimm_I2C[1]|| dimm_I2C[1]==0)K2OUT=1;
	mov	r7,(_dimm_I2C + 0x0001)
	cjne	r7,#0x3D,00158$
00158$:
	jnc	00122$
	mov	a,r7
	jnz	00123$
00122$:
	setb	_P0_6
	sjmp	00129$
00123$:
	C$dim2_sla.c$161$2$6 ==.
;	..\dim2_sla.c:161: else K2OUT=0;
	clr	_P0_6
00129$:
	pop	psw
	pop	ar7
	pop	acc
	C$dim2_sla.c$166$1$1 ==.
	XG$ex1_int$0$0 ==.
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'in50hz_init'
;------------------------------------------------------------
	G$in50hz_init$0$0 ==.
	C$dim2_sla.c$170$1$1 ==.
;	..\dim2_sla.c:170: void in50hz_init(void)
;	-----------------------------------------
;	 function in50hz_init
;	-----------------------------------------
_in50hz_init:
	C$dim2_sla.c$172$1$1 ==.
;	..\dim2_sla.c:172: P1M1 |= (1<<4); //Pin P1.4 input
	orl	_P1M1,#0x10
	C$dim2_sla.c$173$1$1 ==.
;	..\dim2_sla.c:173: P1M2 &= ~(1<<4);
	mov	r7,_P1M2
	anl	ar7,#0xEF
	mov	_P1M2,r7
	C$dim2_sla.c$174$1$1 ==.
;	..\dim2_sla.c:174: EX1=1; //Externer interrupt ein
	setb	_IEN0_2
	C$dim2_sla.c$175$1$1 ==.
;	..\dim2_sla.c:175: IT1=1; //fallende flanke
	setb	_TCON_2
	C$dim2_sla.c$176$1$1 ==.
;	..\dim2_sla.c:176: IP0 = 0x02;
	mov	_IP0,#0x02
	C$dim2_sla.c$177$1$1 ==.
;	..\dim2_sla.c:177: IP0H = 0x04;
	mov	_IP0H,#0x04
	C$dim2_sla.c$178$1$1 ==.
;	..\dim2_sla.c:178: EA=1;  //globale interruptfreigabe
	setb	_IEN0_7
	C$dim2_sla.c$179$1$1 ==.
;	..\dim2_sla.c:179: return;
	C$dim2_sla.c$181$1$1 ==.
	XG$in50hz_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send'
;------------------------------------------------------------
;buf                       Allocated to registers r7 
;------------------------------------------------------------
	G$send$0$0 ==.
	C$dim2_sla.c$182$1$1 ==.
;	..\dim2_sla.c:182: void send(unsigned char buf)
;	-----------------------------------------
;	 function send
;	-----------------------------------------
_send:
	mov	r7,dpl
	C$dim2_sla.c$184$1$1 ==.
;	..\dim2_sla.c:184: while(!TI);
00101$:
	C$dim2_sla.c$185$1$1 ==.
;	..\dim2_sla.c:185: TI=0;
	jbc	_SCON_1,00108$
	sjmp	00101$
00108$:
	C$dim2_sla.c$186$1$1 ==.
;	..\dim2_sla.c:186: SBUF=buf;
	mov	_SBUF,r7
	C$dim2_sla.c$187$1$1 ==.
	XG$send$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$dim2_sla.c$189$1$1 ==.
;	..\dim2_sla.c:189: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$dim2_sla.c$195$1$1 ==.
;	..\dim2_sla.c:195: i2c_sla_init();
	lcall	_i2c_sla_init
	C$dim2_sla.c$196$1$1 ==.
;	..\dim2_sla.c:196: in50hz_init();
	lcall	_in50hz_init
	C$dim2_sla.c$200$1$1 ==.
;	..\dim2_sla.c:200: BRGCON&=0xFE;	// Baudrate Generator stoppen
	anl	_BRGCON,#0xFE
	C$dim2_sla.c$201$1$1 ==.
;	..\dim2_sla.c:201: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	anl	_P1M1,#0xFC
	C$dim2_sla.c$202$1$1 ==.
;	..\dim2_sla.c:202: P1M2&=0xFC;
	anl	_P1M2,#0xFC
	C$dim2_sla.c$203$1$1 ==.
;	..\dim2_sla.c:203: SCON=0x50;		// Mode 1, receive enable
	mov	_SCON,#0x50
	C$dim2_sla.c$204$1$1 ==.
;	..\dim2_sla.c:204: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	orl	_SSTAT,#0xE0
	C$dim2_sla.c$205$1$1 ==.
;	..\dim2_sla.c:205: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
	C$dim2_sla.c$206$1$1 ==.
;	..\dim2_sla.c:206: BRGR1=0x00;	//05 Baudrate = cclk/((BRGR1,BRGR0)+16)
	mov	_BRGR1,#0x00
	C$dim2_sla.c$207$1$1 ==.
;	..\dim2_sla.c:207: BRGR0=0x30;	//F0 für 115200 0030 nehmen, autocal: 600bd= 0x2FF0, 19200: 0x0170
	mov	_BRGR0,#0x30
	C$dim2_sla.c$208$1$1 ==.
;	..\dim2_sla.c:208: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
	C$dim2_sla.c$209$1$1 ==.
;	..\dim2_sla.c:209: SBUF=0x55; // hiernach ist TI==1
	mov	_SBUF,#0x55
	C$dim2_sla.c$213$1$1 ==.
;	..\dim2_sla.c:213: P0M1 &= ~0xc0; //pin 0.6 und 0.7 Ausgang
	mov	r7,_P0M1
	anl	ar7,#0x3F
	mov	_P0M1,r7
	C$dim2_sla.c$214$1$1 ==.
;	..\dim2_sla.c:214: P0M2 |= 0xc0;
	orl	_P0M2,#0xC0
	C$dim2_sla.c$215$1$1 ==.
;	..\dim2_sla.c:215: K1OUT=0;
	clr	_P0_7
	C$dim2_sla.c$216$1$1 ==.
;	..\dim2_sla.c:216: K2OUT=0;
	clr	_P0_6
	C$dim2_sla.c$218$1$1 ==.
;	..\dim2_sla.c:218: TMOD=0x02;   // Timer 0 als reload
	mov	_TMOD,#0x02
	C$dim2_sla.c$219$1$1 ==.
;	..\dim2_sla.c:219: TH0=0x70; //für 10ms / 256
	mov	_TH0,#0x70
	C$dim2_sla.c$220$1$1 ==.
;	..\dim2_sla.c:220: TL0=0x70; //für 10ms / 256  
	mov	_TL0,#0x70
	C$dim2_sla.c$223$1$1 ==.
;	..\dim2_sla.c:223: ET0=1;                        // Interrupt für Timer 0 freigeben
	setb	_IEN0_1
	C$dim2_sla.c$224$1$1 ==.
;	..\dim2_sla.c:224: IP0 |= 0x02;
	orl	_IP0,#0x02
	C$dim2_sla.c$225$1$1 ==.
;	..\dim2_sla.c:225: TR0=1;                        // Timer 0 starten
	setb	_TCON_4
	C$dim2_sla.c$226$1$1 ==.
;	..\dim2_sla.c:226: EA=1;
	setb	_IEN0_7
	C$dim2_sla.c$228$1$1 ==.
;	..\dim2_sla.c:228: P0M1 &= ~(1<<1); // P0_1 = EINGANG zum test
	mov	r7,_P0M1
	anl	ar7,#0xFD
	mov	_P0M1,r7
	C$dim2_sla.c$229$1$1 ==.
;	..\dim2_sla.c:229: P0M2 &= ~(1<<1);
	mov	r7,_P0M2
	anl	ar7,#0xFD
	mov	_P0M2,r7
	C$dim2_sla.c$230$1$1 ==.
;	..\dim2_sla.c:230: P0_1=1;
	setb	_P0_1
	C$dim2_sla.c$232$1$1 ==.
;	..\dim2_sla.c:232: P0M1 |= (1<<2); // P0_2 = EINGANG zum test
	orl	_P0M1,#0x04
	C$dim2_sla.c$233$1$1 ==.
;	..\dim2_sla.c:233: P0M2 &= ~(1<<2);
	mov	r7,_P0M2
	anl	ar7,#0xFB
	mov	_P0M2,r7
	C$dim2_sla.c$234$1$1 ==.
;	..\dim2_sla.c:234: P0_2=0;
	clr	_P0_2
	C$dim2_sla.c$236$1$1 ==.
;	..\dim2_sla.c:236: if(P0_1==0)
	jb	_P0_1,00102$
	C$dim2_sla.c$238$2$2 ==.
;	..\dim2_sla.c:238: mode=AN;    //anschnittdimmer
	mov	_mode,#0x01
00102$:
	C$dim2_sla.c$241$1$1 ==.
;	..\dim2_sla.c:241: dimm_I2C[0]=0;
	mov	_dimm_I2C,#0x00
	C$dim2_sla.c$242$1$1 ==.
;	..\dim2_sla.c:242: dimm_I2C[1]=0;
	mov	(_dimm_I2C + 0x0001),#0x00
	C$dim2_sla.c$244$1$1 ==.
;	..\dim2_sla.c:244: while(1)
00108$:
	C$dim2_sla.c$269$2$3 ==.
;	..\dim2_sla.c:269: if(dimm_I2C[0]!=mk[0]||dimm_I2C[1]!=mk[1])
	mov	a,_mk
	cjne	a,_dimm_I2C,00103$
	mov	a,(_mk + 0x0001)
	cjne	a,(_dimm_I2C + 0x0001),00124$
	sjmp	00118$
00124$:
00103$:
	C$dim2_sla.c$276$3$4 ==.
;	..\dim2_sla.c:276: mk[0]=dimm_I2C[0];
	mov	_mk,_dimm_I2C
	C$dim2_sla.c$277$3$4 ==.
;	..\dim2_sla.c:277: mk[1]=dimm_I2C[1];
	mov	(_mk + 0x0001),(_dimm_I2C + 0x0001)
	C$dim2_sla.c$280$1$1 ==.
;	..\dim2_sla.c:280: for (i=0;i<5000;++i);
	sjmp	00108$
00118$:
	mov	r6,#0x88
	mov	r7,#0x13
00112$:
	dec	r6
	cjne	r6,#0xFF,00125$
	dec	r7
00125$:
	mov	a,r6
	orl	a,r7
	jnz	00112$
	sjmp	00108$
	C$dim2_sla.c$284$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
