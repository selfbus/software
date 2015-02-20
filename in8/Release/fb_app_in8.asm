;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
; This file was generated Fri Oct 24 21:14:10 2014
;--------------------------------------------------------
	.module fb_app_in8
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spi_in_out
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
	.globl _st_Flanke
	.globl _jobj
	.globl _objval
	.globl _schrittzaehler
	.globl _zaehlervalue
	.globl _Sperre
	.globl _objectvalue_h
	.globl _objectvalue_l
	.globl _para_value
	.globl _pinno
	.globl _para_adr
	.globl _pinnoX4
	.globl _timerstate
	.globl _timercnt
	.globl _timerbase
	.globl _timer
	.globl _timer_state
	.globl _timer_base
	.globl _blocked
	.globl _objstate
	.globl _p0h
	.globl _portbuffer
	.globl _pin_changed
	.globl _delay_timer
	.globl _schalten
	.globl _debounce
	.globl _write_value_req
	.globl _sperren
	.globl _read_value_req
	.globl _write_send
	.globl _bus_return
	.globl _read_obj_value
	.globl _write_obj_value
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
G$portbuffer$0$0==.
_portbuffer::
	.ds 1
G$p0h$0$0==.
_p0h::
	.ds 1
G$objstate$0$0==.
_objstate::
	.ds 2
G$blocked$0$0==.
_blocked::
	.ds 1
G$timer_base$0$0==.
_timer_base::
	.ds 1
G$timer_state$0$0==.
_timer_state::
	.ds 1
G$timer$0$0==.
_timer::
	.ds 2
G$timerbase$0$0==.
_timerbase::
	.ds 9
G$timercnt$0$0==.
_timercnt::
	.ds 9
G$timerstate$0$0==.
_timerstate::
	.ds 9
G$pinnoX4$0$0==.
_pinnoX4::
	.ds 1
G$para_adr$0$0==.
_para_adr::
	.ds 1
G$pinno$0$0==.
_pinno::
	.ds 1
G$para_value$0$0==.
_para_value::
	.ds 1
G$objectvalue_l$0$0 == 0x0008
_objectvalue_l	=	0x0008
G$objectvalue_h$0$0 == 0x0010
_objectvalue_h	=	0x0010
G$Sperre$0$0 == 0x0018
_Sperre	=	0x0018
G$zaehlervalue$0$0 == 0x0019
_zaehlervalue	=	0x0019
G$schrittzaehler$0$0 == 0x001e
_schrittzaehler	=	0x001e
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
G$objval$0$0==.
_objval::
	.ds 1
G$jobj$0$0==.
_jobj::
	.ds 1
G$st_Flanke$0$0==.
_st_Flanke::
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
	G$restart_app$0$0 ==.
	C$fb_app_in8.c$45$1$1 ==.
;	../fb_app_in8.c:45: __bit objval=0,jobj=0;
	clr	_objval
	G$restart_app$0$0 ==.
	C$fb_app_in8.c$45$1$1 ==.
;	../fb_app_in8.c:45: __bit st_Flanke=0;
	clr	_jobj
	G$restart_app$0$0 ==.
	C$fb_app_in8.c$46$1$1 ==.
;	../fb_app_in8.c:46: 
	clr	_st_Flanke
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
;Allocation info for local variables in function 'pin_changed'
;------------------------------------------------------------
;pin_no                    Allocated to registers 
;maxzaehler                Allocated to registers r5 r3 
;tmp                       Allocated to registers r4 
;objoffset                 Allocated to registers 
;typ                       Allocated to registers 
;n                         Allocated to registers r7 
;------------------------------------------------------------
	G$pin_changed$0$0 ==.
	C$fb_app_in8.c$48$0$0 ==.
;	../fb_app_in8.c:48: void pin_changed(unsigned char pin_no)
;	-----------------------------------------
;	 function pin_changed
;	-----------------------------------------
_pin_changed:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_pinno,dpl
	C$fb_app_in8.c$58$1$1 ==.
;	../fb_app_in8.c:58: timer_base=0;
	C$fb_app_in8.c$59$1$1 ==.
;	../fb_app_in8.c:59: para_value=0;
	C$fb_app_in8.c$62$1$1 ==.
;	../fb_app_in8.c:62: pinnoX4=pinno*4;
	clr	a
	mov	_timer_base,a
	mov	_para_value,a
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	C$fb_app_in8.c$63$1$1 ==.
;	../fb_app_in8.c:63: para_adr=0xD5+(pinnoX4);
	mov	_pinnoX4,a
	add	a,#0xD5
	mov	_para_adr,a
	C$fb_app_in8.c$66$1$1 ==.
;	../fb_app_in8.c:66: if (debounce(pinno))			// Entprellzeit abwarten und prüfen
	mov	dpl,_pinno
	lcall	_debounce
	mov	a,dpl
	jnz	00248$
	ljmp	00200$
00248$:
	C$fb_app_in8.c$68$2$2 ==.
;	../fb_app_in8.c:68: timer_base=(eeprom[0xF6+((pinno+1)>>1)]>>(4*((pinno&0x01)^0x01)))&0x07  ;
	mov	r6,_pinno
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00249$
	inc	r7
00249$:
	mov	a,r7
	mov	c,acc.7
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	a,#0xF6
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0x01
	anl	a,_pinno
	xrl	a,#0x01
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r7
	sjmp	00251$
00250$:
	clr	c
	rrc	a
00251$:
	djnz	b,00250$
	anl	a,#0x07
	mov	_timer_base,a
	C$fb_app_in8.c$69$2$2 ==.
;	../fb_app_in8.c:69: st_Flanke=(((portbuffer>>pinno)&0x01)==0) && (((p0h>>pinno)&0x01)==1);
	mov	b,_pinno
	inc	b
	mov	a,_portbuffer
	sjmp	00253$
00252$:
	clr	c
	rrc	a
00253$:
	djnz	b,00252$
	anl	a,#0x01
	mov	r7,a
	cjne	a,#0x01,00254$
00254$:
	clr	a
	rlc	a
	mov	r7,a
	jz	00202$
	mov	b,_pinno
	inc	b
	mov	a,_p0h
	sjmp	00257$
00256$:
	clr	c
	rrc	a
00257$:
	djnz	b,00256$
	anl	a,#0x01
	mov	r7,a
	cjne	r7,#0x01,00258$
	sjmp	00203$
00258$:
00202$:
	clr	b0
	sjmp	00204$
00203$:
	setb	b0
00204$:
	mov	c,b0
	mov	_st_Flanke,c
	C$fb_app_in8.c$70$2$2 ==.
;	../fb_app_in8.c:70: timer_state=timerstate[pinno];
	mov	a,_pinno
	add	a,#_timerstate
	mov	r1,a
	mov	_timer_state,@r1
	C$fb_app_in8.c$71$2$2 ==.
;	../fb_app_in8.c:71: switch ((eeprom[0xCE+(pinno>>1)] >> ((pinno & 0x01)*4)) & 0x0F)	// Funktion des Eingangs
	mov	a,_pinno
	clr	c
	rrc	a
	add	a,#0xCE
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0x01
	anl	a,_pinno
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r7
	sjmp	00260$
00259$:
	clr	c
	rrc	a
00260$:
	djnz	b,00259$
	anl	a,#0x0F
	mov	r7,a
	cjne	r7,#0x01,00261$
	sjmp	00101$
00261$:
	cjne	r7,#0x02,00262$
	sjmp	00102$
00262$:
	cjne	r7,#0x03,00263$
	ljmp	00124$
00263$:
	cjne	r7,#0x09,00264$
	ljmp	00138$
00264$:
	cjne	r7,#0x0A,00265$
	ljmp	00180$
00265$:
	ljmp	00197$
	C$fb_app_in8.c$73$3$3 ==.
;	../fb_app_in8.c:73: case 0x01:				// Funktion Schalten
00101$:
	C$fb_app_in8.c$74$3$3 ==.
;	../fb_app_in8.c:74: schalten(st_Flanke,pinno);			// Flanke Eingang x.1
	mov	c,_st_Flanke
	mov	b[0],c
	mov	bits,b
	mov	dpl,_pinno
	lcall	_schalten
	C$fb_app_in8.c$77$3$3 ==.
;	../fb_app_in8.c:77: schalten(st_Flanke,pinno+8);		// Flanke Eingang x.2
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	mov	c,_st_Flanke
	mov	b[0],c
	mov	bits,b
	lcall	_schalten
	C$fb_app_in8.c$91$3$3 ==.
;	../fb_app_in8.c:91: break;  
	ljmp	00197$
	C$fb_app_in8.c$92$3$3 ==.
;	../fb_app_in8.c:92: case 0x02:				// Funktion Dimmen
00102$:
	C$fb_app_in8.c$97$3$3 ==.
;	../fb_app_in8.c:97: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
	jb	_st_Flanke,00266$
	ljmp	00122$
00266$:
	C$fb_app_in8.c$98$4$4 ==.
;	../fb_app_in8.c:98: timercnt[pinno]=0x80+(eeprom[0xD7+(pinnoX4)]&0x7F);	// Faktor/Dauer			
	mov	a,_pinno
	add	a,#_timercnt
	mov	r1,a
	mov	a,#0xD7
	add	a,_pinnoX4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0x7F
	anl	a,r7
	add	a,#0x80
	mov	@r1,a
	C$fb_app_in8.c$99$4$4 ==.
;	../fb_app_in8.c:99: timerbase[pinno]=timer_base;
	mov	a,_pinno
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,_timer_base
	C$fb_app_in8.c$101$4$4 ==.
;	../fb_app_in8.c:101: objval=(read_obj_value(pinno+8)>>3)&0x01;
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	lcall	_read_obj_value
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	a,r4
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	r4,a
	add	a,#0xff
	mov	_objval,c
	C$fb_app_in8.c$102$4$4 ==.
;	../fb_app_in8.c:102: switch (eeprom[para_adr]&0x70) {
	mov	dpl,_para_adr
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x70
	cjne	r7,#0x00,00267$
	sjmp	00103$
00267$:
	cjne	r7,#0x10,00268$
	sjmp	00105$
00268$:
	C$fb_app_in8.c$103$5$5 ==.
;	../fb_app_in8.c:103: case 0x00:	// UM Dimmen
	cjne	r7,#0x30,00106$
	sjmp	00105$
00103$:
	C$fb_app_in8.c$104$5$5 ==.
;	../fb_app_in8.c:104: objval = !objval;	// Dimmrichtung ändern
	cpl	_objval
	C$fb_app_in8.c$105$5$5 ==.
;	../fb_app_in8.c:105: break;
	C$fb_app_in8.c$107$5$5 ==.
;	../fb_app_in8.c:107: case 0x30:
	sjmp	00107$
00105$:
	C$fb_app_in8.c$108$5$5 ==.
;	../fb_app_in8.c:108: objval=1;
	setb	_objval
	C$fb_app_in8.c$109$5$5 ==.
;	../fb_app_in8.c:109: break;
	C$fb_app_in8.c$110$5$5 ==.
;	../fb_app_in8.c:110: default:	
	sjmp	00107$
00106$:
	C$fb_app_in8.c$113$5$5 ==.
;	../fb_app_in8.c:113: objval=0;
	clr	_objval
	C$fb_app_in8.c$114$4$4 ==.
;	../fb_app_in8.c:114: }
00107$:
	C$fb_app_in8.c$115$4$4 ==.
;	../fb_app_in8.c:115: if(objval){	// wenn heller dimmen soll
	jnb	_objval,00109$
	C$fb_app_in8.c$116$5$6 ==.
;	../fb_app_in8.c:116: timer_state = ((eeprom[para_adr+0x01]&0x38)>>3)+ 0x48;	// dimmen
	mov	a,_para_adr
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x38
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r7,a
	add	a,#0x48
	mov	_timer_state,a
	ljmp	00197$
00109$:
	C$fb_app_in8.c$119$5$7 ==.
;	../fb_app_in8.c:119: timer_state = (eeprom[para_adr+0x01]&0x07)+ 0x40;	// dimmen
	mov	a,_para_adr
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0x07
	anl	a,r7
	add	a,#0x40
	mov	_timer_state,a
	ljmp	00197$
00122$:
	C$fb_app_in8.c$123$4$8 ==.
;	../fb_app_in8.c:123: if ((timer_state & 0x50)== 0x40) {		// wenn delaytimer noch laeuft, dann Schalten, also EIS1 telegramm senden
	mov	a,#0x50
	anl	a,_timer_state
	mov	r7,a
	cjne	r7,#0x40,00119$
	C$fb_app_in8.c$125$5$9 ==.
;	../fb_app_in8.c:125: objval = read_obj_value(pinno);
	mov	dpl,_pinno
	lcall	_read_obj_value
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_objval,c
	C$fb_app_in8.c$126$5$9 ==.
;	../fb_app_in8.c:126: switch (eeprom[para_adr]&0x70) {//Bedienkonzept angucken
	mov	dpl,_para_adr
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x70
	cjne	r7,#0x10,00273$
	sjmp	00111$
00273$:
	C$fb_app_in8.c$127$6$10 ==.
;	../fb_app_in8.c:127: case 0x10:	// zweiflaechen ein
	cjne	r7,#0x20,00113$
	sjmp	00112$
00111$:
	C$fb_app_in8.c$128$6$10 ==.
;	../fb_app_in8.c:128: objval=1;
	setb	_objval
	C$fb_app_in8.c$129$6$10 ==.
;	../fb_app_in8.c:129: break;
	C$fb_app_in8.c$130$6$10 ==.
;	../fb_app_in8.c:130: case 0x20:	// zweiflaechen aus
	sjmp	00114$
00112$:
	C$fb_app_in8.c$131$6$10 ==.
;	../fb_app_in8.c:131: objval=0;
	clr	_objval
	C$fb_app_in8.c$132$6$10 ==.
;	../fb_app_in8.c:132: break;
	C$fb_app_in8.c$133$6$10 ==.
;	../fb_app_in8.c:133: default:	
	sjmp	00114$
00113$:
	C$fb_app_in8.c$137$6$10 ==.
;	../fb_app_in8.c:137: objval = !objval;
	cpl	_objval
	C$fb_app_in8.c$138$5$9 ==.
;	../fb_app_in8.c:138: }
00114$:
	C$fb_app_in8.c$139$5$9 ==.
;	../fb_app_in8.c:139: write_send(pinno,objval);
	mov	c,_objval
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
	C$fb_app_in8.c$140$5$9 ==.
;	../fb_app_in8.c:140: timercnt[pinno]=0;
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	ljmp	00197$
00119$:
	C$fb_app_in8.c$143$5$11 ==.
;	../fb_app_in8.c:143: tmp=read_obj_value(pinno+8);
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	lcall	_read_obj_value
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	C$fb_app_in8.c$144$5$11 ==.
;	../fb_app_in8.c:144: if (eeprom[0xD5+(pinnoX4)] & 0x08) {	// ... natuerlich nur wenn parameter dementsprechend 
	mov	a,#0xD5
	add	a,_pinnoX4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	jnb	acc.3,00116$
	C$fb_app_in8.c$145$6$12 ==.
;	../fb_app_in8.c:145: write_send(pinno+8, tmp & 0x08);		// Stop Telegramm
	mov	a,#0x08
	anl	a,r4
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_write_send
	dec	sp
	dec	sp
	sjmp	00117$
00116$:
	C$fb_app_in8.c$147$5$11 ==.
;	../fb_app_in8.c:147: else write_obj_value(pinno+8,tmp & 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
	mov	a,#0x08
	anl	a,r4
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r3,a
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00117$:
	C$fb_app_in8.c$148$5$11 ==.
;	../fb_app_in8.c:148: timer_state=0;
	mov	_timer_state,#0x00
	C$fb_app_in8.c$149$5$11 ==.
;	../fb_app_in8.c:149: timercnt[pinno]=0;
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$154$3$3 ==.
;	../fb_app_in8.c:154: break;
	ljmp	00197$
	C$fb_app_in8.c$156$3$3 ==.
;	../fb_app_in8.c:156: case 0x03:				//Funktion Jalousie
00124$:
	C$fb_app_in8.c$160$3$3 ==.
;	../fb_app_in8.c:160: n=0xD8+(pinno*4);
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	add	a,#0xD8
	C$fb_app_in8.c$161$3$3 ==.
;	../fb_app_in8.c:161: para_value=(eeprom[n]&0x30)>>4;//Jalofunktion holen
	mov	r7,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x30
	mov	r6,a
	swap	a
	anl	a,#0x0F
	mov	_para_value,a
	C$fb_app_in8.c$162$3$3 ==.
;	../fb_app_in8.c:162: switch (para_value){
	mov	a,#0x01
	cjne	a,_para_value,00276$
	sjmp	00125$
00276$:
	mov	a,#0x02
	cjne	a,_para_value,00277$
	sjmp	00126$
00277$:
	mov	a,#0x03
	C$fb_app_in8.c$163$4$13 ==.
;	../fb_app_in8.c:163: case 1:		//auf
	cjne	a,_para_value,00128$
	sjmp	00127$
00125$:
	C$fb_app_in8.c$164$4$13 ==.
;	../fb_app_in8.c:164: jobj=0;
	clr	_jobj
	C$fb_app_in8.c$165$4$13 ==.
;	../fb_app_in8.c:165: break;
	C$fb_app_in8.c$166$4$13 ==.
;	../fb_app_in8.c:166: case 2:		//ab
	sjmp	00128$
00126$:
	C$fb_app_in8.c$167$4$13 ==.
;	../fb_app_in8.c:167: jobj=1;
	setb	_jobj
	C$fb_app_in8.c$168$4$13 ==.
;	../fb_app_in8.c:168: break;
	C$fb_app_in8.c$169$4$13 ==.
;	../fb_app_in8.c:169: case 3:		//UM
	sjmp	00128$
00127$:
	C$fb_app_in8.c$170$4$13 ==.
;	../fb_app_in8.c:170: jobj=read_obj_value(pinno+8)^0x01;//neues Jaloobj invers zum langzeit
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	push	ar7
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	xrl	ar2,#0x01
	mov	a,r2
	orl	a,r3
	orl	a,r5
	orl	a,r6
	add	a,#0xff
	mov	_jobj,c
	C$fb_app_in8.c$172$3$3 ==.
;	../fb_app_in8.c:172: }
00128$:
	C$fb_app_in8.c$173$3$3 ==.
;	../fb_app_in8.c:173: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
	jnb	_st_Flanke,00136$
	C$fb_app_in8.c$174$4$14 ==.
;	../fb_app_in8.c:174: if(eeprom[n]& 0x08){	//wenn Bedienkonzept lang-kurz ()
	mov	dpl,r7
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.3,00130$
	C$fb_app_in8.c$176$5$15 ==.
;	../fb_app_in8.c:176: timer_state = jobj+0x80;
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r6,a
	add	a,#0x80
	mov	_timer_state,a
	C$fb_app_in8.c$177$5$15 ==.
;	../fb_app_in8.c:177: timercnt[pinno]=0x80;//langzeit in delay_timer SOFORT ausführen
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x80
	ljmp	00197$
00130$:
	C$fb_app_in8.c$180$5$16 ==.
;	../fb_app_in8.c:180: write_send( pinno, jobj);	// Kurzzeit telegramm immer bei Drücken senden
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	push	ar5
	push	ar6
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
	C$fb_app_in8.c$181$5$16 ==.
;	../fb_app_in8.c:181: timercnt[pinno]=0x80+eeprom[0xD6+(pinno*4)];//Faktor Dauer )
	mov	a,_pinno
	add	a,#_timercnt
	mov	r1,a
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	add	a,#0xD6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	add	a,#0x80
	mov	@r1,a
	C$fb_app_in8.c$182$5$16 ==.
;	../fb_app_in8.c:182: timerbase[pinno]=timer_base;
	mov	a,_pinno
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,_timer_base
	C$fb_app_in8.c$185$5$16 ==.
;	../fb_app_in8.c:185: timer_state = jobj+0x80;
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r6,a
	add	a,#0x80
	mov	_timer_state,a
	ljmp	00197$
00136$:
	C$fb_app_in8.c$189$4$17 ==.
;	../fb_app_in8.c:189: if (timer_state & 0x10) write_send( pinno, jobj);	// wenn delaytimer noch laueft und in T2 ist, dann kurzzeit telegramm senden
	mov	a,_timer_state
	jnb	acc.4,00133$
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	push	ar5
	push	ar6
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
	ljmp	00197$
00133$:
	C$fb_app_in8.c$190$4$17 ==.
;	../fb_app_in8.c:190: else timercnt[pinno]=0;	// T2 bereits abgelaufen
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$192$3$3 ==.
;	../fb_app_in8.c:192: break;
	ljmp	00197$
	C$fb_app_in8.c$239$3$3 ==.
;	../fb_app_in8.c:239: case 0x09:
00138$:
	C$fb_app_in8.c$243$3$3 ==.
;	../fb_app_in8.c:243: n=eeprom[0xD5+(pinno*4)];// Parameter Flanke für Zählimpuls
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,a
	C$fb_app_in8.c$244$3$3 ==.
;	../fb_app_in8.c:244: if (pinno<=1){// pinno 0-1 Zähleingnag
	mov	a,_pinno
	add	a,#0xff - 0x01
	jc	00178$
	C$fb_app_in8.c$245$4$18 ==.
;	../fb_app_in8.c:245: if ((n&0x01 && st_Flanke)||(n&0x02 &! st_Flanke)){
	mov	a,r7
	jnb	acc.0,00144$
	jb	_st_Flanke,00141$
00144$:
	mov	a,#0x02
	anl	a,r7
	mov	r6,a
	mov	c,_st_Flanke
	cpl	c
	mov  b0,c
	clr	a
	rlc	a
	mov	r5,a
	anl	a,r6
	jnz	00285$
	ljmp	00197$
00285$:
00141$:
	C$fb_app_in8.c$246$5$19 ==.
;	../fb_app_in8.c:246: if (zaehlervalue[pinno]< 0xFFFF)zaehlervalue[pinno]++;
	mov	a,_pinno
	add	a,_pinno
	mov	r6,a
	add	a,#_zaehlervalue
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	clr	c
	mov	a,r3
	subb	a,#0xFF
	mov	a,r5
	subb	a,#0xFF
	jc	00286$
	ljmp	00197$
00286$:
	mov	a,r6
	add	a,#_zaehlervalue
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	inc	r5
	cjne	r5,#0x00,00287$
	inc	r6
00287$:
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	ljmp	00197$
00178$:
	C$fb_app_in8.c$250$4$20 ==.
;	../fb_app_in8.c:250: n=eeprom[0xD5+((pinno-2)*4)];// Parameter Flanke für Zählimpuls
	mov	a,_pinno
	add	a,#0xFE
	add	a,acc
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	C$fb_app_in8.c$251$4$20 ==.
;	../fb_app_in8.c:251: if ((n&0x04 && st_Flanke)||(n&0x08 &! st_Flanke)){
	mov	r7,a
	jnb	acc.2,00151$
	jb	_st_Flanke,00148$
00151$:
	mov	a,#0x08
	anl	a,r7
	mov	r6,a
	mov	c,_st_Flanke
	cpl	c
	mov  b0,c
	clr	a
	rlc	a
	mov	r5,a
	anl	a,r6
	jz	00149$
00148$:
	C$fb_app_in8.c$252$5$21 ==.
;	../fb_app_in8.c:252: if (pinno==2){
	mov	a,#0x02
	cjne	a,_pinno,00146$
	C$fb_app_in8.c$253$6$22 ==.
;	../fb_app_in8.c:253: zaehlervalue[0]=0;//pinno-2 , da die parameter den zählereingangen zugeordnet sind
	clr	a
	mov	(_zaehlervalue + 0),a
	mov	(_zaehlervalue + 1),a
	C$fb_app_in8.c$254$6$22 ==.
;	../fb_app_in8.c:254: timercnt[0]=eeprom[0xD6]|0x80;//Torzeit setzen
	mov	dptr,#(_eeprom + 0x00d6)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x80
	orl	a,r6
	mov	_timercnt,a
	C$fb_app_in8.c$255$6$22 ==.
;	../fb_app_in8.c:255: timerbase[0]=((eeprom[0xF6]&0xF0)>>4)|0x80;
	mov	dptr,#(_eeprom + 0x00f6)
	clr	a
	movc	a,@a+dptr
	anl	a,#0xF0
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	a,#0x80
	orl	a,r6
	mov	_timerbase,a
	sjmp	00149$
00146$:
	C$fb_app_in8.c$258$6$23 ==.
;	../fb_app_in8.c:258: zaehlervalue[1]=0;//pinno-2 , da die parameter den zählereingangen zugeordnet sind
	clr	a
	mov	((_zaehlervalue + 0x0002) + 0),a
	mov	((_zaehlervalue + 0x0002) + 1),a
	C$fb_app_in8.c$259$6$23 ==.
;	../fb_app_in8.c:259: timercnt[1]=eeprom[0xD6]|0x80;//Torzeit setzen
	mov	dptr,#(_eeprom + 0x00d6)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x80
	orl	a,r6
	mov	(_timercnt + 0x0001),a
	C$fb_app_in8.c$260$6$23 ==.
;	../fb_app_in8.c:260: timerbase[1]=((eeprom[0xF7]&0x0F))|0x80;
	mov	dptr,#(_eeprom + 0x00f7)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	orl	a,#0x80
	mov	(_timerbase + 0x0001),a
00149$:
	C$fb_app_in8.c$264$4$20 ==.
;	../fb_app_in8.c:264: n = n & 0xF0;
	anl	ar7,#0xF0
	C$fb_app_in8.c$265$4$20 ==.
;	../fb_app_in8.c:265: tmp=0;
	mov	r4,#0x00
	C$fb_app_in8.c$266$4$20 ==.
;	../fb_app_in8.c:266: if (st_Flanke){// telegramme bei synceingang
	jnb	_st_Flanke,00171$
	C$fb_app_in8.c$267$5$24 ==.
;	../fb_app_in8.c:267: if(n==0x40||n==0x60)tmp=0x11;
	cjne	r7,#0x40,00294$
	sjmp	00152$
00294$:
	cjne	r7,#0x60,00153$
00152$:
	mov	r4,#0x11
00153$:
	C$fb_app_in8.c$268$5$24 ==.
;	../fb_app_in8.c:268: if(n==0x80||n==0x90)tmp=0x10;
	cjne	r7,#0x80,00297$
	sjmp	00155$
00297$:
	cjne	r7,#0x90,00156$
00155$:
	mov	r4,#0x10
00156$:
	C$fb_app_in8.c$269$5$24 ==.
;	../fb_app_in8.c:269: if(n==0xC0||n==0xF0)tmp=0x12;
	cjne	r7,#0xC0,00300$
	sjmp	00158$
00300$:
	cjne	r7,#0xF0,00172$
00158$:
	mov	r4,#0x12
	sjmp	00172$
00171$:
	C$fb_app_in8.c$272$5$25 ==.
;	../fb_app_in8.c:272: if(n==0x10||n==0x90)tmp=0x11;
	cjne	r7,#0x10,00303$
	sjmp	00161$
00303$:
	cjne	r7,#0x90,00162$
00161$:
	mov	r4,#0x11
00162$:
	C$fb_app_in8.c$273$5$25 ==.
;	../fb_app_in8.c:273: if(n==0x20||n==0x60)tmp=0x10;
	cjne	r7,#0x20,00306$
	sjmp	00164$
00306$:
	cjne	r7,#0x60,00165$
00164$:
	mov	r4,#0x10
00165$:
	C$fb_app_in8.c$274$5$25 ==.
;	../fb_app_in8.c:274: if(n==0x30||n==0xF0)tmp=0x12;
	cjne	r7,#0x30,00309$
	sjmp	00167$
00309$:
	cjne	r7,#0xF0,00172$
00167$:
	mov	r4,#0x12
00172$:
	C$fb_app_in8.c$276$4$20 ==.
;	../fb_app_in8.c:276: if (tmp==0x12)tmp= (read_obj_value(pinno)^0x01)|0x10;
	cjne	r4,#0x12,00174$
	mov	dpl,_pinno
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	r6,a
	xrl	ar2,#0x01
	orl	ar2,#0x10
	mov	ar4,r2
00174$:
	C$fb_app_in8.c$277$4$20 ==.
;	../fb_app_in8.c:277: if(tmp)write_send(pinno,tmp&0x01);
	mov	a,r4
	jnz	00314$
	ljmp	00197$
00314$:
	mov	a,#0x01
	anl	a,r4
	mov	r6,a
	mov	r5,#0x00
	push	ar6
	push	ar5
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
	C$fb_app_in8.c$279$3$3 ==.
;	../fb_app_in8.c:279: break;
	ljmp	00197$
	C$fb_app_in8.c$280$3$3 ==.
;	../fb_app_in8.c:280: case 10:// ### Schaltzähler ###
00180$:
	C$fb_app_in8.c$281$3$3 ==.
;	../fb_app_in8.c:281: n=eeprom[0xD5+(pinno*4)];// Parameter Flanke für Zählimpuls
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	C$fb_app_in8.c$282$3$3 ==.
;	../fb_app_in8.c:282: if ((n&0x01 && st_Flanke)||(n&0x02 &! st_Flanke)){
	mov	r7,a
	jnb	acc.0,00195$
	jb	_st_Flanke,00192$
00195$:
	mov	a,#0x02
	anl	a,r7
	mov	r6,a
	mov	c,_st_Flanke
	cpl	c
	mov  b0,c
	clr	a
	rlc	a
	mov	r5,a
	anl	a,r6
	jnz	00317$
	ljmp	00197$
00317$:
00192$:
	C$fb_app_in8.c$283$2$1 ==.
;	../fb_app_in8.c:283: zaehlervalue[pinno]++;// zählwert erhöhen
	push	ar7
	mov	a,_pinno
	add	a,_pinno
	mov	r6,a
	add	a,#_zaehlervalue
	mov	r1,a
	mov	ar3,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	inc	r3
	cjne	r3,#0x00,00318$
	inc	r5
00318$:
	mov	@r1,ar3
	inc	r1
	mov	@r1,ar5
	C$fb_app_in8.c$284$4$26 ==.
;	../fb_app_in8.c:284: schrittzaehler[pinno]++;// schrittzähler erhöhen
	mov	a,_pinno
	add	a,#_schrittzaehler
	mov	r1,a
	inc	@r1
	mov	a,@r1
	C$fb_app_in8.c$285$4$26 ==.
;	../fb_app_in8.c:285: maxzaehler=(eeprom[para_adr +2]<<8) +eeprom[para_adr+3];
	mov	a,#0x02
	add	a,_para_adr
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	mov	r5,#0x00
	mov	a,#0x03
	add	a,_para_adr
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r2,a
	mov	r7,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	C$fb_app_in8.c$287$4$26 ==.
;	../fb_app_in8.c:287: if (zaehlervalue[pinno]>=maxzaehler){// wenn zählwert erreicht
	mov	a,r6
	add	a,#_zaehlervalue
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	clr	c
	mov	a,r6
	subb	a,r5
	mov	a,r7
	subb	a,r3
	pop	ar7
	jc	00189$
	C$fb_app_in8.c$288$5$27 ==.
;	../fb_app_in8.c:288: tmp=(n>>6);// parameter für ausgange 1Bit
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x03
	mov	r4,a
	C$fb_app_in8.c$289$5$27 ==.
;	../fb_app_in8.c:289: if (tmp==0x03)tmp= (read_obj_value(pinno)^0x01);//UM
	cjne	r4,#0x03,00182$
	mov	dpl,_pinno
	lcall	_read_obj_value
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	xrl	ar3,#0x01
	mov	ar4,r3
00182$:
	C$fb_app_in8.c$290$5$27 ==.
;	../fb_app_in8.c:290: if (tmp==0x02)tmp=0;// AUS
	cjne	r4,#0x02,00184$
	mov	r4,#0x00
00184$:
	C$fb_app_in8.c$291$5$27 ==.
;	../fb_app_in8.c:291: write_send(pinno,tmp);// 1Bit objekt senden
	mov	r7,#0x00
	push	ar4
	push	ar7
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
	C$fb_app_in8.c$292$5$27 ==.
;	../fb_app_in8.c:292: send_obj_value(pinno+8);//16Bit objekt senden
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	lcall	_send_obj_value
	C$fb_app_in8.c$293$5$27 ==.
;	../fb_app_in8.c:293: schrittzaehler[pinno]=0;// reset schritt
	mov	a,_pinno
	add	a,#_schrittzaehler
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$294$5$27 ==.
;	../fb_app_in8.c:294: while(TR1);
00185$:
	jb	_TCON_6,00185$
	C$fb_app_in8.c$295$5$27 ==.
;	../fb_app_in8.c:295: zaehlervalue[pinno]=0;// reset Zähler
	mov	a,_pinno
	add	a,_pinno
	mov	r7,a
	add	a,#_zaehlervalue
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
00189$:
	C$fb_app_in8.c$297$4$26 ==.
;	../fb_app_in8.c:297: if(schrittzaehler[pinno]>=eeprom[para_adr+1]){// wenn schrittzählerwert erreicht
	mov	a,_pinno
	add	a,#_schrittzaehler
	mov	r1,a
	mov	ar7,@r1
	mov	a,_para_adr
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00197$
	C$fb_app_in8.c$298$5$28 ==.
;	../fb_app_in8.c:298: send_obj_value(pinno+8);// 16Bit objekt senden
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	lcall	_send_obj_value
	C$fb_app_in8.c$299$5$28 ==.
;	../fb_app_in8.c:299: schrittzaehler[pinno]=0;		// reset schrittzähler
	mov	a,_pinno
	add	a,#_schrittzaehler
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$307$2$2 ==.
;	../fb_app_in8.c:307: }
00197$:
	C$fb_app_in8.c$308$2$2 ==.
;	../fb_app_in8.c:308: timerstate[pinno]=timer_state;
	mov	a,_pinno
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,_timer_state
00200$:
	C$fb_app_in8.c$312$2$1 ==.
	XG$pin_changed$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_timer'
;------------------------------------------------------------
;m                         Allocated to registers r6 
;objno                     Allocated to registers r7 
;n                         Allocated to registers r5 
;timerflags                Allocated to registers r6 r7 
;jobj                      Allocated to registers b0 
;------------------------------------------------------------
	G$delay_timer$0$0 ==.
	C$fb_app_in8.c$351$2$1 ==.
;	../fb_app_in8.c:351: void delay_timer(void)
;	-----------------------------------------
;	 function delay_timer
;	-----------------------------------------
_delay_timer:
	C$fb_app_in8.c$359$1$1 ==.
;	../fb_app_in8.c:359: RTCCON=0x60;		// RTC anhalten und Flag löschen
	mov	_RTCCON,#0x60
	C$fb_app_in8.c$360$1$1 ==.
;	../fb_app_in8.c:360: RTCH=0x0E;			// reload Real Time Clock
	mov	_RTCH,#0x0E
	C$fb_app_in8.c$361$1$1 ==.
;	../fb_app_in8.c:361: RTCL=0xA0;			// auf 65ms
	mov	_RTCL,#0xA0
	C$fb_app_in8.c$362$1$1 ==.
;	../fb_app_in8.c:362: RTCCON=0x61;//	START_RTC	// RTC starten
	mov	_RTCCON,#0x61
	C$fb_app_in8.c$363$1$1 ==.
;	../fb_app_in8.c:363: timer++;
	inc	_timer
	clr	a
	cjne	a,_timer,00156$
	inc	(_timer + 1)
00156$:
	C$fb_app_in8.c$364$1$1 ==.
;	../fb_app_in8.c:364: timerflags = timer&(~(timer-1));// flanke generieren
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
	mov	a,_timer
	anl	ar6,a
	mov	a,(_timer + 1)
	anl	ar7,a
	C$fb_app_in8.c$365$5$5 ==.
;	../fb_app_in8.c:365: for(n=0;n<16;n++){
	mov	r5,#0x00
00126$:
	cjne	r5,#0x10,00157$
00157$:
	jnc	00129$
	C$fb_app_in8.c$366$2$2 ==.
;	../fb_app_in8.c:366: if(timerflags & 0x0001){// positive flags erzeugen und schieben
	mov	a,r6
	jnb	acc.0,00106$
	C$fb_app_in8.c$367$1$1 ==.
;	../fb_app_in8.c:367: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
	mov	r4,#0x00
00122$:
	cjne	r4,#0x09,00160$
00160$:
	jnc	00106$
	C$fb_app_in8.c$368$4$4 ==.
;	../fb_app_in8.c:368: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
	mov	a,r4
	add	a,#_timerbase
	mov	r1,a
	mov	ar3,@r1
	anl	ar3,#0x0F
	mov	a,r3
	cjne	a,ar5,00124$
	C$fb_app_in8.c$369$5$5 ==.
;	../fb_app_in8.c:369: if (timercnt[m]>0x80){// wenn der counter läuft...
	mov	a,r4
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	mov	r3,a
	add	a,#0xff - 0x80
	jnc	00124$
	C$fb_app_in8.c$370$6$6 ==.
;	../fb_app_in8.c:370: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
	mov	a,r3
	dec	a
	mov	@r1,a
00124$:
	C$fb_app_in8.c$367$3$3 ==.
;	../fb_app_in8.c:367: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
	inc	r4
	sjmp	00122$
00106$:
	C$fb_app_in8.c$375$2$2 ==.
;	../fb_app_in8.c:375: timerflags = timerflags>>1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	C$fb_app_in8.c$365$1$1 ==.
;	../fb_app_in8.c:365: for(n=0;n<16;n++){
	inc	r5
	sjmp	00126$
00129$:
	C$fb_app_in8.c$378$4$9 ==.
;	../fb_app_in8.c:378: for(objno=0;objno<8;objno++) {
	mov	r7,#0x00
00130$:
	cjne	r7,#0x08,00165$
00165$:
	jc	00166$
	ljmp	00134$
00166$:
	C$fb_app_in8.c$379$2$7 ==.
;	../fb_app_in8.c:379: timer_state=timerstate[objno];
	mov	a,r7
	add	a,#_timerstate
	mov	r1,a
	mov	_timer_state,@r1
	C$fb_app_in8.c$380$2$7 ==.
;	../fb_app_in8.c:380: if(timercnt[objno]==0x80) {
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x80,00167$
	sjmp	00168$
00167$:
	ljmp	00132$
00168$:
	C$fb_app_in8.c$397$3$8 ==.
;	../fb_app_in8.c:397: if (timer_state & 0x80) { // 0x80, 0x81 für langzeit telegramm senden
	mov	a,_timer_state
	jb	acc.7,00169$
	ljmp	00111$
00169$:
	C$fb_app_in8.c$398$4$9 ==.
;	../fb_app_in8.c:398: write_send( objno+8, timer_state & 0x01);	// Langzeit Telegramm senden
	mov	a,#0x01
	anl	a,_timer_state
	mov	r6,a
	mov	r5,#0x00
	mov	a,#0x08
	add	a,r7
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_write_send
	dec	sp
	dec	sp
	pop	ar7
	C$fb_app_in8.c$401$4$9 ==.
;	../fb_app_in8.c:401: m = eeprom[0xD7+(objno*4)];	// Faktor Dauer	Lamelle	T2	
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
	add	a,#0xD7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	C$fb_app_in8.c$402$4$9 ==.
;	../fb_app_in8.c:402: if (m > 3){// wenn lamellenverstellzeit >3 dann zeit sichern und kurztele zwecks stop
	mov  r6,a
	add	a,#0xff - 0x03
	jnc	00108$
	C$fb_app_in8.c$406$5$10 ==.
;	../fb_app_in8.c:406: timerbase[objno]= ((eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07);
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	ar4,r7
	mov	r5,#0x00
	inc	r4
	cjne	r4,#0x00,00171$
	inc	r5
00171$:
	mov	a,r5
	mov	c,acc.7
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	a,#0xFA
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,r7
	xrl	a,#0x01
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00173$
00172$:
	clr	c
	rrc	a
00173$:
	djnz	b,00172$
	anl	a,#0x07
	mov	@r1,a
	C$fb_app_in8.c$407$5$10 ==.
;	../fb_app_in8.c:407: jobj=read_obj_value((objno&0x07)+8);
	mov	a,#0x07
	anl	a,r7
	add	a,#0x08
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	add	a,#0xff
	mov	b0,c
	C$fb_app_in8.c$408$5$10 ==.
;	../fb_app_in8.c:408: timerstate[objno]= jobj|0x10; // 0x10,0x11 fuer ende T2 (lamellenvestellzeit)
	mov	a,r7
	add	a,#_timerstate
	mov	r1,a
	mov	c,b0
	clr	a
	rlc	a
	mov	r5,a
	orl	ar5,#0x10
	mov	@r1,ar5
	C$fb_app_in8.c$409$5$10 ==.
;	../fb_app_in8.c:409: timercnt[objno]= m + 0x80;
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	a,#0x80
	add	a,r6
	mov	@r1,a
	sjmp	00111$
00108$:
	C$fb_app_in8.c$411$4$9 ==.
;	../fb_app_in8.c:411: else timercnt[objno]=0;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
00111$:
	C$fb_app_in8.c$414$3$8 ==.
;	../fb_app_in8.c:414: switch (timer_state & 0x50){		
	mov	a,#0x50
	anl	a,_timer_state
	mov	r6,a
	cjne	r6,#0x10,00174$
	sjmp	00112$
00174$:
	cjne	r6,#0x40,00175$
	sjmp	00113$
00175$:
	cjne	r6,#0x50,00176$
	ljmp	00114$
00176$:
	ljmp	00116$
	C$fb_app_in8.c$415$4$11 ==.
;	../fb_app_in8.c:415: case 0x10:
00112$:
	C$fb_app_in8.c$416$4$11 ==.
;	../fb_app_in8.c:416: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$417$4$11 ==.
;	../fb_app_in8.c:417: break;		
	ljmp	00116$
	C$fb_app_in8.c$419$4$11 ==.
;	../fb_app_in8.c:419: case 0x40:
00113$:
	C$fb_app_in8.c$421$4$11 ==.
;	../fb_app_in8.c:421: write_send( objno+8, timer_state );	// Langzeit Telegramm senden
	mov	r5,_timer_state
	mov	r6,#0x00
	mov	a,#0x08
	add	a,r7
	mov	dpl,a
	push	ar7
	push	ar5
	push	ar6
	lcall	_write_send
	dec	sp
	dec	sp
	pop	ar7
	C$fb_app_in8.c$422$4$11 ==.
;	../fb_app_in8.c:422: timerstate[objno]|=0x10;
	mov	a,r7
	add	a,#_timerstate
	mov	r1,a
	mov	ar6,@r1
	mov	a,#0x10
	orl	a,r6
	mov	@r1,a
	C$fb_app_in8.c$423$4$11 ==.
;	../fb_app_in8.c:423: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD8
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x80
	orl	a,r6
	mov	@r1,a
	C$fb_app_in8.c$424$4$11 ==.
;	../fb_app_in8.c:424: timerbase[objno]=(eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x0F;	//Basis Tele wdg
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	ar5,r7
	mov	r6,#0x00
	inc	r5
	cjne	r5,#0x00,00177$
	inc	r6
00177$:
	mov	a,r6
	mov	c,acc.7
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	a,#0xFA
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	anl	a,r7
	xrl	a,#0x01
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r6
	sjmp	00179$
00178$:
	clr	c
	rrc	a
00179$:
	djnz	b,00178$
	anl	a,#0x0F
	mov	@r1,a
	C$fb_app_in8.c$425$4$11 ==.
;	../fb_app_in8.c:425: break;
	C$fb_app_in8.c$426$4$11 ==.
;	../fb_app_in8.c:426: case 0x50: // 0x50 Dimmer telegramm wiederholung
	sjmp	00116$
00114$:
	C$fb_app_in8.c$427$4$11 ==.
;	../fb_app_in8.c:427: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD8
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x80
	orl	a,r6
	mov	@r1,a
	C$fb_app_in8.c$428$4$11 ==.
;	../fb_app_in8.c:428: send_obj_value(objno+8);
	mov	a,#0x08
	add	a,r7
	mov	dpl,a
	push	ar7
	lcall	_send_obj_value
	pop	ar7
	C$fb_app_in8.c$432$3$8 ==.
;	../fb_app_in8.c:432: }
00116$:
	C$fb_app_in8.c$434$3$8 ==.
;	../fb_app_in8.c:434: if(timer_state==0 && (timerbase[objno]& 0x80)==0x80){//Impulszähler
	mov	a,_timer_state
	jnz	00132$
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	ar6,@r1
	anl	ar6,#0x80
	cjne	r6,#0x80,00132$
	C$fb_app_in8.c$435$4$12 ==.
;	../fb_app_in8.c:435: timercnt[objno]=eeprom[0xD6+(objno)*4]|0x80;//Torzeit setzen;Löschung anfordern
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x80
	orl	a,r6
	mov	@r0,a
	C$fb_app_in8.c$436$4$12 ==.
;	../fb_app_in8.c:436: timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))|0xC0;
	mov	ar5,r7
	mov	r6,#0x00
	inc	r5
	cjne	r5,#0x00,00183$
	inc	r6
00183$:
	mov	a,r6
	mov	c,acc.7
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	a,#0xF6
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	anl	a,r7
	xrl	a,#0x01
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r6
	sjmp	00185$
00184$:
	clr	c
	rrc	a
00185$:
	djnz	b,00184$
	orl	a,#0xC0
	mov	@r1,a
	C$fb_app_in8.c$437$4$12 ==.
;	../fb_app_in8.c:437: send_obj_value(objno+8);
	mov	a,#0x08
	add	a,r7
	mov	dpl,a
	push	ar7
	lcall	_send_obj_value
	pop	ar7
00132$:
	C$fb_app_in8.c$378$1$1 ==.
;	../fb_app_in8.c:378: for(objno=0;objno<8;objno++) {
	inc	r7
	ljmp	00130$
00134$:
	C$fb_app_in8.c$443$1$1 ==.
	XG$delay_timer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'schalten'
;------------------------------------------------------------
;pinno                     Allocated to registers r7 
;risefall                  Allocated to registers b0 
;func                      Allocated to registers r6 
;sendval                   Allocated to registers r2 
;------------------------------------------------------------
	G$schalten$0$0 ==.
	C$fb_app_in8.c$446$1$1 ==.
;	../fb_app_in8.c:446: void schalten(__bit risefall, unsigned char pinno)	// Schaltbefehl senden
;	-----------------------------------------
;	 function schalten
;	-----------------------------------------
_schalten:
	mov	r7,dpl
	C$fb_app_in8.c$450$1$1 ==.
;	../fb_app_in8.c:450: func=eeprom[0xD7+(pinno & 0x07)*4]; //0xD7
	mov	a,#0x07
	anl	a,r7
	add	a,acc
	add	a,acc
	add	a,#0xD7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	C$fb_app_in8.c$451$1$1 ==.
;	../fb_app_in8.c:451: if (pinno>=8)func=func>>4;			// wenn 2. Schaltobjekt dann obere 4 bit
	cjne	r7,#0x08,00116$
00116$:
	jc	00102$
	mov	a,r6
	swap	a
	anl	a,#0x0F
	mov	r6,a
00102$:
	C$fb_app_in8.c$452$1$1 ==.
;	../fb_app_in8.c:452: if (risefall) func=(func>>2);		// Funktion bei steigender Flanke obere 2 bit
	jnb	b0,00104$
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r6,a
00104$:
	C$fb_app_in8.c$453$1$1 ==.
;	../fb_app_in8.c:453: func=func&0x03;					// Funktion maskieren
	anl	ar6,#0x03
	C$fb_app_in8.c$454$1$1 ==.
;	../fb_app_in8.c:454: if (func!=0)
	mov	a,r6
	jz	00110$
	C$fb_app_in8.c$456$2$2 ==.
;	../fb_app_in8.c:456: if (func==0x03) sendval=read_obj_value(pinno) ^0x01;  //UM
	cjne	r6,#0x03,00106$
	mov	dpl,r7
	push	ar7
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar7
	xrl	ar2,#0x01
	sjmp	00107$
00106$:
	C$fb_app_in8.c$457$2$2 ==.
;	../fb_app_in8.c:457: else sendval = func & 0x01;	// EIN   AUS
	mov	a,#0x01
	anl	a,r6
	mov	r2,a
00107$:
	C$fb_app_in8.c$458$2$2 ==.
;	../fb_app_in8.c:458: write_send(pinno,sendval);
	mov	r6,#0x00
	push	ar2
	push	ar6
	mov	dpl,r7
	lcall	_write_send
	dec	sp
	dec	sp
00110$:
	C$fb_app_in8.c$461$2$1 ==.
	XG$schalten$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'debounce'
;------------------------------------------------------------
;pinno                     Allocated to registers r7 
;debtime                   Allocated to registers r6 
;n                         Allocated to registers r5 
;w                         Allocated to registers r4 
;------------------------------------------------------------
	G$debounce$0$0 ==.
	C$fb_app_in8.c$467$2$1 ==.
;	../fb_app_in8.c:467: unsigned char debounce(unsigned char pinno)	// Entprellzeit abwarten und prüfen !!
;	-----------------------------------------
;	 function debounce
;	-----------------------------------------
_debounce:
	mov	r7,dpl
	C$fb_app_in8.c$470$1$1 ==.
;	../fb_app_in8.c:470: debtime=eeprom[DEBTIME];			// Entprellzeit in 0,5ms Schritten
	mov	dptr,#(_eeprom + 0x00d2)
	clr	a
	movc	a,@a+dptr
	C$fb_app_in8.c$471$1$1 ==.
;	../fb_app_in8.c:471: if (debtime>0) {
	mov	r6,a
	jz	00102$
	C$fb_app_in8.c$472$1$1 ==.
;	../fb_app_in8.c:472: for(n=0;n<debtime;n++){
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00102$
	C$fb_app_in8.c$473$1$1 ==.
;	../fb_app_in8.c:473: for(w=112;w>0;w--); 
	mov	r4,#0x70
00103$:
	mov	a,r4
	jz	00113$
	mov	r3,#0x01
	sjmp	00114$
00113$:
	mov	r3,#0x00
00114$:
	mov	a,r3
	jz	00109$
	dec	r4
	sjmp	00103$
00109$:
	C$fb_app_in8.c$472$2$2 ==.
;	../fb_app_in8.c:472: for(n=0;n<debtime;n++){
	inc	r5
	sjmp	00107$
00102$:
	C$fb_app_in8.c$481$1$1 ==.
;	../fb_app_in8.c:481: return ((~(spi_in_out()^p0h))& bitmask_1[pinno]);//ret=1;
	push	ar7
	lcall	_spi_in_out
	mov	a,dpl
	pop	ar7
	xrl	a,_p0h
	cpl	a
	mov	r6,a
	mov	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	anl	a,r6
	mov	dpl,a
	C$fb_app_in8.c$485$1$1 ==.
	XG$debounce$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;para_value                Allocated to registers r6 
;tmp                       Allocated to registers r2 
;objtype                   Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$write_value_req$0$0 ==.
	C$fb_app_in8.c$489$1$1 ==.
;	../fb_app_in8.c:489: void write_value_req(unsigned char objno)		// Objekt-Wert setzen gemäß empfangenem EIS Telegramms
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r7,dpl
	C$fb_app_in8.c$493$1$1 ==.
;	../fb_app_in8.c:493: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	add	a,r7
	add	a,r7
	add	a,r7
	add	a,#0x04
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	C$fb_app_in8.c$494$1$1 ==.
;	../fb_app_in8.c:494: if (objno<16) {					// Status der Eingangsobjekte 0-15
	cjne	r7,#0x10,00126$
00126$:
	jc	00127$
	ljmp	00115$
00127$:
	C$fb_app_in8.c$496$2$2 ==.
;	../fb_app_in8.c:496: if (objtype<=6){
	mov	a,r6
	add	a,#0xff - 0x06
	jc	00102$
	C$fb_app_in8.c$497$3$3 ==.
;	../fb_app_in8.c:497: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
	mov	a,#0x3F
	anl	a,(_telegramm + 0x0007)
	mov	r5,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,r7
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
00102$:
	C$fb_app_in8.c$499$2$2 ==.
;	../fb_app_in8.c:499: if (objtype==7)write_obj_value(objno,telegramm[8]);
	cjne	r6,#0x07,00104$
	mov	r2,(_telegramm + 0x0008)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r7
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
00104$:
	C$fb_app_in8.c$500$2$2 ==.
;	../fb_app_in8.c:500: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
	cjne	r6,#0x08,00131$
	sjmp	00132$
00131$:
	ljmp	00117$
00132$:
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
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r3,a
	push	ar5
	push	ar6
	push	ar4
	push	ar3
	mov	dpl,r7
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00117$
00115$:
	C$fb_app_in8.c$506$2$4 ==.
;	../fb_app_in8.c:506: tmp=telegramm[7]& 0x01;
	mov	a,#0x01
	anl	a,(_telegramm + 0x0007)
	mov	r2,a
	C$fb_app_in8.c$507$2$4 ==.
;	../fb_app_in8.c:507: if (read_obj_value(objno)^tmp) {// nur wenn sich Objekt geändert hat
	mov	dpl,r7
	push	ar7
	push	ar2
	lcall	_read_obj_value
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar2
	mov	ar4,r2
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	xrl	ar4,a
	inc	r0
	mov	a,@r0
	xrl	ar5,a
	inc	r0
	mov	a,@r0
	xrl	ar6,a
	inc	r0
	mov	a,@r0
	xrl	ar7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	pop	ar7
	jz	00117$
	C$fb_app_in8.c$508$3$5 ==.
;	../fb_app_in8.c:508: write_obj_value(objno,tmp);// objekt sichern
	mov	ar3,r2
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r7
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar7
	C$fb_app_in8.c$509$3$5 ==.
;	../fb_app_in8.c:509: para_value= (eeprom[0xD5+((objno & 0x07)*4)]&0x03);
	mov	a,#0x07
	anl	a,r7
	add	a,acc
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x03
	C$fb_app_in8.c$510$3$5 ==.
;	../fb_app_in8.c:510: tmp = tmp ^ ((para_value) & 0x01);//bei 'nicht invertieren' invertieren,weil wir invertiert abfragen :-(
	mov	a,#0x01
	anl	a,r6
	mov	r5,a
	xrl	ar2,a
	C$fb_app_in8.c$511$3$5 ==.
;	../fb_app_in8.c:511: if (para_value){			// wenn eine sperre aktiviert parametriert ist
	mov	a,r6
	jz	00117$
	C$fb_app_in8.c$512$4$6 ==.
;	../fb_app_in8.c:512: if(tmp){		//nicht gesperrt(invertierte Abfrage)
	mov	a,r2
	jz	00108$
	C$fb_app_in8.c$513$5$7 ==.
;	../fb_app_in8.c:513: blocked=blocked & (0xff-(bitmask_1[objno&0x07]));
	mov	a,#0x07
	anl	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r6
	anl	_blocked,a
	sjmp	00109$
00108$:
	C$fb_app_in8.c$516$5$8 ==.
;	../fb_app_in8.c:516: blocked=blocked |bitmask_1[objno&0x07];
	mov	a,#0x07
	anl	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r6,a
	orl	_blocked,a
00109$:
	C$fb_app_in8.c$518$4$6 ==.
;	../fb_app_in8.c:518: sperren(objno&0x07,tmp);//temp=1 bedeutet Freigabe
	anl	ar7,#0x07
	push	ar2
	mov	dpl,r7
	lcall	_sperren
	dec	sp
00117$:
	mov	sp,_bp
	pop	_bp
	C$fb_app_in8.c$523$1$1 ==.
	XG$write_value_req$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sperren'
;------------------------------------------------------------
;freigabe                  Allocated to stack - _bp -3
;obj                       Allocated to registers r7 
;objval                    Allocated to registers b0 
;sendobj                   Allocated to registers r6 
;------------------------------------------------------------
	G$sperren$0$0 ==.
	C$fb_app_in8.c$526$1$1 ==.
;	../fb_app_in8.c:526: void sperren (unsigned char obj,unsigned char freigabe)
;	-----------------------------------------
;	 function sperren
;	-----------------------------------------
_sperren:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$fb_app_in8.c$528$1$1 ==.
;	../fb_app_in8.c:528: __bit objval=0;
	clr	b0
	C$fb_app_in8.c$531$1$1 ==.
;	../fb_app_in8.c:531: unsigned char sendobj=255;//obj=obj & 0x07;
	mov	r6,#0xFF
	C$fb_app_in8.c$532$1$1 ==.
;	../fb_app_in8.c:532: switch ((eeprom[0xCE+(obj>>1)] >> ((obj & 0x01)*4)) & 0x0F){// Funtion des zugehörigen Eingangs
	mov	a,r7
	clr	c
	rrc	a
	add	a,#0xCE
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,r7
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00154$
00153$:
	clr	c
	rrc	a
00154$:
	djnz	b,00153$
	anl	a,#0x0F
	mov	r5,a
	cjne	r5,#0x01,00155$
	sjmp	00101$
00155$:
	cjne	r5,#0x02,00156$
	ljmp	00110$
00156$:
	cjne	r5,#0x03,00157$
	ljmp	00122$
00157$:
	ljmp	00128$
	C$fb_app_in8.c$533$2$2 ==.
;	../fb_app_in8.c:533: case 0x01:// funktion Schalten sperren
00101$:
	C$fb_app_in8.c$534$2$2 ==.
;	../fb_app_in8.c:534: sendobj=obj;
	C$fb_app_in8.c$535$2$2 ==.
;	../fb_app_in8.c:535: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
	mov	a,r7
	mov	r6,a
	add	a,acc
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x01
	xrl	a,@r0
	mov	b,#0x02
	mul	ab
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00159$
00158$:
	clr	c
	rrc	a
00159$:
	djnz	b,00158$
	anl	a,#0x0C
	mov	r5,a
	cjne	r5,#0x04,00160$
	sjmp	00102$
00160$:
	cjne	r5,#0x08,00161$
	sjmp	00103$
00161$:
	C$fb_app_in8.c$537$3$3 ==.
;	../fb_app_in8.c:537: case 0x04:		//EIN
	cjne	r5,#0x0C,00108$
	sjmp	00104$
00102$:
	C$fb_app_in8.c$538$3$3 ==.
;	../fb_app_in8.c:538: objval=1;
	setb	b0
	C$fb_app_in8.c$539$3$3 ==.
;	../fb_app_in8.c:539: break;
	ljmp	00128$
	C$fb_app_in8.c$540$3$3 ==.
;	../fb_app_in8.c:540: case 0x08:		//AUS
00103$:
	C$fb_app_in8.c$541$3$3 ==.
;	../fb_app_in8.c:541: objval=0;
	clr	b0
	C$fb_app_in8.c$542$3$3 ==.
;	../fb_app_in8.c:542: break;
	ljmp	00128$
	C$fb_app_in8.c$543$3$3 ==.
;	../fb_app_in8.c:543: case 0x0C:	//UM
00104$:
	C$fb_app_in8.c$544$3$3 ==.
;	../fb_app_in8.c:544: if (freigabe){ //ende sperre-> aktueller Zustand
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00106$
	C$fb_app_in8.c$545$4$4 ==.
;	../fb_app_in8.c:545: objval= (portbuffer>>obj)& 0x01;
	mov	b,r7
	inc	b
	mov	a,_portbuffer
	sjmp	00165$
00164$:
	clr	c
	rrc	a
00165$:
	djnz	b,00164$
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	mov	b0,c
	ljmp	00128$
00106$:
	C$fb_app_in8.c$548$4$5 ==.
;	../fb_app_in8.c:548: objval=read_obj_value(obj)^0x01;//Tele invers senden
	mov	dpl,r7
	push	ar6
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	xrl	ar2,#0x01
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	add	a,#0xff
	mov	b0,c
	C$fb_app_in8.c$550$3$3 ==.
;	../fb_app_in8.c:550: break;
	ljmp	00128$
	C$fb_app_in8.c$551$3$3 ==.
;	../fb_app_in8.c:551: default:
00108$:
	C$fb_app_in8.c$552$3$3 ==.
;	../fb_app_in8.c:552: sendobj=255;
	mov	r6,#0xFF
	C$fb_app_in8.c$556$2$2 ==.
;	../fb_app_in8.c:556: break;	
	ljmp	00128$
	C$fb_app_in8.c$557$2$2 ==.
;	../fb_app_in8.c:557: case 0x02:// funktion Dimmer-sperren
00110$:
	C$fb_app_in8.c$559$2$2 ==.
;	../fb_app_in8.c:559: objval = read_obj_value(obj);
	mov	dpl,r7
	push	ar7
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar7
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	add	a,#0xff
	mov	b0,c
	C$fb_app_in8.c$560$2$2 ==.
;	../fb_app_in8.c:560: sendobj=obj;
	mov	ar6,r7
	C$fb_app_in8.c$561$2$2 ==.
;	../fb_app_in8.c:561: if (freigabe){		// Ende Sperre  
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00120$
	C$fb_app_in8.c$562$3$6 ==.
;	../fb_app_in8.c:562: if (eeprom[0xD5+(obj*4)]&0x80) objval=0;
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	jnb	acc.7,00112$
	clr	b0
	ljmp	00128$
00112$:
	C$fb_app_in8.c$563$3$6 ==.
;	../fb_app_in8.c:563: else sendobj=255;
	mov	r6,#0xFF
	ljmp	00128$
00120$:
	C$fb_app_in8.c$566$3$7 ==.
;	../fb_app_in8.c:566: switch (eeprom[0xD5+(obj*4)+1]& 0xC0) {//Bedienkonzept angucken
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0xC0
	cjne	r5,#0x40,00168$
	sjmp	00114$
00168$:
	cjne	r5,#0x80,00169$
	sjmp	00115$
00169$:
	C$fb_app_in8.c$567$4$8 ==.
;	../fb_app_in8.c:567: case 0x40:	// zweiflaechen ein
	cjne	r5,#0xC0,00117$
	sjmp	00116$
00114$:
	C$fb_app_in8.c$568$4$8 ==.
;	../fb_app_in8.c:568: objval=1;
	setb	b0
	C$fb_app_in8.c$569$4$8 ==.
;	../fb_app_in8.c:569: break;
	C$fb_app_in8.c$570$4$8 ==.
;	../fb_app_in8.c:570: case 0x80:	// zweiflaechen aus
	sjmp	00128$
00115$:
	C$fb_app_in8.c$571$4$8 ==.
;	../fb_app_in8.c:571: objval=0;
	clr	b0
	C$fb_app_in8.c$572$4$8 ==.
;	../fb_app_in8.c:572: break;
	C$fb_app_in8.c$573$4$8 ==.
;	../fb_app_in8.c:573: case 0xC0:	// UM-heller
	sjmp	00128$
00116$:
	C$fb_app_in8.c$574$4$8 ==.
;	../fb_app_in8.c:574: objval = !objval;
	cpl	b0
	C$fb_app_in8.c$575$4$8 ==.
;	../fb_app_in8.c:575: break;
	C$fb_app_in8.c$576$4$8 ==.
;	../fb_app_in8.c:576: default:
	sjmp	00128$
00117$:
	C$fb_app_in8.c$577$4$8 ==.
;	../fb_app_in8.c:577: sendobj=255;
	mov	r6,#0xFF
	C$fb_app_in8.c$582$2$2 ==.
;	../fb_app_in8.c:582: break;
	C$fb_app_in8.c$583$2$2 ==.
;	../fb_app_in8.c:583: case 0x03:// Funktion Jalousie - Sperren
	sjmp	00128$
00122$:
	C$fb_app_in8.c$584$2$2 ==.
;	../fb_app_in8.c:584: sendobj=obj+8;
	mov	a,#0x08
	add	a,r7
	mov	r6,a
	C$fb_app_in8.c$585$2$2 ==.
;	../fb_app_in8.c:585: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0x01
	xrl	a,@r0
	mov	b,#0x02
	mul	ab
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00172$
00171$:
	clr	c
	rrc	a
00172$:
	djnz	b,00171$
	anl	a,#0x0C
	mov	r5,a
	cjne	r5,#0x04,00173$
	sjmp	00123$
00173$:
	cjne	r5,#0x08,00174$
	sjmp	00124$
00174$:
	C$fb_app_in8.c$586$3$9 ==.
;	../fb_app_in8.c:586: case 0x04:		//ab
	cjne	r5,#0x0C,00126$
	sjmp	00125$
00123$:
	C$fb_app_in8.c$587$3$9 ==.
;	../fb_app_in8.c:587: objval=0;
	clr	b0
	C$fb_app_in8.c$588$3$9 ==.
;	../fb_app_in8.c:588: break;
	C$fb_app_in8.c$589$3$9 ==.
;	../fb_app_in8.c:589: case 0x08:		//auf
	sjmp	00128$
00124$:
	C$fb_app_in8.c$590$3$9 ==.
;	../fb_app_in8.c:590: objval=1;
	setb	b0
	C$fb_app_in8.c$591$3$9 ==.
;	../fb_app_in8.c:591: break;
	C$fb_app_in8.c$592$3$9 ==.
;	../fb_app_in8.c:592: case 0x0c:	//UM
	sjmp	00128$
00125$:
	C$fb_app_in8.c$593$3$9 ==.
;	../fb_app_in8.c:593: objval=read_obj_value(obj+8)^0x01;//neues Jaloobj invers zum langzeit
	mov	a,#0x08
	add	a,r7
	mov	dpl,a
	push	ar6
	lcall	_read_obj_value
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r7,a
	pop	ar6
	xrl	ar3,#0x01
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r7
	add	a,#0xff
	mov	b0,c
	C$fb_app_in8.c$594$3$9 ==.
;	../fb_app_in8.c:594: break;
	C$fb_app_in8.c$595$3$9 ==.
;	../fb_app_in8.c:595: default:
	sjmp	00128$
00126$:
	C$fb_app_in8.c$596$3$9 ==.
;	../fb_app_in8.c:596: sendobj=255;	
	mov	r6,#0xFF
	C$fb_app_in8.c$600$1$1 ==.
;	../fb_app_in8.c:600: }// Ende switch funktion
00128$:
	C$fb_app_in8.c$601$1$1 ==.
;	../fb_app_in8.c:601: if(sendobj<=16){
	mov	a,r6
	add	a,#0xff - 0x10
	jc	00134$
	C$fb_app_in8.c$602$2$10 ==.
;	../fb_app_in8.c:602: write_obj_value(sendobj,objval);
	mov	c,b0
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r7,#0x00
	push	ar6
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	mov	dpl,r6
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	C$fb_app_in8.c$603$2$10 ==.
;	../fb_app_in8.c:603: while(!send_obj_value(sendobj));
00129$:
	mov	dpl,r6
	push	ar6
	lcall	_send_obj_value
	pop	ar6
	jnc	00129$
00134$:
	pop	_bp
	C$fb_app_in8.c$606$2$1 ==.
	XG$sperren$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$read_value_req$0$0 ==.
	C$fb_app_in8.c$617$2$1 ==.
;	../fb_app_in8.c:617: void read_value_req(unsigned char objno)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
	mov	r7,dpl
	C$fb_app_in8.c$620$1$1 ==.
;	../fb_app_in8.c:620: send_obj_value(objno+0x40);
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	lcall	_send_obj_value
	C$fb_app_in8.c$621$1$1 ==.
	XG$read_value_req$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_send'
;------------------------------------------------------------
;value                     Allocated to stack - _bp -4
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$write_send$0$0 ==.
	C$fb_app_in8.c$624$1$1 ==.
;	../fb_app_in8.c:624: void (write_send)(unsigned char objno,unsigned int value){
;	-----------------------------------------
;	 function write_send
;	-----------------------------------------
_write_send:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$fb_app_in8.c$626$1$1 ==.
;	../fb_app_in8.c:626: write_obj_value(objno,value);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r6,#0x00
	push	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r7
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	C$fb_app_in8.c$627$1$1 ==.
;	../fb_app_in8.c:627: send_obj_value(objno);
	mov	dpl,r7
	lcall	_send_obj_value
	pop	_bp
	C$fb_app_in8.c$628$1$1 ==.
	XG$write_send$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bus_return'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;senden                    Allocated to registers r6 
;objval                    Allocated to registers b0 
;------------------------------------------------------------
	G$bus_return$0$0 ==.
	C$fb_app_in8.c$631$1$1 ==.
;	../fb_app_in8.c:631: void bus_return(void){
;	-----------------------------------------
;	 function bus_return
;	-----------------------------------------
_bus_return:
	C$fb_app_in8.c$634$1$1 ==.
;	../fb_app_in8.c:634: __bit objval=0;
	clr	b0
	C$fb_app_in8.c$635$1$1 ==.
;	../fb_app_in8.c:635: blocked=0;
	mov	_blocked,#0x00
	C$fb_app_in8.c$637$3$3 ==.
;	../fb_app_in8.c:637: for (n=0;n<8;n++){
	mov	r7,#0x00
00124$:
	cjne	r7,#0x08,00146$
00146$:
	jc	00147$
	ljmp	00128$
00147$:
	C$fb_app_in8.c$638$2$2 ==.
;	../fb_app_in8.c:638: senden=0;
	mov	r6,#0x00
	C$fb_app_in8.c$639$2$2 ==.
;	../fb_app_in8.c:639: timercnt[n]=0;// alle timer ausschalten
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	@r1,#0x00
	C$fb_app_in8.c$640$2$2 ==.
;	../fb_app_in8.c:640: objectvalue_l[n]=0;
	mov	a,r7
	add	a,#_objectvalue_l
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$641$2$2 ==.
;	../fb_app_in8.c:641: objectvalue_h[n]=0;
	mov	a,r7
	add	a,#_objectvalue_h
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$642$2$2 ==.
;	../fb_app_in8.c:642: switch ((eeprom[0xCE+(n>>1)] >> ((n & 0x01)*4)) & 0x0F)	// Funktion des objektes
	mov	a,r7
	clr	c
	rrc	a
	add	a,#0xCE
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,r7
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00149$
00148$:
	clr	c
	rrc	a
00149$:
	djnz	b,00148$
	anl	a,#0x0F
	mov	r5,a
	cjne	r5,#0x01,00150$
	sjmp	00101$
00150$:
	cjne	r5,#0x02,00151$
	sjmp	00107$
00151$:
	cjne	r5,#0x03,00152$
	sjmp	00102$
00152$:
	cjne	r5,#0x09,00153$
	ljmp	00112$
00153$:
	ljmp	00115$
	C$fb_app_in8.c$644$3$3 ==.
;	../fb_app_in8.c:644: case 0x01:// schalten
00101$:
	C$fb_app_in8.c$645$3$3 ==.
;	../fb_app_in8.c:645: timerstate[n]=0;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
	C$fb_app_in8.c$646$3$3 ==.
;	../fb_app_in8.c:646: case 0x03:// Jalousie
00102$:
	C$fb_app_in8.c$648$3$3 ==.
;	../fb_app_in8.c:648: switch(eeprom[0xD5+(n*4)]&0xC0){
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0xC0
	cjne	r5,#0x40,00154$
	sjmp	00103$
00154$:
	cjne	r5,#0x80,00155$
	sjmp	00104$
00155$:
	C$fb_app_in8.c$649$4$4 ==.
;	../fb_app_in8.c:649: case 0x40:
	cjne	r5,#0xC0,00115$
	sjmp	00105$
00103$:
	C$fb_app_in8.c$650$4$4 ==.
;	../fb_app_in8.c:650: objval=1;
	setb	b0
	C$fb_app_in8.c$651$4$4 ==.
;	../fb_app_in8.c:651: senden=1;
	mov	r6,#0x01
	C$fb_app_in8.c$652$4$4 ==.
;	../fb_app_in8.c:652: break;	
	C$fb_app_in8.c$653$4$4 ==.
;	../fb_app_in8.c:653: case 0x80:
	sjmp	00115$
00104$:
	C$fb_app_in8.c$654$4$4 ==.
;	../fb_app_in8.c:654: objval=0;
	clr	b0
	C$fb_app_in8.c$655$4$4 ==.
;	../fb_app_in8.c:655: senden=1;
	mov	r6,#0x01
	C$fb_app_in8.c$656$4$4 ==.
;	../fb_app_in8.c:656: break;
	C$fb_app_in8.c$657$4$4 ==.
;	../fb_app_in8.c:657: case 0xC0:
	sjmp	00115$
00105$:
	C$fb_app_in8.c$658$4$4 ==.
;	../fb_app_in8.c:658: portbuffer ^= (0x01<<n);//Bit im portbuffer invertieren, löst eine Flanke aus
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00159$
00157$:
	add	a,acc
00159$:
	djnz	b,00157$
	mov	r5,a
	xrl	_portbuffer,a
	C$fb_app_in8.c$660$3$3 ==.
;	../fb_app_in8.c:660: break;
	C$fb_app_in8.c$661$3$3 ==.
;	../fb_app_in8.c:661: case 0x02://dimmen austele
	sjmp	00115$
00107$:
	C$fb_app_in8.c$662$3$3 ==.
;	../fb_app_in8.c:662: if(eeprom[0xD7+(n*4)]&0x80){
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r5,a
	add	a,#0xD7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	jnb	acc.7,00109$
	C$fb_app_in8.c$663$4$5 ==.
;	../fb_app_in8.c:663: objval=0;
	clr	b0
	C$fb_app_in8.c$664$4$5 ==.
;	../fb_app_in8.c:664: senden=1;
	mov	r6,#0x01
00109$:
	C$fb_app_in8.c$666$3$3 ==.
;	../fb_app_in8.c:666: if(eeprom[0xD8+(n*4)]&0x80){
	mov	a,#0xD8
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	jnb	acc.7,00115$
	C$fb_app_in8.c$667$4$6 ==.
;	../fb_app_in8.c:667: objval=1;
	setb	b0
	C$fb_app_in8.c$668$4$6 ==.
;	../fb_app_in8.c:668: senden=1;
	mov	r6,#0x01
	C$fb_app_in8.c$671$3$3 ==.
;	../fb_app_in8.c:671: break;
	C$fb_app_in8.c$672$3$3 ==.
;	../fb_app_in8.c:672: case 0x09:	// timer für impulszähler starten falls kein sync angeschlossen 
	sjmp	00115$
00112$:
	C$fb_app_in8.c$673$3$3 ==.
;	../fb_app_in8.c:673: if (n<=1){
	mov	a,r7
	add	a,#0xff - 0x01
	jc	00115$
	C$fb_app_in8.c$674$4$7 ==.
;	../fb_app_in8.c:674: timercnt[n]=0x80;
	mov	@r1,#0x80
	C$fb_app_in8.c$675$4$7 ==.
;	../fb_app_in8.c:675: timerbase[n]=0x80;
	mov	a,r7
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x80
	C$fb_app_in8.c$676$4$7 ==.
;	../fb_app_in8.c:676: zaehlervalue[n]=0;
	mov	a,r7
	add	a,r7
	mov	r5,a
	add	a,#_zaehlervalue
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	C$fb_app_in8.c$679$2$2 ==.
;	../fb_app_in8.c:679: }
00115$:
	C$fb_app_in8.c$680$2$2 ==.
;	../fb_app_in8.c:680: if (senden){
	mov	a,r6
	jz	00120$
	C$fb_app_in8.c$681$3$8 ==.
;	../fb_app_in8.c:681: write_obj_value(n,objval);// eis1, kein selftele, speichern ja
	mov	c,b0
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	push	ar7
	push	bits
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r7
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar7
	C$fb_app_in8.c$682$3$8 ==.
;	../fb_app_in8.c:682: while(!send_obj_value(n));
00116$:
	mov	dpl,r7
	push	ar7
	push	bits
	lcall	_send_obj_value
	pop	bits
	pop	ar7
	jnc	00116$
00120$:
	C$fb_app_in8.c$684$2$2 ==.
;	../fb_app_in8.c:684: if((eeprom[0xD5+(n*4)]& 0x03)==2){ //bei invertierter Sperre Sperrobjekt setzen.
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x03
	cjne	r6,#0x02,00122$
	C$fb_app_in8.c$685$3$9 ==.
;	../fb_app_in8.c:685: Sperre |= bitmask_1[n];
	mov	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r6,a
	orl	_Sperre,a
	sjmp	00126$
00122$:
	C$fb_app_in8.c$688$3$10 ==.
;	../fb_app_in8.c:688: Sperre &= (~bitmask_1[n]);
	mov	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	cpl	a
	mov	r6,a
	anl	_Sperre,a
00126$:
	C$fb_app_in8.c$637$1$1 ==.
;	../fb_app_in8.c:637: for (n=0;n<8;n++){
	inc	r7
	ljmp	00124$
00128$:
	C$fb_app_in8.c$691$1$1 ==.
	XG$bus_return$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;objvalue                  Allocated to stack - _bp +1
;objtype                   Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +8
;------------------------------------------------------------
	G$read_obj_value$0$0 ==.
	C$fb_app_in8.c$693$1$1 ==.
;	../fb_app_in8.c:693: unsigned long read_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function read_obj_value
;	-----------------------------------------
_read_obj_value:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r7,dpl
	C$fb_app_in8.c$697$1$1 ==.
;	../fb_app_in8.c:697: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	add	a,r7
	add	a,r7
	add	a,r7
	add	a,#0x04
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	C$fb_app_in8.c$699$1$1 ==.
;	../fb_app_in8.c:699: if (objno <= 15) {	// wenn objno <= anzahl objekte
	mov	a,r7
	add	a,#0xff - 0x0F
	jnc	00117$
	ljmp	00109$
00117$:
	C$fb_app_in8.c$700$2$2 ==.
;	../fb_app_in8.c:700: if (objtype>=8){// bei 16bit
	cjne	r6,#0x08,00118$
00118$:
	jc	00106$
	C$fb_app_in8.c$701$3$3 ==.
;	../fb_app_in8.c:701: if (objno>=8 && objno<=9)objvalue=zaehlervalue[objno&0x01];//objvalue=objvalue<<8;
	cjne	r7,#0x08,00120$
00120$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x09
	jc	00102$
	mov	a,#0x01
	anl	a,r7
	add	a,acc
	add	a,#_zaehlervalue
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	ljmp	00110$
00102$:
	C$fb_app_in8.c$703$4$4 ==.
;	../fb_app_in8.c:703: objvalue=objectvalue_h[objno&0x07]<<8;
	mov	a,#0x07
	anl	a,r7
	mov	r6,a
	add	a,#_objectvalue_h
	mov	r1,a
	mov	ar7,@r1
	mov	ar5,r7
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar5
	mov	a,r5
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$fb_app_in8.c$704$4$4 ==.
;	../fb_app_in8.c:704: objvalue+=(objectvalue_l[objno&0x07]);
	mov	a,r6
	add	a,#_objectvalue_l
	mov	r1,a
	mov	ar7,@r1
	mov	ar3,r7
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00110$
00106$:
	C$fb_app_in8.c$707$2$2 ==.
;	../fb_app_in8.c:707: else objvalue = objectvalue_l[objno]&(0xFF>>(7-objtype));
	mov	a,r7
	add	a,#_objectvalue_l
	mov	r1,a
	mov	ar7,@r1
	mov	r5,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	b,r6
	inc	b
	mov	a,#0xFF
	sjmp	00124$
00123$:
	clr	c
	rrc	a
00124$:
	djnz	b,00123$
	mov	r6,a
	anl	ar7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	sjmp	00110$
00109$:
	C$fb_app_in8.c$710$2$5 ==.
;	../fb_app_in8.c:710: objvalue=(Sperre>>(objno-16))&0x01;
	mov	ar6,r7
	mov	r7,#0x00
	mov	a,r6
	add	a,#0xF0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	b,r6
	inc	b
	mov	a,_Sperre
	sjmp	00126$
00125$:
	clr	c
	rrc	a
00126$:
	djnz	b,00125$
	anl	a,#0x01
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
00110$:
	C$fb_app_in8.c$712$1$1 ==.
;	../fb_app_in8.c:712: return(objvalue);	
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	mov	sp,_bp
	pop	_bp
	C$fb_app_in8.c$714$1$1 ==.
	XG$read_obj_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_value'
;------------------------------------------------------------
;objvalue                  Allocated to stack - _bp -6
;objno                     Allocated to registers r7 
;objtype                   Allocated to registers r6 
;------------------------------------------------------------
	G$write_obj_value$0$0 ==.
	C$fb_app_in8.c$718$1$1 ==.
;	../fb_app_in8.c:718: void write_obj_value(unsigned char objno,long objvalue)
;	-----------------------------------------
;	 function write_obj_value
;	-----------------------------------------
_write_obj_value:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$fb_app_in8.c$722$1$1 ==.
;	../fb_app_in8.c:722: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	add	a,r7
	add	a,r7
	add	a,r7
	add	a,#0x04
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	C$fb_app_in8.c$724$1$1 ==.
;	../fb_app_in8.c:724: if (objno <= 15) {	// wenn objno <= anzahl objekte
	mov	a,r7
	add	a,#0xff - 0x0F
	jc	00109$
	C$fb_app_in8.c$725$2$2 ==.
;	../fb_app_in8.c:725: if (objtype>=8){
	cjne	r6,#0x08,00118$
00118$:
	jc	00106$
	C$fb_app_in8.c$727$3$3 ==.
;	../fb_app_in8.c:727: if (objno>=8 && objno<=9)zaehlervalue[objno&0x01]=objvalue ;
	cjne	r7,#0x08,00120$
00120$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x09
	jc	00102$
	mov	a,#0x01
	anl	a,r7
	add	a,acc
	add	a,#_zaehlervalue
	mov	r1,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	sjmp	00111$
00102$:
	C$fb_app_in8.c$729$4$4 ==.
;	../fb_app_in8.c:729: objectvalue_h[objno&0x07]=(objvalue>>8);
	mov	a,#0x07
	anl	a,r7
	mov	r6,a
	add	a,#_objectvalue_h
	mov	r1,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	inc	r0
	mov	ar5,@r0
	mov	@r1,ar5
	C$fb_app_in8.c$730$4$4 ==.
;	../fb_app_in8.c:730: objectvalue_l[objno&0x07]=objvalue & 0xFF;
	mov	a,r6
	add	a,#_objectvalue_l
	mov	r1,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	@r1,ar3
	sjmp	00111$
00106$:
	C$fb_app_in8.c$733$2$2 ==.
;	../fb_app_in8.c:733: else 			objectvalue_l[objno]=objvalue & 0xFF;		
	mov	a,r7
	add	a,#_objectvalue_l
	mov	r1,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	@r1,ar3
	sjmp	00111$
00109$:
	C$fb_app_in8.c$736$2$5 ==.
;	../fb_app_in8.c:736: Sperre &= (0xff-(bitmask_1[objno-16]));
	mov	a,r7
	add	a,#0xF0
	mov	r7,a
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r6
	anl	_Sperre,a
	C$fb_app_in8.c$737$2$5 ==.
;	../fb_app_in8.c:737: Sperre |= ((objvalue&0x01)<<(objno-16));
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,#0x01
	anl	a,@r0
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	b,r7
	inc	b
	mov	a,r3
	sjmp	00125$
00123$:
	add	a,acc
00125$:
	djnz	b,00123$
	mov	r7,a
	mov	a,_Sperre
	mov	r6,a
	orl	ar7,a
	mov	_Sperre,r7
00111$:
	pop	_bp
	C$fb_app_in8.c$739$1$1 ==.
	XG$write_obj_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
	G$restart_app$0$0 ==.
	C$fb_app_in8.c$786$1$1 ==.
;	../fb_app_in8.c:786: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
	C$fb_app_in8.c$799$1$1 ==.
;	../fb_app_in8.c:799: P0M1=0x00;	// P0_1 Biderektional, Rest PushPull
	mov	_P0M1,#0x00
	C$fb_app_in8.c$800$1$1 ==.
;	../fb_app_in8.c:800: P0M2=0xFD;
	mov	_P0M2,#0xFD
	C$fb_app_in8.c$801$1$1 ==.
;	../fb_app_in8.c:801: P0=0x22;	// WRITE=1 SER_IN=1
	mov	_P0,#0x22
	C$fb_app_in8.c$804$1$1 ==.
;	../fb_app_in8.c:804: RTCCON=0x81;		// RTC starten
	mov	_RTCCON,#0x81
	C$fb_app_in8.c$806$1$1 ==.
;	../fb_app_in8.c:806: timer=0;			// Timer-Variable, wird alle 65ms inkrementiert
	clr	a
	mov	_timer,a
	mov	(_timer + 1),a
	C$fb_app_in8.c$823$1$1 ==.
	XG$restart_app$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
