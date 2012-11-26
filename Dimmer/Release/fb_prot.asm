;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
; This file was generated Sun Aug 14 13:44:19 2011
;--------------------------------------------------------
	.module fb_prot
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
	.globl _con_timer_refresh
	.globl _transparency
	.globl _connected
	.globl _last_tel
	.globl _pcount
	.globl _conl
	.globl _conh
	.globl _timer1
	.globl _get_ack
	.globl _send_telegramm
	.globl _send_ack
	.globl _send_nack
	.globl _T_Disconnect
	.globl _ncd_quit
	.globl _read_masq
	.globl _read_memory
	.globl _write_memory
	.globl _set_pa
	.globl _read_pa
	.globl _read_objflags
	.globl _find_ga
	.globl _gapos_in_gat
	.globl _find_first_objno
	.globl _read_obj_value
	.globl _read_obj_type
	.globl _write_obj_value
	.globl _restart_prot
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
_last_tel::
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
_connected::
	.ds 1
_transparency::
	.ds 1
_con_timer_refresh::
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
;Allocation info for local variables in function 'timer1'
;------------------------------------------------------------
;tpdu                      Allocated to registers r2 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:64: void timer1(void) interrupt 3
;	-----------------------------------------
;	 function timer1
;	-----------------------------------------
_timer1:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
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
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:69: EX1=0;					// ext. Interrupt stoppen 
	clr	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:70: ET1=0;					// Interrupt von Timer 1 sperren
	clr	_IEN0_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:71: set_timer1(4720);		// 4720 und neu starten fuer korrekte Positionierung des ACK Bytes
	mov	dptr,#0x1270
	lcall	_set_timer1
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:77: if(cs==0xff) {			// Checksum des Telegramms ist OK
	mov	a,#0xFF
	cjne	a,_cs,00189$
	sjmp	00190$
00189$:
	ljmp	00152$
00190$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:78: if (transparency) last_tel=telpos;
	jnb	_transparency,00147$
	mov	_last_tel,_telpos
	ljmp	00153$
00147$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:81: tpdu=telegramm[6]&0xC3;
	mov	a,#0xC3
	anl	a,(_telegramm + 0x0006)
	mov	r2,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:85: if(telegramm[3]==0 && telegramm[4]==0) {		
	mov	a,(_telegramm + 0x0003)
	mov	r3,a
	jnz	00143$
	mov	a,(_telegramm + 0x0004)
	jnz	00143$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:87: if(userram[0x60] & 0x01) {		// prog mode
	mov	dptr,#(_userram + 0x0060)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	jb	acc.0,00194$
	ljmp	00153$
00194$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:88: if(tpdu==0x00 && telegramm[7]==0xC0) set_pa();	// set_pa_req
	mov	a,r2
	jnz	00102$
	mov	a,#0xC0
	cjne	a,(_telegramm + 0x0007),00102$
	push	ar2
	lcall	_set_pa
	pop	ar2
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:89: if(tpdu==0x01 && telegramm[7]==0x00) read_pa();	// read_pa_req
	cjne	r2,#0x01,00198$
	sjmp	00199$
00198$:
	ljmp	00153$
00199$:
	mov	a,(_telegramm + 0x0007)
	jz	00200$
	ljmp	00153$
00200$:
	lcall	_read_pa
	ljmp	00153$
00143$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:96: if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag = Bit 7, 0=phys. Adr., 1=Gruppenadr.														
	mov	a,(_telegramm + 0x0005)
	jnb	acc.7,00201$
	ljmp	00140$
00201$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:97: if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) {	// nur wenn es die eigene phys. Adr. ist
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r3
	cjne	a,ar4,00202$
	sjmp	00203$
00202$:
	ljmp	00153$
00203$:
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	cjne	a,(_telegramm + 0x0004),00204$
	sjmp	00205$
00204$:
	ljmp	00153$
00205$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:101: switch (tpdu) {	// transport layer control field
	cjne	r2,#0x42,00206$
	sjmp	00109$
00206$:
	cjne	r2,#0x43,00207$
	sjmp	00114$
00207$:
	cjne	r2,#0x80,00208$
	sjmp	00119$
00208$:
	cjne	r2,#0x81,00209$
	sjmp	00122$
00209$:
	cjne	r2,#0xC2,00210$
	ljmp	00127$
00210$:
	cjne	r2,#0xC3,00211$
	ljmp	00128$
00211$:
	ljmp	00153$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:103: case 0x42:	// Data PDU - memory operations
00109$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:104: con_timer_refresh=1; // connect timeout auffrischen
	setb	_con_timer_refresh
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:105: if((telegramm[7]&0xC0)==0x80) write_memory();	// write_memory_request	
	mov	a,#0xC0
	anl	a,(_telegramm + 0x0007)
	mov	r3,a
	cjne	r3,#0x80,00111$
	lcall	_write_memory
00111$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:106: if((telegramm[7]&0xC0)==0x00) read_memory();	// read_memory_request
	mov	a,(_telegramm + 0x0007)
	anl	a,#0xC0
	jz	00215$
	ljmp	00153$
00215$:
	lcall	_read_memory
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:107: break;
	ljmp	00153$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:109: case 0x43:	// Data PDU - misc.
00114$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:110: con_timer_refresh=1; // connect timeout auffrischen
	setb	_con_timer_refresh
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:111: if(telegramm[7]==0x80) {	// restart request
	mov	a,#0x80
	cjne	a,(_telegramm + 0x0007),00116$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:112: restart_hw();			// Hardware zuruecksetzen
	lcall	_restart_hw
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:113: restart_prot();			// Protokoll-relevante Parameter zuruecksetzen
	lcall	_restart_prot
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:114: restart_app();			// Anwendungsspezifische Einstellungen zuruecksetzen
	lcall	_restart_app
00116$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:116: if(telegramm[7]==0x00) read_masq();		// read_mask_version_request
	mov	a,(_telegramm + 0x0007)
	jnz	00153$
	lcall	_read_masq
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:117: break;
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:119: case 0x80:	// UCD Verbindungsaufbau
	sjmp	00153$
00119$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:120: if(!connected) {		// wenn bereits verbunden: ignorieren
	jb	_connected,00153$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:121: con_timer_refresh=1; // connect timeout auffrischen
	setb	_con_timer_refresh
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:122: connected=1;
	setb	_connected
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:123: conh=telegramm[1];	// phys. Adresse des Verbindungspartners
	mov	_conh,(_telegramm + 0x0001)
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:124: conl=telegramm[2];
	mov	_conl,(_telegramm + 0x0002)
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:125: send_ack();			// quittieren
	lcall	_send_ack
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:126: pcount=1;			// Paketzaehler zuruecksetzen
	mov	_pcount,#0x01
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:128: break;
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:130: case 0x81:	// UCD Verbindungsabbau
	sjmp	00153$
00122$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:131: if(conh==telegramm[1] && conl==telegramm[2] && connected)	{	// nur abbauen, wenn verbunden und Anforderung vom Verbindungspartner, kein ACK senden
	mov	a,(_telegramm + 0x0001)
	cjne	a,_conh,00153$
	mov	a,(_telegramm + 0x0002)
	cjne	a,_conl,00153$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:132: connected=0;
	jbc	_connected,00224$
	sjmp	00153$
00224$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:133: pcount=1;			// Paketzaehler zuruecksetzen
	mov	_pcount,#0x01
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:135: break;
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:137: case 0xC2:	// ACK PDU
	sjmp	00153$
00127$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:138: send_ack();				// auf NCD_Quittierung mit ACK antworten
	lcall	_send_ack
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:139: break;
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:141: case 0xC3:	// NACK PDU
	sjmp	00153$
00128$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:142: send_ack();
	lcall	_send_ack
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:143: }
	sjmp	00153$
00140$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:150: if(tpdu==0x00){
	mov	a,r2
	jnz	00153$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:151: if((telegramm[7]&0xC0)==0x80) write_value_req();	// Objektwerte schreiben (zB. EISx)
	mov	a,#0xC0
	anl	a,(_telegramm + 0x0007)
	mov	r2,a
	cjne	r2,#0x80,00134$
	lcall	_write_value_req
00134$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:152: if(telegramm[7]==0x00) read_value_req();			// Objektwert lesen und als read_value_response auf Bus senden
	mov	a,(_telegramm + 0x0007)
	jnz	00153$
	lcall	_read_value_req
	sjmp	00153$
00152$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:161: if(telpos>1) send_nack();	// falls checksum nicht ok war, nack senden
	mov	a,_telpos
	add	a,#0xff - 0x01
	jnc	00153$
	lcall	_send_nack
00153$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:163: telpos=0;  
	mov	_telpos,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:164: IE1=0;					// IRQ Flag zuruecksetzen
	clr	_TCON_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:165: EX1=1;					// externen Interrupt 0 wieder freigeben
	setb	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:166: if (!transparency) {	// Telegramm abgearbeitet
	jb	_transparency,00156$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:167: TR1=0;				// Timer 1 stoppen
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:168: cs=0;				// cheksum zurï¿½cksetzen
	mov	_cs,#0x00
00156$:
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
;Allocation info for local variables in function 'get_ack'
;------------------------------------------------------------
;ret                       Allocated to registers b0 
;n                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:180: bit get_ack(void)
;	-----------------------------------------
;	 function get_ack
;	-----------------------------------------
_get_ack:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:185: n=0;
	mov	r2,#0x00
	mov	r3,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:186: ret=0;
	clr	b0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:187: do {
00107$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:188: if(FBINC) n++;
	jnb	_P1_4,00105$
	inc	r2
	cjne	r2,#0x00,00108$
	inc	r3
	sjmp	00108$
00105$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:190: if (get_byte()==0xCC && parity_ok) {
	push	ar2
	push	ar3
	push	bits
	lcall	_get_byte
	mov	r4,dpl
	pop	bits
	pop	ar3
	pop	ar2
	cjne	r4,#0xCC,00108$
	jnb	_parity_ok,00108$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:191: ret=1;
	setb	b0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:192: n=3000;
	mov	r2,#0xB8
	mov	r3,#0x0B
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:195: } while (n<3000);
	clr	c
	mov	a,r2
	subb	a,#0xB8
	mov	a,r3
	subb	a,#0x0B
	jc	00107$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:196: return(ret);
	mov	c,b0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_telegramm'
;------------------------------------------------------------
;data_laenge               Allocated to stack - offset 1
;l                         Allocated to registers r5 
;checksum                  Allocated to registers r3 
;r                         Allocated to registers r2 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:207: void send_telegramm(void)
;	-----------------------------------------
;	 function send_telegramm
;	-----------------------------------------
_send_telegramm:
	push	_bp
	mov	_bp,sp
	inc	sp
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:210: r=0;
	mov	r2,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:211: do
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:213: checksum=0;
	mov	r3,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:214: data_laenge=telegramm[5]&0x0F;	// Telegramm-Laenge = Bit 0 bis 3
	mov	r0,_bp
	inc	r0
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	mov	@r0,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:216: set_timer1(18780);			// Warten bis Bus frei ist
	mov	dptr,#0x495C
	push	ar2
	push	ar3
	lcall	_set_timer1
	pop	ar3
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:217: while(!TF1) {
00103$:
	jb	_TCON_7,00105$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:218: if(!FBINC) set_timer1(18780);
	jb	_P1_4,00103$
	mov	dptr,#0x495C
	push	ar2
	push	ar3
	lcall	_set_timer1
	pop	ar3
	pop	ar2
	sjmp	00103$
00105$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:220: TR1=0;
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:222: for(l=0;l<=data_laenge+6;l++)
	mov	r5,#0x00
00111$:
	push	ar2
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,#0x06
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	ar2,r5
	mov	r4,#0x00
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	pop	ar2
	jc	00114$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:224: sendbyte(telegramm[l]);
	mov	a,r5
	add	a,#_telegramm
	mov	r0,a
	mov	dpl,@r0
	push	ar2
	push	ar3
	push	ar5
	lcall	_sendbyte
	pop	ar5
	pop	ar3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:225: checksum^=telegramm[l];
	mov	a,r5
	add	a,#_telegramm
	mov	r0,a
	mov	a,@r0
	xrl	ar3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:226: sysdelay(1230);			// Interbyte-Abstand
	mov	dptr,#0x04CE
	push	ar3
	push	ar5
	lcall	_sysdelay
	pop	ar5
	pop	ar3
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:222: for(l=0;l<=data_laenge+6;l++)
	inc	r5
	sjmp	00111$
00114$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:228: checksum=~checksum;
	mov	a,r3
	cpl	a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:229: sendbyte(checksum);
	mov	dpl,a
	push	ar2
	lcall	_sendbyte
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:230: if(get_ack()) r=3;		// wenn ACK empfangen, dann nicht nochmal senden
	lcall	_get_ack
	pop	ar2
	jnc	00107$
	mov	r2,#0x03
00107$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:231: r++;
	inc	r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:232: telegramm[0]&=0xDF;			// Bit 5 loeschen = Wiederholung
	mov	a,#0xDF
	anl	a,_telegramm
	mov	_telegramm,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:234: while(r<=3); 				// falls kein ACK max. 3 Mal wiederholen
	mov	a,r2
	add	a,#0xff - 0x03
	jc	00129$
	ljmp	00108$
00129$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_ack'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:247: void send_ack(void)
;	-----------------------------------------
;	 function send_ack
;	-----------------------------------------
_send_ack:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:249: while(!TF1&&TR1);
00102$:
	jb	_TCON_7,00104$
	jb	_TCON_6,00102$
00104$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:250: sendbyte(0xCC);
	mov	dpl,#0xCC
	lcall	_sendbyte
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:251: TR1=0;
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:252: TF1=0;
	clr	_TCON_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:253: ET1=0;
	clr	_IEN0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_nack'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:264: void send_nack(void)
;	-----------------------------------------
;	 function send_nack
;	-----------------------------------------
_send_nack:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:266: while(!TF1&&TR1);
00102$:
	jb	_TCON_7,00104$
	jb	_TCON_6,00102$
00104$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:267: sendbyte(0x0C);
	mov	dpl,#0x0C
	lcall	_sendbyte
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:268: TR1=0;
	clr	_TCON_6
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:269: TF1=0;
	clr	_TCON_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:270: ET1=0;
	clr	_IEN0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T_Disconnect'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:275: void T_Disconnect(void)
;	-----------------------------------------
;	 function T_Disconnect
;	-----------------------------------------
_T_Disconnect:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:277: EX1=0;
	clr	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:278: telegramm[0]=0xB0;			// Control Byte			
	mov	_telegramm,#0xB0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:279: telegramm[1]=eeprom[ADDRTAB+1];			// Quelladresse ist phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	(_telegramm + 0x0001),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:280: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	(_telegramm + 0x0002),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:281: telegramm[3]=conh;		// Zieladresse ist Quelladresse vom Aufbau
	mov	(_telegramm + 0x0003),_conh
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:282: telegramm[4]=conl;
	mov	(_telegramm + 0x0004),_conl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:283: telegramm[5]=0x60;			// DRL
	mov	(_telegramm + 0x0005),#0x60
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:284: telegramm[6]=0x81;			// 
	mov	(_telegramm + 0x0006),#0x81
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:285: send_telegramm();
	lcall	_send_telegramm
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:286: IE1=0;
	clr	_TCON_3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:287: EX1=1;
	setb	_IEN0_2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:288: connected=0;
	clr	_connected
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ncd_quit'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:297: void ncd_quit(void)
;	-----------------------------------------
;	 function ncd_quit
;	-----------------------------------------
_ncd_quit:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:299: telegramm[0]=0xB0;			// Control Byte			
	mov	_telegramm,#0xB0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:300: telegramm[3]=telegramm[1];		// Zieladresse wird Quelladresse
	mov	r2,(_telegramm + 0x0001)
	mov	(_telegramm + 0x0003),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:301: telegramm[4]=telegramm[2];
	mov	r2,(_telegramm + 0x0002)
	mov	(_telegramm + 0x0004),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:302: telegramm[1]=eeprom[ADDRTAB+1];			// Quelladresse ist phys. Adresse
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	(_telegramm + 0x0001),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:303: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	(_telegramm + 0x0002),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:304: telegramm[5]=0x60;			// DRL
	mov	(_telegramm + 0x0005),#0x60
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:305: telegramm[6]|=0xC0;			// Bit 6 und 7 setzen (TCPI = 11 NCD Quittierung)
	mov	a,#0xC0
	orl	a,(_telegramm + 0x0006)
	mov	r2,a
	mov	(_telegramm + 0x0006),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:306: telegramm[6]&=0xFE;			// Bit 0 loeschen 
	mov	a,#0xFE
	anl	a,r2
	mov	(_telegramm + 0x0006),a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:307: send_telegramm();
	ljmp	_send_telegramm
;------------------------------------------------------------
;Allocation info for local variables in function 'read_masq'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:318: void read_masq(void)
;	-----------------------------------------
;	 function read_masq
;	-----------------------------------------
_read_masq:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:322: send_ack();
	lcall	_send_ack
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:323: ncd_quit();				// NCD Quittierung senden
	lcall	_ncd_quit
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:325: telegramm[0]=0xB0;			// Control Byte
	mov	_telegramm,#0xB0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:327: telegramm[5]=0x63;			// DRL
	mov	(_telegramm + 0x0005),#0x63
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:328: telegramm[6]=0x43;
	mov	(_telegramm + 0x0006),#0x43
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:329: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:330: telegramm[8]=0x00;
	mov	(_telegramm + 0x0008),#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:331: telegramm[9]=0x12;			// Maskenversion 1 = BCU1
	mov	(_telegramm + 0x0009),#0x12
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:332: send_telegramm();
	ljmp	_send_telegramm
;------------------------------------------------------------
;Allocation info for local variables in function 'read_memory'
;------------------------------------------------------------
;ab                        Allocated to registers r2 
;n                         Allocated to registers r3 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:345: void read_memory(void)
;	-----------------------------------------
;	 function read_memory
;	-----------------------------------------
_read_memory:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:349: send_ack();					// erstmal ack senden
	lcall	_send_ack
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:350: ab=telegramm[7];			// Anzahl Bytes
	mov	r2,(_telegramm + 0x0007)
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:351: ncd_quit();					// quittieren
	push	ar2
	lcall	_ncd_quit
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:353: for(n=0;n<ab;n++) {
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	00107$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:354: if (telegramm[8]==0) telegramm[n+10]=userram[telegramm[9]+n];
	mov	a,(_telegramm + 0x0008)
	jnz	00102$
	mov	a,#0x0A
	add	a,r3
	add	a,#_telegramm
	mov	r0,a
	mov	a,r3
	add	a,(_telegramm + 0x0009)
	mov	dptr,#_userram
	movc	a,@a+dptr
	mov	r4,a
	mov	@r0,a
	sjmp	00106$
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:355: else telegramm[n+10]=eeprom[telegramm[9]+n];    
	mov	a,#0x0A
	add	a,r3
	add	a,#_telegramm
	mov	r0,a
	mov	a,r3
	add	a,(_telegramm + 0x0009)
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r4,a
	mov	@r0,a
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:353: for(n=0;n<ab;n++) {
	inc	r3
	sjmp	00104$
00107$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:358: telegramm[0]=0xB0;			// read_memory_res senden
	mov	_telegramm,#0xB0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:360: telegramm[5]=ab+0x63;		// DRL (Anzahl Bytes + 3)
	mov	a,#0x63
	add	a,r2
	mov	(_telegramm + 0x0005),a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:361: telegramm[6]=(pcount<<2)|0x42;	// Paketzaehler, TCPI und ersten beiden Befehlsbits
	mov	a,_pcount
	add	a,_pcount
	add	a,acc
	mov	r3,a
	mov	a,#0x42
	orl	a,r3
	mov	(_telegramm + 0x0006),a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:362: telegramm[7]=ab|0x40;		// letzten 2 Befehlsbits
	mov	a,#0x40
	orl	a,r2
	mov	(_telegramm + 0x0007),a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:363: send_telegramm();
	lcall	_send_telegramm
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:365: pcount++;					// Paketzï¿½hler erhoehen
	inc	_pcount
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:366: pcount&=0x0F;				// max. 15
	anl	_pcount,#0x0F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_memory'
;------------------------------------------------------------
;ab                        Allocated to registers r2 
;n                         Allocated to registers r5 
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:377: void write_memory(void)
;	-----------------------------------------
;	 function write_memory
;	-----------------------------------------
_write_memory:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:381: send_ack();
	lcall	_send_ack
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:382: ab=telegramm[7]&0x0F;		// Anzahl Bytes
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0007)
	mov	r2,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:383: ncd_quit();
	push	ar2
	lcall	_ncd_quit
	pop	ar2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:385: FMCON=0x00;					// load command, leert das pageregister
	mov	_FMCON,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:386: for(n=0;n<ab;n++) {
	mov	a,#0x01
	anl	a,(_telegramm + 0x0008)
	add	a,#0x1C
	mov	r3,a
	mov	r4,(_telegramm + 0x0009)
	mov	r5,#0x00
00104$:
	clr	c
	mov	a,r5
	subb	a,r2
	jnc	00107$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:389: WRITE_BYTE(telegramm[8],telegramm[9]+n,telegramm[n+10])
	mov	_FMADRH,r3
	mov	a,r5
	add	a,r4
	mov	_FMADRL,a
	mov	a,#0x0A
	add	a,r5
	add	a,#_telegramm
	mov	r0,a
	mov	_FMDATA,@r0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:391: if ((((telegramm[9]+n)&0x3F)==0x3F) && n!=(ab-1)) {		// Ende des 64-Byte Pageregisters, also zwischendurch flashen
	mov	ar6,r4
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	anl	ar6,#0x3F
	mov	r7,#0x00
	cjne	r6,#0x3F,00106$
	cjne	r7,#0x00,00106$
	mov	ar6,r2
	mov	r7,#0x00
	dec	r6
	cjne	r6,#0xff,00118$
	dec	r7
00118$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00119$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00119$
	sjmp	00106$
00119$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:392: STOP_WRITECYCLE			// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:393: START_WRITECYCLE		// load command, leert das pageregister
	mov	_FMCON,#0x00
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:386: for(n=0;n<ab;n++) {
	inc	r5
	sjmp	00104$
00107$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:396: FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_pa'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:408: void set_pa(void)
;	-----------------------------------------
;	 function set_pa
;	-----------------------------------------
_set_pa:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:410: EA=0;
	clr	_IEN0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:411: FMCON=0x00;				// load command, leert das pageregister
	mov	_FMCON,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:412: FMADRH=EEPROMADDRH;
	mov	_FMADRH,#0x1D
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:413: FMADRL=ADDRTAB+1;
	mov	_FMADRL,#0x17
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:414: FMDATA=telegramm[8];
	mov	_FMDATA,(_telegramm + 0x0008)
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:415: FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
	mov	_FMDATA,(_telegramm + 0x0009)
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:416: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:417: EA=1;
	setb	_IEN0_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_pa'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:428: void read_pa(void)
;	-----------------------------------------
;	 function read_pa
;	-----------------------------------------
_read_pa:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:430: send_ack();
	lcall	_send_ack
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:431: telegramm[0]=0xB0;				// read_memory_res senden
	mov	_telegramm,#0xB0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:432: telegramm[1]=eeprom[ADDRTAB+1];	// PA
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	(_telegramm + 0x0001),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:433: telegramm[2]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	(_telegramm + 0x0002),r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:434: telegramm[3]=0x00;
	mov	(_telegramm + 0x0003),#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:435: telegramm[4]=0x00;			
	mov	(_telegramm + 0x0004),#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:436: telegramm[5]=0xE1;				// DRL
	mov	(_telegramm + 0x0005),#0xE1
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:437: telegramm[6]=0x01;		
	mov	(_telegramm + 0x0006),#0x01
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:438: telegramm[7]=0x40;
	mov	(_telegramm + 0x0007),#0x40
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:439: send_telegramm();
	ljmp	_send_telegramm
;------------------------------------------------------------
;Allocation info for local variables in function 'read_objflags'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;ctp                       Allocated to registers r3 
;addr                      Allocated to registers 
;flags                     Allocated to registers 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:501: unsigned char read_objflags(unsigned char objno)
;	-----------------------------------------
;	 function read_objflags
;	-----------------------------------------
_read_objflags:
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:505: ctp=eeprom[COMMSTABPTR];		// COMMSTAB Pointer
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
	mov	r3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:506: addr=ctp+3+3*objno;
	inc	r3
	inc	r3
	inc	r3
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,r3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:507: flags=eeprom[addr];	// Objektflags
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:508: return(flags);
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_ga'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;asstab                    Allocated to registers r4 
;gapos                     Allocated to registers r3 
;gah                       Allocated to registers r2 
;gal                       Allocated to registers r3 
;ga                        Allocated to registers r3 r2 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:523: unsigned int find_ga(unsigned char objno)
;	-----------------------------------------
;	 function find_ga
;	-----------------------------------------
_find_ga:
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:528: gapos=0xFE;
	mov	r3,#0xFE
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:529: asstab=eeprom[ASSOCTABPTR];		// Adresse der Assoziationstabelle
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:531: if(eeprom[asstab+2+2*objno]==objno) gapos=eeprom[asstab+1+2*objno];
	mov	r4,a
	add	a,#0x02
	mov	r5,a
	mov	a,r2
	add	a,r2
	mov	r6,a
	add	a,r5
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	cjne	a,ar2,00102$
	mov	a,r4
	inc	a
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r2,a
	mov	r3,a
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:534: if(gapos!=0xFE) {
	cjne	r3,#0xFE,00112$
	sjmp	00104$
00112$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:536: gah=eeprom[ADDRTAB+1+gapos*2];
	mov	a,r3
	add	a,r3
	mov	r3,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r2,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:537: gal=eeprom[ADDRTAB+2+gapos*2];
	mov	a,#0x18
	add	a,r3
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:538: ga=gal+256*gah;
	mov	r4,#0x00
	mov	ar5,r2
	clr	a
	add	a,r3
	mov	r3,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	mov	r2,a
	sjmp	00105$
00104$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:541: else ga=0;
	mov	r3,#0x00
	mov	r2,#0x00
00105$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:543: return(ga);
	mov	dpl,r3
	mov	dph,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gapos_in_gat'
;------------------------------------------------------------
;gal                       Allocated to stack - offset -3
;gah                       Allocated to registers r2 
;ga_position               Allocated to registers r4 
;ga_count                  Allocated to registers r3 
;n                         Allocated to registers 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:559: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function gapos_in_gat
;	-----------------------------------------
_gapos_in_gat:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:563: ga_count=eeprom[ADDRTAB];		// Anzahl der Adressen in der Adresstabelle
	mov	dptr,#(_eeprom + 0x0016)
	clr	a
	movc	a,@a+dptr
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:564: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:565: if (ga_count) {
	mov	r3,a
	mov	r4,#0xFF
	jz	00105$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:566: for (n=1;n<=ga_count;n++) {
	mov	r5,#0x01
00106$:
	clr	c
	mov	a,r3
	subb	a,r5
	jc	00105$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:567: if (gah==eeprom[ADDRTAB+n*2+1] && gal==eeprom[ADDRTAB+n*2+2]) ga_position=n;	// Berechnung in [] nicht in lokale var !!! 
	mov	a,r5
	add	a,r5
	mov	r6,a
	add	a,#0x17
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r2
	cjne	a,ar7,00108$
	mov	a,#0x18
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	a,@r0
	cjne	a,ar6,00108$
	mov	ar4,r5
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:566: for (n=1;n<=ga_count;n++) {
	inc	r5
	sjmp	00106$
00105$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:570: return (ga_position);
	mov	dpl,r4
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_first_objno'
;------------------------------------------------------------
;gal                       Allocated to stack - offset -3
;gah                       Allocated to registers r2 
;gapos                     Allocated to registers r2 
;gaposh                    Allocated to registers r6 
;atp                       Allocated to registers r4 
;assmax                    Allocated to stack - offset 1
;n                         Allocated to registers r7 
;objno                     Allocated to registers r3 
;sloc0                     Allocated to stack - offset 8
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:584: unsigned char find_first_objno(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function find_first_objno
;	-----------------------------------------
_find_first_objno:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:588: objno=0xFF;
	mov	r3,#0xFF
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:589: gapos=gapos_in_gat(gah,gal);
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
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:591: atp=eeprom[ASSOCTABPTR];
	mov	dptr,#(_eeprom + 0x0011)
	clr	a
	movc	a,@a+dptr
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:592: assmax=eeprom[atp];
	mov	r4,a
	mov	dpl,a
	mov	dph,#(_eeprom >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:593: if (gapos!=0xFF) {	// falls Gruppenadresse nicht vorhanden
	cjne	r2,#0xFF,00117$
	sjmp	00108$
00117$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:595: while(objno==0xFF && n<assmax) {	// Schleife ueber Assoziationstabelle
	mov	a,#0x02
	add	a,r4
	mov	r6,a
	inc	r4
	mov	r7,#0x00
00104$:
	cjne	r3,#0xFF,00108$
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,r7
	subb	a,@r0
	jnc	00108$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:596: gaposh=eeprom[atp+1+(n*2)];
	push	ar6
	mov	a,r7
	add	a,r7
	mov	r5,a
	add	a,r4
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r6,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:597: if(gapos==gaposh) objno=eeprom[atp+2+(n*2)];
	mov	a,r2
	cjne	a,ar6,00121$
	mov	a,#0x01
	sjmp	00122$
00121$:
	clr	a
00122$:
	pop	ar6
	jz	00102$
	mov	a,r5
	add	a,r6
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	r3,a
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:598: n++;
	inc	r7
	sjmp	00104$
00108$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:601: return (objno);
	mov	dpl,r3
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;valuepointer              Allocated to registers r2 
;offset                    Allocated to registers r5 
;commstab                  Allocated to registers r6 
;objtype                   Allocated to registers r7 
;objvalue                  Allocated to registers r3 r4 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:613: unsigned int read_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function read_obj_value
;	-----------------------------------------
_read_obj_value:
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:618: objvalue=0xFFFF;
	mov	r3,#0xFF
	mov	r4,#0xFF
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:619: offset=objno*3;
	mov	a,r2
	mov	b,#0x03
	mul	ab
	mov	r5,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:620: commstab=eeprom[COMMSTABPTR];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:621: objtype=eeprom[commstab+offset+4];
	mov	r6,a
	add	a,r5
	add	a,#0x04+_eeprom
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:623: if (objno <= commstab) {	// wenn objno <= anzahl objekte
	clr	c
	mov	a,r6
	subb	a,r2
	jc	00106$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:624: valuepointer=eeprom[commstab+offset+2];
	mov	a,r5
	add	a,r6
	add	a,#0x02+_eeprom
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:625: if (objtype < 8 ) objvalue=userram[valuepointer];
	cjne	r7,#0x08,00113$
00113$:
	jnc	00102$
	mov	dpl,r2
	mov	dph,#(_userram >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r3,a
	mov	r4,#0x00
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:626: if (objtype == 8) objvalue=256*userram[valuepointer] + userram[valuepointer+1];
	cjne	r7,#0x08,00106$
	mov	dpl,r2
	mov	dph,#(_userram >> 8)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	a,r2
	inc	a
	mov	dptr,#_userram
	movc	a,@a+dptr
	mov	r2,a
	mov	r7,#0x00
	add	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	ar3,r5
	mov	ar4,r6
00106$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:628: return(objvalue);
	mov	dpl,r3
	mov	dph,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_type'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;commstab                  Allocated to registers r4 
;objtype                   Allocated to registers r3 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:640: unsigned char read_obj_type(unsigned char objno)
;	-----------------------------------------
;	 function read_obj_type
;	-----------------------------------------
_read_obj_type:
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:644: objtype=0xFF;
	mov	r3,#0xFF
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:645: commstab=eeprom[COMMSTABPTR];	
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:646: if (objno <= commstab) {	// wenn objno <= anzahl objekte
	mov	r4,a
	clr	c
	subb	a,r2
	jc	00102$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:647: objtype=eeprom[commstab+objno*3+4];
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,r4
	add	a,#0x04+_eeprom
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	r3,a
00102$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:649: return(objtype);
	mov	dpl,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_obj_value'
;------------------------------------------------------------
;objvalue                  Allocated to stack - offset -4
;objno                     Allocated to registers r2 
;objtype                   Allocated to registers r5 
;valuepointer              Allocated to registers r2 
;offset                    Allocated to registers r3 
;commstab                  Allocated to registers r4 
;write_ok                  Allocated to registers b0 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:663: bit write_obj_value(unsigned char objno,int objvalue)
;	-----------------------------------------
;	 function write_obj_value
;	-----------------------------------------
_write_obj_value:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:666: bit write_ok=0;
	clr	b0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:668: offset=objno*3;
	mov	a,r2
	mov	b,#0x03
	mul	ab
	mov	r3,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:669: commstab=eeprom[COMMSTABPTR];
	mov	dptr,#(_eeprom + 0x0012)
	clr	a
	movc	a,@a+dptr
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:670: objtype=eeprom[commstab+offset+4];
	mov	r4,a
	add	a,r3
	add	a,#0x04+_eeprom
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:672: if (objno <= commstab) {	// wenn objno <= anzahl objekte
	clr	c
	mov	a,r4
	subb	a,r2
	jnc	00126$
	ljmp	00116$
00126$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:673: valuepointer=eeprom[commstab+offset+2];	// Zeiger auf USERRAM, wo der Objekt-Wert gespeichert ist
	mov	a,r3
	add	a,r4
	add	a,#0x02+_eeprom
	mov	dpl,a
	clr	a
	addc	a,#(_eeprom >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:676: if (objtype < 8) {	// Typ zwischen 1 und 8 Bit gross
	cjne	r5,#0x08,00127$
00127$:
	jnc	00107$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:677: while (!write_ok) {
00103$:
	jb	b0,00107$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:678: FMCON=0x00;					// load command, leert das pageregister
	mov	_FMCON,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:681: FMADRH=USERRAMADDRH;
	mov	_FMADRH,#0x1C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:682: FMADRL=valuepointer;
	mov	_FMADRL,r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:683: FMDATA=objvalue & (0xFF>>(7-objtype));
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	b,r3
	inc	b
	mov	a,#0xFF
	sjmp	00131$
00130$:
	clr	c
	rrc	a
00131$:
	djnz	b,00130$
	mov	r3,a
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar4,a
	mov	_FMDATA,r3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:686: FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:687: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00103$
	setb	b0
	sjmp	00103$
00107$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:690: if (objtype == 8) {	// 2-Byte Wert
	cjne	r5,#0x08,00116$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:691: while (!write_ok) {
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	inc	r0
	mov	ar3,@r0
00110$:
	jb	b0,00116$
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:692: FMCON=0x00;				// load command, leert das pageregister
	mov	_FMCON,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:695: FMADRH=USERRAMADDRH;
	mov	_FMADRH,#0x1C
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:696: FMADRL=valuepointer;
	mov	_FMADRL,r2
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:697: FMDATA=objvalue>>8;
	mov	_FMDATA,r3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:700: FMDATA=objvalue;	// Autoinkrement, nächste Daten
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	_FMDATA,@r0
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:703: FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:704: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
	mov	a,_FMCON
	jb	acc.0,00110$
	setb	b0
	sjmp	00110$
00116$:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:708: return(write_ok);
	mov	c,b0
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_prot'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:719: void restart_prot(void)
;	-----------------------------------------
;	 function restart_prot
;	-----------------------------------------
_restart_prot:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:724: EA=0;
	clr	_IEN0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:725: START_WRITECYCLE;
	mov	_FMCON,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:726: WRITE_BYTE(0x00,0x60,0x00);
	mov	_FMADRH,#0x1C
	mov	_FMADRL,#0x60
	mov	_FMDATA,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:727: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:728: EA=1;
	setb	_IEN0_7
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:731: pcount=1;				// Paketzaehler initialisieren
	mov	_pcount,#0x01
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:732: connected=0;			// keine Verbindung
	clr	_connected
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:734: telpos=0;				// empfangene Bytes an dieser Position im Array telegramm[] ablegen
	mov	_telpos,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:735: last_tel=0;
	mov	_last_tel,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:736: transparency=0;
	clr	_transparency
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
