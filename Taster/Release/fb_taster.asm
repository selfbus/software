;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
; This file was generated Sat Oct 18 20:04:36 2014
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
;n                         Allocated to registers r5 
;LED                       Allocated to registers 
;cmd                       Allocated to registers r5 
;tasterpegel               Allocated to registers r7 
;blink                     Allocated to registers 
;verstell                  Allocated to registers b2 
;verstellt                 Allocated to registers b1 
;tastergetoggelt           Allocated to registers b0 
;cal                       Allocated to registers r6 
;buttonpattern             Allocated to registers 
;wduf                      Allocated to registers b1 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$fb_taster.c$74$0$0 ==.
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
	C$fb_taster.c$76$1$0 ==.
;	../fb_taster.c:76: unsigned char n,LED,cmd,tasterpegel=0;
	mov	r7,#0x00
	C$fb_taster.c$77$1$0 ==.
;	../fb_taster.c:77: __bit blink, verstell, verstellt,tastergetoggelt=0;
	clr	b0
	C$fb_taster.c$84$1$1 ==.
;	../fb_taster.c:84: wduf=WDCON&0x02;
	mov	a,_WDCON
	rr	a
	anl	a,#0x01
	add	a,#0xff
	mov	b1,c
	C$fb_taster.c$86$1$1 ==.
;	../fb_taster.c:86: restart_hw();							// Hardware zuruecksetzen
	push	ar7
	push	bits
	lcall	_restart_hw
	pop	bits
	pop	ar7
	C$fb_taster.c$92$1$1 ==.
;	../fb_taster.c:92: TASTER=1;
	setb	_P1_7
	C$fb_taster.c$93$1$1 ==.
;	../fb_taster.c:93: if(!TASTER && wduf)cal=0;
	jb	_P1_7,00102$
	jnb	b1,00102$
	mov	r6,#0x00
	sjmp	00103$
00102$:
	C$fb_taster.c$94$1$1 ==.
;	../fb_taster.c:94: else cal=trimsave;
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r6,a
00103$:
	C$fb_taster.c$96$1$1 ==.
;	../fb_taster.c:96: TRIM = (TRIM+trimsave);
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r4,_TRIM
	add	a,r4
	mov	r5,a
	mov	_TRIM,r5
	C$fb_taster.c$97$1$1 ==.
;	../fb_taster.c:97: TRIM &= 0x3F;//oberen 2 bits ausblenden
	anl	_TRIM,#0x3F
	C$fb_taster.c$98$2$2 ==.
;	../fb_taster.c:98: WATCHDOG_INIT
	mov	_WDL,#0xFF
	clr	_IEN0_7
	mov	_WDCON,#0xE5
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_taster.c$99$2$3 ==.
;	../fb_taster.c:99: WATCHDOG_START
	clr	_IEN0_7
	orl	_WDCON,#0x04
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_taster.c$100$1$1 ==.
;	../fb_taster.c:100: TASTER=0;
	clr	_P1_7
	C$fb_taster.c$101$1$1 ==.
;	../fb_taster.c:101: for (n=0;n<50;n++) {
	mov	r5,#0x00
00187$:
	cjne	r5,#0x32,00250$
00250$:
	jnc	00190$
	C$fb_taster.c$102$2$4 ==.
;	../fb_taster.c:102: TR0=0;					// Timer 0 anhalten
	clr	_TCON_4
	C$fb_taster.c$103$2$4 ==.
;	../fb_taster.c:103: TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	_TH0,a
	C$fb_taster.c$104$2$4 ==.
;	../fb_taster.c:104: TL0=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	_TL0,a
	C$fb_taster.c$105$2$4 ==.
;	../fb_taster.c:105: TF0=0;					// Überlauf-Flag zurücksetzen
	clr	_TCON_5
	C$fb_taster.c$106$2$4 ==.
;	../fb_taster.c:106: TR0=1;					// Timer 0 starten
	setb	_TCON_4
	C$fb_taster.c$107$2$4 ==.
;	../fb_taster.c:107: while(!TF0);
00105$:
	jnb	_TCON_5,00105$
	C$fb_taster.c$101$1$1 ==.
;	../fb_taster.c:101: for (n=0;n<50;n++) {
	inc	r5
	sjmp	00187$
00190$:
	C$fb_taster.c$109$1$1 ==.
;	../fb_taster.c:109: restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
	push	ar7
	push	ar6
	push	bits
	lcall	_restart_app
	pop	bits
	pop	ar6
	pop	ar7
	C$fb_taster.c$112$2$5 ==.
;	../fb_taster.c:112: RS_INIT_600
	anl	_BRGCON,#0xFE
	mov	_SCON,#0x50
	orl	_SSTAT,#0xE0
	orl	_BRGCON,#0x02
	mov	_BRGR1,#0x2F
	mov	_BRGR0,#0xF0
	orl	_BRGCON,#0x01
	C$fb_taster.c$116$1$1 ==.
;	../fb_taster.c:116: SBUF=0x55; // hiernach ist TI==1
	mov	_SBUF,#0x55
	C$fb_taster.c$118$1$1 ==.
;	../fb_taster.c:118: for (n=0;n<4;n++) switch_led(n,0);	// Alle LEDs gemaess ihren Parametern setzen
	mov	r5,#0x00
00191$:
	cjne	r5,#0x04,00253$
00253$:
	jnc	00194$
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
	sjmp	00191$
00194$:
	C$fb_taster.c$121$1$1 ==.
;	../fb_taster.c:121: verstellt=0;
	clr	b1
	C$fb_taster.c$122$1$1 ==.
;	../fb_taster.c:122: dimmwert = LED_hell;
	mov	dptr,#_main_LED_hell_1_1
	clr	a
	movc	a,@a+dptr
	mov	_dimmwert,a
	C$fb_taster.c$124$1$1 ==.
;	../fb_taster.c:124: do  {
00184$:
	C$fb_taster.c$125$3$7 ==.
;	../fb_taster.c:125: WATCHDOG_FEED
	clr	_IEN0_7
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_taster.c$126$2$6 ==.
;	../fb_taster.c:126: if (RTCCON>=0x80)	// Realtime clock ueberlauf
	mov	a,#0x100 - 0x80
	add	a,_RTCCON
	jnc	00115$
	C$fb_taster.c$128$3$8 ==.
;	../fb_taster.c:128: RTCCON=0x61;// RTC flag löschen
	mov	_RTCCON,#0x61
	C$fb_taster.c$129$3$8 ==.
;	../fb_taster.c:129: if(!connected)delay_timer();// die normal RTC Behandlung
	jb	_connected,00112$
	push	ar7
	push	ar6
	push	bits
	lcall	_delay_timer
	pop	bits
	pop	ar6
	pop	ar7
	sjmp	00115$
00112$:
	C$fb_taster.c$132$4$9 ==.
;	../fb_taster.c:132: if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
	mov	a,_connected_timeout
	add	a,#0xff - 0x6E
	jc	00109$
	C$fb_taster.c$134$5$10 ==.
;	../fb_taster.c:134: connected_timeout ++;
	inc	_connected_timeout
	sjmp	00115$
00109$:
	C$fb_taster.c$136$4$9 ==.
;	../fb_taster.c:136: else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
	mov	dpl,#0x85
	push	ar7
	push	ar6
	push	bits
	lcall	_send_obj_value
	pop	bits
	pop	ar6
	pop	ar7
00115$:
	C$fb_taster.c$141$2$6 ==.
;	../fb_taster.c:141: n=timer;
	C$fb_taster.c$143$2$6 ==.
;	../fb_taster.c:143: verstell=((n>>2) & 0x01);
	mov	a,_timer
	mov	r5,a
	rr	a
	rr	a
	anl	a,#0x01
	mov	r4,a
	add	a,#0xff
	C$fb_taster.c$145$2$6 ==.
;	../fb_taster.c:145: if (verstell==0)verstellt=0;
	mov	b2,c
	jc	00117$
	clr	b1
00117$:
	C$fb_taster.c$148$2$6 ==.
;	../fb_taster.c:148: if (status60 & 0x01){			//wenn progmode aktiv ist...
	mov	a,_status60
	jnb	acc.0,00137$
	C$fb_taster.c$150$3$11 ==.
;	../fb_taster.c:150: if ((PORT & 0x0F)==0x0E){	// Taste 1 gedrück
	mov	a,#0x0F
	anl	a,_P0
	mov	r4,a
	cjne	r4,#0x0E,00123$
	C$fb_taster.c$151$4$12 ==.
;	../fb_taster.c:151: if ((dimmwert<254) && (verstell==1)&& verstellt==0){
	mov	a,#0x100 - 0xFE
	add	a,_dimmwert
	jc	00123$
	mov	c,b2
	clr	a
	rlc	a
	mov	r4,a
	cjne	r4,#0x01,00123$
	jb	b1,00123$
	C$fb_taster.c$152$5$13 ==.
;	../fb_taster.c:152: dimmwert++;
	inc	_dimmwert
	C$fb_taster.c$153$5$13 ==.
;	../fb_taster.c:153: verstellt=1;
	setb	b1
00123$:
	C$fb_taster.c$156$3$11 ==.
;	../fb_taster.c:156: if ((PORT & 0x0F)==0x0D){ // Taste 2 gedrückt
	mov	a,#0x0F
	anl	a,_P0
	mov	r4,a
	cjne	r4,#0x0D,00138$
	C$fb_taster.c$157$4$14 ==.
;	../fb_taster.c:157: if ((dimmwert>1) && (verstell==1)&& verstellt==0){
	mov	a,_dimmwert
	add	a,#0xff - 0x01
	jnc	00138$
	mov	c,b2
	clr	a
	rlc	a
	mov	r4,a
	cjne	r4,#0x01,00138$
	jb	b1,00138$
	C$fb_taster.c$158$5$15 ==.
;	../fb_taster.c:158: dimmwert--;
	dec	_dimmwert
	C$fb_taster.c$159$5$15 ==.
;	../fb_taster.c:159: verstellt=1;
	setb	b1
	sjmp	00138$
00137$:
	C$fb_taster.c$166$3$16 ==.
;	../fb_taster.c:166: if(APPLICATION_RUN)	{// nur wenn im Run modus und nicht connected
	mov	dptr,#(_eeprom + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xFF,00138$
	jb	_connected,00138$
	mov	a,_status60
	jb	acc.0,00138$
	C$fb_taster.c$167$4$17 ==.
;	../fb_taster.c:167: if ((PORT & 0x0F) != button_buffer) port_changed(PORT & 0x0F);	// ein Taster wurde gedrueckt
	mov	a,#0x0F
	anl	a,_P0
	mov	r4,a
	cjne	a,_button_buffer,00276$
	sjmp	00138$
00276$:
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
00138$:
	C$fb_taster.c$171$2$6 ==.
;	../fb_taster.c:171: if (tel_arrived || tel_sent) {//
	jb	_tel_arrived,00139$
	jnb	_tel_sent,00140$
00139$:
	C$fb_taster.c$172$3$18 ==.
;	../fb_taster.c:172: tel_sent=0;
	clr	_tel_sent
	C$fb_taster.c$173$3$18 ==.
;	../fb_taster.c:173: process_tel();
	push	ar7
	push	ar6
	push	bits
	lcall	_process_tel
	pop	bits
	pop	ar6
	pop	ar7
	sjmp	00141$
00140$:
	C$fb_taster.c$176$3$6 ==.
;	../fb_taster.c:176: for(n=0;n<100;n++);
	mov	r5,#0x64
00197$:
	mov	ar4,r5
	dec	r4
	mov	ar5,r4
	mov	a,r5
	jnz	00197$
00141$:
	C$fb_taster.c$180$2$6 ==.
;	../fb_taster.c:180: if (RI){
	C$fb_taster.c$181$3$20 ==.
;	../fb_taster.c:181: RI=0;
	jbc	_SCON_0,00280$
	sjmp	00167$
00280$:
	C$fb_taster.c$182$3$20 ==.
;	../fb_taster.c:182: cmd=SBUF;
	mov	r5,_SBUF
	C$fb_taster.c$183$3$20 ==.
;	../fb_taster.c:183: if(cmd=='c'){
	cjne	r5,#0x63,00147$
	C$fb_taster.c$184$4$21 ==.
;	../fb_taster.c:184: while(!TI);
00143$:
	C$fb_taster.c$185$4$21 ==.
;	../fb_taster.c:185: TI=0;
	jbc	_SCON_1,00283$
	sjmp	00143$
00283$:
	C$fb_taster.c$186$4$21 ==.
;	../fb_taster.c:186: SBUF=0x55;
	mov	_SBUF,#0x55
00147$:
	C$fb_taster.c$188$3$20 ==.
;	../fb_taster.c:188: if(cmd=='+'){
	cjne	r5,#0x2B,00149$
	C$fb_taster.c$189$4$22 ==.
;	../fb_taster.c:189: TRIM--;
	dec	_TRIM
	C$fb_taster.c$190$4$22 ==.
;	../fb_taster.c:190: cal--;
	dec	r6
00149$:
	C$fb_taster.c$192$3$20 ==.
;	../fb_taster.c:192: if(cmd=='-'){
	cjne	r5,#0x2D,00151$
	C$fb_taster.c$193$4$23 ==.
;	../fb_taster.c:193: TRIM++;
	inc	_TRIM
	C$fb_taster.c$194$4$23 ==.
;	../fb_taster.c:194: cal++;
	inc	r6
00151$:
	C$fb_taster.c$196$3$20 ==.
;	../fb_taster.c:196: if(cmd=='w'){
	cjne	r5,#0x77,00153$
	C$fb_taster.c$197$4$24 ==.
;	../fb_taster.c:197: EA=0;
	clr	_IEN0_7
	C$fb_taster.c$198$4$24 ==.
;	../fb_taster.c:198: START_WRITECYCLE;	//cal an 0x1cFF schreiben
	mov	_FMCON,#0x00
	C$fb_taster.c$199$4$24 ==.
;	../fb_taster.c:199: FMADRH= USERRAM_ADDR_H;
	mov	_FMADRH,#0x1C
	C$fb_taster.c$200$4$24 ==.
;	../fb_taster.c:200: FMADRL= 0xFF;
	mov	_FMADRL,#0xFF
	C$fb_taster.c$201$4$24 ==.
;	../fb_taster.c:201: FMDATA=	cal;
	mov	_FMDATA,r6
	C$fb_taster.c$202$4$24 ==.
;	../fb_taster.c:202: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
	C$fb_taster.c$203$4$24 ==.
;	../fb_taster.c:203: EA=1;				//int wieder freigeben
	setb	_IEN0_7
00153$:
	C$fb_taster.c$205$3$20 ==.
;	../fb_taster.c:205: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	cjne	r5,#0x70,00155$
	xrl	_status60,#0x81
00155$:
	C$fb_taster.c$206$3$20 ==.
;	../fb_taster.c:206: if(cmd=='v'){
	cjne	r5,#0x76,00160$
	C$fb_taster.c$207$4$25 ==.
;	../fb_taster.c:207: while(!TI);
00156$:
	C$fb_taster.c$208$4$25 ==.
;	../fb_taster.c:208: TI=0;
	jbc	_SCON_1,00294$
	sjmp	00156$
00294$:
	C$fb_taster.c$209$4$25 ==.
;	../fb_taster.c:209: SBUF=VERSION;
	mov	_SBUF,#0x6B
00160$:
	C$fb_taster.c$211$3$20 ==.
;	../fb_taster.c:211: if(cmd=='t'){
	cjne	r5,#0x74,00167$
	C$fb_taster.c$212$4$26 ==.
;	../fb_taster.c:212: while(!TI);
00161$:
	C$fb_taster.c$213$4$26 ==.
;	../fb_taster.c:213: TI=0;
	jbc	_SCON_1,00297$
	sjmp	00161$
00297$:
	C$fb_taster.c$214$4$26 ==.
;	../fb_taster.c:214: SBUF=TYPE;
	mov	_SBUF,#0x00
00167$:
	C$fb_taster.c$226$2$6 ==.
;	../fb_taster.c:226: TASTER=1;				        	// Pin als Eingang schalten um Programmiertaster abzufragen
	setb	_P1_7
	C$fb_taster.c$227$2$6 ==.
;	../fb_taster.c:227: if(!TASTER){ // Taster gedrückt
	jb	_P1_7,00179$
	C$fb_taster.c$228$3$27 ==.
;	../fb_taster.c:228: if(tasterpegel<255)	tasterpegel++;
	cjne	r7,#0xFF,00299$
00299$:
	jnc	00173$
	inc	r7
	sjmp	00180$
00173$:
	C$fb_taster.c$230$4$28 ==.
;	../fb_taster.c:230: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	jb	b0,00169$
	xrl	_status60,#0x81
00169$:
	C$fb_taster.c$231$4$28 ==.
;	../fb_taster.c:231: tastergetoggelt=1;
	setb	b0
	C$fb_taster.c$232$4$28 ==.
;	../fb_taster.c:232: if((status60 & 0x01)==0){	//wenn ausgemacht, Dimmwert speichern
	mov	a,_status60
	jb	acc.0,00180$
	C$fb_taster.c$233$5$29 ==.
;	../fb_taster.c:233: EA=0;
	clr	_IEN0_7
	C$fb_taster.c$234$5$29 ==.
;	../fb_taster.c:234: START_WRITECYCLE;
	mov	_FMCON,#0x00
	C$fb_taster.c$235$5$29 ==.
;	../fb_taster.c:235: FMADRH= USERRAM_ADDR_H; //0x1C
	mov	_FMADRH,#0x1C
	C$fb_taster.c$236$5$29 ==.
;	../fb_taster.c:236: FMADRL= 0xFE;
	mov	_FMADRL,#0xFE
	C$fb_taster.c$237$5$29 ==.
;	../fb_taster.c:237: FMDATA=	dimmwert;
	mov	_FMDATA,_dimmwert
	C$fb_taster.c$238$5$29 ==.
;	../fb_taster.c:238: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
	C$fb_taster.c$239$5$29 ==.
;	../fb_taster.c:239: EA=1;
	setb	_IEN0_7
	sjmp	00180$
00179$:
	C$fb_taster.c$244$3$30 ==.
;	../fb_taster.c:244: if(tasterpegel>0) tasterpegel--;
	mov	a,r7
	jz	00176$
	dec	r7
	sjmp	00180$
00176$:
	C$fb_taster.c$245$3$30 ==.
;	../fb_taster.c:245: else tastergetoggelt=0;
	clr	b0
00180$:
	C$fb_taster.c$278$2$6 ==.
;	../fb_taster.c:278: if (status60 & 0x01) TASTER = 0;		// LED leuchtet im Prog-Mode
	mov	a,_status60
	jnb	acc.0,00182$
	clr	_P1_7
	ljmp	00184$
00182$:
	C$fb_taster.c$279$2$6 ==.
;	../fb_taster.c:279: else TASTER = 1;						// LED aus
	setb	_P1_7
	C$fb_taster.c$283$1$1 ==.
;	../fb_taster.c:283: }  while(1);
	ljmp	00184$
	C$fb_taster.c$284$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Lfb_taster.main$trimsave$1$1 == 0x1cff
_main_trimsave_1_1	=	0x1cff
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x1CFE
Lfb_taster.main$LED_hell$1$1 == .
_main_LED_hell_1_1:
	.db #0xFF	; 255
