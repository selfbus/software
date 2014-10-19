;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
; This file was generated Sat Oct 18 20:04:36 2014
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
	C$fb_app_taster.c$44$0$0 ==.
;	../fb_app_taster.c:44: void port_changed(unsigned char portval)
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
	C$fb_app_taster.c$55$1$1 ==.
;	../fb_app_taster.c:55: oldvalue=dimmcompare;
	mov	r6,_dimmcompare
	C$fb_app_taster.c$56$2$1 ==.
;	../fb_app_taster.c:56: do{
	mov	r5,#0x00
00103$:
	C$fb_app_taster.c$57$2$2 ==.
;	../fb_app_taster.c:57: if (oldvalue!=dimmcompare)// dimmcompare wird in der ISR T0 erhöht
	mov	a,r6
	cjne	a,_dimmcompare,00132$
	sjmp	00104$
00132$:
	C$fb_app_taster.c$59$3$3 ==.
;	../fb_app_taster.c:59: n++;
	inc	r5
	C$fb_app_taster.c$60$3$3 ==.
;	../fb_app_taster.c:60: oldvalue=dimmcompare;
	mov	r6,_dimmcompare
00104$:
	C$fb_app_taster.c$63$1$1 ==.
;	../fb_app_taster.c:63: while (n<=200);				// warten auf 200 x Timer 0 (0.05ms)= 10ms
	mov	a,r5
	add	a,#0xff - 0xC8
	jnc	00103$
	C$fb_app_taster.c$64$1$1 ==.
;	../fb_app_taster.c:64: if ((PORT & 0x0F) == portval) {
	mov	a,#0x0F
	anl	a,_P0
	mov	r6,a
	cjne	a,ar7,00118$
	C$fb_app_taster.c$65$2$1 ==.
;	../fb_app_taster.c:65: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
	mov	r6,#0x00
00114$:
	cjne	r6,#0x04,00136$
00136$:
	jnc	00117$
	C$fb_app_taster.c$66$3$5 ==.
;	../fb_app_taster.c:66: buttonpattern=1<<n;
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00140$
00138$:
	add	a,acc
00140$:
	djnz	b,00138$
	C$fb_app_taster.c$67$3$5 ==.
;	../fb_app_taster.c:67: if ((portval & buttonpattern) && !(button_buffer & buttonpattern)) button_changed(n,0);	// Taster losgelassen
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
	C$fb_app_taster.c$68$3$5 ==.
;	../fb_app_taster.c:68: if (!(portval & buttonpattern) && (button_buffer & buttonpattern)) button_changed(n,1);	// Taster gedrueckt
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
	C$fb_app_taster.c$65$2$4 ==.
;	../fb_app_taster.c:65: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
	inc	r6
	sjmp	00114$
00117$:
	C$fb_app_taster.c$70$2$4 ==.
;	../fb_app_taster.c:70: button_buffer=portval;	// aktuellen port wert in buffer fuer naechsten Vergleich uebernehmen
	mov	_button_buffer,r7
00118$:
	C$fb_app_taster.c$72$2$1 ==.
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
	C$fb_app_taster.c$85$2$1 ==.
;	../fb_app_taster.c:85: void button_changed( unsigned char buttonno, __bit buttonval)
;	-----------------------------------------
;	 function button_changed
;	-----------------------------------------
_button_changed:
	push	_bp
	mov	_bp,sp
	push	dpl
	C$fb_app_taster.c$88$1$1 ==.
;	../fb_app_taster.c:88: __bit objval=0;
	clr	b1
	C$fb_app_taster.c$90$1$1 ==.
;	../fb_app_taster.c:90: switch ((eeprom[FUNCTION+(buttonno>>1)] >> ((buttonno & 0x01)*4)) & 0x0F) {		// Funktion des Tasters
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
	sjmp	00171$
00170$:
	clr	c
	rrc	a
00171$:
	djnz	b,00170$
	anl	a,#0x0F
	mov	r6,a
	cjne	r6,#0x01,00172$
	sjmp	00101$
00172$:
	cjne	r6,#0x02,00173$
	ljmp	00111$
00173$:
	cjne	r6,#0x03,00174$
	ljmp	00139$
00174$:
	ljmp	00147$
	C$fb_app_taster.c$95$2$2 ==.
;	../fb_app_taster.c:95: case 1:
00101$:
	C$fb_app_taster.c$96$2$2 ==.
;	../fb_app_taster.c:96: if (buttonval) command = (((eeprom[COMMAND+(buttonno*4)]) >> 6) & 0x03);	// Befehl beim druecken
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
	C$fb_app_taster.c$97$2$2 ==.
;	../fb_app_taster.c:97: else command = (((eeprom[COMMAND+(buttonno*4)]) >> 4) & 0x03);				// Befehl beim loslassen
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
	C$fb_app_taster.c$98$2$2 ==.
;	../fb_app_taster.c:98: switch (command) {	// Befehl des Tasters bei Schalten
	cjne	r6,#0x01,00176$
	sjmp	00105$
00176$:
	cjne	r6,#0x02,00177$
	sjmp	00106$
00177$:
	C$fb_app_taster.c$99$3$3 ==.
;	../fb_app_taster.c:99: case 1:		// EIN
	cjne	r6,#0x03,00108$
	sjmp	00107$
00105$:
	C$fb_app_taster.c$100$3$3 ==.
;	../fb_app_taster.c:100: objval=1;
	setb	b1
	C$fb_app_taster.c$101$3$3 ==.
;	../fb_app_taster.c:101: break;
	C$fb_app_taster.c$102$3$3 ==.
;	../fb_app_taster.c:102: case 2:		// UM
	sjmp	00108$
00106$:
	C$fb_app_taster.c$103$3$3 ==.
;	../fb_app_taster.c:103: objval = read_obj_value(buttonno)&0x01;
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
	C$fb_app_taster.c$104$3$3 ==.
;	../fb_app_taster.c:104: objval = !objval;
	cpl	c
	mov	b1,c
	C$fb_app_taster.c$105$3$3 ==.
;	../fb_app_taster.c:105: break;
	C$fb_app_taster.c$106$3$3 ==.
;	../fb_app_taster.c:106: case 3:		// AUS
	sjmp	00108$
00107$:
	C$fb_app_taster.c$107$3$3 ==.
;	../fb_app_taster.c:107: objval=0;
	clr	b1
	C$fb_app_taster.c$109$2$2 ==.
;	../fb_app_taster.c:109: }
00108$:
	C$fb_app_taster.c$110$2$2 ==.
;	../fb_app_taster.c:110: if (command) {	// nur wenn EIN, UM oder AUS (0=keine Funktion)
	mov	a,r6
	jnz	00179$
	ljmp	00147$
00179$:
	C$fb_app_taster.c$112$3$4 ==.
;	../fb_app_taster.c:112: write_obj_value(buttonno,objval);
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
	C$fb_app_taster.c$113$3$4 ==.
;	../fb_app_taster.c:113: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	bits
	lcall	_send_obj_value
	pop	bits
	C$fb_app_taster.c$115$3$4 ==.
;	../fb_app_taster.c:115: switch_led(buttonno, objval);		// LED schalten
	mov	c,b1
	mov	b[0],c
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	C$fb_app_taster.c$117$2$2 ==.
;	../fb_app_taster.c:117: break;
	ljmp	00147$
	C$fb_app_taster.c$123$2$2 ==.
;	../fb_app_taster.c:123: case 2:
00111$:
	C$fb_app_taster.c$124$2$2 ==.
;	../fb_app_taster.c:124: bedienung=eeprom[COMMAND+(buttonno*4)]&0x30;
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
	C$fb_app_taster.c$125$2$2 ==.
;	../fb_app_taster.c:125: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
	jb	b0,00180$
	ljmp	00137$
00180$:
	C$fb_app_taster.c$126$3$5 ==.
;	../fb_app_taster.c:126: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
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
	C$fb_app_taster.c$127$3$5 ==.
;	../fb_app_taster.c:127: timercnt[buttonno+4]=eeprom[0xD6+(buttonno*4)];	// Faktor Dauer
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
	C$fb_app_taster.c$142$3$5 ==.
;	../fb_app_taster.c:142: */			timerbase[buttonno+4]=(eeprom[0xD5+(buttonno*4)]&0x70)>>4;// Basis Dauer zwischen kurz und langzeit
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
	C$fb_app_taster.c$143$3$5 ==.
;	../fb_app_taster.c:143: if (bedienung==0x20) {// umschalten der dimmrichtung...
	cjne	r5,#0x20,00118$
	C$fb_app_taster.c$144$1$1 ==.
;	../fb_app_taster.c:144: if(read_obj_value(buttonno+8)&0x08)bedienung=0x30;//wenn heller, dann dunkler
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
	C$fb_app_taster.c$145$4$6 ==.
;	../fb_app_taster.c:145: else bedienung=0x10;//sonst heller
	mov	r5,#0x10
00118$:
	C$fb_app_taster.c$147$3$5 ==.
;	../fb_app_taster.c:147: if (bedienung==0x10){	// heller
	cjne	r5,#0x10,00120$
	C$fb_app_taster.c$148$4$7 ==.
;	../fb_app_taster.c:148: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0xF0)>>4)+0x20;	// dimmen
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
	C$fb_app_taster.c$150$3$5 ==.
;	../fb_app_taster.c:150: if(bedienung==0x30){	//  dunkler
	cjne	r5,#0x30,00187$
	sjmp	00188$
00187$:
	ljmp	00147$
00188$:
	C$fb_app_taster.c$151$4$8 ==.
;	../fb_app_taster.c:151: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0x0F))+0x20;	// dimmen
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
	ljmp	00147$
00137$:
	C$fb_app_taster.c$157$3$9 ==.
;	../fb_app_taster.c:157: if ((timerstate[buttonno+4]& 0xF0)==0x20) { // wenn delaytimer noch lauft, dann Schalten, also EIS1 telegramm senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar4,@r1
	anl	ar4,#0xF0
	cjne	r4,#0x20,00134$
	C$fb_app_taster.c$158$4$10 ==.
;	../fb_app_taster.c:158: if(bedienung==0x20) { //umschalten des Schaltzustandes
	cjne	r5,#0x20,00127$
	C$fb_app_taster.c$159$5$11 ==.
;	../fb_app_taster.c:159: if(read_obj_value(buttonno)& 0x01)bedienung=0x30;//wenn ein, dann aus
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
	C$fb_app_taster.c$160$5$11 ==.
;	../fb_app_taster.c:160: else bedienung=0x10; // sonst ein
	mov	r5,#0x10
00127$:
	C$fb_app_taster.c$162$4$10 ==.
;	../fb_app_taster.c:162: if(bedienung== 0x10){	//  ein
	cjne	r5,#0x10,00129$
	C$fb_app_taster.c$163$5$12 ==.
;	../fb_app_taster.c:163: write_obj_value(buttonno,1);
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
	C$fb_app_taster.c$164$5$12 ==.
;	../fb_app_taster.c:164: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$165$5$12 ==.
;	../fb_app_taster.c:165: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00135$
00129$:
	C$fb_app_taster.c$168$5$13 ==.
;	../fb_app_taster.c:168: write_obj_value(buttonno,0);
	clr	a
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
	C$fb_app_taster.c$169$5$13 ==.
;	../fb_app_taster.c:169: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$170$5$13 ==.
;	../fb_app_taster.c:170: switch_led(buttonno,0);
	clr	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00135$
00134$:
	C$fb_app_taster.c$174$4$14 ==.
;	../fb_app_taster.c:174: write_obj_value(buttonno+8,read_obj_value(buttonno+8)& 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
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
	C$fb_app_taster.c$175$4$14 ==.
;	../fb_app_taster.c:175: if ((eeprom[COMMAND+(buttonno*4)] & 0x40) == 0) {	// ... natuerlich nur wenn parameter dementsprechend (0=senden!!!)
	mov	a,#0xD3
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	jb	acc.6,00135$
	C$fb_app_taster.c$176$5$15 ==.
;	../fb_app_taster.c:176: send_obj_value(buttonno+8);// Stop Telegramm senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	lcall	_send_obj_value
00135$:
	C$fb_app_taster.c$179$3$9 ==.
;	../fb_app_taster.c:179: timercnt[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r7,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$180$3$9 ==.
;	../fb_app_taster.c:180: timerstate[buttonno+4]=0;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$182$2$2 ==.
;	../fb_app_taster.c:182: break;
	ljmp	00147$
	C$fb_app_taster.c$188$2$2 ==.
;	../fb_app_taster.c:188: case 3:
00139$:
	C$fb_app_taster.c$189$2$2 ==.
;	../fb_app_taster.c:189: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
	jb	b0,00197$
	ljmp	00144$
00197$:
	C$fb_app_taster.c$191$3$16 ==.
;	../fb_app_taster.c:191: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
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
	C$fb_app_taster.c$192$3$16 ==.
;	../fb_app_taster.c:192: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$193$3$16 ==.
;	../fb_app_taster.c:193: switch_led(buttonno,1);	// Status-LED schalten (hier nur nie,immer,betätigung)
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar6
	pop	ar7
	C$fb_app_taster.c$194$3$16 ==.
;	../fb_app_taster.c:194: timercnt[buttonno+4]=eeprom[0xD5+(buttonno*4)];	// Faktor Dauer
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
	C$fb_app_taster.c$209$3$16 ==.
;	../fb_app_taster.c:209: */			timerbase[buttonno+4]=(eeprom[0xD4+(buttonno*4)]&0x06)*2;// Basis Dauer zwischen kurz und langzeit
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
	C$fb_app_taster.c$210$3$16 ==.
;	../fb_app_taster.c:210: timerstate[buttonno+4]=((eeprom[0xD3+(buttonno*4)]&0x10)>>4)+0x30;
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
	sjmp	00147$
00144$:
	C$fb_app_taster.c$213$3$17 ==.
;	../fb_app_taster.c:213: if (timerstate[buttonno+4] == 0x40) {//innerhalb T2
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x40,00141$
	C$fb_app_taster.c$214$4$18 ==.
;	../fb_app_taster.c:214: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
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
	C$fb_app_taster.c$215$4$18 ==.
;	../fb_app_taster.c:215: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	sjmp	00147$
00141$:
	C$fb_app_taster.c$219$4$19 ==.
;	../fb_app_taster.c:219: timerstate[buttonno+4]=0;// T2 bereits abgelaufen
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$324$1$1 ==.
;	../fb_app_taster.c:324: }
00147$:
	dec	sp
	pop	_bp
	C$fb_app_taster.c$325$1$1 ==.
	XG$button_changed$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$read_obj_value$0$0 ==.
	C$fb_app_taster.c$351$1$1 ==.
;	../fb_app_taster.c:351: unsigned long read_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function read_obj_value
;	-----------------------------------------
_read_obj_value:
	mov	r7,dpl
	C$fb_app_taster.c$354$1$1 ==.
;	../fb_app_taster.c:354: if(objno<4)	return(object_value[objno]);
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
	C$fb_app_taster.c$355$1$1 ==.
;	../fb_app_taster.c:355: else return((object_value[objno-4]<<8)+object_value[objno]);
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
	C$fb_app_taster.c$357$1$1 ==.
	XG$read_obj_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_value'
;------------------------------------------------------------
;objval                    Allocated to stack - _bp -4
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$write_obj_value$0$0 ==.
	C$fb_app_taster.c$359$1$1 ==.
;	../fb_app_taster.c:359: void write_obj_value(unsigned char objno, unsigned int objval)
;	-----------------------------------------
;	 function write_obj_value
;	-----------------------------------------
_write_obj_value:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$fb_app_taster.c$361$1$1 ==.
;	../fb_app_taster.c:361: if(objno<4)object_value[objno]=objval;
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
	C$fb_app_taster.c$363$2$2 ==.
;	../fb_app_taster.c:363: object_value[objno-4]=objval>>8;
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
	C$fb_app_taster.c$364$2$2 ==.
;	../fb_app_taster.c:364: object_value[objno]=objval&0xFF;
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
	C$fb_app_taster.c$366$1$1 ==.
	XG$write_obj_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;objtype                   Allocated to registers r6 
;------------------------------------------------------------
	G$write_value_req$0$0 ==.
	C$fb_app_taster.c$376$1$1 ==.
;	../fb_app_taster.c:376: void write_value_req(unsigned char objno)
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	mov	r7,dpl
	C$fb_app_taster.c$379$1$1 ==.
;	../fb_app_taster.c:379: if (objno<12) {					// max 12 objekte (0-11)
	cjne	r7,#0x0C,00120$
00120$:
	jc	00121$
	ljmp	00112$
00121$:
	C$fb_app_taster.c$380$2$2 ==.
;	../fb_app_taster.c:380: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
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
	C$fb_app_taster.c$381$2$2 ==.
;	../fb_app_taster.c:381: if (objtype<=6){
	mov  r6,a
	add	a,#0xff - 0x06
	jc	00102$
	C$fb_app_taster.c$382$3$3 ==.
;	../fb_app_taster.c:382: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
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
	C$fb_app_taster.c$384$2$2 ==.
;	../fb_app_taster.c:384: if (objtype==7)write_obj_value(objno,telegramm[8]);
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
	C$fb_app_taster.c$385$2$2 ==.
;	../fb_app_taster.c:385: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
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
	C$fb_app_taster.c$386$2$2 ==.
;	../fb_app_taster.c:386: if ((objno<4) && ((eeprom[COMMAND+(objno*4)]) & 0x07) <4) switch_led(objno,telegramm[7]&0x01);	// LED nur schalten, wenn nicht auf Betï¿½tigungsanzeige parametriert
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
	C$fb_app_taster.c$388$1$1 ==.
	XG$write_value_req$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$read_value_req$0$0 ==.
	C$fb_app_taster.c$398$1$1 ==.
;	../fb_app_taster.c:398: void read_value_req(unsigned char objno)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
	mov	r7,dpl
	C$fb_app_taster.c$400$1$1 ==.
;	../fb_app_taster.c:400: send_obj_value(objno+0x40);
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	lcall	_send_obj_value
	C$fb_app_taster.c$401$1$1 ==.
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
	C$fb_app_taster.c$413$1$1 ==.
;	../fb_app_taster.c:413: void switch_led(unsigned char ledno, __bit onoff)
;	-----------------------------------------
;	 function switch_led
;	-----------------------------------------
_switch_led:
	mov	r7,dpl
	C$fb_app_taster.c$417$1$1 ==.
;	../fb_app_taster.c:417: if (ledno<4) {
	cjne	r7,#0x04,00122$
00122$:
	jc	00123$
	ljmp	00112$
00123$:
	C$fb_app_taster.c$418$2$2 ==.
;	../fb_app_taster.c:418: command = ((eeprom[COMMAND+(ledno*4)]) & 0x07);	// Befehl der Status LED
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x07
	C$fb_app_taster.c$419$2$2 ==.
;	../fb_app_taster.c:419: switch (command) {
	cjne	r6,#0x00,00124$
	sjmp	00101$
00124$:
	cjne	r6,#0x01,00125$
	sjmp	00102$
00125$:
	cjne	r6,#0x03,00126$
	sjmp	00103$
00126$:
	C$fb_app_taster.c$420$3$3 ==.
;	../fb_app_taster.c:420: case 0:		// immer AUS
	cjne	r6,#0x04,00109$
	sjmp	00104$
00101$:
	C$fb_app_taster.c$421$3$3 ==.
;	../fb_app_taster.c:421: onoff=0;
	clr	b0
	C$fb_app_taster.c$422$3$3 ==.
;	../fb_app_taster.c:422: break;
	C$fb_app_taster.c$423$3$3 ==.
;	../fb_app_taster.c:423: case 1:		// immer an
	sjmp	00109$
00102$:
	C$fb_app_taster.c$424$3$3 ==.
;	../fb_app_taster.c:424: onoff=1;
	setb	b0
	C$fb_app_taster.c$425$3$3 ==.
;	../fb_app_taster.c:425: break;
	C$fb_app_taster.c$427$3$3 ==.
;	../fb_app_taster.c:427: case 3:		// LED = invertierte Statusanzeige
	sjmp	00109$
00103$:
	C$fb_app_taster.c$428$3$3 ==.
;	../fb_app_taster.c:428: onoff=!onoff;
	cpl	b0
	C$fb_app_taster.c$429$3$3 ==.
;	../fb_app_taster.c:429: break;
	C$fb_app_taster.c$430$3$3 ==.
;	../fb_app_taster.c:430: case 4:		// LED = Betaetigungsanzeige
	sjmp	00109$
00104$:
	C$fb_app_taster.c$431$3$3 ==.
;	../fb_app_taster.c:431: onoff=1;	// erstmal an beim druecken der Taste
	setb	b0
	C$fb_app_taster.c$432$3$3 ==.
;	../fb_app_taster.c:432: timerstate[ledno]= 0x10;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x10
	C$fb_app_taster.c$433$3$3 ==.
;	../fb_app_taster.c:433: timerbase[ledno]=1;
	mov	a,r7
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x01
	C$fb_app_taster.c$434$3$3 ==.
;	../fb_app_taster.c:434: switch (eeprom[LED_DURATION]) {		// dann ueber delay-timer aus
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
	C$fb_app_taster.c$435$4$4 ==.
;	../fb_app_taster.c:435: case 38:	// 0,75 sec
	cjne	r6,#0x96,00109$
	sjmp	00107$
00105$:
	C$fb_app_taster.c$436$4$4 ==.
;	../fb_app_taster.c:436: timercnt[ledno]=47;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x2F
	C$fb_app_taster.c$437$4$4 ==.
;	../fb_app_taster.c:437: break;
	C$fb_app_taster.c$438$4$4 ==.
;	../fb_app_taster.c:438: case 118:	// 2,25 sec
	sjmp	00109$
00106$:
	C$fb_app_taster.c$439$4$4 ==.
;	../fb_app_taster.c:439: timercnt[ledno]=141;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x8D
	C$fb_app_taster.c$440$4$4 ==.
;	../fb_app_taster.c:440: break;
	C$fb_app_taster.c$441$4$4 ==.
;	../fb_app_taster.c:441: case 150:	// 3 sec
	sjmp	00109$
00107$:
	C$fb_app_taster.c$442$4$4 ==.
;	../fb_app_taster.c:442: timercnt[ledno]=188;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0xBC
	C$fb_app_taster.c$445$2$2 ==.
;	../fb_app_taster.c:445: }
00109$:
	C$fb_app_taster.c$446$2$2 ==.
;	../fb_app_taster.c:446: ledvar=LEDSTATE;
	mov	r6,_LEDSTATE
	C$fb_app_taster.c$447$2$2 ==.
;	../fb_app_taster.c:447: ledvar&= ~(1<<(ledno+4));	// LEDs sind an Pin 4-7
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
	C$fb_app_taster.c$448$2$2 ==.
;	../fb_app_taster.c:448: ledvar |= ((onoff<<(ledno+4)) | 0x0F);	// unteren 4 bits immer auf 1 lassen !!!
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
	C$fb_app_taster.c$449$2$1 ==.
;	../fb_app_taster.c:449: LEDSTATE=ledvar;
00112$:
	C$fb_app_taster.c$451$2$1 ==.
	XG$switch_led$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_int'
;------------------------------------------------------------
	G$timer0_int$0$0 ==.
	C$fb_app_taster.c$454$2$1 ==.
;	../fb_app_taster.c:454: void timer0_int  (void) __interrupt (1) // Interrupt T0 für soft PWM LED
;	-----------------------------------------
;	 function timer0_int
;	-----------------------------------------
_timer0_int:
	push	acc
	push	psw
	C$fb_app_taster.c$456$1$1 ==.
;	../fb_app_taster.c:456: dimmcompare++;
	inc	_dimmcompare
	C$fb_app_taster.c$457$1$1 ==.
;	../fb_app_taster.c:457: TF0=0;
	clr	_TCON_5
	C$fb_app_taster.c$458$1$1 ==.
;	../fb_app_taster.c:458: if((dimmcompare) <= dimmwert) PORT = LEDSTATE | 0x0F;// LEDs ein
	clr	c
	mov	a,_dimmwert
	subb	a,_dimmcompare
	jc	00102$
	mov	a,#0x0F
	orl	a,_LEDSTATE
	mov	_P0,a
	sjmp	00104$
00102$:
	C$fb_app_taster.c$459$1$1 ==.
;	../fb_app_taster.c:459: else PORT = 0x0F;//LEDs aus
	mov	_P0,#0x0F
00104$:
	pop	psw
	pop	acc
	C$fb_app_taster.c$461$1$1 ==.
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
	C$fb_app_taster.c$472$1$1 ==.
;	../fb_app_taster.c:472: void delay_timer(void)
;	-----------------------------------------
;	 function delay_timer
;	-----------------------------------------
_delay_timer:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	C$fb_app_taster.c$478$1$1 ==.
;	../fb_app_taster.c:478: RTCCON=0x60;
	mov	_RTCCON,#0x60
	C$fb_app_taster.c$479$1$1 ==.
;	../fb_app_taster.c:479: RTCH=0x00;//RTCH=0x01;
	mov	_RTCH,#0x00
	C$fb_app_taster.c$480$1$1 ==.
;	../fb_app_taster.c:480: RTCL=0xE6;//RTCL=0xCD;
	mov	_RTCL,#0xE6
	C$fb_app_taster.c$481$1$1 ==.
;	../fb_app_taster.c:481: RTCCON=0x61; //	start_rtc(8) RTC neu starten mit 4ms
	mov	_RTCCON,#0x61
	C$fb_app_taster.c$483$1$1 ==.
;	../fb_app_taster.c:483: timer++;
	inc	_timer
	clr	a
	cjne	a,_timer,00192$
	inc	(_timer + 1)
00192$:
	C$fb_app_taster.c$484$1$1 ==.
;	../fb_app_taster.c:484: timerflags = timer&(~(timer-1));// flanke generieren
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
	C$fb_app_taster.c$485$5$5 ==.
;	../fb_app_taster.c:485: for(n=0;n<16;n++){
	mov	r7,#0x00
00149$:
	cjne	r7,#0x10,00193$
00193$:
	jnc	00152$
	C$fb_app_taster.c$486$2$2 ==.
;	../fb_app_taster.c:486: if(timerflags & 0x0001){// positive flags erzeugen und schieben
	mov	a,_timerflags
	jnb	acc.0,00106$
	C$fb_app_taster.c$487$1$1 ==.
;	../fb_app_taster.c:487: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
	mov	r6,#0x00
00145$:
	cjne	r6,#0x08,00196$
00196$:
	jnc	00106$
	C$fb_app_taster.c$488$4$4 ==.
;	../fb_app_taster.c:488: if( timercnt[m]){
	mov	a,r6
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jz	00147$
	C$fb_app_taster.c$489$5$5 ==.
;	../fb_app_taster.c:489: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	ar4,@r0
	anl	ar4,#0x0F
	mov	a,r4
	cjne	a,ar7,00147$
	C$fb_app_taster.c$490$6$6 ==.
;	../fb_app_taster.c:490: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
	mov	a,r5
	dec	a
	mov	@r1,a
00147$:
	C$fb_app_taster.c$487$3$3 ==.
;	../fb_app_taster.c:487: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
	inc	r6
	sjmp	00145$
00106$:
	C$fb_app_taster.c$495$2$2 ==.
;	../fb_app_taster.c:495: timerflags = timerflags>>1;
	mov	a,(_timerflags + 1)
	clr	c
	rrc	a
	xch	a,_timerflags
	rrc	a
	xch	a,_timerflags
	mov	(_timerflags + 1),a
	C$fb_app_taster.c$485$1$1 ==.
;	../fb_app_taster.c:485: for(n=0;n<16;n++){
	inc	r7
	sjmp	00149$
00152$:
	C$fb_app_taster.c$498$4$9 ==.
;	../fb_app_taster.c:498: for(objno=0;objno<8;objno++) {
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
00153$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x08,00201$
00201$:
	jc	00202$
	ljmp	00157$
00202$:
	C$fb_app_taster.c$499$2$7 ==.
;	../fb_app_taster.c:499: if(!timercnt[objno]) {	// ... es ist also soweit
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	jz	00203$
	ljmp	00155$
00203$:
	C$fb_app_taster.c$500$3$8 ==.
;	../fb_app_taster.c:500: delay_value=timerstate[objno]& 0x0F;
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
	C$fb_app_taster.c$502$3$8 ==.
;	../fb_app_taster.c:502: switch(timerstate[objno] & 0xF0){
	anl	ar6,#0xF0
	cjne	r6,#0x10,00204$
	sjmp	00107$
00204$:
	cjne	r6,#0x20,00205$
	sjmp	00108$
00205$:
	cjne	r6,#0x30,00206$
	ljmp	00113$
00206$:
	cjne	r6,#0x40,00207$
	ljmp	00117$
00207$:
	cjne	r6,#0x50,00208$
	ljmp	00118$
00208$:
	cjne	r6,#0x60,00209$
	ljmp	00155$
00209$:
	cjne	r6,#0x70,00210$
	ljmp	00121$
00210$:
	cjne	r6,#0x80,00211$
	ljmp	00121$
00211$:
	cjne	r6,#0x90,00212$
	ljmp	00129$
00212$:
	cjne	r6,#0xA0,00213$
	ljmp	00129$
00213$:
	cjne	r6,#0xB0,00214$
	ljmp	00134$
00214$:
	cjne	r6,#0xC0,00215$
	ljmp	00134$
00215$:
	cjne	r6,#0xF0,00216$
	sjmp	00109$
00216$:
	ljmp	00155$
	C$fb_app_taster.c$504$4$9 ==.
;	../fb_app_taster.c:504: case 0x10:
00107$:
	C$fb_app_taster.c$506$4$9 ==.
;	../fb_app_taster.c:506: ledvar=LEDSTATE;
	mov	r6,_LEDSTATE
	C$fb_app_taster.c$507$4$9 ==.
;	../fb_app_taster.c:507: ledvar &= ~(1<<(objno+4));	// LEDs sind an Pin 4-7
	mov	r1,_bp
	inc	r1
	mov	a,#0x04
	add	a,@r1
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00219$
00217$:
	add	a,acc
00219$:
	djnz	b,00217$
	cpl	a
	mov	r4,a
	anl	ar6,a
	C$fb_app_taster.c$508$4$9 ==.
;	../fb_app_taster.c:508: ledvar |= 0x0F;				// unbedingt taster pins wieder auf 1
	mov	a,#0x0F
	orl	a,r6
	mov	_LEDSTATE,a
	C$fb_app_taster.c$510$4$9 ==.
;	../fb_app_taster.c:510: timerstate[objno]=0;
	mov	@r0,#0x00
	C$fb_app_taster.c$511$4$9 ==.
;	../fb_app_taster.c:511: break;
	ljmp	00155$
	C$fb_app_taster.c$512$4$9 ==.
;	../fb_app_taster.c:512: case 0x20:	// Dimmen
00108$:
	C$fb_app_taster.c$513$4$9 ==.
;	../fb_app_taster.c:513: timerstate[objno]|=0xD0;// d0 or 20 = F0
	mov	ar6,@r0
	mov	a,#0xD0
	orl	a,r6
	mov	@r0,a
	C$fb_app_taster.c$514$4$9 ==.
;	../fb_app_taster.c:514: case 0xF0:
00109$:
	C$fb_app_taster.c$515$4$9 ==.
;	../fb_app_taster.c:515: write_obj_value(objno+4,delay_value);
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
;	../fb_app_taster.c:516: send_obj_value(objno+4);		// dimmkommando senden
	mov	dpl,r3
	lcall	_send_obj_value
	C$fb_app_taster.c$518$4$9 ==.
;	../fb_app_taster.c:518: if(!(eeprom[0xD5+((objno-4)*4)]& 0x08)){// wenn Telegrammwiederholung eingeschalten
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
	jb	acc.3,00111$
	C$fb_app_taster.c$545$5$10 ==.
;	../fb_app_taster.c:545: */				timercnt[objno]=tele_repeat_value[eeprom[0xD5+((objno-4)*4)]& 0x07];
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
;	../fb_app_taster.c:547: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	ljmp	00155$
00111$:
	C$fb_app_taster.c$550$5$11 ==.
;	../fb_app_taster.c:550: timercnt[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$551$5$11 ==.
;	../fb_app_taster.c:551: timerstate[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$553$4$9 ==.
;	../fb_app_taster.c:553: break;
	ljmp	00155$
	C$fb_app_taster.c$556$4$9 ==.
;	../fb_app_taster.c:556: case 0x30:	// 0x30, 0x31 für langzeit telegramm senden
00113$:
	C$fb_app_taster.c$557$4$9 ==.
;	../fb_app_taster.c:557: write_obj_value(objno+4,delay_value & 0x01);
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
;	../fb_app_taster.c:558: send_obj_value(objno+4);				// Langzeit Telegramm senden
	mov	dpl,r4
	lcall	_send_obj_value
	C$fb_app_taster.c$561$4$9 ==.
;	../fb_app_taster.c:561: timercnt[objno]=eeprom[DEL_FACTOR2+((objno-4)*4)];	// Faktor Dauer	T2
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
;	../fb_app_taster.c:562: timerbase[objno]=(eeprom[0xD4+((objno-4)*4)]&0x60)>>3;	// Basis Dauer T2
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
;	../fb_app_taster.c:563: if (timercnt[objno]) {	// wenn keine lamellenverstellzeit dann nix tun
	mov	r0,ar6
	mov	a,@r0
	jz	00115$
	C$fb_app_taster.c$564$5$12 ==.
;	../fb_app_taster.c:564: timerstate[objno]=((eeprom[COMMAND+((objno-4)*4)]&0x10)>>4)+0x40; // 0x40,0x41 fuer ende T2 (lamellenvestellzeit)
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
	ljmp	00155$
00115$:
	C$fb_app_taster.c$567$5$13 ==.
;	../fb_app_taster.c:567: timercnt[objno]=0;
	mov	r0,ar6
	mov	@r0,#0x00
	C$fb_app_taster.c$568$5$13 ==.
;	../fb_app_taster.c:568: timerstate[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$570$4$9 ==.
;	../fb_app_taster.c:570: break;
	ljmp	00155$
	C$fb_app_taster.c$571$4$9 ==.
;	../fb_app_taster.c:571: case 0x40:
00117$:
	C$fb_app_taster.c$573$4$9 ==.
;	../fb_app_taster.c:573: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
	mov	@r0,#0x00
	C$fb_app_taster.c$574$4$9 ==.
;	../fb_app_taster.c:574: timercnt[objno]=0;
	mov	@r1,#0x00
	C$fb_app_taster.c$575$4$9 ==.
;	../fb_app_taster.c:575: break;
	ljmp	00155$
	C$fb_app_taster.c$576$4$9 ==.
;	../fb_app_taster.c:576: case 0x50: // Wertgeber Lichtszene lang drücken zum speichern
00118$:
	C$fb_app_taster.c$577$4$9 ==.
;	../fb_app_taster.c:577: switch_led(objno-4,1);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	setb	b[0]
	mov	bits,b
	lcall	_switch_led
	C$fb_app_taster.c$578$4$9 ==.
;	../fb_app_taster.c:578: timerstate[objno]=0x60;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x60
	C$fb_app_taster.c$579$4$9 ==.
;	../fb_app_taster.c:579: break;
	ljmp	00155$
	C$fb_app_taster.c$584$4$9 ==.
;	../fb_app_taster.c:584: case 0x80: // Wertgeber Helligkeit verstellen
00121$:
	C$fb_app_taster.c$585$4$9 ==.
;	../fb_app_taster.c:585: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$586$4$9 ==.
;	../fb_app_taster.c:586: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
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
;	../fb_app_taster.c:587: i_tmp=(eeprom[0xD5+4*(objno-4)])<<8;
	mov	a,#0xD5
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	r5,#0x00
	C$fb_app_taster.c$588$4$9 ==.
;	../fb_app_taster.c:588: i_tmp +=eeprom[0xD6+4*(objno-4)];
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
;	../fb_app_taster.c:589: if (i_tmp==0x39FD || i_tmp==0x3828)	//Differenz ausgleichen
	cjne	r5,#0xFD,00222$
	cjne	r4,#0x39,00222$
	sjmp	00122$
00222$:
	cjne	r5,#0x28,00123$
	cjne	r4,#0x38,00123$
00122$:
	C$fb_app_taster.c$591$5$14 ==.
;	../fb_app_taster.c:591: i_tmp--;
	dec	r5
	cjne	r5,#0xFF,00225$
	dec	r4
00225$:
00123$:
	C$fb_app_taster.c$593$4$9 ==.
;	../fb_app_taster.c:593: i_tmp -= 0x27;
	mov	a,r5
	add	a,#0xD9
	mov	r5,a
	mov	a,r4
	addc	a,#0xFF
	C$fb_app_taster.c$595$4$9 ==.
;	../fb_app_taster.c:595: if(!(i_tmp&0x0800)){
	mov	r4,a
	jb	acc.3,00126$
	C$fb_app_taster.c$596$5$15 ==.
;	../fb_app_taster.c:596: i_tmp=0x03C94;
	mov	r5,#0x94
	mov	r4,#0x3C
	sjmp	00127$
00126$:
	C$fb_app_taster.c$599$5$16 ==.
;	../fb_app_taster.c:599: switch_led(objno-4,1);
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
00127$:
	C$fb_app_taster.c$601$4$9 ==.
;	../fb_app_taster.c:601: write_obj_value(objno+4,i_tmp);// wir rechnen immer mit exp 2^7
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
;	../fb_app_taster.c:602: timerstate[objno]=0x80;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x80
	C$fb_app_taster.c$603$4$9 ==.
;	../fb_app_taster.c:603: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
	C$fb_app_taster.c$604$4$9 ==.
;	../fb_app_taster.c:604: START_WRITECYCLE
	mov	_FMCON,#0x00
	C$fb_app_taster.c$605$5$17 ==.
;	../fb_app_taster.c:605: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
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
	C$fb_app_taster.c$606$5$18 ==.
;	../fb_app_taster.c:606: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
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
;	../fb_app_taster.c:607: STOP_WRITECYCLE // Luxwert speichern
	mov	_FMCON,#0x68
	C$fb_app_taster.c$608$4$9 ==.
;	../fb_app_taster.c:608: EA=1;
	setb	_IEN0_7
	C$fb_app_taster.c$609$4$9 ==.
;	../fb_app_taster.c:609: send_obj_value(objno+4);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	C$fb_app_taster.c$611$4$9 ==.
;	../fb_app_taster.c:611: break;
	ljmp	00155$
	C$fb_app_taster.c$614$4$9 ==.
;	../fb_app_taster.c:614: case 0xA0: // Wertgeber Temperatur verstellen
00129$:
	C$fb_app_taster.c$615$4$9 ==.
;	../fb_app_taster.c:615: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$616$4$9 ==.
;	../fb_app_taster.c:616: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
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
;	../fb_app_taster.c:617: i_tmp=(eeprom[0xD5+4*(objno-4)]&0x07)<<8;
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
;	../fb_app_taster.c:618: i_tmp +=eeprom[0xD6+4*(objno-4)];
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
;	../fb_app_taster.c:619: if(i_tmp>=0x0032){
	clr	c
	mov	a,r5
	subb	a,#0x32
	mov	a,r4
	subb	a,#0x00
	jc	00131$
	C$fb_app_taster.c$620$5$19 ==.
;	../fb_app_taster.c:620: i_tmp -= 0x32;
	mov	a,r5
	add	a,#0xCE
	mov	r5,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	C$fb_app_taster.c$621$5$19 ==.
;	../fb_app_taster.c:621: switch_led(objno-4,1);
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
	sjmp	00132$
00131$:
	C$fb_app_taster.c$624$5$20 ==.
;	../fb_app_taster.c:624: i_tmp=0x07D0;
	mov	r5,#0xD0
	mov	r4,#0x07
00132$:
	C$fb_app_taster.c$626$4$9 ==.
;	../fb_app_taster.c:626: write_obj_value(objno+4,i_tmp|0x0800);// wir rechnen immer mit exp 2^1
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
;	../fb_app_taster.c:627: timerstate[objno]=0xA0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xA0
	C$fb_app_taster.c$628$4$9 ==.
;	../fb_app_taster.c:628: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
	C$fb_app_taster.c$629$4$9 ==.
;	../fb_app_taster.c:629: START_WRITECYCLE
	mov	_FMCON,#0x00
	C$fb_app_taster.c$630$5$21 ==.
;	../fb_app_taster.c:630: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
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
	C$fb_app_taster.c$631$5$22 ==.
;	../fb_app_taster.c:631: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
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
;	../fb_app_taster.c:632: STOP_WRITECYCLE // Temperaturwert speichern
	mov	_FMCON,#0x68
	C$fb_app_taster.c$633$4$9 ==.
;	../fb_app_taster.c:633: EA=1;
	setb	_IEN0_7
	C$fb_app_taster.c$634$4$9 ==.
;	../fb_app_taster.c:634: send_obj_value(objno+4);
	mov	dpl,r7
	lcall	_send_obj_value
	C$fb_app_taster.c$636$4$9 ==.
;	../fb_app_taster.c:636: break;
	ljmp	00155$
	C$fb_app_taster.c$639$4$9 ==.
;	../fb_app_taster.c:639: case 0xC0: // Wertgeber Dimmer verstellen
00134$:
	C$fb_app_taster.c$640$4$9 ==.
;	../fb_app_taster.c:640: tmp=read_obj_value(objno+4);//
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	dpl,a
	lcall	_read_obj_value
	mov	r4,dpl
	mov	r5,dph
	C$fb_app_taster.c$641$4$9 ==.
;	../fb_app_taster.c:641: m=eeprom[0xD4+((objno-4)*4)]& 0x3F;// schrittweite und zeit zw. telegrammen
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
;	../fb_app_taster.c:642: n= m & 0x0F;  // Schrittweite
	mov	a,#0x0F
	anl	a,r7
	mov	r6,a
	C$fb_app_taster.c$643$4$9 ==.
;	../fb_app_taster.c:643: m=m>>4;// zeit zwischen telegrammen
	mov	a,r7
	swap	a
	anl	a,#0x0F
	mov	r7,a
	C$fb_app_taster.c$644$4$9 ==.
;	../fb_app_taster.c:644: if (!tmp){
	mov	a,r4
	jnz	00139$
	C$fb_app_taster.c$645$5$23 ==.
;	../fb_app_taster.c:645: tmp=255;
	mov	r4,#0xFF
	sjmp	00140$
00139$:
	C$fb_app_taster.c$648$5$24 ==.
;	../fb_app_taster.c:648: if (tmp>=n)tmp-=n;
	clr	c
	mov	a,r4
	subb	a,r6
	jc	00136$
	mov	a,r4
	clr	c
	subb	a,r6
	mov	r4,a
	sjmp	00140$
00136$:
	C$fb_app_taster.c$649$5$24 ==.
;	../fb_app_taster.c:649: else tmp=0;
	mov	r4,#0x00
00140$:
	C$fb_app_taster.c$651$4$9 ==.
;	../fb_app_taster.c:651: write_obj_value(objno+4,tmp);
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
;	../fb_app_taster.c:652: switch_led(objno-4,1);
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
;	../fb_app_taster.c:653: send_obj_value(objno+4);		// dimmkommando senden
	mov	dpl,r5
	lcall	_send_obj_value
	pop	ar7
	C$fb_app_taster.c$654$4$9 ==.
;	../fb_app_taster.c:654: timerstate[objno]=0xC0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xC0
	C$fb_app_taster.c$655$4$9 ==.
;	../fb_app_taster.c:655: timercnt[objno]=tele_repeat_value[m];// 0,5/1/1,5/2 Sec.
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
;	../fb_app_taster.c:656: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_taster.c$659$1$7 ==.
;	../fb_app_taster.c:659: }// ende switch (timerstate...
00155$:
	C$fb_app_taster.c$498$1$1 ==.
;	../fb_app_taster.c:498: for(objno=0;objno<8;objno++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	ljmp	00153$
00157$:
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
;	../fb_app_taster.c:672: void restart_app(void)
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
	C$fb_app_taster.c$678$1$1 ==.
;	../fb_app_taster.c:678: for (n=0;n<4;n++) {
	mov	r7,#0x00
00105$:
	cjne	r7,#0x04,00137$
00137$:
	jnc	00108$
	C$fb_app_taster.c$679$2$2 ==.
;	../fb_app_taster.c:679: SET_PORT_MODE_BIDIRECTIONAL(n)
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
;	../fb_app_taster.c:678: for (n=0;n<4;n++) {
	inc	r7
	sjmp	00105$
00108$:
	C$fb_app_taster.c$683$1$1 ==.
;	../fb_app_taster.c:683: for (n=4;n<8;n++) {
	mov	r7,#0x04
00109$:
	cjne	r7,#0x08,00144$
00144$:
	clr	a
	rlc	a
	mov	r6,a
	jz	00112$
	C$fb_app_taster.c$684$2$4 ==.
;	../fb_app_taster.c:684: SET_PORT_MODE_PUSHPULL(n)
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
;	../fb_app_taster.c:683: for (n=4;n<8;n++) {
	inc	r7
	sjmp	00109$
00112$:
	C$fb_app_taster.c$687$1$1 ==.
;	../fb_app_taster.c:687: PORT=0x0F;			// Taster auf high, LEDs zunächst aus
	mov	_P0,#0x0F
	C$fb_app_taster.c$689$1$1 ==.
;	../fb_app_taster.c:689: button_buffer=0x0F;	// Variable für letzten abgearbeiteten Taster Status
	mov	_button_buffer,#0x0F
	C$fb_app_taster.c$691$1$1 ==.
;	../fb_app_taster.c:691: RTCCON=0x81;	//start_rtc(8);		// RTC neu  starten und OV Flag setzen
	mov	_RTCCON,#0x81
	C$fb_app_taster.c$693$1$1 ==.
;	../fb_app_taster.c:693: timer=0;			// Timer-Variable, wird alle 8ms inkrementiert
	clr	a
	mov	_timer,a
	mov	(_timer + 1),a
	C$fb_app_taster.c$695$1$1 ==.
;	../fb_app_taster.c:695: EA=0;		// Interrupts sperren
	clr	_IEN0_7
	C$fb_app_taster.c$697$1$1 ==.
;	../fb_app_taster.c:697: START_WRITECYCLE
	mov	_FMCON,#0x00
	C$fb_app_taster.c$698$2$6 ==.
;	../fb_app_taster.c:698: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x03
	mov	_FMDATA,#0x00
	C$fb_app_taster.c$699$2$7 ==.
;	../fb_app_taster.c:699: WRITE_BYTE(0x01,0x04,0x04)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x04
	mov	_FMDATA,#0x04
	C$fb_app_taster.c$703$2$8 ==.
;	../fb_app_taster.c:703: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0C
	mov	_FMDATA,#0x00
	C$fb_app_taster.c$704$2$9 ==.
;	../fb_app_taster.c:704: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0D
	mov	_FMDATA,#0xFF
	C$fb_app_taster.c$706$1$1 ==.
;	../fb_app_taster.c:706: STOP_WRITECYCLE
	mov	_FMCON,#0x68
	C$fb_app_taster.c$711$1$1 ==.
;	../fb_app_taster.c:711: for (n=0;n<12;n++) write_obj_value(n,0);		// Objektwerte alle auf 0 setzen
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
	C$fb_app_taster.c$713$1$1 ==.
;	../fb_app_taster.c:713: for (n=0;n<8;n++) timercnt[n]=0;		// delay records loeschen
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
	C$fb_app_taster.c$718$1$1 ==.
;	../fb_app_taster.c:718: TR0=0;
	clr	_TCON_4
	C$fb_app_taster.c$719$1$1 ==.
;	../fb_app_taster.c:719: TMOD &= 0xF0;
	anl	_TMOD,#0xF0
	C$fb_app_taster.c$720$1$1 ==.
;	../fb_app_taster.c:720: TMOD |= 0x02;// T0 autoreload
	orl	_TMOD,#0x02
	C$fb_app_taster.c$721$1$1 ==.
;	../fb_app_taster.c:721: TH0=0x47;
	mov	_TH0,#0x47
	C$fb_app_taster.c$722$1$1 ==.
;	../fb_app_taster.c:722: TL0=0x47;
	mov	_TL0,#0x47
	C$fb_app_taster.c$723$1$1 ==.
;	../fb_app_taster.c:723: TR0=1;
	setb	_TCON_4
	C$fb_app_taster.c$725$1$1 ==.
;	../fb_app_taster.c:725: IP0 &= 0xFC; //FC		F6	für flackerfrei bei 1 kanal
	anl	_IP0,#0xFC
	C$fb_app_taster.c$726$1$1 ==.
;	../fb_app_taster.c:726: IP0 |= 0x0C; //0C		06	dto.
	orl	_IP0,#0x0C
	C$fb_app_taster.c$727$1$1 ==.
;	../fb_app_taster.c:727: IP0H &= 0xF4;//
	anl	_IP0H,#0xF4
	C$fb_app_taster.c$728$1$1 ==.
;	../fb_app_taster.c:728: IP0H |= 0x04;// 		Timer 1 auf Level 2
	orl	_IP0H,#0x04
	C$fb_app_taster.c$730$1$1 ==.
;	../fb_app_taster.c:730: ET0=1;// timer 0 interupt freigeben
	setb	_IEN0_1
	C$fb_app_taster.c$732$1$1 ==.
;	../fb_app_taster.c:732: TF0=0; //timer0 flag löschen
	clr	_TCON_5
	C$fb_app_taster.c$733$1$1 ==.
;	../fb_app_taster.c:733: EA=1;// Interrupts freigeben
	setb	_IEN0_7
	C$fb_app_taster.c$735$1$1 ==.
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
