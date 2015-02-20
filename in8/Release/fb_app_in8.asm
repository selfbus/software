;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Tue Nov 06 16:08:30 2012
;--------------------------------------------------------
	.module fb_app_in8
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
	.globl _eis5conversion
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
_portbuffer::
	.ds 1
_p0h::
	.ds 1
_objstate::
	.ds 2
_blocked::
	.ds 1
_timer_base::
	.ds 1
_timer_state::
	.ds 1
_timer::
	.ds 2
_timerbase::
	.ds 9
_timercnt::
	.ds 9
_timerstate::
	.ds 9
_pinnoX4::
	.ds 1
_para_adr::
	.ds 1
_pinno::
	.ds 1
_para_value::
	.ds 1
_objectvalue_l	=	0x0008
_objectvalue_h	=	0x0010
_Sperre	=	0x0018
_zaehlervalue	=	0x0019
_schrittzaehler	=	0x001e
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
_objval::
	.ds 1
_jobj::
	.ds 1
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
;	../fb_app_in8.c:45: __bit objval=0,jobj=0;
	clr	_objval
;	../fb_app_in8.c:45: 
	clr	_jobj
;	../fb_app_in8.c:47: __bit st_Flanke=0;
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
;tmp                       Allocated to registers r2 
;objoffset                 Allocated to stack - _bp +1
;typ                       Allocated to registers r6 
;n                         Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	../fb_app_in8.c:52: void pin_changed(unsigned char pin_no)
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
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	_pinno,dpl
;	../fb_app_in8.c:59: unsigned char objoffset=8;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x08
;	../fb_app_in8.c:60: unsigned char typ=0;
;	../fb_app_in8.c:62: timer_base=0;
;	../fb_app_in8.c:63: para_value=0;
;	../fb_app_in8.c:67: pinnoX4=pinno*4;
	clr	a
	mov	r6,a
	mov	_timer_base,a
	mov	_para_value,a
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
;	../fb_app_in8.c:68: para_adr=0xD5+(pinnoX4);
	mov	_pinnoX4,a
	add	a,#0xD5
	mov	_para_adr,a
;	../fb_app_in8.c:70: if (debounce(pinno))			// Entprellzeit abwarten und prüfen
	mov	dpl,_pinno
	push	ar6
	lcall	_debounce
	mov	a,dpl
	pop	ar6
	jnz	00212$
	ljmp	00159$
00212$:
;	../fb_app_in8.c:72: timer_base=(eeprom[0xF6+((pinno+1)>>1)]>>(4*((pinno&0x01)^0x01)))&0x07  ;
	mov	r4,_pinno
	mov	r5,#0x00
	inc	r4
	cjne	r4,#0x00,00213$
	inc	r5
00213$:
	mov	a,r5
	mov	c,acc.7
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	a,#0xF6
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,_pinno
	xrl	a,#0x01
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00215$
00214$:
	clr	c
	rrc	a
00215$:
	djnz	b,00214$
	anl	a,#0x07
	mov	_timer_base,a
;	../fb_app_in8.c:73: st_Flanke=(((portbuffer>>pinno)&0x01)==0) && (((p0h>>pinno)&0x01)==1);
	mov	b,_pinno
	inc	b
	mov	a,_portbuffer
	sjmp	00217$
00216$:
	clr	c
	rrc	a
00217$:
	djnz	b,00216$
	anl	a,#0x01
	mov	r5,a
	cjne	a,#0x01,00218$
00218$:
	clr	a
	rlc	a
	mov	r5,a
	jz	00161$
	mov	b,_pinno
	inc	b
	mov	a,_p0h
	sjmp	00221$
00220$:
	clr	c
	rrc	a
00221$:
	djnz	b,00220$
	anl	a,#0x01
	mov	r5,a
	cjne	r5,#0x01,00222$
	sjmp	00162$
00222$:
00161$:
	clr	b0
	sjmp	00163$
00162$:
	setb	b0
00163$:
	mov	c,b0
	mov	_st_Flanke,c
;	../fb_app_in8.c:74: timer_state=timerstate[pinno];
	mov	a,_pinno
	add	a,#_timerstate
	mov	r1,a
	mov	_timer_state,@r1
;	../fb_app_in8.c:76: switch ((eeprom[0xCE+(pinno>>1)] >> ((pinno & 0x01)*4)) & 0x0F)	// Funktion des Eingangs
	mov	a,_pinno
	clr	c
	rrc	a
	add	a,#0xCE
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	anl	a,_pinno
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r5
	sjmp	00224$
00223$:
	clr	c
	rrc	a
00224$:
	djnz	b,00223$
	anl	a,#0x0F
	mov  r5,a
	add	a,#0xff - 0x08
	jnc	00225$
	ljmp	00156$
00225$:
	mov	a,r5
	add	a,r5
	add	a,r5
	mov	dptr,#00226$
	jmp	@a+dptr
00226$:
	ljmp	00156$
	ljmp	00101$
	ljmp	00102$
	ljmp	00124$
	ljmp	00138$
	ljmp	00148$
	ljmp	00156$
	ljmp	00139$
	ljmp	00140$
;	../fb_app_in8.c:78: case 0x01:				// Funktion Schalten
00101$:
;	../fb_app_in8.c:79: schalten(st_Flanke,pinno);			// Flanke Eingang x.1
	mov	c,_st_Flanke
	mov	b[0],c
	mov	bits,b
	mov	dpl,_pinno
	lcall	_schalten
;	../fb_app_in8.c:82: schalten(st_Flanke,pinno+8);		// Flanke Eingang x.2
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	mov	c,_st_Flanke
	mov	b[0],c
	mov	bits,b
	lcall	_schalten
;	../fb_app_in8.c:96: break;  
	ljmp	00156$
;	../fb_app_in8.c:97: case 0x02:				// Funktion Dimmen
00102$:
;	../fb_app_in8.c:102: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
	jb	_st_Flanke,00227$
	ljmp	00122$
00227$:
;	../fb_app_in8.c:103: timercnt[pinno]=0x80+(eeprom[0xD7+(pinnoX4)]&0x7F);	// Faktor/Dauer			
	mov	a,_pinno
	add	a,#_timercnt
	mov	r1,a
	mov	a,#0xD7
	add	a,_pinnoX4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x7F
	anl	a,r5
	add	a,#0x80
	mov	@r1,a
;	../fb_app_in8.c:104: timerbase[pinno]=timer_base;
	mov	a,_pinno
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,_timer_base
;	../fb_app_in8.c:106: objval=(read_obj_value(pinno+8)>>3)&0x01;
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	a,r2
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	r2,a
	add	a,#0xff
	mov	_objval,c
;	../fb_app_in8.c:107: switch (eeprom[para_adr]&0x70) {
	mov	dpl,_para_adr
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0x70
	cjne	r5,#0x00,00228$
	sjmp	00103$
00228$:
	cjne	r5,#0x10,00229$
	sjmp	00105$
00229$:
;	../fb_app_in8.c:108: case 0x00:	// UM Dimmen
	cjne	r5,#0x30,00106$
	sjmp	00105$
00103$:
;	../fb_app_in8.c:109: objval = !objval;	// Dimmrichtung ändern
	cpl	_objval
;	../fb_app_in8.c:110: break;
;	../fb_app_in8.c:112: case 0x30:
	sjmp	00107$
00105$:
;	../fb_app_in8.c:113: objval=1;
	setb	_objval
;	../fb_app_in8.c:114: break;
;	../fb_app_in8.c:115: default:	
	sjmp	00107$
00106$:
;	../fb_app_in8.c:118: objval=0;
	clr	_objval
;	../fb_app_in8.c:119: }
00107$:
;	../fb_app_in8.c:120: if(objval){	// wenn heller dimmen soll
	jnb	_objval,00109$
;	../fb_app_in8.c:121: timer_state = ((eeprom[para_adr+0x01]&0x38)>>3)+ 0x48;	// dimmen
	mov	a,_para_adr
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x38
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r5,a
	add	a,#0x48
	mov	_timer_state,a
	ljmp	00156$
00109$:
;	../fb_app_in8.c:124: timer_state = (eeprom[para_adr+0x01]&0x07)+ 0x40;	// dimmen
	mov	a,_para_adr
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	add	a,#0x40
	mov	_timer_state,a
	ljmp	00156$
00122$:
;	../fb_app_in8.c:128: if ((timer_state & 0x50)== 0x40) {		// wenn delaytimer noch laeuft, dann Schalten, also EIS1 telegramm senden
	mov	a,#0x50
	anl	a,_timer_state
	mov	r5,a
	cjne	r5,#0x40,00119$
;	../fb_app_in8.c:130: objval = read_obj_value(pinno);
	mov	dpl,_pinno
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	add	a,#0xff
	mov	_objval,c
;	../fb_app_in8.c:131: switch (eeprom[para_adr]&0x70) {//Bedienkonzept angucken
	mov	dpl,_para_adr
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0x70
	cjne	r5,#0x10,00234$
	sjmp	00111$
00234$:
;	../fb_app_in8.c:132: case 0x10:	// zweiflaechen ein
	cjne	r5,#0x20,00113$
	sjmp	00112$
00111$:
;	../fb_app_in8.c:133: objval=1;
	setb	_objval
;	../fb_app_in8.c:134: break;
;	../fb_app_in8.c:135: case 0x20:	// zweiflaechen aus
	sjmp	00114$
00112$:
;	../fb_app_in8.c:136: objval=0;
	clr	_objval
;	../fb_app_in8.c:137: break;
;	../fb_app_in8.c:138: default:	
	sjmp	00114$
00113$:
;	../fb_app_in8.c:142: objval = !objval;
	cpl	_objval
;	../fb_app_in8.c:143: }
00114$:
;	../fb_app_in8.c:144: write_send(pinno,objval);
	mov	c,_objval
	clr	a
	rlc	a
	mov	r4,a
	mov	r5,#0x00
	push	ar4
	push	ar5
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
;	../fb_app_in8.c:145: timercnt[pinno]=0;
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
	ljmp	00156$
00119$:
;	../fb_app_in8.c:148: tmp=read_obj_value(pinno+8);
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../fb_app_in8.c:149: if (eeprom[0xD5+(pinnoX4)] & 0x08) {	// ... natuerlich nur wenn parameter dementsprechend 
	mov	a,#0xD5
	add	a,_pinnoX4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	jnb	acc.3,00116$
;	../fb_app_in8.c:150: write_send(pinno+8, tmp & 0x08);		// Stop Telegramm
	mov	a,#0x08
	anl	a,r2
	mov	r5,a
	mov	r4,#0x00
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	push	ar5
	push	ar4
	lcall	_write_send
	dec	sp
	dec	sp
	sjmp	00117$
00116$:
;	../fb_app_in8.c:152: else write_obj_value(pinno+8,tmp & 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
	mov	a,#0x08
	anl	a,r2
	mov	r5,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r4,a
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	push	ar5
	push	ar7
	push	ar6
	push	ar4
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00117$:
;	../fb_app_in8.c:153: timer_state=0;
	mov	_timer_state,#0x00
;	../fb_app_in8.c:154: timercnt[pinno]=0;
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_in8.c:159: break;
	ljmp	00156$
;	../fb_app_in8.c:161: case 0x03:				//Funktion Jalousie
00124$:
;	../fb_app_in8.c:165: n=0xD8+(pinno*4);
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	add	a,#0xD8
;	../fb_app_in8.c:166: para_value=(eeprom[n]&0x30)>>4;//Jalofunktion holen
	mov	r5,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x30
	mov	r4,a
	swap	a
	anl	a,#0x0F
	mov	_para_value,a
;	../fb_app_in8.c:167: switch (para_value){
	mov	a,#0x01
	cjne	a,_para_value,00237$
	sjmp	00125$
00237$:
	mov	a,#0x02
	cjne	a,_para_value,00238$
	sjmp	00126$
00238$:
	mov	a,#0x03
;	../fb_app_in8.c:168: case 1:		//auf
	cjne	a,_para_value,00128$
	sjmp	00127$
00125$:
;	../fb_app_in8.c:169: jobj=0;
	clr	_jobj
;	../fb_app_in8.c:170: break;
;	../fb_app_in8.c:171: case 2:		//ab
	sjmp	00128$
00126$:
;	../fb_app_in8.c:172: jobj=1;
	setb	_jobj
;	../fb_app_in8.c:173: break;
;	../fb_app_in8.c:174: case 3:		//UM
	sjmp	00128$
00127$:
;	../fb_app_in8.c:175: jobj=read_obj_value(pinno+8)^0x01;//neues Jaloobj invers zum langzeit
	push	ar5
	mov	a,#0x08
	add	a,_pinno
	mov	dpl,a
	push	ar5
	lcall	_read_obj_value
	mov	r7,dpl
	mov	r6,dph
	mov	r4,b
	mov	r3,a
	pop	ar5
	xrl	ar7,#0x01
	mov	a,r7
	orl	a,r6
	orl	a,r4
	orl	a,r3
	add	a,#0xff
	mov	_jobj,c
;	../fb_app_in8.c:311: timerstate[pinno]=timer_state;
	pop	ar5
;	../fb_app_in8.c:177: }
00128$:
;	../fb_app_in8.c:178: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
	jnb	_st_Flanke,00136$
;	../fb_app_in8.c:179: if(eeprom[n]& 0x08){	//wenn Bedienkonzept lang-kurz ()
	mov	dpl,r5
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	jnb	acc.3,00130$
;	../fb_app_in8.c:181: timer_state = jobj+0x80;
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r4,a
	add	a,#0x80
	mov	_timer_state,a
;	../fb_app_in8.c:182: timercnt[pinno]=0x80;//langzeit in delay_timer SOFORT ausführen
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x80
	ljmp	00156$
00130$:
;	../fb_app_in8.c:185: write_send( pinno, jobj);	// Kurzzeit telegramm immer bei Drücken senden
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
;	../fb_app_in8.c:186: timercnt[pinno]=0x80+eeprom[0xD6+(pinno*4)];//Faktor Dauer )
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
;	../fb_app_in8.c:187: timerbase[pinno]=timer_base;
	mov	a,_pinno
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,_timer_base
;	../fb_app_in8.c:190: timer_state = jobj+0x80;
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r4,a
	add	a,#0x80
	mov	_timer_state,a
	ljmp	00156$
00136$:
;	../fb_app_in8.c:194: if (timer_state & 0x10) write_send( pinno, jobj);	// wenn delaytimer noch laueft und in T2 ist, dann kurzzeit telegramm senden
	mov	a,_timer_state
	jnb	acc.4,00133$
	mov	c,_jobj
	clr	a
	rlc	a
	mov	r3,a
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
	ljmp	00156$
00133$:
;	../fb_app_in8.c:195: else timercnt[pinno]=0;	// T2 bereits abgelaufen
	mov	a,_pinno
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_in8.c:197: break;
	ljmp	00156$
;	../fb_app_in8.c:204: case 0x04:// Dimmwertgeber
00138$:
;	../fb_app_in8.c:205: para_value=0xFF;
	mov	_para_value,#0xFF
;	../fb_app_in8.c:206: typ=0x01;
	mov	r6,#0x01
;	../fb_app_in8.c:207: objoffset=0;//läuft absichtlich in den nächsten case
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
;	../fb_app_in8.c:208: case 0x07:// Temperaturwertgeber
00139$:
;	../fb_app_in8.c:210: typ=typ|0x02;//kein objoffset zugewiesen,d.h. 8,da mit 8 initialisiert
	orl	ar6,#0x02
;	../fb_app_in8.c:211: case 0x08:// Helligkeitswertgeber,
00140$:
;	../fb_app_in8.c:212: para_value=para_value |0x1F;
	orl	_para_value,#0x1F
;	../fb_app_in8.c:213: typ=typ|0x04;//kein objoffset zugewiesen,d.h. 8,da mit 8 initialisiert
	orl	ar6,#0x04
;	../fb_app_in8.c:214: n=0xD5+(pinno*4);
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	add	a,#0xD5
;	../fb_app_in8.c:215: tmp=(((eeprom[n]&0x04)>>2)|(eeprom[n+1]&0x80)>>6);//in tmp steigend fallend reaktion
	mov	r5,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x04
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r4,a
	mov	a,r5
	inc	a
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	anl	a,#0x80
	rl	a
	rl	a
	anl	a,#0x03
	mov	r3,a
	orl	ar4,a
	mov	ar2,r4
;	../fb_app_in8.c:216: if (st_Flanke){// Taster gedrueckt       in tmp bit0 steigend, bit1 fallend
	jnb	_st_Flanke,00146$
;	../fb_app_in8.c:218: if(tmp&0x01) write_send( pinno+objoffset, eis5conversion((eeprom[n+2]& para_value),typ));	//wert senden
	mov	a,r2
	jb	acc.0,00244$
	ljmp	00156$
00244$:
	mov	a,#0x02
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,_para_value
	anl	ar4,a
	push	ar6
	mov	dpl,r4
	lcall	_eis5conversion
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,_pinno
	mov	r7,a
	push	ar3
	push	ar4
	mov	dpl,r7
	lcall	_write_send
	dec	sp
	dec	sp
	ljmp	00156$
00146$:
;	../fb_app_in8.c:221: if (tmp>=0x02) write_send( pinno+objoffset, eis5conversion(eeprom[n+tmp]& para_value,typ));
	cjne	r2,#0x02,00245$
00245$:
	jnc	00246$
	ljmp	00156$
00246$:
	mov	a,r2
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	a,_para_value
	anl	ar7,a
	push	ar6
	mov	dpl,r7
	lcall	_eis5conversion
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,_pinno
	mov	r4,a
	push	ar6
	push	ar7
	mov	dpl,r4
	lcall	_write_send
	dec	sp
	dec	sp
;	../fb_app_in8.c:223: break;
;	../fb_app_in8.c:225: case 0x05:
	sjmp	00156$
00148$:
;	../fb_app_in8.c:229: n=0xD5+(pinno*4);
	mov	a,_pinno
	add	a,_pinno
	add	a,acc
	add	a,#0xD5
;	../fb_app_in8.c:230: para_value=eeprom[n] & 0x0C;
	mov	r5,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0x0C
	anl	a,r7
	mov	_para_value,a
;	../fb_app_in8.c:232: if (st_Flanke){// Taster gedrueckt 
	jnb	_st_Flanke,00154$
;	../fb_app_in8.c:233: if(para_value!=0x04) write_send( pinno,eeprom[n+2]&0x7F );	// Lichtszenennummer senden
	mov	a,#0x04
	cjne	a,_para_value,00248$
	sjmp	00156$
00248$:
	mov	a,#0x02
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x7F
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
	sjmp	00156$
00154$:
;	../fb_app_in8.c:236: if(para_value>=0x04) write_send( pinno,eeprom[n+3]&0x7F );	// Lichtszenennummer senden
	mov	a,#0x100 - 0x04
	add	a,_para_value
	jnc	00156$
	mov	a,#0x03
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x7F
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	dpl,_pinno
	lcall	_write_send
	dec	sp
	dec	sp
;	../fb_app_in8.c:310: }
00156$:
;	../fb_app_in8.c:311: timerstate[pinno]=timer_state;
	mov	a,_pinno
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,_timer_state
00159$:
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eis5conversion'
;------------------------------------------------------------
;Typ                       Allocated to stack - _bp -3
;zahl                      Allocated to registers r7 
;exp                       Allocated to registers r6 
;wert                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	../fb_app_in8.c:323: int eis5conversion(unsigned char zahl,unsigned char Typ)
;	-----------------------------------------
;	 function eis5conversion
;	-----------------------------------------
_eis5conversion:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../fb_app_in8.c:325: unsigned char exp=0;
;	../fb_app_in8.c:326: unsigned int wert=0;
;	../fb_app_in8.c:327: if (Typ==4){// Helligkeitwert
	clr	a
	mov	r6,a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x04,00102$
;	../fb_app_in8.c:328: exp=3;// Da kleinster wert 50 lux*100=5000 ==> 5000/8 (exp=3) 
	mov	r6,#0x03
;	../fb_app_in8.c:329: wert=zahl*625;//= 625
	mov	ar2,r7
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar2
	push	ar3
	mov	dptr,#0x0271
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	mov	ar4,r2
	mov	ar5,r3
00102$:
;	../fb_app_in8.c:331: if (Typ==6){// Temperaturwert kleinster wert =1 größter 31
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x06,00104$
;	../fb_app_in8.c:333: wert=zahl*100;// Hier reicht uns eine 16bit int var
	mov	a,r7
	mov	b,#0x64
	mul	ab
	mov	r2,a
	mov	r3,b
	mov	ar4,r2
	mov	ar5,r3
00104$:
;	../fb_app_in8.c:335: if (Typ==7){// wenn Dimmwert ( EIS2, also keine Fließkomma)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x07,00117$
;	../fb_app_in8.c:336: wert=zahl;
	mov	ar4,r7
	mov	r5,#0x00
;	../fb_app_in8.c:339: while (wert > 2047){//solange Mantisse größer 11 Bit
	sjmp	00110$
00117$:
	mov	ar7,r6
00105$:
	mov	a,r5
	anl	a,#0xF8
	jz	00118$
;	../fb_app_in8.c:340: wert=wert>>1;// Mantisse /2
	mov	a,r5
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
;	../fb_app_in8.c:341: exp++;// und exponent um 1 erhöhen (ist ein 2^exp)
	inc	r7
	sjmp	00105$
00118$:
	mov	ar6,r7
00110$:
;	../fb_app_in8.c:344: return (wert+(exp<<11));// exponent dazu, geht auch bei EIS2 da EXP hier 0 ist.
	mov	a,r6
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r7,a
	clr	a
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	pop	_bp
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
;	../fb_app_in8.c:354: void delay_timer(void)
;	-----------------------------------------
;	 function delay_timer
;	-----------------------------------------
_delay_timer:
;	../fb_app_in8.c:364: RTCCON=0x60;		// RTC anhalten und Flag löschen
	mov	_RTCCON,#0x60
;	../fb_app_in8.c:365: RTCH=0x0E;			// reload Real Time Clock
	mov	_RTCH,#0x0E
;	../fb_app_in8.c:366: RTCL=0xA0;			// auf 65ms
	mov	_RTCL,#0xA0
;	../fb_app_in8.c:367: RTCCON=0x61;//	START_RTC	// RTC starten
	mov	_RTCCON,#0x61
;	../fb_app_in8.c:368: timer++;
	inc	_timer
	clr	a
	cjne	a,_timer,00166$
	inc	(_timer + 1)
00166$:
;	../fb_app_in8.c:369: timerflags = timer&(~(timer-1));// flanke generieren
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
;	../fb_app_in8.c:370: for(n=0;n<16;n++){
	mov	r5,#0x00
00123$:
	cjne	r5,#0x10,00167$
00167$:
	jnc	00126$
;	../fb_app_in8.c:371: if(timerflags & 0x0001){// positive flags erzeugen und schieben
	mov	a,r6
	jnb	acc.0,00106$
;	../fb_app_in8.c:372: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
	mov	r4,#0x00
00119$:
	cjne	r4,#0x09,00170$
00170$:
	jnc	00106$
;	../fb_app_in8.c:373: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
	mov	a,r4
	add	a,#_timerbase
	mov	r1,a
	mov	ar3,@r1
	anl	ar3,#0x0F
	mov	a,r3
	cjne	a,ar5,00121$
;	../fb_app_in8.c:374: if (timercnt[m]>0x80){// wenn der counter läuft...
	mov	a,r4
	add	a,#_timercnt
	mov	r1,a
	mov	a,@r1
	mov	r3,a
	add	a,#0xff - 0x80
	jnc	00121$
;	../fb_app_in8.c:375: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
	mov	a,r3
	dec	a
	mov	@r1,a
00121$:
;	../fb_app_in8.c:372: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
	inc	r4
	sjmp	00119$
00106$:
;	../fb_app_in8.c:380: timerflags = timerflags>>1;
	mov	a,r7
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	../fb_app_in8.c:370: for(n=0;n<16;n++){
	inc	r5
	sjmp	00123$
00126$:
;	../fb_app_in8.c:398: for(objno=0;objno<8;objno++) {
	mov	r7,#0x00
00127$:
	cjne	r7,#0x08,00175$
00175$:
	jc	00176$
	ret
00176$:
;	../fb_app_in8.c:399: timer_state=timerstate[objno];
	mov	a,r7
	add	a,#_timerstate
	mov	r1,a
	mov	_timer_state,@r1
;	../fb_app_in8.c:400: if(timercnt[objno]==0x80) {
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x80,00177$
	sjmp	00178$
00177$:
	ljmp	00129$
00178$:
;	../fb_app_in8.c:417: if (timer_state & 0x80) { // 0x80, 0x81 für langzeit telegramm senden
	mov	a,_timer_state
	jb	acc.7,00179$
	ljmp	00111$
00179$:
;	../fb_app_in8.c:418: write_send( objno+8, timer_state & 0x01);	// Langzeit Telegramm senden
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
;	../fb_app_in8.c:421: m = eeprom[0xD7+(objno*4)];	// Faktor Dauer	Lamelle	T2	
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
	add	a,#0xD7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
;	../fb_app_in8.c:422: if (m > 3){// wenn lamellenverstellzeit >3 dann zeit sichern und kurztele zwecks stop
	mov  r6,a
	add	a,#0xff - 0x03
	jnc	00108$
;	../fb_app_in8.c:426: timerbase[objno]= ((eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07);
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	ar4,r7
	mov	r5,#0x00
	inc	r4
	cjne	r4,#0x00,00181$
	inc	r5
00181$:
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
	sjmp	00183$
00182$:
	clr	c
	rrc	a
00183$:
	djnz	b,00182$
	anl	a,#0x07
	mov	@r1,a
;	../fb_app_in8.c:427: jobj=read_obj_value((objno&0x07)+8);
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
;	../fb_app_in8.c:428: timerstate[objno]= jobj|0x10; // 0x10,0x11 fuer ende T2 (lamellenvestellzeit)
	mov	a,r7
	add	a,#_timerstate
	mov	r1,a
	mov	c,b0
	clr	a
	rlc	a
	mov	r5,a
	orl	ar5,#0x10
	mov	@r1,ar5
;	../fb_app_in8.c:429: timercnt[objno]= m + 0x80;
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	a,#0x80
	add	a,r6
	mov	@r1,a
	sjmp	00111$
00108$:
;	../fb_app_in8.c:431: else timercnt[objno]=0;
	mov	a,r7
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
00111$:
;	../fb_app_in8.c:434: switch (timer_state & 0x50){		
	mov	a,#0x50
	anl	a,_timer_state
	mov	r6,a
	cjne	r6,#0x10,00184$
	sjmp	00112$
00184$:
	cjne	r6,#0x40,00185$
	sjmp	00113$
00185$:
	cjne	r6,#0x50,00186$
	ljmp	00114$
00186$:
	ljmp	00129$
;	../fb_app_in8.c:435: case 0x10:
00112$:
;	../fb_app_in8.c:436: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_in8.c:437: break;		
	ljmp	00129$
;	../fb_app_in8.c:439: case 0x40:
00113$:
;	../fb_app_in8.c:441: write_send( objno+8, timer_state );	// Langzeit Telegramm senden
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
;	../fb_app_in8.c:442: timerstate[objno]|=0x10;
	mov	a,r7
	add	a,#_timerstate
	mov	r1,a
	mov	ar6,@r1
	mov	a,#0x10
	orl	a,r6
	mov	@r1,a
;	../fb_app_in8.c:443: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
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
;	../fb_app_in8.c:444: timerbase[objno]=(eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x0F;	//Basis Tele wdg
	mov	a,r7
	add	a,#_timerbase
	mov	r1,a
	mov	ar5,r7
	mov	r6,#0x00
	inc	r5
	cjne	r5,#0x00,00187$
	inc	r6
00187$:
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
	sjmp	00189$
00188$:
	clr	c
	rrc	a
00189$:
	djnz	b,00188$
	anl	a,#0x0F
	mov	@r1,a
;	../fb_app_in8.c:445: break;
;	../fb_app_in8.c:446: case 0x50: // 0x50 Dimmer telegramm wiederholung
	sjmp	00129$
00114$:
;	../fb_app_in8.c:447: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
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
;	../fb_app_in8.c:448: send_obj_value(objno+8);
	mov	a,#0x08
	add	a,r7
	mov	dpl,a
	push	ar7
	lcall	_send_obj_value
	pop	ar7
;	../fb_app_in8.c:452: }
00129$:
;	../fb_app_in8.c:398: for(objno=0;objno<8;objno++) {
	inc	r7
	ljmp	00127$
;------------------------------------------------------------
;Allocation info for local variables in function 'schalten'
;------------------------------------------------------------
;pinno                     Allocated to registers r7 
;risefall                  Allocated to registers b0 
;func                      Allocated to registers r6 
;sendval                   Allocated to registers r2 
;------------------------------------------------------------
;	../fb_app_in8.c:466: void schalten(__bit risefall, unsigned char pinno)	// Schaltbefehl senden
;	-----------------------------------------
;	 function schalten
;	-----------------------------------------
_schalten:
	mov	r7,dpl
;	../fb_app_in8.c:470: func=eeprom[0xD7+(pinno & 0x07)*4]; //0xD7
	mov	a,#0x07
	anl	a,r7
	add	a,acc
	add	a,acc
	add	a,#0xD7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
;	../fb_app_in8.c:471: if (pinno>=8)func=func>>4;			// wenn 2. Schaltobjekt dann obere 4 bit
	cjne	r7,#0x08,00120$
00120$:
	jc	00102$
	mov	a,r6
	swap	a
	anl	a,#0x0F
	mov	r6,a
00102$:
;	../fb_app_in8.c:472: if (risefall) func=(func>>2);		// Funktion bei steigender Flanke obere 2 bit
	jnb	b0,00104$
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r6,a
00104$:
;	../fb_app_in8.c:473: func=func&0x03;					// Funktion maskieren
	anl	ar6,#0x03
;	../fb_app_in8.c:474: if (func!=0)
	mov	a,r6
	jz	00110$
;	../fb_app_in8.c:476: if (func==0x03) sendval=read_obj_value(pinno) ^0x01;  //UM
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
;	../fb_app_in8.c:477: else sendval = func & 0x01;	// EIN   AUS
	mov	a,#0x01
	anl	a,r6
	mov	r2,a
00107$:
;	../fb_app_in8.c:478: write_send(pinno,sendval);
	mov	r6,#0x00
	push	ar2
	push	ar6
	mov	dpl,r7
	lcall	_write_send
	dec	sp
	dec	sp
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'debounce'
;------------------------------------------------------------
;pinno                     Allocated to registers r7 
;debtime                   Allocated to registers r6 
;n                         Allocated to registers r5 
;w                         Allocated to registers r4 
;------------------------------------------------------------
;	../fb_app_in8.c:487: unsigned char debounce(unsigned char pinno)	// Entprellzeit abwarten und prüfen !!
;	-----------------------------------------
;	 function debounce
;	-----------------------------------------
_debounce:
	mov	r7,dpl
;	../fb_app_in8.c:490: debtime=eeprom[DEBTIME];			// Entprellzeit in 0,5ms Schritten
	mov	dptr,#(_eeprom + 0x00d2)
	clr	a
	movc	a,@a+dptr
;	../fb_app_in8.c:491: if (debtime>0) {
	mov	r6,a
	jz	00102$
;	../fb_app_in8.c:492: for(n=0;n<debtime;n++){
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00102$
;	../fb_app_in8.c:493: for(w=112;w>0;w--); 
	mov	r4,#0x70
00103$:
	mov	a,r4
	jz	00109$
	dec	r4
	sjmp	00103$
00109$:
;	../fb_app_in8.c:492: for(n=0;n<debtime;n++){
	inc	r5
	sjmp	00107$
00102$:
;	../fb_app_in8.c:500: return ((~(P0^p0h))& bitmask_1[pinno]);//ret=1;
	mov	a,_p0h
	xrl	a,_P0
	cpl	a
	mov	r6,a
	mov	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	anl	a,r6
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;objno                     Allocated to stack - _bp +1
;objflags                  Allocated to registers r7 
;gapos                     Allocated to stack - _bp +2
;atp                       Allocated to registers r6 
;assno                     Allocated to stack - _bp +3
;n                         Allocated to stack - _bp +4
;gaposh                    Allocated to registers r4 
;para_value                Allocated to registers r7 
;tmp                       Allocated to stack - _bp +5
;objtype                   Allocated to registers 
;sloc0                     Allocated to stack - _bp +6
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	../fb_app_in8.c:514: void write_value_req(void)		// Objekt-Wert setzen gemäß empfangenem EIS Telegramms
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0A
	mov	sp,a
;	../fb_app_in8.c:520: gapos=gapos_in_gat(telegramm[3],telegramm[4]);
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_gapos_in_gat
	mov	r7,dpl
	dec	sp
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar7
;	../fb_app_in8.c:521: if (gapos!=0xFF)	
	mov	r0,_bp
	inc	r0
	inc	r0
	cjne	@r0,#0xFF,00142$
	ljmp	00121$
00142$:
;	../fb_app_in8.c:523: atp=eeprom[ASSOCTABPTR];		// Association Table Pointer
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
;	../fb_app_in8.c:524: assno=eeprom[atp];				// Erster Eintrag = Anzahl Einträge
	mov	r6,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar5
;	../fb_app_in8.c:526: for(n=0;n<assno;n++) {				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,r6
	inc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
00117$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00143$
	ljmp	00121$
00143$:
;	../fb_app_in8.c:527: gaposh=eeprom[atp+1+(n*2)];
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r2,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
;	../fb_app_in8.c:528: if(gapos==gaposh) {					// Wenn Positionsnummer übereinstimmt
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00144$
	sjmp	00145$
00144$:
	pop	ar4
	ljmp	00119$
00145$:
	pop	ar4
;	../fb_app_in8.c:529: objno=eeprom[atp+2+(n*2)];			// Objektnummer
	mov	a,r2
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
;	../fb_app_in8.c:530: objflags=read_objflags(objno);		// Objekt Flags lesen
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar4
	lcall	_read_objflags
	mov	r6,dpl
	pop	ar4
	mov	ar7,r6
;	../fb_app_in8.c:532: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	mov	b,#0x03
	mul	ab
	add	a,r6
	add	a,#0x04
	mov	dptr,#_eeprom
	movc	a,@a+dptr
;	../fb_app_in8.c:534: if((objflags&0x14)==0x14) {			// Kommunikation zulässig (Bit 2 = communication enable) + Schreiben zulässig (Bit 4 = write enable)
	mov	a,#0x14
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x14,00146$
	sjmp	00147$
00146$:
	ljmp	00119$
00147$:
;	../fb_app_in8.c:535: if (objno<16) {					// Status der Eingangsobjekte 0-15
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x10,00148$
00148$:
	jnc	00109$
;	../fb_app_in8.c:543: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
	push	ar4
	mov	a,#0x3F
	anl	a,(_telegramm + 0x0007)
	mov	r3,a
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar4
	ljmp	00119$
00109$:
;	../fb_app_in8.c:547: tmp=telegramm[7]& 0x01;
	push	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x01
	anl	a,(_telegramm + 0x0007)
	mov	@r0,a
;	../fb_app_in8.c:548: if (read_obj_value(objno)^tmp) {// nur wenn sich Objekt geändert hat
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	push	ar4
	lcall	_read_obj_value
	xch	a,r0
	mov	a,_bp
	add	a,#0x07
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar2,@r0
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	xrl	ar2,a
	inc	r0
	mov	a,@r0
	xrl	ar5,a
	inc	r0
	mov	a,@r0
	xrl	ar6,a
	inc	r0
	mov	a,@r0
	xrl	ar7,a
	pop	ar4
	mov	a,r2
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00150$
	ljmp	00119$
00150$:
;	../fb_app_in8.c:549: write_obj_value(objno,tmp);// objekt sichern
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar3,@r0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar4
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_write_obj_value
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
;	../fb_app_in8.c:550: para_value= (eeprom[0xD5+((objno & 0x07)*4)]&0x03);
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
	anl	a,@r0
	add	a,acc
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x03
;	../fb_app_in8.c:551: tmp = tmp ^ ((para_value) & 0x01);//bei 'nicht invertieren' invertieren,weil wir invertiert abfragen :-(
	mov	a,#0x01
	anl	a,r7
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r6
	xrl	a,@r0
	mov	@r0,a
;	../fb_app_in8.c:552: if (para_value){			// wenn eine sperre aktiviert parametriert ist
	mov	a,r7
	jz	00119$
;	../fb_app_in8.c:553: if(tmp){		//nicht gesperrt(invertierte Abfrage)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	jz	00102$
;	../fb_app_in8.c:554: blocked=blocked & (0xff-(bitmask_1[objno&0x07]));
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
	anl	a,@r0
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0xFF
	clr	c
	subb	a,r7
	anl	_blocked,a
	sjmp	00103$
00102$:
;	../fb_app_in8.c:557: blocked=blocked |bitmask_1[objno&0x07];
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
	anl	a,@r0
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r7,a
	orl	_blocked,a
00103$:
;	../fb_app_in8.c:559: sperren(objno&0x07,tmp);//temp=1 bedeutet Freigabe
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
	anl	a,@r0
	mov	r7,a
	push	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r7
	lcall	_sperren
	dec	sp
	pop	ar4
00119$:
;	../fb_app_in8.c:526: for(n=0;n<assno;n++) {				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	ljmp	00117$
00121$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sperren'
;------------------------------------------------------------
;freigabe                  Allocated to stack - _bp -3
;obj                       Allocated to registers r7 
;objval                    Allocated to registers b0 
;sendobj                   Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_in8.c:570: void sperren (unsigned char obj,unsigned char freigabe)
;	-----------------------------------------
;	 function sperren
;	-----------------------------------------
_sperren:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../fb_app_in8.c:572: __bit objval=0;
	clr	b0
;	../fb_app_in8.c:575: unsigned char sendobj=255;//obj=obj & 0x07;
	mov	r6,#0xFF
;	../fb_app_in8.c:576: switch ((eeprom[0xCE+(obj>>1)] >> ((obj & 0x01)*4)) & 0x0F){// Funtion des zugehörigen Eingangs
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
	sjmp	00171$
00170$:
	clr	c
	rrc	a
00171$:
	djnz	b,00170$
	anl	a,#0x0F
	mov	r5,a
	cjne	r5,#0x01,00172$
	sjmp	00101$
00172$:
	cjne	r5,#0x02,00173$
	ljmp	00110$
00173$:
	cjne	r5,#0x03,00174$
	ljmp	00122$
00174$:
	ljmp	00128$
;	../fb_app_in8.c:577: case 0x01:// funktion Schalten sperren
00101$:
;	../fb_app_in8.c:578: sendobj=obj;
;	../fb_app_in8.c:579: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
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
	sjmp	00176$
00175$:
	clr	c
	rrc	a
00176$:
	djnz	b,00175$
	anl	a,#0x0C
	mov	r5,a
	cjne	r5,#0x04,00177$
	sjmp	00102$
00177$:
	cjne	r5,#0x08,00178$
	sjmp	00103$
00178$:
;	../fb_app_in8.c:581: case 0x04:		//EIN
	cjne	r5,#0x0C,00108$
	sjmp	00104$
00102$:
;	../fb_app_in8.c:582: objval=1;
	setb	b0
;	../fb_app_in8.c:583: break;
	ljmp	00128$
;	../fb_app_in8.c:584: case 0x08:		//AUS
00103$:
;	../fb_app_in8.c:585: objval=0;
	clr	b0
;	../fb_app_in8.c:586: break;
	ljmp	00128$
;	../fb_app_in8.c:587: case 0x0C:	//UM
00104$:
;	../fb_app_in8.c:588: if (freigabe){ //ende sperre-> aktueller Zustand
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00106$
;	../fb_app_in8.c:589: objval= (portbuffer>>obj)& 0x01;
	mov	b,r7
	inc	b
	mov	a,_portbuffer
	sjmp	00182$
00181$:
	clr	c
	rrc	a
00182$:
	djnz	b,00181$
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	mov	b0,c
	ljmp	00128$
00106$:
;	../fb_app_in8.c:592: objval=read_obj_value(obj)^0x01;//Tele invers senden
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
;	../fb_app_in8.c:594: break;
	ljmp	00128$
;	../fb_app_in8.c:595: default:
00108$:
;	../fb_app_in8.c:596: sendobj=255;
	mov	r6,#0xFF
;	../fb_app_in8.c:600: break;	
	ljmp	00128$
;	../fb_app_in8.c:601: case 0x02:// funktion Dimmer-sperren
00110$:
;	../fb_app_in8.c:603: objval = read_obj_value(obj);
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
;	../fb_app_in8.c:604: sendobj=obj;
	mov	ar6,r7
;	../fb_app_in8.c:605: if (freigabe){		// Ende Sperre  
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00120$
;	../fb_app_in8.c:606: if (eeprom[0xD5+(obj*4)]&0x80) objval=0;
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
;	../fb_app_in8.c:607: else sendobj=255;
	mov	r6,#0xFF
	ljmp	00128$
00120$:
;	../fb_app_in8.c:610: switch (eeprom[0xD5+(obj*4)+1]& 0xC0) {//Bedienkonzept angucken
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0xC0
	cjne	r5,#0x40,00185$
	sjmp	00114$
00185$:
	cjne	r5,#0x80,00186$
	sjmp	00115$
00186$:
;	../fb_app_in8.c:611: case 0x40:	// zweiflaechen ein
	cjne	r5,#0xC0,00117$
	sjmp	00116$
00114$:
;	../fb_app_in8.c:612: objval=1;
	setb	b0
;	../fb_app_in8.c:613: break;
;	../fb_app_in8.c:614: case 0x80:	// zweiflaechen aus
	sjmp	00128$
00115$:
;	../fb_app_in8.c:615: objval=0;
	clr	b0
;	../fb_app_in8.c:616: break;
;	../fb_app_in8.c:617: case 0xC0:	// UM-heller
	sjmp	00128$
00116$:
;	../fb_app_in8.c:618: objval = !objval;
	cpl	b0
;	../fb_app_in8.c:619: break;
;	../fb_app_in8.c:620: default:
	sjmp	00128$
00117$:
;	../fb_app_in8.c:621: sendobj=255;
	mov	r6,#0xFF
;	../fb_app_in8.c:626: break;
;	../fb_app_in8.c:627: case 0x03:// Funktion Jalousie - Sperren
	sjmp	00128$
00122$:
;	../fb_app_in8.c:628: sendobj=obj+8;
	mov	a,#0x08
	add	a,r7
	mov	r6,a
;	../fb_app_in8.c:629: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
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
	sjmp	00189$
00188$:
	clr	c
	rrc	a
00189$:
	djnz	b,00188$
	anl	a,#0x0C
	mov	r5,a
	cjne	r5,#0x04,00190$
	sjmp	00123$
00190$:
	cjne	r5,#0x08,00191$
	sjmp	00124$
00191$:
;	../fb_app_in8.c:630: case 0x04:		//ab
	cjne	r5,#0x0C,00126$
	sjmp	00125$
00123$:
;	../fb_app_in8.c:631: objval=0;
	clr	b0
;	../fb_app_in8.c:632: break;
;	../fb_app_in8.c:633: case 0x08:		//auf
	sjmp	00128$
00124$:
;	../fb_app_in8.c:634: objval=1;
	setb	b0
;	../fb_app_in8.c:635: break;
;	../fb_app_in8.c:636: case 0x0c:	//UM
	sjmp	00128$
00125$:
;	../fb_app_in8.c:637: objval=read_obj_value(obj+8)^0x01;//neues Jaloobj invers zum langzeit
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
;	../fb_app_in8.c:638: break;
;	../fb_app_in8.c:639: default:
	sjmp	00128$
00126$:
;	../fb_app_in8.c:640: sendobj=255;	
	mov	r6,#0xFF
;	../fb_app_in8.c:644: }// Ende switch funktion
00128$:
;	../fb_app_in8.c:645: if(sendobj<=16){
	mov	a,r6
	add	a,#0xff - 0x10
	jc	00134$
;	../fb_app_in8.c:646: write_obj_value(sendobj,objval);
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
;	../fb_app_in8.c:647: while(!send_obj_value(sendobj));
00129$:
	mov	dpl,r6
	push	ar6
	lcall	_send_obj_value
	pop	ar6
	jnc	00129$
00134$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;objflags                  Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_in8.c:661: void read_value_req(void)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
;	../fb_app_in8.c:665: objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
	mov	dpl,(_telegramm + 0x0003)
	push	(_telegramm + 0x0004)
	lcall	_find_first_objno
	mov	r7,dpl
	dec	sp
;	../fb_app_in8.c:666: if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
	cjne	r7,#0xFF,00111$
	ret
00111$:
;	../fb_app_in8.c:672: objflags=read_objflags(objno);		// Objekt Flags lesen
	mov	dpl,r7
	push	ar7
	lcall	_read_objflags
	mov	r6,dpl
	pop	ar7
;	../fb_app_in8.c:674: if((objflags&0x0C)==0x0C) send_obj_value(objno+0x40);// 0x40 ist bit für response Telegramm
	anl	ar6,#0x0C
	cjne	r6,#0x0C,00105$
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	ljmp	_send_obj_value
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_send'
;------------------------------------------------------------
;value                     Allocated to stack - _bp -4
;objno                     Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_in8.c:679: void (write_send)(unsigned char objno,unsigned int value){
;	-----------------------------------------
;	 function write_send
;	-----------------------------------------
_write_send:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../fb_app_in8.c:681: write_obj_value(objno,value);
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
;	../fb_app_in8.c:682: send_obj_value(objno);
	mov	dpl,r7
	lcall	_send_obj_value
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bus_return'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;senden                    Allocated to registers r6 
;objval                    Allocated to registers b0 
;------------------------------------------------------------
;	../fb_app_in8.c:686: void bus_return(void){
;	-----------------------------------------
;	 function bus_return
;	-----------------------------------------
_bus_return:
;	../fb_app_in8.c:689: __bit objval=0;
	clr	b0
;	../fb_app_in8.c:690: Sperre=0;
	mov	_Sperre,#0x00
;	../fb_app_in8.c:692: for (n=0;n<8;n++){
	mov	r7,#0x00
00124$:
	cjne	r7,#0x08,00161$
00161$:
	jc	00162$
	ret
00162$:
;	../fb_app_in8.c:693: senden=0;
	mov	r6,#0x00
;	../fb_app_in8.c:694: timercnt[n]=0;// alle timer ausschalten
	mov	a,r7
	add	a,#_timercnt
	mov	r1,a
	mov	@r1,#0x00
;	../fb_app_in8.c:695: objectvalue_l[n]=0;
	mov	a,r7
	add	a,#_objectvalue_l
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_in8.c:696: objectvalue_h[n]=0;
	mov	a,r7
	add	a,#_objectvalue_h
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_in8.c:697: switch ((eeprom[0xCE+(n>>1)] >> ((n & 0x01)*4)) & 0x0F)	// Funktion des objektes
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
	sjmp	00164$
00163$:
	clr	c
	rrc	a
00164$:
	djnz	b,00163$
	anl	a,#0x0F
	mov	r5,a
	cjne	r5,#0x01,00165$
	sjmp	00101$
00165$:
	cjne	r5,#0x02,00166$
	sjmp	00107$
00166$:
	cjne	r5,#0x03,00167$
	sjmp	00102$
00167$:
	cjne	r5,#0x09,00168$
	ljmp	00112$
00168$:
	ljmp	00115$
;	../fb_app_in8.c:699: case 0x01:// schalten
00101$:
;	../fb_app_in8.c:700: timerstate[n]=0;
	mov	a,r7
	add	a,#_timerstate
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_in8.c:701: case 0x03:// Jalousie
00102$:
;	../fb_app_in8.c:703: switch(eeprom[0xD5+(n*4)]&0xC0){
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	anl	ar5,#0xC0
	cjne	r5,#0x40,00169$
	sjmp	00103$
00169$:
	cjne	r5,#0x80,00170$
	sjmp	00104$
00170$:
;	../fb_app_in8.c:704: case 0x40:
	cjne	r5,#0xC0,00115$
	sjmp	00105$
00103$:
;	../fb_app_in8.c:705: objval=1;
	setb	b0
;	../fb_app_in8.c:706: senden=1;
	mov	r6,#0x01
;	../fb_app_in8.c:707: break;	
;	../fb_app_in8.c:708: case 0x80:
	sjmp	00115$
00104$:
;	../fb_app_in8.c:709: objval=0;
	clr	b0
;	../fb_app_in8.c:710: senden=1;
	mov	r6,#0x01
;	../fb_app_in8.c:711: break;
;	../fb_app_in8.c:712: case 0xC0:
	sjmp	00115$
00105$:
;	../fb_app_in8.c:713: objval=(p0h>>n)& 0x01;
	mov	b,r7
	inc	b
	mov	a,_p0h
	sjmp	00173$
00172$:
	clr	c
	rrc	a
00173$:
	djnz	b,00172$
	anl	a,#0x01
	mov	r5,a
	add	a,#0xff
	mov	b0,c
;	../fb_app_in8.c:714: senden=1;
	mov	r6,#0x01
;	../fb_app_in8.c:717: break;
;	../fb_app_in8.c:718: case 0x02://dimmen austele
	sjmp	00115$
00107$:
;	../fb_app_in8.c:719: if(eeprom[0xD7+(n*4)]&0x80){
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r5,a
	add	a,#0xD7
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	jnb	acc.7,00109$
;	../fb_app_in8.c:720: objval=0;
	clr	b0
;	../fb_app_in8.c:721: senden=1;
	mov	r6,#0x01
00109$:
;	../fb_app_in8.c:723: if(eeprom[0xD8+(n*4)]&0x80){
	mov	a,#0xD8
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	jnb	acc.7,00115$
;	../fb_app_in8.c:724: objval=1;
	setb	b0
;	../fb_app_in8.c:725: senden=1;
	mov	r6,#0x01
;	../fb_app_in8.c:728: break;
;	../fb_app_in8.c:729: case 0x09:	// timer für impulszähler starten falls kein sync angeschlossen 
	sjmp	00115$
00112$:
;	../fb_app_in8.c:730: if (n<=1){
	mov	a,r7
	add	a,#0xff - 0x01
	jc	00115$
;	../fb_app_in8.c:731: timercnt[n]=0x80;
	mov	@r1,#0x80
;	../fb_app_in8.c:732: timerbase[n]=0x80;
	mov	a,r7
	add	a,#_timerbase
	mov	r0,a
	mov	@r0,#0x80
;	../fb_app_in8.c:733: zaehlervalue[n]=0;
	mov	a,r7
	add	a,r7
	mov	r5,a
	add	a,#_zaehlervalue
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	../fb_app_in8.c:736: }
00115$:
;	../fb_app_in8.c:737: if (senden){
	mov	a,r6
	jz	00120$
;	../fb_app_in8.c:738: write_obj_value(n,objval);// eis1, kein selftele, speichern ja
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
;	../fb_app_in8.c:739: while(!send_obj_value(n));
00116$:
	mov	dpl,r7
	push	ar7
	push	bits
	lcall	_send_obj_value
	pop	bits
	pop	ar7
	jnc	00116$
00120$:
;	../fb_app_in8.c:741: if((eeprom[0xD5+(n*4)]& 0x03)==1){
	mov	a,r7
	add	a,r7
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x03
	cjne	r6,#0x01,00122$
;	../fb_app_in8.c:742: blocked |= bitmask_1[n];
	mov	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r6,a
	orl	_blocked,a
	sjmp	00126$
00122$:
;	../fb_app_in8.c:745: blocked &= (~bitmask_1[n]);
	mov	a,r7
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	cpl	a
	mov	r6,a
	anl	_blocked,a
00126$:
;	../fb_app_in8.c:692: for (n=0;n<8;n++){
	inc	r7
	ljmp	00124$
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;objvalue                  Allocated to stack - _bp +1
;objtype                   Allocated to registers r6 
;sloc0                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	../fb_app_in8.c:800: unsigned long read_obj_value(unsigned char objno)
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
;	../fb_app_in8.c:804: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
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
	mov	r6,a
;	../fb_app_in8.c:806: if (objno <= 15) {	// wenn objno <= anzahl objekte
	mov	a,r7
	add	a,#0xff - 0x0F
	jc	00105$
;	../fb_app_in8.c:807: if (objtype>=8){// bei 16bit
	cjne	r6,#0x08,00114$
00114$:
	jc	00102$
;	../fb_app_in8.c:808: objvalue=objectvalue_h[objno&0x07]<<8;
	mov	a,#0x07
	anl	a,r7
	mov	r6,a
	add	a,#_objectvalue_h
	mov	r1,a
	mov	ar4,@r1
	mov	ar3,r4
	mov	r4,#0x00
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar3
	mov	a,r3
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../fb_app_in8.c:809: objvalue+=(objectvalue_l[objno&0x07]);//objvalue=objvalue<<8;
	mov	a,r6
	add	a,#_objectvalue_l
	mov	r1,a
	mov	ar5,@r1
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
	sjmp	00106$
00102$:
;	../fb_app_in8.c:811: else objvalue = objectvalue_l[objno]&(0xFF>>(7-objtype));
	mov	a,r7
	add	a,#_objectvalue_l
	mov	r1,a
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	b,r6
	inc	b
	mov	a,#0xFF
	sjmp	00117$
00116$:
	clr	c
	rrc	a
00117$:
	djnz	b,00116$
	mov	r6,a
	anl	ar5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	sjmp	00106$
00105$:
;	../fb_app_in8.c:814: objvalue=(Sperre>>(objno-16))&0x01;
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xF0
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	b,r7
	inc	b
	mov	a,_Sperre
	sjmp	00119$
00118$:
	clr	c
	rrc	a
00119$:
	djnz	b,00118$
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
00106$:
;	../fb_app_in8.c:816: return(objvalue);
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
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_value'
;------------------------------------------------------------
;objvalue                  Allocated to stack - _bp -6
;objno                     Allocated to registers r7 
;objtype                   Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_in8.c:821: void write_obj_value(unsigned char objno,long objvalue)
;	-----------------------------------------
;	 function write_obj_value
;	-----------------------------------------
_write_obj_value:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../fb_app_in8.c:825: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
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
	mov	r6,a
;	../fb_app_in8.c:827: if (objno <= 15) {	// wenn objno <= anzahl objekte
	mov	a,r7
	add	a,#0xff - 0x0F
	jc	00104$
;	../fb_app_in8.c:828: if (objtype>=8){
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	../fb_app_in8.c:829: objectvalue_h[objno&0x07]=objvalue>>8;
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
;	../fb_app_in8.c:830: objno &= 0x07;
	mov	ar7,r6
00102$:
;	../fb_app_in8.c:832: objectvalue_l[objno]=objvalue & 0xFF;
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
	sjmp	00106$
00104$:
;	../fb_app_in8.c:836: Sperre &= (0xff-(bitmask_1[objno-16]));
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
;	../fb_app_in8.c:837: Sperre |= ((objvalue&0x01)<<(objno-16));
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
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
	mov	r7,a
	mov	a,_Sperre
	mov	r6,a
	orl	ar7,a
	mov	_Sperre,r7
00106$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
;	../fb_app_in8.c:843: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
;	../fb_app_in8.c:848: P0M1=0xFF;	//P0 auf input only (high impedance!)
	mov	_P0M1,#0xFF
;	../fb_app_in8.c:849: P0M2=0x00;
	mov	_P0M2,#0x00
;	../fb_app_in8.c:850: P0=0xFF;
	mov	_P0,#0xFF
;	../fb_app_in8.c:857: transparency=0;
	clr	_transparency
;	../fb_app_in8.c:860: timer=0;			// Timer-Variable, wird alle 65ms inkrementiert
	clr	a
	mov	_timer,a
	mov	(_timer + 1),a
;	../fb_app_in8.c:862: EA=0; 
	clr	_IEN0_7
;	../fb_app_in8.c:863: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_app_in8.c:864: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x03
	mov	_FMDATA,#0x00
;	../fb_app_in8.c:865: WRITE_BYTE(0x01,0x04,0x04)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x04
	mov	_FMDATA,#0x04
;	../fb_app_in8.c:866: WRITE_BYTE(0x01,0x05,0x70)	// Geräte Typ (2118) 7054h
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x05
	mov	_FMDATA,#0x70
;	../fb_app_in8.c:867: WRITE_BYTE(0x01,0x06,0x54)  // 	"	"	"
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x06
	mov	_FMDATA,#0x54
;	../fb_app_in8.c:868: WRITE_BYTE(0x01,0x07,0x02)	// Versionsnummer
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x07
	mov	_FMDATA,#0x02
;	../fb_app_in8.c:869: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0C
	mov	_FMDATA,#0x00
;	../fb_app_in8.c:870: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0D
	mov	_FMDATA,#0xFF
;	../fb_app_in8.c:871: WRITE_BYTE(0x01,0x12,0x84)	// COMMSTAB Pointer
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x12
	mov	_FMDATA,#0x84
;	../fb_app_in8.c:872: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_app_in8.c:875: EA=1;
	setb	_IEN0_7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
