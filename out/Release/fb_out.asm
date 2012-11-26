;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Tue Nov 20 22:56:04 2012
;--------------------------------------------------------
	.module fb_out
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _watchdog_start
	.globl _watchdog_feed
	.globl _watchdog_init
	.globl _restart_app
	.globl _bus_return
	.globl _port_schalten
	.globl _delay_timer
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
;n                         Allocated to registers r4 
;cmd                       Allocated to registers r4 
;tasterpegel               Allocated to registers r7 
;cal                       Allocated to registers r5 
;rm_count                  Allocated to registers r6 
;wduf                      Allocated to registers b1 
;tastergetoggelt           Allocated to registers b0 
;------------------------------------------------------------
;	../fb_out.c:123: void main(void)
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
;	../fb_out.c:125: unsigned char n,cmd,tasterpegel=0;
	mov	r7,#0x00
;	../fb_out.c:131: unsigned char rm_count=0;
	mov	r6,#0x00
;	../fb_out.c:132: __bit wduf,tastergetoggelt=0;
	clr	b0
;	../fb_out.c:133: wduf=WDCON&0x02;
	mov	a,_WDCON
	rr	a
	anl	a,#0x01
	add	a,#0xff
	mov	b1,c
;	../fb_out.c:134: restart_hw();							// Hardware zuruecksetzen
	push	ar7
	push	ar6
	push	bits
	lcall	_restart_hw
	pop	bits
	pop	ar6
	pop	ar7
;	../fb_out.c:137: TASTER=1;
	setb	_P1_7
;	../fb_out.c:138: if(!TASTER && wduf)cal=0;
	jb	_P1_7,00102$
	jnb	b1,00102$
	mov	r5,#0x00
	sjmp	00103$
00102$:
;	../fb_out.c:139: else cal=trimsave;
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r5,a
00103$:
;	../fb_out.c:140: TRIM = (TRIM+trimsave);
	mov	dptr,#_main_trimsave_1_1
	clr	a
	movc	a,@a+dptr
	mov	r3,_TRIM
	add	a,r3
	mov	r4,a
	mov	_TRIM,r4
;	../fb_out.c:141: TRIM &= 0x3F;//oberen 2 bits ausblenden
	anl	_TRIM,#0x3F
;	../fb_out.c:146: if (!wduf){// BUS return verzögerung nur wenn nicht watchdog underflow
	jb	b1,00109$
;	../fb_out.c:147: for (n=0;n<50;n++) {		// Warten bis Bus stabil
	mov	r4,#0x00
00182$:
	cjne	r4,#0x32,00238$
00238$:
	jnc	00109$
;	../fb_out.c:148: TR0=0;					// Timer 0 anhalten
	clr	_TCON_4
;	../fb_out.c:149: TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	_TH0,a
;	../fb_out.c:150: TL0=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	_TL0,a
;	../fb_out.c:151: TF0=0;					// Überlauf-Flag zurücksetzen
	clr	_TCON_5
;	../fb_out.c:152: TR0=1;					// Timer 0 starten
	setb	_TCON_4
;	../fb_out.c:153: while(!TF0);
00105$:
	jnb	_TCON_5,00105$
;	../fb_out.c:147: for (n=0;n<50;n++) {		// Warten bis Bus stabil
	inc	r4
	sjmp	00182$
00109$:
;	../fb_out.c:156: watchdog_init();
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_watchdog_init
	pop	bits
;	../fb_out.c:157: watchdog_start();
	push	bits
	lcall	_watchdog_start
	pop	bits
;	../fb_out.c:158: restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
	push	bits
	lcall	_restart_app
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
;	../fb_out.c:159: if(!wduf)bus_return();							// Aktionen bei Busspannungswiederkehr
	jb	b1,00111$
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_bus_return
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
00111$:
;	../fb_out.c:161: BRGCON&=0xFE;	// Baudrate Generator stoppen
	anl	_BRGCON,#0xFE
;	../fb_out.c:162: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
	anl	_P1M1,#0xFC
;	../fb_out.c:163: P1M2&=0xFC;
	anl	_P1M2,#0xFC
;	../fb_out.c:164: SCON=0x50;		// Mode 1, receive enable
	mov	_SCON,#0x50
;	../fb_out.c:165: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
	orl	_SSTAT,#0xE0
;	../fb_out.c:166: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
;	../fb_out.c:167: BRGR1=0x2F;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
	mov	_BRGR1,#0x2F
;	../fb_out.c:168: BRGR0=0xF0;	// für 115200 0030 nehmen, autocal: 600bd= 0x2FF0
	mov	_BRGR0,#0xF0
;	../fb_out.c:169: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
;	../fb_out.c:170: SBUF=0x55;
	mov	_SBUF,#0x55
;	../fb_out.c:171: do  {
00179$:
;	../fb_out.c:172: watchdog_feed();
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_watchdog_feed
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
;	../fb_out.c:174: if(APPLICATION_RUN) {	// nur wenn run-mode gesetzt
	mov	dptr,#(_eeprom + 0x000d)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xFF,00242$
	sjmp	00243$
00242$:
	ljmp	00133$
00243$:
	jnb	_connected,00244$
	ljmp	00133$
00244$:
	mov	a,_status60
	jnb	acc.0,00245$
	ljmp	00133$
00245$:
;	../fb_out.c:176: if(RTCCON>=0x80) delay_timer();	// Realtime clock Ueberlauf
	mov	a,#0x100 - 0x80
	add	a,_RTCCON
	jnc	00113$
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_delay_timer
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
00113$:
;	../fb_out.c:178: if(TF0 && (TMOD & 0x0F)==0x01) {	// Vollstrom für Relais ausschalten und wieder PWM ein
	jnb	_TCON_5,00115$
	mov	a,#0x0F
	anl	a,_TMOD
	mov	r4,a
	cjne	r4,#0x01,00115$
;	../fb_out.c:184: TF0=0;
	clr	_TCON_5
;	../fb_out.c:188: PWM=1;			// PWM Pin muss auf 1 gesetzt werden, damit PWM geht !!!
	setb	_P1_2
;	../fb_out.c:192: P0=portbuffer;
	mov	_P0,_portbuffer
00115$:
;	../fb_out.c:197: if (portchanged)port_schalten();	// Ausgänge schalten
	jnb	_portchanged,00118$
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_port_schalten
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
00118$:
;	../fb_out.c:200: if(rm_send) {	// wenn nichts zu senden ist keine Zeit vertrödeln
	mov	a,_rm_send
	jz	00125$
;	../fb_out.c:201: if(rm_send & (1<<rm_count)) {
	push	ar5
	mov	b,r6
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00253$
00252$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00253$:
	djnz	b,00252$
	mov	r2,_rm_send
	mov	r5,#0x00
	mov	a,r2
	anl	ar3,a
	mov	a,r5
	anl	ar4,a
	pop	ar5
	mov	a,r3
	orl	a,r4
	jz	00122$
;	../fb_out.c:202: if(send_obj_value(rm_count + 12)) {	// falls erfolgreich, dann nächste
	mov	a,#0x0C
	add	a,r6
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_send_obj_value
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	jnc	00126$
;	../fb_out.c:203: rm_send&=(0xFF-(1<<rm_count));
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00258$
00256$:
	add	a,acc
00258$:
	djnz	b,00256$
	mov	r4,a
	mov	a,#0xFF
	clr	c
	subb	a,r4
	anl	_rm_send,a
;	../fb_out.c:204: rm_count++;
	inc	r6
;	../fb_out.c:206: rm_count&=0x07;
	anl	ar6,#0x07
	sjmp	00126$
00122$:
;	../fb_out.c:213: rm_count++;
	inc	r6
;	../fb_out.c:215: rm_count&=0x07;
	anl	ar6,#0x07
	sjmp	00126$
00125$:
;	../fb_out.c:221: else rm_count=0;	// Immer mal wieder auf Null setzen, damit Reihenfolge von 1 bis 8 geht
	mov	r6,#0x00
00126$:
;	../fb_out.c:227: if (fb_state==0 && (TH1<0XC0) && (!wait_for_ack)&& portbuffer!=eeprom[PORTSAVE]) {
	mov	a,_fb_state
	jnz	00133$
	mov	a,#0x100 - 0xC0
	add	a,_TH1
	jc	00133$
	jb	_wait_for_ack,00133$
	mov	dptr,#(_eeprom + 0x0099)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	a,_portbuffer,00262$
	sjmp	00133$
00262$:
;	../fb_out.c:228: START_WRITECYCLE;
	mov	_FMCON,#0x00
;	../fb_out.c:229: WRITE_BYTE(0x01,PORTSAVE,portbuffer);
	mov	_FMADRH,#0x1D
	mov	_FMADRL,#0x99
	mov	_FMDATA,_portbuffer
;	../fb_out.c:230: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
00133$:
;	../fb_out.c:236: if (tel_arrived || tel_sent) {
	jb	_tel_arrived,00136$
	jnb	_tel_sent,00137$
00136$:
;	../fb_out.c:237: tel_arrived=0;
	clr	_tel_arrived
;	../fb_out.c:238: tel_sent=0;
	clr	_tel_sent
;	../fb_out.c:239: process_tel();
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_process_tel
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00138$
00137$:
;	../fb_out.c:242: for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
	mov	r4,#0x64
00188$:
	mov	ar3,r4
	dec	r3
	mov	ar4,r3
	mov	a,r4
	jnz	00188$
00138$:
;	../fb_out.c:247: if (RI){
;	../fb_out.c:248: RI=0;
	jbc	_SCON_0,00266$
	sjmp	00167$
00266$:
;	../fb_out.c:249: cmd=SBUF;
	mov	r4,_SBUF
;	../fb_out.c:250: if(cmd=='c'){
	cjne	r4,#0x63,00144$
;	../fb_out.c:251: while(!TI);
00140$:
;	../fb_out.c:252: TI=0;
	jbc	_SCON_1,00269$
	sjmp	00140$
00269$:
;	../fb_out.c:253: SBUF=0x55;
	mov	_SBUF,#0x55
00144$:
;	../fb_out.c:255: if(cmd=='+'){
	cjne	r4,#0x2B,00146$
;	../fb_out.c:256: TRIM--;
	dec	_TRIM
;	../fb_out.c:257: cal--;
	dec	r5
00146$:
;	../fb_out.c:259: if(cmd=='-'){
	cjne	r4,#0x2D,00148$
;	../fb_out.c:260: TRIM++;
	inc	_TRIM
;	../fb_out.c:261: cal++;
	inc	r5
00148$:
;	../fb_out.c:263: if(cmd=='w'){
	cjne	r4,#0x77,00150$
;	../fb_out.c:264: EA=0;
	clr	_IEN0_7
;	../fb_out.c:265: START_WRITECYCLE;	//cal an 0x1bff schreiben
	mov	_FMCON,#0x00
;	../fb_out.c:271: FMADRH= 0x1B;		
	mov	_FMADRH,#0x1B
;	../fb_out.c:272: FMADRL= 0xFF; 
	mov	_FMADRL,#0xFF
;	../fb_out.c:274: FMDATA=	cal;
	mov	_FMDATA,r5
;	../fb_out.c:275: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_out.c:276: EA=1;				//int wieder freigeben
	setb	_IEN0_7
00150$:
;	../fb_out.c:278: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	cjne	r4,#0x70,00152$
	xrl	_status60,#0x81
00152$:
;	../fb_out.c:295: if(cmd=='v'){
	cjne	r4,#0x76,00157$
;	../fb_out.c:296: while(!TI);
00153$:
;	../fb_out.c:297: TI=0;
	jbc	_SCON_1,00280$
	sjmp	00153$
00280$:
;	../fb_out.c:298: SBUF=VERSION;
	mov	_SBUF,#0x23
00157$:
;	../fb_out.c:300: if(cmd=='t'){
	cjne	r4,#0x74,00162$
;	../fb_out.c:301: while(!TI);
00158$:
;	../fb_out.c:302: TI=0;
	jbc	_SCON_1,00283$
	sjmp	00158$
00283$:
;	../fb_out.c:303: SBUF=TYPE;
	mov	_SBUF,#0x02
00162$:
;	../fb_out.c:306: if(cmd >=49 && cmd <= 56){
	cjne	r4,#0x31,00284$
00284$:
	jc	00167$
	mov	a,r4
	add	a,#0xff - 0x38
	jc	00167$
;	../fb_out.c:307: portbuffer = portbuffer ^ (0x01<< (cmd-49));
	mov	a,r4
	add	a,#0xCF
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00289$
00287$:
	add	a,acc
00289$:
	djnz	b,00287$
	xrl	_portbuffer,a
;	../fb_out.c:308: port_schalten();
	push	ar7
	push	ar6
	push	ar5
	push	bits
	lcall	_port_schalten
	pop	bits
	pop	ar5
	pop	ar6
	pop	ar7
00167$:
;	../fb_out.c:319: TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
	setb	_P1_7
;	../fb_out.c:320: if(!TASTER){ // Taster gedrückt
	jb	_P1_7,00177$
;	../fb_out.c:321: if(tasterpegel<255)	tasterpegel++;
	cjne	r7,#0xFF,00291$
00291$:
	jnc	00171$
	inc	r7
	sjmp	00178$
00171$:
;	../fb_out.c:323: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
	jb	b0,00169$
	xrl	_status60,#0x81
00169$:
;	../fb_out.c:324: tastergetoggelt=1;
	setb	b0
	sjmp	00178$
00177$:
;	../fb_out.c:328: if(tasterpegel>0) tasterpegel--;
	mov	a,r7
	jz	00174$
	dec	r7
	sjmp	00178$
00174$:
;	../fb_out.c:329: else tastergetoggelt=0;
	clr	b0
00178$:
;	../fb_out.c:331: TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
	mov	a,_status60
	anl	a,#0x01
	mov	r4,a
	cjne	a,#0x01,00295$
00295$:
	clr	a
	rlc	a
	mov	r4,a
	add	a,#0xff
	mov	_P1_7,c
;	../fb_out.c:333: } while(1);
	ljmp	00179$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_main_trimsave_1_1	=	0x1bff
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
