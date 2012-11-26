;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
; This file was generated Sun Aug 14 13:56:16 2011
;--------------------------------------------------------
	.module fb_dim2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _schritttabelle
	.globl _basis
	.globl _hellikeit
	.globl _main
	.globl _tr0_int
	.globl _tastenauswertung
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
	.globl _schritt_zl_dim
	.globl _mtaste
	.globl _ctaste
	.globl _andimm_zl
	.globl _kanal_zl
	.globl _basis_zl
	.globl _faktor_zl
	.globl _ausschalthellikeit
	.globl _basis_dimmgeschwindikeit
	.globl _ie
	.globl _sperren
	.globl _mk
	.globl _einschathellikeit
	.globl _mindimmwert
	.globl _dimmwert
	.globl _dimm_I2C
	.globl _dimm_helldunkel
	.globl _anspringen
	.globl _helligkeittsstufe
	.globl _restart_app
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
_anspringen::
	.ds 2
_dimm_helldunkel::
	.ds 2
_dimm_I2C::
	.ds 2
_dimmwert::
	.ds 2
_mindimmwert::
	.ds 2
_einschathellikeit::
	.ds 2
_mk::
	.ds 2
_sperren::
	.ds 2
_ie::
	.ds 2
_basis_dimmgeschwindikeit::
	.ds 4
_ausschalthellikeit::
	.ds 2
_faktor_zl::
	.ds 2
_basis_zl::
	.ds 4
_kanal_zl::
	.ds 1
_andimm_zl::
	.ds 1
_ctaste::
	.ds 1
_mtaste::
	.ds 8
_schritt_zl_dim::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_tr0_int
	.ds	5
	ljmp	_ext_int0
	.ds	5
	ljmp	_timer1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	../fb_dim2.c:60: unsigned int ie=0;              // dimmer immer wieder aktualisieren
	clr	a
	mov	_ie,a
	mov	(_ie + 1),a
;	../fb_dim2.c:69: unsigned char kanal_zl=0;
	mov	_kanal_zl,#0x00
;	../fb_dim2.c:70: unsigned char andimm_zl=0;
	mov	_andimm_zl,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'helligkeittsstufe'
;------------------------------------------------------------
;kanal                     Allocated to stack - offset -3
;stufe                     Allocated to registers r2 
;------------------------------------------------------------
;	../fb_dim2.c:74: unsigned char helligkeittsstufe(unsigned char stufe,unsigned char kanal)//Stufe 0-c
;	-----------------------------------------
;	 function helligkeittsstufe
;	-----------------------------------------
_helligkeittsstufe:
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
;	../fb_dim2.c:76: if(stufe == 1)
	cjne	r2,#0x01,00102$
;	../fb_dim2.c:77: return mindimmwert[kanal];
	mov	r1,_bp
	dec	r1
	dec	r1
	dec	r1
	mov	a,@r1
	add	a,#_mindimmwert
	mov	r0,a
	mov	dpl,@r0
	sjmp	00107$
00102$:
;	../fb_dim2.c:78: if(stufe == 0x0b)
	cjne	r2,#0x0B,00104$
;	../fb_dim2.c:79: return MAXDIMMWERT;
	mov	dpl,#0xFF
	sjmp	00107$
00104$:
;	../fb_dim2.c:80: if(stufe == 0x0c)
	cjne	r2,#0x0C,00106$
;	../fb_dim2.c:81: return ausschalthellikeit[kanal];
	mov	r1,_bp
	dec	r1
	dec	r1
	dec	r1
	mov	a,@r1
	add	a,#_ausschalthellikeit
	mov	r0,a
	mov	dpl,@r0
	sjmp	00107$
00106$:
;	../fb_dim2.c:82: return hellikeit[stufe];
	mov	a,r2
	mov	dptr,#_hellikeit
	movc	a,@a+dptr
	mov	r2,a
	mov	dpl,a
00107$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
;------------------------------------------------------------
;	../fb_dim2.c:86: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
;	../fb_dim2.c:89: TMOD&=0xf0;   //register für Timer 0 löschen
	anl	_TMOD,#0xF0
;	../fb_dim2.c:90: TMOD|=0x01;   // Timer 0 als reload, Timer 1 nicht ändern !
	orl	_TMOD,#0x01
;	../fb_dim2.c:91: TAMOD&=0xf0;
	anl	_TAMOD,#0xF0
;	../fb_dim2.c:92: TH0 = 0xff;
	mov	_TH0,#0xFF
;	../fb_dim2.c:93: AUXR1&=~0x10;      // toggled whenever Timer0 overflows ausschalten
	anl	_AUXR1,#0xEF
;	../fb_dim2.c:94: ET0=1;             // Interrupt für Timer 0 freigeben
	setb	_IEN0_1
;	../fb_dim2.c:95: TR0=1;             // Timer 0 starten
	setb	_TCON_4
;	../fb_dim2.c:96: EA=1;
	setb	_IEN0_7
;	../fb_dim2.c:98: Tval=0x00;
	mov	_Tval,#0x00
;	../fb_dim2.c:100: P0M1=0xEE;            // Port 0 Modus push-pull für Ausgang nur PIN 0 und 4 Output
	mov	_P0M1,#0xEE
;	../fb_dim2.c:101: P0M2=0x11;            // nur PIN 0 und 4 Output
	mov	_P0M2,#0x11
;	../fb_dim2.c:102: P0=0;
	mov	_P0,#0x00
;	../fb_dim2.c:104: anspringen[0]=(eeprom[0xC6]&(1<<3))>>3;
	mov	dptr,#(_eeprom + 0x00c6)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x08
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r2,a
	mov	_anspringen,r2
;	../fb_dim2.c:105: anspringen[1]=(eeprom[0xC6]&(1<<7))>>7;
	mov	dptr,#(_eeprom + 0x00c6)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x80
	rl	a
	anl	a,#0x01
	mov	r2,a
	mov	(_anspringen + 0x0001),r2
;	../fb_dim2.c:106: einschathellikeit[0]=eeprom[0xC4]&0x0f;       //wert 0 - 0x0c
	mov	dptr,#(_eeprom + 0x00c4)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x0F
	anl	a,r2
	mov	_einschathellikeit,a
;	../fb_dim2.c:107: einschathellikeit[1]=eeprom[0xC4]>>4;         //wert 0 - 0x0c
	mov	dptr,#(_eeprom + 0x00c4)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0f
	mov	r2,a
	mov	(_einschathellikeit + 0x0001),r2
;	../fb_dim2.c:108: dimmwert[0]=helligkeittsstufe(eeprom[0xe2]&0x0f,0);     //Verhalten bei Busspannungswiederkehr
	mov	dptr,#(_eeprom + 0x00e2)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x0F
	anl	a,r2
	mov	dpl,a
	clr	a
	push	acc
	lcall	_helligkeittsstufe
	mov	r2,dpl
	dec	sp
	mov	_dimmwert,r2
;	../fb_dim2.c:109: dimmwert[1]=helligkeittsstufe((eeprom[0xe2]>>4)&0x0f,1);//Verhalten bei Busspannungswiederkehr
	mov	dptr,#(_eeprom + 0x00e2)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0f
	mov	r2,a
	mov	a,#0x0F
	anl	a,r2
	mov	dpl,a
	mov	a,#0x01
	push	acc
	lcall	_helligkeittsstufe
	mov	r2,dpl
	dec	sp
	mov	(_dimmwert + 0x0001),r2
;	../fb_dim2.c:110: mindimmwert[0]=(eeprom[0xc2]&0x0f)*15+30;
	mov	dptr,#(_eeprom + 0x00c2)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x0F
	anl	a,r2
	mov	b,#0x0F
	mul	ab
	add	a,#0x1E
	mov	_mindimmwert,a
;	../fb_dim2.c:111: mindimmwert[1]=(eeprom[0xc2]>>4)*15+30;
	mov	dptr,#(_eeprom + 0x00c2)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0f
	mov	b,#0x0F
	mul	ab
	add	a,#0x1E
	mov	(_mindimmwert + 0x0001),a
;	../fb_dim2.c:113: basis_dimmgeschwindikeit[0]=basis[(eeprom[0xC6]&0x07)];
	mov	dptr,#(_eeprom + 0x00c6)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x07
	add	a,acc
	mov	r2,a
	mov	dptr,#_basis
	movc	a,@a+dptr
	xch	a,r2
	inc	dptr
	movc	a,@a+dptr
	mov	r3,a
	mov	_basis_dimmgeschwindikeit,r2
	mov	(_basis_dimmgeschwindikeit + 1),r3
;	../fb_dim2.c:114: basis_dimmgeschwindikeit[1]=basis[(eeprom[0xC6]>>4)&0x07];
	mov	dptr,#(_eeprom + 0x00c6)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#(0x0f&0x07)
	add	a,acc
	mov	r2,a
	mov	dptr,#_basis
	movc	a,@a+dptr
	xch	a,r2
	inc	dptr
	movc	a,@a+dptr
	mov	r3,a
	mov	(_basis_dimmgeschwindikeit + 0x0002),r2
	mov	((_basis_dimmgeschwindikeit + 0x0002) + 1),r3
;	../fb_dim2.c:122: EA=0;
	clr	_IEN0_7
;	../fb_dim2.c:123: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_dim2.c:124: WRITE_BYTE(0x01,0x03,0x00);	// Herstellercode 0x0004 = Jung 0x0008 = Gira
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x03
	mov	_FMDATA,#0x00
;	../fb_dim2.c:125: WRITE_BYTE(0x01,0x04,0x08);
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x04
	mov	_FMDATA,#0x08
;	../fb_dim2.c:126: WRITE_BYTE(0x01,0x05,0x30);	// Device Type (2038.10) 2060h (0x3015 gira 1032)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x05
	mov	_FMDATA,#0x30
;	../fb_dim2.c:127: WRITE_BYTE(0x01,0x06,0x15);	// 	"	"	"
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x06
	mov	_FMDATA,#0x15
;	../fb_dim2.c:128: WRITE_BYTE(0x01,0x07,0x01);	// Versionsnummer
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x07
	mov	_FMDATA,#0x01
;	../fb_dim2.c:129: WRITE_BYTE(0x01,0x0C,0x00);	// PORT A Direction Bit Setting
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0C
	mov	_FMDATA,#0x00
;	../fb_dim2.c:130: WRITE_BYTE(0x01,0x0D,0xFF);	// Run-Status (00=stop FF=run)
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x0D
	mov	_FMDATA,#0xFF
;	../fb_dim2.c:131: WRITE_BYTE(0x01,COMMSTABPTR,0x8a);	// COMMSTAB Pointer
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x12
	mov	_FMDATA,#0x8A
;	../fb_dim2.c:132: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_dim2.c:133: START_WRITECYCLE;
	mov	_FMCON,#0x00
;	../fb_dim2.c:134: WRITE_BYTE(0x00,0x60,0x2E);     // system state: all layers active (run), not in prog mode
	mov	_FMADRH,#0x1C
	mov	_FMADRL,#0x60
	mov	_FMDATA,#0x2E
;	../fb_dim2.c:135: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_dim2.c:136: EA=1;
	setb	_IEN0_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tastenauswertung'
;------------------------------------------------------------
;retp0                     Allocated to registers r2 
;------------------------------------------------------------
;	../fb_dim2.c:142: void tastenauswertung(void)
;	-----------------------------------------
;	 function tastenauswertung
;	-----------------------------------------
_tastenauswertung:
;	../fb_dim2.c:144: unsigned char retp0=P0;//port 0 merken
	mov	r2,_P0
;	../fb_dim2.c:145: P3_0=0;                //SCL damit i2c nicht meckert
	clr	_P3_0
;	../fb_dim2.c:146: P0=0;
	mov	_P0,#0x00
;	../fb_dim2.c:147: if(ctaste<6)           //0 bis 5
	mov	a,#0x100 - 0x06
	add	a,_ctaste
	jc	00102$
;	../fb_dim2.c:148: ctaste++;
	inc	_ctaste
	sjmp	00103$
00102$:
;	../fb_dim2.c:149: else ctaste=0;
	mov	_ctaste,#0x00
00103$:
;	../fb_dim2.c:150: P0M1=~(1<<ctaste);    // Port 0  PIN Output
	mov	b,_ctaste
	inc	b
	mov	a,#0x01
	sjmp	00163$
00161$:
	add	a,acc
00163$:
	djnz	b,00161$
	mov	r3,a
	cpl	a
	mov	r4,a
	mov	_P0M1,r4
;	../fb_dim2.c:151: P0M2=(1<<ctaste);
	mov	_P0M2,r3
;	../fb_dim2.c:152: P0=~(1<<ctaste);      //nur eine Taste aktivieren
	mov	_P0,r4
	jb	_P1_3,00138$
;	../fb_dim2.c:155: if(mtaste[ctaste]<254)  mtaste[ctaste]++;
	mov	a,_ctaste
	add	a,#_mtaste
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0xFE,00165$
00165$:
	jnc	00105$
	mov	a,r3
	inc	a
	mov	@r0,a
00105$:
;	../fb_dim2.c:156: if(mtaste[ctaste]==200) //langer tastendruck
	mov	ar3,@r0
	cjne	r3,#0xC8,00167$
	sjmp	00168$
00167$:
	ljmp	00139$
00168$:
;	../fb_dim2.c:158: if(ctaste==1)
	mov	a,#0x01
	cjne	a,_ctaste,00107$
;	../fb_dim2.c:159: dimm_helldunkel[0]=9;
	mov	_dimm_helldunkel,#0x09
00107$:
;	../fb_dim2.c:160: if(ctaste==2)
	mov	a,#0x02
	cjne	a,_ctaste,00109$
;	../fb_dim2.c:161: dimm_helldunkel[0]=1;
	mov	_dimm_helldunkel,#0x01
00109$:
;	../fb_dim2.c:162: if(ctaste==5)
	mov	a,#0x05
	cjne	a,_ctaste,00111$
;	../fb_dim2.c:163: dimm_helldunkel[1]=9;
	mov	(_dimm_helldunkel + 0x0001),#0x09
00111$:
;	../fb_dim2.c:164: if(ctaste==6)
	mov	a,#0x06
	cjne	a,_ctaste,00175$
	sjmp	00176$
00175$:
	ljmp	00139$
00176$:
;	../fb_dim2.c:165: dimm_helldunkel[1]=1;
	mov	(_dimm_helldunkel + 0x0001),#0x01
	ljmp	00139$
00138$:
;	../fb_dim2.c:171: if(mtaste[ctaste]>20)
	mov	a,_ctaste
	add	a,#_mtaste
	mov	r0,a
	mov	ar3,@r0
	clr	c
	mov	a,#0x14
	subb	a,r3
	clr	a
	rlc	a
	mov	r4,a
	jz	00136$
;	../fb_dim2.c:173: if(mtaste[ctaste]>20&&mtaste[ctaste]<200) //kurzer tastendruck mit Tastenprellung
	mov	a,r4
	jz	00125$
	cjne	r3,#0xC8,00179$
00179$:
	jnc	00125$
;	../fb_dim2.c:175: if(ctaste==1) dimmwert[0]=0xff;
	mov	a,#0x01
	cjne	a,_ctaste,00117$
	mov	_dimmwert,#0xFF
00117$:
;	../fb_dim2.c:176: if(ctaste==2) dimmwert[0]=0x0;
	mov	a,#0x02
	cjne	a,_ctaste,00119$
	mov	_dimmwert,#0x00
00119$:
;	../fb_dim2.c:177: if(ctaste==5) dimmwert[1]=0xff;
	mov	a,#0x05
	cjne	a,_ctaste,00121$
	mov	(_dimmwert + 0x0001),#0xFF
00121$:
;	../fb_dim2.c:178: if(ctaste==6) dimmwert[1]=0x0;
	mov	a,#0x06
	cjne	a,_ctaste,00125$
	mov	(_dimmwert + 0x0001),#0x00
00125$:
;	../fb_dim2.c:180: if(mtaste[ctaste]>199) //langer tastendruck
	mov	a,r3
	add	a,#0xff - 0xC7
	jnc	00131$
;	../fb_dim2.c:181: if(ctaste==1||ctaste==2)
	mov	a,#0x01
	cjne	a,_ctaste,00190$
	sjmp	00127$
00190$:
	mov	a,#0x02
	cjne	a,_ctaste,00131$
00127$:
;	../fb_dim2.c:182: dimm_helldunkel[0]=0;
	mov	_dimm_helldunkel,#0x00
00131$:
;	../fb_dim2.c:183: if(ctaste==5||ctaste==6)
	mov	a,#0x05
	cjne	a,_ctaste,00193$
	sjmp	00132$
00193$:
	mov	a,#0x06
	cjne	a,_ctaste,00136$
00132$:
;	../fb_dim2.c:184: dimm_helldunkel[1]=0;
	mov	(_dimm_helldunkel + 0x0001),#0x00
00136$:
;	../fb_dim2.c:186: mtaste[ctaste]=0;
	mov	@r0,#0x00
00139$:
;	../fb_dim2.c:188: P0=retp0;
	mov	_P0,r2
;	../fb_dim2.c:190: P0M1=0x00;    //ee   // Port 0  PIN 0 und 4 Output
	mov	_P0M1,#0x00
;	../fb_dim2.c:191: P0M2=0xFF;    //11
	mov	_P0M2,#0xFF
;	../fb_dim2.c:192: P3_1=1;       //SDA damit i2c nicht meckert
	setb	_P3_1
;	../fb_dim2.c:193: P3_0=1;       //SCL damit i2c nicht meckert
	setb	_P3_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tr0_int'
;------------------------------------------------------------
;------------------------------------------------------------
;	../fb_dim2.c:198: void tr0_int(void) interrupt 1         //n=nummer 0x03+8*n
;	-----------------------------------------
;	 function tr0_int
;	-----------------------------------------
_tr0_int:
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
;	../fb_dim2.c:201: TL0=0x09;     // timer mit H=0xf9 L=0x09 2KHz = 0,5ms
	mov	_TL0,#0x09
;	../fb_dim2.c:202: TH0=0xf9;     // timer mit 0xb7 200HZ = 5ms
	mov	_TH0,#0xF9
;	../fb_dim2.c:204: tastenauswertung();
	lcall	_tastenauswertung
;	../fb_dim2.c:205: P0_3=(dimm_I2C[0])?1:0;     //LED_zeile K1
	mov	a,_dimm_I2C
	mov	r2,a
	add	a,#0xff
	mov	_P0_3,c
;	../fb_dim2.c:206: if(dimm_I2C[0]>75) P0_2=1;
	mov	a,r2
	add	a,#0xff - 0x4B
;	../fb_dim2.c:207: else P0_2=0;
	mov	_P0_2,c
;	../fb_dim2.c:208: if(dimm_I2C[0]>125) P0_1=1;
	mov	a,r2
	add	a,#0xff - 0x7D
;	../fb_dim2.c:209: else P0_1=0;
	mov	_P0_1,c
;	../fb_dim2.c:210: if(dimm_I2C[0]>220) P0_0=1;
	mov	a,r2
	add	a,#0xff - 0xDC
;	../fb_dim2.c:211: else P0_0=0;
	mov	_P0_0,c
;	../fb_dim2.c:213: P0_7=(dimm_I2C[1])?1:0;     //LED_zeile K2
	mov	a,(_dimm_I2C + 0x0001)
	mov	r3,a
	add	a,#0xff
	mov	_P0_7,c
;	../fb_dim2.c:214: if(dimm_I2C[1]>75) P0_6=1;
	mov	a,r3
	add	a,#0xff - 0x4B
;	../fb_dim2.c:215: else P0_6=0;
	mov	_P0_6,c
;	../fb_dim2.c:216: if(dimm_I2C[1]>125) P0_5=1;
	mov	a,r3
	add	a,#0xff - 0x7D
;	../fb_dim2.c:217: else P0_5=0;
	mov	_P0_5,c
;	../fb_dim2.c:218: if(dimm_I2C[1]>220) P0_4=1;
	mov	a,r3
	add	a,#0xff - 0xDC
;	../fb_dim2.c:219: else P0_4=0;
	mov	_P0_4,c
;	../fb_dim2.c:221: if(ie<40000)                   //interwallmäsiges senden kann evetuel raus
	mov	r4,_ie
	mov	r5,(_ie + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,r4
	subb	a,#0x40
	mov	a,r5
	subb	a,#0x9C
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00120$
;	../fb_dim2.c:222: ++ie;
	inc	_ie
	clr	a
	cjne	a,_ie,00121$
	inc	(_ie + 1)
	sjmp	00121$
00120$:
;	../fb_dim2.c:225: i2c_send_daten(dimm_I2C[0],dimm_I2C[1]);
	push	ar3
	mov	dpl,r2
	lcall	_i2c_send_daten
	dec	sp
;	../fb_dim2.c:226: ie=0;
	clr	a
	mov	_ie,a
	mov	(_ie + 1),a
00121$:
;	../fb_dim2.c:229: if(dimm_I2C[0]!=mk[0]||dimm_I2C[1]!=mk[1])   //i2c übertragen
	mov	a,_dimm_I2C
	mov	r2,a
	cjne	a,_mk,00122$
	mov	a,(_mk + 0x0001)
	cjne	a,(_dimm_I2C + 0x0001),00202$
	sjmp	00123$
00202$:
00122$:
;	../fb_dim2.c:238: ie=0;
	clr	a
	mov	_ie,a
	mov	(_ie + 1),a
;	../fb_dim2.c:239: mk[0]=dimm_I2C[0];
	mov	_mk,r2
;	../fb_dim2.c:240: mk[1]=dimm_I2C[1];
	mov	(_mk + 0x0001),(_dimm_I2C + 0x0001)
;	../fb_dim2.c:241: i2c_send_daten(dimm_I2C[0],dimm_I2C[1]);
	push	(_dimm_I2C + 0x0001)
	mov	dpl,r2
	lcall	_i2c_send_daten
	dec	sp
00123$:
;	../fb_dim2.c:244: if(anspringen[0])
	mov	a,_anspringen
	jz	00126$
;	../fb_dim2.c:245: dimm_I2C[0]=dimmwert[0];  //anspringen vom wert K1
	mov	_dimm_I2C,_dimmwert
00126$:
;	../fb_dim2.c:246: if(anspringen[1])
	mov	a,(_anspringen + 0x0001)
	jz	00128$
;	../fb_dim2.c:247: dimm_I2C[1]=dimmwert[1];  //anspringen vom wert K2
	mov	(_dimm_I2C + 0x0001),(_dimmwert + 0x0001)
00128$:
;	../fb_dim2.c:249: if(andimm_zl>8)                    //andimmern vom wert
	mov	a,_andimm_zl
	add	a,#0xff - 0x08
	jnc	00139$
;	../fb_dim2.c:251: andimm_zl=0;
	mov	_andimm_zl,#0x00
;	../fb_dim2.c:252: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)
	mov	_kanal_zl,#0x00
00155$:
	mov	a,#0x100 - 0x02
	add	a,_kanal_zl
	jc	00140$
;	../fb_dim2.c:254: if(dimmwert[kanal_zl]!=dimm_I2C[kanal_zl])        //andimmern von wert
	mov	a,_kanal_zl
	add	a,#_dimmwert
	mov	r0,a
	mov	ar2,@r0
	mov	a,_kanal_zl
	add	a,#_dimm_I2C
	mov	r0,a
	mov	ar3,@r0
	mov	a,r2
	cjne	a,ar3,00207$
	sjmp	00157$
00207$:
;	../fb_dim2.c:256: if(dimm_I2C[kanal_zl] > dimmwert[kanal_zl])    //dunkler andimmen
	clr	c
	mov	a,r2
	subb	a,r3
	jnc	00130$
;	../fb_dim2.c:257: dimm_I2C[kanal_zl]--;
	mov	a,r3
	dec	a
	mov	@r0,a
00130$:
;	../fb_dim2.c:258: if(dimm_I2C[kanal_zl] < dimmwert[kanal_zl])    //heller andimmen
	mov	a,_kanal_zl
	add	a,#_dimm_I2C
	mov	r0,a
	mov	ar2,@r0
	mov	a,_kanal_zl
	add	a,#_dimmwert
	mov	r1,a
	mov	ar3,@r1
	clr	c
	mov	a,r2
	subb	a,r3
	jnc	00157$
;	../fb_dim2.c:260: if(dimmwert[kanal_zl]<mindimmwert[kanal_zl])   // mit minimalwert Starten
	mov	a,_kanal_zl
	add	a,#_mindimmwert
	mov	r2,a
	push	ar0
	mov	r0,ar2
	mov	ar2,@r0
	pop	ar0
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	00132$
;	../fb_dim2.c:262: dimm_I2C[kanal_zl]=mindimmwert[kanal_zl];
	mov	@r0,ar2
;	../fb_dim2.c:263: dimmwert[kanal_zl]=dimm_I2C[kanal_zl];
	mov	@r1,ar2
	sjmp	00157$
00132$:
;	../fb_dim2.c:265: else dimm_I2C[kanal_zl]++;
	mov	a,@r0
	mov	r2,a
	inc	a
	mov	@r0,a
00157$:
;	../fb_dim2.c:252: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)
	inc	_kanal_zl
	sjmp	00155$
00139$:
;	../fb_dim2.c:270: else andimm_zl++;
	inc	_andimm_zl
00140$:
;	../fb_dim2.c:273: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)//basis und faktor für dimmstufen
	mov	_kanal_zl,#0x00
00159$:
	mov	a,#0x100 - 0x02
	add	a,_kanal_zl
	jnc	00211$
	ljmp	00163$
00211$:
;	../fb_dim2.c:275: basis_zl[kanal_zl]++;
	mov	a,_kanal_zl
	add	a,_kanal_zl
	mov	r2,a
	add	a,#_basis_zl
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	dec	r0
	inc	r3
	cjne	r3,#0x00,00212$
	inc	r4
00212$:
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	dec	r0
;	../fb_dim2.c:276: if(basis_zl[kanal_zl] > basis_dimmgeschwindikeit[kanal_zl])//1-65000
	mov	a,r2
	add	a,#_basis_dimmgeschwindikeit
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r5
	subb	a,r4
	jc	00213$
	ljmp	00161$
00213$:
;	../fb_dim2.c:278: basis_zl[kanal_zl]=0;
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	dec	r0
;	../fb_dim2.c:279: faktor_zl[kanal_zl]++;
	mov	a,_kanal_zl
	add	a,#_faktor_zl
	mov	r0,a
	mov	ar2,@r0
	inc	r2
	mov	@r0,ar2
;	../fb_dim2.c:280: if(faktor_zl[kanal_zl] > eeprom[0xc8+(kanal_zl)])
	mov	a,#0xC8
	add	a,_kanal_zl
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
	clr	c
	subb	a,r2
	jc	00214$
	ljmp	00161$
00214$:
;	../fb_dim2.c:282: faktor_zl[kanal_zl]=0;
	mov	@r0,#0x00
;	../fb_dim2.c:283: if(dimm_helldunkel[kanal_zl]>=9 && dimm_helldunkel[kanal_zl]<=0xf)//heller=9==100%
	mov	a,_kanal_zl
	add	a,#_dimm_helldunkel
	mov	r0,a
	mov	ar2,@r0
	cjne	r2,#0x09,00215$
00215$:
	jc	00144$
	mov	a,r2
	add	a,#0xff - 0x0F
	jc	00144$
;	../fb_dim2.c:285: if(dimmwert[kanal_zl]<MAXDIMMWERT-1)
	mov	a,_kanal_zl
	add	a,#_dimmwert
	mov	r0,a
	mov	ar3,@r0
	cjne	r3,#0xFE,00218$
00218$:
	jnc	00144$
;	../fb_dim2.c:287: schritt_zl_dim[kanal_zl]+=schritttabelle[(dimm_helldunkel[kanal_zl]-8)];
	mov	a,_kanal_zl
	add	a,#_schritt_zl_dim
	mov	r1,a
	mov	ar4,@r1
	mov	a,r2
	add	a,#0xf8+_schritttabelle
	mov	dpl,a
	clr	a
	addc	a,#(_schritttabelle >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	add	a,r4
	mov	r4,a
	mov	@r1,a
;	../fb_dim2.c:288: dimmwert[kanal_zl]+=(schritt_zl_dim[kanal_zl]/100);
	mov	b,#0x64
	mov	a,r4
	div	ab
	mov	r5,a
	add	a,r3
	mov	@r0,a
;	../fb_dim2.c:289: schritt_zl_dim[kanal_zl]%=100;
	mov	b,#0x64
	mov	a,r4
	div	ab
	mov	a,b
	mov	@r1,a
00144$:
;	../fb_dim2.c:292: if(dimm_helldunkel[kanal_zl]>=1 && dimm_helldunkel[kanal_zl]<8) //dunkler=1==100%
	cjne	r2,#0x01,00220$
00220$:
	jc	00161$
	cjne	r2,#0x08,00222$
00222$:
	jnc	00161$
;	../fb_dim2.c:294: if(dimmwert[kanal_zl]>mindimmwert[kanal_zl]+1)
	mov	a,_kanal_zl
	add	a,#_dimmwert
	mov	r0,a
	mov	ar3,@r0
	mov	a,_kanal_zl
	add	a,#_mindimmwert
	mov	r1,a
	mov	ar4,@r1
	mov	r5,#0x00
	inc	r4
	cjne	r4,#0x00,00224$
	inc	r5
00224$:
	mov	ar6,r3
	mov	r7,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00161$
;	../fb_dim2.c:296: schritt_zl_dim[kanal_zl]+=schritttabelle[(dimm_helldunkel[kanal_zl])];
	mov	a,_kanal_zl
	add	a,#_schritt_zl_dim
	mov	r1,a
	mov	ar4,@r1
	mov	a,r2
	mov	dptr,#_schritttabelle
	movc	a,@a+dptr
	add	a,r4
	mov	r4,a
	mov	@r1,a
;	../fb_dim2.c:297: dimmwert[kanal_zl]-=(schritt_zl_dim[kanal_zl]/100);
	mov	b,#0x64
	mov	a,r4
	div	ab
	mov	r2,a
	mov	a,r3
	clr	c
	subb	a,r2
	mov	@r0,a
;	../fb_dim2.c:298: schritt_zl_dim[kanal_zl]%=100;
	mov	b,#0x64
	mov	a,r4
	div	ab
	mov	a,b
	mov	@r1,a
00161$:
;	../fb_dim2.c:273: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)//basis und faktor für dimmstufen
	inc	_kanal_zl
	ljmp	00159$
00163$:
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers 
;n                         Allocated to registers r3 
;cmd                       Allocated to registers r3 
;cal                       Allocated to registers r2 
;flag50hz                  Allocated to registers 
;------------------------------------------------------------
;	../fb_dim2.c:312: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	../fb_dim2.c:321: restart_hw();				// Hardware zurücksetzen
	lcall	_restart_hw
;	../fb_dim2.c:322: restart_prot();			// Protokoll-relevante Parameter zurücksetzen
	lcall	_restart_prot
;	../fb_dim2.c:323: rs_init(6);
	mov	dptr,#0x0006
	lcall	_rs_init
;	../fb_dim2.c:324: i2c_ma_init();
	lcall	_i2c_ma_init
;	../fb_dim2.c:325: restart_app();                        // Anwendungsspezifische Einstellungen zurücksetzen
	lcall	_restart_app
;	../fb_dim2.c:327: TASTER=1;
	setb	_P1_7
;	../fb_dim2.c:328: if(!TASTER )cal=0;// && wduf
	jb	_P1_7,00102$
	mov	r2,#0x00
	sjmp	00103$
00102$:
;	../fb_dim2.c:329: else cal=trimsave;
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,a
00103$:
;	../fb_dim2.c:330: TRIM = (TRIM+trimsave);
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r4,_TRIM
	mov	a,r3
	add	a,r4
	mov	_TRIM,a
;	../fb_dim2.c:331: TRIM &= 0x3F;//oberen 2 bits ausblenden
	anl	_TRIM,#0x3F
;	../fb_dim2.c:334: rs_send(0x55);
	mov	dpl,#0x55
	push	ar2
	lcall	_rs_send
	pop	ar2
;	../fb_dim2.c:335: do
00123$:
;	../fb_dim2.c:337: if (RI){
;	../fb_dim2.c:338: RI=0;
	jbc	_SCON_0,00153$
	sjmp	00117$
00153$:
;	../fb_dim2.c:339: cmd=SBUF;
	mov	r3,_SBUF
;	../fb_dim2.c:340: if(cmd=='c')rs_send(0x55);
	cjne	r3,#0x63,00105$
	mov	dpl,#0x55
	push	ar2
	push	ar3
	lcall	_rs_send
	pop	ar3
	pop	ar2
00105$:
;	../fb_dim2.c:341: if(cmd=='+'){
	cjne	r3,#0x2B,00107$
;	../fb_dim2.c:342: TRIM--;
	dec	_TRIM
;	../fb_dim2.c:343: cal--;
	dec	r2
00107$:
;	../fb_dim2.c:345: if(cmd=='-'){
	cjne	r3,#0x2D,00109$
;	../fb_dim2.c:346: TRIM++;
	inc	_TRIM
;	../fb_dim2.c:347: cal++;
	inc	r2
00109$:
;	../fb_dim2.c:349: if(cmd=='w'){
	cjne	r3,#0x77,00111$
;	../fb_dim2.c:350: EA=0;
	clr	_IEN0_7
;	../fb_dim2.c:351: START_WRITECYCLE;	//cal an 0x1bff schreiben
	mov	_FMCON,#0x00
;	../fb_dim2.c:352: FMADRH= 0x1B;		
	mov	_FMADRH,#0x1B
;	../fb_dim2.c:353: FMADRL= 0xFF; 
	mov	_FMADRL,#0xFF
;	../fb_dim2.c:354: FMDATA=	cal; 
	mov	_FMDATA,r2
;	../fb_dim2.c:355: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_dim2.c:356: EA=1;				//int wieder freigeben
	setb	_IEN0_7
00111$:
;	../fb_dim2.c:358: if(cmd=='v')rs_send(VERSION);
	cjne	r3,#0x76,00113$
	mov	dpl,#0x01
	push	ar2
	push	ar3
	lcall	_rs_send
	pop	ar3
	pop	ar2
00113$:
;	../fb_dim2.c:359: if(cmd=='t')rs_send(TYPE);
	cjne	r3,#0x74,00117$
	mov	dpl,#0x01
	push	ar2
	lcall	_rs_send
	pop	ar2
00117$:
;	../fb_dim2.c:370: TASTER=1;                       // Pin als Eingang schalten um Taster abzufragen
	setb	_P1_7
;	../fb_dim2.c:371: if(!TASTER) {                   // Taster gedrückt
	jb	_P1_7,00122$
;	../fb_dim2.c:372: for(n=0;n<200;n++) {}   // Entprell-Zeit
	mov	r3,#0xC8
00128$:
	djnz	r3,00128$
;	../fb_dim2.c:373: while(!TASTER);         // warten bis Taster losgelassen
00118$:
	jnb	_P1_7,00118$
;	../fb_dim2.c:374: EA=0;
	clr	_IEN0_7
;	../fb_dim2.c:375: START_WRITECYCLE;
	mov	_FMCON,#0x00
;	../fb_dim2.c:376: WRITE_BYTE(0x00,0x60,userram[0x60] ^ 0x81);     // Prog-Bit und Parity-Bit im system_state toggeln
	mov	_FMADRH,#0x1C
	mov	_FMADRL,#0x60
	mov	dptr,#(_userram + 0x0060)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x81
	xrl	a,r3
	mov	_FMDATA,a
;	../fb_dim2.c:377: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_dim2.c:378: EA=1;
	setb	_IEN0_7
00122$:
;	../fb_dim2.c:380: TASTER=!(userram[0x060] & 0x01);// LED entsprechend Prog-Bit schalten (low=LED an)
	mov	dptr,#(_userram + 0x0060)
	clr	a
	movc	a,@a+dptr
	anl	a,#0x01
	mov	r3,a
	cjne	a,#0x01,00170$
00170$:
	mov	_P1_7,c
;	../fb_dim2.c:381: for(n=0;n<100;n++) {}           // falls Hauptroutine keine Zeit verbraucht, der LED etwas Zeit geben, damit sie auch leuchten kann
	mov	r3,#0x64
00131$:
	djnz	r3,00131$
;	../fb_dim2.c:383: while(1)
	ljmp	00123$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_hellikeit:
	.db #0x00
	.db #0x19
	.db #0x28
	.db #0x33
	.db #0x4C
	.db #0x66
	.db #0x7F
	.db #0x99
	.db #0xB2
	.db #0xCC
	.db #0xE6
	.db #0xFF
	.db #0xFF
_basis:
	.byte #0x00,#0x00
	.byte #0x01,#0x00
	.byte #0x10,#0x00
	.byte #0x04,#0x01
	.byte #0x68,#0x10
	.byte #0xE8,#0xFD
_schritttabelle:
	.db #0x00
	.db #0xC8
	.db #0x64
	.db #0x32
	.db #0x19
	.db #0x0C
	.db #0x06
	.db #0x03
_main_trimsave_1_1	=	0x1bff
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
