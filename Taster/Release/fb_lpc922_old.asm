;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
; This file was generated Sun Mar 04 15:12:46 2012
;--------------------------------------------------------
	.module fb_lpc922_old
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _eeprom
	.globl _userram
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
	.globl _timeout_count
	.globl _repeat_count
	.globl _fb_state
	.globl _fb_pattern
	.globl _fbrx_byte
	.globl _cs
	.globl _telpos
	.globl _tx_buffer
	.globl _telegramm
	.globl _mem_length
	.globl _pcount
	.globl _conl
	.globl _conh
	.globl _X1_int
	.globl _T1_int
	.globl _init_rx
	.globl _init_tx
	.globl _init_repeat_tx
	.globl _gapos_in_gat
	.globl _build_tel
	.globl _send_obj_value
	.globl _process_tel
	.globl _write_memory
	.globl _set_pa
	.globl _read_objflags
	.globl _find_first_objno
	.globl _find_ga
	.globl _restart_hw
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
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
	.area RSEG    (DATA)
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
_timeout_count::
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
;------------------------------------------------------------
;	../fb_lpc922_old.c:58: void X1_int(void) interrupt 2		// Flanke des Startbits löst int1 aus
;	-----------------------------------------
;	 function X1_int
;	-----------------------------------------
_X1_int:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	acc
	push	psw
	mov	psw,#0x00
;	../fb_lpc922_old.c:61: EX1=0;			// int1 stoppen								1 cycle = 0,27127us
	clr	_IEN0_2
;	../fb_lpc922_old.c:62: TR1=0;			// Timer 1 stoppen
	clr	_TCON_6
;	../fb_lpc922_old.c:63: TMOD=(TMOD & 0x0F) + 0x20;	// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
;	../fb_lpc922_old.c:64: TL1=128;		// Timer laden
	mov	_TL1,#0x80
;	../fb_lpc922_old.c:65: TH1=128;
	mov	_TH1,#0x80
;	../fb_lpc922_old.c:66: TF1=0;			// Timer1-flag löschen						1 cycle
	clr	_TCON_7
;	../fb_lpc922_old.c:67: TR1=1;			// Timer1 starten							1 cycle
	setb	_TCON_6
;	../fb_lpc922_old.c:68: ET1=1;			// Timer1-int aktiv							1 cycle
	setb	_IEN0_3
;	../fb_lpc922_old.c:70: fb_state=1;		// nächster state
	mov	_fb_state,#0x01
;	../fb_lpc922_old.c:71: fb_parity=0;	// Parity Bit löschen
	clr	_fb_parity
;	../fb_lpc922_old.c:72: parity_ok=1;	// wird bei Fehler gelöscht
	setb	_parity_ok
;	../fb_lpc922_old.c:73: fb_pattern=0;
	mov	_fb_pattern,#0x00
;	../fb_lpc922_old.c:74: fbrx_byte=0;
	mov	_fbrx_byte,#0x00
;	../fb_lpc922_old.c:75: interrupted=1;	// signalisiert app, dass unterbrochen wurde
	setb	_interrupted
;	../fb_lpc922_old.c:76: timeout_count=158;					// 5,2ms = 50 Bit Pause
	mov	_timeout_count,#0x9E
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'T1_int'
;------------------------------------------------------------
;fbrx_bit                  Allocated to registers b0 
;send_byte                 Allocated to registers r2 
;------------------------------------------------------------
;	../fb_lpc922_old.c:82: void T1_int(void) interrupt 3	// Timer 1 Interrupt
;	-----------------------------------------
;	 function T1_int
;	-----------------------------------------
_T1_int:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	../fb_lpc922_old.c:88: switch (fb_state){
	mov	r2,_fb_state
	cjne	r2,#0x00,00280$
	sjmp	00101$
00280$:
	cjne	r2,#0x02,00281$
	ljmp	00115$
00281$:
	cjne	r2,#0x03,00282$
	ljmp	00150$
00282$:
	cjne	r2,#0x04,00283$
	ljmp	00151$
00283$:
	cjne	r2,#0x05,00284$
	ljmp	00169$
00284$:
	cjne	r2,#0x0A,00285$
	ljmp	00177$
00285$:
	cjne	r2,#0x0B,00286$
	ljmp	00199$
00286$:
	cjne	r2,#0x0C,00287$
	ljmp	00203$
00287$:
	cjne	r2,#0x0D,00288$
	ljmp	00204$
00288$:
	cjne	r2,#0x17,00289$
	ljmp	00214$
00289$:
	cjne	r2,#0x50,00290$
	ljmp	00215$
00290$:
	ljmp	00219$
;	../fb_lpc922_old.c:92: case 0:
00101$:
;	../fb_lpc922_old.c:93: if(timeout_count!=0) timeout_count--;	// Bus noch nicht frei
	mov	a,_timeout_count
	jz	00113$
	dec	_timeout_count
	ljmp	00220$
00113$:
;	../fb_lpc922_old.c:95: if(tx_nextsend != tx_nextwrite) { 			// wenn zu sendendes Objekt vorhanden
	mov	a,_tx_nextwrite
	cjne	a,_tx_nextsend,00292$
	sjmp	00110$
00292$:
;	../fb_lpc922_old.c:96: if(build_tel(tx_buffer[tx_nextsend])) {	// wenn Telegramm gebildet werden konnte
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r0,a
	mov	dpl,@r0
	lcall	_build_tel
	jnc	00107$
;	../fb_lpc922_old.c:98: EX1=0; //Um zu vermeiden dass man in die Abfrage hinein-empfängt
	clr	_IEN0_2
;	../fb_lpc922_old.c:99: if(!fb_state) { //nur bilden wenn vorher kein rx_intit durch ext int kam
	mov	a,_fb_state
	jnz	00103$
;	../fb_lpc922_old.c:100: tx_buffer[tx_nextsend]|=0x20;		// Bit für "wird gerade gesendet"
	mov	a,_tx_nextsend
	add	a,#_tx_buffer
	mov	r0,a
	mov	ar2,@r0
	mov	a,#0x20
	orl	a,r2
	mov	@r0,a
;	../fb_lpc922_old.c:101: repeat_count=0;						// Wiederholungszähler für nicht geackte Telegramme
	mov	_repeat_count,#0x00
;	../fb_lpc922_old.c:102: init_tx();							// Senden starten
	lcall	_init_tx
00103$:
;	../fb_lpc922_old.c:104: if(!send_nack)EX1=1;	// ext1 int einschalten falls Empfang...
	jnb	_send_nack,00295$
	ljmp	00220$
00295$:
	setb	_IEN0_2
	ljmp	00220$
00107$:
;	../fb_lpc922_old.c:106: else tx_nextsend++; //hier Zeiger erhöhen wenn nichts zum Senden da ist
	inc	_tx_nextsend
	ljmp	00220$
00110$:
;	../fb_lpc922_old.c:109: TR1=0;		// nichts mehr zu tun, also statemachine stoppen
	clr	_TCON_6
;	../fb_lpc922_old.c:110: EX1=1;		// sicherstellen, dass ext. Int. 1 aktiv ist
	setb	_IEN0_2
;	../fb_lpc922_old.c:113: break;
	ljmp	00220$
;	../fb_lpc922_old.c:116: case 2: // T=69,7us
00115$:
;	../fb_lpc922_old.c:117: fbrx_bit=!IE1;				// Flipflop des ext. Int. 1 auslesen, ist 1 bei fallender Flanke am Pin
	mov	c,_TCON_3
	cpl	c
	mov	b0,c
;	../fb_lpc922_old.c:118: IE1=0;						// Flipflop zurücksetzen
	clr	_TCON_3
;	../fb_lpc922_old.c:119: fb_state=3;					// nächster state: 3
	mov	_fb_state,#0x03
;	../fb_lpc922_old.c:120: if(fb_pattern==0) {			// fb_pattern=0 bedeutet, dass bisher nur das Startbit empfangen wurde
	mov	a,_fb_pattern
	jnz	00148$
;	../fb_lpc922_old.c:121: fb_pattern=1;			// 70us nach Startbit, als näcstes kommt Datenbit 0
	mov	_fb_pattern,#0x01
;	../fb_lpc922_old.c:122: ack=0;					// Empfang eines neuen Bytes, also ack/nack Flags zurücksetzen
	clr	_ack
;	../fb_lpc922_old.c:123: nack=0;
	clr	_nack
	ljmp	00220$
00148$:
;	../fb_lpc922_old.c:126: if(fb_pattern<129) {					// Daten-Bit LSB first
	mov	a,#0x100 - 0x81
	add	a,_fb_pattern
	jc	00145$
;	../fb_lpc922_old.c:127: if(fbrx_bit) {
	jnb	b0,00117$
;	../fb_lpc922_old.c:128: fb_parity=!fb_parity;			// Paritybit berechnen
	cpl	_fb_parity
;	../fb_lpc922_old.c:129: fbrx_byte+=fb_pattern;			// Datenbit speichern
	mov	a,_fb_pattern
	add	a,_fbrx_byte
	mov	_fbrx_byte,a
00117$:
;	../fb_lpc922_old.c:131: fb_pattern=fb_pattern<<1;			// nächstes Bit
	mov	a,_fb_pattern
	add	a,_fb_pattern
;	../fb_lpc922_old.c:132: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gelesen, Parity-Bit folgt
	mov	_fb_pattern,a
	jz	00299$
	ljmp	00220$
00299$:
	mov	_fb_pattern,#0x81
	ljmp	00220$
00145$:
;	../fb_lpc922_old.c:135: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:136: TF1=0; //prüfen ob erforderlich!!!
	clr	_TCON_7
;	../fb_lpc922_old.c:137: if(fb_parity==fbrx_bit) {				// Parity-Bit OK
	mov	c,_fb_parity
	jb	b0,00300$
	cpl	c
00300$:
	jnc	00130$
;	../fb_lpc922_old.c:138: if (telpos==0) {						// erstes empfangenes Byte
	mov	a,_telpos
	jnz	00125$
;	../fb_lpc922_old.c:139: if (fbrx_byte==0xCC) ack=1;				// ACK empfangen
	mov	a,#0xCC
	cjne	a,_fbrx_byte,00121$
	setb	_ack
00121$:
;	../fb_lpc922_old.c:140: if (fbrx_byte==0x0C) nack=1;			// NACK empfangen
	mov	a,#0x0C
	cjne	a,_fbrx_byte,00125$
	setb	_nack
00125$:
;	../fb_lpc922_old.c:142: if (!ack && !nack) {					// Datenbyte empfangen
	jb	_ack,00131$
	jb	_nack,00131$
;	../fb_lpc922_old.c:143: telegramm[telpos]=fbrx_byte;			// Byte speichern
	mov	a,_telpos
	add	a,#_telegramm
	mov	r0,a
;	../fb_lpc922_old.c:144: cs^=fbrx_byte;							// Checksum berechnen
	mov	a,_fbrx_byte
	mov	@r0,a
	xrl	_cs,a
;	../fb_lpc922_old.c:145: telpos++;								// Telegrammzeiger erhöhen
	inc	_telpos
	sjmp	00131$
00130$:
;	../fb_lpc922_old.c:148: else parity_ok=0;						// Parity Error
	clr	_parity_ok
00131$:
;	../fb_lpc922_old.c:150: if (wait_for_ack) {						// es wird ein ACK erwartet
;	../fb_lpc922_old.c:151: wait_for_ack=0;							// Flag zurücksetzen, da wir es ja gerade abarbeiten
	jbc	_wait_for_ack,00309$
	sjmp	00142$
00309$:
;	../fb_lpc922_old.c:152: if (ack && parity_ok) init_rx();		// ACK empfangen und auch erwartet
	jnb	_ack,00133$
	jnb	_parity_ok,00133$
	lcall	_init_rx
	ljmp	00220$
00133$:
;	../fb_lpc922_old.c:153: else init_repeat_tx();					// ACK erwartet, aber irgendwas empfangen
	lcall	_init_repeat_tx
	ljmp	00220$
00142$:
;	../fb_lpc922_old.c:156: if (parity_ok && (!ack && !nack)) {		// ganz normales Datenbyte
	jnb	_parity_ok,00137$
	jb	_ack,00137$
	jb	_nack,00137$
;	../fb_lpc922_old.c:157: TMOD=(TMOD & 0x0F) +0x10;			// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
;	../fb_lpc922_old.c:158: TH1=0xFA;							// Timer 1 auf Timeout-Position setzen (370us)
	mov	_TH1,#0xFA
;	../fb_lpc922_old.c:159: TL1=0xAB;
	mov	_TL1,#0xAB
;	../fb_lpc922_old.c:160: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_old.c:161: fb_state=4;							// nächster state: timeout = Telegramm fertig
	mov	_fb_state,#0x04
;	../fb_lpc922_old.c:162: EX1=1;								// int1 aktiv, falls noch ein Byte kommt
	setb	_IEN0_2
	ljmp	00220$
00137$:
;	../fb_lpc922_old.c:164: else init_rx();							// irgendwas empfangen
	lcall	_init_rx
;	../fb_lpc922_old.c:168: break;
	ljmp	00220$
;	../fb_lpc922_old.c:170: case 3: // T=104us=0us
00150$:
;	../fb_lpc922_old.c:171: fb_state=1;
	mov	_fb_state,#0x01
;	../fb_lpc922_old.c:172: break;
	ljmp	00220$
;	../fb_lpc922_old.c:174: case 4:	//	Timeout, d.h. Telegramm-Ende
00151$:
;	../fb_lpc922_old.c:175: if (auto_ack && telpos>4) {		// wenn ACK gesendet werden soll und Telegramm zumindest 5 Bytes hat
	jnb	_auto_ack,00166$
	mov	a,_telpos
	add	a,#0xff - 0x04
	jnc	00166$
;	../fb_lpc922_old.c:176: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:177: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
;	../fb_lpc922_old.c:178: TH1=0xEF;					// Timer 1 auf ACK-Position setzen
	mov	_TH1,#0xEF
;	../fb_lpc922_old.c:179: TL1=0x73;//6D	6F wegen zusätliche flipflopabfrage.
	mov	_TL1,#0x73
;	../fb_lpc922_old.c:180: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_old.c:181: its_me=transparency;			// indiziert, ob dieses Gerät adressiert wurde, bei transparecy=1 immer
	mov	c,_transparency
	mov	_its_me,c
;	../fb_lpc922_old.c:182: if(telegramm[5]&0x80) {
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00161$
;	../fb_lpc922_old.c:183: if (gapos_in_gat(telegramm[3],telegramm[4])!=0xFF) its_me=1;	// Gruppenadresse
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r2,dpl
	dec	sp
	cjne	r2,#0xFF,00318$
	sjmp	00153$
00318$:
	setb	_its_me
00153$:
;	../fb_lpc922_old.c:184: if (telegramm[3]==0 && telegramm[4]==0) its_me=1;				// Broadcast
	mov	a,(_telegramm + 0x0003)
	jnz	00162$
	mov	a,(_telegramm + 0x0004)
	jnz	00162$
	setb	_its_me
	sjmp	00162$
00161$:
;	../fb_lpc922_old.c:186: else if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) its_me=1;	// phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	cjne	a,(_telegramm + 0x0003),00162$
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	cjne	a,(_telegramm + 0x0004),00162$
	setb	_its_me
00162$:
;	../fb_lpc922_old.c:187: fb_state=5;					// nächster state: ACK-Position erreicht
	mov	_fb_state,#0x05
	ljmp	00220$
00166$:
;	../fb_lpc922_old.c:190: if (telpos>1) tel_arrived=1;	// trotzdem den Eingang eines Telegramms anzeigen
	mov	a,_telpos
	add	a,#0xff - 0x01
	jnc	00164$
	setb	_tel_arrived
00164$:
;	../fb_lpc922_old.c:191: init_rx();						// wieder in den Empfang zurück
	lcall	_init_rx
;	../fb_lpc922_old.c:193: break;
	ljmp	00220$
;	../fb_lpc922_old.c:195: case 5:	// ACK-Position erreicht
00169$:
;	../fb_lpc922_old.c:196: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:197: if (cs==0xFF && parity_ok) {	// Checksum und Parity OK
	mov	a,#0xFF
	cjne	a,_cs,00174$
	jnb	_parity_ok,00174$
;	../fb_lpc922_old.c:198: if (its_me) {					// Gerät adressiert
	jnb	_its_me,00171$
;	../fb_lpc922_old.c:199: tel_arrived=1;					// signalisiert, dass Telegramm eingetroffen
	setb	_tel_arrived
;	../fb_lpc922_old.c:200: send_ack=1;
	setb	_send_ack
;	../fb_lpc922_old.c:201: init_tx();						// Senden initiieren
	lcall	_init_tx
;	../fb_lpc922_old.c:202: wait_for_ack=0;					// bei ACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
	ljmp	00220$
00171$:
;	../fb_lpc922_old.c:204: else init_rx();					// Gerät nicht adressiert, also zurück zu Empfang
	lcall	_init_rx
	ljmp	00220$
00174$:
;	../fb_lpc922_old.c:207: send_nack=1;
	setb	_send_nack
;	../fb_lpc922_old.c:208: init_tx();
	lcall	_init_tx
;	../fb_lpc922_old.c:209: wait_for_ack=0;					// bei NACK senden nicht erneut auf ACK warten
	clr	_wait_for_ack
;	../fb_lpc922_old.c:211: break;
	ljmp	00220$
;	../fb_lpc922_old.c:215: case 10:	// Byte Senden, T=0us
00177$:
;	../fb_lpc922_old.c:216: send_byte=telegramm[telpos];
	mov	a,_telpos
	add	a,#_telegramm
	mov	r0,a
	mov	ar2,@r0
;	../fb_lpc922_old.c:217: if (send_ack) send_byte=0xCC;
	jnb	_send_ack,00179$
	mov	r2,#0xCC
00179$:
;	../fb_lpc922_old.c:218: if (send_nack) send_byte=0x0C;
	jnb	_send_nack,00181$
	mov	r2,#0x0C
00181$:
;	../fb_lpc922_old.c:219: EX1=0;					// Empfang verhindern
	clr	_IEN0_2
;	../fb_lpc922_old.c:221: if((fb_state==10)||send_nack){		
	mov	a,#0x0A
	cjne	a,_fb_state,00332$
	sjmp	00196$
00332$:
	jb	_send_nack,00333$
	ljmp	00220$
00333$:
00196$:
;	../fb_lpc922_old.c:223: if (fb_pattern<=128) {			// Startbit und Datenbits
	mov	a,_fb_pattern
	add	a,#0xff - 0x80
	jc	00194$
;	../fb_lpc922_old.c:224: if ((send_byte & fb_pattern)==0) {	// wenn Bit logisch 0 ist
	mov	a,_fb_pattern
	anl	a,r2
	jnz	00183$
;	../fb_lpc922_old.c:225: FBOUTC=1;						// Bus runter ziehen
	setb	_P1_6
;	../fb_lpc922_old.c:226: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
	clr	_fbtx_bit
;	../fb_lpc922_old.c:227: fb_parity=!fb_parity;			// Parity-Bit berechnen
	cpl	_fb_parity
	sjmp	00184$
00183$:
;	../fb_lpc922_old.c:229: else fbtx_bit=1;
	setb	_fbtx_bit
00184$:
;	../fb_lpc922_old.c:230: if (fb_pattern==0) {				// wenn Startbit: parity zurücksetzen
	mov	a,_fb_pattern
	jnz	00186$
;	../fb_lpc922_old.c:231: fb_pattern=1;					// auf erstes Datenbit zeigen
	mov	_fb_pattern,#0x01
;	../fb_lpc922_old.c:232: fb_parity=0;
	clr	_fb_parity
	sjmp	00187$
00186$:
;	../fb_lpc922_old.c:234: else fb_pattern=fb_pattern<<1;		// nächstes Datenbit
	mov	a,_fb_pattern
	add	a,_fb_pattern
	mov	_fb_pattern,a
00187$:
;	../fb_lpc922_old.c:235: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gesendet, Parity-Bit folgt
	mov	a,_fb_pattern
	jnz	00189$
	mov	_fb_pattern,#0x81
00189$:
;	../fb_lpc922_old.c:236: fb_state=11;
	mov	_fb_state,#0x0B
	ljmp	00220$
00194$:
;	../fb_lpc922_old.c:239: if (!fb_parity) {				// wenn Parity-Bit logisch 0
	jb	_fb_parity,00191$
;	../fb_lpc922_old.c:240: FBOUTC=1;						// Bus runterziehen
	setb	_P1_6
;	../fb_lpc922_old.c:241: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
	clr	_fbtx_bit
	sjmp	00192$
00191$:
;	../fb_lpc922_old.c:243: else fbtx_bit=1;
	setb	_fbtx_bit
00192$:
;	../fb_lpc922_old.c:244: telpos++;					// nächstes Byte
	inc	_telpos
;	../fb_lpc922_old.c:245: fb_pattern=0;				// wieder mit Startbit beginnen
	mov	_fb_pattern,#0x00
;	../fb_lpc922_old.c:246: fb_state=13;				// Prüfen ob Telegramm fertig
	mov	_fb_state,#0x0D
;	../fb_lpc922_old.c:253: break;
	ljmp	00220$
;	../fb_lpc922_old.c:255: case 11:	// Sendestufe aus, T=35us
00199$:
;	../fb_lpc922_old.c:273: _endasm;
	
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  nop
	  
;	../fb_lpc922_old.c:274: FBOUTC=0;				// Sendestufe aus
	clr	_P1_6
;	../fb_lpc922_old.c:275: if (fbtx_bit & IE1) {	// Kollision
	mov	c,_fbtx_bit
	anl	c,_TCON_3
	jnc	00201$
;	../fb_lpc922_old.c:276: init_rx();				// Senden abbrechen und Empfang initialisieren
	lcall	_init_rx
	sjmp	00202$
00201$:
;	../fb_lpc922_old.c:278: else fb_state=12;
	mov	_fb_state,#0x0C
00202$:
;	../fb_lpc922_old.c:279: IE1=0;					// Flipflop löschen
	clr	_TCON_3
;	../fb_lpc922_old.c:280: break;
;	../fb_lpc922_old.c:282: case 12:	// T=70us
	sjmp	00220$
00203$:
;	../fb_lpc922_old.c:283: fb_state=10;
	mov	_fb_state,#0x0A
;	../fb_lpc922_old.c:284: break;
;	../fb_lpc922_old.c:286: case 13:	// Byte übertragen, T=35us, prüfen ob Telegramm fertig
	sjmp	00220$
00204$:
;	../fb_lpc922_old.c:287: FBOUTC=0;
	clr	_P1_6
;	../fb_lpc922_old.c:288: if (send_ack || send_nack) {	// ACK/NACK senden
	jb	_send_ack,00210$
	jnb	_send_nack,00211$
00210$:
;	../fb_lpc922_old.c:289: init_rx();					// ACK senden abgeschlossen, also statemachine auf Anfang
	lcall	_init_rx
;	../fb_lpc922_old.c:290: send_ack=0;
	clr	_send_ack
;	../fb_lpc922_old.c:291: send_nack=0;
	clr	_send_nack
	sjmp	00212$
00211$:
;	../fb_lpc922_old.c:294: if (telpos>((telegramm[5]&0x0F)+7)) {
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	mov	r2,a
	mov	r3,#0x00
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r4,_telpos
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00208$
;	../fb_lpc922_old.c:295: tel_sent=1;
	setb	_tel_sent
;	../fb_lpc922_old.c:296: if(repeat_count==0)	tx_nextsend++; // byte ist ohne kollision rausgegangen
	mov	a,_repeat_count
	jnz	00206$
	inc	_tx_nextsend
00206$:
;	../fb_lpc922_old.c:297: init_repeat_tx();	// Telegramm senden abgeschlossen, ggf. wiederholen wenn nicht geackt wird
	lcall	_init_repeat_tx
	sjmp	00212$
00208$:
;	../fb_lpc922_old.c:300: else fb_state=14;		// nächstes Byte: Interbyte Abstand einhalten
	mov	_fb_state,#0x0E
00212$:
;	../fb_lpc922_old.c:302: IE1=0;
	clr	_TCON_3
;	../fb_lpc922_old.c:303: break;
;	../fb_lpc922_old.c:306: case 23:	// Interbyte Abstand erreicht (=Stopbit + 2 Bit)
	sjmp	00220$
00214$:
;	../fb_lpc922_old.c:307: fb_state=10;
	mov	_fb_state,#0x0A
;	../fb_lpc922_old.c:308: break;
;	../fb_lpc922_old.c:310: case 80:	// Telegramm nochmal als Wiederholung senden
	sjmp	00220$
00215$:
;	../fb_lpc922_old.c:311: if (repeat_count<3) {		// falls noch nicht 3 mal wiederholt
	mov	a,#0x100 - 0x03
	add	a,_repeat_count
	jc	00217$
;	../fb_lpc922_old.c:312: telegramm[0]&=0xDF;		// Wiederholungsbit löschen
	mov	a,#0xDF
	anl	a,_telegramm
	mov	_telegramm,a
;	../fb_lpc922_old.c:313: repeat_count++;			// Zähler erhöhen
	inc	_repeat_count
;	../fb_lpc922_old.c:314: init_tx();				// Senden initiieren
	lcall	_init_tx
	sjmp	00220$
00217$:
;	../fb_lpc922_old.c:317: init_rx();				// wenn schon 3 mal wiederholt statemachine zurücksetzen
	lcall	_init_rx
;	../fb_lpc922_old.c:318: wait_for_ack=0;			// jetzt braucht das ack auch nicht mehr kommen
	clr	_wait_for_ack
;	../fb_lpc922_old.c:320: break;
;	../fb_lpc922_old.c:322: default:
	sjmp	00220$
00219$:
;	../fb_lpc922_old.c:323: fb_state++;			// bei allen nicht angegebenen states nur state erhöhen
	inc	_fb_state
;	../fb_lpc922_old.c:324: }
00220$:
;	../fb_lpc922_old.c:325: tx_nextsend&=0x07;		// Nur 3 Bit verwenden
	anl	_tx_nextsend,#0x07
;	../fb_lpc922_old.c:326: interrupted=1;			// zeigt der app, dass sie unterbrochen wurde
	setb	_interrupted
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'init_rx'
;------------------------------------------------------------
;------------------------------------------------------------
;	../fb_lpc922_old.c:330: void init_rx(void)			// Empfangen initiieren (statemachine auf Anfang)
;	-----------------------------------------
;	 function init_rx
;	-----------------------------------------
_init_rx:
;	../fb_lpc922_old.c:332: fb_state=0;
	mov	_fb_state,#0x00
;	../fb_lpc922_old.c:333: IE1=0;
	clr	_TCON_3
;	../fb_lpc922_old.c:334: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:335: ET1=0;
	clr	_IEN0_3
;	../fb_lpc922_old.c:336: cs=0;
	mov	_cs,#0x00
;	../fb_lpc922_old.c:337: telpos=0;
	mov	_telpos,#0x00
;	../fb_lpc922_old.c:338: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:339: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
;	../fb_lpc922_old.c:340: TH1=128;							// Timer 1 auf 104/3 us laden
	mov	_TH1,#0x80
;	../fb_lpc922_old.c:341: TL1=128;
	mov	_TL1,#0x80
;	../fb_lpc922_old.c:342: timeout_count=158;					// 5,2ms = 50 Bit Pause
	mov	_timeout_count,#0x9E
;	../fb_lpc922_old.c:343: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_old.c:344: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_old.c:345: EX1=1;
	setb	_IEN0_2
;	../fb_lpc922_old.c:346: ET1=1;
	setb	_IEN0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_tx'
;------------------------------------------------------------
;n                         Allocated to registers r3 
;cs_pos                    Allocated to registers r2 
;------------------------------------------------------------
;	../fb_lpc922_old.c:350: void init_tx(void)		// Checksum des Telegramms berechnen und Senden initiieren
;	-----------------------------------------
;	 function init_tx
;	-----------------------------------------
_init_tx:
;	../fb_lpc922_old.c:354: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:355: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x20
	mov	_TMOD,a
;	../fb_lpc922_old.c:356: TH1=128;							// Timer 1 auf 104/3 us laden
	mov	_TH1,#0x80
;	../fb_lpc922_old.c:357: TL1=128;
	mov	_TL1,#0x80
;	../fb_lpc922_old.c:358: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_old.c:360: cs_pos=(telegramm[5]&0x0F)+7;		// Position der Checksum im Telegramm
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	mov	r2,a
	mov	a,#0x07
	add	a,r2
	mov	r2,a
;	../fb_lpc922_old.c:361: cs=0xFF;
	mov	_cs,#0xFF
;	../fb_lpc922_old.c:362: for(n=0;n<cs_pos;n++) {
	mov	r3,#0x00
00101$:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	00104$
;	../fb_lpc922_old.c:363: cs^=telegramm[n];				// Checksum berechnen
	mov	a,r3
	add	a,#_telegramm
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	xrl	_cs,a
;	../fb_lpc922_old.c:362: for(n=0;n<cs_pos;n++) {
	inc	r3
	sjmp	00101$
00104$:
;	../fb_lpc922_old.c:365: telegramm[cs_pos]=cs;				// Checksum hinter Nutzdaten anfügen
	mov	a,r2
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,_cs
;	../fb_lpc922_old.c:366: ack=0;
	clr	_ack
;	../fb_lpc922_old.c:367: nack=0;
	clr	_nack
;	../fb_lpc922_old.c:368: wait_for_ack=1;
	setb	_wait_for_ack
;	../fb_lpc922_old.c:370: fb_state=10;						// nächster state: senden
	mov	_fb_state,#0x0A
;	../fb_lpc922_old.c:371: fb_pattern=0;						// nächstes zu sendendes Bit, 0=Startbit
	mov	_fb_pattern,#0x00
;	../fb_lpc922_old.c:372: telpos=0;							// nächstes zu sendende Byte
	mov	_telpos,#0x00
;	../fb_lpc922_old.c:373: IE1=0;								// ext. int1 Flag zurücksetzen
	clr	_TCON_3
;	../fb_lpc922_old.c:374: EX1=0;								// ext. int1 inaktiv
	clr	_IEN0_2
;	../fb_lpc922_old.c:375: TR1=1;								// Timer 1 starten
	setb	_TCON_6
;	../fb_lpc922_old.c:377: ET1=1;								// Timer 1 int. aktiv
	setb	_IEN0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_repeat_tx'
;------------------------------------------------------------
;------------------------------------------------------------
;	../fb_lpc922_old.c:381: void init_repeat_tx(void)		// Wiederholungssenden initiieren
;	-----------------------------------------
;	 function init_repeat_tx
;	-----------------------------------------
_init_repeat_tx:
;	../fb_lpc922_old.c:383: fb_state=80;
	mov	_fb_state,#0x50
;	../fb_lpc922_old.c:384: IE1=0;
	clr	_TCON_3
;	../fb_lpc922_old.c:385: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:386: ET1=0;
	clr	_IEN0_3
;	../fb_lpc922_old.c:387: cs=0;
	mov	_cs,#0x00
;	../fb_lpc922_old.c:388: telpos=0;
	mov	_telpos,#0x00
;	../fb_lpc922_old.c:389: TR1=0;
	clr	_TCON_6
;	../fb_lpc922_old.c:390: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
	mov	a,#0x0F
	anl	a,_TMOD
	add	a,#0x10
	mov	_TMOD,a
;	../fb_lpc922_old.c:391: TH1=0xB5;					// Timer 1 auf Busfrei-Position setzen
	mov	_TH1,#0xB5
;	../fb_lpc922_old.c:392: TL1=0x1E;
	mov	_TL1,#0x1E
;	../fb_lpc922_old.c:393: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_old.c:394: TR1=1;
	setb	_TCON_6
;	../fb_lpc922_old.c:395: EX1=1;
	setb	_IEN0_2
;	../fb_lpc922_old.c:396: ET1=1;
	setb	_IEN0_3
;	../fb_lpc922_old.c:397: wait_for_ack=1;
	setb	_wait_for_ack
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gapos_in_gat'
;------------------------------------------------------------
;gal                       Allocated to stack - offset -3
;gah                       Allocated to registers r2 
;ga_position               Allocated to registers r3 
;n                         Allocated to registers 
;------------------------------------------------------------
;	../fb_lpc922_old.c:403: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function gapos_in_gat
;	-----------------------------------------
_gapos_in_gat:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	../fb_lpc922_old.c:407: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
	mov	r3,#0xFF
;	../fb_lpc922_old.c:408: if (eeprom[ADDRTAB]) {
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	jz	00105$
;	../fb_lpc922_old.c:409: for (n=1;n<=eeprom[ADDRTAB];n++) {
	mov	r4,#0x01
00106$:
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	subb	a,r4
	jc	00105$
;	../fb_lpc922_old.c:410: if (gah==eeprom[ADDRTAB+n*2+1] && gal==eeprom[ADDRTAB+n*2+2]) ga_position=n;	// Berechnung in [] nicht in lokale var !!!
	mov	a,r4
	add	a,r4
	mov	r5,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r2
	cjne	a,ar6,00108$
	mov	a,#0x18
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	a,@r0
	cjne	a,ar5,00108$
	mov	ar3,r4
00108$:
;	../fb_lpc922_old.c:409: for (n=1;n<=eeprom[ADDRTAB];n++) {
	inc	r4
	sjmp	00106$
00105$:
;	../fb_lpc922_old.c:413: return (ga_position);
	mov	dpl,r3
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'build_tel'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;build_ok                  Allocated to registers b0 
;objvalue                  Allocated to stack - offset 1
;ga                        Allocated to registers r4 r3 
;objtype                   Allocated to registers r3 
;n                         Allocated to registers r2 
;length                    Allocated to registers r3 
;type                      Allocated to registers b1 
;------------------------------------------------------------
;	../fb_lpc922_old.c:419: bit build_tel(unsigned char objno)
;	-----------------------------------------
;	 function build_tel
;	-----------------------------------------
_build_tel:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r2,dpl
;	../fb_lpc922_old.c:421: bit build_ok=0;
	clr	b0
;	../fb_lpc922_old.c:428: if(objno<128) {		// Multicast
	cjne	r2,#0x80,00158$
00158$:
	jc	00159$
	ljmp	00132$
00159$:
;	../fb_lpc922_old.c:429: if(objno&0x40) type=1; else type=0;
	mov	a,r2
	jnb	acc.6,00102$
	setb	b1
	sjmp	00103$
00102$:
	clr	b1
00103$:
;	../fb_lpc922_old.c:430: objno&=0x1F;
	anl	ar2,#0x1F
;	../fb_lpc922_old.c:432: objvalue=read_obj_value(objno);		// Objektwert aus USER-RAM lesen (Standard Einstellung)
	mov	dpl,r2
	push	ar2
	push	bits
	lcall	_read_obj_value
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	bits
	pop	ar2
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	../fb_lpc922_old.c:434: ga=find_ga(objno);					// wenn keine Gruppenadresse hintrlegt nix tun
	mov	dpl,r2
	push	ar2
	push	bits
	lcall	_find_ga
	mov	r7,dpl
	mov	r3,dph
	pop	bits
	pop	ar2
	mov	ar4,r7
;	../fb_lpc922_old.c:436: if (ga!=0)
	mov	a,r4
	orl	a,r3
	jnz	00161$
	ljmp	00133$
00161$:
;	../fb_lpc922_old.c:438: telegramm[0]=0xBC;
	mov	_telegramm,#0xBC
;	../fb_lpc922_old.c:439: telegramm[1]=eeprom[ADDRTAB+1];
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0001),r5
;	../fb_lpc922_old.c:440: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0002),r5
;	../fb_lpc922_old.c:441: telegramm[3]=ga>>8;
	mov	ar5,r3
	mov	(_telegramm + 0x0003),r5
;	../fb_lpc922_old.c:442: telegramm[4]=ga;
	mov	(_telegramm + 0x0004),r4
;	../fb_lpc922_old.c:443: telegramm[6]=0x00;
	mov	(_telegramm + 0x0006),#0x00
;	../fb_lpc922_old.c:444: if (type) telegramm[7]=0x40;		// read_value_response Telegramm (angefordert)
	jnb	b1,00105$
	mov	(_telegramm + 0x0007),#0x40
	sjmp	00106$
00105$:
;	../fb_lpc922_old.c:445: else telegramm[7]=0x80;				// write_value_request Telegramm (nicht angefordert)
	mov	(_telegramm + 0x0007),#0x80
00106$:
;	../fb_lpc922_old.c:447: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,r3
	add	a,#0x04+_eeprom
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
;	../fb_lpc922_old.c:449: if(objtype>6) length=objtype-5; else length=1;
	mov  r3,a
	add	a,#0xff - 0x06
	jnc	00108$
	mov	a,r3
	add	a,#0xfb
	mov	r3,a
	sjmp	00109$
00108$:
	mov	r3,#0x01
00109$:
;	../fb_lpc922_old.c:450: telegramm[5]=0xE0+length;
	mov	a,#0xE0
	add	a,r3
	mov	(_telegramm + 0x0005),a
;	../fb_lpc922_old.c:451: if (length>1) telegramm[length+6]=objvalue; else telegramm[7]+=objvalue;
	mov	a,r3
	add	a,#0xff - 0x01
	jnc	00111$
	mov	a,#0x06
	add	a,r3
	add	a,#_telegramm
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	ar4,@r1
	mov	@r0,ar4
	sjmp	00112$
00111$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	mov	r4,a
	add	a,(_telegramm + 0x0007)
	mov	(_telegramm + 0x0007),a
00112$:
;	../fb_lpc922_old.c:452: if (length>2) telegramm[length+5]=objvalue>>8;
	mov	a,r3
	add	a,#0xff - 0x02
	jnc	00114$
	mov	a,#0x05
	add	a,r3
	add	a,#_telegramm
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	ar4,@r1
	mov	@r0,ar4
00114$:
;	../fb_lpc922_old.c:453: if (length>3) telegramm[length+4]=objvalue>>16;
	mov	a,r3
	add	a,#0xff - 0x03
	jnc	00116$
	mov	a,#0x04
	add	a,r3
	add	a,#_telegramm
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	inc	r1
	mov	ar4,@r1
	mov	@r0,ar4
00116$:
;	../fb_lpc922_old.c:454: if (length>4) telegramm[length+3]=objvalue>>24;
	mov	a,r3
	add	a,#0xff - 0x04
	jnc	00118$
	mov	a,#0x03
	add	a,r3
	add	a,#_telegramm
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	inc	r1
	inc	r1
	mov	ar3,@r1
	mov	@r0,ar3
00118$:
;	../fb_lpc922_old.c:456: build_ok=1;
	setb	b0
	ljmp	00133$
00132$:
;	../fb_lpc922_old.c:460: telegramm[0]=0xB0;				// Control Byte
	mov	_telegramm,#0xB0
;	../fb_lpc922_old.c:461: telegramm[1]=eeprom[ADDRTAB+1];	// Quelladresse ist phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	(_telegramm + 0x0001),r3
;	../fb_lpc922_old.c:462: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	(_telegramm + 0x0002),r3
;	../fb_lpc922_old.c:463: telegramm[3]=conh;
	mov	(_telegramm + 0x0003),_conh
;	../fb_lpc922_old.c:464: telegramm[4]=conl;
	mov	(_telegramm + 0x0004),_conl
;	../fb_lpc922_old.c:466: switch(objno&0x1F) {
	anl	ar2,#0x1F
	cjne	r2,#0x01,00168$
	sjmp	00121$
00168$:
	cjne	r2,#0x02,00169$
	sjmp	00122$
00169$:
	cjne	r2,#0x03,00170$
	sjmp	00123$
00170$:
	cjne	r2,#0x04,00171$
	sjmp	00156$
00171$:
	ljmp	00130$
;	../fb_lpc922_old.c:467: case 1:	// NCD ACK Quittierung
00121$:
;	../fb_lpc922_old.c:468: telegramm[5]=0x60;				// DRL
	mov	(_telegramm + 0x0005),#0x60
;	../fb_lpc922_old.c:469: telegramm[6]=(telegramm[6]&0x3C) + 0xC2;		// Bit 6,7(TCPI = 11 NCD Quittierung) und Bit 0,1 (10=ACK)
	mov	a,#0x3C
	anl	a,(_telegramm + 0x0006)
	add	a,#0xC2
	mov	(_telegramm + 0x0006),a
;	../fb_lpc922_old.c:470: break;
	ljmp	00130$
;	../fb_lpc922_old.c:471: case 2:	// read mask response
00122$:
;	../fb_lpc922_old.c:472: telegramm[5]=0x63;			// DRL
	mov	(_telegramm + 0x0005),#0x63
;	../fb_lpc922_old.c:473: telegramm[6]=pcount + 0x43;
	mov	a,#0x43
	add	a,_pcount
	mov	(_telegramm + 0x0006),a
;	../fb_lpc922_old.c:474: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
;	../fb_lpc922_old.c:475: telegramm[8]=0x00;
	mov	(_telegramm + 0x0008),#0x00
;	../fb_lpc922_old.c:476: telegramm[9]=0x12;			// Maskenversion 1 = BCU1
	mov	(_telegramm + 0x0009),#0x12
;	../fb_lpc922_old.c:477: pcount+=4;
	mov	a,_pcount
	add	a,#0x04
	mov	_pcount,a
;	../fb_lpc922_old.c:478: pcount&=0x3C;
	anl	_pcount,#0x3C
;	../fb_lpc922_old.c:479: break;
	ljmp	00130$
;	../fb_lpc922_old.c:480: case 3:	// read PA response
00123$:
;	../fb_lpc922_old.c:481: telegramm[3]=0x00;			// Zieladresse auf 0000, da Broadcast
	mov	(_telegramm + 0x0003),#0x00
;	../fb_lpc922_old.c:482: telegramm[4]=0x00;
	mov	(_telegramm + 0x0004),#0x00
;	../fb_lpc922_old.c:483: telegramm[5]=0xE1;			// DRL
	mov	(_telegramm + 0x0005),#0xE1
;	../fb_lpc922_old.c:484: telegramm[6]=0x01;
	mov	(_telegramm + 0x0006),#0x01
;	../fb_lpc922_old.c:485: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
;	../fb_lpc922_old.c:486: break;
;	../fb_lpc922_old.c:488: for(n=0;n<mem_length;n++) {
	sjmp	00130$
00156$:
	mov	r2,#0x00
00134$:
	clr	c
	mov	a,r2
	subb	a,_mem_length
	jnc	00137$
;	../fb_lpc922_old.c:489: if (telegramm[8]==0) {
	mov	a,(_telegramm + 0x0008)
	jnz	00128$
;	../fb_lpc922_old.c:490: telegramm[n+10]=userram[telegramm[9]+n];
	mov	a,#0x0A
	add	a,r2
	add	a,#_telegramm
	mov	r0,a
	mov	r3,(_telegramm + 0x0009)
	mov	a,r2
	add	a,r3
	mov	dptr,#_userram
	movc	a,@a+dptr
	mov	@r0,a
;	../fb_lpc922_old.c:491: if(telegramm[9]+n==0x60) telegramm[n+10]=status60;	// ausser bei 0x60
	mov	r4,#0x00
	mov	ar5,r2
	mov	r6,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	cjne	r3,#0x60,00136$
	cjne	r4,#0x00,00136$
	mov	a,#0x0A
	add	a,r2
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,_status60
	sjmp	00136$
00128$:
;	../fb_lpc922_old.c:493: else telegramm[n+10]=eeprom[telegramm[9]+n];
	mov	a,#0x0A
	add	a,r2
	add	a,#_telegramm
	mov	r0,a
	mov	a,r2
	add	a,(_telegramm + 0x0009)
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	mov	@r0,a
00136$:
;	../fb_lpc922_old.c:488: for(n=0;n<mem_length;n++) {
	inc	r2
	sjmp	00134$
00137$:
;	../fb_lpc922_old.c:495: telegramm[5]=mem_length+0x63;		// DRL (Anzahl Bytes + 3)
	mov	a,#0x63
	add	a,_mem_length
	mov	(_telegramm + 0x0005),a
;	../fb_lpc922_old.c:496: telegramm[6]=pcount|0x42;			// Paketzaehler, TCPI und ersten beiden Befehlsbits
	mov	a,#0x42
	orl	a,_pcount
	mov	(_telegramm + 0x0006),a
;	../fb_lpc922_old.c:497: telegramm[7]=mem_length|0x40;		// letzten 2 Befehlsbits
	mov	a,#0x40
	orl	a,_mem_length
	mov	(_telegramm + 0x0007),a
;	../fb_lpc922_old.c:498: pcount+=4;
	mov	a,_pcount
	add	a,#0x04
	mov	_pcount,a
;	../fb_lpc922_old.c:499: pcount&=0x3C;
	anl	_pcount,#0x3C
;	../fb_lpc922_old.c:501: }
00130$:
;	../fb_lpc922_old.c:502: build_ok=1;
	setb	b0
00133$:
;	../fb_lpc922_old.c:504: return(build_ok);
	mov	c,b0
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;------------------------------------------------------------
;	../fb_lpc922_old.c:508: void send_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function send_obj_value
;	-----------------------------------------
_send_obj_value:
	mov	r2,dpl
;	../fb_lpc922_old.c:510: tx_buffer[tx_nextwrite]=objno;
	mov	a,_tx_nextwrite
	add	a,#_tx_buffer
	mov	r0,a
	mov	@r0,ar2
;	../fb_lpc922_old.c:511: tx_nextwrite++;
	inc	_tx_nextwrite
;	../fb_lpc922_old.c:512: tx_nextwrite&=0x07;
	anl	_tx_nextwrite,#0x07
;	../fb_lpc922_old.c:513: TR1=1;	// statemachine starten falls vorher in state 0 gestoppt
	setb	_TCON_6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_tel'
;------------------------------------------------------------
;tpdu                      Allocated to registers r2 
;------------------------------------------------------------
;	../fb_lpc922_old.c:519: void process_tel(void)
;	-----------------------------------------
;	 function process_tel
;	-----------------------------------------
_process_tel:
;	../fb_lpc922_old.c:523: tel_arrived=0;
	clr	_tel_arrived
;	../fb_lpc922_old.c:524: tpdu=telegramm[6]&0xC3;
	mov	a,#0xC3
	anl	a,(_telegramm + 0x0006)
	mov	r2,a
;	../fb_lpc922_old.c:528: if(telegramm[3]==0 && telegramm[4]==0) {
	mov	a,(_telegramm + 0x0003)
	mov	r3,a
	jnz	00144$
	mov	a,(_telegramm + 0x0004)
	jnz	00144$
;	../fb_lpc922_old.c:529: if(status60 & 0x01) {		// prog mode
	mov	a,_status60
	jb	acc.0,00177$
	ljmp	00145$
00177$:
;	../fb_lpc922_old.c:530: if(tpdu==0x00 && telegramm[7]==0xC0) set_pa();				// set_pa_req
	mov	a,r2
	jnz	00102$
	mov	a,#0xC0
	cjne	a,(_telegramm + 0x0007),00102$
	push	ar2
	lcall	_set_pa
	pop	ar2
00102$:
;	../fb_lpc922_old.c:531: if(tpdu==0x01 && telegramm[7]==0x00) send_obj_value(131);	// read_pa_req
	cjne	r2,#0x01,00181$
	sjmp	00182$
00181$:
	ljmp	00145$
00182$:
	mov	a,(_telegramm + 0x0007)
	jz	00183$
	ljmp	00145$
00183$:
	mov	dpl,#0x83
	lcall	_send_obj_value
	ljmp	00145$
00144$:
;	../fb_lpc922_old.c:536: if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag = Bit 7, 0=phys. Adr., 1=Gruppenadr.
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00184$
	ljmp	00141$
00184$:
;	../fb_lpc922_old.c:537: if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) {	// nur wenn es die eigene phys. Adr. ist
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r3
	cjne	a,ar4,00185$
	sjmp	00186$
00185$:
	ljmp	00145$
00186$:
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	cjne	a,(_telegramm + 0x0004),00187$
	sjmp	00188$
00187$:
	ljmp	00145$
00188$:
;	../fb_lpc922_old.c:540: switch (tpdu) {	// transport layer control field
	cjne	r2,#0x42,00189$
	sjmp	00109$
00189$:
	cjne	r2,#0x43,00190$
	sjmp	00114$
00190$:
	cjne	r2,#0x80,00191$
	sjmp	00122$
00191$:
	cjne	r2,#0x81,00192$
	sjmp	00125$
00192$:
	ljmp	00145$
;	../fb_lpc922_old.c:542: case 0x42:	// Data PDU - memory operations
00109$:
;	../fb_lpc922_old.c:543: if((telegramm[7]&0xC0)==0x80) {	// write_memory_request
	mov	a,#0xC0
	anl	a,(_telegramm + 0x0007)
	mov	r3,a
	cjne	r3,#0x80,00111$
;	../fb_lpc922_old.c:544: send_obj_value(129);		// ncd ack
	mov	dpl,#0x81
	lcall	_send_obj_value
;	../fb_lpc922_old.c:545: write_memory();
	lcall	_write_memory
00111$:
;	../fb_lpc922_old.c:547: if((telegramm[7]&0xC0)==0x00) {					// read_memory_request
	mov	a,(_telegramm + 0x0007)
	mov	r3,a
	anl	a,#0xC0
	jz	00196$
	ljmp	00145$
00196$:
;	../fb_lpc922_old.c:548: mem_length=telegramm[7];					// Anzahl Bytes
	mov	_mem_length,r3
;	../fb_lpc922_old.c:549: send_obj_value(129);						// ncd ack
	mov	dpl,#0x81
	lcall	_send_obj_value
;	../fb_lpc922_old.c:550: send_obj_value(132);
	mov	dpl,#0x84
	lcall	_send_obj_value
;	../fb_lpc922_old.c:552: break;
;	../fb_lpc922_old.c:554: case 0x43:	// Data PDU - misc.
	sjmp	00145$
00114$:
;	../fb_lpc922_old.c:555: if(telegramm[7]==0x80) {		// restart request
	mov	a,#0x80
	cjne	a,(_telegramm + 0x0007),00119$
;	../fb_lpc922_old.c:556: while(fb_state!=0);			// warten bis Senden abgeschlossen
00115$:
	mov	a,_fb_state
	jnz	00115$
;	../fb_lpc922_old.c:557: restart_hw();				// Hardware zuruecksetzen
	lcall	_restart_hw
;	../fb_lpc922_old.c:558: restart_app();				// Anwendungsspezifische Einstellungen zuruecksetzen
	lcall	_restart_app
00119$:
;	../fb_lpc922_old.c:560: if(telegramm[7]==0x00) {		// read_mask_version_request
	mov	a,(_telegramm + 0x0007)
	jnz	00145$
;	../fb_lpc922_old.c:561: send_obj_value(129);		// NCD Quittierung senden (ACK)
	mov	dpl,#0x81
	lcall	_send_obj_value
;	../fb_lpc922_old.c:562: send_obj_value(130);		// Maskenversion response
	mov	dpl,#0x82
	lcall	_send_obj_value
;	../fb_lpc922_old.c:564: break;
;	../fb_lpc922_old.c:566: case 0x80:	// UCD Verbindungsaufbau
	sjmp	00145$
00122$:
;	../fb_lpc922_old.c:567: if(!connected) {				// wenn bereits verbunden: ignorieren
	jb	_connected,00145$
;	../fb_lpc922_old.c:568: connected=1;
	setb	_connected
;	../fb_lpc922_old.c:569: conh=telegramm[1];			// phys. Adresse des Verbindungspartners
	mov	_conh,(_telegramm + 0x0001)
;	../fb_lpc922_old.c:570: conl=telegramm[2];
	mov	_conl,(_telegramm + 0x0002)
;	../fb_lpc922_old.c:571: pcount=0;					// Paketzaehler zuruecksetzen
	mov	_pcount,#0x00
;	../fb_lpc922_old.c:573: break;
;	../fb_lpc922_old.c:575: case 0x81:	// UCD Verbindungsabbau
	sjmp	00145$
00125$:
;	../fb_lpc922_old.c:576: if(conh==telegramm[1] && conl==telegramm[2] && connected)	{	// nur abbauen, wenn verbunden und Anforderung vom Verbindungspartner, kein ACK senden
	mov	a,(_telegramm + 0x0001)
	cjne	a,_conh,00145$
	mov	a,(_telegramm + 0x0002)
	cjne	a,_conl,00145$
;	../fb_lpc922_old.c:577: connected=0;
	jbc	_connected,00206$
	sjmp	00145$
00206$:
;	../fb_lpc922_old.c:578: pcount=0;					// Paketzaehler zuruecksetzen
	mov	_pcount,#0x00
;	../fb_lpc922_old.c:581: }
	sjmp	00145$
00141$:
;	../fb_lpc922_old.c:588: if(tpdu==0x00){
	mov	a,r2
	jnz	00145$
;	../fb_lpc922_old.c:589: if((telegramm[7]&0xC0)==0x80) write_value_req();	// Objektwerte schreiben (zB. EISx)
	mov	a,#0xC0
	anl	a,(_telegramm + 0x0007)
	mov	r2,a
	cjne	r2,#0x80,00135$
	lcall	_write_value_req
00135$:
;	../fb_lpc922_old.c:590: if(telegramm[7]==0x00) read_value_req();			// Objektwert lesen und als read_value_response auf Bus senden
	mov	a,(_telegramm + 0x0007)
	jnz	00145$
	lcall	_read_value_req
00145$:
;	../fb_lpc922_old.c:594: telpos=0;
	mov	_telpos,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_memory'
;------------------------------------------------------------
;ab                        Allocated to stack - offset 1
;n                         Allocated to stack - offset 2
;sloc0                     Allocated to stack - offset 3
;------------------------------------------------------------
;	../fb_lpc922_old.c:602: void write_memory(void)
;	-----------------------------------------
;	 function write_memory
;	-----------------------------------------
_write_memory:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	../fb_lpc922_old.c:606: ab=telegramm[7]&0x0F;		// Anzahl Bytes
	mov	r0,_bp
	inc	r0
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0007)
	mov	@r0,a
;	../fb_lpc922_old.c:616: while(fb_state!=0);					// warten falls noch gesendet wird
00101$:
	mov	a,_fb_state
	jnz	00101$
;	../fb_lpc922_old.c:618: EA=0;
	clr	_IEN0_7
;	../fb_lpc922_old.c:619: FMCON=0x00;					// load command, leert das pageregister
	mov	_FMCON,#0x00
;	../fb_lpc922_old.c:620: for(n=0;n<ab;n++) {
	mov	r3,(_telegramm + 0x0009)
	mov	r4,(_telegramm + 0x0008)
	mov	a,#0x01
	anl	a,r4
	add	a,#0x1C
	mov	r5,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
00111$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	r1,_bp
	inc	r1
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00127$
	ljmp	00114$
00127$:
;	../fb_lpc922_old.c:621: if(telegramm[8]==0 && (telegramm[9]+n)==0x60) status60=telegramm[10+n];
	mov	a,r4
	jnz	00105$
	push	ar5
	mov	ar7,r3
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	mov	r6,#0x00
	mov	a,r2
	add	a,r7
	mov	r7,a
	mov	a,r6
	addc	a,r5
	mov	r5,a
	clr	a
	cjne	r7,#0x60,00129$
	cjne	r5,#0x00,00129$
	inc	a
00129$:
	pop	ar5
	jz	00105$
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x0A
	add	a,@r0
	add	a,#_telegramm
	mov	r0,a
	mov	_status60,@r0
	sjmp	00106$
00105$:
;	../fb_lpc922_old.c:622: else WRITE_BYTE(telegramm[8],telegramm[9]+n,telegramm[n+10]);
	mov	_FMADRH,r5
00106$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,r3
	mov	_FMADRL,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x0A
	add	a,@r0
	add	a,#_telegramm
	mov	r0,a
	mov	_FMDATA,@r0
;	../fb_lpc922_old.c:624: if ((((telegramm[9]+n)&0x3F)==0x3F) && n!=(ab-1)) {		// Ende des 64-Byte Pageregisters, also zwischendurch flashen
	mov	ar2,r3
	mov	r6,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	r1,_bp
	inc	r1
	inc	r1
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	anl	ar2,#0x3F
	mov	r6,#0x00
	cjne	r2,#0x3F,00113$
	cjne	r6,#0x00,00113$
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	r6,#0x00
	dec	r2
	cjne	r2,#0xff,00134$
	dec	r6
00134$:
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00135$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00135$
	sjmp	00113$
00135$:
;	../fb_lpc922_old.c:625: STOP_WRITECYCLE;			// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	../fb_lpc922_old.c:626: START_WRITECYCLE;		// load command, leert das pageregister
	mov	_FMCON,#0x00
00113$:
;	../fb_lpc922_old.c:620: for(n=0;n<ab;n++) {
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	ljmp	00111$
00114$:
;	../fb_lpc922_old.c:629: FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	../fb_lpc922_old.c:630: EA=1;
	setb	_IEN0_7
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_pa'
;------------------------------------------------------------
;------------------------------------------------------------
;	../fb_lpc922_old.c:636: void set_pa(void)
;	-----------------------------------------
;	 function set_pa
;	-----------------------------------------
_set_pa:
;	../fb_lpc922_old.c:638: while(fb_state!=0);		// warten falls noch gesendet wird
00101$:
	mov	a,_fb_state
	jnz	00101$
;	../fb_lpc922_old.c:639: EA=0;
	clr	_IEN0_7
;	../fb_lpc922_old.c:640: FMCON=0x00;				// load command, leert das pageregister
	mov	_FMCON,#0x00
;	../fb_lpc922_old.c:641: FMADRH=0x1D;
	mov	_FMADRH,#0x1D
;	../fb_lpc922_old.c:642: FMADRL=ADDRTAB+1;
	mov	_FMADRL,#0x17
;	../fb_lpc922_old.c:643: FMDATA=telegramm[8];
	mov	_FMDATA,(_telegramm + 0x0008)
;	../fb_lpc922_old.c:644: FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
	mov	_FMDATA,(_telegramm + 0x0009)
;	../fb_lpc922_old.c:645: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	../fb_lpc922_old.c:646: EA=1;
	setb	_IEN0_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_objflags'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;------------------------------------------------------------
;	../fb_lpc922_old.c:652: unsigned char read_objflags(unsigned char objno)
;	-----------------------------------------
;	 function read_objflags
;	-----------------------------------------
_read_objflags:
	mov	r2,dpl
;	../fb_lpc922_old.c:654: return(eeprom[eeprom[COMMSTABPTR]+3+3*objno]);
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	r3
	inc	r3
	inc	r3
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,r3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_first_objno'
;------------------------------------------------------------
;gal                       Allocated to stack - offset -3
;gah                       Allocated to registers r2 
;gapos                     Allocated to registers r2 
;gaposh                    Allocated to registers r7 
;atp                       Allocated to registers r4 
;assmax                    Allocated to registers r5 
;n                         Allocated to registers r6 
;objno                     Allocated to registers r3 
;asspos                    Allocated to registers r4 
;------------------------------------------------------------
;	../fb_lpc922_old.c:659: unsigned char find_first_objno(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function find_first_objno
;	-----------------------------------------
_find_first_objno:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	../fb_lpc922_old.c:663: objno=0xFF;
	mov	r3,#0xFF
;	../fb_lpc922_old.c:664: gapos=gapos_in_gat(gah,gal);
	push	ar3
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	lcall	_gapos_in_gat
	mov	r2,dpl
	dec	sp
	pop	ar3
;	../fb_lpc922_old.c:666: atp=eeprom[ASSOCTABPTR];
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
;	../fb_lpc922_old.c:667: assmax=eeprom[atp];
	mov	r4,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	../fb_lpc922_old.c:668: if (gapos!=0xFF) {	// falls Gruppenadresse nicht vorhanden
	cjne	r2,#0xFF,00115$
	sjmp	00107$
00115$:
;	../fb_lpc922_old.c:669: n=0;
	mov	r6,#0x00
;	../fb_lpc922_old.c:670: asspos=atp+1;
	inc	r4
;	../fb_lpc922_old.c:671: while(n<assmax) { 	// Schleife ueber Assoziationstabelle
00103$:
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00107$
;	../fb_lpc922_old.c:672: gaposh=eeprom[asspos];
	mov	dpl,r4
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	../fb_lpc922_old.c:673: if(gapos==gaposh) {
	mov	a,r2
	cjne	a,ar7,00102$
;	../fb_lpc922_old.c:674: objno=eeprom[asspos+1];
	mov	a,r4
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	r3,a
;	../fb_lpc922_old.c:675: n=assmax;
	mov	ar6,r5
00102$:
;	../fb_lpc922_old.c:677: n++;
	inc	r6
;	../fb_lpc922_old.c:678: asspos+=2;
	inc	r4
	inc	r4
	sjmp	00103$
00107$:
;	../fb_lpc922_old.c:681: return (objno);
	mov	dpl,r3
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_ga'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;asstab                    Allocated to registers r4 
;gapos                     Allocated to registers r3 
;asspos                    Allocated to registers r4 
;ga                        Allocated to registers r2 r4 
;------------------------------------------------------------
;	../fb_lpc922_old.c:686: unsigned int find_ga(unsigned char objno)
;	-----------------------------------------
;	 function find_ga
;	-----------------------------------------
_find_ga:
	mov	r2,dpl
;	../fb_lpc922_old.c:691: gapos=0xFE;
	mov	r3,#0xFE
;	../fb_lpc922_old.c:692: asstab=eeprom[ASSOCTABPTR];		// Adresse der Assoziationstabelle
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
;	../fb_lpc922_old.c:693: asspos=asstab+1+2*objno;
	inc	r4
	mov	a,r2
	add	a,r2
	add	a,r4
;	../fb_lpc922_old.c:695: if(eeprom[asspos+1]==objno) gapos=eeprom[asspos];
	mov	r4,a
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,ar2,00102$
	mov	dpl,r4
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	r3,a
00102$:
;	../fb_lpc922_old.c:697: if(gapos!=0xFE) {
	cjne	r3,#0xFE,00112$
	sjmp	00104$
00112$:
;	../fb_lpc922_old.c:699: ga=eeprom[ADDRTAB+1+gapos*2]*256;
	mov	a,r3
	add	a,r3
	mov	r3,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	r2,#0x00
;	../fb_lpc922_old.c:700: ga+=eeprom[ADDRTAB+2+gapos*2];
	mov	a,#0x18
	add	a,r3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	mov	r5,#0x00
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	sjmp	00105$
00104$:
;	../fb_lpc922_old.c:702: else ga=0;
	mov	r2,#0x00
	mov	r4,#0x00
00105$:
;	../fb_lpc922_old.c:704: return(ga);
	mov	dpl,r2
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_hw'
;------------------------------------------------------------
;------------------------------------------------------------
;	../fb_lpc922_old.c:710: void restart_hw(void)
;	-----------------------------------------
;	 function restart_hw
;	-----------------------------------------
_restart_hw:
;	../fb_lpc922_old.c:712: DIVM=0;			// Taktferquenz nicht teilen -> volles Tempo
	mov	_DIVM,#0x00
;	../fb_lpc922_old.c:714: P1M1=0x14;		// Port 1 auf quasi-bidirektional,
	mov	_P1M1,#0x14
;	../fb_lpc922_old.c:715: P1M2=0x4C;		// ausser P1.2(T0 als PWM Ausgang)=open-drain,
	mov	_P1M2,#0x4C
;	../fb_lpc922_old.c:719: FBOUTC=0;		// Bus-Ausgang auf low
	clr	_P1_6
;	../fb_lpc922_old.c:721: TMOD=0x21;		// Timer 0 als 16-Bit Timer, Timer 1 als 8 Bit autoreload
	mov	_TMOD,#0x21
;	../fb_lpc922_old.c:722: TAMOD=0x00;
	mov	_TAMOD,#0x00
;	../fb_lpc922_old.c:723: TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen 
	clr	_TCON_4
;	../fb_lpc922_old.c:724: TR1=0;			// Timer 1 (Empfangs-Timer, nicht in app verwenden!) zunaechst stoppen
	clr	_TCON_6
;	../fb_lpc922_old.c:725: TH1=128;		// Timer 1 auf 104us/3
	mov	_TH1,#0x80
;	../fb_lpc922_old.c:726: TL1=128;
	mov	_TL1,#0x80
;	../fb_lpc922_old.c:727: TF1=0;
	clr	_TCON_7
;	../fb_lpc922_old.c:729: RTCH=0x0E;		// Real Time Clock auf 65ms laden
	mov	_RTCH,#0x0E
;	../fb_lpc922_old.c:730: RTCL=0xA0;		// (RTC ist ein down-counter mit 128 bit prescaler und osc-clock)
	mov	_RTCL,#0xA0
;	../fb_lpc922_old.c:731: RTCCON=0x61;	// ... und starten
	mov	_RTCCON,#0x61
;	../fb_lpc922_old.c:733: interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
	clr	_interrupted
;	../fb_lpc922_old.c:734: IEN0=0x00;
	mov	_IEN0,#0x00
;	../fb_lpc922_old.c:735: IEN1=0x00;
	mov	_IEN1,#0x00
;	../fb_lpc922_old.c:737: ET1=0;			// Interrupt von Timer 1 sperren
	clr	_IEN0_3
;	../fb_lpc922_old.c:738: EX0=0;			// Externen Interrupt 0 sperren
	clr	_IEN0_0
;	../fb_lpc922_old.c:739: EX1=0;			// Externen Interrupt 1 sperren
	clr	_IEN0_2
;	../fb_lpc922_old.c:740: EA=1;			// Interrupts prinzipiell freigeben
	setb	_IEN0_7
;	../fb_lpc922_old.c:742: IP0=0x04;		// höchste Priorität fuer ext1
	mov	_IP0,#0x04
;	../fb_lpc922_old.c:743: IP0H=0x04;
	mov	_IP0H,#0x04
;	../fb_lpc922_old.c:744: IP1=0x00;
	mov	_IP1,#0x00
;	../fb_lpc922_old.c:745: IP1H=0x00;
	mov	_IP1H,#0x00
;	../fb_lpc922_old.c:746: IT1=1;			// Interrupt 1 flankengetriggert=1
	setb	_TCON_2
;	../fb_lpc922_old.c:748: status60=0x2E;	// Status-Byte (steht normal im userram an 0x60)
	mov	_status60,#0x2E
;	../fb_lpc922_old.c:750: ack=0;			// ack und nack flag zurücksetzen
	clr	_ack
;	../fb_lpc922_old.c:751: nack=0;
	clr	_nack
;	../fb_lpc922_old.c:752: send_ack=0;
	clr	_send_ack
;	../fb_lpc922_old.c:753: send_nack=0;
	clr	_send_nack
;	../fb_lpc922_old.c:754: tel_arrived=0;	// kein Telegramm empfangen
	clr	_tel_arrived
;	../fb_lpc922_old.c:755: auto_ack=1;		// empfangene Telegramme automatisch mit ack bestätigen
	setb	_auto_ack
;	../fb_lpc922_old.c:756: tx_nextwrite=0;	// Zeiger auf nächste zu schreibende Objektnr. in tx_buffer
	mov	_tx_nextwrite,#0x00
;	../fb_lpc922_old.c:757: tx_nextsend=0;	// Zeiger auf nächste zu sendende Objektnr. in tx_buffer
	mov	_tx_nextsend,#0x00
;	../fb_lpc922_old.c:758: pcount=0;		// Paketzaehler initialisieren
	mov	_pcount,#0x00
;	../fb_lpc922_old.c:759: connected=0;	// keine Verbindung
	clr	_connected
;	../fb_lpc922_old.c:760: transparency=0;	// fremde Gruppentelegramme werden ignoriert
	clr	_transparency
;	../fb_lpc922_old.c:761: init_rx();		// Empfang initialisieren
	ljmp	_init_rx
	.area CSEG    (CODE)
	.area CONST   (CODE)
_userram	=	0x1c00
_eeprom	=	0x1d00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
