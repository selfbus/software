;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
; This file was generated Fri Oct 24 21:14:10 2014
;--------------------------------------------------------
	.module fb_in8
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bitmask_1
	.globl _main
	.globl _spi_in_out
	.globl _bus_return
	.globl _restart_app
	.globl _read_obj_value
	.globl _delay_timer
	.globl _pin_changed
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
	reti
	.ds	7
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
;cmd                       Allocated to registers r7 
;tasterpegel               Allocated to stack - _bp +1
;cal                       Allocated to registers r5 
;base                      Allocated to registers r3 r4 
;pin                       Allocated to stack - _bp +2
;tmp                       Allocated to registers r4 
;objno                     Allocated to registers r7 
;objstate                  Allocated to registers r2 
;wduf                      Allocated to registers b2 
;tastergetoggelt           Allocated to registers b0 
;bus_return_ready          Allocated to registers b1 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$fb_in8.c$46$0$0 ==.
;	../fb_in8.c:46: void main(void)
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
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	C$fb_in8.c$48$1$0 ==.
;	../fb_in8.c:48: unsigned char n,cmd,tasterpegel=0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
	C$fb_in8.c$52$1$0 ==.
;	../fb_in8.c:52: unsigned char pin=0;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
	C$fb_in8.c$62$1$0 ==.
;	../fb_in8.c:62: __bit tastergetoggelt=0;
	clr	b0
	C$fb_in8.c$63$1$0 ==.
;	../fb_in8.c:63: __bit bus_return_ready=0; 
	clr	b1
	C$fb_in8.c$65$1$1 ==.
;	../fb_in8.c:65: wduf=WDCON&0x02;
	mov	a,_WDCON
	rr	a
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	mov	b2,c
	C$fb_in8.c$67$1$1 ==.
;	../fb_in8.c:67: TASTER=1;
	setb	_P1_7
	C$fb_in8.c$68$1$1 ==.
;	../fb_in8.c:68: if(!TASTER && wduf)cal=0;
	jb	_P1_7,00102$
	jnb	b2,00102$
	mov	r5,#0x00
	sjmp	00103$
00102$:
	C$fb_in8.c$69$1$1 ==.
;	../fb_in8.c:69: else cal=trimsave;
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r5,a
00103$:
	C$fb_in8.c$70$1$1 ==.
;	../fb_in8.c:70: TRIM = (TRIM+trimsave);
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r3,_TRIM
	add	a,r3
	mov	r4,a
	mov	_TRIM,r4
	C$fb_in8.c$71$1$1 ==.
;	../fb_in8.c:71: TRIM &= 0x3F;//oberen 2 bits ausblenden
	anl	_TRIM,#0x3F
	C$fb_in8.c$73$1$1 ==.
;	../fb_in8.c:73: TASTER=0;
	clr	_P1_7
	C$fb_in8.c$74$1$1 ==.
;	../fb_in8.c:74: restart_hw();				// Hardware zurücksetzen
	push	ar5
	push	bits
	lcall	_restart_hw
	pop	bits
	C$fb_in8.c$77$1$1 ==.
;	../fb_in8.c:77: RS_INIT_600
	anl	_BRGCON,#0xFE
	mov	_SCON,#0x50
	orl	_SSTAT,#0xE0
	orl	_BRGCON,#0x02
	mov	_BRGR1,#0x2F
	mov	_BRGR0,#0xF0
	orl	_BRGCON,#0x01
	C$fb_in8.c$78$1$1 ==.
;	../fb_in8.c:78: SBUF=0x55;// 'U' senden
	mov	_SBUF,#0x55
	C$fb_in8.c$85$1$1 ==.
;	../fb_in8.c:85: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
	push	bits
	lcall	_restart_app
	pop	bits
	pop	ar5
	C$fb_in8.c$87$1$1 ==.
;	../fb_in8.c:87: if(!wduf){
	jb	b2,00109$
	C$fb_in8.c$89$1$1 ==.
;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
	mov	r3,#0x00
	mov	r4,#0x00
00196$:
	push	ar5
	mov	dptr,#(_eeprom + 0x00d4)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	r5,#0x00
	mov	dptr,#(_eeprom + 0x00fe)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0F
	mov	r7,a
	mov	b,r7
	inc	b
	sjmp	00271$
00270$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r5,a
00271$:
	djnz	b,00270$
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r5
	subb	a,r4
	pop	ar5
	jc	00109$
	C$fb_in8.c$91$3$3 ==.
;	../fb_in8.c:91: RTCCON=0x60;		// RTC anhalten und Flag löschen
	mov	_RTCCON,#0x60
	C$fb_in8.c$92$3$3 ==.
;	../fb_in8.c:92: RTCH=0x1D;			// reload Real Time Clock für 65ms
	mov	_RTCH,#0x1D
	C$fb_in8.c$93$3$3 ==.
;	../fb_in8.c:93: RTCL=0x40;
	mov	_RTCL,#0x40
	C$fb_in8.c$94$3$3 ==.
;	../fb_in8.c:94: RTCCON=0x61;		// RTC starten
	mov	_RTCCON,#0x61
	C$fb_in8.c$95$3$3 ==.
;	../fb_in8.c:95: while (RTCCON<=0x7F) ;	// Realtime clock ueberlauf abwarten
00105$:
	mov	a,_RTCCON
	add	a,#0xff - 0x7F
	jnc	00105$
	C$fb_in8.c$97$3$3 ==.
;	../fb_in8.c:97: EA = 0;
	clr	_IEN0_7
	C$fb_in8.c$98$3$3 ==.
;	../fb_in8.c:98: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
	C$fb_in8.c$99$3$3 ==.
;	../fb_in8.c:99: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
	C$fb_in8.c$100$3$3 ==.
;	../fb_in8.c:100: EA=1;
	setb	_IEN0_7
	C$fb_in8.c$89$2$2 ==.
;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
	inc	r3
	cjne	r3,#0x00,00196$
	inc	r4
	sjmp	00196$
00109$:
	C$fb_in8.c$105$1$1 ==.
;	../fb_in8.c:105: WATCHDOG_INIT
	mov	_WDL,#0xFF
	clr	_IEN0_7
	mov	_WDCON,#0xE5
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_in8.c$106$1$1 ==.
;	../fb_in8.c:106: WATCHDOG_START
	clr	_IEN0_7
	orl	_WDCON,#0x04
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_in8.c$108$1$1 ==.
;	../fb_in8.c:108: do  {
00193$:
	C$fb_in8.c$109$2$4 ==.
;	../fb_in8.c:109: WATCHDOG_FEED 	    // feed the watchdog
	clr	_IEN0_7
	mov	_WFEED1,#0xA5
	mov	_WFEED2,#0x5A
	setb	_IEN0_7
	C$fb_in8.c$111$2$4 ==.
;	../fb_in8.c:111: EA = 0;
	clr	_IEN0_7
	C$fb_in8.c$112$2$4 ==.
;	../fb_in8.c:112: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
	C$fb_in8.c$113$2$4 ==.
;	../fb_in8.c:113: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
	C$fb_in8.c$114$2$4 ==.
;	../fb_in8.c:114: EA=1;
	setb	_IEN0_7
	C$fb_in8.c$117$2$4 ==.
;	../fb_in8.c:117: if(APPLICATION_RUN){	  
	mov	dptr,#(_eeprom + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xFF,00275$
	sjmp	00276$
00275$:
	ljmp	00149$
00276$:
	jnb	_connected,00277$
	ljmp	00149$
00277$:
	mov	a,_status60
	jnb	acc.0,00278$
	ljmp	00149$
00278$:
	C$fb_in8.c$121$3$5 ==.
;	../fb_in8.c:121: p0h=spi_in_out();
	push	ar5
	push	bits
	lcall	_spi_in_out
	mov	_p0h,dpl
	pop	bits
	pop	ar5
	C$fb_in8.c$123$3$5 ==.
;	../fb_in8.c:123: if(!bus_return_ready)
	jb	b1,00113$
	C$fb_in8.c$125$4$6 ==.
;	../fb_in8.c:125: portbuffer=p0h;
	mov	_portbuffer,_p0h
	C$fb_in8.c$126$4$6 ==.
;	../fb_in8.c:126: if(!wduf)bus_return();			// Anwendungsspezifische Einstellungen zurücksetzen
	jb	b2,00111$
	push	ar5
	push	bits
	lcall	_bus_return
	pop	bits
	pop	ar5
00111$:
	C$fb_in8.c$127$4$6 ==.
;	../fb_in8.c:127: bus_return_ready=1;
	setb	b1
00113$:
	C$fb_in8.c$130$3$5 ==.
;	../fb_in8.c:130: if (p0h!=portbuffer) 
	mov	a,_portbuffer
	cjne	a,_p0h,00281$
	sjmp	00118$
00281$:
	C$fb_in8.c$135$4$7 ==.
;	../fb_in8.c:135: if (((p0h^portbuffer) & bitmask_1[pin])&& !(blocked & bitmask_1[pin]) )//kürzeste Version
	mov	a,_portbuffer
	xrl	a,_p0h
	mov	r7,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r4,a
	anl	a,r7
	jz	00115$
	mov	a,r4
	anl	a,_blocked
	jnz	00115$
	C$fb_in8.c$137$5$8 ==.
;	../fb_in8.c:137: pin_changed(pin);				// Änderung verarbeiten
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	push	ar5
	push	bits
	lcall	_pin_changed
	pop	bits
	pop	ar5
00115$:
	C$fb_in8.c$141$4$7 ==.
;	../fb_in8.c:141: portbuffer|=(p0h& bitmask_1[pin]);					// neuen Portzustand in buffer speichern
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r7,a
	anl	a,_p0h
	orl	_portbuffer,a
	C$fb_in8.c$142$4$7 ==.
;	../fb_in8.c:142: portbuffer&=(p0h| ~bitmask_1[pin]);					// neuen Portzustand in buffer speichern
	mov	a,r7
	cpl	a
	mov	r7,a
	orl	a,_p0h
	anl	_portbuffer,a
	C$fb_in8.c$144$4$7 ==.
;	../fb_in8.c:144: pin++;	// nächsten pin prüfen..
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	C$fb_in8.c$145$4$7 ==.
;	../fb_in8.c:145: pin&=0x07;// maximal 0-7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	anl	a,#0x07
	mov	@r0,a
00118$:
	C$fb_in8.c$150$3$5 ==.
;	../fb_in8.c:150: if (RTCCON>=0x80){
	mov	a,#0x100 - 0x80
	add	a,_RTCCON
	jnc	00236$
	C$fb_in8.c$151$4$9 ==.
;	../fb_in8.c:151: delay_timer();	// Realtime clock ueberlauf
	push	ar5
	push	bits
	lcall	_delay_timer
	pop	bits
	pop	ar5
	C$fb_in8.c$155$1$1 ==.
;	../fb_in8.c:155: for(objno=0;objno<=7;objno++){	
00236$:
	mov	r7,#0x00
00200$:
	mov	a,r7
	add	a,#0xff - 0x07
	jnc	00285$
	ljmp	00203$
00285$:
	C$fb_in8.c$156$1$1 ==.
;	../fb_in8.c:156: tmp=(eeprom[0xD5+(objno*4)]&0x0C);//0xD5/ bit 2-3 zykl senden aktiv 
	push	ar5
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	anl	ar4,#0x0C
	C$fb_in8.c$157$4$10 ==.
;	../fb_in8.c:157: objstate=read_obj_value(objno);
	mov	dpl,r7
	push	ar7
	push	ar4
	push	bits
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	pop	bits
	pop	ar4
	pop	ar7
	C$fb_in8.c$158$4$10 ==.
;	../fb_in8.c:158: if (((eeprom[0xCE+(objno>>1)] >> ((objno & 0x01)*4)) & 0x0F)==1){// bei Funktion=Schalten
	mov	a,r7
	clr	c
	rrc	a
	add	a,#0xCE
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	anl	a,r7
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r6
	sjmp	00287$
00286$:
	clr	c
	rrc	a
00287$:
	djnz	b,00286$
	anl	a,#0x0F
	mov	r6,a
	cjne	r6,#0x01,00288$
	sjmp	00289$
00288$:
	pop	ar5
	ljmp	00202$
00289$:
	pop	ar5
	C$fb_in8.c$159$5$11 ==.
;	../fb_in8.c:159: if ((tmp==0x04 && objstate==1)||(tmp==0x08 && objstate==0)|| tmp==0x0C){//bei zykl senden aktiviert
	cjne	r4,#0x04,00133$
	cjne	r2,#0x01,00292$
	sjmp	00128$
00292$:
00133$:
	cjne	r4,#0x08,00134$
	mov	a,r2
	jz	00128$
00134$:
	cjne	r4,#0x0C,00129$
00128$:
	C$fb_in8.c$160$6$12 ==.
;	../fb_in8.c:160: n=timercnt[objno];
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	C$fb_in8.c$161$6$12 ==.
;	../fb_in8.c:161: if ((n & 0x7F) ==0){ 		//    wenn aus oder abgelaufen
	mov	a,@r1
	mov	r6,a
	anl	a,#0x7F
	jnz	00202$
	C$fb_in8.c$162$7$13 ==.
;	../fb_in8.c:162: timercnt[objno] = (eeprom[0xD6+(objno*4)]& 0x3F)+ 0x80 ;//0xD6 Faktor Zyklisch senden x.1 + x.2 )+ einschalten
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x3F
	anl	a,r4
	add	a,#0x80
	mov	@r1,a
	C$fb_in8.c$163$7$13 ==.
;	../fb_in8.c:163: timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07;	//Basis zyklisch senden
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	ar3,r7
	mov	r4,#0x00
	inc	r3
	cjne	r3,#0x00,00300$
	inc	r4
00300$:
	mov	a,r4
	mov	c,acc.7
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	a,#0xF6
	add	a,r3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	anl	a,r7
	xrl	a,#0x01
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r4
	sjmp	00302$
00301$:
	clr	c
	rrc	a
00302$:
	djnz	b,00301$
	anl	a,#0x07
	mov	@r1,a
	C$fb_in8.c$164$7$13 ==.
;	../fb_in8.c:164: if (n & 0x80){// wenn timer ein war
	mov	a,r6
	jnb	acc.7,00202$
	C$fb_in8.c$165$8$14 ==.
;	../fb_in8.c:165: while(!send_obj_value(objno));//send_obj_value(objno);		// Eingang x.1 zyklisch senden
00121$:
	mov	dpl,r7
	push	ar7
	push	ar5
	push	bits
	lcall	_send_obj_value
	pop	bits
	pop	ar5
	pop	ar7
	jnc	00121$
	sjmp	00202$
00129$:
	C$fb_in8.c$169$5$11 ==.
;	../fb_in8.c:169: else timercnt[objno]=0;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
00202$:
	C$fb_in8.c$155$3$5 ==.
;	../fb_in8.c:155: for(objno=0;objno<=7;objno++){	
	inc	r7
	ljmp	00200$
00203$:
	C$fb_in8.c$175$4$15 ==.
;	../fb_in8.c:175: for (objno=0;objno<=1;objno++){
	mov	r7,#0x00
00204$:
	mov	a,r7
	add	a,#0xff - 0x01
	jc	00150$
	C$fb_in8.c$176$4$15 ==.
;	../fb_in8.c:176: if(timerstate[objno]==0 && (timerbase[objno]& 0x40)== 0x40){//Impulszähler,Schaltzaehler
	mov	a,r7
	add	a,#_timerstate
	mov	r1,a
	mov	a,@r1
	jnz	00206$
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	ar4,@r1
	mov	a,#0x40
	anl	a,r4
	mov	r3,a
	cjne	r3,#0x40,00206$
	C$fb_in8.c$177$5$16 ==.
;	../fb_in8.c:177: if (!TR1){// warten bis statemachine fertig ist...
	jb	_TCON_6,00206$
	C$fb_in8.c$178$6$17 ==.
;	../fb_in8.c:178: zaehlervalue[objno]=0;
	mov	a,r7
	add	a,r7
	mov	r3,a
	add	a,#_zaehlervalue
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	C$fb_in8.c$179$6$17 ==.
;	../fb_in8.c:179: timerbase[objno]&= ~0x40;
	anl	ar4,#0xBF
	mov	@r1,ar4
00206$:
	C$fb_in8.c$175$3$5 ==.
;	../fb_in8.c:175: for (objno=0;objno<=1;objno++){
	inc	r7
	sjmp	00204$
00149$:
	C$fb_in8.c$188$2$4 ==.
;	../fb_in8.c:188: else if (RTCCON>=0x80 && connected)	// Realtime clock ueberlauf
	mov	a,#0x100 - 0x80
	add	a,_RTCCON
	jnc	00150$
	jnb	_connected,00150$
	C$fb_in8.c$190$3$18 ==.
;	../fb_in8.c:190: RTCCON=0x61;// RTC flag löschen
	mov	_RTCCON,#0x61
	C$fb_in8.c$191$3$18 ==.
;	../fb_in8.c:191: if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
	mov	a,_connected_timeout
	add	a,#0xff - 0x6E
	jc	00143$
	C$fb_in8.c$193$4$19 ==.
;	../fb_in8.c:193: connected_timeout ++;
	inc	_connected_timeout
	sjmp	00150$
00143$:
	C$fb_in8.c$195$3$18 ==.
;	../fb_in8.c:195: else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
	mov	dpl,#0x85
	push	ar5
	push	bits
	lcall	_send_obj_value
	pop	bits
	pop	ar5
00150$:
	C$fb_in8.c$199$2$4 ==.
;	../fb_in8.c:199: if (tel_arrived || tel_sent) { 
	jb	_tel_arrived,00153$
	jnb	_tel_sent,00154$
00153$:
	C$fb_in8.c$200$3$20 ==.
;	../fb_in8.c:200: tel_arrived=0;
	clr	_tel_arrived
	C$fb_in8.c$201$3$20 ==.
;	../fb_in8.c:201: tel_sent=0;
	clr	_tel_sent
	C$fb_in8.c$202$3$20 ==.
;	../fb_in8.c:202: process_tel();
	push	ar5
	push	bits
	lcall	_process_tel
	pop	bits
	pop	ar5
	sjmp	00155$
00154$:
	C$fb_in8.c$205$3$4 ==.
;	../fb_in8.c:205: for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
	mov	r6,#0x64
00210$:
	mov	ar7,r6
	dec	r7
	mov	ar6,r7
	mov	a,r6
	jnz	00210$
00155$:
	C$fb_in8.c$211$2$4 ==.
;	../fb_in8.c:211: if (RI){
	C$fb_in8.c$212$3$22 ==.
;	../fb_in8.c:212: RI=0;
	jbc	_SCON_0,00316$
	sjmp	00181$
00316$:
	C$fb_in8.c$213$3$22 ==.
;	../fb_in8.c:213: cmd=SBUF;
	mov	r7,_SBUF
	C$fb_in8.c$214$3$22 ==.
;	../fb_in8.c:214: if(cmd=='c'){
	cjne	r7,#0x63,00161$
	C$fb_in8.c$215$4$23 ==.
;	../fb_in8.c:215: while(!TI);
00157$:
	C$fb_in8.c$216$4$23 ==.
;	../fb_in8.c:216: TI=0;
	jbc	_SCON_1,00319$
	sjmp	00157$
00319$:
	C$fb_in8.c$217$4$23 ==.
;	../fb_in8.c:217: SBUF=0x55;
	mov	_SBUF,#0x55
00161$:
	C$fb_in8.c$219$3$22 ==.
;	../fb_in8.c:219: if(cmd=='+'){
	cjne	r7,#0x2B,00163$
	C$fb_in8.c$220$4$24 ==.
;	../fb_in8.c:220: TRIM--;
	dec	_TRIM
	C$fb_in8.c$221$4$24 ==.
;	../fb_in8.c:221: cal--;
	dec	r5
00163$:
	C$fb_in8.c$223$3$22 ==.
;	../fb_in8.c:223: if(cmd=='-'){
	cjne	r7,#0x2D,00165$
	C$fb_in8.c$224$4$25 ==.
;	../fb_in8.c:224: TRIM++;
	inc	_TRIM
	C$fb_in8.c$225$4$25 ==.
;	../fb_in8.c:225: cal++;
	inc	r5
00165$:
	C$fb_in8.c$227$3$22 ==.
;	../fb_in8.c:227: if(cmd=='w'){
	cjne	r7,#0x77,00167$
	C$fb_in8.c$228$4$26 ==.
;	../fb_in8.c:228: EA=0;
	clr	_IEN0_7
	C$fb_in8.c$229$4$26 ==.
;	../fb_in8.c:229: START_WRITECYCLE;	//cal an 0x1cff schreiben
	mov	_FMCON,#0x00
	C$fb_in8.c$231$4$26 ==.
;	../fb_in8.c:231: FMADRH= 0x1C;		
	mov	_FMADRH,#0x1C
	C$fb_in8.c$232$4$26 ==.
;	../fb_in8.c:232: FMADRL= 0xFF; 
	mov	_FMADRL,#0xFF
	C$fb_in8.c$234$4$26 ==.
;	../fb_in8.c:234: FMDATA=	cal;
	mov	_FMDATA,r5
	C$fb_in8.c$235$4$26 ==.
;	../fb_in8.c:235: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
	C$fb_in8.c$236$4$26 ==.
;	../fb_in8.c:236: EA=1;				//int wieder freigeben
	setb	_IEN0_7
00167$:
	C$fb_in8.c$238$3$22 ==.
;	../fb_in8.c:238: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	cjne	r7,#0x70,00169$
	xrl	_status60,#0x81
00169$:
	C$fb_in8.c$240$3$22 ==.
;	../fb_in8.c:240: if(cmd=='v'){
	cjne	r7,#0x76,00174$
	C$fb_in8.c$241$4$27 ==.
;	../fb_in8.c:241: while(!TI);
00170$:
	C$fb_in8.c$242$4$27 ==.
;	../fb_in8.c:242: TI=0;
	jbc	_SCON_1,00330$
	sjmp	00170$
00330$:
	C$fb_in8.c$243$4$27 ==.
;	../fb_in8.c:243: SBUF=VERSION;
	mov	_SBUF,#0x0A
00174$:
	C$fb_in8.c$245$3$22 ==.
;	../fb_in8.c:245: if(cmd=='t'){
	cjne	r7,#0x74,00181$
	C$fb_in8.c$246$4$28 ==.
;	../fb_in8.c:246: while(!TI);
00175$:
	C$fb_in8.c$247$4$28 ==.
;	../fb_in8.c:247: TI=0;
	jbc	_SCON_1,00333$
	sjmp	00175$
00333$:
	C$fb_in8.c$248$4$28 ==.
;	../fb_in8.c:248: SBUF=TYPE;
	mov	_SBUF,#0x0B
00181$:
	C$fb_in8.c$261$2$4 ==.
;	../fb_in8.c:261: TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
	setb	_P1_7
	C$fb_in8.c$262$2$4 ==.
;	../fb_in8.c:262: if(!TASTER){ // Taster gedrückt
	jb	_P1_7,00191$
	C$fb_in8.c$263$3$29 ==.
;	../fb_in8.c:263: if(tasterpegel<255)	tasterpegel++;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0xFF,00335$
00335$:
	jnc	00185$
	mov	r0,_bp
	inc	r0
	inc	@r0
	sjmp	00192$
00185$:
	C$fb_in8.c$265$4$30 ==.
;	../fb_in8.c:265: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	jb	b0,00183$
	xrl	_status60,#0x81
00183$:
	C$fb_in8.c$266$4$30 ==.
;	../fb_in8.c:266: tastergetoggelt=1;
	setb	b0
	sjmp	00192$
00191$:
	C$fb_in8.c$270$3$31 ==.
;	../fb_in8.c:270: if(tasterpegel>0) tasterpegel--;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00188$
	mov	r0,_bp
	inc	r0
	dec	@r0
	sjmp	00192$
00188$:
	C$fb_in8.c$271$3$31 ==.
;	../fb_in8.c:271: else tastergetoggelt=0;
	clr	b0
00192$:
	C$fb_in8.c$273$2$4 ==.
;	../fb_in8.c:273: TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
	mov	a,_status60
	anl	a,#0x01
	mov	r7,a
	cjne	a,#0x01,00339$
00339$:
	clr	a
	rlc	a
	mov	r7,a
	add	a,#0xff
	mov	_P1_7,c
	C$fb_in8.c$275$1$1 ==.
;	../fb_in8.c:275: } while(1);
	ljmp	00193$
	mov	sp,_bp
	pop	_bp
	C$fb_in8.c$276$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$bitmask_1$0$0 == .
_bitmask_1:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
Lfb_in8.main$trimsave$1$1 == 0x1cff
_main_trimsave_1_1	=	0x1cff
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x1D03
Ffb_in8$manufacturer$0$0 == .
_manufacturer:
	.db #0x00	; 0
	.db #0x04	; 4
	.org 0x1D0C
Ffb_in8$port_A_direction$0$0 == .
_port_A_direction:
	.db #0x00	; 0
	.org 0x1D0D
Ffb_in8$run_state$0$0 == .
_run_state:
	.db #0xFF	; 255
