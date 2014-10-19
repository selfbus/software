;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
; This file was generated Mon Oct 20 00:26:12 2014
;--------------------------------------------------------
	.module fb_lpc922
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeprom
	.globl _read_obj_value
	.globl _read_value_req
	.globl _write_value_req
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
	.globl _inc_pcount
	.globl _connected
	.globl _transparency
	.globl _send_nack
	.globl _send_ack
	.globl _wait_for_ack
	.globl _fbtx_bit
	.globl _auto_ack
	.globl _tel_sent
	.globl _tel_arrived
	.globl _its_me
	.globl _nack
	.globl _ack
	.globl _fb_parity
	.globl _interrupted
	.globl _parity_ok
	.globl _connected_timeout
	.globl _status60
	.globl _tx_nextsend
	.globl _tx_nextwrite
	.globl _RAM
	.globl _repeat_count
	.globl _fb_state
	.globl _fb_pattern
	.globl _fbrx_byte
	.globl _cs
	.globl _telpos
	.globl _tx_buffer
	.globl _telegramm
	.globl _senders_pcount
	.globl _mem_adrl
	.globl _mem_adrh
	.globl _mem_length
	.globl _pcount
	.globl _conl
	.globl _conh
	.globl _X1_int
	.globl _T1_int
	.globl _init_rx
	.globl _init_tx
	.globl _gapos_in_gat
	.globl _build_tel
	.globl _send_obj_value
	.globl _process_tel
	.globl _set_pa
	.globl _read_objflags
	.globl _restart_hw
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
G$conh$0$0==.
_conh::
	.ds 1
G$conl$0$0==.
_conl::
	.ds 1
G$pcount$0$0==.
_pcount::
	.ds 1
G$mem_length$0$0==.
_mem_length::
	.ds 1
G$mem_adrh$0$0==.
_mem_adrh::
	.ds 1
G$mem_adrl$0$0==.
_mem_adrl::
	.ds 1
G$senders_pcount$0$0==.
_senders_pcount::
	.ds 1
G$telegramm$0$0==.
_telegramm::
	.ds 23
G$tx_buffer$0$0==.
_tx_buffer::
	.ds 8
G$telpos$0$0==.
_telpos::
	.ds 1
G$cs$0$0==.
_cs::
	.ds 1
G$fbrx_byte$0$0==.
_fbrx_byte::
	.ds 1
G$fb_pattern$0$0==.
_fb_pattern::
	.ds 1
G$fb_state$0$0==.
_fb_state::
	.ds 1
G$repeat_count$0$0==.
_repeat_count::
	.ds 1
G$RAM$0$0 == 0x0000
_RAM	=	0x0000
G$tx_nextwrite$0$0==.
_tx_nextwrite::
	.ds 1
G$tx_nextsend$0$0==.
_tx_nextsend::
	.ds 1
G$status60$0$0==.
_status60::
	.ds 1
G$connected_timeout$0$0==.
_connected_timeout::
	.ds 1
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
G$parity_ok$0$0==.
_parity_ok::
	.ds 1
G$interrupted$0$0==.
_interrupted::
	.ds 1
G$fb_parity$0$0==.
_fb_parity::
	.ds 1
G$ack$0$0==.
_ack::
	.ds 1
G$nack$0$0==.
_nack::
	.ds 1
G$its_me$0$0==.
_its_me::
	.ds 1
G$tel_arrived$0$0==.
_tel_arrived::
	.ds 1
G$tel_sent$0$0==.
_tel_sent::
	.ds 1
G$auto_ack$0$0==.
_auto_ack::
	.ds 1
G$fbtx_bit$0$0==.
_fbtx_bit::
	.ds 1
G$wait_for_ack$0$0==.
_wait_for_ack::
	.ds 1
G$send_ack$0$0==.
_send_ack::
	.ds 1
G$send_nack$0$0==.
_send_nack::
	.ds 1
G$transparency$0$0==.
_transparency::
	.ds 1
G$connected$0$0==.
_connected::
	.ds 1
G$inc_pcount$0$0==.
_inc_pcount::
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
;Allocation info for local variables in function 'X1_int'
;------------------------------------------------------------
	G$X1_int$0$0 ==.
	C$fb_lpc922.c$54$0$0 ==.
;	../fb_lpc922.c:54: void X1_int(void) __interrupt (2)		// Flanke des Startbits löst int1 aus
;	-----------------------------------------
;	 function X1_int
;	-----------------------------------------
_X1_int:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	psw
	C$fb_lpc922.c$57$1$1 ==.
;	../fb_lpc922.c:57: EX1=0;			// int1 stoppen								1 cycle = 0,27127us
	clr	_IEN0_2
	C$fb_lpc922.c$58$1$1 ==.
;	../fb_lpc922.c:58: TR1=0;			// Timer 1 stoppen
	clr	_TCON_6
	C$fb_lpc922.c$59$1$1 ==.
;	../fb_lpc922.c:59: TMOD=(TMOD & 0x0F) + 0x20;	// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
	C$fb_lpc922.c$60$1$1 ==.
;	../fb_lpc922.c:60: TL1=53;//108;//128;		// Timer laden so dass in state 2 bei 75µs abgefragt wird
	mov	_TL1,#0x35
	C$fb_lpc922.c$61$1$1 ==.
;	../fb_lpc922.c:61: TH1=128;//128;			// autoreload auf 35µs setzen (gilt für sprung von 2 auf 3)
	mov	_TH1,#0x80
	C$fb_lpc922.c$62$1$1 ==.
;	../fb_lpc922.c:62: TF1=0;			// Timer1-flag löschen						1 cycle
	clr	_TCON_7
	C$fb_lpc922.c$63$1$1 ==.
;	../fb_lpc922.c:63: TR1=1;			// Timer1 starten							1 cycle
	setb	_TCON_6
	C$fb_lpc922.c$64$1$1 ==.
;	../fb_lpc922.c:64: ET1=1;			// Timer1-int aktiv							1 cycle
	setb	_IEN0_3
	C$fb_lpc922.c$65$1$1 ==.
;	../fb_lpc922.c:65: fb_state=2;		// nächster state
	mov	_fb_state,#0x02
	C$fb_lpc922.c$66$1$1 ==.
;	../fb_lpc922.c:66: fb_parity=0;	// Parity Bit löschen
	clr	_fb_parity
	C$fb_lpc922.c$67$1$1 ==.
;	../fb_lpc922.c:67: parity_ok=1;	// wird bei Fehler gelöscht
	setb	_parity_ok
	C$fb_lpc922.c$68$1$1 ==.
;	../fb_lpc922.c:68: fb_pattern=0;
	mov	_fb_pattern,#0x00
	C$fb_lpc922.c$69$1$1 ==.
;	../fb_lpc922.c:69: fbrx_byte=0;
	mov	_fbrx_byte,#0x00
	C$fb_lpc922.c$70$1$1 ==.
;	../fb_lpc922.c:70: interrupted=1;	// signalisiert app, dass unterbrochen wurde
	setb	_interrupted
	pop	psw
	pop	acc
	C$fb_lpc922.c$71$1$1 ==.
	XG$X1_int$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'T1_int'
;------------------------------------------------------------
;fbrx_bit                  Allocated to registers b0 
;send_byte                 Allocated to registers r7 
;------------------------------------------------------------
	G$T1_int$0$0 ==.
	C$fb_lpc922.c$75$1$1 ==.
;	../fb_lpc922.c:75: void T1_int(void) __interrupt (3) 	// Timer 1 Interrupt
;	-----------------------------------------
;	 function T1_int
;	-----------------------------------------
_T1_int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$fb_lpc922.c$81$1$1 ==.
;	../fb_lpc922.c:81: switch (fb_state){
	mov	a,_fb_state
	mov	r7,a
	add	a,#0xff - 0x0E
	jnc	00269$
	ljmp	00217$
00269$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00270$
	jmp	@a+dptr
00270$:
	ljmp	00101$
	ljmp	00217$
	ljmp	00115$
	ljmp	00151$
	ljmp	00152$
	ljmp	00173$
	ljmp	00217$
	ljmp	00217$
	ljmp	00217$
	ljmp	00217$
	ljmp	00180$
	ljmp	00201$
	ljmp	00217$
	ljmp	00208$
	ljmp	00216$
	C$fb_lpc922.c$85$2$2 ==.
;	../fb_lpc922.c:85: case 0:
00101$:
	C$fb_lpc922.c$86$2$2 ==.
;	../fb_lpc922.c:86: TR1=0;			// Timer 1 stoppen
	clr	_TCON_6
	C$fb_lpc922.c$87$2$2 ==.
;	../fb_lpc922.c:87: TMOD=(TMOD & 0x0F) + 0x20;	// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
	C$fb_lpc922.c$88$2$2 ==.
;	../fb_lpc922.c:88: TL1=128;		// Timer laden
	mov	_TL1,#0x80
	C$fb_lpc922.c$89$2$2 ==.
;	../fb_lpc922.c:89: TH1=128;
	mov	_TH1,#0x80
	C$fb_lpc922.c$90$2$2 ==.
;	../fb_lpc922.c:90: TF1=0;			// Timer1-flag löschen						1 cycle
	clr	_TCON_7
	C$fb_lpc922.c$91$2$2 ==.
;	../fb_lpc922.c:91: TR1=1;			// Timer1 starten							1 cycle
	setb	_TCON_6
	C$fb_lpc922.c$92$2$2 ==.
;	../fb_lpc922.c:92: if(tx_nextsend != tx_nextwrite) { 			// wenn zu sendendes Objekt vorhanden
	mov	a,_tx_nextwrite
	cjne	a,_tx_nextsend,00271$
	sjmp	00113$
00271$:
	C$fb_lpc922.c$93$3$3 ==.
;	../fb_lpc922.c:93: if(build_tel(tx_buffer[tx_nextsend])) {	// wenn Telegramm gebildet werden konnte
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r1,a
	mov	dpl,@r1
	lcall	_build_tel
	jnc	00110$
	C$fb_lpc922.c$94$4$4 ==.
;	../fb_lpc922.c:94: EX1=0; 				//Um zu vermeiden dass man in die Abfrage hinein-empfängt
	clr	_IEN0_2
	C$fb_lpc922.c$95$4$4 ==.
;	../fb_lpc922.c:95: if(!fb_state) { 	//nur bilden wenn vorher kein rx_intit durch ext int kam
	mov	a,_fb_state
	jnz	00108$
	C$fb_lpc922.c$96$5$5 ==.
;	../fb_lpc922.c:96: if((tx_buffer[tx_nextsend]&0x20)==0) {	// wenn erstmaliges Senden des Objektes
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jb	acc.5,00103$
	C$fb_lpc922.c$97$6$6 ==.
;	../fb_lpc922.c:97: tx_buffer[tx_nextsend]|=0x20;		// Bit für "wird gerade gesendet"
	mov	a,#0x20
	orl	a,r7
	mov	@r1,a
	C$fb_lpc922.c$98$6$6 ==.
;	../fb_lpc922.c:98: repeat_count=0;						// Wiederholungszähler für nicht geackte Telegramme
	mov	_repeat_count,#0x00
00103$:
	C$fb_lpc922.c$100$5$5 ==.
;	../fb_lpc922.c:100: if (repeat_count<4) init_tx();		// Senden starten
	mov	a,#0x100 - 0x04
	add	a,_repeat_count
	jc	00105$
	lcall	_init_tx
	sjmp	00108$
00105$:
	C$fb_lpc922.c$102$6$7 ==.
;	../fb_lpc922.c:102: tx_nextsend++;
	inc	_tx_nextsend
	C$fb_lpc922.c$103$6$7 ==.
;	../fb_lpc922.c:103: tx_nextsend&=0x07;
	anl	_tx_nextsend,#0x07
	C$fb_lpc922.c$104$6$7 ==.
;	../fb_lpc922.c:104: wait_for_ack=0;
	clr	_wait_for_ack
	C$fb_lpc922.c$105$6$7 ==.
;	../fb_lpc922.c:105: inc_pcount=0;
	clr	_inc_pcount
	C$fb_lpc922.c$106$6$7 ==.
;	../fb_lpc922.c:106: init_rx();
	lcall	_init_rx
	C$fb_lpc922.c$107$6$7 ==.
;	../fb_lpc922.c:107: TR1=0;		// hier nicht noch einmal die ganze busfree Zeit warten
	clr	_TCON_6
	C$fb_lpc922.c$108$6$7 ==.
;	../fb_lpc922.c:108: TH1=0xF0;
	mov	_TH1,#0xF0
	C$fb_lpc922.c$109$6$7 ==.
;	../fb_lpc922.c:109: TL1=0x00;
	mov	_TL1,#0x00
	C$fb_lpc922.c$110$6$7 ==.
;	../fb_lpc922.c:110: TR1=1;
	setb	_TCON_6
00108$:
	C$fb_lpc922.c$113$4$4 ==.
;	../fb_lpc922.c:113: EX1=1;	// ext1 int einschalten falls Empfang...
	setb	_IEN0_2
	ljmp	00217$
00110$:
	C$fb_lpc922.c$116$4$8 ==.
;	../fb_lpc922.c:116: tx_nextsend++; //hier Zeiger erhöhen wenn Telegramm nicht gebildet werden konnte
	inc	_tx_nextsend
	C$fb_lpc922.c$117$4$8 ==.
;	../fb_lpc922.c:117: tx_nextsend&=0x07;
	anl	_tx_nextsend,#0x07
	ljmp	00217$
00113$:
	C$fb_lpc922.c$121$3$9 ==.
;	../fb_lpc922.c:121: TR1=0;		// nichts mehr zu tun, also statemachine stoppen
	clr	_TCON_6
	C$fb_lpc922.c$122$3$9 ==.
;	../fb_lpc922.c:122: EX1=1;		// sicherstellen, dass ext. Int. 1 aktiv ist
	setb	_IEN0_2
	C$fb_lpc922.c$124$2$2 ==.
;	../fb_lpc922.c:124: break;
	ljmp	00217$
	C$fb_lpc922.c$127$2$2 ==.
;	../fb_lpc922.c:127: case 2: // T=75us
00115$:
	C$fb_lpc922.c$128$2$2 ==.
;	../fb_lpc922.c:128: fbrx_bit=!IE1;				// Flipflop des ext. Int. 1 auslesen, ist 1 bei fallender Flanke am Pin
	mov	c,_TCON_3
	cpl	c
	mov	b0,c
	C$fb_lpc922.c$129$2$2 ==.
;	../fb_lpc922.c:129: IE1=0;						// Flipflop zurücksetzen
	clr	_TCON_3
	C$fb_lpc922.c$130$2$2 ==.
;	../fb_lpc922.c:130: fb_state=3;// nächster state: 3
	mov	_fb_state,#0x03
	C$fb_lpc922.c$131$2$2 ==.
;	../fb_lpc922.c:131: TH1=0;// reload auf 70µs (zeit swischen state 3 und 2)
	mov	_TH1,#0x00
	C$fb_lpc922.c$132$2$2 ==.
;	../fb_lpc922.c:132: if(fb_pattern==0) {			// fb_pattern=0 bedeutet, dass bisher nur das Startbit empfangen wurde
	mov	a,_fb_pattern
	jnz	00149$
	C$fb_lpc922.c$133$3$10 ==.
;	../fb_lpc922.c:133: fb_pattern=1;			// 70us nach Startbit, als näcstes kommt Datenbit 0
	mov	_fb_pattern,#0x01
	C$fb_lpc922.c$134$3$10 ==.
;	../fb_lpc922.c:134: ack=0;					// Empfang eines neuen Bytes, also ack/nack Flags zurücksetzen
	clr	_ack
	C$fb_lpc922.c$135$3$10 ==.
;	../fb_lpc922.c:135: nack=0;
	clr	_nack
	ljmp	00217$
00149$:
	C$fb_lpc922.c$138$3$11 ==.
;	../fb_lpc922.c:138: if(fb_pattern<129) {					// Daten-Bit LSB first
	mov	a,#0x100 - 0x81
	add	a,_fb_pattern
	jc	00146$
	C$fb_lpc922.c$139$4$12 ==.
;	../fb_lpc922.c:139: if(fbrx_bit) {
	jnb	b0,00117$
	C$fb_lpc922.c$140$5$13 ==.
;	../fb_lpc922.c:140: fb_parity=!fb_parity;			// Paritybit berechnen
	cpl	_fb_parity
	C$fb_lpc922.c$141$5$13 ==.
;	../fb_lpc922.c:141: fbrx_byte+=fb_pattern;			// Datenbit speichern
	mov	a,_fb_pattern
	add	a,_fbrx_byte
	mov	_fbrx_byte,a
00117$:
	C$fb_lpc922.c$143$4$12 ==.
;	../fb_lpc922.c:143: fb_pattern=fb_pattern<<1;			// nächstes Bit
	mov	a,_fb_pattern
	add	a,_fb_pattern
	C$fb_lpc922.c$144$4$12 ==.
;	../fb_lpc922.c:144: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gelesen, Parity-Bit folgt
	mov	_fb_pattern,a
	jz	00279$
	ljmp	00217$
00279$:
	mov	_fb_pattern,#0x81
	ljmp	00217$
00146$:
	C$fb_lpc922.c$147$4$14 ==.
;	../fb_lpc922.c:147: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$148$4$14 ==.
;	../fb_lpc922.c:148: TF1=0; //prüfen ob erforderlich!!!
	clr	_TCON_7
	C$fb_lpc922.c$149$4$14 ==.
;	../fb_lpc922.c:149: if(fb_parity==fbrx_bit) {				// Parity-Bit OK
	mov	c,_fb_parity
	jb	b0,00280$
	cpl	c
00280$:
	jnc	00130$
	C$fb_lpc922.c$150$5$15 ==.
;	../fb_lpc922.c:150: if (telpos==0) {						// erstes empfangenes Byte
	mov	a,_telpos
	jnz	00125$
	C$fb_lpc922.c$151$6$16 ==.
;	../fb_lpc922.c:151: if (fbrx_byte==0xCC) ack=1;				// ACK empfangen
	mov	a,#0xCC
	cjne	a,_fbrx_byte,00121$
	setb	_ack
00121$:
	C$fb_lpc922.c$152$6$16 ==.
;	../fb_lpc922.c:152: if (fbrx_byte==0x0C) nack=1;			// NACK empfangen
	mov	a,#0x0C
	cjne	a,_fbrx_byte,00125$
	setb	_nack
00125$:
	C$fb_lpc922.c$154$5$15 ==.
;	../fb_lpc922.c:154: if (!ack && !nack) {					// Datenbyte empfangen
	jb	_ack,00131$
	jb	_nack,00131$
	C$fb_lpc922.c$155$6$17 ==.
;	../fb_lpc922.c:155: telegramm[telpos]=fbrx_byte;			// Byte speichern
	mov	a,_telpos
	add	a,#_telegramm
	mov	r0,a
	C$fb_lpc922.c$156$6$17 ==.
;	../fb_lpc922.c:156: cs^=fbrx_byte;							// Checksum berechnen
	mov	a,_fbrx_byte
	mov	@r0,a
	xrl	_cs,a
	C$fb_lpc922.c$157$6$17 ==.
;	../fb_lpc922.c:157: telpos++;								// Telegrammzeiger erhöhen
	inc	_telpos
	sjmp	00131$
00130$:
	C$fb_lpc922.c$160$4$14 ==.
;	../fb_lpc922.c:160: else parity_ok=0;						// Parity Error
	clr	_parity_ok
00131$:
	C$fb_lpc922.c$162$4$14 ==.
;	../fb_lpc922.c:162: if (wait_for_ack) {						// es wird ein ACK erwartet
	C$fb_lpc922.c$163$5$18 ==.
;	../fb_lpc922.c:163: wait_for_ack=0;							// Flag zurücksetzen, da wir es ja gerade abarbeiten
	jbc	_wait_for_ack,00289$
	sjmp	00143$
00289$:
	C$fb_lpc922.c$164$5$18 ==.
;	../fb_lpc922.c:164: if (ack && parity_ok) {					// ACK empfangen und auch erwartet
	jnb	_ack,00135$
	jnb	_parity_ok,00135$
	C$fb_lpc922.c$165$6$19 ==.
;	../fb_lpc922.c:165: repeat_count=4;						// keine Wiederholtelegramme mehr senden
	mov	_repeat_count,#0x04
	C$fb_lpc922.c$166$6$19 ==.
;	../fb_lpc922.c:166: if(inc_pcount) {
	C$fb_lpc922.c$167$7$20 ==.
;	../fb_lpc922.c:167: inc_pcount=0;
	jbc	_inc_pcount,00292$
	sjmp	00135$
00292$:
	C$fb_lpc922.c$168$7$20 ==.
;	../fb_lpc922.c:168: pcount+=4;
	mov	a,_pcount
	add	a,#0x04
	mov	_pcount,a
	C$fb_lpc922.c$169$7$20 ==.
;	../fb_lpc922.c:169: pcount&=0x3C;
	anl	_pcount,#0x3C
00135$:
	C$fb_lpc922.c$172$5$18 ==.
;	../fb_lpc922.c:172: init_rx();
	lcall	_init_rx
	ljmp	00217$
00143$:
	C$fb_lpc922.c$175$5$21 ==.
;	../fb_lpc922.c:175: if (parity_ok && (!ack && !nack)) {		// ganz normales Datenbyte
	jnb	_parity_ok,00138$
	jb	_ack,00138$
	jb	_nack,00138$
	C$fb_lpc922.c$176$6$22 ==.
;	../fb_lpc922.c:176: TMOD=(TMOD & 0x0F) +0x10;			// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$177$6$22 ==.
;	../fb_lpc922.c:177: TH1=0xFA;//0xFA;							// Timer 1 auf Timeout-Position setzen (370us)
	mov	_TH1,#0xFA
	C$fb_lpc922.c$178$6$22 ==.
;	../fb_lpc922.c:178: TL1=0x70;//4f 0xAB; (bis hierher sinds 91µs)
	mov	_TL1,#0x70
	C$fb_lpc922.c$179$6$22 ==.
;	../fb_lpc922.c:179: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$180$6$22 ==.
;	../fb_lpc922.c:180: fb_state=4;							// nächster state: timeout = Telegramm fertig
	mov	_fb_state,#0x04
	C$fb_lpc922.c$181$6$22 ==.
;	../fb_lpc922.c:181: EX1=1;								// int1 aktiv, falls noch ein Byte kommt
	setb	_IEN0_2
	ljmp	00217$
00138$:
	C$fb_lpc922.c$183$5$21 ==.
;	../fb_lpc922.c:183: else init_rx();							// irgendwas empfangen
	lcall	_init_rx
	C$fb_lpc922.c$187$2$2 ==.
;	../fb_lpc922.c:187: break;
	ljmp	00217$
	C$fb_lpc922.c$189$2$2 ==.
;	../fb_lpc922.c:189: case 3: // T=104us=0us
00151$:
	C$fb_lpc922.c$190$2$2 ==.
;	../fb_lpc922.c:190: TH1=128;// reload auf 35µs (Zeit zwischen State 2 und 3)
	mov	_TH1,#0x80
	C$fb_lpc922.c$191$2$2 ==.
;	../fb_lpc922.c:191: fb_state=2;//1
	mov	_fb_state,#0x02
	C$fb_lpc922.c$192$2$2 ==.
;	../fb_lpc922.c:192: break;
	ljmp	00217$
	C$fb_lpc922.c$194$2$2 ==.
;	../fb_lpc922.c:194: case 4:	//	Timeout, d.h. Telegramm-Ende
00152$:
	C$fb_lpc922.c$195$2$2 ==.
;	../fb_lpc922.c:195: if (auto_ack && telpos>4) {		// wenn ACK gesendet werden soll und Telegramm zumindest 5 Bytes hat
	jnb	_auto_ack,00170$
	mov	a,_telpos
	add	a,#0xff - 0x04
	jnc	00170$
	C$fb_lpc922.c$196$3$23 ==.
;	../fb_lpc922.c:196: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$197$3$23 ==.
;	../fb_lpc922.c:197: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$198$3$23 ==.
;	../fb_lpc922.c:198: TH1=0xEF;					// Timer 1 auf ACK-Position setzen (15 Bit Pause = 2708µs (26 Bit) nach Beginn Startbit vom letzten Datenbyte)
	mov	_TH1,#0xEF
	C$fb_lpc922.c$199$3$23 ==.
;	../fb_lpc922.c:199: TL1=0x42;
	mov	_TL1,#0x42
	C$fb_lpc922.c$200$3$23 ==.
;	../fb_lpc922.c:200: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$201$3$23 ==.
;	../fb_lpc922.c:201: its_me=transparency;			// indiziert, ob dieses Gerät adressiert wurde, bei transparecy=1 immer
	mov	c,_transparency
	mov	_its_me,c
	C$fb_lpc922.c$202$3$23 ==.
;	../fb_lpc922.c:202: if(telegramm[5]&0x80) {
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00162$
	C$fb_lpc922.c$203$4$24 ==.
;	../fb_lpc922.c:203: if (gapos_in_gat(telegramm[3],telegramm[4])!=0xFF) its_me=1;	// Gruppenadresse
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	cjne	r7,#0xFF,00299$
	sjmp	00154$
00299$:
	setb	_its_me
00154$:
	C$fb_lpc922.c$204$4$24 ==.
;	../fb_lpc922.c:204: if (telegramm[3]==0 && telegramm[4]==0) its_me=1;				// Broadcast
	mov	a,(_telegramm + 0x0003)
	jnz	00163$
	mov	a,(_telegramm + 0x0004)
	jnz	00163$
	setb	_its_me
	sjmp	00163$
00162$:
	C$fb_lpc922.c$206$3$23 ==.
;	../fb_lpc922.c:206: else if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) its_me=1;	// phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,(_telegramm + 0x0003),00163$
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,(_telegramm + 0x0004),00163$
	setb	_its_me
00163$:
	C$fb_lpc922.c$207$3$23 ==.
;	../fb_lpc922.c:207: if ((cs==0xFF) && its_me) tel_arrived=1;
	mov	a,#0xFF
	cjne	a,_cs,00165$
	jnb	_its_me,00165$
	setb	_tel_arrived
00165$:
	C$fb_lpc922.c$208$3$23 ==.
;	../fb_lpc922.c:208: fb_state=5;					// nächster state: ACK-Position erreicht
	mov	_fb_state,#0x05
	ljmp	00217$
00170$:
	C$fb_lpc922.c$212$3$25 ==.
;	../fb_lpc922.c:212: if (telpos>1) tel_arrived=1;	// trotzdem den Eingang eines Telegramms anzeigen
	mov	a,_telpos
	add	a,#0xff - 0x01
	jnc	00168$
	setb	_tel_arrived
00168$:
	C$fb_lpc922.c$213$3$25 ==.
;	../fb_lpc922.c:213: init_rx();						// wieder in den Empfang zurück
	lcall	_init_rx
	C$fb_lpc922.c$215$2$2 ==.
;	../fb_lpc922.c:215: break;
	ljmp	00217$
	C$fb_lpc922.c$217$2$2 ==.
;	../fb_lpc922.c:217: case 5:	// ACK-Position erreicht
00173$:
	C$fb_lpc922.c$218$2$2 ==.
;	../fb_lpc922.c:218: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$219$2$2 ==.
;	../fb_lpc922.c:219: if (cs==0xFF) {	// Checksum OK
	mov	a,#0xFF
	cjne	a,_cs,00178$
	C$fb_lpc922.c$220$3$26 ==.
;	../fb_lpc922.c:220: if (its_me) {					// Gerät adressiert
	jnb	_its_me,00175$
	C$fb_lpc922.c$221$4$27 ==.
;	../fb_lpc922.c:221: send_ack=1;
	setb	_send_ack
	C$fb_lpc922.c$222$4$27 ==.
;	../fb_lpc922.c:222: init_tx();						// Senden initiieren
	lcall	_init_tx
	C$fb_lpc922.c$223$4$27 ==.
;	../fb_lpc922.c:223: wait_for_ack=0;					// bei ACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
	ljmp	00217$
00175$:
	C$fb_lpc922.c$225$3$26 ==.
;	../fb_lpc922.c:225: else init_rx();					// Gerät nicht adressiert, also zurück zu Empfang
	lcall	_init_rx
	ljmp	00217$
00178$:
	C$fb_lpc922.c$228$3$28 ==.
;	../fb_lpc922.c:228: send_nack=1;
	setb	_send_nack
	C$fb_lpc922.c$229$3$28 ==.
;	../fb_lpc922.c:229: init_tx();
	lcall	_init_tx
	C$fb_lpc922.c$230$3$28 ==.
;	../fb_lpc922.c:230: wait_for_ack=0;					// bei NACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
	C$fb_lpc922.c$232$2$2 ==.
;	../fb_lpc922.c:232: break;
	ljmp	00217$
	C$fb_lpc922.c$236$2$2 ==.
;	../fb_lpc922.c:236: case 10:	// Byte Senden, T=0us
00180$:
	C$fb_lpc922.c$237$2$2 ==.
;	../fb_lpc922.c:237: send_byte=telegramm[telpos];
	mov	a,_telpos
	add	a,#_telegramm
	mov	r1,a
	mov	ar7,@r1
	C$fb_lpc922.c$238$2$2 ==.
;	../fb_lpc922.c:238: if (send_ack) send_byte=0xCC;
	jnb	_send_ack,00182$
	mov	r7,#0xCC
00182$:
	C$fb_lpc922.c$239$2$2 ==.
;	../fb_lpc922.c:239: if (send_nack) send_byte=0x0C;
	jnb	_send_nack,00184$
	mov	r7,#0x0C
00184$:
	C$fb_lpc922.c$240$2$2 ==.
;	../fb_lpc922.c:240: EX1=0;					// Empfang verhindern
	clr	_IEN0_2
	C$fb_lpc922.c$241$2$2 ==.
;	../fb_lpc922.c:241: if(fb_state==10){
	mov	a,#0x0A
	cjne	a,_fb_state,00315$
	sjmp	00316$
00315$:
	ljmp	00217$
00316$:
	C$fb_lpc922.c$242$3$29 ==.
;	../fb_lpc922.c:242: if (fb_pattern<=128) {			// Startbit und Datenbits (pattern=0:startbit, 1 2 4 8 .. 128 Datenbits, 129 parity)
	mov	a,_fb_pattern
	add	a,#0xff - 0x80
	jc	00197$
	C$fb_lpc922.c$243$4$30 ==.
;	../fb_lpc922.c:243: if ((send_byte & fb_pattern)==0) {	// wenn Bit logisch 0 ist
	mov	a,_fb_pattern
	anl	a,r7
	jnz	00186$
	C$fb_lpc922.c$245$5$31 ==.
;	../fb_lpc922.c:245: FBOUTC=1;						// Bus runter ziehen
	setb	_P1_6
	C$fb_lpc922.c$247$5$31 ==.
;	../fb_lpc922.c:247: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
	clr	_fbtx_bit
	C$fb_lpc922.c$248$5$31 ==.
;	../fb_lpc922.c:248: fb_parity=!fb_parity;			// Parity-Bit berechnen
	cpl	_fb_parity
	sjmp	00187$
00186$:
	C$fb_lpc922.c$250$4$30 ==.
;	../fb_lpc922.c:250: else fbtx_bit=1;
	setb	_fbtx_bit
00187$:
	C$fb_lpc922.c$251$4$30 ==.
;	../fb_lpc922.c:251: if (fb_pattern==0) {				// wenn Startbit: parity zurücksetzen
	mov	a,_fb_pattern
	jnz	00189$
	C$fb_lpc922.c$252$5$32 ==.
;	../fb_lpc922.c:252: fb_pattern=1;					// auf erstes Datenbit zeigen
	mov	_fb_pattern,#0x01
	C$fb_lpc922.c$253$5$32 ==.
;	../fb_lpc922.c:253: fb_parity=0;
	clr	_fb_parity
	sjmp	00190$
00189$:
	C$fb_lpc922.c$255$4$30 ==.
;	../fb_lpc922.c:255: else fb_pattern=fb_pattern<<1;		// nächstes Datenbit
	mov	a,_fb_pattern
	add	a,_fb_pattern
	mov	_fb_pattern,a
00190$:
	C$fb_lpc922.c$256$4$30 ==.
;	../fb_lpc922.c:256: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gesendet, Parity-Bit folgt
	mov	a,_fb_pattern
	jnz	00192$
	mov	_fb_pattern,#0x81
00192$:
	C$fb_lpc922.c$257$4$30 ==.
;	../fb_lpc922.c:257: fb_state=11;
	mov	_fb_state,#0x0B
	sjmp	00198$
00197$:
	C$fb_lpc922.c$260$4$33 ==.
;	../fb_lpc922.c:260: if (!fb_parity) {				// wenn Parity-Bit logisch 0
	jb	_fb_parity,00194$
	C$fb_lpc922.c$261$5$34 ==.
;	../fb_lpc922.c:261: FBOUTC=1;						// Bus runterziehen
	setb	_P1_6
	C$fb_lpc922.c$262$5$34 ==.
;	../fb_lpc922.c:262: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
	clr	_fbtx_bit
	sjmp	00195$
00194$:
	C$fb_lpc922.c$264$4$33 ==.
;	../fb_lpc922.c:264: else fbtx_bit=1;
	setb	_fbtx_bit
00195$:
	C$fb_lpc922.c$265$4$33 ==.
;	../fb_lpc922.c:265: telpos++;					// nächstes Byte
	inc	_telpos
	C$fb_lpc922.c$266$4$33 ==.
;	../fb_lpc922.c:266: fb_pattern=0;				// wieder mit Startbit beginnen
	mov	_fb_pattern,#0x00
	C$fb_lpc922.c$267$4$33 ==.
;	../fb_lpc922.c:267: fb_state=13;				// Prüfen ob Telegramm fertig
	mov	_fb_state,#0x0D
00198$:
	C$fb_lpc922.c$269$3$29 ==.
;	../fb_lpc922.c:269: TH1=18; //reload 70µ -delay interrupt (von state 11 auf 13)
	mov	_TH1,#0x12
	C$fb_lpc922.c$271$2$2 ==.
;	../fb_lpc922.c:271: break;
	ljmp	00217$
	C$fb_lpc922.c$273$2$2 ==.
;	../fb_lpc922.c:273: case 11:	// Sendestufe aus, T=35us
00201$:
	C$fb_lpc922.c$274$2$2 ==.
;	../fb_lpc922.c:274: if(telpos==0 && fb_pattern==1) {	// 1. Byte Startbit
	mov	a,_telpos
	jnz	00203$
	mov	a,#0x01
	cjne	a,_fb_pattern,00203$
	C$fb_lpc922.c$275$3$35 ==.
;	../fb_lpc922.c:275: repeat_count++;		// angefangener Sendeversuch, also Zähler erhöhen
	inc	_repeat_count
00203$:
	C$fb_lpc922.c$277$2$2 ==.
;	../fb_lpc922.c:277: FBOUTC=0;				// Sendestufe aus
	clr	_P1_6
	C$fb_lpc922.c$278$2$2 ==.
;	../fb_lpc922.c:278: if (fbtx_bit & IE1) {	// Kollision
	mov	c,_fbtx_bit
	anl	c,_TCON_3
	jnc	00206$
	C$fb_lpc922.c$279$3$36 ==.
;	../fb_lpc922.c:279: wait_for_ack=0;
	clr	_wait_for_ack
	C$fb_lpc922.c$280$3$36 ==.
;	../fb_lpc922.c:280: init_rx();				// Senden abbrechen und Empfang initialisieren
	lcall	_init_rx
	sjmp	00207$
00206$:
	C$fb_lpc922.c$283$3$37 ==.
;	../fb_lpc922.c:283: fb_state=10;//12;
	mov	_fb_state,#0x0A
	C$fb_lpc922.c$284$3$37 ==.
;	../fb_lpc922.c:284: TH1=110;// 35µs + delay (von state 10 auf 11)
	mov	_TH1,#0x6E
00207$:
	C$fb_lpc922.c$286$2$2 ==.
;	../fb_lpc922.c:286: IE1=0;					// Flipflop löschen
	clr	_TCON_3
	C$fb_lpc922.c$287$2$2 ==.
;	../fb_lpc922.c:287: break;
	C$fb_lpc922.c$293$2$2 ==.
;	../fb_lpc922.c:293: case 13:	// Byte übertragen, T=35us, prüfen ob Telegramm fertig
	sjmp	00217$
00208$:
	C$fb_lpc922.c$294$2$2 ==.
;	../fb_lpc922.c:294: FBOUTC=0;
	clr	_P1_6
	C$fb_lpc922.c$295$2$2 ==.
;	../fb_lpc922.c:295: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$296$2$2 ==.
;	../fb_lpc922.c:296: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$297$2$2 ==.
;	../fb_lpc922.c:297: TH1=0xFB;					// Timer 1 auf Interbyte Abstand setzen (3 Bit Pause = 312µs
	mov	_TH1,#0xFB
	C$fb_lpc922.c$298$2$2 ==.
;	../fb_lpc922.c:298: TL1=0x90;
	mov	_TL1,#0x90
	C$fb_lpc922.c$299$2$2 ==.
;	../fb_lpc922.c:299: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$300$2$2 ==.
;	../fb_lpc922.c:300: if (send_ack || send_nack) {	// ACK/NACK senden
	jb	_send_ack,00212$
	jnb	_send_nack,00213$
00212$:
	C$fb_lpc922.c$301$3$38 ==.
;	../fb_lpc922.c:301: init_rx();					// ACK senden abgeschlossen, also statemachine auf Anfang
	lcall	_init_rx
	sjmp	00214$
00213$:
	C$fb_lpc922.c$304$3$39 ==.
;	../fb_lpc922.c:304: if (telpos>((telegramm[5]&0x0F)+7)) {		// Telegramm fertig gesendet
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x07
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r4,_telpos
	mov	r5,#0x00
	clr	c
	mov	a,r7
	subb	a,r4
	mov	a,r6
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00210$
	C$fb_lpc922.c$305$4$40 ==.
;	../fb_lpc922.c:305: tel_sent=1;
	setb	_tel_sent
	C$fb_lpc922.c$306$4$40 ==.
;	../fb_lpc922.c:306: init_rx();	// Telegramm senden abgeschlossen, ggf. wiederholen wenn nicht geackt wird
	lcall	_init_rx
	sjmp	00214$
00210$:
	C$fb_lpc922.c$308$3$39 ==.
;	../fb_lpc922.c:308: else fb_state=14;		// nächstes Byte: Interbyte Abstand einhalten
	mov	_fb_state,#0x0E
00214$:
	C$fb_lpc922.c$310$2$2 ==.
;	../fb_lpc922.c:310: IE1=0;
	clr	_TCON_3
	C$fb_lpc922.c$311$2$2 ==.
;	../fb_lpc922.c:311: break;
	C$fb_lpc922.c$313$2$2 ==.
;	../fb_lpc922.c:313: case 14:	// Interbyte Abstand erreicht (=Stopbit + 2 Bit)
	sjmp	00217$
00216$:
	C$fb_lpc922.c$314$2$2 ==.
;	../fb_lpc922.c:314: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$315$2$2 ==.
;	../fb_lpc922.c:315: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
	C$fb_lpc922.c$316$2$2 ==.
;	../fb_lpc922.c:316: TH1=110;							// Timer 1 auf 104/3 us laden
	mov	_TH1,#0x6E
	C$fb_lpc922.c$317$2$2 ==.
;	../fb_lpc922.c:317: TL1=128;
	mov	_TL1,#0x80
	C$fb_lpc922.c$318$2$2 ==.
;	../fb_lpc922.c:318: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$319$2$2 ==.
;	../fb_lpc922.c:319: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$320$2$2 ==.
;	../fb_lpc922.c:320: fb_state=10;
	mov	_fb_state,#0x0A
	C$fb_lpc922.c$325$1$1 ==.
;	../fb_lpc922.c:325: }
00217$:
	C$fb_lpc922.c$326$1$1 ==.
;	../fb_lpc922.c:326: interrupted=1;			// zeigt der app, dass sie unterbrochen wurde
	setb	_interrupted
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$fb_lpc922.c$327$1$1 ==.
	XG$T1_int$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'init_rx'
;------------------------------------------------------------
	G$init_rx$0$0 ==.
	C$fb_lpc922.c$330$1$1 ==.
;	../fb_lpc922.c:330: void init_rx(void) 	// Empfangen initiieren (statemachine auf Anfang)
;	-----------------------------------------
;	 function init_rx
;	-----------------------------------------
_init_rx:
	C$fb_lpc922.c$332$1$1 ==.
;	../fb_lpc922.c:332: fb_state=0;
	mov	_fb_state,#0x00
	C$fb_lpc922.c$333$1$1 ==.
;	../fb_lpc922.c:333: IE1=0;
	clr	_TCON_3
	C$fb_lpc922.c$334$1$1 ==.
;	../fb_lpc922.c:334: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$335$1$1 ==.
;	../fb_lpc922.c:335: ET1=0;
	clr	_IEN0_3
	C$fb_lpc922.c$336$1$1 ==.
;	../fb_lpc922.c:336: cs=0;
	mov	_cs,#0x00
	C$fb_lpc922.c$337$1$1 ==.
;	../fb_lpc922.c:337: telpos=0;
	mov	_telpos,#0x00
	C$fb_lpc922.c$338$1$1 ==.
;	../fb_lpc922.c:338: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$339$1$1 ==.
;	../fb_lpc922.c:339: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$340$1$1 ==.
;	../fb_lpc922.c:340: TH1=0x89;					// busfree Zeit = 15 Bit (auf ACK) + 11 Bit (ACK) + 53 Bit
	mov	_TH1,#0x89
	C$fb_lpc922.c$341$1$1 ==.
;	../fb_lpc922.c:341: TL1=0xAF;
	mov	_TL1,#0xAF
	C$fb_lpc922.c$342$1$1 ==.
;	../fb_lpc922.c:342: send_ack=0;
	clr	_send_ack
	C$fb_lpc922.c$343$1$1 ==.
;	../fb_lpc922.c:343: send_nack=0;
	clr	_send_nack
	C$fb_lpc922.c$344$1$1 ==.
;	../fb_lpc922.c:344: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$345$1$1 ==.
;	../fb_lpc922.c:345: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$346$1$1 ==.
;	../fb_lpc922.c:346: EX1=1;
	setb	_IEN0_2
	C$fb_lpc922.c$347$1$1 ==.
;	../fb_lpc922.c:347: ET1=1;
	setb	_IEN0_3
	C$fb_lpc922.c$348$1$1 ==.
	XG$init_rx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_tx'
;------------------------------------------------------------
;n                         Allocated to registers r6 
;cs_pos                    Allocated to registers r7 
;------------------------------------------------------------
	G$init_tx$0$0 ==.
	C$fb_lpc922.c$351$1$1 ==.
;	../fb_lpc922.c:351: void init_tx(void) 		// Checksum des Telegramms berechnen und Senden initiieren
;	-----------------------------------------
;	 function init_tx
;	-----------------------------------------
_init_tx:
	C$fb_lpc922.c$355$1$1 ==.
;	../fb_lpc922.c:355: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$356$1$1 ==.
;	../fb_lpc922.c:356: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
	C$fb_lpc922.c$357$1$1 ==.
;	../fb_lpc922.c:357: TH1=110;							// von state 10 auf 11
	mov	_TH1,#0x6E
	C$fb_lpc922.c$358$1$1 ==.
;	../fb_lpc922.c:358: TL1=128;							// von hier bis state 10
	mov	_TL1,#0x80
	C$fb_lpc922.c$359$1$1 ==.
;	../fb_lpc922.c:359: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$361$1$1 ==.
;	../fb_lpc922.c:361: cs_pos=(telegramm[5]&0x0F)+7;		// Position der Checksum im Telegramm
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	add	a,#0x07
	mov	r7,a
	C$fb_lpc922.c$362$1$1 ==.
;	../fb_lpc922.c:362: cs=0xFF;
	mov	_cs,#0xFF
	C$fb_lpc922.c$363$1$1 ==.
;	../fb_lpc922.c:363: for(n=0;n<cs_pos;n++) {
	mov	r6,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00104$
	C$fb_lpc922.c$364$2$2 ==.
;	../fb_lpc922.c:364: cs^=telegramm[n];				// Checksum berechnen
	mov	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	xrl	_cs,a
	C$fb_lpc922.c$363$1$1 ==.
;	../fb_lpc922.c:363: for(n=0;n<cs_pos;n++) {
	inc	r6
	sjmp	00101$
00104$:
	C$fb_lpc922.c$366$1$1 ==.
;	../fb_lpc922.c:366: telegramm[cs_pos]=cs;				// Checksum hinter Nutzdaten anfügen
	mov	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,_cs
	C$fb_lpc922.c$367$1$1 ==.
;	../fb_lpc922.c:367: ack=0;
	clr	_ack
	C$fb_lpc922.c$368$1$1 ==.
;	../fb_lpc922.c:368: nack=0;
	clr	_nack
	C$fb_lpc922.c$369$1$1 ==.
;	../fb_lpc922.c:369: wait_for_ack=1;
	setb	_wait_for_ack
	C$fb_lpc922.c$371$1$1 ==.
;	../fb_lpc922.c:371: fb_state=10;						// nächster state: senden
	mov	_fb_state,#0x0A
	C$fb_lpc922.c$372$1$1 ==.
;	../fb_lpc922.c:372: fb_pattern=0;						// nächstes zu sendendes Bit, 0=Startbit
	mov	_fb_pattern,#0x00
	C$fb_lpc922.c$373$1$1 ==.
;	../fb_lpc922.c:373: telpos=0;							// nächstes zu sendende Byte
	mov	_telpos,#0x00
	C$fb_lpc922.c$374$1$1 ==.
;	../fb_lpc922.c:374: EX1=0;								// ext. int1 inaktiv
	clr	_IEN0_2
	C$fb_lpc922.c$375$1$1 ==.
;	../fb_lpc922.c:375: TR1=1;								// Timer 1 starten
	setb	_TCON_6
	C$fb_lpc922.c$376$1$1 ==.
;	../fb_lpc922.c:376: ET1=1;								// Timer 1 int. aktiv
	setb	_IEN0_3
	C$fb_lpc922.c$377$1$1 ==.
	XG$init_tx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gapos_in_gat'
;------------------------------------------------------------
;gal                       Allocated to stack - _bp -3
;gah                       Allocated to registers r7 
;ga_position               Allocated to registers r6 
;n                         Allocated to registers r5 
;------------------------------------------------------------
	G$gapos_in_gat$0$0 ==.
	C$fb_lpc922.c$384$1$1 ==.
;	../fb_lpc922.c:384: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function gapos_in_gat
;	-----------------------------------------
_gapos_in_gat:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$fb_lpc922.c$388$1$1 ==.
;	../fb_lpc922.c:388: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
	mov	r6,#0xFF
	C$fb_lpc922.c$389$1$1 ==.
;	../fb_lpc922.c:389: if (eeprom[ADDRTAB]<0xFF && !transparency){
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	r5,#0xFF,00123$
00123$:
	jnc	00107$
	jb	_transparency,00107$
	C$fb_lpc922.c$390$2$2 ==.
;	../fb_lpc922.c:390: if (eeprom[ADDRTAB]) {
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	jz	00107$
	C$fb_lpc922.c$391$3$3 ==.
;	../fb_lpc922.c:391: for (n=eeprom[ADDRTAB]-1;n;n--) {
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	dec	r5
00109$:
	mov	a,r5
	jz	00107$
	C$fb_lpc922.c$392$4$4 ==.
;	../fb_lpc922.c:392: if (gah==eeprom[ADDRTAB+n*2+1] && gal==eeprom[ADDRTAB+n*2+2])
	mov	a,r5
	add	a,r5
	mov	r4,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r7
	cjne	a,ar3,00111$
	mov	a,#0x18
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00111$
	C$fb_lpc922.c$393$4$4 ==.
;	../fb_lpc922.c:393: ga_position=n;
	mov	ar6,r5
00111$:
	C$fb_lpc922.c$391$3$3 ==.
;	../fb_lpc922.c:391: for (n=eeprom[ADDRTAB]-1;n;n--) {
	dec	r5
	sjmp	00109$
00107$:
	C$fb_lpc922.c$397$1$1 ==.
;	../fb_lpc922.c:397: return (ga_position);
	mov	dpl,r6
	pop	_bp
	C$fb_lpc922.c$398$1$1 ==.
	XG$gapos_in_gat$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'build_tel'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;build_ok                  Allocated to registers b0 
;objvalue                  Allocated to stack - _bp +1
;gapos                     Allocated to registers r5 r6 
;objtype                   Allocated to registers r6 
;n                         Allocated to registers r7 
;length                    Allocated to registers r6 
;asspos                    Allocated to registers r4 
;type                      Allocated to registers b2 
;repeatflag                Allocated to registers b1 
;------------------------------------------------------------
	G$build_tel$0$0 ==.
	C$fb_lpc922.c$403$1$1 ==.
;	../fb_lpc922.c:403: __bit build_tel(unsigned char objno)
;	-----------------------------------------
;	 function build_tel
;	-----------------------------------------
_build_tel:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r7,dpl
	C$fb_lpc922.c$405$1$1 ==.
;	../fb_lpc922.c:405: __bit build_ok=0;
	clr	b0
	C$fb_lpc922.c$407$1$1 ==.
;	../fb_lpc922.c:407: unsigned int gapos=0xFE;
	mov	r5,#0xFE
	mov	r6,#0x00
	C$fb_lpc922.c$412$1$1 ==.
;	../fb_lpc922.c:412: repeatflag=objno&0x20;
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
	mov	r4,a
	add	a,#0xff
	mov	b1,c
	C$fb_lpc922.c$414$1$1 ==.
;	../fb_lpc922.c:414: if(objno<128) {		// Multicast
	cjne	r7,#0x80,00158$
00158$:
	jc	00159$
	ljmp	00132$
00159$:
	C$fb_lpc922.c$415$1$1 ==.
;	../fb_lpc922.c:415: type=(objno&0x40);	// bei Multicast ist type0 normal und type1 response telegramm
	push	ar5
	push	ar6
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	b2,c
	C$fb_lpc922.c$416$2$2 ==.
;	../fb_lpc922.c:416: objno&=0x1F;
	anl	ar7,#0x1F
	C$fb_lpc922.c$418$2$2 ==.
;	../fb_lpc922.c:418: objvalue=read_obj_value(objno);		// Objektwert lesen
	mov	dpl,r7
	push	ar7
	push	ar5
	push	bits
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r6,a
	pop	bits
	pop	ar5
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar6
	C$fb_lpc922.c$421$2$2 ==.
;	../fb_lpc922.c:421: asspos=eeprom[ASSOCTABPTR]+1+2*objno;
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	r6
	mov	a,r7
	add	a,r7
	mov	r5,a
	add	a,r6
	C$fb_lpc922.c$422$2$2 ==.
;	../fb_lpc922.c:422: if(eeprom[asspos+1]==objno) gapos=eeprom[asspos];
	mov	r4,a
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	cjne	a,ar7,00160$
	sjmp	00161$
00160$:
	pop	ar6
	pop	ar5
	sjmp	00102$
00161$:
	pop	ar6
	pop	ar5
	mov	dpl,r4
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r5,a
	mov	r6,#0x00
00102$:
	C$fb_lpc922.c$424$2$2 ==.
;	../fb_lpc922.c:424: if (gapos!=0xFE) // wenn keine Gruppenadresse hinterlegt nix tun
	cjne	r5,#0xFE,00162$
	cjne	r6,#0x00,00162$
	ljmp	00133$
00162$:
	C$fb_lpc922.c$426$3$3 ==.
;	../fb_lpc922.c:426: telegramm[0]=0xBC;
	mov	_telegramm,#0xBC
	C$fb_lpc922.c$427$3$3 ==.
;	../fb_lpc922.c:427: telegramm[1]=eeprom[ADDRTAB+1];
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	(_telegramm + 0x0001),r4
	C$fb_lpc922.c$428$3$3 ==.
;	../fb_lpc922.c:428: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	(_telegramm + 0x0002),r4
	C$fb_lpc922.c$429$3$3 ==.
;	../fb_lpc922.c:429: telegramm[3]=eeprom[ADDRTAB+1+gapos*2];
	mov	a,r5
	add	a,r5
	mov	r5,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0003),r6
	C$fb_lpc922.c$430$3$3 ==.
;	../fb_lpc922.c:430: telegramm[4]=eeprom[ADDRTAB+2+gapos*2];
	mov	a,#0x18
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0004),r6
	C$fb_lpc922.c$431$3$3 ==.
;	../fb_lpc922.c:431: telegramm[6]=0x00;
	mov	(_telegramm + 0x0006),#0x00
	C$fb_lpc922.c$432$3$3 ==.
;	../fb_lpc922.c:432: if (type) telegramm[7]=0x40;		// read_value_response Telegramm (angefordert)
	jnb	b2,00104$
	mov	(_telegramm + 0x0007),#0x40
	sjmp	00105$
00104$:
	C$fb_lpc922.c$433$3$3 ==.
;	../fb_lpc922.c:433: else telegramm[7]=0x80;				// write_value_request Telegramm (nicht angefordert)
	mov	(_telegramm + 0x0007),#0x80
00105$:
	C$fb_lpc922.c$435$3$3 ==.
;	../fb_lpc922.c:435: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	add	a,r7
	add	a,r7
	mov	r6,a
	add	a,r7
	add	a,#0x04
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	C$fb_lpc922.c$437$3$3 ==.
;	../fb_lpc922.c:437: if(objtype>6) length=objtype-5; else length=1;
	mov  r6,a
	add	a,#0xff - 0x06
	jnc	00107$
	mov	a,r6
	add	a,#0xFB
	mov	r6,a
	sjmp	00108$
00107$:
	mov	r6,#0x01
00108$:
	C$fb_lpc922.c$438$3$3 ==.
;	../fb_lpc922.c:438: telegramm[5]=0xE0+length;
	mov	a,#0xE0
	add	a,r6
	mov	(_telegramm + 0x0005),a
	C$fb_lpc922.c$439$3$3 ==.
;	../fb_lpc922.c:439: if (length>1) telegramm[length+6]=objvalue; else telegramm[7]+=(objvalue&0x3F);
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00110$
	mov	a,#0x06
	add	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	mov	@r1,ar5
	sjmp	00111$
00110$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x3F
	anl	a,@r0
	mov	r2,a
	clr	a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	a,r2
	add	a,(_telegramm + 0x0007)
	mov	(_telegramm + 0x0007),a
00111$:
	C$fb_lpc922.c$440$3$3 ==.
;	../fb_lpc922.c:440: if (length>2) telegramm[length+5]=objvalue>>8;
	mov	a,r6
	add	a,#0xff - 0x02
	jnc	00113$
	mov	a,#0x05
	add	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar5,@r0
	mov	@r1,ar5
00113$:
	C$fb_lpc922.c$441$3$3 ==.
;	../fb_lpc922.c:441: if (length>3) telegramm[length+4]=objvalue>>16;
	mov	a,r6
	add	a,#0xff - 0x03
	jnc	00115$
	mov	a,#0x04
	add	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	ar5,@r0
	mov	@r1,ar5
00115$:
	C$fb_lpc922.c$442$3$3 ==.
;	../fb_lpc922.c:442: if (length>4) telegramm[length+3]=objvalue>>24;
	mov	a,r6
	add	a,#0xff - 0x04
	jnc	00117$
	mov	a,#0x03
	add	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	mov	ar6,@r0
	mov	@r1,ar6
00117$:
	C$fb_lpc922.c$444$3$3 ==.
;	../fb_lpc922.c:444: build_ok=1;
	setb	b0
	ljmp	00133$
00132$:
	C$fb_lpc922.c$448$2$4 ==.
;	../fb_lpc922.c:448: telegramm[0]=0xB0;				// Control Byte
	mov	_telegramm,#0xB0
	C$fb_lpc922.c$449$2$4 ==.
;	../fb_lpc922.c:449: telegramm[1]=eeprom[ADDRTAB+1];	// Quelladresse ist phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0001),r6
	C$fb_lpc922.c$450$2$4 ==.
;	../fb_lpc922.c:450: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0002),r6
	C$fb_lpc922.c$451$2$4 ==.
;	../fb_lpc922.c:451: telegramm[3]=conh;
	mov	(_telegramm + 0x0003),_conh
	C$fb_lpc922.c$452$2$4 ==.
;	../fb_lpc922.c:452: telegramm[4]=conl;
	mov	(_telegramm + 0x0004),_conl
	C$fb_lpc922.c$454$2$4 ==.
;	../fb_lpc922.c:454: switch(objno&0x1F) {
	anl	ar7,#0x1F
	mov	a,r7
	add	a,#0xff - 0x05
	jnc	00169$
	ljmp	00130$
00169$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00170$
	jmp	@a+dptr
00170$:
	ljmp	00130$
	ljmp	00120$
	ljmp	00121$
	ljmp	00122$
	ljmp	00123$
	ljmp	00129$
	C$fb_lpc922.c$455$3$5 ==.
;	../fb_lpc922.c:455: case 1:	// NCD ACK Quittierung (129)
00120$:
	C$fb_lpc922.c$456$3$5 ==.
;	../fb_lpc922.c:456: telegramm[5]=0x60;					// DRL
	mov	(_telegramm + 0x0005),#0x60
	C$fb_lpc922.c$457$3$5 ==.
;	../fb_lpc922.c:457: telegramm[6]=senders_pcount + 0xC2;	// Bit 6,7(TCPI = 11 NCD Quittierung) und Bit 0,1 (10=ACK)
	mov	a,#0xC2
	add	a,_senders_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$459$3$5 ==.
;	../fb_lpc922.c:459: break;
	ljmp	00130$
	C$fb_lpc922.c$460$3$5 ==.
;	../fb_lpc922.c:460: case 2:	// read mask response (130)
00121$:
	C$fb_lpc922.c$461$3$5 ==.
;	../fb_lpc922.c:461: telegramm[5]=0x63;					// DRL
	mov	(_telegramm + 0x0005),#0x63
	C$fb_lpc922.c$462$3$5 ==.
;	../fb_lpc922.c:462: telegramm[6]=pcount + 0x43;			// bei response immer eigene Paketnummer senden
	mov	a,#0x43
	add	a,_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$463$3$5 ==.
;	../fb_lpc922.c:463: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
	C$fb_lpc922.c$464$3$5 ==.
;	../fb_lpc922.c:464: telegramm[8]=0x00;
	mov	(_telegramm + 0x0008),#0x00
	C$fb_lpc922.c$465$3$5 ==.
;	../fb_lpc922.c:465: telegramm[9]=0x12;					// Maskenversion 1 = BCU1
	mov	(_telegramm + 0x0009),#0x12
	C$fb_lpc922.c$466$3$5 ==.
;	../fb_lpc922.c:466: inc_pcount=1;
	setb	_inc_pcount
	C$fb_lpc922.c$467$3$5 ==.
;	../fb_lpc922.c:467: break;
	ljmp	00130$
	C$fb_lpc922.c$468$3$5 ==.
;	../fb_lpc922.c:468: case 3:	// read PA response (131)
00122$:
	C$fb_lpc922.c$469$3$5 ==.
;	../fb_lpc922.c:469: telegramm[3]=0x00;			// Zieladresse auf 0000, da Broadcast
	mov	(_telegramm + 0x0003),#0x00
	C$fb_lpc922.c$470$3$5 ==.
;	../fb_lpc922.c:470: telegramm[4]=0x00;
	mov	(_telegramm + 0x0004),#0x00
	C$fb_lpc922.c$471$3$5 ==.
;	../fb_lpc922.c:471: telegramm[5]=0xE1;			// DRL
	mov	(_telegramm + 0x0005),#0xE1
	C$fb_lpc922.c$472$3$5 ==.
;	../fb_lpc922.c:472: telegramm[6]=0x01;
	mov	(_telegramm + 0x0006),#0x01
	C$fb_lpc922.c$473$3$5 ==.
;	../fb_lpc922.c:473: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
	C$fb_lpc922.c$474$3$5 ==.
;	../fb_lpc922.c:474: break;
	C$fb_lpc922.c$475$3$5 ==.
;	../fb_lpc922.c:475: case 4:	// memory_read_response (132)
	sjmp	00130$
00123$:
	C$fb_lpc922.c$476$1$1 ==.
;	../fb_lpc922.c:476: for(n=0;n<mem_length;n++) {
	mov	r7,#0x00
00136$:
	clr	c
	mov	a,r7
	subb	a,_mem_length
	jnc	00139$
	C$fb_lpc922.c$477$4$6 ==.
;	../fb_lpc922.c:477: if (mem_adrh==0) {
	mov	a,_mem_adrh
	jnz	00127$
	C$fb_lpc922.c$478$5$7 ==.
;	../fb_lpc922.c:478: telegramm[n+10]=0;//userram[mem_adrl+n];
	mov	a,#0x0A
	add	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,#0x00
	C$fb_lpc922.c$479$5$7 ==.
;	../fb_lpc922.c:479: if(mem_adrl+n==0x60) telegramm[n+10]=status60;	// ausser bei 0x60
	mov	r5,_mem_adrl
	mov	r6,#0x00
	mov	ar3,r7
	mov	r4,#0x00
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	cjne	r5,#0x60,00138$
	cjne	r6,#0x00,00138$
	mov	a,#0x0A
	add	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,_status60
	sjmp	00138$
00127$:
	C$fb_lpc922.c$481$4$6 ==.
;	../fb_lpc922.c:481: else telegramm[n+10]=eeprom[mem_adrl+n];//else if (mem_adrh==1)
	mov	a,#0x0A
	add	a,r7
	add	a,#_telegramm
	mov	r1,a
	mov	a,r7
	add	a,_mem_adrl
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	@r1,a
00138$:
	C$fb_lpc922.c$476$3$5 ==.
;	../fb_lpc922.c:476: for(n=0;n<mem_length;n++) {
	inc	r7
	sjmp	00136$
00139$:
	C$fb_lpc922.c$484$3$5 ==.
;	../fb_lpc922.c:484: telegramm[5]=mem_length+0x63;		// DRL (Anzahl Bytes + 3)
	mov	a,#0x63
	add	a,_mem_length
	mov	(_telegramm + 0x0005),a
	C$fb_lpc922.c$485$3$5 ==.
;	../fb_lpc922.c:485: telegramm[6]=pcount|0x42;			// eigener Paketzaehler, TCPI und ersten beiden Befehlsbits
	mov	a,#0x42
	orl	a,_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$486$3$5 ==.
;	../fb_lpc922.c:486: telegramm[7]=mem_length|0x40;		// letzten 2 Befehlsbits
	mov	a,#0x40
	orl	a,_mem_length
	mov	(_telegramm + 0x0007),a
	C$fb_lpc922.c$487$3$5 ==.
;	../fb_lpc922.c:487: telegramm[8]=mem_adrh;
	mov	(_telegramm + 0x0008),_mem_adrh
	C$fb_lpc922.c$488$3$5 ==.
;	../fb_lpc922.c:488: telegramm[9]=mem_adrl;
	mov	(_telegramm + 0x0009),_mem_adrl
	C$fb_lpc922.c$489$3$5 ==.
;	../fb_lpc922.c:489: inc_pcount=1;
	setb	_inc_pcount
	C$fb_lpc922.c$490$3$5 ==.
;	../fb_lpc922.c:490: break;
	C$fb_lpc922.c$491$3$5 ==.
;	../fb_lpc922.c:491: case 5:	// T-disconnect (133)
	sjmp	00130$
00129$:
	C$fb_lpc922.c$492$3$5 ==.
;	../fb_lpc922.c:492: telegramm[5]=0x60;
	mov	(_telegramm + 0x0005),#0x60
	C$fb_lpc922.c$493$3$5 ==.
;	../fb_lpc922.c:493: telegramm[6]=0x81;
	mov	(_telegramm + 0x0006),#0x81
	C$fb_lpc922.c$494$3$5 ==.
;	../fb_lpc922.c:494: connected=0;
	clr	_connected
	C$fb_lpc922.c$496$2$4 ==.
;	../fb_lpc922.c:496: }
00130$:
	C$fb_lpc922.c$497$2$4 ==.
;	../fb_lpc922.c:497: build_ok=1;
	setb	b0
00133$:
	C$fb_lpc922.c$499$1$1 ==.
;	../fb_lpc922.c:499: if(repeatflag) telegramm[0]&=0xDF;		// Wiederholungsbit löschen für Wiederholtelegramm
	jnb	b1,00135$
	mov	a,#0xDF
	anl	a,_telegramm
	mov	_telegramm,a
00135$:
	C$fb_lpc922.c$500$1$1 ==.
;	../fb_lpc922.c:500: return(build_ok);
	mov	c,b0
	mov	sp,_bp
	pop	_bp
	C$fb_lpc922.c$501$1$1 ==.
	XG$build_tel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;success                   Allocated to registers b0 
;------------------------------------------------------------
	G$send_obj_value$0$0 ==.
	C$fb_lpc922.c$504$1$1 ==.
;	../fb_lpc922.c:504: __bit send_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function send_obj_value
;	-----------------------------------------
_send_obj_value:
	mov	r7,dpl
	C$fb_lpc922.c$506$1$1 ==.
;	../fb_lpc922.c:506: __bit success=0;
	clr	b0
	C$fb_lpc922.c$508$1$1 ==.
;	../fb_lpc922.c:508: if (objno < 0x40 && (read_objflags(objno) & 0x44) != 0x44)
	cjne	r7,#0x40,00112$
00112$:
	jnc	00104$
	mov	dpl,r7
	push	ar7
	push	bits
	lcall	_read_objflags
	mov	a,dpl
	pop	bits
	pop	ar7
	anl	a,#0x44
	mov	r6,a
	cjne	r6,#0x44,00114$
	sjmp	00104$
00114$:
	C$fb_lpc922.c$510$2$2 ==.
;	../fb_lpc922.c:510: success=1;
	setb	b0
	sjmp	00105$
00104$:
	C$fb_lpc922.c$512$1$1 ==.
;	../fb_lpc922.c:512: else if(tx_nextsend!=((tx_nextwrite+1)&0x07)) {
	mov	r5,_tx_nextwrite
	mov	r6,#0x00
	inc	r5
	cjne	r5,#0x00,00115$
	inc	r6
00115$:
	anl	ar5,#0x07
	mov	r6,#0x00
	mov	r3,_tx_nextsend
	mov	r4,#0x00
	mov	a,r3
	cjne	a,ar5,00116$
	mov	a,r4
	cjne	a,ar6,00116$
	sjmp	00105$
00116$:
	C$fb_lpc922.c$513$2$3 ==.
;	../fb_lpc922.c:513: tx_buffer[tx_nextwrite]=objno;
	mov	a,_tx_nextwrite
	add	a,#_tx_buffer
	mov	r0,a
	mov	@r0,ar7
	C$fb_lpc922.c$514$2$3 ==.
;	../fb_lpc922.c:514: tx_nextwrite++;
	inc	_tx_nextwrite
	C$fb_lpc922.c$515$2$3 ==.
;	../fb_lpc922.c:515: tx_nextwrite&=0x07;
	anl	_tx_nextwrite,#0x07
	C$fb_lpc922.c$516$2$3 ==.
;	../fb_lpc922.c:516: success=1;
	setb	b0
00105$:
	C$fb_lpc922.c$519$1$1 ==.
;	../fb_lpc922.c:519: TR1=1;	// statemachine starten falls vorher in state 0 gestoppt
	setb	_TCON_6
	C$fb_lpc922.c$520$1$1 ==.
;	../fb_lpc922.c:520: return(success);
	mov	c,b0
	C$fb_lpc922.c$521$1$1 ==.
	XG$send_obj_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_tel'
;------------------------------------------------------------
;tpdu                      Allocated to registers r6 
;apdu                      Allocated to stack - _bp +1
;ab                        Allocated to registers r7 
;n                         Allocated to stack - _bp +2
;objno                     Allocated to registers r3 
;objflags                  Allocated to registers r2 
;gapos                     Allocated to registers r7 
;atp                       Allocated to registers r6 
;assmax                    Allocated to registers r5 
;asspos                    Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +11
;sloc1                     Allocated to stack - _bp +12
;sloc2                     Allocated to stack - _bp +3
;------------------------------------------------------------
	G$process_tel$0$0 ==.
	C$fb_lpc922.c$526$1$1 ==.
;	../fb_lpc922.c:526: void process_tel(void)
;	-----------------------------------------
;	 function process_tel
;	-----------------------------------------
_process_tel:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$fb_lpc922.c$530$1$1 ==.
;	../fb_lpc922.c:530: tel_arrived=0;
	clr	_tel_arrived
	C$fb_lpc922.c$531$1$1 ==.
;	../fb_lpc922.c:531: tpdu=telegramm[6]&0xC3;
	mov	r7,(_telegramm + 0x0006)
	mov	a,#0xC3
	anl	a,r7
	mov	r6,a
	C$fb_lpc922.c$532$1$1 ==.
;	../fb_lpc922.c:532: apdu=telegramm[7];
	mov	r0,_bp
	inc	r0
	mov	@r0,(_telegramm + 0x0007)
	C$fb_lpc922.c$535$1$1 ==.
;	../fb_lpc922.c:535: if(telegramm[3]==0 && telegramm[4]==0) {	// nur wenn wenn Zieladresse = 0
	mov	a,(_telegramm + 0x0003)
	mov	r4,a
	jnz	00167$
	mov	a,(_telegramm + 0x0004)
	jnz	00167$
	C$fb_lpc922.c$536$2$2 ==.
;	../fb_lpc922.c:536: if(status60 & 0x01) {					// und nur im prog mode
	mov	a,_status60
	jb	acc.0,00220$
	ljmp	00174$
00220$:
	C$fb_lpc922.c$537$3$3 ==.
;	../fb_lpc922.c:537: if(tpdu==BROADCAST_PDU_SET_PA_REQ && apdu==SET_PHYSADDR_REQUEST) set_pa();				// 00000000 11000000
	mov	a,r6
	jnz	00102$
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0xC0,00102$
	push	ar6
	lcall	_set_pa
	pop	ar6
00102$:
	C$fb_lpc922.c$538$3$3 ==.
;	../fb_lpc922.c:538: if(tpdu==BROADCAST_PDU_READ_PA && apdu==READ_PHYSADDR_REQUEST) send_obj_value(READ_PHYSADDR_RESPONSE);	// 00000001 00000000
	cjne	r6,#0x01,00224$
	sjmp	00225$
00224$:
	ljmp	00174$
00225$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00226$
	ljmp	00174$
00226$:
	mov	dpl,#0x83
	lcall	_send_obj_value
	ljmp	00174$
00167$:
	C$fb_lpc922.c$543$2$4 ==.
;	../fb_lpc922.c:543: if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag Bit 7, 0=phys. Adr., 1=Gruppenadr.
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00227$
	ljmp	00164$
00227$:
	C$fb_lpc922.c$544$3$5 ==.
;	../fb_lpc922.c:544: if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) {	// nur wenn es die eigene phys. Adr. ist
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00228$
	sjmp	00229$
00228$:
	ljmp	00174$
00229$:
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	cjne	a,(_telegramm + 0x0004),00230$
	sjmp	00231$
00230$:
	ljmp	00174$
00231$:
	C$fb_lpc922.c$545$4$6 ==.
;	../fb_lpc922.c:545: connected_timeout=0;//wenn ein unicast uns betrifft den timeout rücksetzen
	mov	_connected_timeout,#0x00
	C$fb_lpc922.c$548$4$6 ==.
;	../fb_lpc922.c:548: switch (tpdu) {	// transport layer control field
	cjne	r6,#0x42,00232$
	sjmp	00109$
00232$:
	cjne	r6,#0x43,00233$
	ljmp	00128$
00233$:
	cjne	r6,#0x80,00234$
	ljmp	00133$
00234$:
	cjne	r6,#0x81,00235$
	ljmp	00136$
00235$:
	cjne	r6,#0x83,00236$
	ljmp	00140$
00236$:
	ljmp	00174$
	C$fb_lpc922.c$550$5$7 ==.
;	../fb_lpc922.c:550: case DATA_PDU_MEMORY_OPERATIONS:
00109$:
	C$fb_lpc922.c$551$5$7 ==.
;	../fb_lpc922.c:551: if(connected){
	jb	_connected,00237$
	ljmp	00174$
00237$:
	C$fb_lpc922.c$552$6$8 ==.
;	../fb_lpc922.c:552: senders_pcount=telegramm[6]&0x3C;
	mov	a,#0x3C
	anl	a,r7
	mov	_senders_pcount,a
	C$fb_lpc922.c$553$6$8 ==.
;	../fb_lpc922.c:553: apdu &= 0xF0;						// da bei memory operations nur obere 4 Bits aktiv
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	anl	a,#0xF0
	mov	@r0,a
	C$fb_lpc922.c$554$6$8 ==.
;	../fb_lpc922.c:554: if(apdu==WRITE_MEMORY_REQUEST) {	// 01pppp10 1000xxxx
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x80,00238$
	sjmp	00239$
00238$:
	ljmp	00123$
00239$:
	C$fb_lpc922.c$555$7$9 ==.
;	../fb_lpc922.c:555: send_obj_value(NCD_ACK);
	mov	dpl,#0x81
	lcall	_send_obj_value
	C$fb_lpc922.c$560$8$10 ==.
;	../fb_lpc922.c:560: if(telegramm[8]){
	mov	a,(_telegramm + 0x0008)
	mov	r3,a
	jnz	00240$
	ljmp	00123$
00240$:
	C$fb_lpc922.c$561$9$11 ==.
;	../fb_lpc922.c:561: ab=telegramm[7]&0x0F;		// Anzahl Bytes
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0007)
	mov	r7,a
	C$fb_lpc922.c$563$9$11 ==.
;	../fb_lpc922.c:563: while(fb_state!=0);					// warten falls noch gesendet wird
00110$:
	mov	a,_fb_state
	jnz	00110$
	C$fb_lpc922.c$565$9$11 ==.
;	../fb_lpc922.c:565: EA=0;
	clr	_IEN0_7
	C$fb_lpc922.c$566$9$11 ==.
;	../fb_lpc922.c:566: START_WRITECYCLE;					// load command, leert das pageregister
	mov	_FMCON,#0x00
	C$fb_lpc922.c$567$10$12 ==.
;	../fb_lpc922.c:567: for(n=0;n<ab;n++) {
	mov	r6,(_telegramm + 0x0009)
	mov	a,#0x01
	anl	a,r3
	add	a,#0x1C
	mov	r4,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
00170$:
	mov	r0,_bp
	inc	r0
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r7
	jc	00242$
	ljmp	00173$
00242$:
	C$fb_lpc922.c$568$10$12 ==.
;	../fb_lpc922.c:568: if(telegramm[8]==0 && (telegramm[9]+n)==0x60) status60=telegramm[10+n];
	mov	a,r3
	jnz	00114$
	push	ar3
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	cjne	r2,#0x60,00244$
	cjne	r5,#0x00,00244$
	sjmp	00245$
00244$:
	pop	ar3
	sjmp	00114$
00245$:
	pop	ar3
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x0A
	add	a,@r0
	add	a,#_telegramm
	mov	r1,a
	mov	_status60,@r1
	sjmp	00115$
00114$:
	C$fb_lpc922.c$578$11$13 ==.
;	../fb_lpc922.c:578: WRITE_BYTE(telegramm[8],telegramm[9]+n,telegramm[n+10]);
	mov	_FMADRH,r4
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,r6
	mov	_FMADRL,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x0A
	add	a,@r0
	add	a,#_telegramm
	mov	r1,a
	mov	_FMDATA,@r1
00115$:
	C$fb_lpc922.c$580$10$12 ==.
;	../fb_lpc922.c:580: if ((((telegramm[9]+n)&0x3F)==0x3F) && n!=(ab-1)) {		// Ende des 64-Byte Pageregisters, also zwischendurch flashen
	mov	ar2,r6
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	anl	ar2,#0x3F
	mov	r5,#0x00
	cjne	r2,#0x3F,00172$
	cjne	r5,#0x00,00172$
	mov	ar2,r7
	mov	r5,#0x00
	dec	r2
	cjne	r2,#0xFF,00248$
	dec	r5
00248$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	cjne	a,ar2,00249$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00249$
	sjmp	00172$
00249$:
	C$fb_lpc922.c$581$11$14 ==.
;	../fb_lpc922.c:581: STOP_WRITECYCLE;			// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
	C$fb_lpc922.c$582$11$14 ==.
;	../fb_lpc922.c:582: START_WRITECYCLE;		// load command, leert das pageregister
	mov	_FMCON,#0x00
00172$:
	C$fb_lpc922.c$567$9$11 ==.
;	../fb_lpc922.c:567: for(n=0;n<ab;n++) {
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	ljmp	00170$
00173$:
	C$fb_lpc922.c$585$9$11 ==.
;	../fb_lpc922.c:585: STOP_WRITECYCLE;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
	C$fb_lpc922.c$586$9$11 ==.
;	../fb_lpc922.c:586: EA=1;
	setb	_IEN0_7
00123$:
	C$fb_lpc922.c$590$6$8 ==.
;	../fb_lpc922.c:590: if(apdu==READ_MEMORY_REQUEST) {		// 01pppp10 0000xxxx
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00250$
	ljmp	00174$
00250$:
	C$fb_lpc922.c$591$7$15 ==.
;	../fb_lpc922.c:591: mem_length=telegramm[7];		// Anzahl Bytes für späteres(!) memory Auslesen
	mov	_mem_length,(_telegramm + 0x0007)
	C$fb_lpc922.c$592$7$15 ==.
;	../fb_lpc922.c:592: mem_adrh = telegramm[8];		// Adresse
	mov	_mem_adrh,(_telegramm + 0x0008)
	C$fb_lpc922.c$593$7$15 ==.
;	../fb_lpc922.c:593: mem_adrl = telegramm[9];
	mov	_mem_adrl,(_telegramm + 0x0009)
	C$fb_lpc922.c$594$7$15 ==.
;	../fb_lpc922.c:594: send_obj_value(NCD_ACK);
	mov	dpl,#0x81
	lcall	_send_obj_value
	C$fb_lpc922.c$595$7$15 ==.
;	../fb_lpc922.c:595: send_obj_value(READ_MEMORY_RESPONSE);
	mov	dpl,#0x84
	lcall	_send_obj_value
	C$fb_lpc922.c$598$5$7 ==.
;	../fb_lpc922.c:598: break;
	ljmp	00174$
	C$fb_lpc922.c$600$5$7 ==.
;	../fb_lpc922.c:600: case DATA_PDU_MISC_OPERATIONS:
00128$:
	C$fb_lpc922.c$601$5$7 ==.
;	../fb_lpc922.c:601: senders_pcount=telegramm[6]&0x3C;
	mov	a,#0x3C
	anl	a,r7
	mov	_senders_pcount,a
	C$fb_lpc922.c$602$5$7 ==.
;	../fb_lpc922.c:602: if(apdu==RESTART_REQUEST) {		// 01pppp11 10000000
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x80,00130$
	C$fb_lpc922.c$603$6$16 ==.
;	../fb_lpc922.c:603: AUXR1|=0x08;				// Software Reset
	orl	_AUXR1,#0x08
00130$:
	C$fb_lpc922.c$605$5$7 ==.
;	../fb_lpc922.c:605: if(apdu==READ_MASK_VERSION_REQUEST) {		// 01pppp11 00000000
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00253$
	ljmp	00174$
00253$:
	C$fb_lpc922.c$606$6$17 ==.
;	../fb_lpc922.c:606: send_obj_value(NCD_ACK);
	mov	dpl,#0x81
	lcall	_send_obj_value
	C$fb_lpc922.c$607$6$17 ==.
;	../fb_lpc922.c:607: send_obj_value(READ_MASK_VERSION_RESPONSE);
	mov	dpl,#0x82
	lcall	_send_obj_value
	C$fb_lpc922.c$609$5$7 ==.
;	../fb_lpc922.c:609: break;
	ljmp	00174$
	C$fb_lpc922.c$611$5$7 ==.
;	../fb_lpc922.c:611: case CONNECT_PDU:	// 10000000 xxxxxxxx
00133$:
	C$fb_lpc922.c$612$5$7 ==.
;	../fb_lpc922.c:612: if(!connected) {				// wenn bereits verbunden: ignorieren
	jnb	_connected,00254$
	ljmp	00174$
00254$:
	C$fb_lpc922.c$613$6$18 ==.
;	../fb_lpc922.c:613: connected=1;
	setb	_connected
	C$fb_lpc922.c$614$6$18 ==.
;	../fb_lpc922.c:614: conh=telegramm[1];			// phys. Adresse des Verbindungspartners
	mov	_conh,(_telegramm + 0x0001)
	C$fb_lpc922.c$615$6$18 ==.
;	../fb_lpc922.c:615: conl=telegramm[2];
	mov	_conl,(_telegramm + 0x0002)
	C$fb_lpc922.c$616$6$18 ==.
;	../fb_lpc922.c:616: pcount=0;					// Paketzaehler zuruecksetzen
	mov	_pcount,#0x00
	C$fb_lpc922.c$617$6$18 ==.
;	../fb_lpc922.c:617: inc_pcount=0;
	clr	_inc_pcount
	C$fb_lpc922.c$618$6$18 ==.
;	../fb_lpc922.c:618: RTCCON=0x60;	//RTC stoppen
	mov	_RTCCON,#0x60
	C$fb_lpc922.c$619$6$18 ==.
;	../fb_lpc922.c:619: RTCH=0x0B;      // reload Real Time Clock, 52ms
	mov	_RTCH,#0x0B
	C$fb_lpc922.c$620$6$18 ==.
;	../fb_lpc922.c:620: RTCL=0xB3;
	mov	_RTCL,#0xB3
	C$fb_lpc922.c$621$6$18 ==.
;	../fb_lpc922.c:621: RTCCON=0x61;	// RTC starten
	mov	_RTCCON,#0x61
	C$fb_lpc922.c$624$5$7 ==.
;	../fb_lpc922.c:624: break;
	ljmp	00174$
	C$fb_lpc922.c$626$5$7 ==.
;	../fb_lpc922.c:626: case DISCONNECT_PDU:	// 10000001 xxxxxxxx
00136$:
	C$fb_lpc922.c$627$5$7 ==.
;	../fb_lpc922.c:627: if(conh==telegramm[1] && conl==telegramm[2] )	{	// nur abbauen, wenn verbunden und Anforderung vom Verbindungspartner, kein ACK senden
	mov	a,(_telegramm + 0x0001)
	cjne	a,_conh,00255$
	sjmp	00256$
00255$:
	ljmp	00174$
00256$:
	mov	a,(_telegramm + 0x0002)
	cjne	a,_conl,00257$
	sjmp	00258$
00257$:
	ljmp	00174$
00258$:
	C$fb_lpc922.c$628$6$19 ==.
;	../fb_lpc922.c:628: connected=0;// warum: && connected ???
	clr	_connected
	C$fb_lpc922.c$630$5$7 ==.
;	../fb_lpc922.c:630: break;
	ljmp	00174$
	C$fb_lpc922.c$632$5$7 ==.
;	../fb_lpc922.c:632: case NACK_PDU:	// 11pppp11 xxxxxxxx
00140$:
	C$fb_lpc922.c$633$5$7 ==.
;	../fb_lpc922.c:633: send_obj_value(T_DISCONNECT);
	mov	dpl,#0x85
	lcall	_send_obj_value
	C$fb_lpc922.c$634$5$7 ==.
;	../fb_lpc922.c:634: connected=0;//connected_timeout=111; spartipp 5 Byte wenn send.. weg kommt.
	clr	_connected
	C$fb_lpc922.c$636$1$4 ==.
;	../fb_lpc922.c:636: }
	ljmp	00174$
00164$:
	C$fb_lpc922.c$641$2$4 ==.
;	../fb_lpc922.c:641: else if(tpdu==GROUP_PDU){
	mov	a,r6
	jz	00259$
	ljmp	00174$
00259$:
	C$fb_lpc922.c$646$3$20 ==.
;	../fb_lpc922.c:646: gapos = gapos_in_gat(telegramm[3], telegramm[4]);
	push	(_telegramm + 0x0004)
	mov	dpl,r4
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	C$fb_lpc922.c$648$3$20 ==.
;	../fb_lpc922.c:648: if (gapos != 0xFF)
	cjne	r7,#0xFF,00260$
	ljmp	00174$
00260$:
	C$fb_lpc922.c$650$4$21 ==.
;	../fb_lpc922.c:650: atp = eeprom[ASSOCTABPTR];  // Association Table Pointer
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	C$fb_lpc922.c$651$4$21 ==.
;	../fb_lpc922.c:651: assmax = atp + eeprom[atp] * 2;	// Erster Eintrag = Anzahl Einträge
	mov	r6,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	add	a,acc
	add	a,r6
	mov	r5,a
	C$fb_lpc922.c$655$4$21 ==.
;	../fb_lpc922.c:655: for (asspos = atp + 1; asspos < assmax; asspos+=2)
	inc	r6
	mov	r0,_bp
	inc	r0
	mov	a,#0xC0
	anl	a,@r0
	mov	r4,a
	clr	a
	cjne	r4,#0x80,00261$
	inc	a
00261$:
	mov	r4,a
00155$:
	clr	c
	mov	a,r6
	subb	a,r5
	jc	00263$
	ljmp	00174$
00263$:
	C$fb_lpc922.c$659$5$22 ==.
;	../fb_lpc922.c:659: if (gapos == eeprom[asspos])
	mov	dpl,r6
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r7
	cjne	a,ar3,00157$
	C$fb_lpc922.c$661$6$23 ==.
;	../fb_lpc922.c:661: objno = eeprom[asspos + 1];	     // Objektnummer
	mov	a,r6
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	C$fb_lpc922.c$662$6$23 ==.
;	../fb_lpc922.c:662: objflags = read_objflags(objno); // Objekt Flags lesen
	mov	r3,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_read_objflags
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$fb_lpc922.c$665$6$23 ==.
;	../fb_lpc922.c:665: if((apdu&0xC0)==WRITE_GROUP)
	mov	a,r4
	jz	00148$
	C$fb_lpc922.c$670$1$1 ==.
;	../fb_lpc922.c:670: if ((objflags & 0x14) == 0x14)
	push	ar4
	mov	a,#0x14
	anl	a,r2
	mov	r4,a
	cjne	r4,#0x14,00267$
	sjmp	00268$
00267$:
	pop	ar4
	sjmp	00148$
00268$:
	pop	ar4
	C$fb_lpc922.c$671$7$24 ==.
;	../fb_lpc922.c:671: write_value_req(objno);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_write_value_req
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00148$:
	C$fb_lpc922.c$673$6$23 ==.
;	../fb_lpc922.c:673: if(apdu==READ_GROUP_REQUEST)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jnz	00157$
	C$fb_lpc922.c$675$7$25 ==.
;	../fb_lpc922.c:675: if ((objflags & 0x0C) == 0x0C)
	anl	ar2,#0x0C
	cjne	r2,#0x0C,00174$
	C$fb_lpc922.c$676$7$25 ==.
;	../fb_lpc922.c:676: read_value_req(objno);	// Objektwert lesen und read_value_response senden	00000000 00000000
	mov	dpl,r3
	lcall	_read_value_req
	C$fb_lpc922.c$677$7$25 ==.
;	../fb_lpc922.c:677: break;
	sjmp	00174$
00157$:
	C$fb_lpc922.c$655$4$21 ==.
;	../fb_lpc922.c:655: for (asspos = atp + 1; asspos < assmax; asspos+=2)
	inc	r6
	inc	r6
	ljmp	00155$
00174$:
	mov	sp,_bp
	pop	_bp
	C$fb_lpc922.c$684$1$1 ==.
	XG$process_tel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_pa'
;------------------------------------------------------------
	G$set_pa$0$0 ==.
	C$fb_lpc922.c$717$1$1 ==.
;	../fb_lpc922.c:717: void set_pa(void)
;	-----------------------------------------
;	 function set_pa
;	-----------------------------------------
_set_pa:
	C$fb_lpc922.c$719$1$1 ==.
;	../fb_lpc922.c:719: while(fb_state!=0);		// warten falls noch gesendet wird
00101$:
	mov	a,_fb_state
	jnz	00101$
	C$fb_lpc922.c$720$1$1 ==.
;	../fb_lpc922.c:720: EA=0;
	clr	_IEN0_7
	C$fb_lpc922.c$721$1$1 ==.
;	../fb_lpc922.c:721: FMCON=0x00;				// load command, leert das pageregister
	mov	_FMCON,#0x00
	C$fb_lpc922.c$722$1$1 ==.
;	../fb_lpc922.c:722: FMADRH=EEPROM_ADDR_H;	// 0x1D bei 922;
	mov	_FMADRH,#0x1D
	C$fb_lpc922.c$723$1$1 ==.
;	../fb_lpc922.c:723: FMADRL=ADDRTAB+1;
	mov	_FMADRL,#0x17
	C$fb_lpc922.c$724$1$1 ==.
;	../fb_lpc922.c:724: FMDATA=telegramm[8];
	mov	_FMDATA,(_telegramm + 0x0008)
	C$fb_lpc922.c$725$1$1 ==.
;	../fb_lpc922.c:725: FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
	mov	_FMDATA,(_telegramm + 0x0009)
	C$fb_lpc922.c$726$1$1 ==.
;	../fb_lpc922.c:726: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
	C$fb_lpc922.c$727$1$1 ==.
;	../fb_lpc922.c:727: EA=1;
	setb	_IEN0_7
	C$fb_lpc922.c$728$1$1 ==.
	XG$set_pa$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_objflags'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$read_objflags$0$0 ==.
	C$fb_lpc922.c$733$1$1 ==.
;	../fb_lpc922.c:733: unsigned char read_objflags(unsigned char objno)
;	-----------------------------------------
;	 function read_objflags
;	-----------------------------------------
_read_objflags:
	mov	r7,dpl
	C$fb_lpc922.c$736$1$1 ==.
;	../fb_lpc922.c:736: return(eeprom[eeprom[COMMSTABPTR]+3+objno+objno+objno]);
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	r6
	inc	r6
	inc	r6
	mov	a,r7
	add	a,r6
	add	a,r7
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	C$fb_lpc922.c$737$1$1 ==.
	XG$read_objflags$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_hw'
;------------------------------------------------------------
	G$restart_hw$0$0 ==.
	C$fb_lpc922.c$775$1$1 ==.
;	../fb_lpc922.c:775: void restart_hw(void)
;	-----------------------------------------
;	 function restart_hw
;	-----------------------------------------
_restart_hw:
	C$fb_lpc922.c$777$1$1 ==.
;	../fb_lpc922.c:777: DIVM=0;			// Taktferquenz nicht teilen -> volles Tempo
	mov	_DIVM,#0x00
	C$fb_lpc922.c$779$1$1 ==.
;	../fb_lpc922.c:779: P1M1=0x14;		// Port 1 auf quasi-bidirektional,
	mov	_P1M1,#0x14
	C$fb_lpc922.c$780$1$1 ==.
;	../fb_lpc922.c:780: P1M2=0x4C;		// ausser P1.2(T0 als PWM Ausgang)=open-drain,
	mov	_P1M2,#0x4C
	C$fb_lpc922.c$784$1$1 ==.
;	../fb_lpc922.c:784: FBOUTC=0;		// Bus-Ausgang auf low
	clr	_P1_6
	C$fb_lpc922.c$786$1$1 ==.
;	../fb_lpc922.c:786: TMOD=0x21;		// Timer 0 als 16-Bit Timer, Timer 1 als 8 Bit autoreload
	mov	_TMOD,#0x21
	C$fb_lpc922.c$787$1$1 ==.
;	../fb_lpc922.c:787: TAMOD=0x00;
	mov	_TAMOD,#0x00
	C$fb_lpc922.c$788$1$1 ==.
;	../fb_lpc922.c:788: TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen
	clr	_TCON_4
	C$fb_lpc922.c$789$1$1 ==.
;	../fb_lpc922.c:789: TR1=0;			// Timer 1 (Empfangs-Timer, nicht in app verwenden!) zunaechst stoppen
	clr	_TCON_6
	C$fb_lpc922.c$790$1$1 ==.
;	../fb_lpc922.c:790: TH1=128;		// Timer 1 auf 104us/3
	mov	_TH1,#0x80
	C$fb_lpc922.c$791$1$1 ==.
;	../fb_lpc922.c:791: TL1=128;
	mov	_TL1,#0x80
	C$fb_lpc922.c$792$1$1 ==.
;	../fb_lpc922.c:792: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$799$1$1 ==.
;	../fb_lpc922.c:799: interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
	clr	_interrupted
	C$fb_lpc922.c$800$1$1 ==.
;	../fb_lpc922.c:800: IEN0=0x80;// mit 0x80 sind die unten auskommentierten erschlagen.
	mov	_IEN0,#0x80
	C$fb_lpc922.c$801$1$1 ==.
;	../fb_lpc922.c:801: IEN1=0x00;
	mov	_IEN1,#0x00
	C$fb_lpc922.c$808$1$1 ==.
;	../fb_lpc922.c:808: IP0=0x04;		// höchste Priorität fuer ext1
	mov	_IP0,#0x04
	C$fb_lpc922.c$809$1$1 ==.
;	../fb_lpc922.c:809: IP0H=0x0C;
	mov	_IP0H,#0x0C
	C$fb_lpc922.c$810$1$1 ==.
;	../fb_lpc922.c:810: IT1=1;			// Interrupt 1 flankengetriggert=1
	setb	_TCON_2
	C$fb_lpc922.c$812$1$1 ==.
;	../fb_lpc922.c:812: status60=0x2E;	// Status-Byte (steht normal im userram an 0x60)
	mov	_status60,#0x2E
	C$fb_lpc922.c$814$1$1 ==.
;	../fb_lpc922.c:814: ack=0;			// ack und nack flag zurücksetzen
	clr	_ack
	C$fb_lpc922.c$815$1$1 ==.
;	../fb_lpc922.c:815: nack=0;
	clr	_nack
	C$fb_lpc922.c$816$1$1 ==.
;	../fb_lpc922.c:816: send_ack=0;
	clr	_send_ack
	C$fb_lpc922.c$817$1$1 ==.
;	../fb_lpc922.c:817: send_nack=0;
	clr	_send_nack
	C$fb_lpc922.c$818$1$1 ==.
;	../fb_lpc922.c:818: tel_arrived=0;	// kein Telegramm empfangen
	clr	_tel_arrived
	C$fb_lpc922.c$819$1$1 ==.
;	../fb_lpc922.c:819: auto_ack=1;		// empfangene Telegramme automatisch mit ack bestätigen
	setb	_auto_ack
	C$fb_lpc922.c$820$1$1 ==.
;	../fb_lpc922.c:820: tx_nextwrite=0;	// Zeiger auf nächste zu schreibende Objektnr. in tx_buffer
	mov	_tx_nextwrite,#0x00
	C$fb_lpc922.c$821$1$1 ==.
;	../fb_lpc922.c:821: tx_nextsend=0;	// Zeiger auf nächste zu sendende Objektnr. in tx_buffer
	mov	_tx_nextsend,#0x00
	C$fb_lpc922.c$822$1$1 ==.
;	../fb_lpc922.c:822: pcount=0;		// Paketzaehler initialisieren
	mov	_pcount,#0x00
	C$fb_lpc922.c$823$1$1 ==.
;	../fb_lpc922.c:823: inc_pcount=0;
	clr	_inc_pcount
	C$fb_lpc922.c$824$1$1 ==.
;	../fb_lpc922.c:824: connected=0;	// keine Verbindung
	clr	_connected
	C$fb_lpc922.c$825$1$1 ==.
;	../fb_lpc922.c:825: transparency=0;	// fremde Gruppentelegramme werden ignoriert
	clr	_transparency
	C$fb_lpc922.c$826$1$1 ==.
;	../fb_lpc922.c:826: init_rx();		// Empfang initialisieren
	lcall	_init_rx
	C$fb_lpc922.c$827$1$1 ==.
	XG$restart_hw$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$eeprom$0$0 == 0x1d00
_eeprom	=	0x1d00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
