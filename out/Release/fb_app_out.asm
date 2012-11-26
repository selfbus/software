;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Tue Nov 20 22:54:16 2012
;--------------------------------------------------------
	.module fb_app_out
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _find_first_objno
	.globl _read_objflags
	.globl _send_obj_value
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
	.globl _portchanged
	.globl _delay_toggle
	.globl _rm_send
	.globl _logicstate
	.globl _blocked
	.globl _oldportbuffer
	.globl _portbuffer
	.globl _zf_state
	.globl _rm_state
	.globl _out_state
	.globl _Tval
	.globl _timer
	.globl _timercnt
	.globl _timerbase
	.globl _write_value_req
	.globl _read_value_req
	.globl _read_obj_value
	.globl _write_obj_value
	.globl _object_schalten
	.globl _delay_timer
	.globl _port_schalten
	.globl _sort_output
	.globl _spi_2_out
	.globl _bus_return
	.globl _restart_app
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
_timerbase::
	.ds 8
_timercnt::
	.ds 8
_timer::
	.ds 2
_Tval::
	.ds 1
_out_state::
	.ds 1
_rm_state::
	.ds 1
_zf_state::
	.ds 1
_portbuffer::
	.ds 1
_oldportbuffer::
	.ds 1
_blocked::
	.ds 1
_logicstate::
	.ds 1
_rm_send::
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
_delay_toggle::
	.ds 1
_portchanged::
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
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r4 
;objflags                  Allocated to registers 
;assno                     Allocated to registers r6 
;n                         Allocated to stack - _bp +1
;gaposh                    Allocated to registers r4 
;zfout                     Allocated to stack - _bp +2
;zftyp                     Allocated to registers r7 
;gapos                     Allocated to stack - _bp +3
;blockstart                Allocated to stack - _bp +4
;blockend                  Allocated to stack - _bp +5
;block_polarity            Allocated to registers r7 
;obj_bitpattern            Allocated to registers r3 
;zf_bitpattern             Allocated to registers r2 
;sloc0                     Allocated to stack - _bp +14
;sloc1                     Allocated to stack - _bp +16
;------------------------------------------------------------
;	../fb_app_out.c:75: void write_value_req(void) 				// Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
;	../fb_app_out.c:83: gapos=gapos_in_gat(telegramm[3],telegramm[4]);	// Position der Gruppenadresse in der Adresstabelle
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar7
;	../fb_app_out.c:84: if (gapos!=0xFF)					// =0xFF falls nicht vorhanden
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	cjne	@r0,#0xFF,00178$
	ljmp	00149$
00178$:
;	../fb_app_out.c:87: assno=eeprom[eeprom[ASSOCTABPTR]];				// Erster Eintrag = Anzahl Einträge
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
;	../fb_app_out.c:89: for(n=0;n<assno;n++)				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
00145$:
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r6
	jc	00179$
	ljmp	00148$
00179$:
;	../fb_app_out.c:91: gaposh=eeprom[eeprom[ASSOCTABPTR]+1+(n*2)];
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	r4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	mov	r3,a
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
;	../fb_app_out.c:92: if(gapos==gaposh)					// Wenn Positionsnummer übereinstimmt
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00180$
	sjmp	00181$
00180$:
	ljmp	00147$
00181$:
;	../fb_app_out.c:94: objno=eeprom[eeprom[ASSOCTABPTR]+2+(n*2)];				// Objektnummer
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
	add	a,#0x02
	add	a,r3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
;	../fb_app_out.c:95: objflags=read_objflags(objno);			// Objekt Flags lesen
	mov	r4,a
	mov	dpl,a
	push	ar6
	push	ar4
	lcall	_read_objflags
	pop	ar4
	pop	ar6
;	../fb_app_out.c:97: obj_bitpattern=0x01<<(objno-8);
	mov	a,r4
	add	a,#0xF8
	mov	r3,a
	mov	b,r3
	inc	b
	mov	a,#0x01
	sjmp	00184$
00182$:
	add	a,acc
00184$:
	djnz	b,00182$
	mov	r3,a
;	../fb_app_out.c:99: if (objno<8) object_schalten(objno,telegramm[7]&0x01);	// Objektnummer 0-7 entspricht den Ausgängen 1-8
	cjne	r4,#0x08,00185$
00185$:
	jnc	00102$
	mov	a,(_telegramm + 0x0007)
	anl	a,#0x01
	add	a,#0xff
	mov  b0,c
	mov	b[0],c
	push	ar6
	push	ar4
	push	ar3
	mov	bits,b
	mov	dpl,r4
	lcall	_object_schalten
	pop	ar3
	pop	ar4
	pop	ar6
00102$:
;	../fb_app_out.c:101: if (objno>7 && objno<12)	// Objektnummer 8-11 entspricht den Zusatzfunktionen 1-4
	mov	a,r4
	add	a,#0xff - 0x07
	jc	00187$
	ljmp	00147$
00187$:
	cjne	r4,#0x0C,00188$
00188$:
	jc	00189$
	ljmp	00147$
00189$:
;	../fb_app_out.c:103: write_obj_value(objno, telegramm[7]&0x01);
	push	ar3
	mov	a,#0x01
	anl	a,(_telegramm + 0x0007)
	mov	r2,a
	mov	r3,#0x00
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar3
	mov	dpl,r4
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar6
;	../fb_app_out.c:104: zfout=0;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
;	../fb_app_out.c:105: blockstart=0;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_out.c:106: blockend=0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_out.c:107: switch (objno-8)			// Zugeordneten Ausgang zu Zusatzfunktionsnr. in zfout speichern (1-8)
	mov	ar7,r4
	mov	r5,#0x00
	mov	a,r7
	add	a,#0xF8
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r2,a
	cjne	r4,#0x00,00190$
	cjne	r2,#0x00,00190$
	pop	ar3
	sjmp	00103$
00190$:
	pop	ar3
	cjne	r4,#0x01,00191$
	cjne	r2,#0x00,00191$
	sjmp	00104$
00191$:
	cjne	r4,#0x02,00192$
	cjne	r2,#0x00,00192$
	sjmp	00105$
00192$:
	cjne	r4,#0x03,00193$
	cjne	r2,#0x00,00193$
	ljmp	00106$
00193$:
	ljmp	00107$
;	../fb_app_out.c:109: case 0x00:		
00103$:
;	../fb_app_out.c:110: zfout=eeprom[FUNCASS]&0x0F;
	mov	dptr,#(_eeprom + 0x00d8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x0F
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:111: blockstart=eeprom[BLOCKACT]&0x03;		// Verhalten bei Beginn der Sperrung
	mov	dptr,#(_eeprom + 0x00ef)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:112: blockend=(eeprom[BLOCKACT]>>2)&0x03;	// Verhalten bei Ende der Sperrung
	mov	dptr,#(_eeprom + 0x00ef)
	clr	a
	movc	a,@a+dptr
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:113: break;
	ljmp	00107$
;	../fb_app_out.c:114: case 0x01:
00104$:
;	../fb_app_out.c:115: zfout=(eeprom[FUNCASS]&0xF0)>>4;
	mov	dptr,#(_eeprom + 0x00d8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	anl	ar4,#0xF0
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r4
	swap	a
	anl	a,#0x0F
	mov	@r0,a
;	../fb_app_out.c:116: blockstart=(eeprom[BLOCKACT]>>4)&0x03;	// Verhalten bei Beginn der Sperrung
	mov	dptr,#(_eeprom + 0x00ef)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0F
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:117: blockend=(eeprom[BLOCKACT]>>6)&0x03;	// Verhalten bei Ende der Sperrung
	mov	dptr,#(_eeprom + 0x00ef)
	clr	a
	movc	a,@a+dptr
	rl	a
	rl	a
	anl	a,#0x03
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:118: break;
;	../fb_app_out.c:119: case 0x02:
	sjmp	00107$
00105$:
;	../fb_app_out.c:120: zfout=eeprom[FUNCASS+1]&0x0F;
	mov	dptr,#(_eeprom + 0x00d9)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x0F
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:121: blockstart=eeprom[BLOCKACT+1]&0x03;		// Verhalten bei Beginn der Sperrung
	mov	dptr,#(_eeprom + 0x00f0)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:122: blockend=(eeprom[BLOCKACT+1]>>2)&0x03;	// Verhalten bei Ende der Sperrung
	mov	dptr,#(_eeprom + 0x00f0)
	clr	a
	movc	a,@a+dptr
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:123: break;
;	../fb_app_out.c:124: case 0x03:
	sjmp	00107$
00106$:
;	../fb_app_out.c:125: zfout=(eeprom[FUNCASS+1]&0xF0)>>4;
	mov	dptr,#(_eeprom + 0x00d9)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	anl	ar4,#0xF0
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r4
	swap	a
	anl	a,#0x0F
	mov	@r0,a
;	../fb_app_out.c:126: blockstart=(eeprom[BLOCKACT+1]>>4)&0x03;	// Verhalten bei Beginn der Sperrung
	mov	dptr,#(_eeprom + 0x00f0)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0F
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:127: blockend=(eeprom[BLOCKACT+1]>>6)&0x03;		// Verhalten bei Ende der Sperrung
	mov	dptr,#(_eeprom + 0x00f0)
	clr	a
	movc	a,@a+dptr
	rl	a
	rl	a
	anl	a,#0x03
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x03
	anl	a,r4
	mov	@r0,a
;	../fb_app_out.c:128: }
00107$:
;	../fb_app_out.c:129: zftyp=((eeprom[FUNCTYP])>>((objno-8)*2)) & 0x03;	// Typ der Zusatzfunktion
	push	ar3
	mov	dptr,#(_eeprom + 0x00ed)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r7
	add	a,#0xF8
	mov	r2,a
	mov	a,r5
	addc	a,#0xFF
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	b,r2
	inc	b
	mov	a,r4
	sjmp	00195$
00194$:
	clr	c
	rrc	a
00195$:
	djnz	b,00194$
	mov	r4,a
	mov	a,#0x03
	anl	a,r4
	mov	r7,a
;	../fb_app_out.c:130: zf_bitpattern=0x01<<(zfout-1);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	dec	a
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,#0x01
	sjmp	00198$
00196$:
	add	a,acc
00198$:
	djnz	b,00196$
	mov	r2,a
;	../fb_app_out.c:132: switch (zftyp)
	cjne	r7,#0x00,00199$
	pop	ar3
	sjmp	00108$
00199$:
	pop	ar3
	cjne	r7,#0x01,00200$
	sjmp	00112$
00200$:
	ljmp	00147$
;	../fb_app_out.c:134: case 0x00:			// Verknüpfung
00108$:
;	../fb_app_out.c:135: switch (telegramm[7])
	mov	r4,(_telegramm + 0x0007)
	cjne	r4,#0x80,00201$
	sjmp	00109$
00201$:
;	../fb_app_out.c:137: case 0x80:
	cjne	r4,#0x81,00111$
	sjmp	00110$
00109$:
;	../fb_app_out.c:138: logicstate=logicstate&(0xFF-zf_bitpattern);
	mov	a,#0xFF
	clr	c
	subb	a,r2
	anl	_logicstate,a
;	../fb_app_out.c:139: break;
;	../fb_app_out.c:140: case 0x81:
	sjmp	00111$
00110$:
;	../fb_app_out.c:141: logicstate=logicstate|zf_bitpattern;
	mov	a,r2
	orl	_logicstate,a
;	../fb_app_out.c:142: }
00111$:
;	../fb_app_out.c:143: object_schalten(zfout-1, read_obj_value(zfout-1));	//telegramm[7]&0x01);
	push	ar6
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	dec	a
	mov	r4,a
	mov	dpl,a
	push	ar4
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar4
	mov	a,r2
	orl	a,r5
	orl	a,r6
	orl	a,r7
	add	a,#0xff
	mov  b0,c
	mov	b[0],c
	push	ar6
	mov	bits,b
	mov	dpl,r4
	lcall	_object_schalten
	pop	ar6
;	../fb_app_out.c:144: break;
	pop	ar6
;	../fb_app_out.c:145: case 0x01:			// Sperren
	sjmp	00147$
00112$:
;	../fb_app_out.c:146: block_polarity=eeprom[BLOCKPOL] & obj_bitpattern;
	mov	dptr,#(_eeprom + 0x00f1)
	clr	a
	movc	a,@a+dptr
	anl	ar3,a
	mov	ar7,r3
;	../fb_app_out.c:147: if (((telegramm[7]==0x80) && (block_polarity==0)) ||
	mov	r5,(_telegramm + 0x0007)
	clr	a
	cjne	r5,#0x80,00203$
	inc	a
00203$:
	mov	r4,a
	jz	00123$
	mov	a,r7
	jz	00119$
00123$:
;	../fb_app_out.c:148: ((telegramm[7]==0x81) && (block_polarity!=0)))
	cjne	r5,#0x81,00120$
	mov	a,r7
	jz	00120$
00119$:
;	../fb_app_out.c:150: if((blocked & zf_bitpattern)!=0) {	// nur wenn Sperre aktiv war
	mov	a,r2
	anl	a,_blocked
	jz	00120$
;	../fb_app_out.c:151: blocked=blocked&(0xFF-zf_bitpattern);
	mov	a,#0xFF
	clr	c
	subb	a,r2
	anl	_blocked,a
;	../fb_app_out.c:152: if (blockend==0x01) portbuffer=portbuffer&(0xFF-zf_bitpattern);	// Bei Ende der Sperrung ausschalten
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	cjne	@r0,#0x01,00114$
	mov	a,#0xFF
	clr	c
	subb	a,r2
	anl	_portbuffer,a
00114$:
;	../fb_app_out.c:153: if (blockend==0x02) portbuffer=portbuffer|zf_bitpattern;		// Bei Ende der Sperrung einschalten
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	cjne	@r0,#0x02,00120$
	mov	a,r2
	orl	_portbuffer,a
00120$:
;	../fb_app_out.c:157: if (((telegramm[7]==0x81) && (block_polarity==0)) ||
	cjne	r5,#0x81,00134$
	mov	a,r7
	jz	00130$
00134$:
;	../fb_app_out.c:158: ((telegramm[7]==0x80) && (block_polarity!=0)))
	mov	a,r4
	jz	00147$
	mov	a,r7
	jz	00147$
00130$:
;	../fb_app_out.c:160: if((blocked & zf_bitpattern)==0) {	// nur wenn Sperre inaktiv war
	mov	a,r2
	anl	a,_blocked
	jnz	00147$
;	../fb_app_out.c:161: blocked=blocked|zf_bitpattern;
	mov	a,r2
	orl	_blocked,a
;	../fb_app_out.c:162: if (blockstart==0x01) portbuffer=portbuffer&(0xFF-zf_bitpattern);	// Bei Beginn der Sperrung ausschalten
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0x01,00125$
	mov	a,#0xFF
	clr	c
	subb	a,r2
	anl	_portbuffer,a
00125$:
;	../fb_app_out.c:163: if (blockstart==0x02) portbuffer=portbuffer|zf_bitpattern;		// Bei Beginn der Sperrung einschalten
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0x02,00127$
	mov	a,r2
	orl	_portbuffer,a
00127$:
;	../fb_app_out.c:164: timercnt[zfout-1]=0;//delrec[(zfout-1)*4]=0;	// ggf. Eintrag für Schaltverzögerung löschen
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	dec	a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_out.c:170: }
00147$:
;	../fb_app_out.c:89: for(n=0;n<assno;n++)				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	r0,_bp
	inc	r0
	inc	@r0
	ljmp	00145$
00148$:
;	../fb_app_out.c:174: if (portbuffer != oldportbuffer) portchanged=1;//post für port_schalten hinterlegen
	mov	a,_oldportbuffer
	cjne	a,_portbuffer,00225$
	sjmp	00149$
00225$:
	setb	_portchanged
00149$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;objflags                  Allocated to registers r6 
;objvalue                  Allocated to registers 
;------------------------------------------------------------
;	../fb_app_out.c:189: void read_value_req(void)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
;	../fb_app_out.c:194: objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_find_first_objno
	mov	r7,dpl
	dec	sp
;	../fb_app_out.c:195: if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
	cjne	r7,#0xFF,00109$
	ret
00109$:
;	../fb_app_out.c:197: objvalue=read_obj_value(objno);		// Objektwert aus USER-RAM lesen (Standard Einstellung)
	mov	dpl,r7
	push	ar7
	lcall	_read_obj_value
	pop	ar7
;	../fb_app_out.c:199: objflags=read_objflags(objno);		// Objekt Flags lesen
	mov	dpl,r7
	push	ar7
	lcall	_read_objflags
	mov	r6,dpl
	pop	ar7
;	../fb_app_out.c:201: if((objflags&0x0C)==0x0C) send_obj_value(objno+64); //send_value(0,objno,objvalue);
	anl	ar6,#0x0C
	cjne	r6,#0x0C,00105$
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	ljmp	_send_obj_value
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;ret_val                   Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_out.c:206: unsigned long read_obj_value(unsigned char objno) 	// gibt den Wert eines Objektes zurueck
;	-----------------------------------------
;	 function read_obj_value
;	-----------------------------------------
_read_obj_value:
	mov	r7,dpl
;	../fb_app_out.c:208: unsigned char ret_val=0;
	mov	r6,#0x00
;	../fb_app_out.c:210: if(objno<8) {
	cjne	r7,#0x08,00123$
00123$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00104$
;	../fb_app_out.c:211: if(out_state&(1<<objno)) ret_val=1;
	push	ar6
	mov	b,r7
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00126$
00125$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00126$:
	djnz	b,00125$
	mov	r2,_out_state
	mov	r6,#0x00
	mov	a,r2
	anl	ar3,a
	mov	a,r6
	anl	ar4,a
	pop	ar6
	mov	a,r3
	orl	a,r4
	jz	00104$
	mov	r6,#0x01
00104$:
;	../fb_app_out.c:213: if(objno>=8 && objno<12) {
	mov	a,r5
	jnz	00108$
	cjne	r7,#0x0C,00129$
00129$:
	jnc	00108$
;	../fb_app_out.c:214: if(zf_state&(1<<(objno-8))) ret_val=1;
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xF8
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	b,r4
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00132$
00131$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00132$:
	djnz	b,00131$
	mov	r2,_zf_state
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00108$
	mov	r6,#0x01
00108$:
;	../fb_app_out.c:216: if(objno>=12) {
	cjne	r7,#0x0C,00134$
00134$:
	jc	00113$
;	../fb_app_out.c:217: if(rm_state&(1<<(objno-12))) ret_val=1;
	mov	r5,#0x00
	mov	a,r7
	add	a,#0xF4
	mov	r7,a
	mov	a,r5
	addc	a,#0xFF
	mov	b,r7
	inc	b
	mov	r7,#0x01
	mov	r5,#0x00
	sjmp	00137$
00136$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	mov	a,r5
	rlc	a
	mov	r5,a
00137$:
	djnz	b,00136$
	mov	r3,_rm_state
	mov	r4,#0x00
	mov	a,r3
	anl	ar7,a
	mov	a,r4
	anl	ar5,a
	mov	a,r7
	orl	a,r5
	jz	00113$
	mov	r6,#0x01
00113$:
;	../fb_app_out.c:219: return(ret_val);
	mov	r7,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_value'
;------------------------------------------------------------
;objvalue                  Allocated to stack - _bp -4
;objno                     Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_out.c:223: void write_obj_value(unsigned char objno,unsigned int objvalue)	// schreibt den aktuellen Wert eines Objektes ins 'USERRAM'
;	-----------------------------------------
;	 function write_obj_value
;	-----------------------------------------
_write_obj_value:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../fb_app_out.c:225: if(objno<8) {
	cjne	r7,#0x08,00126$
00126$:
	clr	a
	rlc	a
	mov	r6,a
	jz	00105$
;	../fb_app_out.c:226: if(objvalue==0) out_state&=0xFF-(1<<objno);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00131$
00129$:
	add	a,acc
00131$:
	djnz	b,00129$
	mov	r5,a
	mov	a,#0xFF
	clr	c
	subb	a,r5
	anl	_out_state,a
	sjmp	00105$
00102$:
;	../fb_app_out.c:227: else out_state|=1<<objno;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00134$
00132$:
	add	a,acc
00134$:
	djnz	b,00132$
	mov	r5,a
	orl	_out_state,a
00105$:
;	../fb_app_out.c:229: if(objno>=8 && objno<12) {
	mov	a,r6
	jnz	00110$
	cjne	r7,#0x0C,00136$
00136$:
	jnc	00110$
;	../fb_app_out.c:230: if(objvalue==0) zf_state&=0x0F-(1<<(objno-8));
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00107$
	mov	a,r7
	add	a,#0xF8
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	mov	r6,a
	mov	a,#0x0F
	clr	c
	subb	a,r6
	anl	_zf_state,a
	sjmp	00110$
00107$:
;	../fb_app_out.c:231: else zf_state|=1<<(objno-8);
	mov	a,r7
	add	a,#0xF8
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00144$
00142$:
	add	a,acc
00144$:
	djnz	b,00142$
	mov	r6,a
	orl	_zf_state,a
00110$:
;	../fb_app_out.c:233: if(objno>=12) {
	cjne	r7,#0x0C,00145$
00145$:
	jc	00117$
;	../fb_app_out.c:234: if(objvalue==0) rm_state&=0xFF-(1<<(objno-12));
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
	mov	a,r7
	add	a,#0xF4
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00150$
00148$:
	add	a,acc
00150$:
	djnz	b,00148$
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r6
	anl	_rm_state,a
	sjmp	00117$
00113$:
;	../fb_app_out.c:235: else rm_state|=1<<(objno-12);
	mov	a,r7
	add	a,#0xF4
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00153$
00151$:
	add	a,acc
00153$:
	djnz	b,00151$
	mov	r7,a
	orl	_rm_state,a
00117$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'object_schalten'
;------------------------------------------------------------
;objstate                  Allocated to registers b0 
;objno                     Allocated to registers r7 
;delay_base                Allocated to registers r6 
;delay_state               Allocated to registers r4 
;logicfunc                 Allocated to stack - _bp +1
;zfno                      Allocated to stack - _bp +2
;delay_onoff               Allocated to registers r5 
;off_disable               Allocated to registers b1 
;------------------------------------------------------------
;	../fb_app_out.c:244: void object_schalten(unsigned char objno, __bit objstate)	// Schaltet einen Ausgang gemäß objstate und den zugörigen Parametern
;	-----------------------------------------
;	 function object_schalten
;	-----------------------------------------
_object_schalten:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r7,dpl
;	../fb_app_out.c:253: off_disable=((eeprom[OFFDISABLE]>>objno)&0x01);	// nur ausschalten wenn AUS-Tete nicht ignoriert werden soll
	mov	dptr,#(_eeprom + 0x00eb)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	b,r7
	inc	b
	mov	a,r6
	sjmp	00189$
00188$:
	clr	c
	rrc	a
00189$:
	djnz	b,00188$
	anl	a,#0x01
	mov	r6,a
	add	a,#0xff
	mov	b1,c
;	../fb_app_out.c:254: if ((!objstate && !off_disable) || objstate) {
	jb	b0,00158$
	jnb	b1,00155$
00158$:
	jb	b0,00192$
	ljmp	00159$
00192$:
00155$:
;	../fb_app_out.c:255: write_obj_value(objno,objstate);		// Objektwert speichern
	mov	c,b0
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	bits
	push	ar5
	push	ar6
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	bits
	pop	ar7
;	../fb_app_out.c:258: zfno=0;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
;	../fb_app_out.c:259: logicfunc=0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
;	../fb_app_out.c:260: if((eeprom[FUNCASS]&0x0F)==(objno+1)) zfno=1;
	mov	dptr,#(_eeprom + 0x00d8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	anl	ar4,#0x0F
	mov	ar2,r7
	mov	r3,#0x00
	push	ar7
	mov	a,#0x01
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	r5,#0x00
	mov	a,r4
	cjne	a,ar6,00193$
	mov	a,r5
	cjne	a,ar7,00193$
	sjmp	00194$
00193$:
	pop	ar7
	sjmp	00102$
00194$:
	pop	ar7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x01
00102$:
;	../fb_app_out.c:261: if(((eeprom[FUNCASS]&0xF0)>>4)==(objno+1)) zfno=2;
	push	ar7
	mov	dptr,#(_eeprom + 0x00d8)
	clr	a
	movc	a,@a+dptr
	anl	a,#0xF0
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	r7,#0x00
	mov	a,r6
	cjne	a,ar4,00195$
	mov	a,r7
	cjne	a,ar5,00195$
	sjmp	00196$
00195$:
	pop	ar7
	sjmp	00104$
00196$:
	pop	ar7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x02
00104$:
;	../fb_app_out.c:262: if((eeprom[FUNCASS+1]&0x0F)==(objno+1)) zfno=3;
	push	ar7
	mov	dptr,#(_eeprom + 0x00d9)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x0F
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	r7,#0x00
	mov	a,r6
	cjne	a,ar4,00197$
	mov	a,r7
	cjne	a,ar5,00197$
	sjmp	00198$
00197$:
	pop	ar7
	sjmp	00106$
00198$:
	pop	ar7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x03
00106$:
;	../fb_app_out.c:263: if(((eeprom[FUNCASS+1]&0xF0)>>4)==(objno+1)) zfno=4;
	push	ar7
	mov	dptr,#(_eeprom + 0x00d9)
	clr	a
	movc	a,@a+dptr
	anl	a,#0xF0
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	r7,#0x00
	mov	a,r6
	cjne	a,ar4,00199$
	mov	a,r7
	cjne	a,ar5,00199$
	sjmp	00200$
00199$:
	pop	ar7
	sjmp	00108$
00200$:
	pop	ar7
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x04
00108$:
;	../fb_app_out.c:264: if(zfno) {
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	jz	00112$
;	../fb_app_out.c:265: if(((eeprom[FUNCTYP]>>((zfno-1)*2))&0x03)==0x00) logicfunc=((eeprom[LOGICTYP]>>((zfno-1)*2))&0x03);
	push	ar2
	push	ar3
	mov	dptr,#(_eeprom + 0x00ed)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	a,r4
	add	a,#0xFF
	mov	r2,a
	mov	a,r5
	addc	a,#0xFF
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	b,r2
	inc	b
	mov	a,r6
	sjmp	00203$
00202$:
	clr	c
	rrc	a
00203$:
	djnz	b,00202$
	anl	a,#0x03
	jz	00205$
	pop	ar3
	pop	ar2
	sjmp	00112$
00205$:
	pop	ar3
	pop	ar2
	mov	dptr,#(_eeprom + 0x00ee)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	dec	r4
	cjne	r4,#0xFF,00206$
	dec	r5
00206$:
	mov	a,r5
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	b,r4
	inc	b
	mov	a,r6
	sjmp	00208$
00207$:
	clr	c
	rrc	a
00208$:
	djnz	b,00207$
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	anl	a,r6
	mov	@r0,a
00112$:
;	../fb_app_out.c:268: if(((0x01<<objno) & blocked)==0 && (read_objflags(objno)&0x14)==0x14) {	// Objekt ist nicht gesperrt und Kommunikation zulässig (Bit 2 = communication enable) und Schreiben zulässig (Bit 4 = write enable)
	push	ar2
	push	ar3
	mov	b,r7
	inc	b
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00210$
00209$:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
00210$:
	djnz	b,00209$
	mov	r3,_blocked
	mov	r4,#0x00
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	anl	ar6,a
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r6
	jz	00211$
	ljmp	00159$
00211$:
	mov	dpl,r7
	push	ar7
	push	ar3
	push	ar2
	push	bits
	lcall	_read_objflags
	mov	a,dpl
	pop	bits
	pop	ar2
	pop	ar3
	pop	ar7
	anl	a,#0x14
	mov	r6,a
	cjne	r6,#0x14,00212$
	sjmp	00213$
00212$:
	ljmp	00159$
00213$:
;	../fb_app_out.c:269: delay_base=eeprom[(((objno+1)>>1)+DELAYTAB)];   
	inc	r2
	cjne	r2,#0x00,00214$
	inc	r3
00214$:
	mov	a,r3
	mov	c,acc.7
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,#0xF9
	add	a,r2
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
;	../fb_app_out.c:270: if((objno&0x01)==0x01) delay_base&=0x0F;
	mov	a,#0x01
	anl	a,r7
	mov	r5,a
	cjne	r5,#0x01,00114$
	anl	ar6,#0x0F
	sjmp	00115$
00114$:
;	../fb_app_out.c:271: else delay_base=(delay_base&0xF0)>>4;
	mov	a,#0xF0
	anl	a,r6
	mov	r5,a
	swap	a
	anl	a,#0x0F
	mov	r6,a
00115$:
;	../fb_app_out.c:273: delay_onoff=0;
	mov	r5,#0x00
;	../fb_app_out.c:274: delay_state=0;
	mov	r4,#0x00
;	../fb_app_out.c:278: if ( (objstate==0 && (logicfunc==0 || (logicfunc==1 && ((logicstate>>objno)&0x01)==0x00) || logicfunc>=2))
	jb	b0,00131$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00123$
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x01,00127$
	mov	b,r7
	inc	b
	mov	a,_logicstate
	sjmp	00222$
00221$:
	clr	c
	rrc	a
00222$:
	djnz	b,00221$
	jnb	acc.0,00123$
00127$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x02,00224$
00224$:
	jnc	00123$
00131$:
;	../fb_app_out.c:279: || (objstate==1 && (logicfunc>=2 && ((logicstate>>objno)&0x01)==0x00)) )
	mov	c,b0
	clr	a
	rlc	a
	mov	r3,a
	cjne	r3,#0x01,00226$
	sjmp	00227$
00226$:
	ljmp	00124$
00227$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x02,00228$
00228$:
	jc	00124$
	mov	b,r7
	inc	b
	mov	a,_logicstate
	sjmp	00231$
00230$:
	clr	c
	rrc	a
00231$:
	djnz	b,00230$
	jb	acc.0,00124$
00123$:
;	../fb_app_out.c:281: delay_onoff=eeprom[objno+0xE2];
	mov	a,#0xE2
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
;	../fb_app_out.c:282: if(delay_onoff==0x00 || ((eeprom[0xEA]>>objno)&0x01)==0x01) {		// sofort ausschalten
	mov	r5,a
	jz	00119$
	mov	dptr,#(_eeprom + 0x00ea)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	b,r7
	inc	b
	mov	a,r3
	sjmp	00235$
00234$:
	clr	c
	rrc	a
00235$:
	djnz	b,00234$
	anl	a,#0x01
	mov	r3,a
	cjne	r3,#0x01,00120$
00119$:
;	../fb_app_out.c:283: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) portbuffer=portbuffer&~(0x01<<objno);	// Schliesserbetrieb
	mov	dptr,#(_eeprom + 0x00f2)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	b,r7
	inc	b
	mov	a,r3
	sjmp	00239$
00238$:
	clr	c
	rrc	a
00239$:
	djnz	b,00238$
	jb	acc.0,00117$
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00243$
00241$:
	add	a,acc
00243$:
	djnz	b,00241$
	cpl	a
	mov	r3,a
	anl	_portbuffer,a
	sjmp	00124$
00117$:
;	../fb_app_out.c:284: else portbuffer=portbuffer|(0x01<<objno);						// Öffnerbetrieb
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00246$
00244$:
	add	a,acc
00246$:
	djnz	b,00244$
	mov	r3,a
	orl	_portbuffer,a
	sjmp	00124$
00120$:
;	../fb_app_out.c:286: else delay_state=0x01;				// verzögert ausschalten
	mov	r4,#0x01
00124$:
;	../fb_app_out.c:290: if ( (objstate==1 && (logicfunc==0 || logicfunc==1 || (logicfunc>=2 && ((logicstate>>objno)&0x01)==0x01))) 
	mov	c,b0
	clr	a
	rlc	a
	mov	r3,a
	cjne	r3,#0x01,00148$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00140$
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x01,00250$
	sjmp	00140$
00250$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x02,00251$
00251$:
	jc	00148$
	mov	b,r7
	inc	b
	mov	a,_logicstate
	sjmp	00254$
00253$:
	clr	c
	rrc	a
00254$:
	djnz	b,00253$
	anl	a,#0x01
	mov	r3,a
	cjne	r3,#0x01,00255$
	sjmp	00140$
00255$:
00148$:
;	../fb_app_out.c:291: || (objstate==0 && (logicfunc==1 && ((logicstate>>objno)&0x01)==0x01)) )
	jnb	b0,00256$
	ljmp	00141$
00256$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x01,00257$
	sjmp	00258$
00257$:
	ljmp	00141$
00258$:
	mov	b,r7
	inc	b
	mov	a,_logicstate
	sjmp	00260$
00259$:
	clr	c
	rrc	a
00260$:
	djnz	b,00259$
	anl	a,#0x01
	mov	r3,a
	cjne	r3,#0x01,00141$
00140$:
;	../fb_app_out.c:293: delay_onoff=eeprom[objno+0xDA];
	mov	a,#0xDA
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
;	../fb_app_out.c:294: if(delay_onoff==0x00) {
	mov	r5,a
	jnz	00138$
;	../fb_app_out.c:297: if(((eeprom[0xEA]>>objno)&0x01)==0x01) { 			// Zeitschaltfunktion
	mov	dptr,#(_eeprom + 0x00ea)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	b,r7
	inc	b
	mov	a,r3
	sjmp	00265$
00264$:
	clr	c
	rrc	a
00265$:
	djnz	b,00264$
	anl	a,#0x01
	mov	r3,a
	cjne	r3,#0x01,00133$
;	../fb_app_out.c:298: delay_state=0x80;
	mov	r4,#0x80
;	../fb_app_out.c:299: delay_onoff=eeprom[objno+0xE2];
	mov	a,#0xE2
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	mov	r5,a
00133$:
;	../fb_app_out.c:301: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) portbuffer=portbuffer|(0x01<<objno);	// sofort einschalten (Schliesserbetrieb)
	mov	dptr,#(_eeprom + 0x00f2)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	b,r7
	inc	b
	mov	a,r3
	sjmp	00269$
00268$:
	clr	c
	rrc	a
00269$:
	djnz	b,00268$
	jb	acc.0,00135$
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00273$
00271$:
	add	a,acc
00273$:
	djnz	b,00271$
	mov	r3,a
	orl	_portbuffer,a
	sjmp	00141$
00135$:
;	../fb_app_out.c:302: else portbuffer=portbuffer&~(0x01<<objno);					// sofort einschalten (Öffnerbetrieb)
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00276$
00274$:
	add	a,acc
00276$:
	djnz	b,00274$
	cpl	a
	mov	r3,a
	anl	_portbuffer,a
	sjmp	00141$
00138$:
;	../fb_app_out.c:304: else delay_state=0x11;				// verzögert einschalten
	mov	r4,#0x11
00141$:
;	../fb_app_out.c:307: if(delay_state!=0) {				// wenn Verzögerung, dann timer-Wert ins Flash schreiben  
	mov	a,r4
	jz	00150$
;	../fb_app_out.c:308: timercnt[objno]=delay_onoff|0x80;//delay_target=(delay_onoff<<delay_base)+timer;
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	a,#0x80
	orl	a,r5
	mov	@r1,a
;	../fb_app_out.c:309: timerbase[objno]=delay_base|(delay_state & 0xF0);//write_delay_record(objno,delay_state,delay_target);
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	anl	ar4,#0xF0
	mov	a,r4
	orl	a,r6
	mov	@r1,a
	sjmp	00159$
00150$:
;	../fb_app_out.c:311: else timercnt[objno]= 0;//clear_delay_record(objno);    
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
00159$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_timer'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;port_pattern              Allocated to registers r6 
;delay_zeit                Allocated to registers r5 
;delay_onoff               Allocated to registers r3 
;delay_base                Allocated to registers r4 
;n                         Allocated to registers r5 
;m                         Allocated to registers r4 
;timerflags                Allocated to registers r6 r7 
;------------------------------------------------------------
;	../fb_app_out.c:318: void delay_timer(void)	// zählt alle 65ms die Variable Timer hoch und prüft Queue
;	-----------------------------------------
;	 function delay_timer
;	-----------------------------------------
_delay_timer:
;	../fb_app_out.c:329: RTCCON=0x60;		// RTC anhalten und Flag löschen
	mov	_RTCCON,#0x60
;	../fb_app_out.c:330: RTCH=0x0E;			// reload Real Time Clock
	mov	_RTCH,#0x0E
;	../fb_app_out.c:331: RTCL=0xA0;
	mov	_RTCL,#0xA0
;	../fb_app_out.c:334: timer++;
	inc	_timer
	clr	a
	cjne	a,_timer,00160$
	inc	(_timer + 1)
00160$:
;	../fb_app_out.c:335: timerflags = timer&(~(timer-1));
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
;	../fb_app_out.c:336: for(n=0;n<16;n++){
	mov	r5,#0x00
00130$:
	cjne	r5,#0x10,00161$
00161$:
	jnc	00133$
;	../fb_app_out.c:337: if(timerflags & 0x0001){// positive flags erzeugen und schieben
	mov	a,r6
	jnb	acc.0,00106$
;	../fb_app_out.c:338: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
	mov	r4,#0x00
00126$:
	cjne	r4,#0x08,00164$
00164$:
	jnc	00106$
;	../fb_app_out.c:339: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
	mov	a,r4
	add	a,#_timerbase
	mov	r1,a
	mov	ar3,@r1
	anl	ar3,#0x0F
	mov	a,r3
	cjne	a,ar5,00128$
;	../fb_app_out.c:340: if (timercnt[m]>0x80){// wenn der counter läuft...
	mov	a,r4
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	mov	r3,a
	add	a,#0xff - 0x80
	jnc	00128$
;	../fb_app_out.c:341: timercnt[m]=timercnt[m]-1;// den timer [m]decrementieren
	mov	a,r3
	dec	a
	mov	@r1,a
00128$:
;	../fb_app_out.c:338: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
	inc	r4
	sjmp	00126$
00106$:
;	../fb_app_out.c:346: timerflags = timerflags>>1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	../fb_app_out.c:336: for(n=0;n<16;n++){
	inc	r5
	sjmp	00130$
00133$:
;	../fb_app_out.c:351: for(objno=0;objno<=7;objno++) {
	mov	r7,#0x00
00134$:
	mov	a,r7
	add	a,#0xff - 0x07
	jnc	00169$
	ljmp	00137$
00169$:
;	../fb_app_out.c:357: if(timercnt[objno]==0x80) {			// 0x00 = delay Eintrag ist leer   
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x80,00170$
	sjmp	00171$
00170$:
	ljmp	00136$
00171$:
;	../fb_app_out.c:359: portchanged=1;
	setb	_portchanged
;	../fb_app_out.c:360: port_pattern=0x01<<objno;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00174$
00172$:
	add	a,acc
00174$:
	djnz	b,00172$
	mov	r6,a
;	../fb_app_out.c:361: if(timerbase[objno]&0x10) { //if(delay_state==0x81) {	// einschalten
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jb	acc.4,00175$
	ljmp	00122$
00175$:
;	../fb_app_out.c:362: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) {				
	mov	dptr,#(_eeprom + 0x00f2)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00177$
00176$:
	clr	c
	rrc	a
00177$:
	djnz	b,00176$
	jb	acc.0,00108$
;	../fb_app_out.c:363: portbuffer=portbuffer|port_pattern;		// Einschalten (Schliesserbetrieb)
	mov	a,r6
	orl	_portbuffer,a
	sjmp	00109$
00108$:
;	../fb_app_out.c:366: portbuffer=portbuffer&~port_pattern;	// Einschalten (Öffnerbetrieb)
	mov	a,r6
	cpl	a
	mov	r5,a
	anl	_portbuffer,a
00109$:
;	../fb_app_out.c:368: timercnt[objno]=0;//delrec[objno*4]=0;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_out.c:370: delay_zeit=eeprom[0xEA];
	mov	dptr,#(_eeprom + 0x00ea)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	../fb_app_out.c:371: delay_zeit=((delay_zeit>>objno)&0x01);
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00180$
00179$:
	clr	c
	rrc	a
00180$:
	djnz	b,00179$
	mov	r4,a
	mov	a,#0x01
	anl	a,r4
	mov	r5,a
;	../fb_app_out.c:372: if(delay_zeit==0x01) {
	cjne	r5,#0x01,00136$
;	../fb_app_out.c:373: delay_base=eeprom[(((objno+1)>>1)+0xF9)];   
	mov	ar3,r7
	mov	r4,#0x00
	inc	r3
	cjne	r3,#0x00,00183$
	inc	r4
00183$:
	mov	a,r4
	mov	c,acc.7
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	a,#0xF9
	add	a,r3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
;	../fb_app_out.c:374: if((objno&0x01)==0x01) delay_base&=0x0F;
	mov	a,#0x01
	anl	a,r7
	mov	r3,a
	cjne	r3,#0x01,00111$
	anl	ar4,#0x0F
	sjmp	00112$
00111$:
;	../fb_app_out.c:375: else delay_base=(delay_base&0xF0)>>4;
	mov	a,#0xF0
	anl	a,r4
	mov	r3,a
	swap	a
	anl	a,#0x0F
	mov	r4,a
00112$:
;	../fb_app_out.c:376: delay_onoff=eeprom[objno+0xE2];
	mov	a,#0xE2
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
;	../fb_app_out.c:377: if (delay_onoff!=0x00 && delay_zeit!=0x00) {  
	mov	r3,a
	jz	00136$
	mov	a,r5
	jz	00136$
;	../fb_app_out.c:378: timercnt[objno]=delay_onoff|0x80;//delay_target=(delay_onoff<<delay_base)+timer;
	mov	a,#0x80
	orl	a,r3
	mov	@r0,a
;	../fb_app_out.c:379: timerbase[objno]=delay_base;//write_delay_record(objno,0x80,delay_target);		// Schaltverzögerung in Flash schreiben
	mov	@r1,ar4
	sjmp	00136$
00122$:
;	../fb_app_out.c:386: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) {
	mov	dptr,#(_eeprom + 0x00f2)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00189$
00188$:
	clr	c
	rrc	a
00189$:
	djnz	b,00188$
	jb	acc.0,00119$
;	../fb_app_out.c:387: portbuffer=portbuffer&~port_pattern;		// Ausschalten (Schliesserbetrieb)
	mov	a,r6
	cpl	a
	mov	r5,a
	anl	_portbuffer,a
	sjmp	00120$
00119$:
;	../fb_app_out.c:390: portbuffer=portbuffer|port_pattern;			// Ausschalten (Öffnerbetrieb)
	mov	a,r6
	orl	_portbuffer,a
00120$:
;	../fb_app_out.c:392: timercnt[objno]=0;//delrec[objno*4]=0;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
00136$:
;	../fb_app_out.c:351: for(objno=0;objno<=7;objno++) {
	inc	r7
	ljmp	00134$
00137$:
;	../fb_app_out.c:460: RTCCON=0x61;		// RTC starten
	mov	_RTCCON,#0x61
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'port_schalten'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;pattern                   Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_out.c:524: void port_schalten(void)		// Schaltet die Ports mit PWM, DUTY ist Pulsverhältnis
;	-----------------------------------------
;	 function port_schalten
;	-----------------------------------------
_port_schalten:
;	../fb_app_out.c:570: spi_2_out(sort_output(portbuffer));		// Ports schalten
	mov	dpl,_portbuffer
	lcall	_sort_output
	lcall	_spi_2_out
;	../fb_app_out.c:571: PWM=0;
	clr	_P1_2
;	../fb_app_out.c:572: TF0=0;			// Timer 0 für Haltezeit Vollstrom verwenden
	clr	_TCON_5
;	../fb_app_out.c:573: TH0=0x6f;		// 16ms (10ms=6fff)
	mov	_TH0,#0x6F
;	../fb_app_out.c:574: TL0=0xff;
	mov	_TL0,#0xFF
;	../fb_app_out.c:575: TMOD=(TMOD & 0xF0) +1;		// Timer 0 als 16-Bit Timer
	mov	a,#0xF0
	anl	a,_TMOD
	inc	a
	mov	_TMOD,a
;	../fb_app_out.c:576: TAMOD=0x00;
	mov	_TAMOD,#0x00
;	../fb_app_out.c:577: TR0=1;
	setb	_TCON_4
;	../fb_app_out.c:579: rm_state=portbuffer ^ eeprom[RMINV];	// Rückmeldeobjekte setzen
	mov	dptr,#(_eeprom + 0x00f3)
	clr	a
	movc	a,@a+dptr
	xrl	a,_portbuffer
	mov	_rm_state,a
;	../fb_app_out.c:580: for (n=0;n<8;n++) {	// Rückmeldung wenn ein Ausgag sich geändert hat
	mov	r7,#0x00
00103$:
	cjne	r7,#0x08,00113$
00113$:
	jnc	00106$
;	../fb_app_out.c:581: pattern=1<<n;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
;	../fb_app_out.c:582: if((portbuffer&pattern)!=(oldportbuffer&pattern)) send_obj_value(n+12);
	mov	r6,a
	anl	a,_portbuffer
	mov	r5,a
	mov	a,_oldportbuffer
	anl	ar6,a
	mov	a,r5
	cjne	a,ar6,00118$
	sjmp	00105$
00118$:
	mov	a,#0x0C
	add	a,r7
	mov	dpl,a
	push	ar7
	lcall	_send_obj_value
	pop	ar7
00105$:
;	../fb_app_out.c:580: for (n=0;n<8;n++) {	// Rückmeldung wenn ein Ausgag sich geändert hat
	inc	r7
	sjmp	00103$
00106$:
;	../fb_app_out.c:585: oldportbuffer=portbuffer;
	mov	_oldportbuffer,_portbuffer
;	../fb_app_out.c:586: portchanged=0;
	clr	_portchanged
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sort_output'
;------------------------------------------------------------
;portbuffer                Allocated to registers r7 
;diff                      Allocated to registers r6 
;result                    Allocated to registers r4 r5 
;------------------------------------------------------------
;	../fb_app_out.c:626: unsigned int sort_output(unsigned char portbuffer){
;	-----------------------------------------
;	 function sort_output
;	-----------------------------------------
_sort_output:
	mov	r7,dpl
;	../fb_app_out.c:629: diff=portbuffer ^ oldportbuffer;
	mov	a,_oldportbuffer
	xrl	a,r7
	mov	r6,a
;	../fb_app_out.c:630: result=0;
;	../fb_app_out.c:709: if (diff & 0x01){
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,r6
	jnb	acc.0,00105$
;	../fb_app_out.c:710: if(portbuffer & 0x02){
	mov	a,r7
	jnb	acc.1,00102$
;	../fb_app_out.c:711: result|=0x0004;
	mov	r4,#0x04
	mov	r5,#0x00
	sjmp	00105$
00102$:
;	../fb_app_out.c:714: result|=0x0008;
	mov	r4,#0x08
	mov	r5,#0x00
00105$:
;	../fb_app_out.c:718: if (diff & 0x02){
	mov	a,r6
	jnb	acc.1,00110$
;	../fb_app_out.c:719: if(portbuffer & 0x08){
	mov	a,r7
	jnb	acc.3,00107$
;	../fb_app_out.c:720: result|=0x0001;
	orl	ar4,#0x01
	sjmp	00110$
00107$:
;	../fb_app_out.c:723: result|=0x0002;
	orl	ar4,#0x02
00110$:
;	../fb_app_out.c:728: if (diff & 0x04){
	mov	a,r6
	jnb	acc.2,00115$
;	../fb_app_out.c:729: if(portbuffer & 0x10){
	mov	a,r7
	jnb	acc.4,00112$
;	../fb_app_out.c:730: result|=0x0040;
	orl	ar4,#0x40
	sjmp	00115$
00112$:
;	../fb_app_out.c:733: result|=0x0080;
	orl	ar4,#0x80
00115$:
;	../fb_app_out.c:738: if (diff & 0x08){
	mov	a,r6
	jnb	acc.3,00120$
;	../fb_app_out.c:739: if(portbuffer & 0x40){
	mov	a,r7
	jnb	acc.6,00117$
;	../fb_app_out.c:740: result|=0x0010;
	orl	ar4,#0x10
	sjmp	00120$
00117$:
;	../fb_app_out.c:743: result|=0x0020;
	orl	ar4,#0x20
00120$:
;	../fb_app_out.c:748: return result;
	mov	dpl,r4
	mov	dph,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_2_out'
;------------------------------------------------------------
;daten                     Allocated to registers r6 r7 
;n                         Allocated to registers r6 
;unten                     Allocated to registers r4 
;mitte                     Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_out.c:753: void spi_2_out(unsigned int daten){
;	-----------------------------------------
;	 function spi_2_out
;	-----------------------------------------
_spi_2_out:
	mov	r6,dpl
	mov	r7,dph
;	../fb_app_out.c:757: unten=daten & 0xFF;
	mov	ar4,r6
	mov	r5,#0x00
;	../fb_app_out.c:758: mitte=daten>>8;
;	../fb_app_out.c:760: WRITE=0;
	clr	_P0_2
;	../fb_app_out.c:761: CLK=0;
	clr	_P0_3
;	../fb_app_out.c:762: for(n=0;n<=7;n++){
	mov	r6,#0x00
00101$:
	mov	a,r6
	add	a,#0xff - 0x07
	jc	00104$
;	../fb_app_out.c:765: BOT_OUT=(unten & 0x080)>>7;
	mov	a,#0x80
	anl	a,r4
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_P0_0,c
;	../fb_app_out.c:766: unten<<=1;
	mov	a,r4
	add	a,r4
	mov	r4,a
;	../fb_app_out.c:769: MID_OUT=(mitte & 0x080)>>7;
	mov	a,#0x80
	anl	a,r7
	rl	a
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	mov	_P0_1,c
;	../fb_app_out.c:770: mitte<<=1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	../fb_app_out.c:772: CLK=1;
	setb	_P0_3
;	../fb_app_out.c:773: CLK=0;
	clr	_P0_3
;	../fb_app_out.c:762: for(n=0;n<=7;n++){
	inc	r6
	sjmp	00101$
00104$:
;	../fb_app_out.c:777: WRITE=1;
	setb	_P0_2
;	../fb_app_out.c:779: WRITE=0;
	clr	_P0_2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bus_return'
;------------------------------------------------------------
;n                         Allocated to registers r6 
;bw                        Allocated to registers r7 
;bwh                       Allocated to registers r5 
;------------------------------------------------------------
;	../fb_app_out.c:788: void bus_return(void)		// Aktionen bei Busspannungswiederkehr
;	-----------------------------------------
;	 function bus_return
;	-----------------------------------------
_bus_return:
;	../fb_app_out.c:792: portbuffer=eeprom[PORTSAVE];	// Verhalten nach Busspannungs-Wiederkehr
	mov	dptr,#(_eeprom + 0x0099)
	clr	a
	movc	a,@a+dptr
	mov	_portbuffer,a
;	../fb_app_out.c:794: bw=eeprom[0xF6];
	mov	dptr,#(_eeprom + 0x00f6)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	../fb_app_out.c:795: for(n=0;n<=3;n++) {			// Ausgänge 1-4
	mov	r6,#0x00
00109$:
	mov	a,r6
	add	a,#0xff - 0x03
	jc	00112$
;	../fb_app_out.c:796: bwh=(bw>>(2*n))&0x03;
	mov	a,r6
	mov	b,#0x02
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	b,r4
	inc	b
	mov	a,r7
	sjmp	00131$
00130$:
	clr	c
	rrc	a
00131$:
	djnz	b,00130$
	mov	r4,a
	mov	a,#0x03
	anl	a,r4
	mov	r5,a
;	../fb_app_out.c:797: if(bwh==0x01)  portbuffer=portbuffer & (0xFF-(0x01<<n));
	cjne	r5,#0x01,00102$
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00136$
00134$:
	add	a,acc
00136$:
	djnz	b,00134$
	mov	r4,a
	mov	a,#0xFF
	clr	c
	subb	a,r4
	anl	_portbuffer,a
00102$:
;	../fb_app_out.c:798: if(bwh==0x02)  portbuffer=portbuffer | (0x01<<n);
	cjne	r5,#0x02,00111$
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	mov	r4,a
	orl	_portbuffer,a
00111$:
;	../fb_app_out.c:795: for(n=0;n<=3;n++) {			// Ausgänge 1-4
	inc	r6
	sjmp	00109$
00112$:
;	../fb_app_out.c:802: bw=eeprom[0xF7];
	mov	dptr,#(_eeprom + 0x00f7)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	../fb_app_out.c:803: for(n=0;n<=3;n++) {			// Ausgänge 5-8
	mov	r6,#0x00
00113$:
	mov	a,r6
	add	a,#0xff - 0x03
	jc	00116$
;	../fb_app_out.c:804: bwh=(bw>>(2*n))&0x03;
	mov	a,r6
	mov	b,#0x02
	mul	ab
	mov	r3,a
	mov	r4,b
	mov	b,r3
	inc	b
	mov	a,r7
	sjmp	00144$
00143$:
	clr	c
	rrc	a
00144$:
	djnz	b,00143$
	mov	r3,a
	mov	a,#0x03
	anl	a,r3
	mov	r5,a
;	../fb_app_out.c:805: if(bwh==0x01)  portbuffer=portbuffer & (0xFF-(0x01<<(n+4)));
	cjne	r5,#0x01,00106$
	mov	a,#0x04
	add	a,r6
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00149$
00147$:
	add	a,acc
00149$:
	djnz	b,00147$
	mov	r4,a
	mov	a,#0xFF
	clr	c
	subb	a,r4
	anl	_portbuffer,a
00106$:
;	../fb_app_out.c:806: if(bwh==0x02)  portbuffer=portbuffer | (0x01<<(n+4));
	cjne	r5,#0x02,00115$
	mov	a,#0x04
	add	a,r6
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00154$
00152$:
	add	a,acc
00154$:
	djnz	b,00152$
	mov	r5,a
	orl	_portbuffer,a
00115$:
;	../fb_app_out.c:803: for(n=0;n<=3;n++) {			// Ausgänge 5-8
	inc	r6
	sjmp	00113$
00116$:
;	../fb_app_out.c:810: oldportbuffer=0; 	// auf 0 setzen, da sonst kein Vollstrom aktiviert wird
	mov	_oldportbuffer,#0x00
;	../fb_app_out.c:811: portchanged=1;		// Post hinterlegen damit in delaytimer nach portschalten springt
	setb	_portchanged
;	../fb_app_out.c:814: rm_state=portbuffer ^ eeprom[RMINV];	// Rückmeldeobjekte setzen
	mov	dptr,#(_eeprom + 0x00f3)
	clr	a
	movc	a,@a+dptr
	xrl	a,_portbuffer
	mov	_rm_state,a
;	../fb_app_out.c:818: rm_send|=~portbuffer;// Rückmeldung nur für Objekte mit Wert 0, da Wert 1 in normalem port_schalten eh gesendet wird
	mov	a,_portbuffer
	cpl	a
	orl	_rm_send,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
;	../fb_app_out.c:823: void restart_app(void) 		// Alle Applikations-Parameter zurücksetzen
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
;	../fb_app_out.c:828: P0=0;
	mov	_P0,#0x00
;	../fb_app_out.c:829: P0M1=0x00;		// Port 0 Modus push-pull für Ausgang
	mov	_P0M1,#0x00
;	../fb_app_out.c:831: P0M2=0xFF;
	mov	_P0M2,#0xFF
;	../fb_app_out.c:839: PWM=1;
	setb	_P1_2
;	../fb_app_out.c:850: ET0=0;			// Interrupt für Timer 0 sperren
	clr	_IEN0_1
;	../fb_app_out.c:851: IT0=1;
	setb	_TCON_0
;	../fb_app_out.c:852: zf_state=0x00;		// Zustand der Zusatzfunktionen 1-4
	mov	_zf_state,#0x00
;	../fb_app_out.c:853: blocked=0x00;		// Ausgänge nicht gesperrt
;	../fb_app_out.c:854: timer=0;			// Timer-Variable, wird alle 130ms inkrementiert
;	../fb_app_out.c:856: logicstate=0;
	clr	a
	mov	_blocked,a
	mov	_timer,a
	mov	(_timer + 1),a
	mov	_logicstate,a
;	../fb_app_out.c:857: delay_toggle=0;
	clr	_delay_toggle
;	../fb_app_out.c:859: EA=0;						// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
;	../fb_app_out.c:860: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_app_out.c:861: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x03
	mov	_FMDATA,#0x00
;	../fb_app_out.c:862: WRITE_BYTE(0x01,0x04,0x04)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x04
	mov	_FMDATA,#0x04
;	../fb_app_out.c:864: WRITE_BYTE(0x01,0x05,0x20)	// Devicetype 0x2060 = Jung Aktor 2138.10
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x05
	mov	_FMDATA,#0x20
;	../fb_app_out.c:865: WRITE_BYTE(0x01,0x06,0x60)	
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x06
	mov	_FMDATA,#0x60
;	../fb_app_out.c:871: WRITE_BYTE(0x01,0x07,0x01)	// Versionnumber of application programm
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x07
	mov	_FMDATA,#0x01
;	../fb_app_out.c:872: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0C
	mov	_FMDATA,#0x00
;	../fb_app_out.c:873: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0D
	mov	_FMDATA,#0xFF
;	../fb_app_out.c:874: WRITE_BYTE(0x01,0x12,0x9A)	// COMMSTAB Pointer
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x12
	mov	_FMDATA,#0x9A
;	../fb_app_out.c:875: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_app_out.c:876: EA=1;						// Interrupts freigeben
	setb	_IEN0_7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
