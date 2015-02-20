;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Tue Nov 06 16:08:30 2012
;--------------------------------------------------------
	.module fb_in8
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _space
	.globl _bitmask_1
	.globl _main
	.globl _watchdog_start
	.globl _watchdog_init
	.globl _bus_return
	.globl _restart_app
	.globl _read_obj_value
	.globl _delay_timer
	.globl _pin_changed
	.globl _process_tel
	.globl _restart_hw
	.globl _send_obj_value
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
	reti
	.ds	7
	ljmp	_X1_int
	.ds	5
	ljmp	_T1_int
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;cmd                       Allocated to registers r7 
;tasterpegel               Allocated to stack - _bp +1
;cal                       Allocated to registers r6 
;base                      Allocated to registers r4 r5 
;pin                       Allocated to registers 
;tmp                       Allocated to registers r4 
;objno                     Allocated to registers r5 
;objstate                  Allocated to registers r2 
;wduf                      Allocated to registers b1 
;tastergetoggelt           Allocated to registers b0 
;------------------------------------------------------------
;	../fb_in8.c:39: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
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
;	../fb_in8.c:41: unsigned char n,cmd,tasterpegel=0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
;	../fb_in8.c:52: __bit wduf,tastergetoggelt=0;
	clr	b0
;	../fb_in8.c:53: wduf=WDCON&0x02;
	mov	a,_WDCON
	rr	a
	anl	a,#0x01
	mov	r6,a
	add	a,#0xff
	mov	b1,c
;	../fb_in8.c:54: TASTER=1;
	setb	_P1_7
;	../fb_in8.c:55: if(!TASTER && wduf)cal=0;
	jb	_P1_7,00102$
	jnb	b1,00102$
	mov	r6,#0x00
	sjmp	00103$
00102$:
;	../fb_in8.c:56: else cal=trimsave;
	mov	dptr,#_main_trimsave_1_43
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r6,a
00103$:
;	../fb_in8.c:57: TRIM = (TRIM+trimsave);
	mov	dptr,#_main_trimsave_1_43
	clr	a
	movc	a,@a+dptr
	mov	r4,_TRIM
	add	a,r4
	mov	r5,a
	mov	_TRIM,r5
;	../fb_in8.c:58: TRIM &= 0x3F;//oberen 2 bits ausblenden
	anl	_TRIM,#0x3F
;	../fb_in8.c:60: restart_hw();				// Hardware zurücksetzen
	push	ar6
	push	bits
	lcall	_restart_hw
	pop	bits
;	../fb_in8.c:63: BRGCON&=0xFE;	// Baudrate Generator stoppen
	anl	_BRGCON,#0xFE
;	../fb_in8.c:64: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	anl	_P1M1,#0xFC
;	../fb_in8.c:65: P1M2&=0xFC;
	anl	_P1M2,#0xFC
;	../fb_in8.c:66: SCON=0x50;		// Mode 1, receive enable
	mov	_SCON,#0x50
;	../fb_in8.c:67: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	orl	_SSTAT,#0xE0
;	../fb_in8.c:68: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
;	../fb_in8.c:69: BRGR1=0x2F;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
	mov	_BRGR1,#0x2F
;	../fb_in8.c:70: BRGR0=0xF0;	// für 115200 0030 nehmen, autocal: 600bd= 0x2FF0
	mov	_BRGR0,#0xF0
;	../fb_in8.c:71: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
;	../fb_in8.c:72: SBUF=0x55;
	mov	_SBUF,#0x55
;	../fb_in8.c:78: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
	push	bits
	lcall	_restart_app
	pop	bits
	pop	ar6
;	../fb_in8.c:81: portbuffer=P0;			// zunächst keine Änderungen bei Busspannungswiederkehr
	mov	_portbuffer,_P0
;	../fb_in8.c:82: p0h=portbuffer;
	mov	_p0h,_portbuffer
;	../fb_in8.c:87: if(!wduf){
	jb	b1,00109$
;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
	mov	r4,#0x00
	mov	r5,#0x00
00179$:
	push	ar6
	mov	dptr,#(_eeprom + 0x00d4)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#(_eeprom + 0x00fe)
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	b,r6
	inc	b
	sjmp	00288$
00287$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r2
	rlc	a
	mov	r2,a
00288$:
	djnz	b,00287$
	clr	c
	mov	a,r3
	subb	a,r4
	mov	a,r2
	subb	a,r5
	pop	ar6
	jc	00109$
;	../fb_in8.c:91: RTCCON=0x60;		// RTC anhalten und Flag löschen
	mov	_RTCCON,#0x60
;	../fb_in8.c:92: RTCH=0x1D;			// reload Real Time Clock für 65ms
	mov	_RTCH,#0x1D
;	../fb_in8.c:93: RTCL=0x40;
	mov	_RTCL,#0x40
;	../fb_in8.c:94: RTCCON=0x61;		// RTC starten
	mov	_RTCCON,#0x61
;	../fb_in8.c:95: while (RTCCON<=0x7F) ;	// Realtime clock ueberlauf abwarten
00105$:
	mov	a,_RTCCON
	add	a,#0xff - 0x7F
	jnc	00105$
;	../fb_in8.c:97: EA = 0;
	clr	_IEN0_7
;	../fb_in8.c:98: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
;	../fb_in8.c:99: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
;	../fb_in8.c:100: EA=1;
	setb	_IEN0_7
;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
	inc	r4
	cjne	r4,#0x00,00179$
	inc	r5
	sjmp	00179$
00109$:
;	../fb_in8.c:105: watchdog_init();
	push	ar6
	push	bits
	lcall	_watchdog_init
	pop	bits
;	../fb_in8.c:106: watchdog_start();
	push	bits
	lcall	_watchdog_start
	pop	bits
	pop	ar6
;	../fb_in8.c:108: if(!wduf)bus_return();			// Anwendungsspezifische Einstellungen zurücksetzen
	jb	b1,00111$
	push	ar6
	push	bits
	lcall	_bus_return
	pop	bits
	pop	ar6
00111$:
;	../fb_in8.c:110: TASTER=1;
	setb	_P1_7
;	../fb_in8.c:111: do  {
00176$:
;	../fb_in8.c:114: EA = 0;
	clr	_IEN0_7
;	../fb_in8.c:115: WFEED1 = 0xA5;
	mov	_WFEED1,#0xA5
;	../fb_in8.c:116: WFEED2 = 0x5A;
	mov	_WFEED2,#0x5A
;	../fb_in8.c:117: EA=1;
	setb	_IEN0_7
;	../fb_in8.c:120: if(APPLICATION_RUN){	  
	mov	dptr,#(_eeprom + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	cjne	r5,#0xFF,00293$
	sjmp	00294$
00293$:
	ljmp	00133$
00294$:
	jnb	_connected,00295$
	ljmp	00133$
00295$:
	mov	a,_status60
	jnb	acc.0,00296$
	ljmp	00133$
00296$:
;	../fb_in8.c:122: p0h=P0;				// prüfen ob ein Eingang sich geändert hat
	mov	_p0h,_P0
;	../fb_in8.c:126: if (p0h!=portbuffer) 
	mov	a,_portbuffer
	cjne	a,_p0h,00297$
	sjmp	00116$
00297$:
;	../fb_in8.c:128: for(n=0;n<8;n++)					// jeden Eingangspin einzel prüfen
	mov	r5,#0x00
00183$:
	cjne	r5,#0x08,00298$
00298$:
	jnc	00186$
;	../fb_in8.c:132: if (((p0h^portbuffer) & bitmask_1[n])&& !(blocked & bitmask_1[n]) )//kürzeste Version
	mov	a,_portbuffer
	xrl	a,_p0h
	mov	r4,a
	mov	a,r5
	mov	dptr,#_bitmask_1
	movc	a,@a+dptr
	mov	r3,a
	anl	a,r4
	jz	00185$
	mov	a,r3
	anl	a,_blocked
	jnz	00185$
;	../fb_in8.c:134: pin_changed(n);				// Änderung verarbeiten
	mov	dpl,r5
	push	ar6
	push	ar5
	push	bits
	lcall	_pin_changed
	pop	bits
	pop	ar5
	pop	ar6
00185$:
;	../fb_in8.c:128: for(n=0;n<8;n++)					// jeden Eingangspin einzel prüfen
	inc	r5
	sjmp	00183$
00186$:
;	../fb_in8.c:137: portbuffer=p0h;					// neuen Portzustand in buffer speichern
	mov	_portbuffer,_p0h
00116$:
;	../fb_in8.c:142: if (RTCCON>=0x80){
	mov	a,#0x100 - 0x80
	add	a,_RTCCON
	jnc	00219$
;	../fb_in8.c:143: delay_timer();	// Realtime clock ueberlauf
	push	ar6
	push	bits
	lcall	_delay_timer
	pop	bits
	pop	ar6
;	../fb_in8.c:147: for(objno=0;objno<=7;objno++){	
00219$:
	mov	r5,#0x00
00187$:
	mov	a,r5
	add	a,#0xff - 0x07
	jnc	00303$
	ljmp	00133$
00303$:
;	../fb_in8.c:148: tmp=(eeprom[0xD5+(objno*4)]&0x0C);//0xD5/ bit 2-3 zykl senden aktiv 
	push	ar6
	mov	a,r5
	add	a,r5
	add	a,acc
	add	a,#0xD5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	anl	ar4,#0x0C
;	../fb_in8.c:149: objstate=read_obj_value(objno);
	mov	dpl,r5
	push	ar5
	push	ar4
	push	bits
	lcall	_read_obj_value
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	pop	bits
	pop	ar4
	pop	ar5
;	../fb_in8.c:150: if (((eeprom[0xCE+(objno>>1)] >> ((objno & 0x01)*4)) & 0x0F)==1){// bei Funktion=Schalten
	mov	a,r5
	clr	c
	rrc	a
	add	a,#0xCE
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0x01
	anl	a,r5
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r7
	sjmp	00305$
00304$:
	clr	c
	rrc	a
00305$:
	djnz	b,00304$
	anl	a,#0x0F
	mov	r7,a
	cjne	r7,#0x01,00306$
	sjmp	00307$
00306$:
	pop	ar6
	ljmp	00189$
00307$:
	pop	ar6
;	../fb_in8.c:151: if ((tmp==0x04 && objstate==1)||(tmp==0x08 && objstate==0)|| tmp==0x0C){//bei zykl senden aktiviert
	cjne	r4,#0x04,00128$
	cjne	r2,#0x01,00310$
	sjmp	00123$
00310$:
00128$:
	cjne	r4,#0x08,00129$
	mov	a,r2
	jz	00123$
00129$:
	cjne	r4,#0x0C,00124$
00123$:
;	../fb_in8.c:152: n=timercnt[objno];
	mov	a,r5
	add	a,#_timercnt
	mov	r1,a
;	../fb_in8.c:153: if ((n & 0x7F) ==0){ 		//    wenn aus oder abgelaufen
	mov	a,@r1
	mov	r7,a
	anl	a,#0x7F
	jnz	00189$
;	../fb_in8.c:154: timercnt[objno] = (eeprom[0xD6+(objno*4)]& 0x3F)+ 0x80 ;//0xD6 Faktor Zyklisch senden x.1 + x.2 )+ einschalten
	mov	a,r5
	add	a,r5
	add	a,acc
	add	a,#0xD6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x3F
	anl	a,r4
	add	a,#0x80
	mov	@r1,a
;	../fb_in8.c:155: timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07;	//Basis zyklisch senden
	mov	a,r5
	add	a,#_timerbase
	mov	r1,a
	mov	ar3,r5
	mov	r4,#0x00
	inc	r3
	cjne	r3,#0x00,00318$
	inc	r4
00318$:
	mov	a,r4
	mov	c,acc.7
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	a,#0xF6
	add	a,r3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	anl	a,r5
	xrl	a,#0x01
	mov	b,#0x04
	mul	ab
	mov	b,a
	inc	b
	mov	a,r4
	sjmp	00320$
00319$:
	clr	c
	rrc	a
00320$:
	djnz	b,00319$
	anl	a,#0x07
	mov	@r1,a
;	../fb_in8.c:156: if (n & 0x80){// wenn timer ein war
	mov	a,r7
	jnb	acc.7,00189$
;	../fb_in8.c:157: send_obj_value(objno);		// Eingang x.1 zyklisch senden
	mov	dpl,r5
	push	ar6
	push	ar5
	push	bits
	lcall	_send_obj_value
	pop	bits
	pop	ar5
	pop	ar6
	sjmp	00189$
00124$:
;	../fb_in8.c:161: else timercnt[objno]=0;
	mov	a,r5
	add	a,#_timercnt
	mov	r0,a
	mov	@r0,#0x00
00189$:
;	../fb_in8.c:147: for(objno=0;objno<=7;objno++){	
	inc	r5
	ljmp	00187$
00133$:
;	../fb_in8.c:180: if (tel_arrived || tel_sent) { 
	jb	_tel_arrived,00136$
	jnb	_tel_sent,00137$
00136$:
;	../fb_in8.c:181: tel_arrived=0;
	clr	_tel_arrived
;	../fb_in8.c:182: tel_sent=0;
	clr	_tel_sent
;	../fb_in8.c:183: process_tel();
	push	ar6
	push	bits
	lcall	_process_tel
	pop	bits
	pop	ar6
	sjmp	00138$
00137$:
;	../fb_in8.c:186: for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
	mov	r7,#0x64
00193$:
	mov	ar5,r7
	dec	r5
	mov	ar7,r5
	mov	a,r7
	jnz	00193$
00138$:
;	../fb_in8.c:190: if (RI){
;	../fb_in8.c:191: RI=0;
	jbc	_SCON_0,00325$
	sjmp	00164$
00325$:
;	../fb_in8.c:192: cmd=SBUF;
	mov	r7,_SBUF
;	../fb_in8.c:193: if(cmd=='c'){
	cjne	r7,#0x63,00144$
;	../fb_in8.c:194: while(!TI);
00140$:
;	../fb_in8.c:195: TI=0;
	jbc	_SCON_1,00328$
	sjmp	00140$
00328$:
;	../fb_in8.c:196: SBUF=0x55;
	mov	_SBUF,#0x55
00144$:
;	../fb_in8.c:198: if(cmd=='+'){
	cjne	r7,#0x2B,00146$
;	../fb_in8.c:199: TRIM--;
	dec	_TRIM
;	../fb_in8.c:200: cal--;
	dec	r6
00146$:
;	../fb_in8.c:202: if(cmd=='-'){
	cjne	r7,#0x2D,00148$
;	../fb_in8.c:203: TRIM++;
	inc	_TRIM
;	../fb_in8.c:204: cal++;
	inc	r6
00148$:
;	../fb_in8.c:206: if(cmd=='w'){
	cjne	r7,#0x77,00150$
;	../fb_in8.c:207: EA=0;
	clr	_IEN0_7
;	../fb_in8.c:208: START_WRITECYCLE;	//cal an 0x1bff schreiben
	mov	_FMCON,#0x00
;	../fb_in8.c:210: FMADRH= 0x1C;		
	mov	_FMADRH,#0x1C
;	../fb_in8.c:211: FMADRL= 0xFF; 
	mov	_FMADRL,#0xFF
;	../fb_in8.c:213: FMDATA=	cal;
	mov	_FMDATA,r6
;	../fb_in8.c:214: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_in8.c:215: EA=1;				//int wieder freigeben
	setb	_IEN0_7
00150$:
;	../fb_in8.c:217: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	cjne	r7,#0x70,00152$
	xrl	_status60,#0x81
00152$:
;	../fb_in8.c:219: if(cmd=='v'){
	cjne	r7,#0x76,00157$
;	../fb_in8.c:220: while(!TI);
00153$:
;	../fb_in8.c:221: TI=0;
	jbc	_SCON_1,00339$
	sjmp	00153$
00339$:
;	../fb_in8.c:222: SBUF=VERSION;
	mov	_SBUF,#0x07
00157$:
;	../fb_in8.c:224: if(cmd=='t'){
	cjne	r7,#0x74,00164$
;	../fb_in8.c:225: while(!TI);
00158$:
;	../fb_in8.c:226: TI=0;
	jbc	_SCON_1,00342$
	sjmp	00158$
00342$:
;	../fb_in8.c:227: SBUF=TYPE;
	mov	_SBUF,#0x02
00164$:
;	../fb_in8.c:232: TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
	setb	_P1_7
;	../fb_in8.c:233: if(!TASTER){ // Taster gedrückt
	jb	_P1_7,00174$
;	../fb_in8.c:234: if(tasterpegel<255)	tasterpegel++;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0xFF,00344$
00344$:
	jnc	00168$
	mov	r0,_bp
	inc	r0
	inc	@r0
	sjmp	00175$
00168$:
;	../fb_in8.c:236: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	jb	b0,00166$
	xrl	_status60,#0x81
00166$:
;	../fb_in8.c:237: tastergetoggelt=1;
	setb	b0
	sjmp	00175$
00174$:
;	../fb_in8.c:241: if(tasterpegel>0) tasterpegel--;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00171$
	mov	r0,_bp
	inc	r0
	dec	@r0
	sjmp	00175$
00171$:
;	../fb_in8.c:242: else tastergetoggelt=0;
	clr	b0
00175$:
;	../fb_in8.c:244: TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
	mov	a,_status60
	anl	a,#0x01
	mov	r7,a
	cjne	a,#0x01,00348$
00348$:
	clr	a
	rlc	a
	mov	r7,a
	add	a,#0xff
	mov	_P1_7,c
;	../fb_in8.c:246: } while(1);
	ljmp	00176$
	dec	sp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_bitmask_1:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
_space	=	0x01ce
_main_trimsave_1_43	=	0x1cff
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
