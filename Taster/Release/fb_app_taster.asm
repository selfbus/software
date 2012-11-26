;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Sat May 12 21:23:55 2012
;--------------------------------------------------------
	.module fb_app_taster
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tele_repeat_value
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
_timer::
	.ds 2
_timerflags::
	.ds 2
_button_buffer::
	.ds 1
_LEDSTATE::
	.ds 1
_dimmcompare::
	.ds 1
_dimmwert::
	.ds 1
_timercnt::
	.ds 8
_timerbase::
	.ds 8
_timerstate::
	.ds 8
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
;	../fb_app_taster.c:47: void port_changed(unsigned char portval)
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
;	../fb_app_taster.c:58: oldvalue=dimmcompare;
	mov	r6,_dimmcompare
;	../fb_app_taster.c:59: do{
	mov	r5,#0x00
00103$:
;	../fb_app_taster.c:60: if (oldvalue!=dimmcompare)// dimmcompare wird in der ISR T0 erhöht
	mov	a,r6
	cjne	a,_dimmcompare,00142$
	sjmp	00104$
00142$:
;	../fb_app_taster.c:62: n++;
	inc	r5
;	../fb_app_taster.c:63: oldvalue=dimmcompare;
	mov	r6,_dimmcompare
00104$:
;	../fb_app_taster.c:66: while (n<=200);				// warten auf 200 x Timer 0 (0.05ms)= 10ms
	mov	a,r5
	add	a,#0xff - 0xC8
	jnc	00103$
;	../fb_app_taster.c:67: if ((PORT & 0x0F) == portval) {
	mov	a,#0x0F
	anl	a,_P0
	mov	r6,a
	cjne	a,ar7,00118$
;	../fb_app_taster.c:68: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
	mov	r6,#0x00
00114$:
	cjne	r6,#0x04,00146$
00146$:
	jnc	00117$
;	../fb_app_taster.c:69: buttonpattern=1<<n;
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00150$
00148$:
	add	a,acc
00150$:
	djnz	b,00148$
;	../fb_app_taster.c:70: if ((portval & buttonpattern) && !(button_buffer & buttonpattern)) button_changed(n,0);	// Taster losgelassen
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
;	../fb_app_taster.c:71: if (!(portval & buttonpattern) && (button_buffer & buttonpattern)) button_changed(n,1);	// Taster gedrueckt
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
;	../fb_app_taster.c:68: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
	inc	r6
	sjmp	00114$
00117$:
;	../fb_app_taster.c:73: button_buffer=portval;	// aktuellen port wert in buffer fuer naechsten Vergleich uebernehmen
	mov	_button_buffer,r7
00118$:
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
;	../fb_app_taster.c:88: void button_changed(unsigned char buttonno, __bit buttonval)
;	-----------------------------------------
;	 function button_changed
;	-----------------------------------------
_button_changed:
	push	_bp
	mov	_bp,sp
	push	dpl
;	../fb_app_taster.c:91: __bit objval=0;
	clr	b1
;	../fb_app_taster.c:93: switch ((eeprom[FUNCTION+(buttonno>>1)] >> ((buttonno & 0x01)*4)) & 0x0F) {		// Funktion des Tasters
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
	sjmp	00252$
00251$:
	clr	c
	rrc	a
00252$:
	djnz	b,00251$
	anl	a,#0x0F
	mov	r6,a
	cjne	r6,#0x01,00253$
	sjmp	00101$
00253$:
	cjne	r6,#0x02,00254$
	ljmp	00111$
00254$:
	cjne	r6,#0x03,00255$
	ljmp	00139$
00255$:
	cjne	r6,#0x04,00256$
	ljmp	00146$
00256$:
	ljmp	00181$
;	../fb_app_taster.c:98: case 1:
00101$:
;	../fb_app_taster.c:99: if (buttonval) command = (((eeprom[COMMAND+(buttonno*4)]) >> 6) & 0x03);	// Befehl beim druecken
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
;	../fb_app_taster.c:100: else command = (((eeprom[COMMAND+(buttonno*4)]) >> 4) & 0x03);				// Befehl beim loslassen
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
;	../fb_app_taster.c:101: switch (command) {	// Befehl des Tasters bei Schalten
	cjne	r6,#0x01,00258$
	sjmp	00105$
00258$:
	cjne	r6,#0x02,00259$
	sjmp	00106$
00259$:
;	../fb_app_taster.c:102: case 1:		// EIN
	cjne	r6,#0x03,00108$
	sjmp	00107$
00105$:
;	../fb_app_taster.c:103: objval=1;
	setb	b1
;	../fb_app_taster.c:104: break;
;	../fb_app_taster.c:105: case 2:		// UM
	sjmp	00108$
00106$:
;	../fb_app_taster.c:106: objval = read_obj_value(buttonno)&0x01;
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
;	../fb_app_taster.c:107: objval = !objval;
	cpl	c
	mov	b1,c
;	../fb_app_taster.c:108: break;
;	../fb_app_taster.c:109: case 3:		// AUS
	sjmp	00108$
00107$:
;	../fb_app_taster.c:110: objval=0;
	clr	b1
;	../fb_app_taster.c:112: }
00108$:
;	../fb_app_taster.c:113: if (command) {	// nur wenn EIN, UM oder AUS (0=keine Funktion)
	mov	a,r6
	jnz	00261$
	ljmp	00181$
00261$:
;	../fb_app_taster.c:115: write_obj_value(buttonno,objval);
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
;	../fb_app_taster.c:116: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	bits
	lcall	_send_obj_value
	pop	bits
;	../fb_app_taster.c:118: switch_led(buttonno, objval);		// LED schalten
	mov	c,b1
	mov	b[0],c
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
;	../fb_app_taster.c:120: break;
	ljmp	00181$
;	../fb_app_taster.c:126: case 2:
00111$:
;	../fb_app_taster.c:127: bedienung=eeprom[COMMAND+(buttonno*4)]&0x30;
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
;	../fb_app_taster.c:128: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
	jb	b0,00262$
	ljmp	00137$
00262$:
;	../fb_app_taster.c:129: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
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
;	../fb_app_taster.c:130: timercnt[buttonno+4]=eeprom[0xD6+(buttonno*4)];	// Faktor Dauer			
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
;	../fb_app_taster.c:145: */			timerbase[buttonno+4]=(eeprom[0xD5+(buttonno*4)]&0x70)>>4;// Basis Dauer zwischen kurz und langzeit
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
;	../fb_app_taster.c:146: if (bedienung==0x20) {// umschalten der dimmrichtung...
	cjne	r5,#0x20,00118$
;	../fb_app_taster.c:147: if(read_obj_value(buttonno+8)&0x08)bedienung=0x30;//wenn heller, dann dunkler
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
;	../fb_app_taster.c:148: else bedienung=0x10;//sonst heller
	mov	r5,#0x10
00118$:
;	../fb_app_taster.c:150: if (bedienung==0x10){	// heller
	cjne	r5,#0x10,00120$
;	../fb_app_taster.c:151: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0xF0)>>4)+0x20;	// dimmen
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
;	../fb_app_taster.c:153: if(bedienung==0x30){	//  dunkler
	cjne	r5,#0x30,00269$
	sjmp	00270$
00269$:
	ljmp	00181$
00270$:
;	../fb_app_taster.c:154: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0x0F))+0x20;	// dimmen
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
;	../fb_app_taster.c:160: if ((timerstate[buttonno+4]& 0xF0)==0x20) { // wenn delaytimer noch lauft, dann Schalten, also EIS1 telegramm senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar4,@r1
	anl	ar4,#0xF0
	cjne	r4,#0x20,00134$
;	../fb_app_taster.c:161: if(bedienung==0x20) { //umschalten des Schaltzustandes
	cjne	r5,#0x20,00127$
;	../fb_app_taster.c:162: if(read_obj_value(buttonno)& 0x01)bedienung=0x30;//wenn ein, dann aus
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
;	../fb_app_taster.c:163: else bedienung=0x10; // sonst ein
	mov	r5,#0x10
00127$:
;	../fb_app_taster.c:165: if(bedienung== 0x10){	//  ein
	cjne	r5,#0x10,00129$
;	../fb_app_taster.c:166: write_obj_value(buttonno,1);
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
;	../fb_app_taster.c:167: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
;	../fb_app_taster.c:168: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00135$
00129$:
;	../fb_app_taster.c:171: write_obj_value(buttonno,0);
	clr	a
	push	acc
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	dec	sp
	dec	sp
;	../fb_app_taster.c:172: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
;	../fb_app_taster.c:173: switch_led(buttonno,0);
	clr	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00135$
00134$:
;	../fb_app_taster.c:177: write_obj_value(buttonno+8,read_obj_value(buttonno+8)& 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
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
;	../fb_app_taster.c:178: if ((eeprom[COMMAND+(buttonno*4)] & 0x40) == 0) {	// ... natuerlich nur wenn parameter dementsprechend (0=senden!!!)
	mov	a,#0xD3
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	jb	acc.6,00135$
;	../fb_app_taster.c:179: send_obj_value(buttonno+8);// Stop Telegramm senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	lcall	_send_obj_value
00135$:
;	../fb_app_taster.c:182: timercnt[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r7,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:183: timerstate[buttonno+4]=0;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:185: break;
	ljmp	00181$
;	../fb_app_taster.c:191: case 3:
00139$:
;	../fb_app_taster.c:192: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
	jb	b0,00279$
	ljmp	00144$
00279$:
;	../fb_app_taster.c:194: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
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
;	../fb_app_taster.c:195: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
;	../fb_app_taster.c:196: switch_led(buttonno,1);	// Status-LED schalten (hier nur nie,immer,betätigung)
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar6
	pop	ar7
;	../fb_app_taster.c:197: timercnt[buttonno+4]=eeprom[0xD5+(buttonno*4)];	// Faktor Dauer			
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
;	../fb_app_taster.c:212: */			timerbase[buttonno+4]=(eeprom[0xD4+(buttonno*4)]&0x06)*2;// Basis Dauer zwischen kurz und langzeit
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
;	../fb_app_taster.c:213: timerstate[buttonno+4]=((eeprom[0xD3+(buttonno*4)]&0x10)>>4)+0x30;
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
;	../fb_app_taster.c:217: if (timerstate[buttonno+4] == 0x40) {//innerhalb T2
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x40,00141$
;	../fb_app_taster.c:218: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
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
;	../fb_app_taster.c:219: send_obj_value(buttonno);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
	ljmp	00181$
00141$:
;	../fb_app_taster.c:223: timerstate[buttonno+4]=0;// T2 bereits abgelaufen
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:226: break;
	ljmp	00181$
;	../fb_app_taster.c:232: case 4:	// Wertgeber..
00146$:
;	../fb_app_taster.c:233: switch ((eeprom[0xD3+(buttonno*4)]>>4)& 0x07){// Art des Wertgebers holen
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
	jnc	00282$
	ljmp	00181$
00282$:
	mov	a,r6
	add	a,r6
	add	a,r6
	mov	dptr,#00283$
	jmp	@a+dptr
00283$:
	ljmp	00147$
	ljmp	00152$
	ljmp	00159$
	ljmp	00165$
	ljmp	00171$
;	../fb_app_taster.c:234: case 0: // ++++++++ Lichtszenenabruf ohne Speicherfunktion
00147$:
;	../fb_app_taster.c:235: if(buttonval){
	jb	b0,00284$
	ljmp	00181$
00284$:
;	../fb_app_taster.c:236: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
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
;	../fb_app_taster.c:237: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
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
;	../fb_app_taster.c:238: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
;	../fb_app_taster.c:239: switch_led(buttonno,0);
	clr	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
;	../fb_app_taster.c:241: break;
	ljmp	00181$
;	../fb_app_taster.c:242: case 1:	// ++++++++ Lichtszenenabruf mit Speicherfunktion
00152$:
;	../fb_app_taster.c:243: if(buttonval){// beim drücken
	jnb	b0,00157$
;	../fb_app_taster.c:245: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
;	../fb_app_taster.c:246: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
;	../fb_app_taster.c:247: timerstate[buttonno+4]=0x50;// Betätigung länger 5 sekunden bei Lichtszene
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x50
	ljmp	00181$
00157$:
;	../fb_app_taster.c:251: if (timerstate[buttonno+4]==0x50){// wenn 5 sekunden noch nicht erreicht LZ senden
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x50,00154$
;	../fb_app_taster.c:252: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
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
;	../fb_app_taster.c:253: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	sjmp	00155$
00154$:
;	../fb_app_taster.c:256: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]|0x80);
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
;	../fb_app_taster.c:258: send_obj_value(buttonno+8);
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	dpl,a
	lcall	_send_obj_value
;	../fb_app_taster.c:259: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:260: timercnt[buttonno+4]=0;
	mov	a,r6
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:262: break;
	ljmp	00181$
;	../fb_app_taster.c:263: case 2: // ++++++  Helligkeitswertgeber
00159$:
;	../fb_app_taster.c:264: if (buttonval){
	jnb	b0,00163$
;	../fb_app_taster.c:265: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
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
;	../fb_app_taster.c:266: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
;	../fb_app_taster.c:267: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar7
;	../fb_app_taster.c:268: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
	mov	a,#0xD3
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.7,00290$
	ljmp	00181$
00290$:
;	../fb_app_taster.c:269: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
;	../fb_app_taster.c:270: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
;	../fb_app_taster.c:271: timerstate[buttonno+4]=0x70;// Betätigung länger 5 sekunden bei Dimmwert
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x70
	ljmp	00181$
00163$:
;	../fb_app_taster.c:278: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:280: break;
	ljmp	00181$
;	../fb_app_taster.c:281: case 3:	// ++++++  Temperaturwertgeber
00165$:
;	../fb_app_taster.c:282: if (buttonval){
	jnb	b0,00169$
;	../fb_app_taster.c:283: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
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
;	../fb_app_taster.c:284: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
;	../fb_app_taster.c:285: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar7
;	../fb_app_taster.c:286: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
	mov	a,#0xD3
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jnb	acc.7,00292$
	ljmp	00181$
00292$:
;	../fb_app_taster.c:287: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
;	../fb_app_taster.c:288: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
;	../fb_app_taster.c:289: timerstate[buttonno+4]=0x90;// Betätigung länger 5 sekunden bei Dimmwert
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x90
	ljmp	00181$
00169$:
;	../fb_app_taster.c:297: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:299: break;
	ljmp	00181$
;	../fb_app_taster.c:300: case 4: // ++++++   Dimmwertgeber
00171$:
;	../fb_app_taster.c:301: if (buttonval){
	jnb	b0,00177$
;	../fb_app_taster.c:302: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
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
;	../fb_app_taster.c:303: send_obj_value(buttonno+8);
	mov	dpl,r4
	lcall	_send_obj_value
;	../fb_app_taster.c:304: switch_led(buttonno,1);
	setb	b[0]
	mov	bits,b
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_switch_led
	pop	ar7
;	../fb_app_taster.c:305: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
	mov	a,#0xD3
	add	a,r7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	jb	acc.7,00181$
;	../fb_app_taster.c:306: timercnt[buttonno+4]=156;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x9C
;	../fb_app_taster.c:307: timerbase[buttonno+4]=2; //(32ms)
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x02
;	../fb_app_taster.c:308: timerstate[buttonno+4]=0xB0;// Betätigung länger 5 sekunden bei Dimmwert
	mov	a,r6
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xB0
	sjmp	00181$
00177$:
;	../fb_app_taster.c:312: if (timerstate[buttonno+4]==0xC0){
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0xC0,00175$
;	../fb_app_taster.c:314: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
;	../fb_app_taster.c:315: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_app_taster.c:316: WRITE_BYTE(0x01,0xD5+(buttonno*4),read_obj_value(buttonno+8));
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
;	../fb_app_taster.c:317: STOP_WRITECYCLE // Lichtszene speichern
	mov	_FMCON,#0x68
;	../fb_app_taster.c:318: EA=1;
	setb	_IEN0_7
00175$:
;	../fb_app_taster.c:321: timerstate[buttonno+4]=0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:328: }
00181$:
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_taster.c:355: unsigned long read_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function read_obj_value
;	-----------------------------------------
_read_obj_value:
	mov	r7,dpl
;	../fb_app_taster.c:358: if(objno<4)	return(object_value[objno]);
	cjne	r7,#0x04,00108$
00108$:
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
	ret
00102$:
;	../fb_app_taster.c:359: else return((object_value[objno-4]<<8)+object_value[objno]);
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
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_value'
;------------------------------------------------------------
;objval                    Allocated to stack - _bp -4
;objno                     Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_taster.c:363: void write_obj_value(unsigned char objno, unsigned int objval)
;	-----------------------------------------
;	 function write_obj_value
;	-----------------------------------------
_write_obj_value:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../fb_app_taster.c:365: if(objno<4)object_value[objno]=objval;
	cjne	r7,#0x04,00108$
00108$:
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
;	../fb_app_taster.c:367: object_value[objno-4]=objval>>8;
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
;	../fb_app_taster.c:368: object_value[objno]=objval&0xFF;
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;objflags                  Allocated to registers r6 
;objtype                   Allocated to registers r7 
;gapos                     Allocated to stack - _bp +1
;atp                       Allocated to registers r6 
;assno                     Allocated to stack - _bp +2
;n                         Allocated to stack - _bp +3
;gaposh                    Allocated to registers r4 
;------------------------------------------------------------
;	../fb_app_taster.c:380: void write_value_req(void)
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	../fb_app_taster.c:384: gapos=gapos_in_gat(telegramm[3],telegramm[4]);
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	mov	r0,_bp
	inc	r0
	mov	@r0,ar7
;	../fb_app_taster.c:385: if (gapos!=0xFF)	
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0xFF,00147$
	ljmp	00122$
00147$:
;	../fb_app_taster.c:387: atp=eeprom[ASSOCTABPTR];			// Association Table Pointer
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
;	../fb_app_taster.c:388: assno=eeprom[atp];					// Erster Eintrag = Anzahl Eintraege
	mov	r6,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar5
;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	inc	r6
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x00
00118$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00148$
	ljmp	00122$
00148$:
;	../fb_app_taster.c:391: gaposh=eeprom[atp+1+(n*2)];
	push	ar4
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r2,a
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
;	../fb_app_taster.c:392: if(gapos==gaposh) {					// Wenn Positionsnummer uebereinstimmt
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00149$
	sjmp	00150$
00149$:
	pop	ar4
	ljmp	00120$
00150$:
	pop	ar4
;	../fb_app_taster.c:393: objno=eeprom[atp+2+(n*2)];			// Objektnummer
	push	ar6
	mov	a,r2
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
;	../fb_app_taster.c:394: objflags=read_objflags(objno);		// Objekt Flags lesen
	mov	r2,a
	mov	dpl,a
	push	ar4
	push	ar2
	lcall	_read_objflags
	mov	r6,dpl
	pop	ar2
	pop	ar4
;	../fb_app_taster.c:395: if((objflags&0x14)==0x14) {			// Kommunikation zulaessig (Bit 2 = communication enable) + Schreiben zulaessig (Bit 4 = write enable)
	anl	ar6,#0x14
	cjne	r6,#0x14,00151$
	sjmp	00152$
00151$:
	pop	ar6
	ljmp	00120$
00152$:
	pop	ar6
;	../fb_app_taster.c:396: if (objno<12) {					// max 12 objekte (0-11)
	cjne	r2,#0x0C,00153$
00153$:
	jc	00154$
	ljmp	00120$
00154$:
;	../fb_app_taster.c:397: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
	push	ar4
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,r4
	add	a,#0x04
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
;	../fb_app_taster.c:398: if (objtype<=6){
	clr	c
	mov	a,#0x06
	subb	a,r7
	pop	ar4
	jc	00102$
;	../fb_app_taster.c:399: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
	push	ar4
	mov	a,#0x3F
	anl	a,(_telegramm + 0x0007)
	mov	r4,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r2
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar6
	pop	ar7
;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	pop	ar4
;	../fb_app_taster.c:399: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
00102$:
;	../fb_app_taster.c:401: if (objtype==7)write_obj_value(objno,telegramm[8]);
	cjne	r7,#0x07,00104$
	push	ar4
	mov	r4,(_telegramm + 0x0008)
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r2
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar6
	pop	ar7
;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	pop	ar4
;	../fb_app_taster.c:401: if (objtype==7)write_obj_value(objno,telegramm[8]);
00104$:
;	../fb_app_taster.c:402: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
	cjne	r7,#0x08,00106$
	push	ar4
	mov	r4,(_telegramm + 0x0009)
	mov	r5,#0x00
	mov	r3,(_telegramm + 0x0008)
	mov	ar7,r3
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	push	ar6
	push	ar4
	push	ar2
	push	ar4
	push	ar5
	mov	dpl,r2
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar6
;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	pop	ar4
;	../fb_app_taster.c:402: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
00106$:
;	../fb_app_taster.c:403: if ((objno<4) && ((eeprom[COMMAND+(objno*4)]) & 0x07) <4) switch_led(objno,telegramm[7]&0x01);	// LED nur schalten, wenn nicht auf Betï¿½tigungsanzeige parametriert
	cjne	r2,#0x04,00160$
00160$:
	jnc	00120$
	mov	a,r2
	add	a,r2
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x07
	cjne	r7,#0x04,00162$
00162$:
	jnc	00120$
	mov	a,(_telegramm + 0x0007)
	anl	a,#0x01
	add	a,#0xff
	mov  b0,c
	mov	b[0],c
	push	ar6
	push	ar4
	mov	bits,b
	mov	dpl,r2
	lcall	_switch_led
	pop	ar4
	pop	ar6
00120$:
;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	ljmp	00118$
00122$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;objflags                  Allocated to registers r6 
;objvalue                  Allocated to registers r3 r4 
;------------------------------------------------------------
;	../fb_app_taster.c:419: void read_value_req(void)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
;	../fb_app_taster.c:424: objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_find_first_objno
	mov	r7,dpl
	dec	sp
;	../fb_app_taster.c:425: if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
	cjne	r7,#0xFF,00111$
	ret
00111$:
;	../fb_app_taster.c:428: objvalue=read_obj_value(objno);		// Objektwert aus USER-RAM lesen (Standard Einstellung)
	mov	dpl,r7
	push	ar7
	lcall	_read_obj_value
	mov	r3,dpl
	mov	r4,dph
	pop	ar7
;	../fb_app_taster.c:430: objflags=read_objflags(objno);		// Objekt Flags lesen
	mov	dpl,r7
	push	ar7
	push	ar4
	push	ar3
	lcall	_read_objflags
	mov	r6,dpl
	pop	ar3
	pop	ar4
	pop	ar7
;	../fb_app_taster.c:433: if((objflags&0x0C)==0x0C) {
	anl	ar6,#0x0C
	cjne	r6,#0x0C,00105$
;	../fb_app_taster.c:434: write_obj_value(objno,objvalue);
	push	ar7
	push	ar3
	push	ar4
	mov	dpl,r7
	lcall	_write_obj_value
	dec	sp
	dec	sp
	pop	ar7
;	../fb_app_taster.c:435: send_obj_value(objno+0x40);
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	ljmp	_send_obj_value
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'switch_led'
;------------------------------------------------------------
;onoff                     Allocated to registers b0 
;ledno                     Allocated to registers r7 
;command                   Allocated to registers r6 
;ledvar                    Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_taster.c:450: void switch_led(unsigned char ledno, __bit onoff)
;	-----------------------------------------
;	 function switch_led
;	-----------------------------------------
_switch_led:
	mov	r7,dpl
;	../fb_app_taster.c:454: if (ledno<4) {
	cjne	r7,#0x04,00130$
00130$:
	jc	00131$
	ret
00131$:
;	../fb_app_taster.c:455: command = ((eeprom[COMMAND+(ledno*4)]) & 0x07);	// Befehl der Status LED
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x07
;	../fb_app_taster.c:456: switch (command) {
	cjne	r6,#0x00,00132$
	sjmp	00101$
00132$:
	cjne	r6,#0x01,00133$
	sjmp	00102$
00133$:
	cjne	r6,#0x03,00134$
	sjmp	00103$
00134$:
;	../fb_app_taster.c:457: case 0:		// immer AUS
	cjne	r6,#0x04,00109$
	sjmp	00104$
00101$:
;	../fb_app_taster.c:458: onoff=0;
	clr	b0
;	../fb_app_taster.c:459: break;
;	../fb_app_taster.c:460: case 1:		// immer an
	sjmp	00109$
00102$:
;	../fb_app_taster.c:461: onoff=1;
	setb	b0
;	../fb_app_taster.c:462: break;
;	../fb_app_taster.c:464: case 3:		// LED = invertierte Statusanzeige
	sjmp	00109$
00103$:
;	../fb_app_taster.c:465: onoff=!onoff;
	cpl	b0
;	../fb_app_taster.c:466: break;
;	../fb_app_taster.c:467: case 4:		// LED = Betaetigungsanzeige
	sjmp	00109$
00104$:
;	../fb_app_taster.c:468: onoff=1;	// erstmal an beim druecken der Taste
	setb	b0
;	../fb_app_taster.c:469: timerstate[ledno]= 0x10;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x10
;	../fb_app_taster.c:470: timerbase[ledno]=1;
	mov	a,r7
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x01
;	../fb_app_taster.c:471: switch (eeprom[LED_DURATION]) {		// dann ueber delay-timer aus
	mov	dptr,#(_eeprom + 0x00ce)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	cjne	r6,#0x26,00136$
	sjmp	00105$
00136$:
	cjne	r6,#0x76,00137$
	sjmp	00106$
00137$:
;	../fb_app_taster.c:472: case 38:	// 0,75 sec
	cjne	r6,#0x96,00109$
	sjmp	00107$
00105$:
;	../fb_app_taster.c:473: timercnt[ledno]=47;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x2F
;	../fb_app_taster.c:474: break;
;	../fb_app_taster.c:475: case 118:	// 2,25 sec
	sjmp	00109$
00106$:
;	../fb_app_taster.c:476: timercnt[ledno]=141;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x8D
;	../fb_app_taster.c:477: break;
;	../fb_app_taster.c:478: case 150:	// 3 sec
	sjmp	00109$
00107$:
;	../fb_app_taster.c:479: timercnt[ledno]=188;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0xBC
;	../fb_app_taster.c:482: }
00109$:
;	../fb_app_taster.c:483: ledvar=LEDSTATE;
	mov	r6,_LEDSTATE
;	../fb_app_taster.c:484: ledvar&= ~(1<<(ledno+4));	// LEDs sind an Pin 4-7
	mov	a,r7
	add	a,#0x04
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	cpl	a
	anl	ar6,a
;	../fb_app_taster.c:485: ledvar |= ((onoff<<(ledno+4)) | 0x0F);	// unteren 4 bits immer auf 1 lassen !!!
	mov	c,b0
	clr	a
	rlc	a
	mov	r5,a
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00144$
00142$:
	add	a,acc
00144$:
	djnz	b,00142$
	orl	a,#0x0F
	orl	a,r6
	mov	_LEDSTATE,a
;	../fb_app_taster.c:486: LEDSTATE=ledvar;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_int'
;------------------------------------------------------------
;	../fb_app_taster.c:491: void timer0_int  (void) __interrupt (1) // Interrupt T0 für soft PWM LED
;	-----------------------------------------
;	 function timer0_int
;	-----------------------------------------
_timer0_int:
	push	acc
	push	psw
;	../fb_app_taster.c:493: dimmcompare++;
	inc	_dimmcompare
;	../fb_app_taster.c:494: TF0=0;
	clr	_TCON_5
;	../fb_app_taster.c:495: if((dimmcompare) <= dimmwert) PORT = LEDSTATE | 0x0F;// LEDs ein
	clr	c
	mov	a,_dimmwert
	subb	a,_dimmcompare
	jc	00102$
	mov	a,#0x0F
	orl	a,_LEDSTATE
	mov	_P0,a
	sjmp	00104$
00102$:
;	../fb_app_taster.c:496: else PORT = 0x0F;//LEDs aus
	mov	_P0,#0x0F
00104$:
	pop	psw
	pop	acc
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
;	../fb_app_taster.c:509: void delay_timer(void)
;	-----------------------------------------
;	 function delay_timer
;	-----------------------------------------
_delay_timer:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	../fb_app_taster.c:515: RTCCON=0x60;
	mov	_RTCCON,#0x60
;	../fb_app_taster.c:516: RTCH=0x00;//RTCH=0x01; 
	mov	_RTCH,#0x00
;	../fb_app_taster.c:517: RTCL=0xE6;//RTCL=0xCD;	
	mov	_RTCL,#0xE6
;	../fb_app_taster.c:518: RTCCON=0x61; //	start_rtc(8) RTC neu starten mit 4ms
	mov	_RTCCON,#0x61
;	../fb_app_taster.c:520: timer++;
	inc	_timer
	clr	a
	cjne	a,_timer,00219$
	inc	(_timer + 1)
00219$:
;	../fb_app_taster.c:521: timerflags = timer&(~(timer-1));// flanke generieren
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
;	../fb_app_taster.c:522: for(n=0;n<16;n++){
	mov	r7,#0x00
00148$:
	cjne	r7,#0x10,00220$
00220$:
	jnc	00151$
;	../fb_app_taster.c:523: if(timerflags & 0x0001){// positive flags erzeugen und schieben
	mov	a,_timerflags
	jnb	acc.0,00106$
;	../fb_app_taster.c:524: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
	mov	r6,#0x00
00144$:
	cjne	r6,#0x08,00223$
00223$:
	jnc	00106$
;	../fb_app_taster.c:525: if( timercnt[m]){
	mov	a,r6
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	jz	00146$
;	../fb_app_taster.c:526: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
	mov	a,r6
	add	a,#_timerbase
	mov	r0,a
	mov	ar4,@r0
	anl	ar4,#0x0F
	mov	a,r4
	cjne	a,ar7,00146$
;	../fb_app_taster.c:527: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
	mov	a,r5
	dec	a
	mov	@r1,a
00146$:
;	../fb_app_taster.c:524: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
	inc	r6
	sjmp	00144$
00106$:
;	../fb_app_taster.c:532: timerflags = timerflags>>1;
	mov	a,(_timerflags + 1)
	clr	c
	rrc	a
	xch	a,_timerflags
	rrc	a
	xch	a,_timerflags
	mov	(_timerflags + 1),a
;	../fb_app_taster.c:522: for(n=0;n<16;n++){
	inc	r7
	sjmp	00148$
00151$:
;	../fb_app_taster.c:535: for(objno=0;objno<8;objno++) {
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
00152$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x08,00228$
00228$:
	jc	00229$
	ljmp	00156$
00229$:
;	../fb_app_taster.c:536: if(!timercnt[objno]) {	// ... es ist also soweit
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	jz	00230$
	ljmp	00154$
00230$:
;	../fb_app_taster.c:537: delay_value=timerstate[objno]& 0x0F;
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
;	../fb_app_taster.c:539: switch(timerstate[objno] & 0xF0){
	anl	ar6,#0xF0
	cjne	r6,#0x10,00231$
	sjmp	00107$
00231$:
	cjne	r6,#0x20,00232$
	sjmp	00108$
00232$:
	cjne	r6,#0x30,00233$
	ljmp	00112$
00233$:
	cjne	r6,#0x40,00234$
	ljmp	00116$
00234$:
	cjne	r6,#0x50,00235$
	ljmp	00117$
00235$:
	cjne	r6,#0x60,00236$
	ljmp	00154$
00236$:
	cjne	r6,#0x70,00237$
	ljmp	00120$
00237$:
	cjne	r6,#0x80,00238$
	ljmp	00120$
00238$:
	cjne	r6,#0x90,00239$
	ljmp	00128$
00239$:
	cjne	r6,#0xA0,00240$
	ljmp	00128$
00240$:
	cjne	r6,#0xB0,00241$
	ljmp	00133$
00241$:
	cjne	r6,#0xC0,00242$
	ljmp	00133$
00242$:
	ljmp	00154$
;	../fb_app_taster.c:541: case 0x10:
00107$:
;	../fb_app_taster.c:543: ledvar=LEDSTATE;
	mov	r6,_LEDSTATE
;	../fb_app_taster.c:544: ledvar &= ~(1<<(objno+4));	// LEDs sind an Pin 4-7
	mov	r1,_bp
	inc	r1
	mov	a,#0x04
	add	a,@r1
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00245$
00243$:
	add	a,acc
00245$:
	djnz	b,00243$
	cpl	a
	mov	r4,a
	anl	ar6,a
;	../fb_app_taster.c:545: ledvar |= 0x0F;				// unbedingt taster pins wieder auf 1
	mov	a,#0x0F
	orl	a,r6
	mov	_LEDSTATE,a
;	../fb_app_taster.c:547: timerstate[objno]=0;
	mov	@r0,#0x00
;	../fb_app_taster.c:548: break;
	ljmp	00154$
;	../fb_app_taster.c:549: case 0x20:	// Dimmen
00108$:
;	../fb_app_taster.c:550: write_obj_value(objno+4,delay_value);
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
;	../fb_app_taster.c:551: send_obj_value(objno+4);		// dimmkommando senden
	mov	dpl,r3
	lcall	_send_obj_value
;	../fb_app_taster.c:553: if(!(eeprom[0xD5+((objno-4)*4)]& 0x08)){// wenn Telegrammwiederholung eingeschalten
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
;	../fb_app_taster.c:580: */				timercnt[objno]=tele_repeat_value[eeprom[0xD5+((objno-4)*4)]& 0x07];	
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
;	../fb_app_taster.c:582: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
	ljmp	00154$
00110$:
;	../fb_app_taster.c:585: timercnt[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:586: timerstate[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:588: break;
	ljmp	00154$
;	../fb_app_taster.c:591: case 0x30:	// 0x30, 0x31 für langzeit telegramm senden
00112$:
;	../fb_app_taster.c:592: write_obj_value(objno+4,delay_value & 0x01);
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
;	../fb_app_taster.c:593: send_obj_value(objno+4);				// Langzeit Telegramm senden
	mov	dpl,r4
	lcall	_send_obj_value
;	../fb_app_taster.c:596: timercnt[objno]=eeprom[DEL_FACTOR2+((objno-4)*4)];	// Faktor Dauer	T2		
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
;	../fb_app_taster.c:597: timerbase[objno]=(eeprom[0xD4+((objno-4)*4)]&0x60)>>3;	// Basis Dauer T2
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r3,a
	mov	a,#0xD4
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x60
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r5,a
	mov	r0,ar3
	mov	@r0,ar5
;	../fb_app_taster.c:598: if (timercnt[objno]) {	// wenn keine lamellenverstellzeit dann nix tun
	mov	a,r4
	jz	00114$
;	../fb_app_taster.c:599: timerstate[objno]=((eeprom[COMMAND+((objno-4)*4)]&0x10)>>4)+0x40; // 0x40,0x41 fuer ende T2 (lamellenvestellzeit)
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
;	../fb_app_taster.c:602: timercnt[objno]=0;
	mov	r0,ar6
	mov	@r0,#0x00
;	../fb_app_taster.c:603: timerstate[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:605: break;			
	ljmp	00154$
;	../fb_app_taster.c:606: case 0x40:
00116$:
;	../fb_app_taster.c:608: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
	mov	@r0,#0x00
;	../fb_app_taster.c:609: timercnt[objno]=0;
	mov	@r1,#0x00
;	../fb_app_taster.c:610: break;
	ljmp	00154$
;	../fb_app_taster.c:611: case 0x50: // Wertgeber Lichtszene lang drücken zum speichern
00117$:
;	../fb_app_taster.c:612: switch_led(objno-4,1);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	setb	b[0]
	mov	bits,b
	lcall	_switch_led
;	../fb_app_taster.c:613: timerstate[objno]=0x60;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x60
;	../fb_app_taster.c:614: break;
	ljmp	00154$
;	../fb_app_taster.c:619: case 0x80: // Wertgeber Helligkeit verstellen
00120$:
;	../fb_app_taster.c:620: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:621: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
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
;	../fb_app_taster.c:622: i_tmp=(eeprom[0xD5+4*(objno-4)])<<8;
	mov	a,#0xD5
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	r5,#0x00
;	../fb_app_taster.c:623: i_tmp +=eeprom[0xD6+4*(objno-4)];
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
;	../fb_app_taster.c:624: if (i_tmp==0x39FD || i_tmp==0x3828)	//Differenz ausgleichen
	cjne	r5,#0xFD,00248$
	cjne	r4,#0x39,00248$
	sjmp	00121$
00248$:
	cjne	r5,#0x28,00122$
	cjne	r4,#0x38,00122$
00121$:
;	../fb_app_taster.c:626: i_tmp--;
	dec	r5
	cjne	r5,#0xFF,00251$
	dec	r4
00251$:
00122$:
;	../fb_app_taster.c:628: i_tmp -= 0x27;
	mov	a,r5
	add	a,#0xD9
	mov	r5,a
	mov	a,r4
	addc	a,#0xFF
;	../fb_app_taster.c:630: if(!(i_tmp&0x0800)){
	mov	r4,a
	jb	acc.3,00125$
;	../fb_app_taster.c:631: i_tmp=0x03C94;
	mov	r5,#0x94
	mov	r4,#0x3C
	sjmp	00126$
00125$:
;	../fb_app_taster.c:634: switch_led(objno-4,1);
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
;	../fb_app_taster.c:636: write_obj_value(objno+4,i_tmp);// wir rechnen immer mit exp 2^7
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
;	../fb_app_taster.c:637: timerstate[objno]=0x80;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x80
;	../fb_app_taster.c:638: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
;	../fb_app_taster.c:639: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_app_taster.c:640: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
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
;	../fb_app_taster.c:641: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
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
;	../fb_app_taster.c:642: STOP_WRITECYCLE // Luxwert speichern
	mov	_FMCON,#0x68
;	../fb_app_taster.c:643: EA=1;
	setb	_IEN0_7
;	../fb_app_taster.c:644: send_obj_value(objno+4);
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	lcall	_send_obj_value
;	../fb_app_taster.c:646: break;
	ljmp	00154$
;	../fb_app_taster.c:649: case 0xA0: // Wertgeber Temperatur verstellen
00128$:
;	../fb_app_taster.c:650: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:651: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
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
;	../fb_app_taster.c:652: i_tmp=(eeprom[0xD5+4*(objno-4)]&0x07)<<8;
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
;	../fb_app_taster.c:653: i_tmp +=eeprom[0xD6+4*(objno-4)];
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
;	../fb_app_taster.c:654: if(i_tmp>=0x0032){
	clr	c
	mov	a,r5
	subb	a,#0x32
	mov	a,r4
	subb	a,#0x00
	jc	00130$
;	../fb_app_taster.c:655: i_tmp -= 0x32;
	mov	a,r5
	add	a,#0xCE
	mov	r5,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
;	../fb_app_taster.c:656: switch_led(objno-4,1);
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
;	../fb_app_taster.c:659: i_tmp=0x07D0;
	mov	r5,#0xD0
	mov	r4,#0x07
00131$:
;	../fb_app_taster.c:661: write_obj_value(objno+4,i_tmp|0x0800);// wir rechnen immer mit exp 2^1
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
;	../fb_app_taster.c:662: timerstate[objno]=0xA0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xA0
;	../fb_app_taster.c:663: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
	clr	_IEN0_7
;	../fb_app_taster.c:664: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_app_taster.c:665: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
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
;	../fb_app_taster.c:666: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
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
;	../fb_app_taster.c:667: STOP_WRITECYCLE // Temperaturwert speichern
	mov	_FMCON,#0x68
;	../fb_app_taster.c:668: EA=1;
	setb	_IEN0_7
;	../fb_app_taster.c:669: send_obj_value(objno+4);
	mov	dpl,r7
	lcall	_send_obj_value
;	../fb_app_taster.c:671: break;
	ljmp	00154$
;	../fb_app_taster.c:674: case 0xC0: // Wertgeber Dimmer verstellen
00133$:
;	../fb_app_taster.c:675: tmp=read_obj_value(objno+4);//
	mov	r0,_bp
	inc	r0
	mov	a,#0x04
	add	a,@r0
	mov	dpl,a
	lcall	_read_obj_value
	mov	r4,dpl
	mov	r5,dph
;	../fb_app_taster.c:676: m=eeprom[0xD4+((objno-4)*4)]& 0x3F;// schrittweite und zeit zw. telegrammen
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
;	../fb_app_taster.c:677: n= m & 0x0F;  // Schrittweite
	mov	a,#0x0F
	anl	a,r7
	mov	r6,a
;	../fb_app_taster.c:678: m=m>>4;// zeit zwischen telegrammen
	mov	a,r7
	swap	a
	anl	a,#0x0F
	mov	r7,a
;	../fb_app_taster.c:679: if (!tmp){
	mov	a,r4
	jnz	00138$
;	../fb_app_taster.c:680: tmp=255;
	mov	r4,#0xFF
	sjmp	00139$
00138$:
;	../fb_app_taster.c:683: if (tmp>=n)tmp-=n;
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
;	../fb_app_taster.c:684: else tmp=0;
	mov	r4,#0x00
00139$:
;	../fb_app_taster.c:686: write_obj_value(objno+4,tmp);
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
;	../fb_app_taster.c:687: switch_led(objno-4,1);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xFC
	mov	dpl,a
	setb	b[0]
	mov	bits,b
	lcall	_switch_led
	pop	ar5
;	../fb_app_taster.c:688: send_obj_value(objno+4);		// dimmkommando senden
	mov	dpl,r5
	lcall	_send_obj_value
	pop	ar7
;	../fb_app_taster.c:689: timerstate[objno]=0xC0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0xC0
;	../fb_app_taster.c:690: timercnt[objno]=tele_repeat_value[m];// 0,5/1/1,5/2 Sec.
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
;	../fb_app_taster.c:691: timerbase[objno]=0;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_taster.c:694: }// ende switch (timerstate...
00154$:
;	../fb_app_taster.c:535: for(objno=0;objno<8;objno++) {
	mov	r0,_bp
	inc	r0
	inc	@r0
	ljmp	00152$
00156$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;write_ok                  Allocated to registers 
;------------------------------------------------------------
;	../fb_app_taster.c:707: void restart_app(void)
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
;	../fb_app_taster.c:713: for (n=0;n<4;n++) {
	mov	r7,#0x00
00105$:
	cjne	r7,#0x04,00147$
00147$:
	jnc	00108$
;	../fb_app_taster.c:714: SET_PORT_MODE_BIDIRECTIONAL(n)
	cjne	r7,#0x08,00149$
00149$:
	jnc	00107$
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00153$
00151$:
	add	a,acc
00153$:
	djnz	b,00151$
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r6
	mov	r6,a
	anl	_P0M1,a
	mov	a,r6
	anl	_P0M2,a
00107$:
;	../fb_app_taster.c:713: for (n=0;n<4;n++) {
	inc	r7
	sjmp	00105$
00108$:
;	../fb_app_taster.c:718: for (n=4;n<8;n++) {
	mov	r7,#0x04
00109$:
	cjne	r7,#0x08,00154$
00154$:
	clr	a
	rlc	a
	mov	r6,a
	jz	00112$
;	../fb_app_taster.c:719: SET_PORT_MODE_PUSHPULL(n)
	mov	a,r6
	jz	00111$
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00159$
00157$:
	add	a,acc
00159$:
	djnz	b,00157$
	mov	r6,a
	mov	a,#0xFF
	clr	c
	subb	a,r6
	anl	_P0M1,a
	mov	a,r6
	orl	_P0M2,a
00111$:
;	../fb_app_taster.c:718: for (n=4;n<8;n++) {
	inc	r7
	sjmp	00109$
00112$:
;	../fb_app_taster.c:722: PORT=0x0F;							// Taster auf high, LEDs zunächst aus
	mov	_P0,#0x0F
;	../fb_app_taster.c:724: button_buffer=0x0F;	// Variable für letzten abgearbeiteten Taster Status
	mov	_button_buffer,#0x0F
;	../fb_app_taster.c:726: RTCCON=0x60;	//stop_rtc();
	mov	_RTCCON,#0x60
;	../fb_app_taster.c:727: RTCH=0x00;
	mov	_RTCH,#0x00
;	../fb_app_taster.c:728: RTCL=0xE6;	
	mov	_RTCL,#0xE6
;	../fb_app_taster.c:729: RTCCON=0x61;	//start_rtc(8);		// RTC neu mit 8ms starten
	mov	_RTCCON,#0x61
;	../fb_app_taster.c:731: timer=0;			// Timer-Variable, wird alle 8ms inkrementiert
	clr	a
	mov	_timer,a
	mov	(_timer + 1),a
;	../fb_app_taster.c:733: EA=0;		// Interrupts sperren
	clr	_IEN0_7
;	../fb_app_taster.c:735: START_WRITECYCLE			
	mov	_FMCON,#0x00
;	../fb_app_taster.c:736: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x03
	mov	_FMDATA,#0x00
;	../fb_app_taster.c:737: WRITE_BYTE(0x01,0x04,0x04)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x04
	mov	_FMDATA,#0x04
;	../fb_app_taster.c:738: WRITE_BYTE(0x01,0x05,0x10)	// Devicetype 0x1052 = Jung Tastsensor 2092
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x05
	mov	_FMDATA,#0x10
;	../fb_app_taster.c:739: WRITE_BYTE(0x01,0x06,0x52)	
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x06
	mov	_FMDATA,#0x52
;	../fb_app_taster.c:740: WRITE_BYTE(0x01,0x07,0x01)	// Versionsnummer
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x07
	mov	_FMDATA,#0x01
;	../fb_app_taster.c:741: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0C
	mov	_FMDATA,#0x00
;	../fb_app_taster.c:742: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0D
	mov	_FMDATA,#0xFF
;	../fb_app_taster.c:743: WRITE_BYTE(0x01,0x12,0x9A)	// COMMSTAB Pointer
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x12
	mov	_FMDATA,#0x9A
;	../fb_app_taster.c:744: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_app_taster.c:749: for (n=0;n<12;n++) write_obj_value(n,0);		// Objektwerte alle auf 0 setzen
	mov	r7,#0x00
00113$:
	cjne	r7,#0x0C,00160$
00160$:
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
;	../fb_app_taster.c:751: for (n=0;n<8;n++) timercnt[n]=0;		// delay records loeschen
	mov	r7,#0x00
00117$:
	cjne	r7,#0x08,00162$
00162$:
	jnc	00120$
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	inc	r7
	sjmp	00117$
00120$:
;	../fb_app_taster.c:756: TR0=0;
	clr	_TCON_4
;	../fb_app_taster.c:757: TMOD &= 0xF0;
	anl	_TMOD,#0xF0
;	../fb_app_taster.c:758: TMOD |= 0x02;// T0 autoreload
	orl	_TMOD,#0x02
;	../fb_app_taster.c:759: TH0=0x47;
	mov	_TH0,#0x47
;	../fb_app_taster.c:760: TL0=0x47;
	mov	_TL0,#0x47
;	../fb_app_taster.c:761: TR0=1;
	setb	_TCON_4
;	../fb_app_taster.c:763: IP0 &= 0xFC; //FC		F6	für flackerfrei bei 1 kanal
	anl	_IP0,#0xFC
;	../fb_app_taster.c:764: IP0 |= 0x0C; //0C		06	dto.
	orl	_IP0,#0x0C
;	../fb_app_taster.c:765: IP0H &= 0xF4;// 
	anl	_IP0H,#0xF4
;	../fb_app_taster.c:766: IP0H |= 0x04;// 		Timer 1 auf Level 2
	orl	_IP0H,#0x04
;	../fb_app_taster.c:769: TF0=0; //timer0 flag löschen
	clr	_TCON_5
;	../fb_app_taster.c:770: ET0=1;// timer 0 interupt freigeben	
	setb	_IEN0_1
;	../fb_app_taster.c:771: EA=1;// Interrupts freigeben	
	setb	_IEN0_7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
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
