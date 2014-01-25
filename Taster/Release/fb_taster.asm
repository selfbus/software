;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 25 10:33:40 2014
;--------------------------------------------------------
	.module fb_taster
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _RAM
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
G$RAM$0$0 == 0x0000
_RAM	=	0x0000
G$object_value$0$0==.
_object_value::
	.ds 12
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
;n                         Allocated to registers r6 
;LED                       Allocated to registers 
;cmd                       Allocated to registers 
;tasterpegel               Allocated to registers r7 
;blink                     Allocated to registers 
;verstell                  Allocated to registers b2 
;verstellt                 Allocated to registers b1 
;tastergetoggelt           Allocated to registers b0 
;cal                       Allocated to registers 
;buttonpattern             Allocated to registers 
;wduf                      Allocated to registers b1 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$fb_taster.c$79$0$0 ==.
;	..\fb_taster.c:79: void main(void)
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
	C$fb_taster.c$81$1$0 ==.
;	..\fb_taster.c:81: unsigned char n,LED,cmd,tasterpegel=0;
	mov	r7,#0x00
	C$fb_taster.c$82$1$0 ==.
;	..\fb_taster.c:82: __bit blink, verstell, verstellt,tastergetoggelt=0;
	clr	b0
	C$fb_taster.c$89$1$1 ==.
;	..\fb_taster.c:89: wduf=WDCON&0x02;
	mov	a,_WDCON
	rr	a
	anl	a,#0x01
	add	a,#0xff
	mov	b1,c
	C$fb_taster.c$91$1$1 ==.
;	..\fb_taster.c:91: restart_hw();							// Hardware zuruecksetzen	
	push	ar7
	push	bits
	lcall	_restart_hw
	pop	bits
	pop	ar7
	C$fb_taster.c$97$1$1 ==.
;	..\fb_taster.c:97: TASTER=1;
	setb	_P1_7
	C$fb_taster.c$98$1$1 ==.
;	..\fb_taster.c:98: if(!TASTER && wduf)cal=0;
	jb	_P1_7,00102$
	jb	b1,00103$
00102$:
	C$fb_taster.c$99$1$1 ==.
;	..\fb_taster.c:99: else cal=trimsave;
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
00103$:
	C$fb_taster.c$101$1$1 ==.
;	..\fb_taster.c:101: TRIM = (TRIM+trimsave);
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r5,_TRIM
	add	a,r5
	mov	r6,a
	mov	_TRIM,r6
	C$fb_taster.c$102$1$1 ==.
;	..\fb_taster.c:102: TRIM &= 0x3F;//oberen 2 bits ausblenden
	anl	_TRIM,#0x3F
	C$fb_taster.c$103$2$2 ==.
;	..\fb_taster.c:103: WATCHDOG_INIT
	mov	_WDL,#0xFF
	clr	_IEN0_7
	mov	_WDCON,#0xE5
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_taster.c$104$1$1 ==.
;	..\fb_taster.c:104: WATCHDOG_START
	clr	_IEN0_7
	orl	_WDCON,#0x04
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_taster.c$105$1$1 ==.
;	..\fb_taster.c:105: TASTER=0;
	clr	_P1_7
	C$fb_taster.c$106$1$1 ==.
;	..\fb_taster.c:106: for (n=0;n<50;n++) {
	mov	r6,#0x00
00161$:
	cjne	r6,#0x32,00214$
00214$:
	jnc	00164$
	C$fb_taster.c$107$2$3 ==.
;	..\fb_taster.c:107: TR0=0;					// Timer 0 anhalten
	clr	_TCON_4
	C$fb_taster.c$108$2$3 ==.
;	..\fb_taster.c:108: TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	_TH0,a
	C$fb_taster.c$109$2$3 ==.
;	..\fb_taster.c:109: TL0=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	_TL0,a
	C$fb_taster.c$110$2$3 ==.
;	..\fb_taster.c:110: TF0=0;					// Überlauf-Flag zurücksetzen
	clr	_TCON_5
	C$fb_taster.c$111$2$3 ==.
;	..\fb_taster.c:111: TR0=1;					// Timer 0 starten
	setb	_TCON_4
	C$fb_taster.c$112$2$3 ==.
;	..\fb_taster.c:112: while(!TF0);
00105$:
	jnb	_TCON_5,00105$
	C$fb_taster.c$106$1$1 ==.
;	..\fb_taster.c:106: for (n=0;n<50;n++) {
	inc	r6
	sjmp	00161$
00164$:
	C$fb_taster.c$114$1$1 ==.
;	..\fb_taster.c:114: restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
	push	ar7
	push	bits
	lcall	_restart_app
	pop	bits
	pop	ar7
	C$fb_taster.c$119$1$1 ==.
;	..\fb_taster.c:119: RS_INIT_115200
	anl	_BRGCON,#0xFE
	mov	_SCON,#0x50
	orl	_SSTAT,#0xE0
	orl	_BRGCON,#0x02
	mov	_BRGR1,#0x00
	mov	_BRGR0,#0x30
	orl	_BRGCON,#0x01
	C$fb_taster.c$121$1$1 ==.
;	..\fb_taster.c:121: SBUF=0x55; // hiernach ist TI==1
	mov	_SBUF,#0x55
	C$fb_taster.c$123$1$1 ==.
;	..\fb_taster.c:123: for (n=0;n<4;n++) switch_led(n,0);	// Alle LEDs gemaess ihren Parametern setzen
	mov	r6,#0x00
00165$:
	cjne	r6,#0x04,00217$
00217$:
	jnc	00168$
	clr	b[0]
	push	ar7
	push	ar6
	push	bits
	mov	bits,b
	mov	dpl,r6
	lcall	_switch_led
	pop	bits
	pop	ar6
	pop	ar7
	inc	r6
	sjmp	00165$
00168$:
	C$fb_taster.c$126$1$1 ==.
;	..\fb_taster.c:126: verstellt=0;
	clr	b1
	C$fb_taster.c$127$1$1 ==.
;	..\fb_taster.c:127: dimmwert = LED_hell;
	mov	dptr,#_main_LED_hell_1_1
	clr	a
	movc	a,@a+dptr
	mov	_dimmwert,a
	C$fb_taster.c$129$1$1 ==.
;	..\fb_taster.c:129: do  {
00158$:
	C$fb_taster.c$130$2$4 ==.
;	..\fb_taster.c:130: WATCHDOG_FEED
	clr	_IEN0_7
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_taster.c$131$2$4 ==.
;	..\fb_taster.c:131: if (RTCCON>=0x80) delay_timer();	// Realtime clock ueberlauf
	mov	a,#0x100 - 0x80
	add	a,_RTCCON
	jnc	00109$
	push	ar7
	push	bits
	lcall	_delay_timer
	pop	bits
	pop	ar7
00109$:
	C$fb_taster.c$133$2$4 ==.
;	..\fb_taster.c:133: n=timer;
	C$fb_taster.c$135$2$4 ==.
;	..\fb_taster.c:135: verstell=((n>>2) & 0x01);
	mov	a,_timer
	mov	r6,a
	rr	a
	rr	a
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	C$fb_taster.c$137$2$4 ==.
;	..\fb_taster.c:137: if (verstell==0)verstellt=0;
	mov	b2,c
	jc	00111$
	clr	b1
00111$:
	C$fb_taster.c$141$2$4 ==.
;	..\fb_taster.c:141: if (status60 & 0x01){			//wenn progmode aktiv ist...
	mov	a,_status60
	jnb	acc.0,00131$
	C$fb_taster.c$143$3$5 ==.
;	..\fb_taster.c:143: if ((PORT & 0x0F)==0x0E){	// Taste 1 gedrück
	mov	a,#0x0F
	anl	a,_P0
	mov	r5,a
	cjne	r5,#0x0E,00117$
	C$fb_taster.c$144$4$6 ==.
;	..\fb_taster.c:144: if ((dimmwert<254) && (verstell==1)&& verstellt==0){
	mov	a,#0x100 - 0xFE
	add	a,_dimmwert
	jc	00117$
	mov	c,b2
	clr	a
	rlc	a
	mov	r5,a
	cjne	r5,#0x01,00117$
	jb	b1,00117$
	C$fb_taster.c$145$5$7 ==.
;	..\fb_taster.c:145: dimmwert++;
	inc	_dimmwert
	C$fb_taster.c$146$5$7 ==.
;	..\fb_taster.c:146: verstellt=1;
	setb	b1
00117$:
	C$fb_taster.c$149$3$5 ==.
;	..\fb_taster.c:149: if ((PORT & 0x0F)==0x0D){ // Taste 2 gedrückt
	mov	a,#0x0F
	anl	a,_P0
	mov	r5,a
	cjne	r5,#0x0D,00132$
	C$fb_taster.c$150$4$8 ==.
;	..\fb_taster.c:150: if ((dimmwert>1) && (verstell==1)&& verstellt==0){
	mov	a,_dimmwert
	add	a,#0xff - 0x01
	jnc	00132$
	mov	c,b2
	clr	a
	rlc	a
	mov	r5,a
	cjne	r5,#0x01,00132$
	jb	b1,00132$
	C$fb_taster.c$151$5$9 ==.
;	..\fb_taster.c:151: dimmwert--;
	dec	_dimmwert
	C$fb_taster.c$152$5$9 ==.
;	..\fb_taster.c:152: verstellt=1;
	setb	b1
	sjmp	00132$
00131$:
	C$fb_taster.c$159$3$10 ==.
;	..\fb_taster.c:159: if(APPLICATION_RUN)	{// nur wenn im Run modus und nicht connected
	mov	dptr,#(_eeprom + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	r5,#0xFF,00132$
	jb	_connected,00132$
	mov	a,_status60
	jb	acc.0,00132$
	C$fb_taster.c$160$4$11 ==.
;	..\fb_taster.c:160: if ((PORT & 0x0F) != button_buffer) port_changed(PORT & 0x0F);	// ein Taster wurde gedrueckt
	mov	a,#0x0F
	anl	a,_P0
	mov	r5,a
	cjne	a,_button_buffer,00238$
	sjmp	00132$
00238$:
	mov	a,#0x0F
	anl	a,_P0
	mov	dpl,a
	push	ar7
	push	bits
	lcall	_port_changed
	pop	bits
	pop	ar7
00132$:
	C$fb_taster.c$164$2$4 ==.
;	..\fb_taster.c:164: if (tel_arrived || tel_sent) {//
	jb	_tel_arrived,00133$
	jnb	_tel_sent,00134$
00133$:
	C$fb_taster.c$165$3$12 ==.
;	..\fb_taster.c:165: tel_sent=0;
	clr	_tel_sent
	C$fb_taster.c$166$3$12 ==.
;	..\fb_taster.c:166: process_tel();
	push	ar7
	push	bits
	lcall	_process_tel
	pop	bits
	pop	ar7
	sjmp	00135$
00134$:
	C$fb_taster.c$169$3$4 ==.
;	..\fb_taster.c:169: for(n=0;n<100;n++);
	mov	r6,#0x64
00171$:
	mov	ar5,r6
	dec	r5
	mov	ar6,r5
	mov	a,r6
	jnz	00171$
00135$:
	C$fb_taster.c$216$2$4 ==.
;	..\fb_taster.c:216: DEBUGPOINT
	jbc	_SCON_0,00242$
	sjmp	00141$
00242$:
00137$:
	jbc	_SCON_1,00243$
	sjmp	00137$
00243$:
	mov	a,_SBUF
	add	a,#_RAM
	mov	r1,a
	mov	_SBUF,@r1
00141$:
	C$fb_taster.c$219$2$4 ==.
;	..\fb_taster.c:219: TASTER=1;				        	// Pin als Eingang schalten um Programmiertaster abzufragen
	setb	_P1_7
	C$fb_taster.c$220$2$4 ==.
;	..\fb_taster.c:220: if(!TASTER){ // Taster gedrückt
	jb	_P1_7,00153$
	C$fb_taster.c$221$3$15 ==.
;	..\fb_taster.c:221: if(tasterpegel<255)	tasterpegel++;
	cjne	r7,#0xFF,00245$
00245$:
	jnc	00147$
	inc	r7
	sjmp	00154$
00147$:
	C$fb_taster.c$223$4$16 ==.
;	..\fb_taster.c:223: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	jb	b0,00143$
	xrl	_status60,#0x81
00143$:
	C$fb_taster.c$224$4$16 ==.
;	..\fb_taster.c:224: tastergetoggelt=1;
	setb	b0
	C$fb_taster.c$225$4$16 ==.
;	..\fb_taster.c:225: if((status60 & 0x01)==0){	//wenn ausgemacht, Dimmwert speichern
	mov	a,_status60
	jb	acc.0,00154$
	C$fb_taster.c$226$5$17 ==.
;	..\fb_taster.c:226: EA=0;
	clr	_IEN0_7
	C$fb_taster.c$227$5$17 ==.
;	..\fb_taster.c:227: START_WRITECYCLE;
	mov	_FMCON,#0x00
	C$fb_taster.c$228$5$17 ==.
;	..\fb_taster.c:228: FMADRH= 0x1B;		
	mov	_FMADRH,#0x1B
	C$fb_taster.c$229$5$17 ==.
;	..\fb_taster.c:229: FMADRL= 0xFE; 
	mov	_FMADRL,#0xFE
	C$fb_taster.c$230$5$17 ==.
;	..\fb_taster.c:230: FMDATA=	dimmwert; 
	mov	_FMDATA,_dimmwert
	C$fb_taster.c$231$5$17 ==.
;	..\fb_taster.c:231: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
	C$fb_taster.c$232$5$17 ==.
;	..\fb_taster.c:232: EA=1;
	setb	_IEN0_7
	sjmp	00154$
00153$:
	C$fb_taster.c$237$3$18 ==.
;	..\fb_taster.c:237: if(tasterpegel>0) tasterpegel--;
	mov	a,r7
	jz	00150$
	dec	r7
	sjmp	00154$
00150$:
	C$fb_taster.c$238$3$18 ==.
;	..\fb_taster.c:238: else tastergetoggelt=0;
	clr	b0
00154$:
	C$fb_taster.c$271$2$4 ==.
;	..\fb_taster.c:271: if (status60 & 0x01) TASTER = 0;		// LED leuchtet im Prog-Mode
	mov	a,_status60
	jnb	acc.0,00156$
	clr	_P1_7
	ljmp	00158$
00156$:
	C$fb_taster.c$272$2$4 ==.
;	..\fb_taster.c:272: else TASTER = 1;						// LED aus
	setb	_P1_7
	C$fb_taster.c$276$1$1 ==.
;	..\fb_taster.c:276: }  while(1);
	ljmp	00158$
	C$fb_taster.c$277$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Lfb_taster.main$trimsave$1$1 == 0x1cbf
_main_trimsave_1_1	=	0x1cbf
Lfb_taster.main$LED_hell$1$1 == 0x1cbe
_main_LED_hell_1_1	=	0x1cbe
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
