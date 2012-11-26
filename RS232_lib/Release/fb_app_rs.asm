;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Fri Oct 19 23:17:24 2012
;--------------------------------------------------------
	.module fb_app_rs
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _baud
	.globl _ga_db
	.globl _echo
	.globl _pa_l
	.globl _pa_h
	.globl _fm
	.globl _rs_send_s
	.globl _rs_send
	.globl _rs_send_dec
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
	.globl _rxledcount
	.globl _eibledcount
	.globl _ledcount
	.globl _pa_tmp
	.globl _groupadr
	.globl _rsinpos
	.globl _rsin
	.globl _build_tel
	.globl _gapos_in_gat
	.globl _write_value_req
	.globl _read_value_req
	.globl _save_ga
	.globl _tel_header
	.globl _convert_adr
	.globl _equal_pos
	.globl _serial_int
	.globl _send_ok
	.globl _set_filtermode
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
	.area REG_BANK_1	(REL,OVR,DATA)
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
_rsin::
	.ds 30
_rsinpos::
	.ds 1
_groupadr::
	.ds 2
_pa_tmp::
	.ds 2
_ledcount::
	.ds 1
_eibledcount::
	.ds 1
_rxledcount::
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
;	../fb_app_rs.c:26: unsigned int groupadr=0,pa_tmp;
	clr	a
	mov	_groupadr,a
	mov	(_groupadr + 1),a
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
;Allocation info for local variables in function 'build_tel'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;build_ok                  Allocated to registers 
;value                     Allocated to stack - _bp +1
;value_pos                 Allocated to registers r5 r4 
;eis5temp                  Allocated to registers r2 r3 
;d                         Allocated to stack - _bp +3
;exp                       Allocated to registers r5 r4 
;temp                      Allocated to stack - _bp +5
;day                       Allocated to registers r6 
;repeatflag                Allocated to registers b0 
;sloc0                     Allocated to stack - _bp +9
;sloc1                     Allocated to stack - _bp +20
;sloc2                     Allocated to stack - _bp +10
;sloc3                     Allocated to stack - _bp +11
;sloc4                     Allocated to stack - _bp +25
;------------------------------------------------------------
;	../fb_app_rs.c:50: __bit build_tel(unsigned char objno)
;	-----------------------------------------
;	 function build_tel
;	-----------------------------------------
_build_tel:
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
	add	a,#0x0C
	mov	sp,a
	mov	r7,dpl
;	../fb_app_rs.c:59: unsigned char day=0;//, length;
	mov	r6,#0x00
;	../fb_app_rs.c:63: repeatflag=objno&0x20;
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
	add	a,#0xff
	mov	b0,c
;	../fb_app_rs.c:64: groupadr=convert_adr(6);
	mov	dpl,#0x06
	push	ar7
	push	ar6
	push	bits
	lcall	_convert_adr
	mov	_groupadr,dpl
	mov	(_groupadr + 1),dph
	pop	bits
;	../fb_app_rs.c:65: value_pos=equal_pos()+1;
	push	bits
	lcall	_equal_pos
	mov	r5,dpl
	pop	bits
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	inc	r5
	cjne	r5,#0x00,00205$
	inc	r4
00205$:
;	../fb_app_rs.c:66: switch (objno)// entspricht in der rs soft dem eis type.
	cjne	r7,#0x01,00206$
	sjmp	00101$
00206$:
	cjne	r7,#0x02,00207$
	sjmp	00105$
00207$:
	cjne	r7,#0x03,00208$
	ljmp	00109$
00208$:
	cjne	r7,#0x04,00209$
	ljmp	00110$
00209$:
	cjne	r7,#0x05,00210$
	ljmp	00111$
00210$:
	cjne	r7,#0x06,00211$
	ljmp	00131$
00211$:
	cjne	r7,#0x0F,00212$
	ljmp	00135$
00212$:
	cjne	r7,#0x10,00213$
	ljmp	00139$
00213$:
	ljmp	00140$
;	../fb_app_rs.c:71: case 1:// EIS1
00101$:
;	../fb_app_rs.c:72: tel_header(groupadr, 1);
	push	bits
	mov	a,#0x01
	push	acc
	mov	dpl,_groupadr
	mov	dph,(_groupadr + 1)
	lcall	_tel_header
	dec	sp
	pop	bits
;	../fb_app_rs.c:73: if (rsin[rsinpos-2]=='1') value=1;
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x31,00103$
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x01
	inc	r0
	mov	@r0,#0x00
	sjmp	00104$
00103$:
;	../fb_app_rs.c:74: else value=0;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00104$:
;	../fb_app_rs.c:75: telegramm[7]=0x80+value;
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	a,#0x80
	add	a,r2
	mov	(_telegramm + 0x0007),a
;	../fb_app_rs.c:77: break;	
	ljmp	00140$
;	../fb_app_rs.c:78: case 2:// EIS2
00105$:
;	../fb_app_rs.c:79: tel_header(groupadr, 1);
	push	bits
	mov	a,#0x01
	push	acc
	mov	dpl,_groupadr
	mov	dph,(_groupadr + 1)
	lcall	_tel_header
	dec	sp
	pop	bits
;	../fb_app_rs.c:80: if (rsin[rsinpos-3]=='u') value=0x88;
	mov	a,_rsinpos
	add	a,#0xFD
	add	a,#_rsin
	mov	r1,a
	mov	ar2,@r1
	cjne	r2,#0x75,00107$
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x88
	inc	r0
	mov	@r0,#0x00
	sjmp	00108$
00107$:
;	../fb_app_rs.c:81: else value=0x80;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x80
	inc	r0
	mov	@r0,#0x00
00108$:
;	../fb_app_rs.c:82: value+=((rsin[rsinpos-2]-48));
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar2,@r1
	mov	r7,#0x00
	mov	a,r2
	add	a,#0xD0
	mov	r2,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../fb_app_rs.c:83: telegramm[7]=value&0xFF;
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r7,#0x00
	mov	(_telegramm + 0x0007),r3
;	../fb_app_rs.c:84: break;	
	ljmp	00140$
;	../fb_app_rs.c:85: case 3:// EIS3
00109$:
;	../fb_app_rs.c:86: day=(rsin[value_pos]-48)<<5;
	mov	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	add	a,#0xD0
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0xE0
	mov	r6,a
;	../fb_app_rs.c:87: value_pos+=2;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r4,a
;	../fb_app_rs.c:88: case 4:// EIS4	
00110$:
;	../fb_app_rs.c:89: tel_header(groupadr, 4);
	push	ar6
	push	ar5
	push	ar4
	push	bits
	mov	a,#0x04
	push	acc
	mov	dpl,_groupadr
	mov	dph,(_groupadr + 1)
	lcall	_tel_header
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
	pop	ar6
;	../fb_app_rs.c:90: telegramm[7]=0x80;
	mov	(_telegramm + 0x0007),#0x80
;	../fb_app_rs.c:91: telegramm[8]=((rsin[value_pos]-48)*10)+(rsin[value_pos+1]-48)+day;
	mov	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	add	a,#0xD0
	mov	b,#0x0A
	mul	ab
	mov	r7,a
	mov	ar3,r5
	mov	a,r3
	inc	a
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	mov	r2,a
	add	a,#0xD0
	add	a,r7
	add	a,r6
	mov	(_telegramm + 0x0008),a
;	../fb_app_rs.c:92: telegramm[9]=((rsin[value_pos+3]-48)*10)+(rsin[value_pos+4]-48);
	mov	a,#0x03
	add	a,r3
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	add	a,#0xD0
	mov	b,#0x0A
	mul	ab
	mov	r7,a
	mov	a,#0x04
	add	a,r3
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	add	a,#0xD0
	add	a,r7
	mov	(_telegramm + 0x0009),a
;	../fb_app_rs.c:93: telegramm[10]=((rsin[value_pos+6]-48)*10)+(rsin[value_pos+7]-48);
	mov	a,#0x06
	add	a,r3
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	add	a,#0xD0
	mov	b,#0x0A
	mul	ab
	mov	r7,a
	mov	a,#0x07
	add	a,r3
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	add	a,#0xD0
	add	a,r7
	mov	(_telegramm + 0x000a),a
;	../fb_app_rs.c:94: break;
	ljmp	00140$
;	../fb_app_rs.c:102: */	case 5://
00111$:
;	../fb_app_rs.c:103: tel_header(groupadr, 3);
	push	ar5
	push	ar4
	push	bits
	mov	a,#0x03
	push	acc
	mov	dpl,_groupadr
	mov	dph,(_groupadr + 1)
	lcall	_tel_header
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
;	../fb_app_rs.c:104: telegramm[7]=0x80;
	mov	(_telegramm + 0x0007),#0x80
;	../fb_app_rs.c:106: if(rsin[value_pos]<48 || rsin[value_pos]>57) d=value_pos+1; else d=value_pos;	// falls Vorzeichen
	mov	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	cjne	@r0,#0x30,00218$
00218$:
	jc	00112$
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x39
	jnc	00113$
00112$:
	mov	a,#0x01
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	sjmp	00114$
00113$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
00114$:
;	../fb_app_rs.c:109: temp=0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../fb_app_rs.c:110: while (d<(rsinpos-1) && rsin[d]!=0x2E && rsin[d]!=0x2C) {
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00118$:
	mov	r5,_rsinpos
	mov	r4,#0x00
	mov	a,r5
	add	a,#0xFF
	mov	r2,a
	mov	a,r4
	addc	a,#0xFF
	mov	r3,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00221$
	ljmp	00120$
00221$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	add	a,#_rsin
	mov	r1,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x2E,00222$
	ljmp	00120$
00222$:
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	cjne	@r0,#0x2C,00223$
	sjmp	00120$
00223$:
;	../fb_app_rs.c:111: temp=temp*10;
	push	bits
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../fb_app_rs.c:112: temp=temp+(rsin[d]-48);
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar3,@r0
	mov	r7,#0x00
	mov	a,r3
	add	a,#0xD0
	mov	r3,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r2,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../fb_app_rs.c:113: d++;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00224$
	inc	r0
	inc	@r0
00224$:
	ljmp	00118$
00120$:
;	../fb_app_rs.c:115: d++;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,#0x01
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
;	../fb_app_rs.c:116: temp=temp*10;
	push	ar5
	push	ar4
	push	bits
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../fb_app_rs.c:117: if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//erste Stelle nach dem Komma
	mov	a,r5
	add	a,#0xFF
	mov	r6,a
	mov	a,r4
	addc	a,#0xFF
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xD0
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	@r0,a
	mov	a,r6
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
00122$:
;	../fb_app_rs.c:118: d++;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00226$
	inc	r0
	inc	@r0
00226$:
;	../fb_app_rs.c:119: temp=temp*10;
	push	ar5
	push	ar4
	push	bits
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar4
	pop	ar5
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	../fb_app_rs.c:120: if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//zweite Stelle nach dem Komma gen
	mov	a,r5
	add	a,#0xFF
	mov	r6,a
	mov	a,r4
	addc	a,#0xFF
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00167$
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xD0
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r7
	add	a,@r0
	mov	@r0,a
	mov	a,r6
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
;	../fb_app_rs.c:123: while(temp > 0x07FF) {
00167$:
	mov	r5,#0x00
	mov	r4,#0x00
00125$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	mov	a,@r0
	anl	a,#0xF8
	jnz	00228$
	inc	r0
	mov	a,@r0
	jnz	00228$
	inc	r0
	mov	a,@r0
	jz	00127$
00228$:
;	../fb_app_rs.c:124: temp=temp>>1;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	clr	c
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	@r0,a
;	../fb_app_rs.c:125: exp=exp + (0x800);
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	sjmp	00125$
00127$:
;	../fb_app_rs.c:127: if (rsin[value_pos]=='-') {
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	cjne	@r0,#0x2D,00129$
;	../fb_app_rs.c:128: temp=(0x7FF-temp)+1;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	clr	c
	subb	a,@r0
	mov	@r0,a
	mov	a,#0x08
	inc	r0
	subb	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	subb	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	subb	a,@r0
	mov	@r0,a
;	../fb_app_rs.c:129: eis5temp=temp+exp;
	mov	ar2,r5
	mov	a,r4
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	a,r7
	inc	r0
	addc	a,@r0
;	../fb_app_rs.c:130: eis5temp+=0x8000;
	mov	ar6,r2
	mov	ar7,r3
	mov	a,#0x80
	add	a,r7
	mov	r7,a
	mov	ar2,r6
	mov	ar3,r7
	sjmp	00130$
00129$:
;	../fb_app_rs.c:132: else eis5temp=temp+exp;
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	ar2,r5
	mov	ar3,r4
00130$:
;	../fb_app_rs.c:133: telegramm[8]=eis5temp>>8;
	mov	ar7,r3
	mov	(_telegramm + 0x0008),r7
;	../fb_app_rs.c:134: telegramm[9]=eis5temp;		
	mov	(_telegramm + 0x0009),r2
;	../fb_app_rs.c:135: break;
	ljmp	00140$
;	../fb_app_rs.c:136: case 6:// EIS 6
00131$:
;	../fb_app_rs.c:137: tel_header(groupadr, 2);
	push	ar5
	push	ar4
	push	bits
	mov	a,#0x02
	push	acc
	mov	dpl,_groupadr
	mov	dph,(_groupadr + 1)
	lcall	_tel_header
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
;	../fb_app_rs.c:138: telegramm[7]=0x80;
	mov	(_telegramm + 0x0007),#0x80
;	../fb_app_rs.c:140: value=0;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../fb_app_rs.c:141: d=value_pos;
	mov	ar6,r5
	mov	ar7,r4
;	../fb_app_rs.c:142: while(d<(rsinpos-1)) {
00132$:
	mov	r2,_rsinpos
	mov	r3,#0x00
	dec	r2
	cjne	r2,#0xFF,00231$
	dec	r3
00231$:
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00134$
;	../fb_app_rs.c:143: value*=10;
	push	ar7
	push	ar6
	push	bits
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	../fb_app_rs.c:144: value+=rsin[d]-48;
	mov	a,r6
	add	a,#_rsin
	mov	r1,a
	mov	ar3,@r1
	mov	r2,#0x00
	mov	a,r3
	add	a,#0xD0
	mov	r3,a
	mov	a,r2
	addc	a,#0xFF
	mov	r2,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../fb_app_rs.c:145: d++;
	inc	r6
	cjne	r6,#0x00,00132$
	inc	r7
	sjmp	00132$
00134$:
;	../fb_app_rs.c:148: telegramm[8]=value;
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	(_telegramm + 0x0008),r3
;	../fb_app_rs.c:149: break;
	ljmp	00140$
;	../fb_app_rs.c:150: case 15: // EIS 15
00135$:
;	../fb_app_rs.c:151: tel_header(groupadr,15); //15
	push	ar5
	push	ar4
	push	bits
	mov	a,#0x0F
	push	acc
	mov	dpl,_groupadr
	mov	dph,(_groupadr + 1)
	lcall	_tel_header
	dec	sp
	pop	bits
	pop	ar4
	pop	ar5
;	../fb_app_rs.c:152: telegramm[7]=0x80;
	mov	(_telegramm + 0x0007),#0x80
;	../fb_app_rs.c:153: for(d=8;d<22;d++){
	mov	r6,#0x08
	mov	r7,#0x00
00143$:
	clr	c
	mov	a,r6
	subb	a,#0x16
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00140$
;	../fb_app_rs.c:154: if((value_pos+d-8)>=(rsinpos-1)) telegramm[d]=0x00;
	mov	ar2,r6
	mov	ar3,r7
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r3
	addc	a,r4
	mov	r3,a
	mov	a,r2
	add	a,#0xF8
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	push	ar5
	push	ar4
	mov	r4,_rsinpos
	mov	r5,#0x00
	dec	r4
	cjne	r4,#0xFF,00235$
	dec	r5
00235$:
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	pop	ar4
	pop	ar5
	jc	00137$
	mov	a,r6
	add	a,#_telegramm
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00145$
00137$:
;	../fb_app_rs.c:155: else telegramm[d]=rsin[(value_pos+d-8)];
	mov	a,r6
	add	a,#_telegramm
	mov	r1,a
	mov	ar3,r5
	mov	ar2,r6
	mov	a,r2
	add	a,r3
	add	a,#0xF8
	add	a,#_rsin
	mov	r0,a
	mov	ar3,@r0
	mov	@r1,ar3
00145$:
;	../fb_app_rs.c:153: for(d=8;d<22;d++){
	inc	r6
;	../fb_app_rs.c:158: case 16:
	cjne	r6,#0x00,00143$
	inc	r7
	sjmp	00143$
00139$:
;	../fb_app_rs.c:159: groupadr=convert_adr(5);
	mov	dpl,#0x05
	push	bits
	lcall	_convert_adr
	mov	_groupadr,dpl
	mov	(_groupadr + 1),dph
	pop	bits
;	../fb_app_rs.c:160: tel_header(groupadr, 1);
	push	bits
	mov	a,#0x01
	push	acc
	mov	dpl,_groupadr
	mov	dph,(_groupadr + 1)
	lcall	_tel_header
	dec	sp
	pop	bits
;	../fb_app_rs.c:161: telegramm[7]=0x00;
	mov	(_telegramm + 0x0007),#0x00
;	../fb_app_rs.c:163: }
00140$:
;	../fb_app_rs.c:164: if(repeatflag) telegramm[0]&=0xDF;		// Wiederholungsbit löschen für Wiederholtelegramm
	jnb	b0,00142$
	mov	a,#0xDF
	anl	a,_telegramm
	mov	_telegramm,a
00142$:
;	../fb_app_rs.c:165: return(build_ok);
	setb	c
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gapos_in_gat'
;------------------------------------------------------------
;gal                       Allocated to stack - _bp -3
;gah                       Allocated to stack - _bp +1
;ga_position               Allocated to registers r6 
;n                         Allocated to stack - _bp +2
;------------------------------------------------------------
;	../fb_app_rs.c:170: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function gapos_in_gat
;	-----------------------------------------
_gapos_in_gat:
	push	_bp
	mov	_bp,sp
	push	dpl
	inc	sp
;	../fb_app_rs.c:174: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
	mov	r6,#0xFF
;	../fb_app_rs.c:176: while(ga_db[n].ga==((gah<<8)+gal) && n<=62){
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x00
00102$:
	push	ar6
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	ar6,r2
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	mov	r7,#0x00
	mov	a,r5
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	a,r3
	cjne	a,ar2,00119$
	mov	a,r4
	cjne	a,ar6,00119$
	sjmp	00120$
00119$:
	pop	ar6
	sjmp	00114$
00120$:
	pop	ar6
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,#0xff - 0x3E
	jc	00114$
;	../fb_app_rs.c:177: n++;
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	sjmp	00102$
00114$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar7,@r0
;	../fb_app_rs.c:179: if(n<62|| !filtermode)ga_position=n;// wenn GA gefunden oder kein filtermode aktiv ist... 
	mov	r0,_bp
	inc	r0
	inc	r0
	cjne	@r0,#0x3E,00122$
00122$:
	jc	00105$
	jb	_filtermode,00106$
00105$:
	mov	ar6,r7
00106$:
;	../fb_app_rs.c:180: return (ga_position);						// wird geackt
	mov	dpl,r6
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;length                    Allocated to registers r4 
;n                         Allocated to stack - _bp +1
;ga                        Allocated to stack - _bp +2
;val                       Allocated to registers r5 r6 
;------------------------------------------------------------
;	../fb_app_rs.c:187: void write_value_req(void)
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
;	../fb_app_rs.c:189: unsigned char length,n=0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
;	../fb_app_rs.c:191: unsigned int val=0;
	mov	r5,#0x00
	mov	r6,#0x00
;	../fb_app_rs.c:193: eibledcount=0xff;// EIBLED lang einschalten
	mov	_eibledcount,#0xFF
;	../fb_app_rs.c:194: length=telegramm[5]&0x0F;
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
;	../fb_app_rs.c:195: if (length<=15 )	{// wenn ein Telegramm reinkommt..
	mov  r4,a
	add	a,#0xff - 0x0F
	jnc	00169$
	ljmp	00134$
00169$:
;	../fb_app_rs.c:196: if(length==1)val=telegramm[7] & 0x3F;
	cjne	r4,#0x01,00102$
	mov	a,#0x3F
	anl	a,(_telegramm + 0x0007)
	mov	r3,a
	mov	r5,a
	mov	r6,#0x00
00102$:
;	../fb_app_rs.c:197: if(length==2)val=telegramm[8] ;
	cjne	r4,#0x02,00104$
	mov	r5,(_telegramm + 0x0008)
	mov	r6,#0x00
00104$:
;	../fb_app_rs.c:198: if(length==3)val=256*telegramm[8]+telegramm[9];
	cjne	r4,#0x03,00106$
	push	ar4
	mov	r3,(_telegramm + 0x0008)
	mov	r2,#0x00
	mov	r4,(_telegramm + 0x0009)
	mov	r7,#0x00
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	ar5,r2
	mov	ar6,r3
;	../fb_app_rs.c:237: save_ga(ga,val);						// GA mit Wert speichern
	pop	ar4
;	../fb_app_rs.c:198: if(length==3)val=256*telegramm[8]+telegramm[9];
00106$:
;	../fb_app_rs.c:199: ga=256*telegramm[3]+telegramm[4];
	push	ar5
	push	ar6
	mov	r7,(_telegramm + 0x0003)
	mov	ar2,r7
	mov	ar3,r2
	mov	r2,#0x00
	mov	r5,(_telegramm + 0x0004)
	mov	r6,#0x00
	mov	a,r5
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	../fb_app_rs.c:200: if(filtermode){
	pop	ar6
	pop	ar5
	jnb	_filtermode,00110$
;	../fb_app_rs.c:201: for(n=0;n<=61;n++) {						// Wert der GA aus Flash lesen
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
00126$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xff - 0x3D
	jc	00110$
;	../fb_app_rs.c:202: if(ga_db[n].ga==ga) {
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	add	a,acc
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00178$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00178$
	sjmp	00179$
00178$:
	sjmp	00128$
00179$:
;	../fb_app_rs.c:203: n=63;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x3F
00128$:
;	../fb_app_rs.c:201: for(n=0;n<=61;n++) {						// Wert der GA aus Flash lesen
	mov	r0,_bp
	inc	r0
	inc	@r0
	sjmp	00126$
00110$:
;	../fb_app_rs.c:207: if ((n>=63 || !filtermode)) {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x3F,00180$
00180$:
	jnc	00121$
	jnb	_filtermode,00182$
	ljmp	00134$
00182$:
00121$:
;	../fb_app_rs.c:208: if(!tel_sent){
	jnb	_tel_sent,00183$
	ljmp	00120$
00183$:
;	../fb_app_rs.c:209: rs_send_dec(telegramm[3]>>3);			// GA senden
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r7,a
	mov	r3,#0x00
	mov	dpl,r7
	mov	dph,r3
	push	ar6
	push	ar5
	push	ar4
	lcall	_rs_send_dec
;	../fb_app_rs.c:210: rs_send('/');
	mov	dpl,#0x2F
	lcall	_rs_send
;	../fb_app_rs.c:211: rs_send_dec(telegramm[3] & 0x07);
	mov	a,#0x07
	anl	a,(_telegramm + 0x0003)
	mov	r7,a
	mov	r3,#0x00
	mov	dpl,r7
	mov	dph,r3
	lcall	_rs_send_dec
;	../fb_app_rs.c:212: rs_send('/');
	mov	dpl,#0x2F
	lcall	_rs_send
;	../fb_app_rs.c:213: rs_send_dec(telegramm[4]);
	mov	r3,(_telegramm + 0x0004)
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r7
	lcall	_rs_send_dec
;	../fb_app_rs.c:214: rs_send('=');
	mov	dpl,#0x3D
	lcall	_rs_send
	pop	ar4
	pop	ar5
	pop	ar6
;	../fb_app_rs.c:215: if (length<=3)	rs_send_dec(val);		// Value senden
	mov	a,r4
	add	a,#0xff - 0x03
	jc	00112$
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	push	ar4
	lcall	_rs_send_dec
	pop	ar4
	pop	ar5
	pop	ar6
00112$:
;	../fb_app_rs.c:216: if(length==4){
	cjne	r4,#0x04,00116$
;	../fb_app_rs.c:217: n='.';  
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x2E
;	../fb_app_rs.c:218: if(telegramm[8]>31){// time
	mov	a,(_telegramm + 0x0008)
	mov	r7,a
	add	a,#0xff - 0x1F
	jnc	00114$
;	../fb_app_rs.c:219: rs_send((telegramm[8]>>5)+48);
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	add	a,#0x30
	mov	dpl,a
	push	ar6
	push	ar5
	push	ar4
	lcall	_rs_send
;	../fb_app_rs.c:220: rs_send(',');
	mov	dpl,#0x2C
	lcall	_rs_send
	pop	ar4
	pop	ar5
	pop	ar6
;	../fb_app_rs.c:221: n=':';
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x3A
00114$:
;	../fb_app_rs.c:223: rs_send_dec(telegramm[8]&0x1F);
	mov	a,#0x1F
	anl	a,(_telegramm + 0x0008)
	mov	r7,a
	mov	r3,#0x00
	mov	dpl,r7
	mov	dph,r3
	push	ar6
	push	ar5
	push	ar4
	lcall	_rs_send_dec
;	../fb_app_rs.c:224: rs_send(n);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_rs_send
;	../fb_app_rs.c:225: rs_send_dec(telegramm[9]);
	mov	r3,(_telegramm + 0x0009)
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r7
	lcall	_rs_send_dec
;	../fb_app_rs.c:226: rs_send(n);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_rs_send
;	../fb_app_rs.c:227: rs_send_dec(telegramm[10]);
	mov	r3,(_telegramm + 0x000a)
	mov	r7,#0x00
	mov	dpl,r3
	mov	dph,r7
	lcall	_rs_send_dec
	pop	ar4
	pop	ar5
	pop	ar6
00116$:
;	../fb_app_rs.c:229: if(length>4){
	mov	a,r4
	add	a,#0xff - 0x04
	jnc	00118$
;	../fb_app_rs.c:230: for(n=8;n <= length+6;n++){
	mov	r7,#0x08
00130$:
	push	ar5
	push	ar6
	mov	ar2,r4
	mov	r3,#0x00
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar5,r7
	mov	r6,#0x00
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar6
	pop	ar5
	jc	00118$
;	../fb_app_rs.c:231: rs_send(telegramm[n]);
	mov	a,r7
	add	a,#_telegramm
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_rs_send
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../fb_app_rs.c:230: for(n=8;n <= length+6;n++){
	inc	r7
	sjmp	00130$
00118$:
;	../fb_app_rs.c:234: rs_send(13);							// CR LF
	mov	dpl,#0x0D
	push	ar6
	push	ar5
	lcall	_rs_send
;	../fb_app_rs.c:235: rs_send(10);
	mov	dpl,#0x0A
	lcall	_rs_send
	pop	ar5
	pop	ar6
00120$:
;	../fb_app_rs.c:237: save_ga(ga,val);						// GA mit Wert speichern
	push	ar5
	push	ar6
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_save_ga
	dec	sp
	dec	sp
00134$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;	../fb_app_rs.c:246: void read_value_req(void)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
;	../fb_app_rs.c:249: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'save_ga'
;------------------------------------------------------------
;val                       Allocated to stack - _bp -4
;ga                        Allocated to stack - _bp +1
;n                         Allocated to registers r5 
;write_ok                  Allocated to registers b0 
;------------------------------------------------------------
;	../fb_app_rs.c:256: void save_ga(unsigned int ga, unsigned int val)
;	-----------------------------------------
;	 function save_ga
;	-----------------------------------------
_save_ga:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
;	../fb_app_rs.c:261: n=0;
	mov	r5,#0x00
;	../fb_app_rs.c:262: do {								// Wert der GA in Flash schreiben
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	ar3,@r0
00111$:
;	../fb_app_rs.c:263: if(ga_db[n].ga==ga || ga_db[n].ga==0xFFFF) {
	push	ar3
	mov	a,r5
	add	a,r5
	add	a,acc
	mov	r2,a
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00128$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00128$
	pop	ar3
	sjmp	00108$
00128$:
	pop	ar3
	mov	dpl,r2
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r6,#0xFF,00109$
	cjne	r7,#0xFF,00109$
00108$:
;	../fb_app_rs.c:264: write_ok=0;
	clr	b0
;	../fb_app_rs.c:265: while (!write_ok) {
	mov	a,r5
	add	a,r5
	add	a,acc
	mov	r7,a
	add	a,#0x02
	mov	r6,a
00105$:
	jb	b0,00107$
;	../fb_app_rs.c:266: START_WRITECYCLE
	push	ar3
	mov	_FMCON,#0x00
;	../fb_app_rs.c:267: if(ga_db[n].ga==0xFFFF) {			// GA noch nicht gespeichert
	mov	dpl,r7
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	cjne	r2,#0xFF,00132$
	cjne	r3,#0xFF,00132$
	sjmp	00133$
00132$:
	pop	ar3
	sjmp	00102$
00133$:
	pop	ar3
;	../fb_app_rs.c:268: FMADRH = 0x1D;//(n >> 6) + 0x1D;		// GA schreiben
	mov	_FMADRH,#0x1D
;	../fb_app_rs.c:269: FMADRL = n*4;//((n & 0x3F) * 4);		// (int wird LSB first abgelegt)
	mov	_FMADRL,r7
;	../fb_app_rs.c:270: FMDATA=ga;
	mov	r0,_bp
	inc	r0
	mov	_FMDATA,@r0
;	../fb_app_rs.c:271: FMDATA=ga>>8;
	mov	_FMDATA,r4
00102$:
;	../fb_app_rs.c:273: FMADRH = 0x1D;//(n >> 6) + 0x1D;		// Value schreiben
	mov	_FMADRH,#0x1D
;	../fb_app_rs.c:274: FMADRL = (n*4) +2;//((n & 0x3F) * 4) + 2;
	mov	_FMADRL,r6
;	../fb_app_rs.c:275: FMDATA=val;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	_FMDATA,@r0
;	../fb_app_rs.c:276: FMDATA=val>>8;					// High Byte schreiben
	mov	_FMDATA,r3
;	../fb_app_rs.c:277: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_app_rs.c:278: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00105$
	setb	b0
	sjmp	00105$
00107$:
;	../fb_app_rs.c:280: n=62;	// Schleife abbrechen
	mov	r5,#0x3E
00109$:
;	../fb_app_rs.c:282: n++;
	inc	r5
;	../fb_app_rs.c:283: }while (n<62);
	cjne	r5,#0x3E,00135$
00135$:
	jnc	00136$
	ljmp	00111$
00136$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tel_header'
;------------------------------------------------------------
;length                    Allocated to stack - _bp -3
;ga                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	../fb_app_rs.c:288: void tel_header(unsigned int ga, unsigned char length)
;	-----------------------------------------
;	 function tel_header
;	-----------------------------------------
_tel_header:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	../fb_app_rs.c:290: telegramm[0]=0xBC;
	mov	_telegramm,#0xBC
;	../fb_app_rs.c:291: telegramm[1]=pa_h;
	mov	dptr,#_pa_h
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0001),r5
;	../fb_app_rs.c:292: telegramm[2]=pa_l;
	mov	dptr,#_pa_l
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_telegramm + 0x0002),r5
;	../fb_app_rs.c:293: telegramm[3]=ga>>8;
	mov	ar5,r7
	mov	(_telegramm + 0x0003),r5
;	../fb_app_rs.c:294: telegramm[4]=ga;
	mov	(_telegramm + 0x0004),r6
;	../fb_app_rs.c:295: telegramm[5]=0xE0 + length;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,#0xE0
	add	a,@r0
	mov	(_telegramm + 0x0005),a
;	../fb_app_rs.c:296: telegramm[6]=0x00;
	mov	(_telegramm + 0x0006),#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'convert_adr'
;------------------------------------------------------------
;pos                       Allocated to registers 
;adr                       Allocated to stack - _bp +1
;sepcount                  Allocated to registers r3 
;n                         Allocated to stack - _bp +3
;adr_tmp                   Allocated to registers r5 
;firstrun                  Allocated to registers b0 
;------------------------------------------------------------
;	../fb_app_rs.c:301: unsigned int convert_adr(unsigned char pos)
;	-----------------------------------------
;	 function convert_adr
;	-----------------------------------------
_convert_adr:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,dpl
;	../fb_app_rs.c:307: firstrun=1;
	setb	b0
;	../fb_app_rs.c:310: adr=0;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	../fb_app_rs.c:311: adr_tmp=0;
	mov	r5,#0x00
;	../fb_app_rs.c:312: while(rsin[n]!='=' && n<(rsinpos-1)) {
	mov	r3,#0x00
00117$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,#_rsin
	mov	r1,a
	mov	ar2,@r1
	cjne	r2,#0x3D,00141$
	ljmp	00119$
00141$:
	push	ar3
	mov	r3,_rsinpos
	mov	r4,#0x00
	dec	r3
	cjne	r3,#0xFF,00142$
	dec	r4
00142$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar6,@r0
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,r3
	mov	a,r7
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	jc	00143$
	ljmp	00119$
00143$:
;	../fb_app_rs.c:313: if(rsin[n]!='/' && rsin[n]!='.') {
	cjne	r2,#0x2F,00144$
	sjmp	00113$
00144$:
	cjne	r2,#0x2E,00145$
	sjmp	00113$
00145$:
;	../fb_app_rs.c:314: if(!firstrun) adr_tmp*=10;
	jb	b0,00102$
	mov	a,r5
	mov	b,#0x0A
	mul	ab
	mov	r5,a
00102$:
;	../fb_app_rs.c:315: adr_tmp+=rsin[n]-48;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,#_rsin
	mov	r1,a
	mov	a,@r1
	add	a,#0xD0
	mov	r7,a
	add	a,r5
	mov	r5,a
;	../fb_app_rs.c:316: firstrun=0;
	clr	b0
	sjmp	00114$
00113$:
;	../fb_app_rs.c:319: sepcount++;
	inc	r3
;	../fb_app_rs.c:320: firstrun=1;
	setb	b0
;	../fb_app_rs.c:321: adr+=adr_tmp;
	mov	ar4,r5
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../fb_app_rs.c:322: if (rsin[n]=='/') {		// für GA
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x2F,00110$
;	../fb_app_rs.c:323: if (sepcount==1) adr=adr<<3; else adr=adr<<8;
	cjne	r3,#0x01,00104$
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	dec	r0
	swap	a
	rr	a
	anl	a,#0xF8
	xch	a,@r0
	swap	a
	rr	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xF8
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
	sjmp	00111$
00104$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
	sjmp	00111$
00110$:
;	../fb_app_rs.c:326: if (sepcount==1) adr=adr<<4; else adr=adr<<8;
	cjne	r3,#0x01,00107$
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	dec	r0
	swap	a
	anl	a,#0xF0
	xch	a,@r0
	swap	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xF0
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
	sjmp	00111$
00107$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
00111$:
;	../fb_app_rs.c:328: adr_tmp=0;
	mov	r5,#0x00
00114$:
;	../fb_app_rs.c:330: n++;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	ljmp	00117$
00119$:
;	../fb_app_rs.c:332: adr+=adr_tmp;
	mov	ar4,r5
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	../fb_app_rs.c:333: return(adr);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'equal_pos'
;------------------------------------------------------------
;n                         Allocated to registers 
;pos                       Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_rs.c:339: unsigned char equal_pos(void)
;	-----------------------------------------
;	 function equal_pos
;	-----------------------------------------
_equal_pos:
;	../fb_app_rs.c:344: pos=0xFF;
	mov	r7,#0xFF
;	../fb_app_rs.c:345: while(n<(rsinpos-1)) {
	mov	r6,#0x00
00103$:
	mov	r4,_rsinpos
	mov	r5,#0x00
	dec	r4
	cjne	r4,#0xFF,00115$
	dec	r5
00115$:
	mov	ar2,r6
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	../fb_app_rs.c:346: if(rsin[n]=='=') pos=n;
	mov	a,r6
	add	a,#_rsin
	mov	r1,a
	mov	ar5,@r1
	cjne	r5,#0x3D,00102$
	mov	ar7,r6
00102$:
;	../fb_app_rs.c:347: n++;
	inc	r6
	sjmp	00103$
00105$:
;	../fb_app_rs.c:349: return(pos);
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_int'
;------------------------------------------------------------
;	../fb_app_rs.c:353: void serial_int(void) __interrupt (4) __using (1)	// Interrupt on received char from serial port
;	-----------------------------------------
;	 function serial_int
;	-----------------------------------------
_serial_int:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	dpl
	push	dph
	push	psw
	mov	psw,#0x08
;	../fb_app_rs.c:355: ES=0;
	clr	_IEN0_4
;	../fb_app_rs.c:356: if (RI){
	jnb	_SCON_0,00112$
;	../fb_app_rs.c:357: if (rsinpos<30) {
	mov	a,#0x100 - 0x1E
	add	a,_rsinpos
	jc	00109$
;	../fb_app_rs.c:358: rxledcount=0x40;// * RXLED kurz eischalten
	mov	_rxledcount,#0x40
;	../fb_app_rs.c:359: if(SBUF!=0x0A) {
	mov	a,#0x0A
	cjne	a,_SBUF,00127$
	sjmp	00110$
00127$:
;	../fb_app_rs.c:360: rsin[rsinpos]=SBUF;		// store byte in rsin
	mov	a,_rsinpos
	add	a,#_rsin
	mov	r0,a
	mov	@r0,_SBUF
;	../fb_app_rs.c:361: rsinpos++;
	inc	_rsinpos
;	../fb_app_rs.c:362: if (echo) {
	mov	dptr,#_echo
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00110$
;	../fb_app_rs.c:363: while(!TI);
00101$:
;	../fb_app_rs.c:364: TI=0;
	jbc	_SCON_1,00129$
	sjmp	00101$
00129$:
;	../fb_app_rs.c:365: SBUF=SBUF;
	mov	_SBUF,_SBUF
	sjmp	00110$
00109$:
;	../fb_app_rs.c:369: else rsinpos=0;
	mov	_rsinpos,#0x00
00110$:
;	../fb_app_rs.c:370: RI=0;	
	clr	_SCON_0
00112$:
;	../fb_app_rs.c:372: ES=1;
	setb	_IEN0_4
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'send_ok'
;------------------------------------------------------------
;	../fb_app_rs.c:375: void send_ok(void)
;	-----------------------------------------
;	 function send_ok
;	-----------------------------------------
_send_ok:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../fb_app_rs.c:377: rs_send_s("OK\n");
	mov	dptr,#__str_0
	mov	b,#0x80
	ljmp	_rs_send_s
;------------------------------------------------------------
;Allocation info for local variables in function 'set_filtermode'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_rs.c:380: void set_filtermode(unsigned char mode)
;	-----------------------------------------
;	 function set_filtermode
;	-----------------------------------------
_set_filtermode:
	mov	r7,dpl
;	../fb_app_rs.c:382: write_ok=0;
	clr	_write_ok
;	../fb_app_rs.c:383: while (!write_ok) {
	clr	a
	cjne	r7,#0x31,00119$
	inc	a
00119$:
	mov	r7,a
00106$:
	jb	_write_ok,00109$
;	../fb_app_rs.c:384: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_app_rs.c:385: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_app_rs.c:386: FMADRL = 0xFA;
	mov	_FMADRL,#0xFA
;	../fb_app_rs.c:387: if(mode =='1'){
	mov	a,r7
	jz	00102$
;	../fb_app_rs.c:388: filtermode=1;
	setb	_filtermode
;	../fb_app_rs.c:389: transparency=0;
	clr	_transparency
;	../fb_app_rs.c:390: FMDATA = 1;		// LSB
	mov	_FMDATA,#0x01
	sjmp	00103$
00102$:
;	../fb_app_rs.c:393: filtermode=0;
	clr	_filtermode
;	../fb_app_rs.c:394: transparency=1;
	setb	_transparency
;	../fb_app_rs.c:395: FMDATA=0;
	mov	_FMDATA,#0x00
00103$:
;	../fb_app_rs.c:397: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_app_rs.c:398: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00106$
	setb	_write_ok
	sjmp	00106$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_rs.c:403: void restart_app(void)
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
;	../fb_app_rs.c:408: P0M1=0x00;
	mov	_P0M1,#0x00
;	../fb_app_rs.c:409: P0M2=0xC0;
	mov	_P0M2,#0xC0
;	../fb_app_rs.c:410: P0=0xC0;
	mov	_P0,#0xC0
;	../fb_app_rs.c:412: for (n=0;n<255;n++) ;	// Warten bis Bus stabil
	mov	r7,#0xFF
00103$:
	mov	ar6,r7
	dec	r6
	mov	ar7,r6
	mov	a,r7
	jnz	00103$
;	../fb_app_rs.c:417: RI=0;
	clr	_SCON_0
;	../fb_app_rs.c:418: TI=1;
	setb	_SCON_1
;	../fb_app_rs.c:419: ES=1;
	setb	_IEN0_4
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_fm	=	0x1cfa
_pa_h	=	0x1cfb
_pa_l	=	0x1cfc
_echo	=	0x1cfd
_ga_db	=	0x1d00
__str_0:
	.ascii "OK"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	.org 0x1CFE
_baud:
	.byte #0xC0,#0x00	; 192
