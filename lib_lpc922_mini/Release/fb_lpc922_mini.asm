;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Fri Oct 19 21:19:00 2012
;--------------------------------------------------------
	.module fb_lpc922_mini
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeprom
	.globl _userram
	.globl _build_tel
	.globl _read_value_req
	.globl _write_value_req
	.globl _gapos_in_gat
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
	.globl _status60
	.globl _tx_nextsend
	.globl _tx_nextwrite
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
	.globl _send_obj_value
	.globl _process_tel
	.globl _restart_hw
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
_conh::
	.ds 1
_conl::
	.ds 1
_pcount::
	.ds 1
_mem_length::
	.ds 1
_mem_adrh::
	.ds 1
_mem_adrl::
	.ds 1
_senders_pcount::
	.ds 1
_telegramm::
	.ds 23
_tx_buffer::
	.ds 8
_telpos::
	.ds 1
_cs::
	.ds 1
_fbrx_byte::
	.ds 1
_fb_pattern::
	.ds 1
_fb_state::
	.ds 1
_repeat_count::
	.ds 1
_tx_nextwrite::
	.ds 1
_tx_nextsend::
	.ds 1
_status60::
	.ds 1
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
_parity_ok::
	.ds 1
_interrupted::
	.ds 1
_fb_parity::
	.ds 1
_ack::
	.ds 1
_nack::
	.ds 1
_its_me::
	.ds 1
_tel_arrived::
	.ds 1
_tel_sent::
	.ds 1
_auto_ack::
	.ds 1
_fbtx_bit::
	.ds 1
_wait_for_ack::
	.ds 1
_send_ack::
	.ds 1
_send_nack::
	.ds 1
_transparency::
	.ds 1
_connected::
	.ds 1
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
;	../fb_lpc922_mini.c:60: void X1_int(void) __interrupt (2)		// Flanke des Startbits löst int1 aus
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
;	../fb_lpc922_mini.c:63: EX1=0;			// int1 stoppen								1 cycle = 0,27127us
	clr	_IEN0_2
;	../fb_lpc922_mini.c:64: TR1=0;			// Timer 1 stoppen
	clr	_TCON_6
;	../fb_lpc922_mini.c:65: TMOD=(TMOD & 0x0F) + 0x20;	// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
;	../fb_lpc922_mini.c:66: TL1=53;//108;//128;		// Timer laden so dass in state 2 bei 75µs abgefragt wird
	mov	_TL1,#0x35
;	../fb_lpc922_mini.c:67: TH1=128;//128;			// autoreload auf 35µs setzen (gilt für sprung von 2 auf 3)
	mov	_TH1,#0x80
;	../fb_lpc922_mini.c:68: TF1=0;			// Timer1-flag löschen						1 cycle
	clr	_TCON_7
;	../fb_lpc922_mini.c:69: TR1=1;			// Timer1 starten							1 cycle
	setb	_TCON_6
;	../fb_lpc922_mini.c:70: ET1=1;			// Timer1-int aktiv							1 cycle
	setb	_IEN0_3
;	../fb_lpc922_mini.c:71: fb_state=2;		// nächster state
	mov	_fb_state,#0x02
;	../fb_lpc922_mini.c:72: fb_parity=0;	// Parity Bit löschen
	clr	_fb_parity
;	../fb_lpc922_mini.c:73: parity_ok=1;	// wird bei Fehler gelöscht
	setb	_parity_ok
;	../fb_lpc922_mini.c:74: fb_pattern=0;
	mov	_fb_pattern,#0x00
;	../fb_lpc922_mini.c:75: fbrx_byte=0;
	mov	_fbrx_byte,#0x00
;	../fb_lpc922_mini.c:76: interrupted=1;	// signalisiert app, dass unterbrochen wurde
	setb	_interrupted
	pop	psw
	pop	acc
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
;	../fb_lpc922_mini.c:81: void T1_int(void) __interrupt (3) 	// Timer 1 Interrupt
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
;	../fb_lpc922_mini.c:87: switch (fb_state){
	mov	a,_fb_state
	mov	r7,a
	add	a,#0xff - 0x0E
	jnc	00322$
	ljmp	00219$
00322$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00323$
	jmp	@a+dptr
00323$:
	ljmp	00101$
	ljmp	00219$
	ljmp	00115$
	ljmp	00151$
	ljmp	00152$
	ljmp	00175$
	ljmp	00219$
	ljmp	00219$
	ljmp	00219$
	ljmp	00219$
	ljmp	00182$
	ljmp	00203$
	ljmp	00219$
	ljmp	00210$
	ljmp	00218$
;	../fb_lpc922_mini.c:91: case 0:
00101$:
;	../fb_lpc922_mini.c:92: TR1=0;			// Timer 1 stoppen
	clr	_TCON_6
;	../fb_lpc922_mini.c:93: TMOD=(TMOD & 0x0F) + 0x20;	// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
;	../fb_lpc922_mini.c:94: TL1=128;		// Timer laden
	mov	_TL1,#0x80
;	../fb_lpc922_mini.c:95: TH1=128;
	mov	_TH1,#0x80
;	../fb_lpc922_mini.c:96: TF1=0;			// Timer1-flag löschen						1 cycle
	clr	_TCON_7
;	../fb_lpc922_mini.c:97: TR1=1;			// Timer1 starten							1 cycle
	setb	_TCON_6
;	../fb_lpc922_mini.c:98: if(tx_nextsend != tx_nextwrite) { 			// wenn zu sendendes Objekt vorhanden
	mov	a,_tx_nextwrite
	cjne	a,_tx_nextsend,00324$
	sjmp	00113$
00324$:
;	../fb_lpc922_mini.c:99: if(build_tel(tx_buffer[tx_nextsend])) {	// wenn Telegramm gebildet werden konnte
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r1,a
	mov	dpl,@r1
	lcall	_build_tel
	jnc	00110$
;	../fb_lpc922_mini.c:100: EX1=0; 				//Um zu vermeiden dass man in die Abfrage hinein-empfängt
	clr	_IEN0_2
;	../fb_lpc922_mini.c:101: if(!fb_state) { 	//nur bilden wenn vorher kein rx_intit durch ext int kam
	mov	a,_fb_state
	jnz	00108$
;	../fb_lpc922_mini.c:102: if((tx_buffer[tx_nextsend]&0x20)==0) {	// wenn erstmaliges Senden des Objektes
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jb	acc.5,00103$
;	../fb_lpc922_mini.c:103: tx_buffer[tx_nextsend]|=0x20;		// Bit für "wird gerade gesendet"
	mov	a,#0x20
	orl	a,r7
	mov	@r1,a
;	../fb_lpc922_mini.c:104: repeat_count=0;						// Wiederholungszähler für nicht geackte Telegramme
	mov	_repeat_count,#0x00
00103$:
;	../fb_lpc922_mini.c:106: if (repeat_count<4) init_tx();		// Senden starten
	mov	a,#0x100 - 0x04
	add	a,_repeat_count
	jc	00105$
	lcall	_init_tx
	sjmp	00108$
00105$:
;	../fb_lpc922_mini.c:108: tx_nextsend++;
	inc	_tx_nextsend
;	../fb_lpc922_mini.c:109: tx_nextsend&=0x07;
	anl	_tx_nextsend,#0x07
;	../fb_lpc922_mini.c:110: wait_for_ack=0;
	clr	_wait_for_ack
;	../fb_lpc922_mini.c:111: inc_pcount=0;
	clr	_inc_pcount
;	../fb_lpc922_mini.c:112: init_rx();
	lcall	_init_rx
;	../fb_lpc922_mini.c:113: TR1=0;		// hier nicht noch einmal die ganze busfree Zeit warten
	clr	_TCON_6
;	../fb_lpc922_mini.c:114: TH1=0xF0;
	mov	_TH1,#0xF0
;	../fb_lpc922_mini.c:115: TL1=0x00;
	mov	_TL1,#0x00
;	../fb_lpc922_mini.c:116: TR1=1;
	setb	_TCON_6
00108$:
;	../fb_lpc922_mini.c:119: EX1=1;	// ext1 int einschalten falls Empfang...
	setb	_IEN0_2
	ljmp	00219$
00110$:
;	../fb_lpc922_mini.c:122: tx_nextsend++; //hier Zeiger erhöhen wenn Telegramm nicht gebildet werden konnte
	inc	_tx_nextsend
;	../fb_lpc922_mini.c:123: tx_nextsend&=0x07;
	anl	_tx_nextsend,#0x07
	ljmp	00219$
00113$:
;	../fb_lpc922_mini.c:127: TR1=0;		// nichts mehr zu tun, also statemachine stoppen
	clr	_TCON_6
;	../fb_lpc922_mini.c:128: EX1=1;		// sicherstellen, dass ext. Int. 1 aktiv ist
	setb	_IEN0_2
;	../fb_lpc922_mini.c:130: break;
	ljmp	00219$
;	../fb_lpc922_mini.c:133: case 2: // T=75us
00115$:
;	../fb_lpc922_mini.c:134: fbrx_bit=!IE1;				// Flipflop des ext. Int. 1 auslesen, ist 1 bei fallender Flanke am Pin
	mov	c,_TCON_3
	cpl	c
	mov	b0,c
;	../fb_lpc922_mini.c:135: IE1=0;						// Flipflop zurücksetzen
	clr	_TCON_3
;	../fb_lpc922_mini.c:136: fb_state=3;// nächster state: 3
	mov	_fb_state,#0x03
;	../fb_lpc922_mini.c:137: TH1=0;// reload auf 70µs (zeit swischen state 3 und 2)
	mov	_TH1,#0x00
;	../fb_lpc922_mini.c:138: if(fb_pattern==0) {			// fb_pattern=0 bedeutet, dass bisher nur das Startbit empfangen wurde
	mov	a,_fb_pattern
	jnz	00149$
;	../fb_lpc922_mini.c:139: fb_pattern=1;			// 70us nach Startbit, als näcstes kommt Datenbit 0
	mov	_fb_pattern,#0x01
;	../fb_lpc922_mini.c:140: ack=0;					// Empfang eines neuen Bytes, also ack/nack Flags zurücksetzen
	clr	_ack
;	../fb_lpc922_mini.c:141: nack=0;
	clr	_nack
	ljmp	00219$
00149$:
;	../fb_lpc922_mini.c:144: if(fb_pattern<129) {					// Daten-Bit LSB first
	mov	a,#0x100 - 0x81
	add	a,_fb_pattern
	jc	00146$
;	../fb_lpc922_mini.c:145: if(fbrx_bit) {
	jnb	b0,00117$
;	../fb_lpc922_mini.c:146: fb_parity=!fb_parity;			// Paritybit berechnen
	cpl	_fb_parity
;	../fb_lpc922_mini.c:147: fbrx_byte+=fb_pattern;			// Datenbit speichern
	mov	a,_fb_pattern
	add	a,_fbrx_byte
	mov	_fbrx_byte,a
00117$:
;	../fb_lpc922_mini.c:149: fb_pattern=fb_pattern<<1;			// nächstes Bit
	mov	a,_fb_pattern
	add	a,_fb_pattern
;	../fb_lpc922_mini.c:150: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gelesen, Parity-Bit folgt
	mov	_fb_pattern,a
	jz	00332$
	ljmp	00219$
00332$:
	mov	_fb_pattern,#0x81
	ljmp	00219$
00146$:
;	../fb_lpc922_mini.c:153: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:154: TF1=0; //prüfen ob erforderlich!!!
	clr	_TCON_7
;	../fb_lpc922_mini.c:155: if(fb_parity==fbrx_bit) {				// Parity-Bit OK
	mov	c,_fb_parity
	jb	b0,00333$
	cpl	c
00333$:
	jnc	00130$
;	../fb_lpc922_mini.c:156: if (telpos==0) {						// erstes empfangenes Byte
	mov	a,_telpos
	jnz	00125$
;	../fb_lpc922_mini.c:157: if (fbrx_byte==0xCC) ack=1;				// ACK empfangen
	mov	a,#0xCC
	cjne	a,_fbrx_byte,00121$
	setb	_ack
00121$:
;	../fb_lpc922_mini.c:158: if (fbrx_byte==0x0C) nack=1;			// NACK empfangen
	mov	a,#0x0C
	cjne	a,_fbrx_byte,00125$
	setb	_nack
00125$:
;	../fb_lpc922_mini.c:160: if (!ack && !nack) {					// Datenbyte empfangen
	jb	_ack,00131$
	jb	_nack,00131$
;	../fb_lpc922_mini.c:161: telegramm[telpos]=fbrx_byte;			// Byte speichern
	mov	a,_telpos
	add	a,#_telegramm
	mov	r0,a
;	../fb_lpc922_mini.c:162: cs^=fbrx_byte;							// Checksum berechnen
	mov	a,_fbrx_byte
	mov	@r0,a
	xrl	_cs,a
;	../fb_lpc922_mini.c:163: telpos++;								// Telegrammzeiger erhöhen
	inc	_telpos
	sjmp	00131$
00130$:
;	../fb_lpc922_mini.c:166: else parity_ok=0;						// Parity Error
	clr	_parity_ok
00131$:
;	../fb_lpc922_mini.c:168: if (wait_for_ack) {						// es wird ein ACK erwartet
;	../fb_lpc922_mini.c:169: wait_for_ack=0;							// Flag zurücksetzen, da wir es ja gerade abarbeiten
	jbc	_wait_for_ack,00342$
	sjmp	00143$
00342$:
;	../fb_lpc922_mini.c:170: if (ack && parity_ok) {					// ACK empfangen und auch erwartet
	jnb	_ack,00135$
	jnb	_parity_ok,00135$
;	../fb_lpc922_mini.c:171: repeat_count=4;						// keine Wiederholtelegramme mehr senden
	mov	_repeat_count,#0x04
;	../fb_lpc922_mini.c:172: if(inc_pcount) {
;	../fb_lpc922_mini.c:173: inc_pcount=0;
	jbc	_inc_pcount,00345$
	sjmp	00135$
00345$:
;	../fb_lpc922_mini.c:174: pcount+=4;
	mov	a,_pcount
	add	a,#0x04
	mov	_pcount,a
;	../fb_lpc922_mini.c:175: pcount&=0x3C;
	anl	_pcount,#0x3C
00135$:
;	../fb_lpc922_mini.c:178: init_rx();
	lcall	_init_rx
	ljmp	00219$
00143$:
;	../fb_lpc922_mini.c:181: if (parity_ok && (!ack && !nack)) {		// ganz normales Datenbyte
	jnb	_parity_ok,00138$
	jb	_ack,00138$
	jb	_nack,00138$
;	../fb_lpc922_mini.c:182: TMOD=(TMOD & 0x0F) +0x10;			// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
;	../fb_lpc922_mini.c:183: TH1=0xFA;//0xFA;							// Timer 1 auf Timeout-Position setzen (370us)
	mov	_TH1,#0xFA
;	../fb_lpc922_mini.c:184: TL1=0x70;//4f 0xAB; (bis hierher sinds 91µs)
	mov	_TL1,#0x70
;	../fb_lpc922_mini.c:185: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_mini.c:186: fb_state=4;							// nächster state: timeout = Telegramm fertig
	mov	_fb_state,#0x04
;	../fb_lpc922_mini.c:187: EX1=1;								// int1 aktiv, falls noch ein Byte kommt
	setb	_IEN0_2
	ljmp	00219$
00138$:
;	../fb_lpc922_mini.c:189: else init_rx();							// irgendwas empfangen
	lcall	_init_rx
;	../fb_lpc922_mini.c:193: break;
	ljmp	00219$
;	../fb_lpc922_mini.c:195: case 3: // T=104us=0us
00151$:
;	../fb_lpc922_mini.c:196: TH1=128;// reload auf 35µs (Zeit zwischen State 2 und 3)
	mov	_TH1,#0x80
;	../fb_lpc922_mini.c:197: fb_state=2;//1
	mov	_fb_state,#0x02
;	../fb_lpc922_mini.c:198: break;
	ljmp	00219$
;	../fb_lpc922_mini.c:200: case 4:	//	Timeout, d.h. Telegramm-Ende
00152$:
;	../fb_lpc922_mini.c:201: if (auto_ack && telpos>4) {		// wenn ACK gesendet werden soll und Telegramm zumindest 5 Bytes hat
	jb	_auto_ack,00349$
	ljmp	00172$
00349$:
	mov	a,_telpos
	add	a,#0xff - 0x04
	jnc	00172$
;	../fb_lpc922_mini.c:202: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:203: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
;	../fb_lpc922_mini.c:204: TH1=0xEF;					// Timer 1 auf ACK-Position setzen (15 Bit Pause = 2708µs (26 Bit) nach Beginn Startbit vom letzten Datenbyte)
	mov	_TH1,#0xEF
;	../fb_lpc922_mini.c:205: TL1=0x42;
	mov	_TL1,#0x42
;	../fb_lpc922_mini.c:206: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_mini.c:207: its_me=transparency;			// indiziert, ob dieses Gerät adressiert wurde, bei transparecy=1 immer
	mov	c,_transparency
	mov	_its_me,c
;	../fb_lpc922_mini.c:208: if(telegramm[5]&0x80) {
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00162$
;	../fb_lpc922_mini.c:209: if (gapos_in_gat(telegramm[3],telegramm[4])!=0xFF) its_me=1;	// Gruppenadresse
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	cjne	r7,#0xFF,00352$
	sjmp	00154$
00352$:
	setb	_its_me
00154$:
;	../fb_lpc922_mini.c:210: if (telegramm[3]==0 && telegramm[4]==0) its_me=1;				// Broadcast
	mov	a,(_telegramm + 0x0003)
	jnz	00163$
	mov	a,(_telegramm + 0x0004)
	jnz	00163$
	setb	_its_me
	sjmp	00163$
00162$:
;	../fb_lpc922_mini.c:212: else if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) its_me=1;	// phys. Adresse
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
;	../fb_lpc922_mini.c:213: if ((cs==0xFF) && its_me) tel_arrived=1;
	mov	a,#0xFF
	cjne	a,_cs,00359$
	mov	a,#0x01
	sjmp	00360$
00359$:
	clr	a
00360$:
	mov	r7,a
	jz	00165$
	jnb	_its_me,00165$
	setb	_tel_arrived
00165$:
;	../fb_lpc922_mini.c:214: if ((cs==0xFF)) tel_arrived=1;
	mov	a,r7
	jz	00168$
	setb	_tel_arrived
00168$:
;	../fb_lpc922_mini.c:215: fb_state=5;					// nächster state: ACK-Position erreicht
	mov	_fb_state,#0x05
	ljmp	00219$
00172$:
;	../fb_lpc922_mini.c:219: if (telpos>1) tel_arrived=1;	// trotzdem den Eingang eines Telegramms anzeigen
	mov	a,_telpos
	add	a,#0xff - 0x01
	jnc	00170$
	setb	_tel_arrived
00170$:
;	../fb_lpc922_mini.c:220: init_rx();						// wieder in den Empfang zurück
	lcall	_init_rx
;	../fb_lpc922_mini.c:222: break;
	ljmp	00219$
;	../fb_lpc922_mini.c:224: case 5:	// ACK-Position erreicht
00175$:
;	../fb_lpc922_mini.c:225: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:226: if (cs==0xFF) {	// Checksum OK
	mov	a,#0xFF
	cjne	a,_cs,00180$
;	../fb_lpc922_mini.c:227: if (its_me) {					// Gerät adressiert
	jnb	_its_me,00177$
;	../fb_lpc922_mini.c:228: send_ack=1;
	setb	_send_ack
;	../fb_lpc922_mini.c:229: init_tx();						// Senden initiieren
	lcall	_init_tx
;	../fb_lpc922_mini.c:230: wait_for_ack=0;					// bei ACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
	ljmp	00219$
00177$:
;	../fb_lpc922_mini.c:232: else init_rx();					// Gerät nicht adressiert, also zurück zu Empfang
	lcall	_init_rx
	ljmp	00219$
00180$:
;	../fb_lpc922_mini.c:235: send_nack=1;
	setb	_send_nack
;	../fb_lpc922_mini.c:236: init_tx();
	lcall	_init_tx
;	../fb_lpc922_mini.c:237: wait_for_ack=0;					// bei NACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
;	../fb_lpc922_mini.c:239: break;
	ljmp	00219$
;	../fb_lpc922_mini.c:243: case 10:	// Byte Senden, T=0us
00182$:
;	../fb_lpc922_mini.c:244: send_byte=telegramm[telpos];
	mov	a,_telpos
	add	a,#_telegramm
	mov	r1,a
	mov	ar7,@r1
;	../fb_lpc922_mini.c:245: if (send_ack) send_byte=0xCC;
	jnb	_send_ack,00184$
	mov	r7,#0xCC
00184$:
;	../fb_lpc922_mini.c:246: if (send_nack) send_byte=0x0C;
	jnb	_send_nack,00186$
	mov	r7,#0x0C
00186$:
;	../fb_lpc922_mini.c:247: EX1=0;					// Empfang verhindern
	clr	_IEN0_2
;	../fb_lpc922_mini.c:248: if(fb_state==10){
	mov	a,#0x0A
	cjne	a,_fb_state,00370$
	sjmp	00371$
00370$:
	ljmp	00219$
00371$:
;	../fb_lpc922_mini.c:249: if (fb_pattern<=128) {			// Startbit und Datenbits (pattern=0:startbit, 1 2 4 8 .. 128 Datenbits, 129 parity)
	mov	a,_fb_pattern
	add	a,#0xff - 0x80
	jc	00199$
;	../fb_lpc922_mini.c:250: if ((send_byte & fb_pattern)==0) {	// wenn Bit logisch 0 ist
	mov	a,_fb_pattern
	anl	a,r7
	jnz	00188$
;	../fb_lpc922_mini.c:251: FBOUTC=1;						// Bus runter ziehen
	setb	_P1_6
;	../fb_lpc922_mini.c:252: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
	clr	_fbtx_bit
;	../fb_lpc922_mini.c:253: fb_parity=!fb_parity;			// Parity-Bit berechnen
	cpl	_fb_parity
	sjmp	00189$
00188$:
;	../fb_lpc922_mini.c:255: else fbtx_bit=1;
	setb	_fbtx_bit
00189$:
;	../fb_lpc922_mini.c:256: if (fb_pattern==0) {				// wenn Startbit: parity zurücksetzen
	mov	a,_fb_pattern
	jnz	00191$
;	../fb_lpc922_mini.c:257: fb_pattern=1;					// auf erstes Datenbit zeigen
	mov	_fb_pattern,#0x01
;	../fb_lpc922_mini.c:258: fb_parity=0;
	clr	_fb_parity
	sjmp	00192$
00191$:
;	../fb_lpc922_mini.c:260: else fb_pattern=fb_pattern<<1;		// nächstes Datenbit
	mov	a,_fb_pattern
	add	a,_fb_pattern
	mov	_fb_pattern,a
00192$:
;	../fb_lpc922_mini.c:261: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gesendet, Parity-Bit folgt
	mov	a,_fb_pattern
	jnz	00194$
	mov	_fb_pattern,#0x81
00194$:
;	../fb_lpc922_mini.c:262: fb_state=11;
	mov	_fb_state,#0x0B
	sjmp	00200$
00199$:
;	../fb_lpc922_mini.c:265: if (!fb_parity) {				// wenn Parity-Bit logisch 0
	jb	_fb_parity,00196$
;	../fb_lpc922_mini.c:266: FBOUTC=1;						// Bus runterziehen
	setb	_P1_6
;	../fb_lpc922_mini.c:267: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
	clr	_fbtx_bit
	sjmp	00197$
00196$:
;	../fb_lpc922_mini.c:269: else fbtx_bit=1;
	setb	_fbtx_bit
00197$:
;	../fb_lpc922_mini.c:270: telpos++;					// nächstes Byte
	inc	_telpos
;	../fb_lpc922_mini.c:271: fb_pattern=0;				// wieder mit Startbit beginnen
	mov	_fb_pattern,#0x00
;	../fb_lpc922_mini.c:272: fb_state=13;				// Prüfen ob Telegramm fertig
	mov	_fb_state,#0x0D
00200$:
;	../fb_lpc922_mini.c:274: TH1=18; //reload 70µ -delay interrupt (von state 11 auf 13)
	mov	_TH1,#0x12
;	../fb_lpc922_mini.c:276: break;
	ljmp	00219$
;	../fb_lpc922_mini.c:278: case 11:	// Sendestufe aus, T=35us
00203$:
;	../fb_lpc922_mini.c:279: if(telpos==0 && fb_pattern==1) {	// 1. Byte Startbit
	mov	a,_telpos
	jnz	00205$
	mov	a,#0x01
	cjne	a,_fb_pattern,00205$
;	../fb_lpc922_mini.c:280: repeat_count++;		// angefangener Sendeversuch, also Zähler erhöhen
	inc	_repeat_count
00205$:
;	../fb_lpc922_mini.c:282: FBOUTC=0;				// Sendestufe aus
	clr	_P1_6
;	../fb_lpc922_mini.c:283: if (fbtx_bit & IE1) {	// Kollision
	mov	c,_fbtx_bit
	anl	c,_TCON_3
	jnc	00208$
;	../fb_lpc922_mini.c:284: wait_for_ack=0;
	clr	_wait_for_ack
;	../fb_lpc922_mini.c:285: init_rx();				// Senden abbrechen und Empfang initialisieren
	lcall	_init_rx
	sjmp	00209$
00208$:
;	../fb_lpc922_mini.c:288: fb_state=10;//12;
	mov	_fb_state,#0x0A
;	../fb_lpc922_mini.c:289: TH1=110;// 35µs + delay (von state 10 auf 11)
	mov	_TH1,#0x6E
00209$:
;	../fb_lpc922_mini.c:291: IE1=0;					// Flipflop löschen
	clr	_TCON_3
;	../fb_lpc922_mini.c:292: break;
;	../fb_lpc922_mini.c:298: case 13:	// Byte übertragen, T=35us, prüfen ob Telegramm fertig
	sjmp	00219$
00210$:
;	../fb_lpc922_mini.c:299: FBOUTC=0;
	clr	_P1_6
;	../fb_lpc922_mini.c:300: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:301: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
;	../fb_lpc922_mini.c:302: TH1=0xFB;					// Timer 1 auf Interbyte Abstand setzen (3 Bit Pause = 312µs 
	mov	_TH1,#0xFB
;	../fb_lpc922_mini.c:303: TL1=0x90;
	mov	_TL1,#0x90
;	../fb_lpc922_mini.c:304: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_mini.c:305: if (send_ack || send_nack) {	// ACK/NACK senden
	jb	_send_ack,00214$
	jnb	_send_nack,00215$
00214$:
;	../fb_lpc922_mini.c:306: init_rx();					// ACK senden abgeschlossen, also statemachine auf Anfang
	lcall	_init_rx
	sjmp	00216$
00215$:
;	../fb_lpc922_mini.c:309: if (telpos>((telegramm[5]&0x0F)+7)) {		// Telegramm fertig gesendet
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
	jnc	00212$
;	../fb_lpc922_mini.c:310: tel_sent=1;
	setb	_tel_sent
;	../fb_lpc922_mini.c:311: init_rx();	// Telegramm senden abgeschlossen, ggf. wiederholen wenn nicht geackt wird
	lcall	_init_rx
	sjmp	00216$
00212$:
;	../fb_lpc922_mini.c:313: else fb_state=14;		// nächstes Byte: Interbyte Abstand einhalten
	mov	_fb_state,#0x0E
00216$:
;	../fb_lpc922_mini.c:315: IE1=0;
	clr	_TCON_3
;	../fb_lpc922_mini.c:316: break;
;	../fb_lpc922_mini.c:318: case 14:	// Interbyte Abstand erreicht (=Stopbit + 2 Bit)
	sjmp	00219$
00218$:
;	../fb_lpc922_mini.c:319: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:320: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
;	../fb_lpc922_mini.c:321: TH1=110;							// Timer 1 auf 104/3 us laden
	mov	_TH1,#0x6E
;	../fb_lpc922_mini.c:322: TL1=128;
	mov	_TL1,#0x80
;	../fb_lpc922_mini.c:323: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_mini.c:324: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_mini.c:325: fb_state=10;
	mov	_fb_state,#0x0A
;	../fb_lpc922_mini.c:330: }
00219$:
;	../fb_lpc922_mini.c:331: interrupted=1;			// zeigt der app, dass sie unterbrochen wurde
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
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'init_rx'
;------------------------------------------------------------
;	../fb_lpc922_mini.c:335: void init_rx(void) 	// Empfangen initiieren (statemachine auf Anfang)
;	-----------------------------------------
;	 function init_rx
;	-----------------------------------------
_init_rx:
;	../fb_lpc922_mini.c:337: fb_state=0;
	mov	_fb_state,#0x00
;	../fb_lpc922_mini.c:338: IE1=0;
	clr	_TCON_3
;	../fb_lpc922_mini.c:339: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:340: ET1=0;
	clr	_IEN0_3
;	../fb_lpc922_mini.c:341: cs=0;
	mov	_cs,#0x00
;	../fb_lpc922_mini.c:342: telpos=0;
	mov	_telpos,#0x00
;	../fb_lpc922_mini.c:343: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:344: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
;	../fb_lpc922_mini.c:345: TH1=0x89;					// busfree Zeit = 15 Bit (auf ACK) + 11 Bit (ACK) + 53 Bit
	mov	_TH1,#0x89
;	../fb_lpc922_mini.c:346: TL1=0xAF;
	mov	_TL1,#0xAF
;	../fb_lpc922_mini.c:347: send_ack=0;
	clr	_send_ack
;	../fb_lpc922_mini.c:348: send_nack=0;
	clr	_send_nack
;	../fb_lpc922_mini.c:349: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_mini.c:350: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_mini.c:351: EX1=1;
	setb	_IEN0_2
;	../fb_lpc922_mini.c:352: ET1=1;
	setb	_IEN0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_tx'
;------------------------------------------------------------
;n                         Allocated to registers r6 
;cs_pos                    Allocated to registers r7 
;------------------------------------------------------------
;	../fb_lpc922_mini.c:356: void init_tx(void) 		// Checksum des Telegramms berechnen und Senden initiieren
;	-----------------------------------------
;	 function init_tx
;	-----------------------------------------
_init_tx:
;	../fb_lpc922_mini.c:360: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_mini.c:361: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
;	../fb_lpc922_mini.c:362: TH1=110;							// von state 10 auf 11
	mov	_TH1,#0x6E
;	../fb_lpc922_mini.c:363: TL1=128;							// von hier bis state 10
	mov	_TL1,#0x80
;	../fb_lpc922_mini.c:364: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_mini.c:366: cs_pos=(telegramm[5]&0x0F)+7;		// Position der Checksum im Telegramm
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	add	a,#0x07
	mov	r7,a
;	../fb_lpc922_mini.c:367: cs=0xFF;
	mov	_cs,#0xFF
;	../fb_lpc922_mini.c:368: for(n=0;n<cs_pos;n++) {
	mov	r6,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00104$
;	../fb_lpc922_mini.c:369: cs^=telegramm[n];				// Checksum berechnen
	mov	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	xrl	_cs,a
;	../fb_lpc922_mini.c:368: for(n=0;n<cs_pos;n++) {
	inc	r6
	sjmp	00101$
00104$:
;	../fb_lpc922_mini.c:371: telegramm[cs_pos]=cs;				// Checksum hinter Nutzdaten anfügen
	mov	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,_cs
;	../fb_lpc922_mini.c:372: ack=0;
	clr	_ack
;	../fb_lpc922_mini.c:373: nack=0;
	clr	_nack
;	../fb_lpc922_mini.c:374: wait_for_ack=1;
	setb	_wait_for_ack
;	../fb_lpc922_mini.c:376: fb_state=10;						// nächster state: senden
	mov	_fb_state,#0x0A
;	../fb_lpc922_mini.c:377: fb_pattern=0;						// nächstes zu sendendes Bit, 0=Startbit
	mov	_fb_pattern,#0x00
;	../fb_lpc922_mini.c:378: telpos=0;							// nächstes zu sendende Byte
	mov	_telpos,#0x00
;	../fb_lpc922_mini.c:380: EX1=0;								// ext. int1 inaktiv
	clr	_IEN0_2
;	../fb_lpc922_mini.c:381: TR1=1;								// Timer 1 starten
	setb	_TCON_6
;	../fb_lpc922_mini.c:382: ET1=1;								// Timer 1 int. aktiv
	setb	_IEN0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;success                   Allocated to registers b0 
;------------------------------------------------------------
;	../fb_lpc922_mini.c:410: __bit send_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function send_obj_value
;	-----------------------------------------
_send_obj_value:
	mov	r7,dpl
;	../fb_lpc922_mini.c:412: __bit success=0;
	clr	b0
;	../fb_lpc922_mini.c:414: if(tx_nextsend!=((tx_nextwrite+1)&0x07)) {
	mov	r5,_tx_nextwrite
	mov	r6,#0x00
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
00107$:
	anl	ar5,#0x07
	mov	r6,#0x00
	mov	r3,_tx_nextsend
	mov	r4,#0x00
	mov	a,r3
	cjne	a,ar5,00108$
	mov	a,r4
	cjne	a,ar6,00108$
	sjmp	00102$
00108$:
;	../fb_lpc922_mini.c:415: tx_buffer[tx_nextwrite]=objno;
	mov	a,_tx_nextwrite
	add	a,#_tx_buffer
	mov	r0,a
	mov	@r0,ar7
;	../fb_lpc922_mini.c:416: tx_nextwrite++;
	inc	_tx_nextwrite
;	../fb_lpc922_mini.c:417: tx_nextwrite&=0x07;
	anl	_tx_nextwrite,#0x07
;	../fb_lpc922_mini.c:418: success=1;
	setb	b0
00102$:
;	../fb_lpc922_mini.c:420: TR1=1;	// statemachine starten falls vorher in state 0 gestoppt
	setb	_TCON_6
;	../fb_lpc922_mini.c:421: return(success);
	mov	c,b0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_tel'
;------------------------------------------------------------
;tpdu                      Allocated to registers r7 
;apdu                      Allocated to registers r6 
;------------------------------------------------------------
;	../fb_lpc922_mini.c:427: void process_tel(void)
;	-----------------------------------------
;	 function process_tel
;	-----------------------------------------
_process_tel:
;	../fb_lpc922_mini.c:431: tel_arrived=0;
	clr	_tel_arrived
;	../fb_lpc922_mini.c:432: tpdu=telegramm[6]&0xC3;
	mov	a,#0xC3
	anl	a,(_telegramm + 0x0006)
	mov	r7,a
;	../fb_lpc922_mini.c:433: apdu=telegramm[7];
	mov	r6,(_telegramm + 0x0007)
;	../fb_lpc922_mini.c:436: if(telegramm[3]==0 && telegramm[4]==0) {	// nur wenn wenn Zieladresse = 0
	mov	a,(_telegramm + 0x0003)
	jnz	00112$
	mov	a,(_telegramm + 0x0004)
	jz	00115$
00112$:
;	../fb_lpc922_mini.c:444: if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag Bit 7, 0=phys. Adr., 1=Gruppenadr.
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00115$
;	../fb_lpc922_mini.c:505: if(tpdu==GROUP_PDU){
	mov	a,r7
	jnz	00115$
;	../fb_lpc922_mini.c:506: if(((apdu&0xC0)==WRITE_GROUP)||((apdu&0xC0)==0x40)) write_value_req();	// Objektwerte schreiben (zB. EISx)		00000000 10xxxxxx
	mov	a,#0xC0
	anl	a,r6
	mov	r7,a
	cjne	r7,#0x80,00131$
	sjmp	00101$
00131$:
	mov	a,#0xC0
	anl	a,r6
	mov	r7,a
	cjne	r7,#0x40,00102$
00101$:
	push	ar6
	lcall	_write_value_req
	pop	ar6
00102$:
;	../fb_lpc922_mini.c:507: if(apdu==READ_GROUP_REQUEST) read_value_req();	// Objektwert lesen und read_value_response senden	00000000 00000000
	mov	a,r6
	jnz	00115$
	ljmp	_read_value_req
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_hw'
;------------------------------------------------------------
;	../fb_lpc922_mini.c:617: void restart_hw(void)
;	-----------------------------------------
;	 function restart_hw
;	-----------------------------------------
_restart_hw:
;	../fb_lpc922_mini.c:619: DIVM=0;			// Taktferquenz nicht teilen -> volles Tempo
	mov	_DIVM,#0x00
;	../fb_lpc922_mini.c:621: P1M1=0x14;		// Port 1 auf quasi-bidirektional,
	mov	_P1M1,#0x14
;	../fb_lpc922_mini.c:622: P1M2=0x4C;		// ausser P1.2(T0 als PWM Ausgang)=open-drain,
	mov	_P1M2,#0x4C
;	../fb_lpc922_mini.c:626: FBOUTC=0;		// Bus-Ausgang auf low
	clr	_P1_6
;	../fb_lpc922_mini.c:628: TMOD=0x21;		// Timer 0 als 16-Bit Timer, Timer 1 als 8 Bit autoreload
	mov	_TMOD,#0x21
;	../fb_lpc922_mini.c:629: TAMOD=0x00;
	mov	_TAMOD,#0x00
;	../fb_lpc922_mini.c:630: TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen 
	clr	_TCON_4
;	../fb_lpc922_mini.c:631: TR1=0;			// Timer 1 (Empfangs-Timer, nicht in app verwenden!) zunaechst stoppen
	clr	_TCON_6
;	../fb_lpc922_mini.c:632: TH1=128;		// Timer 1 auf 104us/3
	mov	_TH1,#0x80
;	../fb_lpc922_mini.c:633: TL1=128;
	mov	_TL1,#0x80
;	../fb_lpc922_mini.c:634: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_mini.c:636: RTCH=0x0E;		// Real Time Clock auf 65ms laden
	mov	_RTCH,#0x0E
;	../fb_lpc922_mini.c:637: RTCL=0xA0;		// (RTC ist ein down-counter mit 128 bit prescaler und osc-clock)
	mov	_RTCL,#0xA0
;	../fb_lpc922_mini.c:638: RTCCON=0x61;	// ... und starten
	mov	_RTCCON,#0x61
;	../fb_lpc922_mini.c:640: interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
	clr	_interrupted
;	../fb_lpc922_mini.c:641: IEN0=0x00;
	mov	_IEN0,#0x00
;	../fb_lpc922_mini.c:642: IEN1=0x00;
	mov	_IEN1,#0x00
;	../fb_lpc922_mini.c:644: ET1=0;			// Interrupt von Timer 1 sperren
	clr	_IEN0_3
;	../fb_lpc922_mini.c:645: EX0=0;			// Externen Interrupt 0 sperren
	clr	_IEN0_0
;	../fb_lpc922_mini.c:646: EX1=0;			// Externen Interrupt 1 sperren
	clr	_IEN0_2
;	../fb_lpc922_mini.c:647: EA=1;			// Interrupts prinzipiell freigeben
	setb	_IEN0_7
;	../fb_lpc922_mini.c:649: IP0=0x04;		// höchste Priorität fuer ext1
	mov	_IP0,#0x04
;	../fb_lpc922_mini.c:650: IP0H=0x0C;
	mov	_IP0H,#0x0C
;	../fb_lpc922_mini.c:651: IT1=1;			// Interrupt 1 flankengetriggert=1
	setb	_TCON_2
;	../fb_lpc922_mini.c:653: status60=0x2E;	// Status-Byte (steht normal im userram an 0x60)
	mov	_status60,#0x2E
;	../fb_lpc922_mini.c:655: ack=0;			// ack und nack flag zurücksetzen
	clr	_ack
;	../fb_lpc922_mini.c:656: nack=0;
	clr	_nack
;	../fb_lpc922_mini.c:657: send_ack=0;
	clr	_send_ack
;	../fb_lpc922_mini.c:658: send_nack=0;
	clr	_send_nack
;	../fb_lpc922_mini.c:659: tel_arrived=0;	// kein Telegramm empfangen
	clr	_tel_arrived
;	../fb_lpc922_mini.c:660: auto_ack=1;		// empfangene Telegramme automatisch mit ack bestätigen
	setb	_auto_ack
;	../fb_lpc922_mini.c:661: tx_nextwrite=0;	// Zeiger auf nächste zu schreibende Objektnr. in tx_buffer
	mov	_tx_nextwrite,#0x00
;	../fb_lpc922_mini.c:662: tx_nextsend=0;	// Zeiger auf nächste zu sendende Objektnr. in tx_buffer
	mov	_tx_nextsend,#0x00
;	../fb_lpc922_mini.c:663: pcount=0;		// Paketzaehler initialisieren
	mov	_pcount,#0x00
;	../fb_lpc922_mini.c:664: inc_pcount=0;
	clr	_inc_pcount
;	../fb_lpc922_mini.c:665: connected=0;	// keine Verbindung
	clr	_connected
;	../fb_lpc922_mini.c:666: transparency=0;	// fremde Gruppentelegramme werden ignoriert
	clr	_transparency
;	../fb_lpc922_mini.c:667: init_rx();		// Empfang initialisieren
	ljmp	_init_rx
	.area CSEG    (CODE)
	.area CONST   (CODE)
_userram	=	0x1c00
_eeprom	=	0x1d00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
