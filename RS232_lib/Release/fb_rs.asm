;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Mon Nov 19 23:06:04 2012
;--------------------------------------------------------
	.module fb_rs
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _watchdog_start
	.globl _watchdog_feed
	.globl _watchdog_init
	.globl _convert_adr
	.globl _save_ga
	.globl _restart_app
	.globl _set_filtermode
	.globl _send_ok
	.globl _process_tel
	.globl _restart_hw
	.globl _send_obj_value
	.globl _rs_send_s
	.globl _rs_send
	.globl _rs_send_hex_i
	.globl _rs_send_hex
	.globl _rs_send_dec
	.globl _rs_init
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
	.globl _rsin_busy
	.globl _write_ok
	.globl _filtermode
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
_filtermode::
	.ds 1
_write_ok::
	.ds 1
_rsin_busy::
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
	.ds	5
	ljmp	_serial_int
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
;busy                      Allocated to registers b0 
;value                     Allocated to registers r5 r6 
;baud_tmp                  Allocated to registers r6 r7 
;------------------------------------------------------------
;	../fb_rs.c:49: void main(void)
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
;	../fb_rs.c:52: __bit busy=0;
	clr	b0
;	../fb_rs.c:57: restart_hw();			// Hardware zurücksetzen
	push	bits
	lcall	_restart_hw
	pop	bits
;	../fb_rs.c:58: rs_init(baud);			// serielle Schnittstelle initialisieren, muss hier sein
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	bits
	lcall	_rs_init
	pop	bits
;	../fb_rs.c:61: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
	push	bits
	lcall	_restart_app
	pop	bits
;	../fb_rs.c:63: RXLED=1;
	setb	_P0_6
;	../fb_rs.c:64: EIBLED=1;
	setb	_P0_7
;	../fb_rs.c:65: ledcount=0xff;
	mov	_ledcount,#0xFF
;	../fb_rs.c:66: eibledcount=0;
	mov	_eibledcount,#0x00
;	../fb_rs.c:67: rxledcount=0;
	mov	_rxledcount,#0x00
;	../fb_rs.c:68: rsinpos=0;
	mov	_rsinpos,#0x00
;	../fb_rs.c:70: rs_send_s("Kubi's RS-interface V2.01 ");
	mov	dptr,#__str_0
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
;	../fb_rs.c:71: if (baud==96 || baud==192 || baud==384 || baud==576) rs_send_dec(baud);
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	cjne	r6,#0x60,00387$
	cjne	r7,#0x00,00387$
	sjmp	00101$
00387$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	cjne	r6,#0xC0,00388$
	cjne	r7,#0x00,00388$
	sjmp	00101$
00388$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	cjne	r6,#0x80,00389$
	cjne	r7,#0x01,00389$
	sjmp	00101$
00389$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	cjne	r6,#0x40,00102$
	cjne	r7,#0x02,00102$
00101$:
	mov	dptr,#_baud
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	bits
	lcall	_rs_send_dec
	pop	bits
	sjmp	00103$
00102$:
;	../fb_rs.c:72: else rs_send_s("1152");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
00103$:
;	../fb_rs.c:73: rs_send_s("00 Baud.\n");
	mov	dptr,#__str_2
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
;	../fb_rs.c:74: watchdog_init();
	push	bits
	lcall	_watchdog_init
	pop	bits
;	../fb_rs.c:75: watchdog_start();
	push	bits
	lcall	_watchdog_start
	pop	bits
;	../fb_rs.c:77: if(fm){
	mov	dptr,#_fm
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00108$
;	../fb_rs.c:78: filtermode=1;
	setb	_filtermode
;	../fb_rs.c:79: rs_send_s("filtered\n");
	mov	dptr,#__str_3
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	sjmp	00258$
00108$:
;	../fb_rs.c:81: else filtermode=0;
	clr	_filtermode
;	../fb_rs.c:83: do  {
00258$:
;	../fb_rs.c:84: watchdog_feed();
	push	bits
	lcall	_watchdog_feed
	pop	bits
;	../fb_rs.c:85: ledcount--;
;	../fb_rs.c:86: if(!ledcount){
	djnz	_ledcount,00117$
;	../fb_rs.c:87: if(!eibledcount)EIBLED=1;
	mov	a,_eibledcount
	jnz	00111$
	setb	_P0_7
	sjmp	00112$
00111$:
;	../fb_rs.c:89: eibledcount--;
	dec	_eibledcount
;	../fb_rs.c:90: EIBLED=0;
	clr	_P0_7
00112$:
;	../fb_rs.c:92: if(!rxledcount)RXLED=1;
	mov	a,_rxledcount
	jnz	00114$
	setb	_P0_6
	sjmp	00117$
00114$:
;	../fb_rs.c:94: rxledcount--;
	dec	_rxledcount
;	../fb_rs.c:95: RXLED=0;
	clr	_P0_6
00117$:
;	../fb_rs.c:98: if(rsin[rsinpos-1]==0x0A) rsinpos--;	// ggf. LF entfernen
	mov	a,_rsinpos
	dec	a
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x0A,00119$
	dec	_rsinpos
00119$:
;	../fb_rs.c:99: if(rsinpos>0 && rsin[rsinpos-1]==0x0D&& !busy)	// CR empfangen
	mov	a,_rsinpos
	jnz	00398$
	ljmp	00248$
00398$:
	mov	a,_rsinpos
	dec	a
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x0D,00399$
	sjmp	00400$
00399$:
	ljmp	00248$
00400$:
	jnb	b0,00401$
	ljmp	00248$
00401$:
;	../fb_rs.c:101: rxledcount=0xff;// * RXLED lang einschalten
	mov	_rxledcount,#0xFF
;	../fb_rs.c:102: if(echo) rs_send(0x0A);
	mov	dptr,#_echo
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00121$
	mov	dpl,#0x0A
	push	bits
	lcall	_rs_send
	pop	bits
00121$:
;	../fb_rs.c:104: if (rsin[0]=='f' && rsin[1]=='b') {	// Magic-word 'fb' empfangen
	mov	a,#0x66
	cjne	a,_rsin,00403$
	sjmp	00404$
00403$:
	ljmp	00243$
00404$:
	mov	a,#0x62
	cjne	a,(_rsin + 0x0001),00405$
	sjmp	00406$
00405$:
	ljmp	00243$
00406$:
;	../fb_rs.c:105: if(rsin[2]=='s') {		// s=senden oder setzen
	mov	a,#0x73
	cjne	a,(_rsin + 0x0002),00407$
	sjmp	00408$
00407$:
	ljmp	00181$
00408$:
;	../fb_rs.c:107: if(rsin[3]=='0' && rsin[4]=='1' && rsin[rsinpos-3]=='=' && (rsin[rsinpos-2]=='0' || rsin[rsinpos-2]=='1')) {
	mov	a,#0x30
	cjne	a,(_rsin + 0x0003),00123$
	mov	a,#0x31
	cjne	a,(_rsin + 0x0004),00123$
	mov	a,_rsinpos
	add	a,#0xFD
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x3D,00123$
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x30,00415$
	sjmp	00122$
00415$:
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x31,00123$
00122$:
;	../fb_rs.c:108: send_obj_value(1);
	mov	dpl,#0x01
	lcall	_send_obj_value
;	../fb_rs.c:109: busy=1;
	setb	b0
00123$:
;	../fb_rs.c:113: if(rsin[3]=='0' && rsin[4]=='2' && rsin[rsinpos-4]=='=') {
	mov	a,#0x30
	cjne	a,(_rsin + 0x0003),00129$
	mov	a,#0x32
	cjne	a,(_rsin + 0x0004),00129$
	mov	a,_rsinpos
	add	a,#0xFC
	add	a,#_rsin
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x3D,00129$
;	../fb_rs.c:114: send_obj_value(2);
	mov	dpl,#0x02
	lcall	_send_obj_value
;	../fb_rs.c:115: busy=1;
	setb	b0
00129$:
;	../fb_rs.c:119: if(rsin[3]=='0' && rsin[4]=='3') {
	mov	a,#0x30
	cjne	a,(_rsin + 0x0003),00133$
	mov	a,#0x33
	cjne	a,(_rsin + 0x0004),00133$
;	../fb_rs.c:120: send_obj_value(3);
	mov	dpl,#0x03
	lcall	_send_obj_value
;	../fb_rs.c:121: busy=1;
	setb	b0
00133$:
;	../fb_rs.c:124: if(rsin[3]=='0' && rsin[4]=='4') {
	mov	a,#0x30
	cjne	a,(_rsin + 0x0003),00136$
	mov	a,#0x34
	cjne	a,(_rsin + 0x0004),00136$
;	../fb_rs.c:125: send_obj_value(4);
	mov	dpl,#0x04
	lcall	_send_obj_value
;	../fb_rs.c:126: busy=1;
	setb	b0
00136$:
;	../fb_rs.c:129: if(rsin[3]=='0' && rsin[4]=='5') {
	mov	a,#0x30
	cjne	a,(_rsin + 0x0003),00139$
	mov	a,#0x35
	cjne	a,(_rsin + 0x0004),00139$
;	../fb_rs.c:130: send_obj_value(5);
	mov	dpl,#0x05
	lcall	_send_obj_value
;	../fb_rs.c:131: busy=1;
	setb	b0
00139$:
;	../fb_rs.c:135: if(rsin[3]=='0' && rsin[4]=='6') {
	mov	a,#0x30
	cjne	a,(_rsin + 0x0003),00142$
	mov	a,#0x36
	cjne	a,(_rsin + 0x0004),00142$
;	../fb_rs.c:136: send_obj_value(6);
	mov	dpl,#0x06
	lcall	_send_obj_value
;	../fb_rs.c:137: busy=1;
	setb	b0
00142$:
;	../fb_rs.c:141: if(rsin[3]=='1' && rsin[4]=='5') {
	mov	a,#0x31
	cjne	a,(_rsin + 0x0003),00145$
	mov	a,#0x35
	cjne	a,(_rsin + 0x0004),00145$
;	../fb_rs.c:142: send_obj_value(15);
	mov	dpl,#0x0F
	lcall	_send_obj_value
;	../fb_rs.c:143: busy=1;
	setb	b0
00145$:
;	../fb_rs.c:146: if(rsin[3]=='f' && rsin[4]=='a'){
	mov	a,#0x66
	cjne	a,(_rsin + 0x0003),00148$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00148$
;	../fb_rs.c:147: set_filtermode('1');
	mov	dpl,#0x31
	push	bits
	lcall	_set_filtermode
	pop	bits
;	../fb_rs.c:148: save_ga(convert_adr(6),0);
	mov	dpl,#0x06
	push	bits
	lcall	_convert_adr
	pop	bits
	push	bits
	clr	a
	push	acc
	push	acc
	lcall	_save_ga
	dec	sp
	dec	sp
	pop	bits
;	../fb_rs.c:149: send_ok;//rs_send_s("OK\n");
00148$:
;	../fb_rs.c:153: if(rsin[3]=='p' && rsin[4]=='a')
	mov	a,#0x70
	cjne	a,(_rsin + 0x0003),00156$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00156$
;	../fb_rs.c:155: pa_tmp=convert_adr(5);
	mov	dpl,#0x05
	push	bits
	lcall	_convert_adr
	mov	_pa_tmp,dpl
	mov	(_pa_tmp + 1),dph
	pop	bits
;	../fb_rs.c:156: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:157: while (!write_ok) {
00152$:
	jb	_write_ok,00154$
;	../fb_rs.c:158: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:159: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:160: FMADRL = 0xFB;
	mov	_FMADRL,#0xFB
;	../fb_rs.c:161: FMDATA = pa_tmp>>8;
	mov	_FMDATA,(_pa_tmp + 1)
;	../fb_rs.c:162: FMDATA = pa_tmp;
	mov	_FMDATA,_pa_tmp
;	../fb_rs.c:163: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:164: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00152$
	setb	_write_ok
	sjmp	00152$
00154$:
;	../fb_rs.c:166: send_ok();//rs_send_s("OK\n");
	push	bits
	lcall	_send_ok
	pop	bits
00156$:
;	../fb_rs.c:170: if(rsin[3]=='b' && rsin[4]=='r') {
	mov	a,#0x62
	cjne	a,(_rsin + 0x0003),00454$
	sjmp	00455$
00454$:
	ljmp	00181$
00455$:
	mov	a,#0x72
	cjne	a,(_rsin + 0x0004),00456$
	sjmp	00457$
00456$:
	ljmp	00181$
00457$:
;	../fb_rs.c:171: baud_tmp=0;
;	../fb_rs.c:172: if(rsinpos>9 && rsin[rsinpos-3]=='0' && rsin[rsinpos-2]=='0') {
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_rsinpos
	add	a,#0xff - 0x09
	jnc	00159$
	mov	a,_rsinpos
	add	a,#0xFD
	add	a,#_rsin
	mov	r1,a
	mov	ar5,@r1
	cjne	r5,#0x30,00159$
	mov	a,_rsinpos
	add	a,#0xFE
	add	a,#_rsin
	mov	r1,a
	mov	ar5,@r1
	cjne	r5,#0x30,00159$
;	../fb_rs.c:173: for(n=5;n<rsinpos-3;n++) {
	mov	r5,#0x05
00261$:
	push	ar6
	push	ar7
	mov	r3,_rsinpos
	mov	r4,#0x00
	mov	a,r3
	add	a,#0xFD
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	ar2,r5
	mov	r7,#0x00
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r7
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	pop	ar6
	jnc	00159$
;	../fb_rs.c:174: baud_tmp*=10;
	push	ar5
	push	bits
	push	ar6
	push	ar7
	mov	dptr,#0x000A
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	bits
	pop	ar5
	mov	ar6,r3
	mov	ar7,r4
;	../fb_rs.c:175: baud_tmp+=rsin[n]-48;
	mov	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	ar4,@r1
	mov	r3,#0x00
	mov	a,r4
	add	a,#0xD0
	mov	r4,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
;	../fb_rs.c:173: for(n=5;n<rsinpos-3;n++) {
	inc	r5
	sjmp	00261$
00159$:
;	../fb_rs.c:178: if (baud_tmp==96 || baud_tmp==192 || baud_tmp==384 || baud_tmp==576 || baud_tmp==1152) {
	cjne	r6,#0x60,00464$
	cjne	r7,#0x00,00464$
	sjmp	00170$
00464$:
	cjne	r6,#0xC0,00465$
	cjne	r7,#0x00,00465$
	sjmp	00170$
00465$:
	cjne	r6,#0x80,00466$
	cjne	r7,#0x01,00466$
	sjmp	00170$
00466$:
	cjne	r6,#0x40,00467$
	cjne	r7,#0x02,00467$
	sjmp	00170$
00467$:
	cjne	r6,#0x80,00171$
	cjne	r7,#0x04,00171$
00170$:
;	../fb_rs.c:179: send_ok();//rs_send_s("OK\n");
	push	ar7
	push	ar6
	push	bits
	lcall	_send_ok
	pop	bits
	pop	ar6
	pop	ar7
;	../fb_rs.c:180: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:181: while (!write_ok) {
	mov	ar5,r7
00164$:
	jb	_write_ok,00167$
;	../fb_rs.c:182: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:183: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:184: FMADRL = 0xFE;
	mov	_FMADRL,#0xFE
;	../fb_rs.c:185: FMDATA = baud_tmp;		// LSB
	mov	_FMDATA,r6
;	../fb_rs.c:186: FMDATA = baud_tmp>>8;	// MSB
	mov	_FMDATA,r5
;	../fb_rs.c:187: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:188: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00164$
	setb	_write_ok
;	../fb_rs.c:190: while(!TI);
	sjmp	00164$
00167$:
	jnb	_SCON_1,00167$
;	../fb_rs.c:191: rs_init(baud_tmp);
	mov	dpl,r6
	mov	dph,r7
	push	bits
	lcall	_rs_init
	pop	bits
	sjmp	00181$
00171$:
;	../fb_rs.c:194: rs_send_s("error: unknown baudrate!\n");
	mov	dptr,#__str_4
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
00181$:
;	../fb_rs.c:202: if(rsin[2]=='r') {	// r=read
	mov	a,#0x72
	cjne	a,(_rsin + 0x0002),00473$
	sjmp	00474$
00473$:
	ljmp	00197$
00474$:
;	../fb_rs.c:205: if(rsin[3]=='p' && rsin[4]=='a')
	mov	a,#0x70
	cjne	a,(_rsin + 0x0003),00183$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00183$
;	../fb_rs.c:207: rs_send_dec(pa_h>>4);
	mov	dptr,#_pa_h
	clr	a
	movc	a,@a+dptr
	swap	a
	anl	a,#0x0F
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:208: rs_send('.');
	mov	dpl,#0x2E
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:209: rs_send_dec(pa_h&0x0F);
	mov	dptr,#_pa_h
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	anl	ar7,#0x0F
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:210: rs_send('.');
	mov	dpl,#0x2E
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:211: rs_send_dec(pa_l);
	mov	dptr,#_pa_l
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:212: rs_send(0x0D);
	mov	dpl,#0x0D
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:213: rs_send(0x0A);
	mov	dpl,#0x0A
	push	bits
	lcall	_rs_send
	pop	bits
00183$:
;	../fb_rs.c:217: if(rsin[3]=='g' && rsin[4]=='a') {
	mov	a,#0x67
	cjne	a,(_rsin + 0x0003),00191$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00191$
;	../fb_rs.c:218: groupadr=convert_adr(5);
	mov	dpl,#0x05
	push	bits
	lcall	_convert_adr
	mov	_groupadr,dpl
	mov	(_groupadr + 1),dph
	pop	bits
;	../fb_rs.c:219: n=0;
	mov	r7,#0x00
;	../fb_rs.c:220: value=0xFFFF;
	mov	r5,#0xFF
	mov	r6,#0xFF
;	../fb_rs.c:221: do {								// Wert der GA aus Flash lesen
00187$:
;	../fb_rs.c:222: if(ga_db[n].ga==groupadr) {
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r4,a
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r2
	cjne	a,_groupadr,00186$
	mov	a,r3
	cjne	a,(_groupadr + 1),00186$
;	../fb_rs.c:223: value=ga_db[n].val;
	mov	r3,#(_ga_db >> 8)
	mov	dpl,r4
	mov	dph,r3
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	ar5,r3
	mov	ar6,r4
;	../fb_rs.c:224: n=255;
	mov	r7,#0xFF
00186$:
;	../fb_rs.c:226: n++;
	inc	r7
;	../fb_rs.c:227: }while (n>0);
	mov	a,r7
	jnz	00187$
;	../fb_rs.c:228: rs_send_dec(value);
	mov	dpl,r5
	mov	dph,r6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:229: rs_send(13);
	mov	dpl,#0x0D
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:230: rs_send(10);
	mov	dpl,#0x0A
	push	bits
	lcall	_rs_send
	pop	bits
00191$:
;	../fb_rs.c:234: if(rsin[3]=='v' && rsin[4]=='a') {
	mov	a,#0x76
	cjne	a,(_rsin + 0x0003),00197$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0004),00197$
;	../fb_rs.c:235: send_obj_value(16);
	mov	dpl,#0x10
	lcall	_send_obj_value
;	../fb_rs.c:236: busy=1;
	setb	b0
00197$:
;	../fb_rs.c:239: if(rsin[2]=='k'&& rsin[3]=='a'){// kill all
	mov	a,#0x6B
	cjne	a,(_rsin + 0x0002),00207$
	mov	a,#0x61
	cjne	a,(_rsin + 0x0003),00207$
;	../fb_rs.c:240: set_filtermode('0');
	mov	dpl,#0x30
	push	bits
	lcall	_set_filtermode
	pop	bits
;	../fb_rs.c:242: do {								// GA Tabelle löschen
	mov	r7,#0x00
00203$:
;	../fb_rs.c:243: write_ok=0; 
	clr	_write_ok
;	../fb_rs.c:244: while (!write_ok) {
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
00200$:
	jb	_write_ok,00202$
;	../fb_rs.c:245: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:246: FMADRH = 0x1D;//(n >> 6) + 0x1D;
	mov	_FMADRH,#0x1D
;	../fb_rs.c:247: FMADRL = n*4;//((n & 0x3F) * 4);
	mov	_FMADRL,r6
;	../fb_rs.c:248: FMDATA=0xFF;					// High Byte GA schreiben
	mov	_FMDATA,#0xFF
;	../fb_rs.c:249: FMDATA=0xFF;					// Low Byte GA schreiben
	mov	_FMDATA,#0xFF
;	../fb_rs.c:250: FMDATA=0xFF;					// Wert
	mov	_FMDATA,#0xFF
;	../fb_rs.c:251: FMDATA=0xFF;
	mov	_FMDATA,#0xFF
;	../fb_rs.c:252: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:253: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00200$
	setb	_write_ok
	sjmp	00200$
00202$:
;	../fb_rs.c:255: n++;
	inc	r7
;	../fb_rs.c:256: }while(n<=62);
	mov	a,r7
	add	a,#0xff - 0x3E
	jnc	00203$
;	../fb_rs.c:257: send_ok();//rs_send_s("OK\n");
	push	bits
	lcall	_send_ok
	pop	bits
00207$:
;	../fb_rs.c:259: if(rsin[2]=='d' && rsin[3]=='u'  && rsinpos==7) {
	mov	a,#0x64
	cjne	a,(_rsin + 0x0002),00497$
	sjmp	00498$
00497$:
	ljmp	00213$
00498$:
	mov	a,#0x75
	cjne	a,(_rsin + 0x0003),00499$
	sjmp	00500$
00499$:
	ljmp	00213$
00500$:
	mov	a,#0x07
	cjne	a,_rsinpos,00501$
	sjmp	00502$
00501$:
	ljmp	00213$
00502$:
;	../fb_rs.c:261: while(n<=61) {
	mov	r7,#0x00
00209$:
	mov	a,r7
	add	a,#0xff - 0x3D
	jnc	00503$
	ljmp	00213$
00503$:
;	../fb_rs.c:262: rs_send_hex(n);
	mov	dpl,r7
	push	ar7
	push	bits
	lcall	_rs_send_hex
	pop	bits
;	../fb_rs.c:263: rs_send(':');
	mov	dpl,#0x3A
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:264: rs_send(' ');
	mov	dpl,#0x20
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar7
;	../fb_rs.c:265: rs_send_hex_i(ga_db[n].ga);
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	bits
	lcall	_rs_send_hex_i
	pop	bits
;	../fb_rs.c:266: rs_send(' ');
	mov	dpl,#0x20
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar6
;	../fb_rs.c:267: rs_send_hex_i(ga_db[n].val);
	mov	r5,#(_ga_db >> 8)
	mov	dpl,r6
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	bits
	lcall	_rs_send_hex_i
	pop	bits
;	../fb_rs.c:268: rs_send(13);
	mov	dpl,#0x0D
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:269: rs_send(10);
	mov	dpl,#0x0A
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar7
;	../fb_rs.c:270: n++;
	inc	r7
	ljmp	00209$
00213$:
;	../fb_rs.c:275: if(rsin[2]=='l' && rsin[3]=='i'  && rsinpos==7) {
	mov	a,#0x6C
	cjne	a,(_rsin + 0x0002),00504$
	sjmp	00505$
00504$:
	ljmp	00221$
00505$:
	mov	a,#0x69
	cjne	a,(_rsin + 0x0003),00506$
	sjmp	00507$
00506$:
	ljmp	00221$
00507$:
	mov	a,#0x07
	cjne	a,_rsinpos,00508$
	sjmp	00509$
00508$:
	ljmp	00221$
00509$:
;	../fb_rs.c:277: while(n<=61&& ga_db[n].ga<0xFFFF) {
	mov	r7,#0x00
00217$:
	mov	a,r7
	add	a,#0xff - 0x3D
	jnc	00510$
	ljmp	00219$
00510$:
	mov	a,r7
	add	a,r7
	add	a,acc
	mov	r6,a
	mov	dpl,a
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0xFF
	mov	a,r5
	subb	a,#0xFF
	jc	00511$
	ljmp	00219$
00511$:
;	../fb_rs.c:278: rs_send_dec(((ga_db[n].ga)>>11)&0x0F);
	mov	dpl,r6
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	swap	a
	rl	a
	anl	a,#0x1F
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov	dpl,a
	mov	dph,#0x00
	push	ar7
	push	ar6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:279: rs_send('/');
	mov	dpl,#0x2F
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar6
;	../fb_rs.c:280: rs_send_dec(((ga_db[n].ga)>>8)&0x07);
	mov	dpl,r6
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x07
	anl	a,r4
	mov	dpl,a
	mov	dph,#0x00
	push	ar6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:281: rs_send('/');
	mov	dpl,#0x2F
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar6
;	../fb_rs.c:282: rs_send_dec((ga_db[n].ga)&0xFF);
	mov	dpl,r6
	mov	dph,#(_ga_db >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,#0x00
	push	ar6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:283: rs_send_s("= hex");
	mov	dptr,#__str_5
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar6
;	../fb_rs.c:284: rs_send_hex_i(ga_db[n].val);
	mov	ar4,r6
	mov	r5,#(_ga_db >> 8)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	ar6
	push	bits
	lcall	_rs_send_hex_i
	pop	bits
;	../fb_rs.c:285: rs_send_s(" dec ");
	mov	dptr,#__str_6
	mov	b,#0x80
	push	bits
	lcall	_rs_send_s
	pop	bits
	pop	ar6
;	../fb_rs.c:286: rs_send_dec(ga_db[n].val);
	mov	r5,#(_ga_db >> 8)
	mov	dpl,r6
	mov	dph,r5
	inc	dptr
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	push	bits
	lcall	_rs_send_dec
	pop	bits
;	../fb_rs.c:287: rs_send(13);
	mov	dpl,#0x0D
	push	bits
	lcall	_rs_send
	pop	bits
;	../fb_rs.c:288: rs_send(10);
	mov	dpl,#0x0A
	push	bits
	lcall	_rs_send
	pop	bits
	pop	ar7
;	../fb_rs.c:289: n++;
	inc	r7
	ljmp	00217$
00219$:
;	../fb_rs.c:291: send_ok();//rs_send_s("OK\n");
	push	bits
	lcall	_send_ok
	pop	bits
00221$:
;	../fb_rs.c:293: if(rsin[2]=='f'&& rsin[3]=='m'){// filter mode 1/0
	mov	a,#0x66
	cjne	a,(_rsin + 0x0002),00225$
	mov	a,#0x6D
	cjne	a,(_rsin + 0x0003),00225$
;	../fb_rs.c:294: set_filtermode(rsin[5]);
	mov	dpl,(_rsin + 0x0005)
	push	bits
	lcall	_set_filtermode
	pop	bits
;	../fb_rs.c:295: send_ok();//rs_send_s("OK\n");
	push	bits
	lcall	_send_ok
	pop	bits
00225$:
;	../fb_rs.c:298: if(rsin[2]=='e' && rsin[3]=='c' && rsin[4]=='h' && rsin[5]=='o' && rsin[6]=='=' && rsinpos==9) {
	mov	a,#0x65
	cjne	a,(_rsin + 0x0002),00243$
	mov	a,#0x63
	cjne	a,(_rsin + 0x0003),00243$
	mov	a,#0x68
	cjne	a,(_rsin + 0x0004),00243$
	mov	a,#0x6F
	cjne	a,(_rsin + 0x0005),00243$
	mov	a,#0x3D
	cjne	a,(_rsin + 0x0006),00243$
	mov	a,#0x09
	cjne	a,_rsinpos,00243$
;	../fb_rs.c:299: write_ok=0;
	clr	_write_ok
;	../fb_rs.c:300: while (!write_ok) {
00232$:
	jb	_write_ok,00234$
;	../fb_rs.c:301: START_WRITECYCLE
	mov	_FMCON,#0x00
;	../fb_rs.c:302: FMADRH = 0x1C;
	mov	_FMADRH,#0x1C
;	../fb_rs.c:303: FMADRL = 0xFD;
	mov	_FMADRL,#0xFD
;	../fb_rs.c:304: if(rsin[7]=='0') FMDATA=0; else FMDATA=1;
	mov	a,#0x30
	cjne	a,(_rsin + 0x0007),00228$
	mov	_FMDATA,#0x00
	sjmp	00229$
00228$:
	mov	_FMDATA,#0x01
00229$:
;	../fb_rs.c:305: STOP_WRITECYCLE
	mov	_FMCON,#0x68
;	../fb_rs.c:306: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00232$
	setb	_write_ok
	sjmp	00232$
00234$:
;	../fb_rs.c:308: send_ok();
	push	bits
	lcall	_send_ok
	pop	bits
00243$:
;	../fb_rs.c:312: if(!busy){// wenn nichts zu senden ist den Empfangspuffer löschen
	jb	b0,00248$
;	../fb_rs.c:313: for(n=0;n<30;n++) rsin[n]=0x00;
	mov	r7,#0x00
00265$:
	cjne	r7,#0x1E,00533$
00533$:
	jnc	00268$
	mov	a,r7
	add	a,#_rsin
	mov	r0,a
	mov	@r0,#0x00
	inc	r7
	sjmp	00265$
00268$:
;	../fb_rs.c:314: rsinpos=0;
	mov	_rsinpos,#0x00
00248$:
;	../fb_rs.c:318: if(tel_sent && fb_state==0 && (TH1<0XC0) && (!wait_for_ack))//wenn tele gesendet ist
	jnb	_tel_sent,00252$
	mov	a,_fb_state
	jnz	00252$
	mov	a,#0x100 - 0xC0
	add	a,_TH1
	jc	00252$
	jb	_wait_for_ack,00252$
;	../fb_rs.c:320: process_tel();
	lcall	_process_tel
;	../fb_rs.c:321: tel_sent=0;
	clr	_tel_sent
;	../fb_rs.c:322: for(n=0;n<30;n++) rsin[n]=0x00;
	mov	r7,#0x00
00269$:
	cjne	r7,#0x1E,00539$
00539$:
	jnc	00272$
	mov	a,r7
	add	a,#_rsin
	mov	r0,a
	mov	@r0,#0x00
	inc	r7
	sjmp	00269$
00272$:
;	../fb_rs.c:323: rsinpos=0;
	mov	_rsinpos,#0x00
;	../fb_rs.c:324: busy=0;
	clr	b0
;	../fb_rs.c:325: send_ok();//rs_send_s("OK\n");
	push	bits
	lcall	_send_ok
	pop	bits
00252$:
;	../fb_rs.c:327: if (tel_arrived ){//&& fb_state==13 //|| (tel_sent&& (telegramm[0]&0x20))
	jb	_tel_arrived,00541$
	ljmp	00258$
00541$:
;	../fb_rs.c:328: process_tel();
	push	bits
	lcall	_process_tel
	pop	bits
;	../fb_rs.c:330: } while(1);
	ljmp	00258$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "Kubi's RS-interface V2.01 "
	.db 0x00
__str_1:
	.ascii "1152"
	.db 0x00
__str_2:
	.ascii "00 Baud."
	.db 0x0A
	.db 0x00
__str_3:
	.ascii "filtered"
	.db 0x0A
	.db 0x00
__str_4:
	.ascii "error: unknown baudrate!"
	.db 0x0A
	.db 0x00
__str_5:
	.ascii "= hex"
	.db 0x00
__str_6:
	.ascii " dec "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
