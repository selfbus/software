;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
; This file was generated Sun Aug 14 13:44:17 2011
;--------------------------------------------------------
	.module fb_app_dim
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _timer
	.globl _logicstate
	.globl _blocked
	.globl _zfstate
	.globl _portbuffer
	.globl _Tval
	.globl _send_value
	.globl _write_value_req
	.globl _write_obj_lz
	.globl _read_value_req
	.globl _respond
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
_Tval::
	.ds 1
_portbuffer::
	.ds 1
_zfstate::
	.ds 1
_blocked::
	.ds 1
_logicstate::
	.ds 1
_timer::
	.ds 4
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
;Allocation info for local variables in function 'send_value'
;------------------------------------------------------------
;objno                     Allocated to stack - offset -3
;sval                      Allocated to stack - offset -5
;type                      Allocated to registers r2 
;ga                        Allocated to registers r3 r4 
;objtype                   Allocated to registers r2 
;------------------------------------------------------------
;	../fb_app_dim.c:38: void send_value(unsigned char type, unsigned char objno, int sval)      // sucht Gruppenadresse für das Objekt objno uns sendet ein EIS Telegramm
;	-----------------------------------------
;	 function send_value
;	-----------------------------------------
_send_value:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	../fb_app_dim.c:43: ga=find_ga(objno);                            // wenn keine Gruppenadresse hintrlegt nix tun
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	dpl,@r0
	push	ar2
	lcall	_find_ga
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	../fb_app_dim.c:44: if (ga!=0)
	mov	a,r3
	orl	a,r4
	jnz	00121$
	ljmp	00113$
00121$:
;	../fb_app_dim.c:46: telegramm[0]=0xBC;
	mov	_telegramm,#0xBC
;	../fb_app_dim.c:47: telegramm[1]=eeprom[ADDRTAB+1];
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0001),r5
;	../fb_app_dim.c:48: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0002),r5
;	../fb_app_dim.c:49: telegramm[3]=ga>>8;
	mov	ar5,r4
	mov	(_telegramm + 0x0003),r5
;	../fb_app_dim.c:50: telegramm[4]=ga;
	mov	(_telegramm + 0x0004),r3
;	../fb_app_dim.c:51: telegramm[6]=0x00;
	mov	(_telegramm + 0x0006),#0x00
;	../fb_app_dim.c:52: if (type==0) telegramm[7]=0x40;             // read_value_response Telegramm (angefordert)
	mov	a,r2
	jnz	00102$
	mov	(_telegramm + 0x0007),#0x40
	sjmp	00103$
00102$:
;	../fb_app_dim.c:53: else telegramm[7]=0x80;                     // write_value_request Telegramm (nicht angefordert)
	mov	(_telegramm + 0x0007),#0x80
00103$:
;	../fb_app_dim.c:55: objtype=read_obj_type(objno);
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	dpl,@r0
	lcall	_read_obj_type
	mov	r2,dpl
;	../fb_app_dim.c:57: if(objtype<6) {                             // Objekttyp, 1-6 Bit
	cjne	r2,#0x06,00123$
00123$:
	clr	a
	rlc	a
	mov	r3,a
	jz	00105$
;	../fb_app_dim.c:58: telegramm[5]=0xE1;
	mov	(_telegramm + 0x0005),#0xE1
;	../fb_app_dim.c:59: telegramm[7]+=sval;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	mov	r4,a
	add	a,(_telegramm + 0x0007)
	mov	(_telegramm + 0x0007),a
00105$:
;	../fb_app_dim.c:62: if(objtype>=6 && objtype<=7) {              // Objekttyp, 7-8 Bit
	mov	a,r3
	jnz	00107$
	mov	a,r2
	add	a,#0xff - 0x07
	jc	00107$
;	../fb_app_dim.c:63: telegramm[5]=0xE2;
	mov	(_telegramm + 0x0005),#0xE2
;	../fb_app_dim.c:64: telegramm[8]=sval;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	mov	(_telegramm + 0x0008),r3
00107$:
;	../fb_app_dim.c:67: if(objtype==8) {                           // Objekttyp, 16 Bit
	cjne	r2,#0x08,00110$
;	../fb_app_dim.c:68: telegramm[5]=0xE3;
	mov	(_telegramm + 0x0005),#0xE3
;	../fb_app_dim.c:69: telegramm[8]=sval>>8;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	inc	r0
	mov	ar2,@r0
	mov	(_telegramm + 0x0008),r2
;	../fb_app_dim.c:70: telegramm[9]=sval;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	mov	(_telegramm + 0x0009),r2
00110$:
;	../fb_app_dim.c:73: EX1=0;
	clr	_IEN0_2
;	../fb_app_dim.c:74: send_telegramm();
	lcall	_send_telegramm
;	../fb_app_dim.c:75: IE1=0;
	clr	_TCON_3
;	../fb_app_dim.c:76: EX1=1;
	setb	_IEN0_2
00113$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;c                         Allocated to stack - offset 1
;objno                     Allocated to registers r3 
;gapos                     Allocated to stack - offset 2
;atp                       Allocated to registers r3 
;assno                     Allocated to stack - offset 3
;n                         Allocated to stack - offset 4
;gaposh                    Allocated to registers r6 
;datal                     Allocated to registers r5 
;b_send                    Allocated to registers b0 
;dataw                     Allocated to stack - offset 5
;sperr                     Allocated to registers r2 
;commObjectNumber          Allocated to stack - offset 6
;sloc0                     Allocated to stack - offset 7
;sloc1                     Allocated to stack - offset 8
;sloc2                     Allocated to stack - offset 9
;sloc3                     Allocated to stack - offset 17
;sloc4                     Allocated to stack - offset 11
;------------------------------------------------------------
;	../fb_app_dim.c:84: void write_value_req(void)				// Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0b
	mov	sp,a
;	../fb_app_dim.c:87: bit b_send=0;//wert setzen und rueckmelden
	clr	b0
;	../fb_app_dim.c:92: gapos=gapos_in_gat(telegramm[3],telegramm[4]);	// Position der Gruppenadresse in der Adresstabelle
	mov	dpl,(_telegramm + 0x0003)
	push	bits
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r2,dpl
	dec	sp
	pop	bits
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar2
;	../fb_app_dim.c:94: if (gapos!=0xFF)					// =0xFF falls nicht vorhanden
	mov	r0,_bp
	inc	r0
	inc	r0
	cjne	@r0,#0xFF,00192$
	ljmp	00154$
00192$:
;	../fb_app_dim.c:96: send_ack();
	push	bits
	lcall	_send_ack
	pop	bits
;	../fb_app_dim.c:97: rs_send_s("\nwr_val_rq ");
	mov	dptr,#__str_0
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
;	../fb_app_dim.c:98: atp=eeprom[ASSOCTABPTR];			// Start Association Table
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
;	../fb_app_dim.c:99: assno=eeprom[atp];			// Erster Eintrag = Anzahl Einträge
	mov	r3,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar4
;	../fb_app_dim.c:100: datal=telegramm[8];                       //wert sichern nach respond ist er anders
	mov	r5,(_telegramm + 0x0008)
;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	a,#0x02
	add	a,r3
	mov	r6,a
	mov	a,#0x80
	anl	a,r5
	mov	r7,a
	clr	a
	cjne	r7,#0x80,00193$
	inc	a
00193$:
	mov	r7,a
	mov	a,#0x7F
	anl	a,r5
	add	a,#0xE7
	mov	r5,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r3
	inc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
00150$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	inc	r1
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00195$
	ljmp	00154$
00195$:
;	../fb_app_dim.c:104: gaposh=eeprom[atp+1+(n*2)];
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r2,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
;	../fb_app_dim.c:105: if(gapos==gaposh)			// Wenn Positionsnummer übereinstimmt
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00196$
	mov	a,#0x01
	sjmp	00197$
00196$:
	clr	a
00197$:
	pop	ar6
	jnz	00198$
	ljmp	00152$
00198$:
;	../fb_app_dim.c:107: objno=eeprom[atp+2+(n*2)];		// Objektnummer
	mov	a,r2
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
;	../fb_app_dim.c:108: commObjectNumber=objno;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar3
;	../fb_app_dim.c:109: dataw=telegramm[7]&0x3f;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x3F
	anl	a,(_telegramm + 0x0007)
	mov	@r0,a
;	../fb_app_dim.c:111: rs_send_s(" ");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
;	../fb_app_dim.c:112: rs_send_hex(objno);
	mov	dpl,r3
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_rs_send_hex
	pop	bits
;	../fb_app_dim.c:113: rs_send_s(" ");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
;	../fb_app_dim.c:114: rs_send_hex(dataw);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	push	bits
	lcall	_rs_send_hex
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
;	../fb_app_dim.c:115: for(c=0;c<2;c++)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	clr	a
	cjne	@r0,#0x01,00199$
	inc	a
00199$:
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
00146$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x02,00201$
00201$:
	jc	00202$
	ljmp	00152$
00202$:
;	../fb_app_dim.c:118: if(dataw==0&&commObjectNumber==c && sperren[c]==0) //schaltobjekt  aus,
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	jnz	00102$
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00102$
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_sperren
	mov	r0,a
	mov	a,@r0
	jnz	00102$
;	../fb_app_dim.c:120: dimmwert[c]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_dimmwert
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_dim.c:121: b_send=1;
	setb	b0
00102$:
;	../fb_app_dim.c:123: if(dataw==1&&commObjectNumber==c && sperren[c]==0) //schaltobjekt  EIN
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	jz	00106$
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00106$
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_sperren
	mov	r0,a
	mov	a,@r0
	jnz	00106$
;	../fb_app_dim.c:125: dimmwert[c]=helligkeittsstufe(einschathellikeit[c]-1,c);
	push	ar6
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_einschathellikeit
	mov	r1,a
	pop	ar0
	mov	ar6,@r1
	dec	r6
	push	ar5
	push	ar7
	push	ar0
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r6
	lcall	_helligkeittsstufe
	mov	r6,dpl
	dec	sp
	pop	ar0
	pop	ar7
	pop	ar5
	mov	@r0,ar6
;	../fb_app_dim.c:126: b_send=1;
	setb	b0
;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	pop	ar6
;	../fb_app_dim.c:126: b_send=1;
00106$:
;	../fb_app_dim.c:128: if(commObjectNumber==c+2 && sperren[c]==0)         //Dimmobjekt
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	mov	r4,#0x00
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r1
	mov	@r1,#0x00
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00211$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00211$
	mov	a,#0x01
	sjmp	00212$
00211$:
	clr	a
00212$:
	pop	ar6
	jz	00112$
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_sperren
	mov	r0,a
	mov	a,@r0
	jnz	00112$
;	../fb_app_dim.c:130: dimm_helldunkel[c]=dataw;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_dimm_helldunkel
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r1
	mov	@r0,a
;	../fb_app_dim.c:131: if(dataw==0) //nur senden beim aulassen der taste
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	jnz	00112$
;	../fb_app_dim.c:132: b_send=1;
	setb	b0
00112$:
;	../fb_app_dim.c:134: if(commObjectNumber==c+4 && sperren[c]==0)         //Wertobjekt
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	mov	r6,#0x00
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00216$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00216$
	mov	a,#0x01
	sjmp	00217$
00216$:
	clr	a
00217$:
	pop	ar6
	jz	00115$
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_sperren
	mov	r0,a
	mov	a,@r0
	jnz	00115$
;	../fb_app_dim.c:136: dimmwert[c]=telegramm[8];
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	r4,(_telegramm + 0x0008)
	mov	@r0,ar4
;	../fb_app_dim.c:137: b_send=1;
	setb	b0
00115$:
;	../fb_app_dim.c:139: if(commObjectNumber==c+0x0c && sperren[c]==0)      //Lichtzene
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r2,#0x00
	mov	a,#0x0C
	add	a,r3
	mov	r4,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00220$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00220$
	mov	a,#0x01
	sjmp	00221$
00220$:
	clr	a
00221$:
	pop	ar6
	jnz	00222$
	ljmp	00123$
00222$:
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_sperren
	mov	r0,a
	mov	a,@r0
	jz	00223$
	ljmp	00123$
00223$:
;	../fb_app_dim.c:141: if((datal&0x80)==0x80)        //Lichtzenen Speichern mit 0x8n n=szenennummer
	mov	a,r7
	jz	00120$
;	../fb_app_dim.c:143: if(eeprom[0xe3]&(1<<(4+c))!=0)// speichern nur wenn erlaubt
	push	ar6
	mov	dptr,#(_eeprom + 0x00e3)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x04
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r2
	mov	b,r6
	inc	b
	mov	r6,#0x01
	mov	r2,#0x00
	sjmp	00226$
00225$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r2
	rlc	a
	mov	r2,a
00226$:
	djnz	b,00225$
	mov	r3,#0x00
	mov	a,r4
	anl	ar6,a
	mov	a,r3
	anl	ar2,a
	mov	a,r6
	orl	a,r2
	pop	ar6
	jz	00121$
;	../fb_app_dim.c:144: write_obj_lz(0xe7+(datal&~0x80)+(c*8),dimmwert[c]);
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	swap	a
	rr	a
	anl	a,#0xf8
	add	a,r5
	mov	dpl,a
	push	ar5
	push	ar6
	push	ar7
	push	bits
	push	ar2
	push	ar3
	lcall	_write_obj_lz
	dec	sp
	dec	sp
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00121$
00120$:
;	../fb_app_dim.c:147: b_send=1;
	setb	b0
00121$:
;	../fb_app_dim.c:148: dimmwert[c]=eeprom[0xe7+(datal&~0x80)+(c*8)]; //Nummer der LZ
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r2,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,r2
	add	a,@r1
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r2,a
	mov	@r0,a
00123$:
;	../fb_app_dim.c:150: if(commObjectNumber==c+0x0a)      // Sperren
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,#0x0A
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	cjne	a,ar4,00228$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00228$
	mov	a,#0x01
	sjmp	00229$
00228$:
	clr	a
00229$:
	pop	ar6
	jnz	00230$
	ljmp	00135$
00230$:
;	../fb_app_dim.c:152: if(eeprom[0xc3]&(1<<(3+c))!=0)//invertiert
	push	ar6
	mov	dptr,#(_eeprom + 0x00c3)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	b,r2
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00232$
00231$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00232$:
	djnz	b,00231$
	mov	r6,#0x00
	mov	a,r4
	anl	ar2,a
	mov	a,r6
	anl	ar3,a
	pop	ar6
	mov	a,r2
	orl	a,r3
	jz	00129$
;	../fb_app_dim.c:154: if(dataw==1) sperr=0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	jz	00126$
	mov	r2,#0x00
	sjmp	00130$
00126$:
;	../fb_app_dim.c:155: else sperr=1;
	mov	r2,#0x01
	sjmp	00130$
00129$:
;	../fb_app_dim.c:157: else sperr=dataw;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar2,@r0
00130$:
;	../fb_app_dim.c:158: if (sperr==1)
	cjne	r2,#0x01,00132$
;	../fb_app_dim.c:160: dimmwert[c]=helligkeittsstufe(eeprom[0xdf+c]&0x0f,c);
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0xDF
	add	a,@r1
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r2,a
	anl	ar2,#0x0F
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r2
	lcall	_helligkeittsstufe
	mov	r2,dpl
	dec	sp
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	mov	@r0,ar2
;	../fb_app_dim.c:161: sperren[c]=1;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_sperren
	mov	r0,a
	mov	@r0,#0x01
	sjmp	00133$
00132$:
;	../fb_app_dim.c:165: dimmwert[c]=helligkeittsstufe(eeprom[0xdf+c]>>4,c);
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0xDF
	add	a,@r1
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0f
	mov	r2,a
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	mov	dpl,r2
	lcall	_helligkeittsstufe
	mov	r2,dpl
	dec	sp
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	mov	@r0,ar2
;	../fb_app_dim.c:166: sperren[c]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_sperren
	mov	r0,a
	mov	@r0,#0x00
00133$:
;	../fb_app_dim.c:168: b_send=1;
	setb	b0
00135$:
;	../fb_app_dim.c:171: if(b_send==1)
	mov	c,b0
	clr	a
	rlc	a
	mov	r2,a
	cjne	r2,#0x01,00237$
	sjmp	00238$
00237$:
	ljmp	00148$
00238$:
;	../fb_app_dim.c:173: write_obj_value(c,dimmwert[c]?1:0);     //Schaltobjekt
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	a,@r0
	jz	00156$
	mov	a,#0x01
00156$:
	mov	r2,a
	push	ar6
	mov	r3,#0x00
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
;	../fb_app_dim.c:174: write_obj_value(c+4,dimmwert[c]);       //wertobjekt
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	dpl,a
	push	ar2
	push	ar3
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	../fb_app_dim.c:175: if(eeprom[0xc3]&(1<<(6+c))!=0)// nur wenn  wertobjekt eingeschalten
	mov	dptr,#(_eeprom + 0x00c3)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	b,r3
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00241$
00240$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00241$:
	djnz	b,00240$
	mov	r6,#0x00
	mov	a,r2
	anl	ar3,a
	mov	a,r6
	anl	ar4,a
	pop	ar6
	mov	a,r3
	orl	a,r4
	jz	00137$
;	../fb_app_dim.c:176: respond(c+8,dimmwert[c]);
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	ar2,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	lcall	_respond
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
00137$:
;	../fb_app_dim.c:177: respond(c+6,(dimmwert[c]?1:0)+0x80);
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	a,@r0
	jz	00158$
	mov	a,#0x01
00158$:
	add	a,#0x80
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	dpl,a
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	lcall	_respond
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	../fb_app_dim.c:178: if(dimmwert[c]>0)
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_dimmwert
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	jz	00139$
;	../fb_app_dim.c:179: ausschalthellikeit[c]=dimmwert[c];
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_ausschalthellikeit
	mov	r0,a
	mov	@r0,ar2
00139$:
;	../fb_app_dim.c:180: b_send=0;
	clr	b0
00148$:
;	../fb_app_dim.c:115: for(c=0;c<2;c++)
	mov	r0,_bp
	inc	r0
	inc	@r0
	ljmp	00146$
00152$:
;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	ljmp	00150$
00154$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_lz'
;------------------------------------------------------------
;objvalue                  Allocated to stack - offset -4
;objno                     Allocated to registers r2 
;write_ok                  Allocated to registers b0 
;------------------------------------------------------------
;	../fb_app_dim.c:191: bit write_obj_lz(unsigned char objno,int objvalue)  // schreibt den aktuellen Wert eines Objektes ins 'EEprom'
;	-----------------------------------------
;	 function write_obj_lz
;	-----------------------------------------
_write_obj_lz:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	../fb_app_dim.c:193: bit write_ok=0;
	clr	b0
;	../fb_app_dim.c:194: while (!write_ok)
00103$:
	jb	b0,00105$
;	../fb_app_dim.c:196: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_app_dim.c:197: WRITE_BYTE(0x01,objno,objvalue);
	mov	_FMADRH,#0x1D
	mov	_FMADRL,r2
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	_FMDATA,@r0
;	../fb_app_dim.c:198: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_app_dim.c:199: if(!(FMCON & 0x01)) write_ok=1;
	mov	a,_FMCON
	jb	acc.0,00103$
	setb	b0
	sjmp	00103$
00105$:
;	../fb_app_dim.c:201: return(write_ok);
	mov	c,b0
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;objflags                  Allocated to registers r5 
;objvalue                  Allocated to registers 
;------------------------------------------------------------
;	../fb_app_dim.c:211: void read_value_req(void)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
;	../fb_app_dim.c:216: objno=find_first_objno(telegramm[3],telegramm[4]);      // erste Objektnummer zu empfangener GA finden
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_find_first_objno
	mov	r2,dpl
	dec	sp
;	../fb_app_dim.c:217: if(objno!=0xFF) {       // falls Gruppenadresse nicht gefunden
	cjne	r2,#0xFF,00109$
	ret
00109$:
;	../fb_app_dim.c:218: send_ack();
	push	ar2
	lcall	_send_ack
	pop	ar2
;	../fb_app_dim.c:220: objvalue=read_obj_value(objno);         // Objektwert aus USER-RAM lesen (Standard Einstellung)
	mov	dpl,r2
	push	ar2
	lcall	_read_obj_value
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	../fb_app_dim.c:222: objflags=read_objflags(objno);          // Objekt Flags lesen
	mov	dpl,r2
	push	ar2
	push	ar3
	push	ar4
	lcall	_read_objflags
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	../fb_app_dim.c:224: if((objflags&0x0C)==0x0C) send_value(0,objno,objvalue);
	anl	ar5,#0x0C
	cjne	r5,#0x0C,00105$
	push	ar3
	push	ar4
	push	ar2
	mov	dpl,#0x00
	lcall	_send_value
	dec	sp
	dec	sp
	dec	sp
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'respond'
;------------------------------------------------------------
;rval                      Allocated to stack - offset -3
;objno                     Allocated to registers r2 
;ga                        Allocated to registers r3 r4 
;------------------------------------------------------------
;	../fb_app_dim.c:229: void respond(unsigned char objno, unsigned char rval)	// sucht Gruppenadresse für das Objekt objno uns sendet ein Telegramm
;	-----------------------------------------
;	 function respond
;	-----------------------------------------
_respond:
	push	_bp
	mov	_bp,sp
;	../fb_app_dim.c:232: ga=find_ga(objno);					// wenn keine Gruppenadresse hintrlegt nix tun
	mov  r2,dpl
	push	ar2
	lcall	_find_ga
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	../fb_app_dim.c:233: if (ga!=0)
	mov	a,r3
	orl	a,r4
	jz	00106$
;	../fb_app_dim.c:236: telegramm[0]=0xBC;
	mov	_telegramm,#0xBC
;	../fb_app_dim.c:237: telegramm[1]=eeprom[ADDRTAB+1];
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0001),r5
;	../fb_app_dim.c:238: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0002),r5
;	../fb_app_dim.c:239: telegramm[3]=ga>>8;
	mov	ar5,r4
	mov	(_telegramm + 0x0003),r5
;	../fb_app_dim.c:240: telegramm[4]=ga;
	mov	(_telegramm + 0x0004),r3
;	../fb_app_dim.c:241: telegramm[5]=0xD1;
	mov	(_telegramm + 0x0005),#0xD1
;	../fb_app_dim.c:242: telegramm[6]=0x00;
	mov	(_telegramm + 0x0006),#0x00
;	../fb_app_dim.c:243: telegramm[7]=rval;
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	(_telegramm + 0x0007),@r0
;	../fb_app_dim.c:244: if(objno==8||objno==9)   //wert objekt rückmelden 1Byte
	cjne	r2,#0x08,00111$
	sjmp	00101$
00111$:
	cjne	r2,#0x09,00102$
00101$:
;	../fb_app_dim.c:246: telegramm[5]=0xE2;
	mov	(_telegramm + 0x0005),#0xE2
;	../fb_app_dim.c:247: telegramm[7]=0x80;
	mov	(_telegramm + 0x0007),#0x80
;	../fb_app_dim.c:248: telegramm[8]=rval;
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	(_telegramm + 0x0008),@r0
00102$:
;	../fb_app_dim.c:250: send_telegramm();
	lcall	_send_telegramm
00106$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.db 0x0A
	.ascii "wr_val_rq "
	.db 0x00
__str_1:
	.ascii " "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
