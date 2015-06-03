;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
; This file was generated Wed Jun  3 21:39:08 2015
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
	.globl _telegramm_ok
	.globl _inc_pcount
	.globl _connected
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
	.globl _send_obj_value
	.globl _process_tel
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
G$connected$0$0==.
_connected::
	.ds 1
G$inc_pcount$0$0==.
_inc_pcount::
	.ds 1
G$telegramm_ok$0$0==.
_telegramm_ok::
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
;	../fb_lpc922.c:54: void X1_int(void) __interrupt (2)		// Flanke des Startbits laest int1 aus
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
;	../fb_lpc922.c:60: TL1=53;//108;//128;		// Timer laden so dass in state 2 bei 75Âµs abgefragt wird
	mov	_TL1,#0x35
	C$fb_lpc922.c$61$1$1 ==.
;	../fb_lpc922.c:61: TH1=128;//128;			// autoreload auf 35Âµs setzen (gilt fuer sprung von 2 auf 3)
	mov	_TH1,#0x80
	C$fb_lpc922.c$62$1$1 ==.
;	../fb_lpc922.c:62: TF1=0;			// Timer1-flag loeschen						1 cycle
	clr	_TCON_7
	C$fb_lpc922.c$63$1$1 ==.
;	../fb_lpc922.c:63: TR1=1;			// Timer1 starten							1 cycle
	setb	_TCON_6
	C$fb_lpc922.c$64$1$1 ==.
;	../fb_lpc922.c:64: ET1=1;			// Timer1-int aktiv							1 cycle
	setb	_IEN0_3
	C$fb_lpc922.c$65$1$1 ==.
;	../fb_lpc922.c:65: fb_state=2;		// naechster state
	mov	_fb_state,#0x02
	C$fb_lpc922.c$66$1$1 ==.
;	../fb_lpc922.c:66: fb_parity=0;	// Parity Bit loeschen
	clr	_fb_parity
	C$fb_lpc922.c$67$1$1 ==.
;	../fb_lpc922.c:67: parity_ok=1;	// wird bei Fehler geloescht
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
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$fb_lpc922.c$81$1$1 ==.
;	../fb_lpc922.c:81: switch (fb_state){
	mov	a,_fb_state
	mov	r7,a
	add	a,#0xff - 0x0E
	jnc	00328$
	ljmp	00255$
00328$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00329$
	jmp	@a+dptr
00329$:
	ljmp	00101$
	ljmp	00255$
	ljmp	00152$
	ljmp	00189$
	ljmp	00190$
	ljmp	00211$
	ljmp	00255$
	ljmp	00255$
	ljmp	00255$
	ljmp	00255$
	ljmp	00218$
	ljmp	00239$
	ljmp	00255$
	ljmp	00246$
	ljmp	00254$
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
;	../fb_lpc922.c:90: TF1=0;			// Timer1-flag loeschen						1 cycle
	clr	_TCON_7
	C$fb_lpc922.c$91$2$2 ==.
;	../fb_lpc922.c:91: TR1=1;			// Timer1 starten							1 cycle
	setb	_TCON_6
	C$fb_lpc922.c$92$2$2 ==.
;	../fb_lpc922.c:92: if(tx_nextsend != tx_nextwrite) { 			// wenn zu sendendes Objekt vorhanden
	mov	a,_tx_nextwrite
	cjne	a,_tx_nextsend,00330$
	ljmp	00150$
00330$:
	C$fb_lpc922.c$96$3$3 ==.
;	../fb_lpc922.c:96: unsigned char objno=tx_buffer[tx_nextsend];
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r1,a
	mov	ar7,@r1
	C$fb_lpc922.c$97$3$3 ==.
;	../fb_lpc922.c:97: __bit build_ok=0;
	clr	b0
	C$fb_lpc922.c$99$3$3 ==.
;	../fb_lpc922.c:99: unsigned int gapos=0xFE;
	mov	r5,#0xFE
	mov	r6,#0x00
	C$fb_lpc922.c$104$3$3 ==.
;	../fb_lpc922.c:104: repeatflag=objno&0x20;
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
	mov	r4,a
	add	a,#0xff
	mov	b1,c
	C$fb_lpc922.c$106$3$3 ==.
;	../fb_lpc922.c:106: if(objno<128) {		// Multicast
	cjne	r7,#0x80,00331$
00331$:
	jc	00332$
	ljmp	00135$
00332$:
	C$fb_lpc922.c$107$1$1 ==.
;	../fb_lpc922.c:107: type=(objno&0x40);	// bei Multicast ist type0 normal und type1 response telegramm
	push	ar5
	push	ar6
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	b2,c
	C$fb_lpc922.c$108$4$4 ==.
;	../fb_lpc922.c:108: objno&=0x1F;
	anl	ar7,#0x1F
	C$fb_lpc922.c$110$4$4 ==.
;	../fb_lpc922.c:110: objvalue=read_obj_value(objno);		// Objektwert lesen
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
	C$fb_lpc922.c$113$4$4 ==.
;	../fb_lpc922.c:113: asspos=eeprom[ASSOCTABPTR]+1+2*objno;
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	r6
	mov	a,r7
	add	a,r7
	mov	r5,a
	add	a,r6
	C$fb_lpc922.c$114$4$4 ==.
;	../fb_lpc922.c:114: if(eeprom[asspos+1]==objno) gapos=eeprom[asspos];
	mov	r4,a
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	cjne	a,ar7,00333$
	sjmp	00334$
00333$:
	pop	ar6
	pop	ar5
	sjmp	00103$
00334$:
	pop	ar6
	pop	ar5
	mov	dpl,r4
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r5,a
	mov	r6,#0x00
00103$:
	C$fb_lpc922.c$116$4$4 ==.
;	../fb_lpc922.c:116: if (gapos!=0xFE) // wenn keine Gruppenadresse hinterlegt nix tun
	cjne	r5,#0xFE,00335$
	cjne	r6,#0x00,00335$
	ljmp	00136$
00335$:
	C$fb_lpc922.c$118$5$5 ==.
;	../fb_lpc922.c:118: telegramm[0]=0xBC;
	mov	_telegramm,#0xBC
	C$fb_lpc922.c$119$5$5 ==.
;	../fb_lpc922.c:119: telegramm[1]=eeprom[ADDRTAB+1];
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	(_telegramm + 0x0001),r4
	C$fb_lpc922.c$120$5$5 ==.
;	../fb_lpc922.c:120: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	(_telegramm + 0x0002),r4
	C$fb_lpc922.c$121$5$5 ==.
;	../fb_lpc922.c:121: telegramm[3]=eeprom[ADDRTAB+1+gapos*2];
	mov	a,r5
	add	a,r5
	mov	r5,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0003),r6
	C$fb_lpc922.c$122$5$5 ==.
;	../fb_lpc922.c:122: telegramm[4]=eeprom[ADDRTAB+2+gapos*2];
	mov	a,#0x18
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0004),r6
	C$fb_lpc922.c$123$5$5 ==.
;	../fb_lpc922.c:123: telegramm[6]=0x00;
	mov	(_telegramm + 0x0006),#0x00
	C$fb_lpc922.c$124$5$5 ==.
;	../fb_lpc922.c:124: if (type) telegramm[7]=0x40;		// read_value_response Telegramm (angefordert)
	jnb	b2,00105$
	mov	(_telegramm + 0x0007),#0x40
	sjmp	00106$
00105$:
	C$fb_lpc922.c$125$5$5 ==.
;	../fb_lpc922.c:125: else telegramm[7]=0x80;				// write_value_request Telegramm (nicht angefordert)
	mov	(_telegramm + 0x0007),#0x80
00106$:
	C$fb_lpc922.c$127$5$5 ==.
;	../fb_lpc922.c:127: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
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
	C$fb_lpc922.c$129$5$5 ==.
;	../fb_lpc922.c:129: if(objtype>6) length=objtype-5; else length=1;
	mov  r6,a
	add	a,#0xff - 0x06
	jnc	00108$
	mov	a,r6
	add	a,#0xFB
	mov	r6,a
	sjmp	00109$
00108$:
	mov	r6,#0x01
00109$:
	C$fb_lpc922.c$130$5$5 ==.
;	../fb_lpc922.c:130: telegramm[5]=0xE0+length;
	mov	a,#0xE0
	add	a,r6
	mov	(_telegramm + 0x0005),a
	C$fb_lpc922.c$131$5$5 ==.
;	../fb_lpc922.c:131: if (length>1) telegramm[length+6]=objvalue; else telegramm[7]+=(objvalue&0x3F);
	mov	a,r6
	add	a,#0xff - 0x01
	jnc	00111$
	mov	a,#0x06
	add	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	mov	@r1,ar5
	sjmp	00112$
00111$:
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
00112$:
	C$fb_lpc922.c$132$5$5 ==.
;	../fb_lpc922.c:132: if (length>2) telegramm[length+5]=objvalue>>8;
	mov	a,r6
	add	a,#0xff - 0x02
	jnc	00114$
	mov	a,#0x05
	add	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar5,@r0
	mov	@r1,ar5
00114$:
	C$fb_lpc922.c$133$5$5 ==.
;	../fb_lpc922.c:133: if (length>3) telegramm[length+4]=objvalue>>16;
	mov	a,r6
	add	a,#0xff - 0x03
	jnc	00116$
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
00116$:
	C$fb_lpc922.c$134$5$5 ==.
;	../fb_lpc922.c:134: if (length>4) telegramm[length+3]=objvalue>>24;
	mov	a,r6
	add	a,#0xff - 0x04
	jnc	00118$
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
00118$:
	C$fb_lpc922.c$136$5$5 ==.
;	../fb_lpc922.c:136: build_ok=1;
	setb	b0
	ljmp	00136$
00135$:
	C$fb_lpc922.c$140$4$6 ==.
;	../fb_lpc922.c:140: telegramm[0]=0xB0;				// Control Byte
	mov	_telegramm,#0xB0
	C$fb_lpc922.c$141$4$6 ==.
;	../fb_lpc922.c:141: telegramm[1]=eeprom[ADDRTAB+1];	// Quelladresse ist phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0001),r6
	C$fb_lpc922.c$142$4$6 ==.
;	../fb_lpc922.c:142: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	(_telegramm + 0x0002),r6
	C$fb_lpc922.c$143$4$6 ==.
;	../fb_lpc922.c:143: telegramm[3]=conh;
	mov	(_telegramm + 0x0003),_conh
	C$fb_lpc922.c$144$4$6 ==.
;	../fb_lpc922.c:144: telegramm[4]=conl;
	mov	(_telegramm + 0x0004),_conl
	C$fb_lpc922.c$146$4$6 ==.
;	../fb_lpc922.c:146: switch(objno&0x1F) {
	anl	ar7,#0x1F
	mov	a,r7
	add	a,#0xff - 0x07
	jnc	00342$
	ljmp	00133$
00342$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00343$
	jmp	@a+dptr
00343$:
	ljmp	00133$
	ljmp	00121$
	ljmp	00122$
	ljmp	00123$
	ljmp	00124$
	ljmp	00130$
	ljmp	00131$
	ljmp	00132$
	C$fb_lpc922.c$147$5$7 ==.
;	../fb_lpc922.c:147: case 1:	// NCD ACK Quittierung (129) mit Paketnummer vom Sender, nicht der Eigenen!!!
00121$:
	C$fb_lpc922.c$148$5$7 ==.
;	../fb_lpc922.c:148: telegramm[5]=0x60;					// DRL
	mov	(_telegramm + 0x0005),#0x60
	C$fb_lpc922.c$149$5$7 ==.
;	../fb_lpc922.c:149: telegramm[6]=senders_pcount + 0xC2;	// Bit 6,7(TCPI = 11 NCD Quittierung) und Bit 0,1 (10=ACK)
	mov	a,#0xC2
	add	a,_senders_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$150$5$7 ==.
;	../fb_lpc922.c:150: break;
	ljmp	00133$
	C$fb_lpc922.c$151$5$7 ==.
;	../fb_lpc922.c:151: case 2:	// read mask response (130)
00122$:
	C$fb_lpc922.c$152$5$7 ==.
;	../fb_lpc922.c:152: telegramm[5]=0x63;					// DRL
	mov	(_telegramm + 0x0005),#0x63
	C$fb_lpc922.c$153$5$7 ==.
;	../fb_lpc922.c:153: telegramm[6]=pcount + 0x43;			// bei response immer eigene Paketnummer senden
	mov	a,#0x43
	add	a,_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$154$5$7 ==.
;	../fb_lpc922.c:154: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
	C$fb_lpc922.c$155$5$7 ==.
;	../fb_lpc922.c:155: telegramm[8]=0x00;                  // Medium Type 0 (TP1), FW Type 0
	mov	(_telegramm + 0x0008),#0x00
	C$fb_lpc922.c$156$5$7 ==.
;	../fb_lpc922.c:156: telegramm[9]=0x12;					// FW Version 1.2 (Maskenversion 1.2 = BCU1)
	mov	(_telegramm + 0x0009),#0x12
	C$fb_lpc922.c$157$5$7 ==.
;	../fb_lpc922.c:157: inc_pcount=1;
	setb	_inc_pcount
	C$fb_lpc922.c$158$5$7 ==.
;	../fb_lpc922.c:158: break;
	ljmp	00133$
	C$fb_lpc922.c$159$5$7 ==.
;	../fb_lpc922.c:159: case 3:	// read PA response (131)
00123$:
	C$fb_lpc922.c$160$5$7 ==.
;	../fb_lpc922.c:160: telegramm[3]=0x00;			// Zieladresse auf 0000, da Broadcast
	mov	(_telegramm + 0x0003),#0x00
	C$fb_lpc922.c$161$5$7 ==.
;	../fb_lpc922.c:161: telegramm[4]=0x00;
	mov	(_telegramm + 0x0004),#0x00
	C$fb_lpc922.c$162$5$7 ==.
;	../fb_lpc922.c:162: telegramm[5]=0xE1;			// DRL
	mov	(_telegramm + 0x0005),#0xE1
	C$fb_lpc922.c$163$5$7 ==.
;	../fb_lpc922.c:163: telegramm[6]=0x01;
	mov	(_telegramm + 0x0006),#0x01
	C$fb_lpc922.c$164$5$7 ==.
;	../fb_lpc922.c:164: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
	C$fb_lpc922.c$165$5$7 ==.
;	../fb_lpc922.c:165: break;
	ljmp	00133$
	C$fb_lpc922.c$166$5$7 ==.
;	../fb_lpc922.c:166: case 4:	// memory_read_response (132)
00124$:
	C$fb_lpc922.c$167$1$1 ==.
;	../fb_lpc922.c:167: for(n=0;n<mem_length;n++) {
	mov	r7,#0x00
00256$:
	clr	c
	mov	a,r7
	subb	a,_mem_length
	jnc	00259$
	C$fb_lpc922.c$168$6$8 ==.
;	../fb_lpc922.c:168: if (mem_adrh==0) {
	mov	a,_mem_adrh
	jnz	00128$
	C$fb_lpc922.c$169$7$9 ==.
;	../fb_lpc922.c:169: telegramm[n+10]=0;//userram[mem_adrl+n];
	mov	a,#0x0A
	add	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,#0x00
	C$fb_lpc922.c$170$7$9 ==.
;	../fb_lpc922.c:170: if(mem_adrl+n==0x60) telegramm[n+10]=status60;	// ausser bei 0x60
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
	cjne	r5,#0x60,00258$
	cjne	r6,#0x00,00258$
	mov	a,#0x0A
	add	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,_status60
	sjmp	00258$
00128$:
	C$fb_lpc922.c$172$6$8 ==.
;	../fb_lpc922.c:172: else telegramm[n+10]=eeprom[mem_adrl+n];//else if (mem_adrh==1)
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
00258$:
	C$fb_lpc922.c$167$5$7 ==.
;	../fb_lpc922.c:167: for(n=0;n<mem_length;n++) {
	inc	r7
	sjmp	00256$
00259$:
	C$fb_lpc922.c$175$5$7 ==.
;	../fb_lpc922.c:175: telegramm[5]=mem_length+0x63;		// DRL (Anzahl Bytes + 3)
	mov	a,#0x63
	add	a,_mem_length
	mov	(_telegramm + 0x0005),a
	C$fb_lpc922.c$176$5$7 ==.
;	../fb_lpc922.c:176: telegramm[6]=pcount|0x42;			// eigener Paketzaehler, TCPI und ersten beiden Befehlsbits
	mov	a,#0x42
	orl	a,_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$177$5$7 ==.
;	../fb_lpc922.c:177: telegramm[7]=mem_length|0x40;		// letzten 2 Befehlsbits
	mov	a,#0x40
	orl	a,_mem_length
	mov	(_telegramm + 0x0007),a
	C$fb_lpc922.c$178$5$7 ==.
;	../fb_lpc922.c:178: telegramm[8]=mem_adrh;
	mov	(_telegramm + 0x0008),_mem_adrh
	C$fb_lpc922.c$179$5$7 ==.
;	../fb_lpc922.c:179: telegramm[9]=mem_adrl;
	mov	(_telegramm + 0x0009),_mem_adrl
	C$fb_lpc922.c$180$5$7 ==.
;	../fb_lpc922.c:180: inc_pcount=1;
	setb	_inc_pcount
	C$fb_lpc922.c$181$5$7 ==.
;	../fb_lpc922.c:181: break;
	C$fb_lpc922.c$182$5$7 ==.
;	../fb_lpc922.c:182: case 5:	// T-disconnect (133)
	sjmp	00133$
00130$:
	C$fb_lpc922.c$183$5$7 ==.
;	../fb_lpc922.c:183: telegramm[5]=0x60;
	mov	(_telegramm + 0x0005),#0x60
	C$fb_lpc922.c$184$5$7 ==.
;	../fb_lpc922.c:184: telegramm[6]=0x81;
	mov	(_telegramm + 0x0006),#0x81
	C$fb_lpc922.c$185$5$7 ==.
;	../fb_lpc922.c:185: connected=0;
	clr	_connected
	C$fb_lpc922.c$186$5$7 ==.
;	../fb_lpc922.c:186: break;
	C$fb_lpc922.c$188$5$7 ==.
;	../fb_lpc922.c:188: case 6: // READ_ADC_RESPONSE (134)
	sjmp	00133$
00131$:
	C$fb_lpc922.c$189$5$7 ==.
;	../fb_lpc922.c:189: telegramm[5]=0x64;                  // DRL
	mov	(_telegramm + 0x0005),#0x64
	C$fb_lpc922.c$190$5$7 ==.
;	../fb_lpc922.c:190: telegramm[6]=pcount |0x41;          // eigener Paketzaehler, TCPI und erstes Befehlsbit
	mov	a,#0x41
	orl	a,_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$191$5$7 ==.
;	../fb_lpc922.c:191: telegramm[7]=mem_adrh |0x40;        // ARCRead Response for selected channel
	mov	a,#0x40
	orl	a,_mem_adrh
	mov	(_telegramm + 0x0007),a
	C$fb_lpc922.c$192$5$7 ==.
;	../fb_lpc922.c:192: telegramm[8]=mem_adrl;              // Requested sample count
	mov	(_telegramm + 0x0008),_mem_adrl
	C$fb_lpc922.c$193$5$7 ==.
;	../fb_lpc922.c:193: telegramm[9]=0x05;                  // ADC1 Bus Voltage 0x0610 = 29.1V (ADC = U/0.1875)
	mov	(_telegramm + 0x0009),#0x05
	C$fb_lpc922.c$194$5$7 ==.
;	../fb_lpc922.c:194: telegramm[10]=0xA0;                 // 0x0602=28.8V, 0x0605=28.9V, 0x0642=30V, 0x0648=30.2V
	mov	(_telegramm + 0x000a),#0xA0
	C$fb_lpc922.c$195$5$7 ==.
;	../fb_lpc922.c:195: inc_pcount=1;                       // ADC4 PEI Type 0x0610 = PEI 15, 0x05A0 = PEI 14
	setb	_inc_pcount
	C$fb_lpc922.c$196$5$7 ==.
;	../fb_lpc922.c:196: break;
	C$fb_lpc922.c$198$5$7 ==.
;	../fb_lpc922.c:198: case 7: // NCD ACK Quittierung (135) mit eigener Paketnummer
	sjmp	00133$
00132$:
	C$fb_lpc922.c$199$5$7 ==.
;	../fb_lpc922.c:199: telegramm[5]=0x60;                  // DRL
	mov	(_telegramm + 0x0005),#0x60
	C$fb_lpc922.c$200$5$7 ==.
;	../fb_lpc922.c:200: telegramm[6]=pcount + 0xC2;         // Bit 6,7(TCPI = 11 NCD Quittierung) und Bit 0,1 (10=ACK)
	mov	a,#0xC2
	add	a,_pcount
	mov	(_telegramm + 0x0006),a
	C$fb_lpc922.c$203$4$6 ==.
;	../fb_lpc922.c:203: }
00133$:
	C$fb_lpc922.c$204$4$6 ==.
;	../fb_lpc922.c:204: build_ok=1;
	setb	b0
00136$:
	C$fb_lpc922.c$206$3$3 ==.
;	../fb_lpc922.c:206: if(repeatflag) telegramm[0]&=0xDF;		// Wiederholungsbit loeschen fuer Wiederholtelegramm
	jnb	b1,00138$
	mov	a,#0xDF
	anl	a,_telegramm
	mov	_telegramm,a
00138$:
	C$fb_lpc922.c$209$3$3 ==.
;	../fb_lpc922.c:209: if(build_ok){//(build_tel(tx_buffer[tx_nextsend])) {	// wenn Telegramm gebildet werden konnte
	jnb	b0,00147$
	C$fb_lpc922.c$210$4$10 ==.
;	../fb_lpc922.c:210: EX1=0; 				//Um zu vermeiden dass man in die Abfrage hinein-empfaengt
	clr	_IEN0_2
	C$fb_lpc922.c$211$4$10 ==.
;	../fb_lpc922.c:211: if(!fb_state) { 	//nur bilden wenn vorher kein rx_intit durch ext int kam
	mov	a,_fb_state
	jnz	00145$
	C$fb_lpc922.c$212$5$11 ==.
;	../fb_lpc922.c:212: if((tx_buffer[tx_nextsend]&0x20)==0) {	// wenn erstmaliges Senden des Objektes
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jb	acc.5,00140$
	C$fb_lpc922.c$213$6$12 ==.
;	../fb_lpc922.c:213: tx_buffer[tx_nextsend]|=0x20;		// Bit fuer "wird gerade gesendet"
	mov	a,#0x20
	orl	a,r7
	mov	@r1,a
	C$fb_lpc922.c$214$6$12 ==.
;	../fb_lpc922.c:214: repeat_count=0;						// Wiederholungszaehler fuer nicht geackte Telegramme
	mov	_repeat_count,#0x00
00140$:
	C$fb_lpc922.c$216$5$11 ==.
;	../fb_lpc922.c:216: if (repeat_count<4) init_tx();		// Senden starten
	mov	a,#0x100 - 0x04
	add	a,_repeat_count
	jc	00142$
	lcall	_init_tx
	sjmp	00145$
00142$:
	C$fb_lpc922.c$218$6$13 ==.
;	../fb_lpc922.c:218: tx_nextsend++;
	inc	_tx_nextsend
	C$fb_lpc922.c$219$6$13 ==.
;	../fb_lpc922.c:219: tx_nextsend&=0x07;
	anl	_tx_nextsend,#0x07
	C$fb_lpc922.c$220$6$13 ==.
;	../fb_lpc922.c:220: wait_for_ack=0;
	clr	_wait_for_ack
	C$fb_lpc922.c$221$6$13 ==.
;	../fb_lpc922.c:221: inc_pcount=0;
	clr	_inc_pcount
	C$fb_lpc922.c$222$6$13 ==.
;	../fb_lpc922.c:222: init_rx();
	lcall	_init_rx
	C$fb_lpc922.c$223$6$13 ==.
;	../fb_lpc922.c:223: TR1=0;		// hier nicht noch einmal die ganze busfree Zeit warten
	clr	_TCON_6
	C$fb_lpc922.c$224$6$13 ==.
;	../fb_lpc922.c:224: TH1=0xF0;
	mov	_TH1,#0xF0
	C$fb_lpc922.c$225$6$13 ==.
;	../fb_lpc922.c:225: TL1=0x00;
	mov	_TL1,#0x00
	C$fb_lpc922.c$226$6$13 ==.
;	../fb_lpc922.c:226: TR1=1;
	setb	_TCON_6
00145$:
	C$fb_lpc922.c$229$4$10 ==.
;	../fb_lpc922.c:229: EX1=1;	// ext1 int einschalten falls Empfang...
	setb	_IEN0_2
	ljmp	00255$
00147$:
	C$fb_lpc922.c$232$4$14 ==.
;	../fb_lpc922.c:232: tx_nextsend++; //hier Zeiger erhoehen wenn Telegramm nicht gebildet werden konnte
	inc	_tx_nextsend
	C$fb_lpc922.c$233$4$14 ==.
;	../fb_lpc922.c:233: tx_nextsend&=0x07;
	anl	_tx_nextsend,#0x07
	ljmp	00255$
00150$:
	C$fb_lpc922.c$237$3$15 ==.
;	../fb_lpc922.c:237: TR1=0;		// nichts mehr zu tun, also statemachine stoppen
	clr	_TCON_6
	C$fb_lpc922.c$238$3$15 ==.
;	../fb_lpc922.c:238: EX1=1;		// sicherstellen, dass ext. Int. 1 aktiv ist
	setb	_IEN0_2
	C$fb_lpc922.c$240$2$2 ==.
;	../fb_lpc922.c:240: break;
	ljmp	00255$
	C$fb_lpc922.c$243$2$2 ==.
;	../fb_lpc922.c:243: case 2: // T=75us
00152$:
	C$fb_lpc922.c$244$2$2 ==.
;	../fb_lpc922.c:244: fbrx_bit=!IE1;				// Flipflop des ext. Int. 1 auslesen, ist 1 bei fallender Flanke am Pin
	mov	c,_TCON_3
	cpl	c
	mov	b0,c
	C$fb_lpc922.c$245$2$2 ==.
;	../fb_lpc922.c:245: IE1=0;						// Flipflop zuruecksetzen
	clr	_TCON_3
	C$fb_lpc922.c$246$2$2 ==.
;	../fb_lpc922.c:246: fb_state=3;// naechster state: 3
	mov	_fb_state,#0x03
	C$fb_lpc922.c$247$2$2 ==.
;	../fb_lpc922.c:247: TH1=0;// reload auf 70µs (zeit swischen state 3 und 2)
	mov	_TH1,#0x00
	C$fb_lpc922.c$248$2$2 ==.
;	../fb_lpc922.c:248: if(fb_pattern==0) {			// fb_pattern=0 bedeutet, dass bisher nur das Startbit empfangen wurde
	mov	a,_fb_pattern
	jnz	00187$
	C$fb_lpc922.c$249$3$16 ==.
;	../fb_lpc922.c:249: fb_pattern=1;			// 70us nach Startbit, als naecstes kommt Datenbit 0
	mov	_fb_pattern,#0x01
	C$fb_lpc922.c$250$3$16 ==.
;	../fb_lpc922.c:250: ack=0;					// Empfang eines neuen Bytes, also ack/nack Flags zuruecksetzen
	clr	_ack
	C$fb_lpc922.c$251$3$16 ==.
;	../fb_lpc922.c:251: nack=0;
	clr	_nack
	ljmp	00255$
00187$:
	C$fb_lpc922.c$254$3$17 ==.
;	../fb_lpc922.c:254: if(fb_pattern<129) {					// Daten-Bit LSB first
	mov	a,#0x100 - 0x81
	add	a,_fb_pattern
	jc	00184$
	C$fb_lpc922.c$255$4$18 ==.
;	../fb_lpc922.c:255: if(fbrx_bit) {
	jnb	b0,00154$
	C$fb_lpc922.c$256$5$19 ==.
;	../fb_lpc922.c:256: fb_parity=!fb_parity;			// Paritybit berechnen
	cpl	_fb_parity
	C$fb_lpc922.c$257$5$19 ==.
;	../fb_lpc922.c:257: fbrx_byte+=fb_pattern;			// Datenbit speichern
	mov	a,_fb_pattern
	add	a,_fbrx_byte
	mov	_fbrx_byte,a
00154$:
	C$fb_lpc922.c$259$4$18 ==.
;	../fb_lpc922.c:259: fb_pattern=fb_pattern<<1;			// naechstes Bit
	mov	a,_fb_pattern
	add	a,_fb_pattern
	C$fb_lpc922.c$260$4$18 ==.
;	../fb_lpc922.c:260: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gelesen, Parity-Bit folgt
	mov	_fb_pattern,a
	jz	00356$
	ljmp	00255$
00356$:
	mov	_fb_pattern,#0x81
	ljmp	00255$
00184$:
	C$fb_lpc922.c$263$4$20 ==.
;	../fb_lpc922.c:263: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$264$4$20 ==.
;	../fb_lpc922.c:264: TF1=0; //pruefen ob erforderlich!!!
	clr	_TCON_7
	C$fb_lpc922.c$265$4$20 ==.
;	../fb_lpc922.c:265: if(fb_parity==fbrx_bit) {				// Parity-Bit OK
	mov	c,_fb_parity
	jb	b0,00357$
	cpl	c
00357$:
	jnc	00168$
	C$fb_lpc922.c$266$5$21 ==.
;	../fb_lpc922.c:266: if (telpos==0) {						// erstes empfangenes Byte
	mov	a,_telpos
	jnz	00162$
	C$fb_lpc922.c$267$6$22 ==.
;	../fb_lpc922.c:267: if (fbrx_byte==0xCC) ack=1;				// ACK empfangen
	mov	a,#0xCC
	cjne	a,_fbrx_byte,00158$
	setb	_ack
00158$:
	C$fb_lpc922.c$268$6$22 ==.
;	../fb_lpc922.c:268: if (fbrx_byte==0x0C) nack=1;			// NACK empfangen
	mov	a,#0x0C
	cjne	a,_fbrx_byte,00162$
	setb	_nack
00162$:
	C$fb_lpc922.c$270$5$21 ==.
;	../fb_lpc922.c:270: if (!ack && !nack && telpos<=22) {			// Datenbyte empfangen, pointer auf Arraygroesse begrenzen
	jb	_ack,00169$
	jb	_nack,00169$
	mov	a,_telpos
	add	a,#0xff - 0x16
	jc	00169$
	C$fb_lpc922.c$271$6$23 ==.
;	../fb_lpc922.c:271: telegramm[telpos]=fbrx_byte;			// Byte speichern
	mov	a,_telpos
	add	a,#_telegramm
	mov	r0,a
	C$fb_lpc922.c$272$6$23 ==.
;	../fb_lpc922.c:272: cs^=fbrx_byte;							// Checksum berechnen
	mov	a,_fbrx_byte
	mov	@r0,a
	xrl	_cs,a
	C$fb_lpc922.c$273$6$23 ==.
;	../fb_lpc922.c:273: telpos++;								// Telegrammzeiger erhoehen
	inc	_telpos
	sjmp	00169$
00168$:
	C$fb_lpc922.c$276$4$20 ==.
;	../fb_lpc922.c:276: else parity_ok=0;						// Parity Error
	clr	_parity_ok
00169$:
	C$fb_lpc922.c$278$4$20 ==.
;	../fb_lpc922.c:278: if (wait_for_ack) {						// es wird ein ACK erwartet
	C$fb_lpc922.c$279$5$24 ==.
;	../fb_lpc922.c:279: wait_for_ack=0;							// Flag zurücksetzen, da wir es ja gerade abarbeiten
	jbc	_wait_for_ack,00367$
	sjmp	00181$
00367$:
	C$fb_lpc922.c$280$5$24 ==.
;	../fb_lpc922.c:280: if (ack && parity_ok) {					// ACK empfangen und auch erwartet
	jnb	_ack,00173$
	jnb	_parity_ok,00173$
	C$fb_lpc922.c$281$6$25 ==.
;	../fb_lpc922.c:281: repeat_count=4;						// keine Wiederholtelegramme mehr senden
	mov	_repeat_count,#0x04
	C$fb_lpc922.c$282$6$25 ==.
;	../fb_lpc922.c:282: if(inc_pcount) {
	C$fb_lpc922.c$283$7$26 ==.
;	../fb_lpc922.c:283: inc_pcount=0;
	jbc	_inc_pcount,00370$
	sjmp	00173$
00370$:
	C$fb_lpc922.c$284$7$26 ==.
;	../fb_lpc922.c:284: pcount+=4;
	mov	a,_pcount
	add	a,#0x04
	mov	_pcount,a
	C$fb_lpc922.c$285$7$26 ==.
;	../fb_lpc922.c:285: pcount&=0x3C;
	anl	_pcount,#0x3C
00173$:
	C$fb_lpc922.c$288$5$24 ==.
;	../fb_lpc922.c:288: init_rx();
	lcall	_init_rx
	ljmp	00255$
00181$:
	C$fb_lpc922.c$291$5$27 ==.
;	../fb_lpc922.c:291: if (parity_ok && (!ack && !nack)) {		// ganz normales Datenbyte
	jnb	_parity_ok,00176$
	jb	_ack,00176$
	jb	_nack,00176$
	C$fb_lpc922.c$292$6$28 ==.
;	../fb_lpc922.c:292: TMOD=(TMOD & 0x0F) +0x10;			// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$293$6$28 ==.
;	../fb_lpc922.c:293: TH1=0xFA;//0xFA;							// Timer 1 auf Timeout-Position setzen (370us)
	mov	_TH1,#0xFA
	C$fb_lpc922.c$294$6$28 ==.
;	../fb_lpc922.c:294: TL1=0x70;//4f 0xAB; (bis hierher sinds 91Âµs)
	mov	_TL1,#0x70
	C$fb_lpc922.c$295$6$28 ==.
;	../fb_lpc922.c:295: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$296$6$28 ==.
;	../fb_lpc922.c:296: fb_state=4;							// naechster state: timeout = Telegramm fertig
	mov	_fb_state,#0x04
	C$fb_lpc922.c$297$6$28 ==.
;	../fb_lpc922.c:297: EX1=1;								// int1 aktiv, falls noch ein Byte kommt
	setb	_IEN0_2
	ljmp	00255$
00176$:
	C$fb_lpc922.c$299$5$27 ==.
;	../fb_lpc922.c:299: else init_rx();							// irgendwas empfangen
	lcall	_init_rx
	C$fb_lpc922.c$303$2$2 ==.
;	../fb_lpc922.c:303: break;
	ljmp	00255$
	C$fb_lpc922.c$305$2$2 ==.
;	../fb_lpc922.c:305: case 3: // T=104us=0us
00189$:
	C$fb_lpc922.c$306$2$2 ==.
;	../fb_lpc922.c:306: TH1=128;// reload auf 35Âµs (Zeit zwischen State 2 und 3)
	mov	_TH1,#0x80
	C$fb_lpc922.c$307$2$2 ==.
;	../fb_lpc922.c:307: fb_state=2;//1
	mov	_fb_state,#0x02
	C$fb_lpc922.c$308$2$2 ==.
;	../fb_lpc922.c:308: break;
	ljmp	00255$
	C$fb_lpc922.c$310$2$2 ==.
;	../fb_lpc922.c:310: case 4:	//	Timeout, d.h. Telegramm-Ende
00190$:
	C$fb_lpc922.c$311$2$2 ==.
;	../fb_lpc922.c:311: if (auto_ack && telpos>7) {//>4		// wenn ACK/NACK gesendet werden soll und Telegramm zumindest 7 Bytes hat, da sonst ein NACK wenig Sinn macht
	jb	_auto_ack,00374$
	ljmp	00208$
00374$:
	mov	a,_telpos
	add	a,#0xff - 0x07
	jnc	00208$
	C$fb_lpc922.c$312$3$29 ==.
;	../fb_lpc922.c:312: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$313$3$29 ==.
;	../fb_lpc922.c:313: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$314$3$29 ==.
;	../fb_lpc922.c:314: TH1=0xEF;					// Timer 1 auf ACK / NACK -Position setzen (15 Bit Pause = 2708Âµs (26 Bit) nach Beginn Startbit vom letzten Datenbyte)
	mov	_TH1,#0xEF
	C$fb_lpc922.c$315$3$29 ==.
;	../fb_lpc922.c:315: TL1=0x42;
	mov	_TL1,#0x42
	C$fb_lpc922.c$316$3$29 ==.
;	../fb_lpc922.c:316: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$317$3$29 ==.
;	../fb_lpc922.c:317: its_me=0;//transparency; // indiziert, ob dieses Geraet adressiert wurde, bei transparecy=1 immer
	clr	_its_me
	C$fb_lpc922.c$318$3$29 ==.
;	../fb_lpc922.c:318: if(telegramm[5]&0x80) {
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00200$
	C$fb_lpc922.c$319$4$30 ==.
;	../fb_lpc922.c:319: if (gapos_in_gat(telegramm[3],telegramm[4])!=0xFF) its_me=1;	// Gruppenadresse
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	cjne	r7,#0xFF,00377$
	sjmp	00192$
00377$:
	setb	_its_me
00192$:
	C$fb_lpc922.c$320$4$30 ==.
;	../fb_lpc922.c:320: if (telegramm[3]==0 && telegramm[4]==0) its_me=1;				// Broadcast
	mov	a,(_telegramm + 0x0003)
	jnz	00201$
	mov	a,(_telegramm + 0x0004)
	jnz	00201$
	setb	_its_me
	sjmp	00201$
00200$:
	C$fb_lpc922.c$322$3$29 ==.
;	../fb_lpc922.c:322: else if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) its_me=1;	// phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,(_telegramm + 0x0003),00201$
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,(_telegramm + 0x0004),00201$
	setb	_its_me
00201$:
	C$fb_lpc922.c$325$3$29 ==.
;	../fb_lpc922.c:325: if ((cs==0xFF)&&((telegramm[5]&0x0F)+8)== (telpos))
	mov	a,#0xFF
	cjne	a,_cs,00205$
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	mov	r7,a
	mov	r6,#0x00
	mov	a,#0x08
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r4,_telpos
	mov	r5,#0x00
	mov	a,r7
	cjne	a,ar4,00205$
	mov	a,r6
	cjne	a,ar5,00205$
	C$fb_lpc922.c$327$4$31 ==.
;	../fb_lpc922.c:327: telegramm_ok=1;
	setb	_telegramm_ok
	C$fb_lpc922.c$328$4$31 ==.
;	../fb_lpc922.c:328: if(its_me)tel_arrived=1;//&&(telegramm[5]&0x0F== telpos-8)
	jnb	_its_me,00205$
	setb	_tel_arrived
00205$:
	C$fb_lpc922.c$330$3$29 ==.
;	../fb_lpc922.c:330: fb_state=5;					// naechster state: ACK-Position erreicht
	mov	_fb_state,#0x05
	ljmp	00255$
00208$:
	C$fb_lpc922.c$335$3$32 ==.
;	../fb_lpc922.c:335: init_rx();						// wieder in den Empfang zurück
	lcall	_init_rx
	C$fb_lpc922.c$337$2$2 ==.
;	../fb_lpc922.c:337: break;
	ljmp	00255$
	C$fb_lpc922.c$339$2$2 ==.
;	../fb_lpc922.c:339: case 5:	// ACK-Position erreicht
00211$:
	C$fb_lpc922.c$340$2$2 ==.
;	../fb_lpc922.c:340: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$341$2$2 ==.
;	../fb_lpc922.c:341: if (telegramm_ok) {	// Checksum und Laenge OK
	jnb	_telegramm_ok,00216$
	C$fb_lpc922.c$342$3$33 ==.
;	../fb_lpc922.c:342: if (its_me) {					// Gerät adressiert
	jnb	_its_me,00213$
	C$fb_lpc922.c$343$4$34 ==.
;	../fb_lpc922.c:343: send_ack=1;
	setb	_send_ack
	C$fb_lpc922.c$344$4$34 ==.
;	../fb_lpc922.c:344: init_tx();						// Senden initiieren
	lcall	_init_tx
	C$fb_lpc922.c$345$4$34 ==.
;	../fb_lpc922.c:345: wait_for_ack=0;					// bei ACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
	ljmp	00255$
00213$:
	C$fb_lpc922.c$347$3$33 ==.
;	../fb_lpc922.c:347: else init_rx();					// Gerät nicht adressiert, also zurück zu Empfang
	lcall	_init_rx
	ljmp	00255$
00216$:
	C$fb_lpc922.c$350$3$35 ==.
;	../fb_lpc922.c:350: send_nack=1;
	setb	_send_nack
	C$fb_lpc922.c$351$3$35 ==.
;	../fb_lpc922.c:351: init_tx();
	lcall	_init_tx
	C$fb_lpc922.c$352$3$35 ==.
;	../fb_lpc922.c:352: wait_for_ack=0;					// bei NACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
	C$fb_lpc922.c$354$2$2 ==.
;	../fb_lpc922.c:354: break;
	ljmp	00255$
	C$fb_lpc922.c$358$2$2 ==.
;	../fb_lpc922.c:358: case 10:	// Byte Senden, T=0us
00218$:
	C$fb_lpc922.c$359$2$2 ==.
;	../fb_lpc922.c:359: send_byte=telegramm[telpos];
	mov	a,_telpos
	add	a,#_telegramm
	mov	r1,a
	mov	ar7,@r1
	C$fb_lpc922.c$360$2$2 ==.
;	../fb_lpc922.c:360: if (send_ack) send_byte=0xCC;
	jnb	_send_ack,00220$
	mov	r7,#0xCC
00220$:
	C$fb_lpc922.c$361$2$2 ==.
;	../fb_lpc922.c:361: if (send_nack) send_byte=0x0C;
	jnb	_send_nack,00222$
	mov	r7,#0x0C
00222$:
	C$fb_lpc922.c$362$2$2 ==.
;	../fb_lpc922.c:362: EX1=0;					// Empfang verhindern
	clr	_IEN0_2
	C$fb_lpc922.c$363$2$2 ==.
;	../fb_lpc922.c:363: if(fb_state==10){
	mov	a,#0x0A
	cjne	a,_fb_state,00393$
	sjmp	00394$
00393$:
	ljmp	00255$
00394$:
	C$fb_lpc922.c$364$3$36 ==.
;	../fb_lpc922.c:364: if (fb_pattern<=128) {			// Startbit und Datenbits (pattern=0:startbit, 1 2 4 8 .. 128 Datenbits, 129 parity)
	mov	a,_fb_pattern
	add	a,#0xff - 0x80
	jc	00235$
	C$fb_lpc922.c$365$4$37 ==.
;	../fb_lpc922.c:365: if ((send_byte & fb_pattern)==0) {	// wenn Bit logisch 0 ist
	mov	a,_fb_pattern
	anl	a,r7
	jnz	00224$
	C$fb_lpc922.c$367$5$38 ==.
;	../fb_lpc922.c:367: FBOUTC=1;						// Bus runter ziehen
	setb	_P1_6
	C$fb_lpc922.c$369$5$38 ==.
;	../fb_lpc922.c:369: fbtx_bit=0;						// fbtx_bit dient zur spaeteren Kollisionspruefung
	clr	_fbtx_bit
	C$fb_lpc922.c$370$5$38 ==.
;	../fb_lpc922.c:370: fb_parity=!fb_parity;			// Parity-Bit berechnen
	cpl	_fb_parity
	sjmp	00225$
00224$:
	C$fb_lpc922.c$372$4$37 ==.
;	../fb_lpc922.c:372: else fbtx_bit=1;
	setb	_fbtx_bit
00225$:
	C$fb_lpc922.c$373$4$37 ==.
;	../fb_lpc922.c:373: if (fb_pattern==0) {				// wenn Startbit: parity zuruecksetzen
	mov	a,_fb_pattern
	jnz	00227$
	C$fb_lpc922.c$374$5$39 ==.
;	../fb_lpc922.c:374: fb_pattern=1;					// auf erstes Datenbit zeigen
	mov	_fb_pattern,#0x01
	C$fb_lpc922.c$375$5$39 ==.
;	../fb_lpc922.c:375: fb_parity=0;
	clr	_fb_parity
	sjmp	00228$
00227$:
	C$fb_lpc922.c$377$4$37 ==.
;	../fb_lpc922.c:377: else fb_pattern=fb_pattern<<1;		// naechstes Datenbit
	mov	a,_fb_pattern
	add	a,_fb_pattern
	mov	_fb_pattern,a
00228$:
	C$fb_lpc922.c$378$4$37 ==.
;	../fb_lpc922.c:378: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gesendet, Parity-Bit folgt
	mov	a,_fb_pattern
	jnz	00230$
	mov	_fb_pattern,#0x81
00230$:
	C$fb_lpc922.c$379$4$37 ==.
;	../fb_lpc922.c:379: fb_state=11;
	mov	_fb_state,#0x0B
	sjmp	00236$
00235$:
	C$fb_lpc922.c$382$4$40 ==.
;	../fb_lpc922.c:382: if (!fb_parity) {				// wenn Parity-Bit logisch 0
	jb	_fb_parity,00232$
	C$fb_lpc922.c$383$5$41 ==.
;	../fb_lpc922.c:383: FBOUTC=1;						// Bus runterziehen
	setb	_P1_6
	C$fb_lpc922.c$384$5$41 ==.
;	../fb_lpc922.c:384: fbtx_bit=0;						// fbtx_bit dient zur spaeteren Kollisionspruefung
	clr	_fbtx_bit
	sjmp	00233$
00232$:
	C$fb_lpc922.c$386$4$40 ==.
;	../fb_lpc922.c:386: else fbtx_bit=1;
	setb	_fbtx_bit
00233$:
	C$fb_lpc922.c$387$4$40 ==.
;	../fb_lpc922.c:387: telpos++;					// naechstes Byte
	inc	_telpos
	C$fb_lpc922.c$388$4$40 ==.
;	../fb_lpc922.c:388: fb_pattern=0;				// wieder mit Startbit beginnen
	mov	_fb_pattern,#0x00
	C$fb_lpc922.c$389$4$40 ==.
;	../fb_lpc922.c:389: fb_state=13;				// Pruefen ob Telegramm fertig
	mov	_fb_state,#0x0D
00236$:
	C$fb_lpc922.c$391$3$36 ==.
;	../fb_lpc922.c:391: TH1=18; //reload 70µ -delay interrupt (von state 11 auf 13)
	mov	_TH1,#0x12
	C$fb_lpc922.c$393$2$2 ==.
;	../fb_lpc922.c:393: break;
	ljmp	00255$
	C$fb_lpc922.c$395$2$2 ==.
;	../fb_lpc922.c:395: case 11:	// Sendestufe aus, T=35us
00239$:
	C$fb_lpc922.c$396$2$2 ==.
;	../fb_lpc922.c:396: if(telpos==0 && fb_pattern==1) {	// 1. Byte Startbit
	mov	a,_telpos
	jnz	00241$
	mov	a,#0x01
	cjne	a,_fb_pattern,00241$
	C$fb_lpc922.c$397$3$42 ==.
;	../fb_lpc922.c:397: repeat_count++;		// angefangener Sendeversuch, also Zaehler erhoehen
	inc	_repeat_count
00241$:
	C$fb_lpc922.c$399$2$2 ==.
;	../fb_lpc922.c:399: FBOUTC=0;				// Sendestufe aus
	clr	_P1_6
	C$fb_lpc922.c$400$2$2 ==.
;	../fb_lpc922.c:400: if (fbtx_bit & IE1) {	// Kollision
	mov	c,_fbtx_bit
	anl	c,_TCON_3
	jnc	00244$
	C$fb_lpc922.c$401$3$43 ==.
;	../fb_lpc922.c:401: wait_for_ack=0;
	clr	_wait_for_ack
	C$fb_lpc922.c$402$3$43 ==.
;	../fb_lpc922.c:402: init_rx();				// Senden abbrechen und Empfang initialisieren
	lcall	_init_rx
	sjmp	00245$
00244$:
	C$fb_lpc922.c$405$3$44 ==.
;	../fb_lpc922.c:405: fb_state=10;//12;
	mov	_fb_state,#0x0A
	C$fb_lpc922.c$406$3$44 ==.
;	../fb_lpc922.c:406: TH1=110;// 35Âµs + delay (von state 10 auf 11)
	mov	_TH1,#0x6E
00245$:
	C$fb_lpc922.c$408$2$2 ==.
;	../fb_lpc922.c:408: IE1=0;					// Flipflop loeschen
	clr	_TCON_3
	C$fb_lpc922.c$409$2$2 ==.
;	../fb_lpc922.c:409: break;
	C$fb_lpc922.c$415$2$2 ==.
;	../fb_lpc922.c:415: case 13:	// Byte uebertragen, T=35us, pruefen ob Telegramm fertig
	sjmp	00255$
00246$:
	C$fb_lpc922.c$416$2$2 ==.
;	../fb_lpc922.c:416: FBOUTC=0;
	clr	_P1_6
	C$fb_lpc922.c$417$2$2 ==.
;	../fb_lpc922.c:417: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$418$2$2 ==.
;	../fb_lpc922.c:418: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$419$2$2 ==.
;	../fb_lpc922.c:419: TH1=0xFB;					// Timer 1 auf Interbyte Abstand setzen (3 Bit Pause = 312Âµs
	mov	_TH1,#0xFB
	C$fb_lpc922.c$420$2$2 ==.
;	../fb_lpc922.c:420: TL1=0x90;
	mov	_TL1,#0x90
	C$fb_lpc922.c$421$2$2 ==.
;	../fb_lpc922.c:421: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$422$2$2 ==.
;	../fb_lpc922.c:422: if (send_ack || send_nack) {	// ACK/NACK senden
	jb	_send_ack,00250$
	jnb	_send_nack,00251$
00250$:
	C$fb_lpc922.c$423$3$45 ==.
;	../fb_lpc922.c:423: init_rx();					// ACK senden abgeschlossen, also statemachine auf Anfang
	lcall	_init_rx
	sjmp	00252$
00251$:
	C$fb_lpc922.c$426$3$46 ==.
;	../fb_lpc922.c:426: if (telpos>((telegramm[5]&0x0F)+7)) {		// Telegramm fertig gesendet
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
	jnc	00248$
	C$fb_lpc922.c$427$4$47 ==.
;	../fb_lpc922.c:427: tel_sent=1;
	setb	_tel_sent
	C$fb_lpc922.c$428$4$47 ==.
;	../fb_lpc922.c:428: init_rx();	// Telegramm senden abgeschlossen, ggf. wiederholen wenn nicht geackt wird
	lcall	_init_rx
	sjmp	00252$
00248$:
	C$fb_lpc922.c$430$3$46 ==.
;	../fb_lpc922.c:430: else fb_state=14;		// naechstes Byte: Interbyte Abstand einhalten
	mov	_fb_state,#0x0E
00252$:
	C$fb_lpc922.c$432$2$2 ==.
;	../fb_lpc922.c:432: IE1=0;
	clr	_TCON_3
	C$fb_lpc922.c$433$2$2 ==.
;	../fb_lpc922.c:433: break;
	C$fb_lpc922.c$435$2$2 ==.
;	../fb_lpc922.c:435: case 14:	// Interbyte Abstand erreicht (=Stopbit + 2 Bit)
	sjmp	00255$
00254$:
	C$fb_lpc922.c$436$2$2 ==.
;	../fb_lpc922.c:436: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$437$2$2 ==.
;	../fb_lpc922.c:437: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
	C$fb_lpc922.c$438$2$2 ==.
;	../fb_lpc922.c:438: TH1=110;							// Timer 1 auf 104/3 us laden
	mov	_TH1,#0x6E
	C$fb_lpc922.c$439$2$2 ==.
;	../fb_lpc922.c:439: TL1=128;
	mov	_TL1,#0x80
	C$fb_lpc922.c$440$2$2 ==.
;	../fb_lpc922.c:440: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$441$2$2 ==.
;	../fb_lpc922.c:441: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$442$2$2 ==.
;	../fb_lpc922.c:442: fb_state=10;
	mov	_fb_state,#0x0A
	C$fb_lpc922.c$447$1$1 ==.
;	../fb_lpc922.c:447: }
00255$:
	C$fb_lpc922.c$448$1$1 ==.
;	../fb_lpc922.c:448: interrupted=1;			// zeigt der app, dass sie unterbrochen wurde
	setb	_interrupted
	mov	sp,_bp
	pop	_bp
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
	C$fb_lpc922.c$449$1$1 ==.
	XG$T1_int$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'init_rx'
;------------------------------------------------------------
	G$init_rx$0$0 ==.
	C$fb_lpc922.c$452$1$1 ==.
;	../fb_lpc922.c:452: void init_rx(void) 	// Empfangen initiieren (statemachine auf Anfang)
;	-----------------------------------------
;	 function init_rx
;	-----------------------------------------
_init_rx:
	C$fb_lpc922.c$454$1$1 ==.
;	../fb_lpc922.c:454: fb_state=0;
	mov	_fb_state,#0x00
	C$fb_lpc922.c$455$1$1 ==.
;	../fb_lpc922.c:455: IE1=0;
	clr	_TCON_3
	C$fb_lpc922.c$456$1$1 ==.
;	../fb_lpc922.c:456: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$457$1$1 ==.
;	../fb_lpc922.c:457: ET1=0;
	clr	_IEN0_3
	C$fb_lpc922.c$458$1$1 ==.
;	../fb_lpc922.c:458: cs=0;
	mov	_cs,#0x00
	C$fb_lpc922.c$459$1$1 ==.
;	../fb_lpc922.c:459: telpos=0;
	mov	_telpos,#0x00
	C$fb_lpc922.c$460$1$1 ==.
;	../fb_lpc922.c:460: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$461$1$1 ==.
;	../fb_lpc922.c:461: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
	C$fb_lpc922.c$462$1$1 ==.
;	../fb_lpc922.c:462: TH1=0x89;					// busfree Zeit = 15 Bit (auf ACK) + 11 Bit (ACK) + 53 Bit
	mov	_TH1,#0x89
	C$fb_lpc922.c$463$1$1 ==.
;	../fb_lpc922.c:463: TL1=0xAF;
	mov	_TL1,#0xAF
	C$fb_lpc922.c$464$1$1 ==.
;	../fb_lpc922.c:464: send_ack=0;
	clr	_send_ack
	C$fb_lpc922.c$465$1$1 ==.
;	../fb_lpc922.c:465: send_nack=0;
	clr	_send_nack
	C$fb_lpc922.c$466$1$1 ==.
;	../fb_lpc922.c:466: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$467$1$1 ==.
;	../fb_lpc922.c:467: TR1=1;
	setb	_TCON_6
	C$fb_lpc922.c$468$1$1 ==.
;	../fb_lpc922.c:468: EX1=1;
	setb	_IEN0_2
	C$fb_lpc922.c$469$1$1 ==.
;	../fb_lpc922.c:469: ET1=1;
	setb	_IEN0_3
	C$fb_lpc922.c$470$1$1 ==.
;	../fb_lpc922.c:470: telegramm_ok=0;
	clr	_telegramm_ok
	C$fb_lpc922.c$471$1$1 ==.
	XG$init_rx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_tx'
;------------------------------------------------------------
;n                         Allocated to registers r6 
;cs_pos                    Allocated to registers r7 
;------------------------------------------------------------
	G$init_tx$0$0 ==.
	C$fb_lpc922.c$474$1$1 ==.
;	../fb_lpc922.c:474: void init_tx(void) 		// Checksum des Telegramms berechnen und Senden initiieren
;	-----------------------------------------
;	 function init_tx
;	-----------------------------------------
_init_tx:
	C$fb_lpc922.c$478$1$1 ==.
;	../fb_lpc922.c:478: TR1=0;
	clr	_TCON_6
	C$fb_lpc922.c$479$1$1 ==.
;	../fb_lpc922.c:479: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
	C$fb_lpc922.c$480$1$1 ==.
;	../fb_lpc922.c:480: TH1=110;							// von state 10 auf 11
	mov	_TH1,#0x6E
	C$fb_lpc922.c$481$1$1 ==.
;	../fb_lpc922.c:481: TL1=128;							// von hier bis state 10
	mov	_TL1,#0x80
	C$fb_lpc922.c$482$1$1 ==.
;	../fb_lpc922.c:482: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$484$1$1 ==.
;	../fb_lpc922.c:484: cs_pos=(telegramm[5]&0x0F)+7;		// Position der Checksum im Telegramm
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	add	a,#0x07
	mov	r7,a
	C$fb_lpc922.c$485$1$1 ==.
;	../fb_lpc922.c:485: cs=0xFF;
	mov	_cs,#0xFF
	C$fb_lpc922.c$486$1$1 ==.
;	../fb_lpc922.c:486: for(n=0;n<cs_pos;n++) {
	mov	r6,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00104$
	C$fb_lpc922.c$487$2$2 ==.
;	../fb_lpc922.c:487: cs^=telegramm[n];				// Checksum berechnen
	mov	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	xrl	_cs,a
	C$fb_lpc922.c$486$1$1 ==.
;	../fb_lpc922.c:486: for(n=0;n<cs_pos;n++) {
	inc	r6
	sjmp	00101$
00104$:
	C$fb_lpc922.c$489$1$1 ==.
;	../fb_lpc922.c:489: telegramm[cs_pos]=cs;				// Checksum hinter Nutzdaten anfaegen
	mov	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,_cs
	C$fb_lpc922.c$490$1$1 ==.
;	../fb_lpc922.c:490: ack=0;
	clr	_ack
	C$fb_lpc922.c$491$1$1 ==.
;	../fb_lpc922.c:491: nack=0;
	clr	_nack
	C$fb_lpc922.c$492$1$1 ==.
;	../fb_lpc922.c:492: wait_for_ack=1;
	setb	_wait_for_ack
	C$fb_lpc922.c$494$1$1 ==.
;	../fb_lpc922.c:494: fb_state=10;						// naechster state: senden
	mov	_fb_state,#0x0A
	C$fb_lpc922.c$495$1$1 ==.
;	../fb_lpc922.c:495: fb_pattern=0;						// naechstes zu sendendes Bit, 0=Startbit
	mov	_fb_pattern,#0x00
	C$fb_lpc922.c$496$1$1 ==.
;	../fb_lpc922.c:496: telpos=0;							// naechstes zu sendende Byte
	mov	_telpos,#0x00
	C$fb_lpc922.c$497$1$1 ==.
;	../fb_lpc922.c:497: EX1=0;								// ext. int1 inaktiv
	clr	_IEN0_2
	C$fb_lpc922.c$498$1$1 ==.
;	../fb_lpc922.c:498: TR1=1;								// Timer 1 starten
	setb	_TCON_6
	C$fb_lpc922.c$499$1$1 ==.
;	../fb_lpc922.c:499: ET1=1;								// Timer 1 int. aktiv
	setb	_IEN0_3
	C$fb_lpc922.c$500$1$1 ==.
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
	C$fb_lpc922.c$507$1$1 ==.
;	../fb_lpc922.c:507: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function gapos_in_gat
;	-----------------------------------------
_gapos_in_gat:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
	C$fb_lpc922.c$511$1$1 ==.
;	../fb_lpc922.c:511: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
	mov	r6,#0xFF
	C$fb_lpc922.c$512$1$1 ==.
;	../fb_lpc922.c:512: if (eeprom[ADDRTAB]<0xFF){ // && !transparency
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	r5,#0xFF,00121$
00121$:
	jnc	00107$
	C$fb_lpc922.c$513$2$2 ==.
;	../fb_lpc922.c:513: if (eeprom[ADDRTAB]) {
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	jz	00107$
	C$fb_lpc922.c$514$3$3 ==.
;	../fb_lpc922.c:514: for (n=eeprom[ADDRTAB]-1;n;n--) {
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	dec	r5
00108$:
	mov	a,r5
	jz	00107$
	C$fb_lpc922.c$515$4$4 ==.
;	../fb_lpc922.c:515: if (gah==eeprom[ADDRTAB+n*2+1] && gal==eeprom[ADDRTAB+n*2+2])
	mov	a,r5
	add	a,r5
	mov	r4,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r7
	cjne	a,ar3,00110$
	mov	a,#0x18
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00110$
	C$fb_lpc922.c$516$4$4 ==.
;	../fb_lpc922.c:516: ga_position=n;
	mov	ar6,r5
00110$:
	C$fb_lpc922.c$514$3$3 ==.
;	../fb_lpc922.c:514: for (n=eeprom[ADDRTAB]-1;n;n--) {
	dec	r5
	sjmp	00108$
00107$:
	C$fb_lpc922.c$520$1$1 ==.
;	../fb_lpc922.c:520: return (ga_position);
	mov	dpl,r6
	pop	_bp
	C$fb_lpc922.c$521$1$1 ==.
	XG$gapos_in_gat$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;success                   Allocated to registers b0 
;------------------------------------------------------------
	G$send_obj_value$0$0 ==.
	C$fb_lpc922.c$528$1$1 ==.
;	../fb_lpc922.c:528: __bit send_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function send_obj_value
;	-----------------------------------------
_send_obj_value:
	mov	r7,dpl
	C$fb_lpc922.c$530$1$1 ==.
;	../fb_lpc922.c:530: __bit success=0;
	clr	b0
	C$fb_lpc922.c$532$1$1 ==.
;	../fb_lpc922.c:532: if (objno < 0x40 && (read_objflags(objno) & 0x44) != 0x44)
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
	C$fb_lpc922.c$534$2$2 ==.
;	../fb_lpc922.c:534: success=1;
	setb	b0
	sjmp	00105$
00104$:
	C$fb_lpc922.c$536$1$1 ==.
;	../fb_lpc922.c:536: else if(tx_nextsend!=((tx_nextwrite+1)&0x07)) {
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
	C$fb_lpc922.c$537$2$3 ==.
;	../fb_lpc922.c:537: tx_buffer[tx_nextwrite]=objno;
	mov	a,_tx_nextwrite
	add	a,#_tx_buffer
	mov	r0,a
	mov	@r0,ar7
	C$fb_lpc922.c$538$2$3 ==.
;	../fb_lpc922.c:538: tx_nextwrite++;
	inc	_tx_nextwrite
	C$fb_lpc922.c$539$2$3 ==.
;	../fb_lpc922.c:539: tx_nextwrite&=0x07;
	anl	_tx_nextwrite,#0x07
	C$fb_lpc922.c$540$2$3 ==.
;	../fb_lpc922.c:540: success=1;
	setb	b0
00105$:
	C$fb_lpc922.c$543$1$1 ==.
;	../fb_lpc922.c:543: TR1=1;	// statemachine starten falls vorher in state 0 gestoppt
	setb	_TCON_6
	C$fb_lpc922.c$544$1$1 ==.
;	../fb_lpc922.c:544: return(success);
	mov	c,b0
	C$fb_lpc922.c$545$1$1 ==.
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
	C$fb_lpc922.c$550$1$1 ==.
;	../fb_lpc922.c:550: void process_tel(void)
;	-----------------------------------------
;	 function process_tel
;	-----------------------------------------
_process_tel:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	C$fb_lpc922.c$555$1$1 ==.
;	../fb_lpc922.c:555: tel_arrived=0;
	clr	_tel_arrived
	C$fb_lpc922.c$556$1$1 ==.
;	../fb_lpc922.c:556: tpdu=telegramm[6]&0xC3;
	mov	r7,(_telegramm + 0x0006)
	mov	a,#0xC3
	anl	a,r7
	mov	r6,a
	C$fb_lpc922.c$557$1$1 ==.
;	../fb_lpc922.c:557: apdu=telegramm[7];
	mov	r5,(_telegramm + 0x0007)
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	C$fb_lpc922.c$560$1$1 ==.
;	../fb_lpc922.c:560: if(telegramm[3]==0 && telegramm[4]==0) {	// nur wenn wenn Zieladresse = 0
	mov	a,(_telegramm + 0x0003)
	mov	r3,a
	jnz	00170$
	mov	a,(_telegramm + 0x0004)
	jnz	00170$
	C$fb_lpc922.c$561$2$2 ==.
;	../fb_lpc922.c:561: if(status60 & 0x01) {					// und nur im prog mode
	mov	a,_status60
	jb	acc.0,00224$
	ljmp	00177$
00224$:
	C$fb_lpc922.c$562$3$3 ==.
;	../fb_lpc922.c:562: if(tpdu==BROADCAST_PDU_SET_PA_REQ && apdu==SET_PHYSADDR_REQUEST) //set_pa();				// 00000000 11000000
	mov	a,r6
	jnz	00105$
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0xC0,00105$
	C$fb_lpc922.c$565$4$4 ==.
;	../fb_lpc922.c:565: while(fb_state!=0);		// warten falls noch gesendet wird
00101$:
	mov	a,_fb_state
	jnz	00101$
	C$fb_lpc922.c$566$4$4 ==.
;	../fb_lpc922.c:566: EA=0;
	clr	_IEN0_7
	C$fb_lpc922.c$567$4$4 ==.
;	../fb_lpc922.c:567: FMCON=0x00;				// load command, leert das pageregister
	mov	_FMCON,#0x00
	C$fb_lpc922.c$568$4$4 ==.
;	../fb_lpc922.c:568: FMADRH=EEPROM_ADDR_H;	// 0x1D bei 922;
	mov	_FMADRH,#0x1D
	C$fb_lpc922.c$569$4$4 ==.
;	../fb_lpc922.c:569: FMADRL=ADDRTAB+1;
	mov	_FMADRL,#0x17
	C$fb_lpc922.c$570$4$4 ==.
;	../fb_lpc922.c:570: FMDATA=telegramm[8];
	mov	_FMDATA,(_telegramm + 0x0008)
	C$fb_lpc922.c$571$4$4 ==.
;	../fb_lpc922.c:571: FMDATA=telegramm[9];	// naechstes Byte, da autoinkrement
	mov	_FMDATA,(_telegramm + 0x0009)
	C$fb_lpc922.c$572$4$4 ==.
;	../fb_lpc922.c:572: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
	C$fb_lpc922.c$573$4$4 ==.
;	../fb_lpc922.c:573: EA=1;
	setb	_IEN0_7
00105$:
	C$fb_lpc922.c$580$3$3 ==.
;	../fb_lpc922.c:580: if(tpdu==BROADCAST_PDU_READ_PA && apdu==READ_PHYSADDR_REQUEST) send_obj_value(READ_PHYSADDR_RESPONSE);	// 00000001 00000000
	cjne	r6,#0x01,00229$
	sjmp	00230$
00229$:
	ljmp	00177$
00230$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00231$
	ljmp	00177$
00231$:
	mov	dpl,#0x83
	lcall	_send_obj_value
	ljmp	00177$
00170$:
	C$fb_lpc922.c$585$2$5 ==.
;	../fb_lpc922.c:585: if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag Bit 7, 0=phys. Adr., 1=Gruppenadr.
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00232$
	ljmp	00167$
00232$:
	C$fb_lpc922.c$586$3$6 ==.
;	../fb_lpc922.c:586: if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) {	// nur wenn es die eigene phys. Adr. ist
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,r3
	cjne	a,ar2,00233$
	sjmp	00234$
00233$:
	ljmp	00177$
00234$:
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	cjne	a,(_telegramm + 0x0004),00235$
	sjmp	00236$
00235$:
	ljmp	00177$
00236$:
	C$fb_lpc922.c$587$4$7 ==.
;	../fb_lpc922.c:587: connected_timeout=0;//wenn ein unicast uns betrifft den timeout ruecksetzen
	mov	_connected_timeout,#0x00
	C$fb_lpc922.c$590$4$7 ==.
;	../fb_lpc922.c:590: switch (tpdu) {	// transport layer control field
	cjne	r6,#0x41,00237$
	sjmp	00112$
00237$:
	cjne	r6,#0x42,00238$
	sjmp	00113$
00238$:
	cjne	r6,#0x43,00239$
	ljmp	00131$
00239$:
	cjne	r6,#0x80,00240$
	ljmp	00136$
00240$:
	cjne	r6,#0x81,00241$
	ljmp	00139$
00241$:
	cjne	r6,#0x83,00242$
	ljmp	00143$
00242$:
	ljmp	00177$
	C$fb_lpc922.c$592$5$8 ==.
;	../fb_lpc922.c:592: case DATA_PDU_ADC_READ:
00112$:
	C$fb_lpc922.c$593$5$8 ==.
;	../fb_lpc922.c:593: mem_adrh = telegramm[7];    // Remember ADC Channel, reuse mem_adrh to save ram
	mov	_mem_adrh,r5
	C$fb_lpc922.c$594$5$8 ==.
;	../fb_lpc922.c:594: mem_adrl = telegramm[8];    // Remember sample count
	mov	_mem_adrl,(_telegramm + 0x0008)
	C$fb_lpc922.c$595$5$8 ==.
;	../fb_lpc922.c:595: send_obj_value(NCD_ACK_OWN);
	mov	dpl,#0x87
	lcall	_send_obj_value
	C$fb_lpc922.c$596$5$8 ==.
;	../fb_lpc922.c:596: send_obj_value(READ_ADC_RESPONSE);
	mov	dpl,#0x86
	lcall	_send_obj_value
	C$fb_lpc922.c$597$5$8 ==.
;	../fb_lpc922.c:597: break;
	ljmp	00177$
	C$fb_lpc922.c$600$5$8 ==.
;	../fb_lpc922.c:600: case DATA_PDU_MEMORY_OPERATIONS:
00113$:
	C$fb_lpc922.c$601$5$8 ==.
;	../fb_lpc922.c:601: if(connected){
	jb	_connected,00243$
	ljmp	00177$
00243$:
	C$fb_lpc922.c$602$6$9 ==.
;	../fb_lpc922.c:602: senders_pcount=telegramm[6]&0x3C;
	mov	a,#0x3C
	anl	a,r7
	mov	_senders_pcount,a
	C$fb_lpc922.c$603$6$9 ==.
;	../fb_lpc922.c:603: apdu &= 0xF0;						// da bei memory operations nur obere 4 Bits aktiv
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	anl	a,#0xF0
	mov	@r0,a
	C$fb_lpc922.c$604$6$9 ==.
;	../fb_lpc922.c:604: if(apdu==WRITE_MEMORY_REQUEST) {	// 01pppp10 1000xxxx
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x80,00244$
	sjmp	00245$
00244$:
	ljmp	00126$
00245$:
	C$fb_lpc922.c$605$7$10 ==.
;	../fb_lpc922.c:605: send_obj_value(NCD_ACK);
	mov	dpl,#0x81
	lcall	_send_obj_value
	C$fb_lpc922.c$608$8$11 ==.
;	../fb_lpc922.c:608: ab=telegramm[7]&0x0F;		// Anzahl Bytes
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0007)
	mov	r7,a
	C$fb_lpc922.c$610$8$11 ==.
;	../fb_lpc922.c:610: while(fb_state!=0);					// warten falls noch gesendet wird
00114$:
	mov	a,_fb_state
	jnz	00114$
	C$fb_lpc922.c$612$8$11 ==.
;	../fb_lpc922.c:612: EA=0;
	clr	_IEN0_7
	C$fb_lpc922.c$613$8$11 ==.
;	../fb_lpc922.c:613: START_WRITECYCLE;					// load command, leert das pageregister
	mov	_FMCON,#0x00
	C$fb_lpc922.c$614$9$12 ==.
;	../fb_lpc922.c:614: for(n=0;n<ab;n++) {
	mov	r2,(_telegramm + 0x0008)
	mov	a,#0x01
	anl	a,r2
	add	a,#0x1C
	mov	r3,a
	mov	r6,(_telegramm + 0x0009)
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
00173$:
	mov	r0,_bp
	inc	r0
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r7
	jc	00247$
	ljmp	00176$
00247$:
	C$fb_lpc922.c$615$9$12 ==.
;	../fb_lpc922.c:615: if(telegramm[8]==0)
	mov	a,r2
	jnz	00120$
	C$fb_lpc922.c$617$1$1 ==.
;	../fb_lpc922.c:617: if((telegramm[9]+n)==0x60) status60=telegramm[10+n];
	push	ar2
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	cjne	r4,#0x60,00249$
	cjne	r5,#0x00,00249$
	sjmp	00250$
00249$:
	pop	ar2
	sjmp	00121$
00250$:
	pop	ar2
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x0A
	add	a,@r0
	add	a,#_telegramm
	mov	r1,a
	mov	_status60,@r1
	sjmp	00121$
00120$:
	C$fb_lpc922.c$628$10$14 ==.
;	../fb_lpc922.c:628: WRITE_BYTE(telegramm[8],telegramm[9]+n,telegramm[n+10]);
	mov	_FMADRH,r3
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
00121$:
	C$fb_lpc922.c$630$9$12 ==.
;	../fb_lpc922.c:630: if ((((telegramm[9]+n)&0x3F)==0x3F) && n!=(ab-1)) {		// Ende des 64-Byte Pageregisters, also zwischendurch flashen
	mov	ar4,r6
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
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	anl	ar4,#0x3F
	mov	r5,#0x00
	cjne	r4,#0x3F,00175$
	cjne	r5,#0x00,00175$
	mov	ar4,r7
	mov	r5,#0x00
	dec	r4
	cjne	r4,#0xFF,00253$
	dec	r5
00253$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00254$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00254$
	sjmp	00175$
00254$:
	C$fb_lpc922.c$631$10$15 ==.
;	../fb_lpc922.c:631: STOP_WRITECYCLE;			// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
	C$fb_lpc922.c$632$10$15 ==.
;	../fb_lpc922.c:632: START_WRITECYCLE;		// load command, leert das pageregister
	mov	_FMCON,#0x00
00175$:
	C$fb_lpc922.c$614$8$11 ==.
;	../fb_lpc922.c:614: for(n=0;n<ab;n++) {
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	ljmp	00173$
00176$:
	C$fb_lpc922.c$635$8$11 ==.
;	../fb_lpc922.c:635: STOP_WRITECYCLE;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
	C$fb_lpc922.c$636$8$11 ==.
;	../fb_lpc922.c:636: EA=1;
	setb	_IEN0_7
00126$:
	C$fb_lpc922.c$639$6$9 ==.
;	../fb_lpc922.c:639: if(apdu==READ_MEMORY_REQUEST) {		// 01pppp10 0000xxxx
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00255$
	ljmp	00177$
00255$:
	C$fb_lpc922.c$640$7$16 ==.
;	../fb_lpc922.c:640: mem_length=telegramm[7];		// Anzahl Bytes fuer spaeteres(!) memory Auslesen
	mov	_mem_length,(_telegramm + 0x0007)
	C$fb_lpc922.c$641$7$16 ==.
;	../fb_lpc922.c:641: mem_adrh = telegramm[8];		// Adresse
	mov	_mem_adrh,(_telegramm + 0x0008)
	C$fb_lpc922.c$642$7$16 ==.
;	../fb_lpc922.c:642: mem_adrl = telegramm[9];
	mov	_mem_adrl,(_telegramm + 0x0009)
	C$fb_lpc922.c$643$7$16 ==.
;	../fb_lpc922.c:643: send_obj_value(NCD_ACK);
	mov	dpl,#0x81
	lcall	_send_obj_value
	C$fb_lpc922.c$644$7$16 ==.
;	../fb_lpc922.c:644: send_obj_value(READ_MEMORY_RESPONSE);
	mov	dpl,#0x84
	lcall	_send_obj_value
	C$fb_lpc922.c$647$5$8 ==.
;	../fb_lpc922.c:647: break;
	ljmp	00177$
	C$fb_lpc922.c$649$5$8 ==.
;	../fb_lpc922.c:649: case DATA_PDU_MISC_OPERATIONS:
00131$:
	C$fb_lpc922.c$650$5$8 ==.
;	../fb_lpc922.c:650: senders_pcount=telegramm[6]&0x3C;
	mov	a,#0x3C
	anl	a,r7
	mov	_senders_pcount,a
	C$fb_lpc922.c$651$5$8 ==.
;	../fb_lpc922.c:651: if(apdu==RESTART_REQUEST) {		// 01pppp11 10000000
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x80,00133$
	C$fb_lpc922.c$652$6$17 ==.
;	../fb_lpc922.c:652: AUXR1|=0x08;				// Software Reset
	orl	_AUXR1,#0x08
00133$:
	C$fb_lpc922.c$654$5$8 ==.
;	../fb_lpc922.c:654: if(apdu==READ_MASK_VERSION_REQUEST) {		// 01pppp11 00000000
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00258$
	ljmp	00177$
00258$:
	C$fb_lpc922.c$655$6$18 ==.
;	../fb_lpc922.c:655: send_obj_value(NCD_ACK);
	mov	dpl,#0x81
	lcall	_send_obj_value
	C$fb_lpc922.c$656$6$18 ==.
;	../fb_lpc922.c:656: send_obj_value(READ_MASK_VERSION_RESPONSE);
	mov	dpl,#0x82
	lcall	_send_obj_value
	C$fb_lpc922.c$658$5$8 ==.
;	../fb_lpc922.c:658: break;
	ljmp	00177$
	C$fb_lpc922.c$660$5$8 ==.
;	../fb_lpc922.c:660: case CONNECT_PDU:	// 10000000 xxxxxxxx
00136$:
	C$fb_lpc922.c$661$5$8 ==.
;	../fb_lpc922.c:661: if(!connected) {				// wenn bereits verbunden: ignorieren
	jnb	_connected,00259$
	ljmp	00177$
00259$:
	C$fb_lpc922.c$662$6$19 ==.
;	../fb_lpc922.c:662: connected=1;
	setb	_connected
	C$fb_lpc922.c$663$6$19 ==.
;	../fb_lpc922.c:663: conh=telegramm[1];			// phys. Adresse des Verbindungspartners
	mov	_conh,(_telegramm + 0x0001)
	C$fb_lpc922.c$664$6$19 ==.
;	../fb_lpc922.c:664: conl=telegramm[2];
	mov	_conl,(_telegramm + 0x0002)
	C$fb_lpc922.c$665$6$19 ==.
;	../fb_lpc922.c:665: pcount=0;					// Paketzaehler zuruecksetzen
	mov	_pcount,#0x00
	C$fb_lpc922.c$666$6$19 ==.
;	../fb_lpc922.c:666: inc_pcount=0;
	clr	_inc_pcount
	C$fb_lpc922.c$667$6$19 ==.
;	../fb_lpc922.c:667: RTCCON=0x60;	//RTC stoppen
	mov	_RTCCON,#0x60
	C$fb_lpc922.c$668$6$19 ==.
;	../fb_lpc922.c:668: RTCH=0x0B;      // reload Real Time Clock, 52ms
	mov	_RTCH,#0x0B
	C$fb_lpc922.c$669$6$19 ==.
;	../fb_lpc922.c:669: RTCL=0xB3;
	mov	_RTCL,#0xB3
	C$fb_lpc922.c$670$6$19 ==.
;	../fb_lpc922.c:670: RTCCON=0x61;	// RTC starten
	mov	_RTCCON,#0x61
	C$fb_lpc922.c$673$5$8 ==.
;	../fb_lpc922.c:673: break;
	ljmp	00177$
	C$fb_lpc922.c$675$5$8 ==.
;	../fb_lpc922.c:675: case DISCONNECT_PDU:	// 10000001 xxxxxxxx
00139$:
	C$fb_lpc922.c$676$5$8 ==.
;	../fb_lpc922.c:676: if(conh==telegramm[1] && conl==telegramm[2] )	{	// nur abbauen, wenn verbunden und Anforderung vom Verbindungspartner, kein ACK senden
	mov	a,(_telegramm + 0x0001)
	cjne	a,_conh,00260$
	sjmp	00261$
00260$:
	ljmp	00177$
00261$:
	mov	a,(_telegramm + 0x0002)
	cjne	a,_conl,00262$
	sjmp	00263$
00262$:
	ljmp	00177$
00263$:
	C$fb_lpc922.c$677$6$20 ==.
;	../fb_lpc922.c:677: connected=0;// warum: && connected ???
	clr	_connected
	C$fb_lpc922.c$679$5$8 ==.
;	../fb_lpc922.c:679: break;
	ljmp	00177$
	C$fb_lpc922.c$681$5$8 ==.
;	../fb_lpc922.c:681: case NACK_PDU:	// 11pppp11 xxxxxxxx
00143$:
	C$fb_lpc922.c$682$5$8 ==.
;	../fb_lpc922.c:682: send_obj_value(T_DISCONNECT);
	mov	dpl,#0x85
	lcall	_send_obj_value
	C$fb_lpc922.c$683$5$8 ==.
;	../fb_lpc922.c:683: connected=0;//connected_timeout=111; spartipp 5 Byte wenn send.. weg kommt.
	clr	_connected
	C$fb_lpc922.c$685$1$5 ==.
;	../fb_lpc922.c:685: }
	ljmp	00177$
00167$:
	C$fb_lpc922.c$690$2$5 ==.
;	../fb_lpc922.c:690: else if(tpdu==GROUP_PDU){
	mov	a,r6
	jz	00264$
	ljmp	00177$
00264$:
	C$fb_lpc922.c$695$3$21 ==.
;	../fb_lpc922.c:695: gapos = gapos_in_gat(telegramm[3], telegramm[4]);
	push	(_telegramm + 0x0004)
	mov	dpl,r3
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	C$fb_lpc922.c$697$3$21 ==.
;	../fb_lpc922.c:697: if (gapos != 0xFF)
	cjne	r7,#0xFF,00265$
	ljmp	00177$
00265$:
	C$fb_lpc922.c$699$4$22 ==.
;	../fb_lpc922.c:699: atp = eeprom[ASSOCTABPTR];  // Association Table Pointer
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	C$fb_lpc922.c$700$4$22 ==.
;	../fb_lpc922.c:700: assmax = atp + eeprom[atp] * 2;	// Erster Eintrag = Anzahl Eintraege
	mov	r6,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	add	a,acc
	add	a,r6
	mov	r5,a
	C$fb_lpc922.c$704$4$22 ==.
;	../fb_lpc922.c:704: for (asspos = atp + 1; asspos < assmax; asspos+=2)
	inc	r6
	mov	r0,_bp
	inc	r0
	mov	a,#0xC0
	anl	a,@r0
	mov	r4,a
	clr	a
	cjne	r4,#0x80,00266$
	inc	a
00266$:
	mov	r4,a
00158$:
	clr	c
	mov	a,r6
	subb	a,r5
	jc	00268$
	ljmp	00177$
00268$:
	C$fb_lpc922.c$708$5$23 ==.
;	../fb_lpc922.c:708: if (gapos == eeprom[asspos])
	mov	dpl,r6
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r7
	cjne	a,ar3,00160$
	C$fb_lpc922.c$710$6$24 ==.
;	../fb_lpc922.c:710: objno = eeprom[asspos + 1];	     // Objektnummer
	mov	a,r6
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	C$fb_lpc922.c$711$6$24 ==.
;	../fb_lpc922.c:711: objflags = read_objflags(objno); // Objekt Flags lesen
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
	C$fb_lpc922.c$714$6$24 ==.
;	../fb_lpc922.c:714: if((apdu&0xC0)==WRITE_GROUP)
	mov	a,r4
	jz	00151$
	C$fb_lpc922.c$719$1$1 ==.
;	../fb_lpc922.c:719: if ((objflags & 0x14) == 0x14)
	push	ar4
	mov	a,#0x14
	anl	a,r2
	mov	r4,a
	cjne	r4,#0x14,00272$
	sjmp	00273$
00272$:
	pop	ar4
	sjmp	00151$
00273$:
	pop	ar4
	C$fb_lpc922.c$720$7$25 ==.
;	../fb_lpc922.c:720: write_value_req(objno);
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
00151$:
	C$fb_lpc922.c$722$6$24 ==.
;	../fb_lpc922.c:722: if(apdu==READ_GROUP_REQUEST)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jnz	00160$
	C$fb_lpc922.c$724$7$26 ==.
;	../fb_lpc922.c:724: if ((objflags & 0x0C) == 0x0C)
	anl	ar2,#0x0C
	cjne	r2,#0x0C,00177$
	C$fb_lpc922.c$725$7$26 ==.
;	../fb_lpc922.c:725: read_value_req(objno);	// Objektwert lesen und read_value_response senden	00000000 00000000
	mov	dpl,r3
	lcall	_read_value_req
	C$fb_lpc922.c$726$7$26 ==.
;	../fb_lpc922.c:726: break;
	sjmp	00177$
00160$:
	C$fb_lpc922.c$704$4$22 ==.
;	../fb_lpc922.c:704: for (asspos = atp + 1; asspos < assmax; asspos+=2)
	inc	r6
	inc	r6
	ljmp	00158$
00177$:
	mov	sp,_bp
	pop	_bp
	C$fb_lpc922.c$733$1$1 ==.
	XG$process_tel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_objflags'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
	G$read_objflags$0$0 ==.
	C$fb_lpc922.c$782$1$1 ==.
;	../fb_lpc922.c:782: unsigned char read_objflags(unsigned char objno)
;	-----------------------------------------
;	 function read_objflags
;	-----------------------------------------
_read_objflags:
	mov	r7,dpl
	C$fb_lpc922.c$785$1$1 ==.
;	../fb_lpc922.c:785: return(eeprom[eeprom[COMMSTABPTR]+3+objno+objno+objno]);
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
	C$fb_lpc922.c$786$1$1 ==.
	XG$read_objflags$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_hw'
;------------------------------------------------------------
	G$restart_hw$0$0 ==.
	C$fb_lpc922.c$821$1$1 ==.
;	../fb_lpc922.c:821: void restart_hw(void)
;	-----------------------------------------
;	 function restart_hw
;	-----------------------------------------
_restart_hw:
	C$fb_lpc922.c$823$1$1 ==.
;	../fb_lpc922.c:823: DIVM=0;			// Taktferquenz nicht teilen -> volles Tempo
	mov	_DIVM,#0x00
	C$fb_lpc922.c$825$1$1 ==.
;	../fb_lpc922.c:825: P1M1=0x14;		// Port 1 auf quasi-bidirektional,
	mov	_P1M1,#0x14
	C$fb_lpc922.c$826$1$1 ==.
;	../fb_lpc922.c:826: P1M2=0x4C;		// ausser P1.2(T0 als PWM Ausgang)=open-drain,
	mov	_P1M2,#0x4C
	C$fb_lpc922.c$830$1$1 ==.
;	../fb_lpc922.c:830: FBOUTC=0;		// Bus-Ausgang auf low
	clr	_P1_6
	C$fb_lpc922.c$832$1$1 ==.
;	../fb_lpc922.c:832: TMOD=0x21;		// Timer 0 als 16-Bit Timer, Timer 1 als 8 Bit autoreload
	mov	_TMOD,#0x21
	C$fb_lpc922.c$833$1$1 ==.
;	../fb_lpc922.c:833: TAMOD=0x00;
	mov	_TAMOD,#0x00
	C$fb_lpc922.c$834$1$1 ==.
;	../fb_lpc922.c:834: TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen
	clr	_TCON_4
	C$fb_lpc922.c$835$1$1 ==.
;	../fb_lpc922.c:835: TR1=0;			// Timer 1 (Empfangs-Timer, nicht in app verwenden!) zunaechst stoppen
	clr	_TCON_6
	C$fb_lpc922.c$836$1$1 ==.
;	../fb_lpc922.c:836: TH1=128;		// Timer 1 auf 104us/3
	mov	_TH1,#0x80
	C$fb_lpc922.c$837$1$1 ==.
;	../fb_lpc922.c:837: TL1=128;
	mov	_TL1,#0x80
	C$fb_lpc922.c$838$1$1 ==.
;	../fb_lpc922.c:838: TF1=0;
	clr	_TCON_7
	C$fb_lpc922.c$845$1$1 ==.
;	../fb_lpc922.c:845: interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
	clr	_interrupted
	C$fb_lpc922.c$846$1$1 ==.
;	../fb_lpc922.c:846: IEN0=0x80;// mit 0x80 sind die unten auskommentierten erschlagen.
	mov	_IEN0,#0x80
	C$fb_lpc922.c$847$1$1 ==.
;	../fb_lpc922.c:847: IEN1=0x00;
	mov	_IEN1,#0x00
	C$fb_lpc922.c$854$1$1 ==.
;	../fb_lpc922.c:854: IP0=0x04;		// hÃ¶chste PrioritÃ¤t fuer ext1
	mov	_IP0,#0x04
	C$fb_lpc922.c$855$1$1 ==.
;	../fb_lpc922.c:855: IP0H=0x0C;
	mov	_IP0H,#0x0C
	C$fb_lpc922.c$856$1$1 ==.
;	../fb_lpc922.c:856: IT1=1;			// Interrupt 1 flankengetriggert=1
	setb	_TCON_2
	C$fb_lpc922.c$858$1$1 ==.
;	../fb_lpc922.c:858: status60=0x2E;	// Status-Byte (steht normal im userram an 0x60)
	mov	_status60,#0x2E
	C$fb_lpc922.c$860$1$1 ==.
;	../fb_lpc922.c:860: ack=0;			// ack und nack flag zurÃ¼cksetzen
	clr	_ack
	C$fb_lpc922.c$861$1$1 ==.
;	../fb_lpc922.c:861: nack=0;
	clr	_nack
	C$fb_lpc922.c$862$1$1 ==.
;	../fb_lpc922.c:862: send_ack=0;
	clr	_send_ack
	C$fb_lpc922.c$863$1$1 ==.
;	../fb_lpc922.c:863: send_nack=0;
	clr	_send_nack
	C$fb_lpc922.c$864$1$1 ==.
;	../fb_lpc922.c:864: tel_arrived=0;	// kein Telegramm empfangen
	clr	_tel_arrived
	C$fb_lpc922.c$865$1$1 ==.
;	../fb_lpc922.c:865: auto_ack=1;		// empfangene Telegramme automatisch mit ack bestaetigen
	setb	_auto_ack
	C$fb_lpc922.c$866$1$1 ==.
;	../fb_lpc922.c:866: tx_nextwrite=0;	// Zeiger auf naechste zu schreibende Objektnr. in tx_buffer
	mov	_tx_nextwrite,#0x00
	C$fb_lpc922.c$867$1$1 ==.
;	../fb_lpc922.c:867: tx_nextsend=0;	// Zeiger auf naechste zu sendende Objektnr. in tx_buffer
	mov	_tx_nextsend,#0x00
	C$fb_lpc922.c$868$1$1 ==.
;	../fb_lpc922.c:868: pcount=0;		// Paketzaehler initialisieren
	mov	_pcount,#0x00
	C$fb_lpc922.c$869$1$1 ==.
;	../fb_lpc922.c:869: inc_pcount=0;
	clr	_inc_pcount
	C$fb_lpc922.c$870$1$1 ==.
;	../fb_lpc922.c:870: connected=0;	// keine Verbindung
	clr	_connected
	C$fb_lpc922.c$872$1$1 ==.
;	../fb_lpc922.c:872: init_rx();		// Empfang initialisieren
	lcall	_init_rx
	C$fb_lpc922.c$873$1$1 ==.
	XG$restart_hw$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$eeprom$0$0 == 0x1d00
_eeprom	=	0x1d00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
