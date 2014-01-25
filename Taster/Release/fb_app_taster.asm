;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Sat Jan 25 09:11:23 2014
;--------------------------------------------------------
	.module fb_app_taster
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tele_repeat_value
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
	.globl _delay_toggle
	.globl _timerstate
	.globl _timerbase
	.globl _timercnt
	.globl _dimmwert
	.globl _dimmcompare
	.globl _LEDSTATE
	.globl _button_buffer
	.globl _timerflags
	.globl _timer
	.globl _port_changed
	.globl _button_changed
	.globl _read_obj_value
	.globl _write_obj_value
	.globl _write_value_req
	.globl _read_value_req
	.globl _switch_led
	.globl _timer0_int
	.globl _delay_timer
	.globl _restart_app
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
G$timer$0$0==.
_timer::
	.ds 2
G$timerflags$0$0==.
_timerflags::
	.ds 2
G$button_buffer$0$0==.
_button_buffer::
	.ds 1
G$LEDSTATE$0$0==.
_LEDSTATE::
	.ds 1
G$dimmcompare$0$0==.
_dimmcompare::
	.ds 1
G$dimmwert$0$0==.
_dimmwert::
	.ds 1
G$timercnt$0$0==.
_timercnt::
	.ds 8
G$timerbase$0$0==.
_timerbase::
	.ds 8
G$timerstate$0$0==.
_timerstate::
	.ds 8
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
G$delay_toggle$0$0==.
_delay_toggle::
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
;Allocation info for local variables in function 'port_changed'
;------------------------------------------------------------
;portval                   Allocated to registers r7 
;n                         Allocated to registers r5 
;oldvalue                  Allocated to registers r6 
;buttonpattern             Allocated to registers r5 
;------------------------------------------------------------
	G$port_changed$0$0 ==.
	C$fb_app_taster.c$46$0$0 ==.
;	..\fb_app_taster.c:46: void port_changed(unsigned char portval)
;	-----------------------------------------
;	 function port_changed
;	-----------------------------------------
_port_changed:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	C$fb_app_taster.c$57$1$1 ==.
;	..\fb_app_taster.c:57: oldvalue=dimmcompare;
	mov	r6,_dimmcompare
	C$fb_app_taster.c$58$2$1 ==.
;	..\fb_app_taster.c:58: do{
	mov	r5,#0x00
00103$:
	C$fb_app_taster.c$59$2$2 ==.
;	..\fb_app_taster.c:59: if (oldvalue!=dimmcompare)// dimmcompare wird in der ISR T0 erhöht
	mov	a,r6
	cjne	a,_dimmcompare,00132$
	sjmp	00104$
00132$:
	C$fb_app_taster.c$61$3$3 ==.
;	..\fb_app_taster.c:61: n++;
	inc	r5
	C$fb_app_taster.c$62$3$3 ==.
;	..\fb_app_taster.c:62: oldvalue=dimmcompare;
	mov	r6,_dimmcompare
00104$:
	C$fb_app_taster.c$65$1$1 ==.
;	..\fb_app_taster.c:65: while (n<=200);				// warten auf 200 x Timer 0 (0.05ms)= 10ms
	mov	a,r5
	add	a,#0xff - 0xC8
	jnc	00103$
	C$fb_app_taster.c$66$1$1 ==.
;	..\fb_app_taster.c:66: if ((PORT & 0x0F) == portval) {
	mov	a,#0x0F
	anl	a,_P0
	mov	r6,a
	cjne	a,ar7,00118$
	C$fb_app_taster.c$67$2$1 ==.
;	..\fb_app_taster.c:67: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
	mov	r6,#0x00
00114$:
	cjne	r6,#0x04,00136$
00136$:
	jnc	00117$
	C$fb_app_taster.c$68$3$5 ==.
;	..\fb_app_taster.c:68: buttonpattern=1<<n;
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00140$
00138$:
	add	a,acc
00140$:
	djnz	b,00138$
	C$fb_app_taster.c$69$3$5 ==.
;	..\fb_app_taster.c:69: if ((portval & buttonpattern) && !(button_buffer & buttonpattern)) button_changed(n,0);	// Taster losgelassen
	mov	r5,a
	anl	a,r7
	jz	00107$
	mov	a,r5
	anl	a,_button_buffer
	jnz	00107$
	clr	b[0]
	push	ar7
	push	ar6
	push	ar5
	mov	bits,b
	mov	dpl,r6
	lcall	_button_changed
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
	C$fb_app_taster.c$70$3$5 ==.
;	..\fb_app_taster.c:70: if (!(portval & buttonpattern) && (button_buffer & buttonpattern)) button_changed(n,1);	// Taster gedrueckt
	mov	a,r5
	anl	a,r7
	jnz	00116$
	mov	a,r5
	anl	a,_button_buffer
	jz	00116$
	setb	b[0]
	push	ar7
	push	ar6
	mov	bits,b
	mov	dpl,r6
	lcall	_button_changed
	pop	ar6
	pop	ar7
00116$:
	C$fb_app_taster.c$67$2$4 ==.
;	..\fb_app_taster.c:67: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
	inc	r6
	sjmp	00114$
00117$:
	C$fb_app_taster.c$72$2$4 ==.
;	..\fb_app_taster.c:72: button_buffer=portval;	// aktuellen port wert in buffer fuer naechsten Vergleich uebernehmen
	mov	_button_buffer,r7
00118$:
	C$fb_app_taster.c$74$2$1 ==.
	XG$port_changed$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'button_changed'
;------------------------------------------------------------
;buttonval                 Allocated to registers b0 
;buttonno                  Allocated to stack - _bp +1
;command                   Allocated to registers r6 
;bedienung                 Allocated to registers r5 
;objval                    Allocated to registers b1 
;------------------------------------------------------------
	G$button_changed$0$0 ==.
	C$fb_app_taster.c$87$2$1 ==.
;	..\fb_app_taster.c:87: void button_changed(unsigned char buttonno, __bit buttonval)
;	-----------------------------------------
;	 function button_changed
;	-----------------------------------------
_button_changed:
	push	_bp
	mov	_bp,sp
	push	dpl
	C$fb_app_taster.c$90$1$1 ==.
;	..\fb_app_taster.c:90: __bit objval=0;
	clr	b1
	C$fb_app_taster.c$92$1$1 ==.
;	..\fb_app_taster.c:92: switch ((eeprom[FUNCTION+(buttonno>>1)] >> ((buttonno & 0x01)*4)) & 0x0F) {		// Funktion des Tasters
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	add	a,#0xCF
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	anl	a,@r0
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r6
	sjmp	00218$
00217$:
	clr	c
	rrc	a
00218$:
	djnz	b,00217$
	anl	a,#0x0F
	mov	r6,a
	cjne	r6,#0x01,00219$
	sjmp	00101$
00219$:
	cjne	r6,#0x02,00220$
	ljmp	00111$
00220$:
	cjne	r6,#0x03,00221$
	ljmp	00139$
00221$:
	cjne	r6,#0x04,00222$
	ljmp	00146$
00222$:
	ljmp	00181$
	C$fb_app_taster.c$97$2$2 ==.
;	..\fb_app_taster.c:97: case 1:
00101$:
	C$fb_app_taster.c$98$2$2 ==.
;	..\fb_app_taster.c:98: if (buttonval) command = (((eeprom[COMMAND+(buttonno*4)]) >> 6) & 0x03);	// Befehl beim druecken
	jnb	b0,00103$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	rl	a
	rl	a
	anl	a,#0x03
	mov	r6,a
	anl	ar6,#0x03
	sjmp	00104$
00103$:
	C$fb_app_taster.c$99$2$2 ==.
;	..\fb_app_taster.c:99: else command = (((eeprom[COMMAND+(buttonno*4)]) >> 4) & 0x03);				// Befehl beim loslassen
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0F
	mov	r5,a
	mov	a,#0x03
	anl	a,r5
	mov	r6,a
00104$:
	C$fb_app_taster.c$100$2$2 ==.
;	..\fb_app_taster.c:100: switch (command) {	// Befehl des Tasters bei Schalten
	cjne	r6,#0x01,00224$
	sjmp	00105$
00224$:
	cjne	r6,#0x02,00225$
	sjmp	00106$
00225$:
	C$fb_app_taster.c$101$3$3 ==.
;	..\fb_app_taster.c:101: case 1:		// EIN
	cjne	r6,#0x03,00108$
	sjmp	00107$
00105$:
	C$fb_app_taster.c$102$3$3 ==.
;	..\fb_app_taster.c:102: objval=1;
	setb	b1
	C$fb_app_taster.c$103$3$3 ==.
;	..\fb_app_taster.c:103: break;
	C$fb_app_taster.c$104$3$3 ==.
;	..\fb_app_taster.c:104: case 2:		// UM
	sjmp	00108$
00106$:
	C$fb_app_taster.c$105$3$3 ==.
;	..\fb_app_taster.c:105: objval = read_obj_value(buttonno)&0x01;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar6
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	mov	a,r2
	anl	a,#0x01
	mov	r2,a
	add	a,#0xff
	C$fb_app_taster.c$106$3$3 ==.
;	..\fb_app_taster.c:106: objval = !objval;
	cpl	c
	mov	b1,c
	C$fb_app_taster.c$107$3$3 ==.
;	..\fb_app_taster.c:107: break;
	C$fb_app_taster.c$108$3$3 ==.
;	..\fb_app_taster.c:108: case 3:		// AUS
	sjmp	00108$
00107$:
	C$fb_app_taster.c$109$3$3 ==.
;	..\fb_app_taster.c:109: objval=0;
	clr	b1
	C$fb_app_taster.c$111$2$2 ==.
;	..\fb_app_taster.c:111: }
00108$:
	C$fb_app_taster.c$112$2$2 ==.
;	..\fb_app_taster.c:112: if (command) {	// nur wenn EIN, UM oder AUS (0=keine Funktion)
	mov	a,r6
	jnz	00227$
	ljmp	00181$
00227$:
	C$fb_app_taster.c$114$3$4 ==.
;	..\fb_app_taster.c:114: write_obj_value(buttonno,objval);
	mov	c,b1
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	push	bits
	push	ar5
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	bits
	C$fb_app_taster.c$115$3$4 ==.
;	..\fb_app_taster.c:115: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	bits
	lcall	_send_obj_value
	pop	bits
	C$fb_app_taster.c$117$3$4 ==.
;	..\fb_app_taster.c:117: switch_led(buttonno, objval);		// LED schalten
	mov	c,b1
	mov	b[0],c
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	C$fb_app_taster.c$119$2$2 ==.
;	..\fb_app_taster.c:119: break;
	ljmp	00181$
	C$fb_app_taster.c$125$2$2 ==.
;	..\fb_app_taster.c:125: case 2:
00111$:
	C$fb_app_taster.c$126$2$2 ==.
;	..\fb_app_taster.c:126: bedienung=eeprom[COMMAND+(buttonno*4)]&0x30;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	mov	r6,a
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0x30
	C$fb_app_taster.c$127$2$2 ==.
;	..\fb_app_taster.c:127: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
	jb	b0,00228$
	ljmp	00137$
00228$:
	C$fb_app_taster.c$128$3$5 ==.
;	..\fb_app_taster.c:128: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
	mov	a,#0xD3
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	jnb	acc.2,00113$
	clr	b[0]
	push	ar6
	push	ar5
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar5
	pop	ar6
00113$:
	C$fb_app_taster.c$129$3$5 ==.
;	..\fb_app_taster.c:129: timercnt[buttonno+4]=eeprom[0xD6+(buttonno*4)];	// Faktor Dauer			
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	add	a,#_timercnt
	mov	r1,a
	mov	a,#0xD6
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	mov	@r1,a
	C$fb_app_taster.c$144$3$5 ==.
;	..\fb_app_taster.c:144: */			timerbase[buttonno+4]=(eeprom[0xD5+(buttonno*4)]&0x70)>>4;// Basis Dauer zwischen kurz und langzeit
	mov	a,r4
	add	a,#_timerbase
	mov	r1,a
	mov	a,#0xD5
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x70
	swap	a
	anl	a,#0x0F
	mov	r4,a
	mov	@r1,a
	C$fb_app_taster.c$145$3$5 ==.
;	..\fb_app_taster.c:145: if (bedienung==0x20) {// umschalten der dimmrichtung...
	cjne	r5,#0x20,00118$
	C$fb_app_taster.c$146$1$1 ==.
;	..\fb_app_taster.c:146: if(read_obj_value(buttonno+8)&0x08)bedienung=0x30;//wenn heller, dann dunkler
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,r2
	pop	ar6
	jnb	acc.3,00115$
	mov	r5,#0x30
	sjmp	00118$
00115$:
	C$fb_app_taster.c$147$4$6 ==.
;	..\fb_app_taster.c:147: else bedienung=0x10;//sonst heller
	mov	r5,#0x10
00118$:
	C$fb_app_taster.c$149$3$5 ==.
;	..\fb_app_taster.c:149: if (bedienung==0x10){	// heller
	cjne	r5,#0x10,00120$
	C$fb_app_taster.c$150$4$7 ==.
;	..\fb_app_taster.c:150: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0xF0)>>4)+0x20;	// dimmen
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	a,#0xD4
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0xF0
	swap	a
	anl	a,#0x0F
	mov	r4,a
	add	a,#0x20
	mov	@r1,a
00120$:
	C$fb_app_taster.c$152$3$5 ==.
;	..\fb_app_taster.c:152: if(bedienung==0x30){	//  dunkler
	cjne	r5,#0x30,00235$
	sjmp	00236$
00235$:
	ljmp	00181$
00236$:
	C$fb_app_taster.c$153$4$8 ==.
;	..\fb_app_taster.c:153: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0x0F))+0x20;	// dimmen
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	a,#0xD4
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	add	a,#0x20
	mov	@r1,a
	ljmp	00181$
00137$:
	C$fb_app_taster.c$159$3$9 ==.
;	..\fb_app_taster.c:159: if ((timerstate[buttonno+4]& 0xF0)==0x20) { // wenn delaytimer noch lauft, dann Schalten, also EIS1 telegramm senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar4,@r1
	anl	ar4,#0xF0
	cjne	r4,#0x20,00134$
	C$fb_app_taster.c$160$4$10 ==.
;	..\fb_app_taster.c:160: if(bedienung==0x20) { //umschalten des Schaltzustandes
	cjne	r5,#0x20,00127$
	C$fb_app_taster.c$161$5$11 ==.
;	..\fb_app_taster.c:161: if(read_obj_value(buttonno)& 0x01)bedienung=0x30;//wenn ein, dann aus
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,r2
	jnb	acc.0,00124$
	mov	r5,#0x30
	sjmp	00127$
00124$:
	C$fb_app_taster.c$162$5$11 ==.
;	..\fb_app_taster.c:162: else bedienung=0x10; // sonst ein
	mov	r5,#0x10
00127$:
	C$fb_app_taster.c$164$4$10 ==.
;	..\fb_app_taster.c:164: if(bedienung== 0x10){	//  ein
	cjne	r5,#0x10,00129$
	C$fb_app_taster.c$165$5$12 ==.
;	..\fb_app_taster.c:165: write_obj_value(buttonno,1);
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$166$5$12 ==.
;	..\fb_app_taster.c:166: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$167$5$12 ==.
;	..\fb_app_taster.c:167: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00135$
00129$:
	C$fb_app_taster.c$170$5$13 ==.
;	..\fb_app_taster.c:170: write_obj_value(buttonno,0);
	clr	a
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$171$5$13 ==.
;	..\fb_app_taster.c:171: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$172$5$13 ==.
;	..\fb_app_taster.c:172: switch_led(buttonno,0);
	clr	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00135$
00134$:
	C$fb_app_taster.c$176$4$14 ==.
;	..\fb_app_taster.c:176: write_obj_value(buttonno+8,read_obj_value(buttonno+8)& 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r7,a
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_read_obj_value
	mov	r2,dpl
	pop	ar6
	pop	ar7
	anl	ar2,#0x08
	mov	r3,#0x00
	push	ar6
	push	ar2
	push	ar3
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar6
	C$fb_app_taster.c$177$4$14 ==.
;	..\fb_app_taster.c:177: if ((eeprom[COMMAND+(buttonno*4)] & 0x40) == 0) {	// ... natuerlich nur wenn parameter dementsprechend (0=senden!!!)
	mov	a,#0xD3
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	jb	acc.6,00135$
	C$fb_app_taster.c$178$5$15 ==.
;	..\fb_app_taster.c:178: send_obj_value(buttonno+8);// Stop Telegramm senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	lcall	_send_obj_value
00135$:
	C$fb_app_taster.c$181$3$9 ==.
;	..\fb_app_taster.c:181: timercnt[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r7,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$182$3$9 ==.
;	..\fb_app_taster.c:182: timerstate[buttonno+4]=0;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$184$2$2 ==.
;	..\fb_app_taster.c:184: break;
	ljmp	00181$
	C$fb_app_taster.c$190$2$2 ==.
;	..\fb_app_taster.c:190: case 3:
00139$:
	C$fb_app_taster.c$191$2$2 ==.
;	..\fb_app_taster.c:191: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
	jb	b0,00245$
	ljmp	00144$
00245$:
	C$fb_app_taster.c$193$3$16 ==.
;	..\fb_app_taster.c:193: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	mov	r7,a
	add	a,#0xD3
	mov	r6,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x10
	swap	a
	anl	a,#0x0F
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$194$3$16 ==.
;	..\fb_app_taster.c:194: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$195$3$16 ==.
;	..\fb_app_taster.c:195: switch_led(buttonno,1);	// Status-LED schalten (hier nur nie,immer,betätigung)
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar6
	pop	ar7
	C$fb_app_taster.c$196$3$16 ==.
;	..\fb_app_taster.c:196: timercnt[buttonno+4]=eeprom[0xD5+(buttonno*4)];	// Faktor Dauer			
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	add	a,#_timercnt
	mov	r1,a
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	@r1,a
	C$fb_app_taster.c$211$3$16 ==.
;	..\fb_app_taster.c:211: */			timerbase[buttonno+4]=(eeprom[0xD4+(buttonno*4)]&0x06)*2;// Basis Dauer zwischen kurz und langzeit
	mov	a,r5
	add	a,#_timerbase
	mov	r1,a
	mov	a,#0xD4
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x06
	add	a,acc
	mov	@r1,a
	C$fb_app_taster.c$212$3$16 ==.
;	..\fb_app_taster.c:212: timerstate[buttonno+4]=((eeprom[0xD3+(buttonno*4)]&0x10)>>4)+0x30;
	mov	a,r5
	add	a,#_timerstate
	mov	r1,a
	mov	dpl,r6
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x10
	swap	a
	anl	a,#0x0F
	mov	r7,a
	add	a,#0x30
	mov	@r1,a
	ljmp	00181$
00144$:
	C$fb_app_taster.c$215$3$17 ==.
;	..\fb_app_taster.c:215: if (timerstate[buttonno+4] == 0x40) {//innerhalb T2
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x40,00141$
	C$fb_app_taster.c$216$4$18 ==.
;	..\fb_app_taster.c:216: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x10
	swap	a
	anl	a,#0x0F
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$217$4$18 ==.
;	..\fb_app_taster.c:217: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	ljmp	00181$
00141$:
	C$fb_app_taster.c$221$4$19 ==.
;	..\fb_app_taster.c:221: timerstate[buttonno+4]=0;// T2 bereits abgelaufen
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$224$2$2 ==.
;	..\fb_app_taster.c:224: break;
	ljmp	00181$
	C$fb_app_taster.c$230$2$2 ==.
;	..\fb_app_taster.c:230: case 4:	// Wertgeber..
00146$:
	C$fb_app_taster.c$231$2$2 ==.
;	..\fb_app_taster.c:231: switch ((eeprom[0xD3+(buttonno*4)]>>4)& 0x07){// Art des Wertgebers holen
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	mov	r7,a
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	swap	a
	anl	a,#(0x0F&0x07)
	mov	r6,a
	add	a,#0xff - 0x04
	jnc	00248$
	ljmp	00181$
00248$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00249$
	jmp	@a+dptr
00249$:
	ljmp	00147$
	ljmp	00152$
	ljmp	00159$
	ljmp	00165$
	ljmp	00171$
	C$fb_app_taster.c$232$3$20 ==.
;	..\fb_app_taster.c:232: case 0: // ++++++++ Lichtszenenabruf ohne Speicherfunktion
00147$:
	C$fb_app_taster.c$233$3$20 ==.
;	..\fb_app_taster.c:233: if(buttonval){
	jb	b0,00250$
	ljmp	00181$
00250$:
	C$fb_app_taster.c$234$4$21 ==.
;	..\fb_app_taster.c:234: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
	mov	a,#0xD3
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.2,00149$
	clr	b[0]
	push	ar7
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar7
00149$:
	C$fb_app_taster.c$235$4$21 ==.
;	..\fb_app_taster.c:235: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r4,a
	push	ar4
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar4
	C$fb_app_taster.c$236$4$21 ==.
;	..\fb_app_taster.c:236: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
	C$fb_app_taster.c$237$4$21 ==.
;	..\fb_app_taster.c:237: switch_led(buttonno,0);
	clr	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	C$fb_app_taster.c$239$3$20 ==.
;	..\fb_app_taster.c:239: break;
	ljmp	00181$
	C$fb_app_taster.c$240$3$20 ==.
;	..\fb_app_taster.c:240: case 1:	// ++++++++ Lichtszenenabruf mit Speicherfunktion
00152$:
	C$fb_app_taster.c$241$3$20 ==.
;	..\fb_app_taster.c:241: if(buttonval){// beim drücken
	jnb	b0,00157$
	C$fb_app_taster.c$243$4$22 ==.
;	..\fb_app_taster.c:243: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
	C$fb_app_taster.c$244$4$22 ==.
;	..\fb_app_taster.c:244: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
	C$fb_app_taster.c$245$4$22 ==.
;	..\fb_app_taster.c:245: timerstate[buttonno+4]=0x50;// Betätigung länger 5 sekunden bei Lichtszene
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x50
	ljmp	00181$
00157$:
	C$fb_app_taster.c$249$4$23 ==.
;	..\fb_app_taster.c:249: if (timerstate[buttonno+4]==0x50){// wenn 5 sekunden noch nicht erreicht LZ senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x50,00154$
	C$fb_app_taster.c$250$5$24 ==.
;	..\fb_app_taster.c:250: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$251$5$24 ==.
;	..\fb_app_taster.c:251: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00155$
00154$:
	C$fb_app_taster.c$254$5$25 ==.
;	..\fb_app_taster.c:254: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]|0x80);
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	orl	ar6,#0x80
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_write_obj_value
	dec	sp
	dec	sp
00155$:
	C$fb_app_taster.c$256$4$23 ==.
;	..\fb_app_taster.c:256: send_obj_value(buttonno+8);
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	lcall	_send_obj_value
	C$fb_app_taster.c$257$4$23 ==.
;	..\fb_app_taster.c:257: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$258$4$23 ==.
;	..\fb_app_taster.c:258: timercnt[buttonno+4]=0;
	mov	a,r6
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$260$3$20 ==.
;	..\fb_app_taster.c:260: break;
	ljmp	00181$
	C$fb_app_taster.c$261$3$20 ==.
;	..\fb_app_taster.c:261: case 2: // ++++++  Helligkeitswertgeber
00159$:
	C$fb_app_taster.c$262$3$20 ==.
;	..\fb_app_taster.c:262: if (buttonval){
	jnb	b0,00163$
	C$fb_app_taster.c$263$4$26 ==.
;	..\fb_app_taster.c:263: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0xD6
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r4,a
	push	ar7
	push	ar4
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar4
	C$fb_app_taster.c$264$4$26 ==.
;	..\fb_app_taster.c:264: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
	C$fb_app_taster.c$265$4$26 ==.
;	..\fb_app_taster.c:265: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar7
	C$fb_app_taster.c$266$4$26 ==.
;	..\fb_app_taster.c:266: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
	mov	a,#0xD3
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.7,00256$
	ljmp	00181$
00256$:
	C$fb_app_taster.c$267$5$27 ==.
;	..\fb_app_taster.c:267: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
	C$fb_app_taster.c$268$5$27 ==.
;	..\fb_app_taster.c:268: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
	C$fb_app_taster.c$269$5$27 ==.
;	..\fb_app_taster.c:269: timerstate[buttonno+4]=0x70;// Betätigung länger 5 sekunden bei Dimmwert
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x70
	ljmp	00181$
00163$:
	C$fb_app_taster.c$276$4$28 ==.
;	..\fb_app_taster.c:276: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$278$3$20 ==.
;	..\fb_app_taster.c:278: break;
	ljmp	00181$
	C$fb_app_taster.c$279$3$20 ==.
;	..\fb_app_taster.c:279: case 3:	// ++++++  Temperaturwertgeber
00165$:
	C$fb_app_taster.c$280$3$20 ==.
;	..\fb_app_taster.c:280: if (buttonval){
	jnb	b0,00169$
	C$fb_app_taster.c$281$4$30 ==.
;	..\fb_app_taster.c:281: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0xD6
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r4,a
	push	ar7
	push	ar4
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar4
	C$fb_app_taster.c$282$4$30 ==.
;	..\fb_app_taster.c:282: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
	C$fb_app_taster.c$283$4$30 ==.
;	..\fb_app_taster.c:283: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar7
	C$fb_app_taster.c$284$4$30 ==.
;	..\fb_app_taster.c:284: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
	mov	a,#0xD3
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.7,00258$
	ljmp	00181$
00258$:
	C$fb_app_taster.c$285$5$31 ==.
;	..\fb_app_taster.c:285: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
	C$fb_app_taster.c$286$5$31 ==.
;	..\fb_app_taster.c:286: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
	C$fb_app_taster.c$287$5$31 ==.
;	..\fb_app_taster.c:287: timerstate[buttonno+4]=0x90;// Betätigung länger 5 sekunden bei Dimmwert
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x90
	ljmp	00181$
00169$:
	C$fb_app_taster.c$295$4$32 ==.
;	..\fb_app_taster.c:295: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$297$3$20 ==.
;	..\fb_app_taster.c:297: break;
	ljmp	00181$
	C$fb_app_taster.c$298$3$20 ==.
;	..\fb_app_taster.c:298: case 4: // ++++++   Dimmwertgeber
00171$:
	C$fb_app_taster.c$299$3$20 ==.
;	..\fb_app_taster.c:299: if (buttonval){
	jnb	b0,00177$
	C$fb_app_taster.c$300$4$34 ==.
;	..\fb_app_taster.c:300: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r4,a
	push	ar7
	push	ar4
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar4
	C$fb_app_taster.c$301$4$34 ==.
;	..\fb_app_taster.c:301: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
	C$fb_app_taster.c$302$4$34 ==.
;	..\fb_app_taster.c:302: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar7
	C$fb_app_taster.c$303$4$34 ==.
;	..\fb_app_taster.c:303: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
	mov	a,#0xD3
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jb	acc.7,00181$
	C$fb_app_taster.c$304$5$35 ==.
;	..\fb_app_taster.c:304: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
	C$fb_app_taster.c$305$5$35 ==.
;	..\fb_app_taster.c:305: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
	C$fb_app_taster.c$306$5$35 ==.
;	..\fb_app_taster.c:306: timerstate[buttonno+4]=0xB0;// Betätigung länger 5 sekunden bei Dimmwert
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xB0
	sjmp	00181$
00177$:
	C$fb_app_taster.c$310$4$36 ==.
;	..\fb_app_taster.c:310: if (timerstate[buttonno+4]==0xC0){
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0xC0,00175$
	C$fb_app_taster.c$312$5$37 ==.
;	..\fb_app_taster.c:312: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
	C$fb_app_taster.c$313$5$37 ==.
;	..\fb_app_taster.c:313: START_WRITECYCLE
	mov	_FMCON,#0x00
	C$fb_app_taster.c$314$5$37 ==.
;	..\fb_app_taster.c:314: WRITE_BYTE(0x01,0xD5+(buttonno*4),read_obj_value(buttonno+8));
	mov	_FMADRH,#0x1D
	mov	a,#0xD5
	add	a,r7
	mov	_FMADRL,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	lcall	_read_obj_value
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	_FMDATA,r4
	C$fb_app_taster.c$315$5$37 ==.
;	..\fb_app_taster.c:315: STOP_WRITECYCLE // Lichtszene speichern
	mov	_FMCON,#0x68
	C$fb_app_taster.c$316$5$37 ==.
;	..\fb_app_taster.c:316: EA=1;
	setb	_IEN0_7
00175$:
	C$fb_app_taster.c$319$4$36 ==.
;	..\fb_app_taster.c:319: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$326$1$1 ==.
;	..\fb_app_taster.c:326: }
00181$:
	dec	sp
	pop	_bp
	C$fb_app_taster.c$327$1$1 ==.
	XG$button_changed$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$read_obj_value$0$0 ==.
	C$fb_app_taster.c$353$1$1 ==.
;	..\fb_app_taster.c:353: unsigned long read_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function read_obj_value
;	-----------------------------------------
_read_obj_value:
	mov	r7,dpl
	C$fb_app_taster.c$356$1$1 ==.
;	..\fb_app_taster.c:356: if(objno<4)	return(object_value[objno]);
	cjne	r7,#0x04,00107$
00107$:
	jnc	00102$
	mov	a,r7
	add	a,#_object_value
	mov	r1,a
	mov	ar6,@r1
	mov	r5,#0x00
	mov	r4,#0x00
	mov	r3,#0x00
	mov	dpl,r6
	mov	dph,r5
	mov	b,r4
	mov	a,r3
	sjmp	00104$
00102$:
	C$fb_app_taster.c$357$1$1 ==.
;	..\fb_app_taster.c:357: else return((object_value[objno-4]<<8)+object_value[objno]);
	mov	a,r7
	add	a,#0xFC
	add	a,#_object_value
	mov	r1,a
	mov	ar6,@r1
	mov	ar5,r6
	mov	r6,#0x00
	mov	a,r7
	add	a,#_object_value
	mov	r1,a
	mov	ar7,@r1
	mov	r4,#0x00
	mov	a,r7
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r4,a
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
00104$:
	C$fb_app_taster.c$359$1$1 ==.
	XG$read_obj_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_value'
;------------------------------------------------------------
;objval                    Allocated to stack - _bp -4
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$write_obj_value$0$0 ==.
	C$fb_app_taster.c$361$1$1 ==.
;	..\fb_app_taster.c:361: void write_obj_value(unsigned char objno, unsigned int objval)
;	-----------------------------------------
;	 function write_obj_value
;	-----------------------------------------
_write_obj_value:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$fb_app_taster.c$363$1$1 ==.
;	..\fb_app_taster.c:363: if(objno<4)object_value[objno]=objval;
	cjne	r7,#0x04,00107$
00107$:
	jnc	00102$
	mov	a,r7
	add	a,#_object_value
	mov	r1,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	mov	@r1,ar6
	sjmp	00104$
00102$:
	C$fb_app_taster.c$365$2$2 ==.
;	..\fb_app_taster.c:365: object_value[objno-4]=objval>>8;
	mov	a,r7
	add	a,#0xFC
	add	a,#_object_value
	mov	r1,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	ar6,@r0
	mov	@r1,ar6
	C$fb_app_taster.c$366$2$2 ==.
;	..\fb_app_taster.c:366: object_value[objno]=objval&0xFF;
	mov	a,r7
	add	a,#_object_value
	mov	r1,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	mov	@r1,ar6
00104$:
	pop	_bp
	C$fb_app_taster.c$368$1$1 ==.
	XG$write_obj_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;objtype                   Allocated to registers r6 
;------------------------------------------------------------
	G$write_value_req$0$0 ==.
	C$fb_app_taster.c$378$1$1 ==.
;	..\fb_app_taster.c:378: void write_value_req(unsigned char objno)
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	mov	r7,dpl
	C$fb_app_taster.c$381$1$1 ==.
;	..\fb_app_taster.c:381: if (objno<12) {					// max 12 objekte (0-11)
	cjne	r7,#0x0C,00120$
00120$:
	jc	00121$
	ljmp	00112$
00121$:
	C$fb_app_taster.c$382$2$2 ==.
;	..\fb_app_taster.c:382: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r7
	mov	b,#0x03
	mul	ab
	add	a,r6
	add	a,#0x04
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	C$fb_app_taster.c$383$2$2 ==.
;	..\fb_app_taster.c:383: if (objtype<=6){
	mov  r6,a
	add	a,#0xff - 0x06
	jc	00102$
	C$fb_app_taster.c$384$3$3 ==.
;	..\fb_app_taster.c:384: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
	mov	a,#0x3F
	anl	a,(_telegramm + 0x0007)
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00102$:
	C$fb_app_taster.c$386$2$2 ==.
;	..\fb_app_taster.c:386: if (objtype==7)write_obj_value(objno,telegramm[8]);
	cjne	r6,#0x07,00104$
	mov	r4,(_telegramm + 0x0008)
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
00104$:
	C$fb_app_taster.c$387$2$2 ==.
;	..\fb_app_taster.c:387: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
	cjne	r6,#0x08,00106$
	mov	r5,(_telegramm + 0x0009)
	mov	r6,#0x00
	mov	r3,(_telegramm + 0x0008)
	mov	ar4,r3
	clr	a
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	push	ar7
	push	ar5
	push	ar6
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar7
00106$:
	C$fb_app_taster.c$388$2$2 ==.
;	..\fb_app_taster.c:388: if ((objno<4) && ((eeprom[COMMAND+(objno*4)]) & 0x07) <4) switch_led(objno,telegramm[7]&0x01);	// LED nur schalten, wenn nicht auf Betï¿½tigungsanzeige parametriert
	cjne	r7,#0x04,00127$
00127$:
	jnc	00112$
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x07
	cjne	r6,#0x04,00129$
00129$:
	jnc	00112$
	mov	a,(_telegramm + 0x0007)
	anl	a,#0x01
	add	a,#0xff
	mov  b0,c
	mov	b[0],c
	mov	bits,b
	mov	dpl,r7
	lcall	_switch_led
00112$:
	C$fb_app_taster.c$390$1$1 ==.
	XG$write_value_req$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$read_value_req$0$0 ==.
	C$fb_app_taster.c$400$1$1 ==.
;	..\fb_app_taster.c:400: void read_value_req(unsigned char objno)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
	mov	r7,dpl
	C$fb_app_taster.c$402$1$1 ==.
;	..\fb_app_taster.c:402: send_obj_value(objno+0x40);
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	lcall	_send_obj_value
	C$fb_app_taster.c$403$1$1 ==.
	XG$read_value_req$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'switch_led'
;------------------------------------------------------------
;onoff                     Allocated to registers b0 
;ledno                     Allocated to registers r7 
;command                   Allocated to registers r6 
;ledvar                    Allocated to registers r6 
;------------------------------------------------------------
	G$switch_led$0$0 ==.
	C$fb_app_taster.c$415$1$1 ==.
;	..\fb_app_taster.c:415: void switch_led(unsigned char ledno, __bit onoff)
;	-----------------------------------------
;	 function switch_led
;	-----------------------------------------
_switch_led:
	mov	r7,dpl
	C$fb_app_taster.c$419$1$1 ==.
;	..\fb_app_taster.c:419: if (ledno<4) {
	cjne	r7,#0x04,00122$
00122$:
	jc	00123$
	ljmp	00112$
00123$:
	C$fb_app_taster.c$420$2$2 ==.
;	..\fb_app_taster.c:420: command = ((eeprom[COMMAND+(ledno*4)]) & 0x07);	// Befehl der Status LED
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x07
	C$fb_app_taster.c$421$2$2 ==.
;	..\fb_app_taster.c:421: switch (command) {
	cjne	r6,#0x00,00124$
	sjmp	00101$
00124$:
	cjne	r6,#0x01,00125$
	sjmp	00102$
00125$:
	cjne	r6,#0x03,00126$
	sjmp	00103$
00126$:
	C$fb_app_taster.c$422$3$3 ==.
;	..\fb_app_taster.c:422: case 0:		// immer AUS
	cjne	r6,#0x04,00109$
	sjmp	00104$
00101$:
	C$fb_app_taster.c$423$3$3 ==.
;	..\fb_app_taster.c:423: onoff=0;
	clr	b0
	C$fb_app_taster.c$424$3$3 ==.
;	..\fb_app_taster.c:424: break;
	C$fb_app_taster.c$425$3$3 ==.
;	..\fb_app_taster.c:425: case 1:		// immer an
	sjmp	00109$
00102$:
	C$fb_app_taster.c$426$3$3 ==.
;	..\fb_app_taster.c:426: onoff=1;
	setb	b0
	C$fb_app_taster.c$427$3$3 ==.
;	..\fb_app_taster.c:427: break;
	C$fb_app_taster.c$429$3$3 ==.
;	..\fb_app_taster.c:429: case 3:		// LED = invertierte Statusanzeige
	sjmp	00109$
00103$:
	C$fb_app_taster.c$430$3$3 ==.
;	..\fb_app_taster.c:430: onoff=!onoff;
	cpl	b0
	C$fb_app_taster.c$431$3$3 ==.
;	..\fb_app_taster.c:431: break;
	C$fb_app_taster.c$432$3$3 ==.
;	..\fb_app_taster.c:432: case 4:		// LED = Betaetigungsanzeige
	sjmp	00109$
00104$:
	C$fb_app_taster.c$433$3$3 ==.
;	..\fb_app_taster.c:433: onoff=1;	// erstmal an beim druecken der Taste
	setb	b0
	C$fb_app_taster.c$434$3$3 ==.
;	..\fb_app_taster.c:434: timerstate[ledno]= 0x10;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x10
	C$fb_app_taster.c$435$3$3 ==.
;	..\fb_app_taster.c:435: timerbase[ledno]=1;
	mov	a,r7
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x01
	C$fb_app_taster.c$436$3$3 ==.
;	..\fb_app_taster.c:436: switch (eeprom[LED_DURATION]) {		// dann ueber delay-timer aus
	mov	dptr,#(_eeprom + 0x00ce)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	cjne	r6,#0x26,00128$
	sjmp	00105$
00128$:
	cjne	r6,#0x76,00129$
	sjmp	00106$
00129$:
	C$fb_app_taster.c$437$4$4 ==.
;	..\fb_app_taster.c:437: case 38:	// 0,75 sec
	cjne	r6,#0x96,00109$
	sjmp	00107$
00105$:
	C$fb_app_taster.c$438$4$4 ==.
;	..\fb_app_taster.c:438: timercnt[ledno]=47;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x2F
	C$fb_app_taster.c$439$4$4 ==.
;	..\fb_app_taster.c:439: break;
	C$fb_app_taster.c$440$4$4 ==.
;	..\fb_app_taster.c:440: case 118:	// 2,25 sec
	sjmp	00109$
00106$:
	C$fb_app_taster.c$441$4$4 ==.
;	..\fb_app_taster.c:441: timercnt[ledno]=141;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x8D
	C$fb_app_taster.c$442$4$4 ==.
;	..\fb_app_taster.c:442: break;
	C$fb_app_taster.c$443$4$4 ==.
;	..\fb_app_taster.c:443: case 150:	// 3 sec
	sjmp	00109$
00107$:
	C$fb_app_taster.c$444$4$4 ==.
;	..\fb_app_taster.c:444: timercnt[ledno]=188;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0xBC
	C$fb_app_taster.c$447$2$2 ==.
;	..\fb_app_taster.c:447: }
00109$:
	C$fb_app_taster.c$448$2$2 ==.
;	..\fb_app_taster.c:448: ledvar=LEDSTATE;
	mov	r6,_LEDSTATE
	C$fb_app_taster.c$449$2$2 ==.
;	..\fb_app_taster.c:449: ledvar&= ~(1<<(ledno+4));	// LEDs sind an Pin 4-7
	mov	a,r7
	add	a,#0x04
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00133$
00131$:
	add	a,acc
00133$:
	djnz	b,00131$
	cpl	a
	anl	ar6,a
	C$fb_app_taster.c$450$2$2 ==.
;	..\fb_app_taster.c:450: ledvar |= ((onoff<<(ledno+4)) | 0x0F);	// unteren 4 bits immer auf 1 lassen !!!
	mov	c,b0
	clr	a
	rlc	a
	mov	r5,a
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00136$
00134$:
	add	a,acc
00136$:
	djnz	b,00134$
	orl	a,#0x0F
	mov	r7,a
	orl	a,r6
	mov	_LEDSTATE,a
	C$fb_app_taster.c$451$2$1 ==.
;	..\fb_app_taster.c:451: LEDSTATE=ledvar;
00112$:
	C$fb_app_taster.c$453$2$1 ==.
	XG$switch_led$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_int'
;------------------------------------------------------------
	G$timer0_int$0$0 ==.
	C$fb_app_taster.c$456$2$1 ==.
;	..\fb_app_taster.c:456: void timer0_int  (void) __interrupt (1) // Interrupt T0 für soft PWM LED
;	-----------------------------------------
;	 function timer0_int
;	-----------------------------------------
_timer0_int:
	push	acc
	push	psw
	C$fb_app_taster.c$458$1$1 ==.
;	..\fb_app_taster.c:458: dimmcompare++;
	inc	_dimmcompare
	C$fb_app_taster.c$459$1$1 ==.
;	..\fb_app_taster.c:459: TF0=0;
	clr	_TCON_5
	C$fb_app_taster.c$460$1$1 ==.
;	..\fb_app_taster.c:460: if((dimmcompare) <= dimmwert) PORT = LEDSTATE | 0x0F;// LEDs ein
	clr	c
	mov	a,_dimmwert
	subb	a,_dimmcompare
	jc	00102$
	mov	a,#0x0F
	orl	a,_LEDSTATE
	mov	_P0,a
	sjmp	00104$
00102$:
	C$fb_app_taster.c$461$1$1 ==.
;	..\fb_app_taster.c:461: else PORT = 0x0F;//LEDs aus
	mov	_P0,#0x0F
00104$:
	pop	psw
	pop	acc
	C$fb_app_taster.c$463$1$1 ==.
	XG$timer0_int$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_timer'
;------------------------------------------------------------
;objno                     Allocated to stack - _bp +1
;delay_value               Allocated to registers r5 
;ledvar                    Allocated to registers r6 
;tmp                       Allocated to registers r4 
;m                         Allocated to registers r7 
;n                         Allocated to registers r6 
;i_tmp                     Allocated to registers r5 r4 
;sloc0                     Allocated to stack - _bp +9
;sloc1                     Allocated to stack - _bp +2
;------------------------------------------------------------
	G$delay_timer$0$0 ==.
	C$fb_app_taster.c$474$1$1 ==.
;	..\fb_app_taster.c:474: void delay_timer(void)
;	-----------------------------------------
;	 function delay_timer
;	-----------------------------------------
_delay_timer:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	C$fb_app_taster.c$480$1$1 ==.
;	..\fb_app_taster.c:480: RTCCON=0x60;
	mov	_RTCCON,#0x60
	C$fb_app_taster.c$481$1$1 ==.
;	..\fb_app_taster.c:481: RTCH=0x00;//RTCH=0x01; 
	mov	_RTCH,#0x00
	C$fb_app_taster.c$482$1$1 ==.
;	..\fb_app_taster.c:482: RTCL=0xE6;//RTCL=0xCD;	
	mov	_RTCL,#0xE6
	C$fb_app_taster.c$483$1$1 ==.
;	..\fb_app_taster.c:483: RTCCON=0x61; //	start_rtc(8) RTC neu starten mit 4ms
	mov	_RTCCON,#0x61
	C$fb_app_taster.c$485$1$1 ==.
;	..\fb_app_taster.c:485: timer++;
	inc	_timer
	clr	a
	cjne	a,_timer,00190$
	inc	(_timer + 1)
00190$:
	C$fb_app_taster.c$486$1$1 ==.
;	..\fb_app_taster.c:486: timerflags = timer&(~(timer-1));// flanke generieren
	mov	a,_timer
	add	a,#0xFF
	mov	r6,a
	mov	a,(_timer + 1)
	addc	a,#0xFF
	mov	r7,a
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,r7
	cpl	a
	mov	r7,a
	mov	a,r6
	anl	a,_timer
	mov	_timerflags,a
	mov	a,r7
	anl	a,(_timer + 1)
	mov	(_timerflags + 1),a
	C$fb_app_taster.c$487$5$5 ==.
;	..\fb_app_taster.c:487: for(n=0;n<16;n++){
	mov	r7,#0x00
00148$:
	cjne	r7,#0x10,00191$
00191$:
	jnc	00151$
	C$fb_app_taster.c$488$2$2 ==.
;	..\fb_app_taster.c:488: if(timerflags & 0x0001){// positive flags erzeugen und schieben
	mov	a,_timerflags
	jnb	acc.0,00106$
	C$fb_app_taster.c$489$1$1 ==.
;	..\fb_app_taster.c:489: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
	mov	r6,#0x00
00144$:
	cjne	r6,#0x08,00194$
00194$:
	jnc	00106$
	C$fb_app_taster.c$490$4$4 ==.
;	..\fb_app_taster.c:490: if( timercnt[m]){
	mov	a,r6
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jz	00146$
	C$fb_app_taster.c$491$5$5 ==.
;	..\fb_app_taster.c:491: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	ar4,@r0
	anl	ar4,#0x0F
	mov	a,r4
	cjne	a,ar7,00146$
	C$fb_app_taster.c$492$6$6 ==.
;	..\fb_app_taster.c:492: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
	mov	a,r5
	dec	a
	mov	@r1,a
00146$:
	C$fb_app_taster.c$489$3$3 ==.
;	..\fb_app_taster.c:489: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
	inc	r6
	sjmp	00144$
00106$:
	C$fb_app_taster.c$497$2$2 ==.
;	..\fb_app_taster.c:497: timerflags = timerflags>>1;
	mov	a,(_timerflags + 1)
	clr	c
	rrc	a
	xch	a,_timerflags
	rrc	a
	xch	a,_timerflags
	mov	(_timerflags + 1),a
	C$fb_app_taster.c$487$1$1 ==.
;	..\fb_app_taster.c:487: for(n=0;n<16;n++){
	inc	r7
	sjmp	00148$
00151$:
	C$fb_app_taster.c$500$4$9 ==.
;	..\fb_app_taster.c:500: for(objno=0;objno<8;objno++) {
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
00152$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x08,00199$
00199$:
	jc	00200$
	ljmp	00156$
00200$:
	C$fb_app_taster.c$501$2$7 ==.
;	..\fb_app_taster.c:501: if(!timercnt[objno]) {	// ... es ist also soweit
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	jz	00201$
	ljmp	00154$
00201$:
	C$fb_app_taster.c$502$3$8 ==.
;	..\fb_app_taster.c:502: delay_value=timerstate[objno]& 0x0F;
	push	ar1
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_timerstate
	mov	r0,a
	pop	ar1
	mov	ar6,@r0
	mov	a,#0x0F
	anl	a,r6
	mov	r5,a
	C$fb_app_taster.c$504$3$8 ==.
;	..\fb_app_taster.c:504: switch(timerstate[objno] & 0xF0){
	anl	ar6,#0xF0
	cjne	r6,#0x10,00202$
	sjmp	00107$
00202$:
	cjne	r6,#0x20,00203$
	sjmp	00108$
00203$:
	cjne	r6,#0x30,00204$
	ljmp	00112$
00204$:
	cjne	r6,#0x40,00205$
	ljmp	00116$
00205$:
	cjne	r6,#0x50,00206$
	ljmp	00117$
00206$:
	cjne	r6,#0x60,00207$
	ljmp	00154$
00207$:
	cjne	r6,#0x70,00208$
	ljmp	00120$
00208$:
	cjne	r6,#0x80,00209$
	ljmp	00120$
00209$:
	cjne	r6,#0x90,00210$
	ljmp	00128$
00210$:
	cjne	r6,#0xA0,00211$
	ljmp	00128$
00211$:
	cjne	r6,#0xB0,00212$
	ljmp	00133$
00212$:
	cjne	r6,#0xC0,00213$
	ljmp	00133$
00213$:
	ljmp	00154$
	C$fb_app_taster.c$506$4$9 ==.
;	..\fb_app_taster.c:506: case 0x10:
00107$:
	C$fb_app_taster.c$508$4$9 ==.
;	..\fb_app_taster.c:508: ledvar=LEDSTATE;
	mov	r6,_LEDSTATE
	C$fb_app_taster.c$509$4$9 ==.
;	..\fb_app_taster.c:509: ledvar &= ~(1<<(objno+4));	// LEDs sind an Pin 4-7
	mov	r1,_bp
	inc	r1
	mov	a,#0x04
	add	a,@r1
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00216$
00214$:
	add	a,acc
00216$:
	djnz	b,00214$
	cpl	a
	mov	r4,a
	anl	ar6,a
	C$fb_app_taster.c$510$4$9 ==.
;	..\fb_app_taster.c:510: ledvar |= 0x0F;				// unbedingt taster pins wieder auf 1
	mov	a,#0x0F
	orl	a,r6
	mov	_LEDSTATE,a
	C$fb_app_taster.c$512$4$9 ==.
;	..\fb_app_taster.c:512: timerstate[objno]=0;
	mov	@r0,#0x00
	C$fb_app_taster.c$513$4$9 ==.
;	..\fb_app_taster.c:513: break;
	ljmp	00154$
	C$fb_app_taster.c$514$4$9 ==.
;	..\fb_app_taster.c:514: case 0x20:	// Dimmen
00108$:
	C$fb_app_taster.c$515$4$9 ==.
;	..\fb_app_taster.c:515: write_obj_value(objno+4,delay_value);
	mov	ar4,r5
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r3,a
	push	ar3
	push	ar4
	push	ar6
	mov	dpl,r3
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar3
	C$fb_app_taster.c$516$4$9 ==.
;	..\fb_app_taster.c:516: send_obj_value(objno+4);		// dimmkommando senden
	mov	dpl,r3
	lcall	_send_obj_value
	C$fb_app_taster.c$518$4$9 ==.
;	..\fb_app_taster.c:518: if(!(eeprom[0xD5+((objno-4)*4)]& 0x08)){// wenn Telegrammwiederholung eingeschalten
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jb	acc.3,00110$
	C$fb_app_taster.c$545$5$10 ==.
;	..\fb_app_taster.c:545: */				timercnt[objno]=tele_repeat_value[eeprom[0xD5+((objno-4)*4)]& 0x07];	
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x07
	anl	a,r4
	mov	dptr,#_tele_repeat_value
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,ar6
	mov	@r0,ar4
	C$fb_app_taster.c$547$5$10 ==.
;	..\fb_app_taster.c:547: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	ljmp	00154$
00110$:
	C$fb_app_taster.c$550$5$11 ==.
;	..\fb_app_taster.c:550: timercnt[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$551$5$11 ==.
;	..\fb_app_taster.c:551: timerstate[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$553$4$9 ==.
;	..\fb_app_taster.c:553: break;
	ljmp	00154$
	C$fb_app_taster.c$556$4$9 ==.
;	..\fb_app_taster.c:556: case 0x30:	// 0x30, 0x31 für langzeit telegramm senden
00112$:
	C$fb_app_taster.c$557$4$9 ==.
;	..\fb_app_taster.c:557: write_obj_value(objno+4,delay_value & 0x01);
	anl	ar5,#0x01
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r4
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar4
	C$fb_app_taster.c$558$4$9 ==.
;	..\fb_app_taster.c:558: send_obj_value(objno+4);				// Langzeit Telegramm senden
	mov	dpl,r4
	lcall	_send_obj_value
	C$fb_app_taster.c$561$4$9 ==.
;	..\fb_app_taster.c:561: timercnt[objno]=eeprom[DEL_FACTOR2+((objno-4)*4)];	// Faktor Dauer	T2		
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	mov	r5,a
	add	a,#0xD6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,ar6
	mov	@r0,ar4
	C$fb_app_taster.c$562$4$9 ==.
;	..\fb_app_taster.c:562: timerbase[objno]=(eeprom[0xD4+((objno-4)*4)]&0x60)>>3;	// Basis Dauer T2
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r4,a
	mov	a,#0xD4
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x60
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r5,a
	mov	r0,ar4
	mov	@r0,ar5
	C$fb_app_taster.c$563$4$9 ==.
;	..\fb_app_taster.c:563: if (timercnt[objno]) {	// wenn keine lamellenverstellzeit dann nix tun
	mov	r0,ar6
	mov	a,@r0
	jz	00114$
	C$fb_app_taster.c$564$5$12 ==.
;	..\fb_app_taster.c:564: timerstate[objno]=((eeprom[COMMAND+((objno-4)*4)]&0x10)>>4)+0x40; // 0x40,0x41 fuer ende T2 (lamellenvestellzeit)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x10
	swap	a
	anl	a,#0x0F
	mov	r4,a
	add	a,#0x40
	mov	r0,ar5
	mov	@r0,a
	ljmp	00154$
00114$:
	C$fb_app_taster.c$567$5$13 ==.
;	..\fb_app_taster.c:567: timercnt[objno]=0;
	mov	r0,ar6
	mov	@r0,#0x00
	C$fb_app_taster.c$568$5$13 ==.
;	..\fb_app_taster.c:568: timerstate[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$570$4$9 ==.
;	..\fb_app_taster.c:570: break;			
	ljmp	00154$
	C$fb_app_taster.c$571$4$9 ==.
;	..\fb_app_taster.c:571: case 0x40:
00116$:
	C$fb_app_taster.c$573$4$9 ==.
;	..\fb_app_taster.c:573: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
	mov	@r0,#0x00
	C$fb_app_taster.c$574$4$9 ==.
;	..\fb_app_taster.c:574: timercnt[objno]=0;
	mov	@r1,#0x00
	C$fb_app_taster.c$575$4$9 ==.
;	..\fb_app_taster.c:575: break;
	ljmp	00154$
	C$fb_app_taster.c$576$4$9 ==.
;	..\fb_app_taster.c:576: case 0x50: // Wertgeber Lichtszene lang drücken zum speichern
00117$:
	C$fb_app_taster.c$577$4$9 ==.
;	..\fb_app_taster.c:577: switch_led(objno-4,1);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	setb	b[0]
	mov	bits,b
	lcall	_switch_led
	C$fb_app_taster.c$578$4$9 ==.
;	..\fb_app_taster.c:578: timerstate[objno]=0x60;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x60
	C$fb_app_taster.c$579$4$9 ==.
;	..\fb_app_taster.c:579: break;
	ljmp	00154$
	C$fb_app_taster.c$584$4$9 ==.
;	..\fb_app_taster.c:584: case 0x80: // Wertgeber Helligkeit verstellen
00120$:
	C$fb_app_taster.c$585$4$9 ==.
;	..\fb_app_taster.c:585: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$586$4$9 ==.
;	..\fb_app_taster.c:586: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	mov	r6,a
	add	a,#0xD4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x30
	swap	a
	anl	a,#0x0F
	mov	dptr,#_tele_repeat_value
	movc	a,@a+dptr
	mov	@r1,a
	C$fb_app_taster.c$587$4$9 ==.
;	..\fb_app_taster.c:587: i_tmp=(eeprom[0xD5+4*(objno-4)])<<8;
	mov	a,#0xD5
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	r5,#0x00
	C$fb_app_taster.c$588$4$9 ==.
;	..\fb_app_taster.c:588: i_tmp +=eeprom[0xD6+4*(objno-4)];
	mov	a,#0xD6
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	r3,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
	C$fb_app_taster.c$589$4$9 ==.
;	..\fb_app_taster.c:589: if (i_tmp==0x39FD || i_tmp==0x3828)	//Differenz ausgleichen
	cjne	r5,#0xFD,00219$
	cjne	r4,#0x39,00219$
	sjmp	00121$
00219$:
	cjne	r5,#0x28,00122$
	cjne	r4,#0x38,00122$
00121$:
	C$fb_app_taster.c$591$5$14 ==.
;	..\fb_app_taster.c:591: i_tmp--;
	dec	r5
	cjne	r5,#0xFF,00222$
	dec	r4
00222$:
00122$:
	C$fb_app_taster.c$593$4$9 ==.
;	..\fb_app_taster.c:593: i_tmp -= 0x27;
	mov	a,r5
	add	a,#0xD9
	mov	r5,a
	mov	a,r4
	addc	a,#0xFF
	C$fb_app_taster.c$595$4$9 ==.
;	..\fb_app_taster.c:595: if(!(i_tmp&0x0800)){
	mov	r4,a
	jb	acc.3,00125$
	C$fb_app_taster.c$596$5$15 ==.
;	..\fb_app_taster.c:596: i_tmp=0x03C94;
	mov	r5,#0x94
	mov	r4,#0x3C
	sjmp	00126$
00125$:
	C$fb_app_taster.c$599$5$16 ==.
;	..\fb_app_taster.c:599: switch_led(objno-4,1);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	setb	b[0]
	push	ar5
	push	ar4
	mov	bits,b
	lcall	_switch_led
	pop	ar4
	pop	ar5
00126$:
	C$fb_app_taster.c$601$4$9 ==.
;	..\fb_app_taster.c:601: write_obj_value(objno+4,i_tmp);// wir rechnen immer mit exp 2^7
	mov	r0,_bp
	inc	r0
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	push	ar5
	push	ar4
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$602$4$9 ==.
;	..\fb_app_taster.c:602: timerstate[objno]=0x80;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x80
	C$fb_app_taster.c$603$4$9 ==.
;	..\fb_app_taster.c:603: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
	C$fb_app_taster.c$604$4$9 ==.
;	..\fb_app_taster.c:604: START_WRITECYCLE
	mov	_FMCON,#0x00
	C$fb_app_taster.c$605$4$9 ==.
;	..\fb_app_taster.c:605: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
	mov	_FMADRH,#0x1D
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	mov	r5,a
	add	a,#0xD5
	mov	_FMADRL,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	push	ar5
	lcall	_read_obj_value
	mov	r3,dph
	pop	ar5
	mov	_FMDATA,r3
	C$fb_app_taster.c$606$4$9 ==.
;	..\fb_app_taster.c:606: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
	mov	_FMADRH,#0x1D
	mov	a,#0xD6
	add	a,r5
	mov	_FMADRL,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	lcall	_read_obj_value
	mov	r2,dpl
	mov	_FMDATA,r2
	C$fb_app_taster.c$607$4$9 ==.
;	..\fb_app_taster.c:607: STOP_WRITECYCLE // Luxwert speichern
	mov	_FMCON,#0x68
	C$fb_app_taster.c$608$4$9 ==.
;	..\fb_app_taster.c:608: EA=1;
	setb	_IEN0_7
	C$fb_app_taster.c$609$4$9 ==.
;	..\fb_app_taster.c:609: send_obj_value(objno+4);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$611$4$9 ==.
;	..\fb_app_taster.c:611: break;
	ljmp	00154$
	C$fb_app_taster.c$614$4$9 ==.
;	..\fb_app_taster.c:614: case 0xA0: // Wertgeber Temperatur verstellen
00128$:
	C$fb_app_taster.c$615$4$9 ==.
;	..\fb_app_taster.c:615: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$616$4$9 ==.
;	..\fb_app_taster.c:616: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	mov	r7,a
	add	a,#0xD4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x30
	swap	a
	anl	a,#0x0F
	mov	dptr,#_tele_repeat_value
	movc	a,@a+dptr
	mov	@r1,a
	C$fb_app_taster.c$617$4$9 ==.
;	..\fb_app_taster.c:617: i_tmp=(eeprom[0xD5+4*(objno-4)]&0x07)<<8;
	mov	a,#0xD5
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x07
	mov	ar3,r6
	mov	r6,#0x00
	mov	ar5,r6
	mov	ar4,r3
	C$fb_app_taster.c$618$4$9 ==.
;	..\fb_app_taster.c:618: i_tmp +=eeprom[0xD6+4*(objno-4)];
	mov	a,#0xD6
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	C$fb_app_taster.c$619$4$9 ==.
;	..\fb_app_taster.c:619: if(i_tmp>=0x0032){
	clr	c
	mov	a,r5
	subb	a,#0x32
	mov	a,r4
	subb	a,#0x00
	jc	00130$
	C$fb_app_taster.c$620$5$17 ==.
;	..\fb_app_taster.c:620: i_tmp -= 0x32;
	mov	a,r5
	add	a,#0xCE
	mov	r5,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	C$fb_app_taster.c$621$5$17 ==.
;	..\fb_app_taster.c:621: switch_led(objno-4,1);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	setb	b[0]
	push	ar5
	push	ar4
	mov	bits,b
	lcall	_switch_led
	pop	ar4
	pop	ar5
	sjmp	00131$
00130$:
	C$fb_app_taster.c$624$5$18 ==.
;	..\fb_app_taster.c:624: i_tmp=0x07D0;
	mov	r5,#0xD0
	mov	r4,#0x07
00131$:
	C$fb_app_taster.c$626$4$9 ==.
;	..\fb_app_taster.c:626: write_obj_value(objno+4,i_tmp|0x0800);// wir rechnen immer mit exp 2^1
	orl	ar4,#0x08
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r7,a
	push	ar7
	push	ar5
	push	ar4
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar7
	C$fb_app_taster.c$627$4$9 ==.
;	..\fb_app_taster.c:627: timerstate[objno]=0xA0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xA0
	C$fb_app_taster.c$628$4$9 ==.
;	..\fb_app_taster.c:628: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
	C$fb_app_taster.c$629$4$9 ==.
;	..\fb_app_taster.c:629: START_WRITECYCLE
	mov	_FMCON,#0x00
	C$fb_app_taster.c$630$4$9 ==.
;	..\fb_app_taster.c:630: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
	mov	_FMADRH,#0x1D
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	mov	r6,a
	add	a,#0xD5
	mov	_FMADRL,a
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_read_obj_value
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	_FMDATA,r3
	C$fb_app_taster.c$631$4$9 ==.
;	..\fb_app_taster.c:631: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
	mov	_FMADRH,#0x1D
	mov	a,#0xD6
	add	a,r6
	mov	_FMADRL,a
	mov	dpl,r7
	push	ar7
	lcall	_read_obj_value
	mov	r3,dpl
	pop	ar7
	mov	_FMDATA,r3
	C$fb_app_taster.c$632$4$9 ==.
;	..\fb_app_taster.c:632: STOP_WRITECYCLE // Temperaturwert speichern
	mov	_FMCON,#0x68
	C$fb_app_taster.c$633$4$9 ==.
;	..\fb_app_taster.c:633: EA=1;
	setb	_IEN0_7
	C$fb_app_taster.c$634$4$9 ==.
;	..\fb_app_taster.c:634: send_obj_value(objno+4);
	mov	dpl,r7
	lcall	_send_obj_value
	C$fb_app_taster.c$636$4$9 ==.
;	..\fb_app_taster.c:636: break;
	ljmp	00154$
	C$fb_app_taster.c$639$4$9 ==.
;	..\fb_app_taster.c:639: case 0xC0: // Wertgeber Dimmer verstellen
00133$:
	C$fb_app_taster.c$640$4$9 ==.
;	..\fb_app_taster.c:640: tmp=read_obj_value(objno+4);//
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	dpl,a
	lcall	_read_obj_value
	mov	r4,dpl
	mov	r5,dph
	C$fb_app_taster.c$641$4$9 ==.
;	..\fb_app_taster.c:641: m=eeprom[0xD4+((objno-4)*4)]& 0x3F;// schrittweite und zeit zw. telegrammen
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	add	a,acc
	add	a,acc
	add	a,#0xD4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x3F
	C$fb_app_taster.c$642$4$9 ==.
;	..\fb_app_taster.c:642: n= m & 0x0F;  // Schrittweite
	mov	a,#0x0F
	anl	a,r7
	mov	r6,a
	C$fb_app_taster.c$643$4$9 ==.
;	..\fb_app_taster.c:643: m=m>>4;// zeit zwischen telegrammen
	mov	a,r7
	swap	a
	anl	a,#0x0F
	mov	r7,a
	C$fb_app_taster.c$644$4$9 ==.
;	..\fb_app_taster.c:644: if (!tmp){
	mov	a,r4
	jnz	00138$
	C$fb_app_taster.c$645$5$19 ==.
;	..\fb_app_taster.c:645: tmp=255;
	mov	r4,#0xFF
	sjmp	00139$
00138$:
	C$fb_app_taster.c$648$5$20 ==.
;	..\fb_app_taster.c:648: if (tmp>=n)tmp-=n;
	clr	c
	mov	a,r4
	subb	a,r6
	jc	00135$
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r4,a
	sjmp	00139$
00135$:
	C$fb_app_taster.c$649$5$20 ==.
;	..\fb_app_taster.c:649: else tmp=0;
	mov	r4,#0x00
00139$:
	C$fb_app_taster.c$651$4$9 ==.
;	..\fb_app_taster.c:651: write_obj_value(objno+4,tmp);
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	push	ar7
	push	ar5
	push	ar4
	push	ar6
	mov	dpl,r5
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$652$4$9 ==.
;	..\fb_app_taster.c:652: switch_led(objno-4,1);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	setb	b[0]
	mov	bits,b
	lcall	_switch_led
	pop	ar5
	C$fb_app_taster.c$653$4$9 ==.
;	..\fb_app_taster.c:653: send_obj_value(objno+4);		// dimmkommando senden
	mov	dpl,r5
	lcall	_send_obj_value
	pop	ar7
	C$fb_app_taster.c$654$4$9 ==.
;	..\fb_app_taster.c:654: timerstate[objno]=0xC0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xC0
	C$fb_app_taster.c$655$4$9 ==.
;	..\fb_app_taster.c:655: timercnt[objno]=tele_repeat_value[m];// 0,5/1/1,5/2 Sec.
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r1,a
	mov	a,r7
	mov	dptr,#_tele_repeat_value
	movc	a,@a+dptr
	mov	r7,a
	mov	@r1,a
	C$fb_app_taster.c$656$4$9 ==.
;	..\fb_app_taster.c:656: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$659$1$7 ==.
;	..\fb_app_taster.c:659: }// ende switch (timerstate...
00154$:
	C$fb_app_taster.c$500$1$1 ==.
;	..\fb_app_taster.c:500: for(objno=0;objno<8;objno++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	ljmp	00152$
00156$:
	mov	sp,_bp
	pop	_bp
	C$fb_app_taster.c$662$1$1 ==.
	XG$delay_timer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;write_ok                  Allocated to registers 
;------------------------------------------------------------
	G$restart_app$0$0 ==.
	C$fb_app_taster.c$672$1$1 ==.
;	..\fb_app_taster.c:672: void restart_app(void)
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
	C$fb_app_taster.c$678$1$1 ==.
;	..\fb_app_taster.c:678: for (n=0;n<4;n++) {
	mov	r7,#0x00
00105$:
	cjne	r7,#0x04,00137$
00137$:
	jnc	00108$
	C$fb_app_taster.c$679$2$2 ==.
;	..\fb_app_taster.c:679: SET_PORT_MODE_BIDIRECTIONAL(n)
	cjne	r7,#0x08,00139$
00139$:
	jnc	00107$
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00143$
00141$:
	add	a,acc
00143$:
	djnz	b,00141$
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r6
	mov	r6,a
	anl	_P0M1,a
	mov	a,r6
	anl	_P0M2,a
00107$:
	C$fb_app_taster.c$678$1$1 ==.
;	..\fb_app_taster.c:678: for (n=0;n<4;n++) {
	inc	r7
	sjmp	00105$
00108$:
	C$fb_app_taster.c$683$1$1 ==.
;	..\fb_app_taster.c:683: for (n=4;n<8;n++) {
	mov	r7,#0x04
00109$:
	cjne	r7,#0x08,00144$
00144$:
	clr	a
	rlc	a
	mov	r6,a
	jz	00112$
	C$fb_app_taster.c$684$2$4 ==.
;	..\fb_app_taster.c:684: SET_PORT_MODE_PUSHPULL(n)
	mov	a,r6
	jz	00111$
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00149$
00147$:
	add	a,acc
00149$:
	djnz	b,00147$
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r6
	anl	_P0M1,a
	mov	a,r6
	orl	_P0M2,a
00111$:
	C$fb_app_taster.c$683$1$1 ==.
;	..\fb_app_taster.c:683: for (n=4;n<8;n++) {
	inc	r7
	sjmp	00109$
00112$:
	C$fb_app_taster.c$687$1$1 ==.
;	..\fb_app_taster.c:687: PORT=0x0F;			// Taster auf high, LEDs zunächst aus
	mov	_P0,#0x0F
	C$fb_app_taster.c$689$1$1 ==.
;	..\fb_app_taster.c:689: button_buffer=0x0F;	// Variable für letzten abgearbeiteten Taster Status
	mov	_button_buffer,#0x0F
	C$fb_app_taster.c$691$1$1 ==.
;	..\fb_app_taster.c:691: RTCCON=0x60;	//stop_rtc();
	mov	_RTCCON,#0x60
	C$fb_app_taster.c$692$1$1 ==.
;	..\fb_app_taster.c:692: RTCH=0x00;
	mov	_RTCH,#0x00
	C$fb_app_taster.c$693$1$1 ==.
;	..\fb_app_taster.c:693: RTCL=0xE6;	
	mov	_RTCL,#0xE6
	C$fb_app_taster.c$694$1$1 ==.
;	..\fb_app_taster.c:694: RTCCON=0x61;	//start_rtc(8);		// RTC neu mit 8ms starten
	mov	_RTCCON,#0x61
	C$fb_app_taster.c$696$1$1 ==.
;	..\fb_app_taster.c:696: timer=0;			// Timer-Variable, wird alle 8ms inkrementiert
	clr	a
	mov	_timer,a
	mov	(_timer + 1),a
	C$fb_app_taster.c$698$1$1 ==.
;	..\fb_app_taster.c:698: EA=0;		// Interrupts sperren
	clr	_IEN0_7
	C$fb_app_taster.c$700$1$1 ==.
;	..\fb_app_taster.c:700: START_WRITECYCLE			
	mov	_FMCON,#0x00
	C$fb_app_taster.c$701$1$1 ==.
;	..\fb_app_taster.c:701: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x03
	mov	_FMDATA,#0x00
	C$fb_app_taster.c$702$1$1 ==.
;	..\fb_app_taster.c:702: WRITE_BYTE(0x01,0x04,0x04)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x04
	mov	_FMDATA,#0x04
	C$fb_app_taster.c$706$1$1 ==.
;	..\fb_app_taster.c:706: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0C
	mov	_FMDATA,#0x00
	C$fb_app_taster.c$707$1$1 ==.
;	..\fb_app_taster.c:707: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0D
	mov	_FMDATA,#0xFF
	C$fb_app_taster.c$709$1$1 ==.
;	..\fb_app_taster.c:709: STOP_WRITECYCLE
	mov	_FMCON,#0x68
	C$fb_app_taster.c$714$1$1 ==.
;	..\fb_app_taster.c:714: for (n=0;n<12;n++) write_obj_value(n,0);		// Objektwerte alle auf 0 setzen
	mov	r7,#0x00
00113$:
	cjne	r7,#0x0C,00150$
00150$:
	jnc	00116$
	push	ar7
	clr	a
	push	acc
	push	acc
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar7
	inc	r7
	sjmp	00113$
00116$:
	C$fb_app_taster.c$716$1$1 ==.
;	..\fb_app_taster.c:716: for (n=0;n<8;n++) timercnt[n]=0;		// delay records loeschen
	mov	r7,#0x00
00117$:
	cjne	r7,#0x08,00152$
00152$:
	jnc	00120$
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	inc	r7
	sjmp	00117$
00120$:
	C$fb_app_taster.c$721$1$1 ==.
;	..\fb_app_taster.c:721: TR0=0;
	clr	_TCON_4
	C$fb_app_taster.c$722$1$1 ==.
;	..\fb_app_taster.c:722: TMOD &= 0xF0;
	anl	_TMOD,#0xF0
	C$fb_app_taster.c$723$1$1 ==.
;	..\fb_app_taster.c:723: TMOD |= 0x02;// T0 autoreload
	orl	_TMOD,#0x02
	C$fb_app_taster.c$724$1$1 ==.
;	..\fb_app_taster.c:724: TH0=0x47;
	mov	_TH0,#0x47
	C$fb_app_taster.c$725$1$1 ==.
;	..\fb_app_taster.c:725: TL0=0x47;
	mov	_TL0,#0x47
	C$fb_app_taster.c$726$1$1 ==.
;	..\fb_app_taster.c:726: TR0=1;
	setb	_TCON_4
	C$fb_app_taster.c$728$1$1 ==.
;	..\fb_app_taster.c:728: IP0 &= 0xFC; //FC		F6	für flackerfrei bei 1 kanal
	anl	_IP0,#0xFC
	C$fb_app_taster.c$729$1$1 ==.
;	..\fb_app_taster.c:729: IP0 |= 0x0C; //0C		06	dto.
	orl	_IP0,#0x0C
	C$fb_app_taster.c$730$1$1 ==.
;	..\fb_app_taster.c:730: IP0H &= 0xF4;// 
	anl	_IP0H,#0xF4
	C$fb_app_taster.c$731$1$1 ==.
;	..\fb_app_taster.c:731: IP0H |= 0x04;// 		Timer 1 auf Level 2
	orl	_IP0H,#0x04
	C$fb_app_taster.c$733$1$1 ==.
;	..\fb_app_taster.c:733: ET0=1;// timer 0 interupt freigeben	
	setb	_IEN0_1
	C$fb_app_taster.c$735$1$1 ==.
;	..\fb_app_taster.c:735: TF0=0; //timer0 flag löschen
	clr	_TCON_5
	C$fb_app_taster.c$736$1$1 ==.
;	..\fb_app_taster.c:736: EA=1;// Interrupts freigeben	
	setb	_IEN0_7
	C$fb_app_taster.c$738$1$1 ==.
	XG$restart_app$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$tele_repeat_value$0$0 == .
_tele_repeat_value:
	.db #0x3F	; 63
	.db #0x7D	; 125
	.db #0xBC	; 188
	.db #0xFA	; 250
	.db #0x19	; 25
	.db #0x26	; 38
	.db #0x32	; 50	'2'
	.db #0x5E	; 94
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
