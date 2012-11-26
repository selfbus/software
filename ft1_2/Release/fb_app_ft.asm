;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
; This file was generated Fri Oct 26 20:36:29 2012
;--------------------------------------------------------
	.module fb_app_ft
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _ft_ack
	.globl _tel_was_acked
	.globl _fcb
	.globl _property_5
	.globl _rsin_stat
	.globl _switch_mode
	.globl _rsinpos
	.globl _rsin
	.globl _ft_process_var_frame
	.globl _ft_process_fix_frame
	.globl _ft_send_Read_Memory_Res
	.globl _ft_process_telegram
	.globl _ft_send_frame
	.globl _ft_send_fixed_frame
	.globl _PEI_identify_req
	.globl _ft_rs_init
	.globl _serial_int
	.globl _build_tel
	.globl _gapos_in_gat
	.globl _set_pa
	.globl _write_value_req
	.globl _read_value_req
	.globl _read_obj_value
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
	.area REG_BANK_2	(REL,OVR,DATA)
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
	.ds 32
_rsinpos::
	.ds 1
_switch_mode::
	.ds 1
_rsin_stat::
	.ds 1
_property_5::
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
_fcb::
	.ds 1
_tel_was_acked::
	.ds 1
_ft_ack::
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
;Allocation info for local variables in function 'ft_process_var_frame'
;------------------------------------------------------------
;n                         Allocated to registers r6 
;write_ok                  Allocated to registers b0 
;------------------------------------------------------------
;	../fb_app_ft.c:75: void ft_process_var_frame(void)
;	-----------------------------------------
;	 function ft_process_var_frame
;	-----------------------------------------
_ft_process_var_frame:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../fb_app_ft.c:79: if (rsin[0]==0x68 && rsin[3]==0x68 && rsin[1]==rsin[2]) {	// Multi Byte
	mov	a,#0x68
	cjne	a,_rsin,00413$
	sjmp	00414$
00413$:
	ret
00414$:
	mov	a,#0x68
	cjne	a,(_rsin + 0x0003),00415$
	sjmp	00416$
00415$:
	ret
00416$:
	mov	a,(_rsin + 0x0001)
	mov	r7,a
	cjne	a,(_rsin + 0x0002),00417$
	sjmp	00418$
00417$:
	ret
00418$:
;	../fb_app_ft.c:80: if ((rsin[4]&0xDF)==0x53) {		// send_Udat
	mov	a,#0xDF
	anl	a,(_rsin + 0x0004)
	mov	r6,a
	cjne	r6,#0x53,00419$
	sjmp	00420$
00419$:
	ret
00420$:
;	../fb_app_ft.c:81: switch (rsin[5])		// PEI10 message code
	mov	r6,(_rsin + 0x0005)
	cjne	r6,#0x11,00421$
	sjmp	00101$
00421$:
	cjne	r6,#0x41,00422$
	ljmp	00167$
00422$:
	cjne	r6,#0x43,00423$
	ljmp	00151$
00423$:
	cjne	r6,#0x44,00424$
	ljmp	00159$
00424$:
	cjne	r6,#0xA7,00425$
	ljmp	00204$
00425$:
	cjne	r6,#0xA9,00426$
	sjmp	00110$
00426$:
	ret
;	../fb_app_ft.c:83: case 0x11:		// send a telegram on the bus
00101$:
;	../fb_app_ft.c:84: FT_SEND_CHAR(0xE5)
	mov	_SBUF,#0xE5
	clr	_SCON_3
	mov	r6,#0x01
00212$:
	cjne	r6,#0x00,00427$
	sjmp	00104$
00427$:
	mov	a,r6
	anl	a,#0xE5
	jz	00214$
	cpl	_SCON_3
00214$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	sjmp	00212$
00104$:
	jbc	_SCON_1,00429$
	sjmp	00104$
00429$:
;	../fb_app_ft.c:86: while(fb_state!=0);
00107$:
	mov	a,_fb_state
;	../fb_app_ft.c:87: send_obj_value(0);
	jnz	00107$
	mov	dpl,a
	lcall	_send_obj_value
;	../fb_app_ft.c:92: FT_SEND_L_DATA_CONF				// send confirmation frame
	mov	_rsin,#0x68
	mov	r5,(_rsin + 0x0001)
	mov	(_rsin + 0x0001),r5
	mov	(_rsin + 0x0002),r5
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x2E
	mov	a,#0x0F
	anl	a,(_rsin + 0x0006)
	add	a,#0xB0
	mov	(_rsin + 0x0006),a
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_rsin + 0x0007),r5
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	(_rsin + 0x0008),r5
;	../fb_app_ft.c:97: break;
	ljmp	_ft_send_frame
;	../fb_app_ft.c:99: case 0xA9:		// PEI_switch_request	
00110$:
;	../fb_app_ft.c:100: FT_SEND_CHAR(0xE5)
	mov	_SBUF,#0xE5
	clr	_SCON_3
	mov	r6,#0x01
00216$:
	cjne	r6,#0x00,00431$
	sjmp	00113$
00431$:
	mov	a,r6
	anl	a,#0xE5
	jz	00218$
	cpl	_SCON_3
00218$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	sjmp	00216$
00113$:
	jbc	_SCON_1,00433$
	sjmp	00113$
00433$:
;	../fb_app_ft.c:101: if (rsin[6]==0x00 && rsin[8]==0x34) {
	mov	a,(_rsin + 0x0006)
	mov	r5,a
	jz	00434$
	ljmp	00141$
00434$:
	mov	a,#0x34
	cjne	a,(_rsin + 0x0008),00435$
	sjmp	00436$
00435$:
	ljmp	00141$
00436$:
;	../fb_app_ft.c:102: if  (rsin[7]==0x12) {
	mov	r4,(_rsin + 0x0007)
	cjne	r4,#0x12,00133$
;	../fb_app_ft.c:103: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x9A) switch_mode=0x00; // normal mode
	mov	r3,(_rsin + 0x0009)
	clr	a
	cjne	r3,#0x56,00439$
	inc	a
00439$:
	mov	r2,a
	jz	00117$
	mov	a,#0x78
	cjne	a,(_rsin + 0x000a),00117$
	mov	a,#0x9A
	cjne	a,(_rsin + 0x000b),00117$
	mov	_switch_mode,#0x00
00117$:
;	../fb_app_ft.c:104: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x8A) switch_mode=0x01; // application layer
	mov	a,r2
	jz	00121$
	mov	a,#0x78
	cjne	a,(_rsin + 0x000a),00121$
	mov	a,#0x8A
	cjne	a,(_rsin + 0x000b),00121$
	mov	_switch_mode,#0x01
00121$:
;	../fb_app_ft.c:105: if (rsin[9]==0x48 && rsin[10]==0x88 && rsin[11]==0x0A) switch_mode=0x02; // transport layer remote
	cjne	r3,#0x48,00125$
	mov	a,#0x88
	cjne	a,(_rsin + 0x000a),00125$
	mov	a,#0x0A
	cjne	a,(_rsin + 0x000b),00125$
	mov	_switch_mode,#0x02
00125$:
;	../fb_app_ft.c:106: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x0A) switch_mode=0x03; // transport layer local
	mov	a,r2
	jz	00133$
	mov	a,#0x78
	cjne	a,(_rsin + 0x000a),00133$
	mov	a,#0x0A
	cjne	a,(_rsin + 0x000b),00133$
	mov	_switch_mode,#0x03
00133$:
;	../fb_app_ft.c:108: if (rsin[7]==0x18) {
	cjne	r4,#0x18,00141$
;	../fb_app_ft.c:109: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x0A) switch_mode=0x04; // link layer
	mov	a,#0x56
	cjne	a,(_rsin + 0x0009),00141$
	mov	a,#0x78
	cjne	a,(_rsin + 0x000a),00141$
	mov	a,#0x0A
	cjne	a,(_rsin + 0x000b),00141$
	mov	_switch_mode,#0x04
00141$:
;	../fb_app_ft.c:112: if (rsin[6]==0x90 && rsin[7]==0x18 && rsin[8]==0x34 && rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x0A) {
	cjne	r5,#0x90,00144$
	mov	a,#0x18
	cjne	a,(_rsin + 0x0007),00144$
	mov	a,#0x34
	cjne	a,(_rsin + 0x0008),00144$
	mov	a,#0x56
	cjne	a,(_rsin + 0x0009),00144$
	mov	a,#0x78
	cjne	a,(_rsin + 0x000a),00144$
	mov	a,#0x0A
	cjne	a,(_rsin + 0x000b),00144$
;	../fb_app_ft.c:113: switch_mode=0x05; // busmonitor mode
	mov	_switch_mode,#0x05
;	../fb_app_ft.c:114: auto_ack=0;
	clr	_auto_ack
	ret
00144$:
;	../fb_app_ft.c:116: else auto_ack=1;
	setb	_auto_ack
;	../fb_app_ft.c:117: break;
	ret
;	../fb_app_ft.c:119: case 0x43:		// T_connect_request
00151$:
;	../fb_app_ft.c:120: FT_SEND_CHAR(0xE5)
	mov	_SBUF,#0xE5
	clr	_SCON_3
	mov	r6,#0x01
00220$:
	cjne	r6,#0x00,00482$
	sjmp	00154$
00482$:
	mov	a,r6
	anl	a,#0xE5
	jz	00222$
	cpl	_SCON_3
00222$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	sjmp	00220$
00154$:
	jbc	_SCON_1,00484$
	sjmp	00154$
00484$:
;	../fb_app_ft.c:121: if (switch_mode==0x03) {
	mov	a,#0x03
	cjne	a,_switch_mode,00485$
	sjmp	00486$
00485$:
	ret
00486$:
;	../fb_app_ft.c:122: FT_SET_HEADER(0x07,0x86)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),#0x07
	mov	(_rsin + 0x0002),#0x07
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x86
;	../fb_app_ft.c:123: rsin[6]=(0x00);
	mov	(_rsin + 0x0006),#0x00
;	../fb_app_ft.c:124: rsin[7]=(0x00);
	mov	(_rsin + 0x0007),#0x00
;	../fb_app_ft.c:125: rsin[8]=(0x00);
	mov	(_rsin + 0x0008),#0x00
;	../fb_app_ft.c:126: rsin[9]=(0x00);
	mov	(_rsin + 0x0009),#0x00
;	../fb_app_ft.c:127: rsin[10]=(0x00);
	mov	(_rsin + 0x000a),#0x00
;	../fb_app_ft.c:128: ft_send_frame();
;	../fb_app_ft.c:130: break;
	ljmp	_ft_send_frame
;	../fb_app_ft.c:132: case 0x44:	// T_Disconcect.req
00159$:
;	../fb_app_ft.c:133: FT_SEND_CHAR(0xE5)
	mov	_SBUF,#0xE5
	clr	_SCON_3
	mov	r6,#0x01
00224$:
	cjne	r6,#0x00,00487$
	sjmp	00162$
00487$:
	mov	a,r6
	anl	a,#0xE5
	jz	00226$
	cpl	_SCON_3
00226$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	sjmp	00224$
00162$:
	jbc	_SCON_1,00489$
	sjmp	00162$
00489$:
;	../fb_app_ft.c:134: if (switch_mode==0x03) {
	mov	a,#0x03
	cjne	a,_switch_mode,00490$
	sjmp	00491$
00490$:
	ret
00491$:
;	../fb_app_ft.c:135: FT_SET_HEADER(rsin[1],0x88)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x88
;	../fb_app_ft.c:136: ft_send_frame();
;	../fb_app_ft.c:138: break;				
	ljmp	_ft_send_frame
;	../fb_app_ft.c:140: case 0x41:		// T_dataConnected.request
00167$:
;	../fb_app_ft.c:141: FT_SEND_CHAR(0xE5)
	mov	_SBUF,#0xE5
	clr	_SCON_3
	mov	r6,#0x01
00228$:
	cjne	r6,#0x00,00492$
	sjmp	00170$
00492$:
	mov	a,r6
	anl	a,#0xE5
	jz	00230$
	cpl	_SCON_3
00230$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	sjmp	00228$
00170$:
	jbc	_SCON_1,00494$
	sjmp	00170$
00494$:
;	../fb_app_ft.c:142: if (switch_mode==TLlocal) { 	// Transport Layer local															
	mov	a,#0x03
	cjne	a,_switch_mode,00495$
	sjmp	00496$
00495$:
	ret
00496$:
;	../fb_app_ft.c:143: switch (rsin[12]) {
	mov	r6,(_rsin + 0x000c)
	cjne	r6,#0x02,00497$
	ljmp	00192$
00497$:
	cjne	r6,#0x03,00498$
	sjmp	00499$
00498$:
	ret
00499$:
;	../fb_app_ft.c:145: switch (rsin[13]) {
	mov	r6,(_rsin + 0x000d)
	cjne	r6,#0x00,00500$
	sjmp	00174$
00500$:
	cjne	r6,#0xD1,00501$
	ljmp	00190$
00501$:
	cjne	r6,#0xD5,00502$
	sjmp	00175$
00502$:
	cjne	r6,#0xD7,00503$
	ljmp	00181$
00503$:
	ret
;	../fb_app_ft.c:146: case 0x00:		// Read_Mask_Version_Req	  
00174$:
;	../fb_app_ft.c:147: FT_SEND_T_DATACONNECTED_CONF		
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x8E
	lcall	_ft_send_frame
;	../fb_app_ft.c:148: FT_SET_HEADER(0x0C,0x89)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),#0x0C
	mov	(_rsin + 0x0002),#0x0C
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x89
;	../fb_app_ft.c:149: rsin[6]=(0x00);
	mov	(_rsin + 0x0006),#0x00
;	../fb_app_ft.c:150: rsin[7]=(0x00);
	mov	(_rsin + 0x0007),#0x00
;	../fb_app_ft.c:151: rsin[8]=(0x00);
	mov	(_rsin + 0x0008),#0x00
;	../fb_app_ft.c:152: rsin[9]=(0x00);
	mov	(_rsin + 0x0009),#0x00
;	../fb_app_ft.c:153: rsin[10]=(0x00);
	mov	(_rsin + 0x000a),#0x00
;	../fb_app_ft.c:154: rsin[11]=(0x63);	// DRL Länge 3 Bytes
	mov	(_rsin + 0x000b),#0x63
;	../fb_app_ft.c:155: rsin[12]=(0x03);	// 03 40 = Read_Mask_Version_res
	mov	(_rsin + 0x000c),#0x03
;	../fb_app_ft.c:156: rsin[13]=(0x40);	//
	mov	(_rsin + 0x000d),#0x40
;	../fb_app_ft.c:157: rsin[14]=(0x00);	// Maskenversion 00 21
	mov	(_rsin + 0x000e),#0x00
;	../fb_app_ft.c:158: rsin[15]=(0x21);
	mov	(_rsin + 0x000f),#0x21
;	../fb_app_ft.c:159: ft_send_frame();
;	../fb_app_ft.c:160: break;
	ljmp	_ft_send_frame
;	../fb_app_ft.c:161: case 0xD5:	// Read_Property_Value_Req
00175$:
;	../fb_app_ft.c:162: if (rsin[14]==0x01 && rsin[15]==0x05 && rsin[16]==0x10 && rsin[17]==0x01)
	mov	a,#0x01
	cjne	a,(_rsin + 0x000e),00504$
	sjmp	00505$
00504$:
	ret
00505$:
	mov	a,#0x05
	cjne	a,(_rsin + 0x000f),00506$
	sjmp	00507$
00506$:
	ret
00507$:
	mov	a,#0x10
	cjne	a,(_rsin + 0x0010),00508$
	sjmp	00509$
00508$:
	ret
00509$:
	mov	a,#0x01
	cjne	a,(_rsin + 0x0011),00510$
	sjmp	00511$
00510$:
	ret
00511$:
;	../fb_app_ft.c:164: FT_SEND_T_DATACONNECTED_CONF
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x8E
	lcall	_ft_send_frame
;	../fb_app_ft.c:165: FT_SET_HEADER(0x0F,0x89)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),#0x0F
	mov	(_rsin + 0x0002),#0x0F
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x89
;	../fb_app_ft.c:166: rsin[11]=0x66;
	mov	(_rsin + 0x000b),#0x66
;	../fb_app_ft.c:167: rsin[13]=0xD6;
	mov	(_rsin + 0x000d),#0xD6
;	../fb_app_ft.c:168: rsin[18]=property_5;
	mov	(_rsin + 0x0012),_property_5
;	../fb_app_ft.c:169: ft_send_frame();
;	../fb_app_ft.c:171: break;
	ljmp	_ft_send_frame
;	../fb_app_ft.c:172: case 0xD7:	// Write_Property_Value_Req
00181$:
;	../fb_app_ft.c:173: if (rsin[14]==0x01 && rsin[15]==0x05 && rsin[16]==0x10 && rsin[17]==0x01)
	mov	a,#0x01
	cjne	a,(_rsin + 0x000e),00512$
	sjmp	00513$
00512$:
	ret
00513$:
	mov	a,#0x05
	cjne	a,(_rsin + 0x000f),00514$
	sjmp	00515$
00514$:
	ret
00515$:
	mov	a,#0x10
	cjne	a,(_rsin + 0x0010),00516$
	sjmp	00517$
00516$:
	ret
00517$:
	mov	a,#0x01
	cjne	a,(_rsin + 0x0011),00518$
	sjmp	00519$
00518$:
	ret
00519$:
;	../fb_app_ft.c:175: FT_SEND_T_DATACONNECTED_CONF
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x8E
	lcall	_ft_send_frame
;	../fb_app_ft.c:176: if (rsin[18]==0x01) property_5=0x02; else property_5=0x01;
	mov	a,#0x01
	cjne	a,(_rsin + 0x0012),00183$
	mov	_property_5,#0x02
	sjmp	00184$
00183$:
	mov	_property_5,#0x01
00184$:
;	../fb_app_ft.c:177: FT_SET_HEADER(0x0F,0x89)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),#0x0F
	mov	(_rsin + 0x0002),#0x0F
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x89
;	../fb_app_ft.c:178: rsin[11]=0x66;
	mov	(_rsin + 0x000b),#0x66
;	../fb_app_ft.c:179: rsin[13]=0xD6;
	mov	(_rsin + 0x000d),#0xD6
;	../fb_app_ft.c:180: rsin[18]=property_5;
	mov	(_rsin + 0x0012),_property_5
;	../fb_app_ft.c:181: ft_send_frame();
;	../fb_app_ft.c:183: break;
	ljmp	_ft_send_frame
;	../fb_app_ft.c:185: case  0xD1:		// Authorize_Req
00190$:
;	../fb_app_ft.c:186: FT_SEND_T_DATACONNECTED_CONF
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x8E
	lcall	_ft_send_frame
;	../fb_app_ft.c:187: rsin[4]|=0x80;		// DIR=1 BAU to external device
	mov	a,#0x80
	orl	a,(_rsin + 0x0004)
	mov	(_rsin + 0x0004),a
;	../fb_app_ft.c:190: FT_SET_HEADER(0x0B,0x89)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),#0x0B
	mov	(_rsin + 0x0002),#0x0B
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x89
;	../fb_app_ft.c:191: rsin[11]=0x62;// 66
	mov	(_rsin + 0x000b),#0x62
;	../fb_app_ft.c:192: rsin[13]=0xD2;	
	mov	(_rsin + 0x000d),#0xD2
;	../fb_app_ft.c:193: ft_send_frame();
;	../fb_app_ft.c:196: break;
	ljmp	_ft_send_frame
;	../fb_app_ft.c:198: case 0x02:
00192$:
;	../fb_app_ft.c:199: switch (rsin[13]&0xF0) {
	mov	r6,(_rsin + 0x000d)
	mov	a,#0xF0
	anl	a,r6
	mov	r5,a
	jz	00193$
	cjne	r5,#0x80,00523$
	sjmp	00194$
00523$:
	ret
;	../fb_app_ft.c:200: case 0x00:	// Read_Memory_Req
00193$:
;	../fb_app_ft.c:201: FT_SEND_T_DATACONNECTED_CONF
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x8E
	lcall	_ft_send_frame
;	../fb_app_ft.c:202: ft_send_Read_Memory_Res((rsin[13]&0x0F),rsin[14],rsin[15]);
	mov	a,#0x0F
	anl	a,(_rsin + 0x000d)
	mov	dpl,a
	push	(_rsin + 0x000f)
	push	(_rsin + 0x000e)
	lcall	_ft_send_Read_Memory_Res
	dec	sp
	dec	sp
;	../fb_app_ft.c:203: break;
;	../fb_app_ft.c:205: case 0x80:	// Write_Memory_Req
	ret
00194$:
;	../fb_app_ft.c:207: EA=0;
	clr	_IEN0_7
;	../fb_app_ft.c:209: write_ok=0;
	clr	b0
;	../fb_app_ft.c:210: while (!write_ok) {
	anl	ar6,#0x0F
00197$:
	jb	b0,00199$
;	../fb_app_ft.c:211: START_WRITECYCLE;
	mov	_FMCON,#0x00
;	../fb_app_ft.c:212: for (n=0;n<(rsin[13]&0x0F);n++) {
	mov	r5,#0x00
00232$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00235$
;	../fb_app_ft.c:213: WRITE_BYTE(rsin[14],rsin[15]+n,rsin[16+n]);
	mov	a,#0x01
	anl	a,(_rsin + 0x000e)
	add	a,#0x1C
	mov	_FMADRH,a
	mov	a,r5
	add	a,(_rsin + 0x000f)
	mov	_FMADRL,a
	mov	a,#0x10
	add	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	_FMDATA,@r1
;	../fb_app_ft.c:212: for (n=0;n<(rsin[13]&0x0F);n++) {
	inc	r5
	sjmp	00232$
00235$:
;	../fb_app_ft.c:215: STOP_WRITECYCLE;
	mov	_FMCON,#0x68
;	../fb_app_ft.c:216: if(!(FMCON & 0x0F)) write_ok=1;	// prüfen, ob erfolgreich geflasht
	mov	a,_FMCON
	anl	a,#0x0F
	jz	00527$
	sjmp	00197$
00527$:
	setb	b0
	sjmp	00197$
00199$:
;	../fb_app_ft.c:218: EA=1;
	setb	_IEN0_7
;	../fb_app_ft.c:221: FT_SEND_T_DATACONNECTED_CONF
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x8E
;	../fb_app_ft.c:227: break;
;	../fb_app_ft.c:231: case 0xA7:		// PEI_identify_request
	ljmp	_ft_send_frame
00204$:
;	../fb_app_ft.c:232: PEI_identify_req();
;	../fb_app_ft.c:234: }
	ljmp	_PEI_identify_req
;------------------------------------------------------------
;Allocation info for local variables in function 'ft_process_fix_frame'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_ft.c:241: void ft_process_fix_frame(void)		// frame with fixed length received
;	-----------------------------------------
;	 function ft_process_fix_frame
;	-----------------------------------------
_ft_process_fix_frame:
;	../fb_app_ft.c:245: if (rsin[0]==0x10 && rsin[3]==0x16 && rsin[1]==rsin[2]) {	// Single Byte
	mov	a,#0x10
	cjne	a,_rsin,00216$
	sjmp	00217$
00216$:
	ret
00217$:
	mov	a,#0x16
	cjne	a,(_rsin + 0x0003),00218$
	sjmp	00219$
00218$:
	ret
00219$:
	mov	a,(_rsin + 0x0001)
	mov	r7,a
	cjne	a,(_rsin + 0x0002),00220$
	sjmp	00221$
00220$:
	ret
00221$:
;	../fb_app_ft.c:246: if ((rsin[1]&0x0F)==0x00) {	//send_reset received
	mov	a,r7
	anl	a,#0x0F
	jz	00223$
	sjmp	00107$
00223$:
;	../fb_app_ft.c:247: FT_SEND_CHAR(0xE5)		// send an ack
	mov	_SBUF,#0xE5
	clr	_SCON_3
	mov	r7,#0x01
00134$:
	cjne	r7,#0x00,00224$
	sjmp	00103$
00224$:
	mov	a,r7
	anl	a,#0xE5
	jz	00136$
	cpl	_SCON_3
00136$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	sjmp	00134$
00103$:
	jbc	_SCON_1,00226$
	sjmp	00103$
00226$:
;	../fb_app_ft.c:248: restart_app();
	lcall	_restart_app
00107$:
;	../fb_app_ft.c:250: if (rsin[1]==0x49) {		// N_DataConnected.ind received
	mov	a,#0x49
	cjne	a,(_rsin + 0x0001),00227$
	sjmp	00228$
00227$:
	ret
00228$:
;	../fb_app_ft.c:251: FT_SEND_CHAR(0x10)
	mov	_SBUF,#0x10
	clr	_SCON_3
	mov	r7,#0x01
00138$:
	cjne	r7,#0x00,00229$
	sjmp	00110$
00229$:
	mov	a,r7
	jnb	acc.4,00140$
	cpl	_SCON_3
00140$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	sjmp	00138$
00110$:
	jbc	_SCON_1,00231$
	sjmp	00110$
00231$:
;	../fb_app_ft.c:252: FT_SEND_CHAR(0x8B)
	mov	_SBUF,#0x8B
	clr	_SCON_3
	mov	r7,#0x01
00142$:
	cjne	r7,#0x00,00232$
	sjmp	00115$
00232$:
	mov	a,r7
	anl	a,#0x8B
	jz	00144$
	cpl	_SCON_3
00144$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	sjmp	00142$
00115$:
	jbc	_SCON_1,00234$
	sjmp	00115$
00234$:
;	../fb_app_ft.c:253: FT_SEND_CHAR(0x8B)
	mov	_SBUF,#0x8B
	clr	_SCON_3
	mov	r7,#0x01
00146$:
	cjne	r7,#0x00,00235$
	sjmp	00120$
00235$:
	mov	a,r7
	anl	a,#0x8B
	jz	00148$
	cpl	_SCON_3
00148$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	sjmp	00146$
00120$:
	jbc	_SCON_1,00237$
	sjmp	00120$
00237$:
;	../fb_app_ft.c:254: FT_SEND_CHAR(0x16)
	mov	_SBUF,#0x16
	clr	_SCON_3
	mov	r7,#0x01
00150$:
	cjne	r7,#0x00,00238$
	sjmp	00125$
00238$:
	mov	a,r7
	anl	a,#0x16
	jz	00152$
	cpl	_SCON_3
00152$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	sjmp	00150$
00125$:
	jbc	_SCON_1,00240$
	sjmp	00125$
00240$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ft_send_Read_Memory_Res'
;------------------------------------------------------------
;adrh                      Allocated to stack - _bp -3
;adrl                      Allocated to stack - _bp -4
;bytecount                 Allocated to registers r7 
;n                         Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_ft.c:261: void ft_send_Read_Memory_Res(unsigned char bytecount, unsigned char adrh, unsigned char adrl)
;	-----------------------------------------
;	 function ft_send_Read_Memory_Res
;	-----------------------------------------
_ft_send_Read_Memory_Res:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	../fb_app_ft.c:265: FT_SET_HEADER(bytecount+12,0x89)
	mov	_rsin,#0x68
	mov	a,#0x0C
	add	a,r7
	mov	r6,a
	mov	(_rsin + 0x0001),r6
	mov	(_rsin + 0x0002),r6
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	mov	r6,a
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x89
;	../fb_app_ft.c:267: rsin[6]=0x0C;
	mov	(_rsin + 0x0006),#0x0C
;	../fb_app_ft.c:268: rsin[7]=0x00;
	mov	(_rsin + 0x0007),#0x00
;	../fb_app_ft.c:269: rsin[8]=0x00;
;	../fb_app_ft.c:270: rsin[9]=0x00;
;	../fb_app_ft.c:271: rsin[10]=0x00;
;	../fb_app_ft.c:272: rsin[11]=bytecount+3;
	clr	a
	mov	(_rsin + 0x0008),a
	mov	(_rsin + 0x0009),a
	mov	(_rsin + 0x000a),a
	mov	a,#0x03
	add	a,r7
	mov	(_rsin + 0x000b),a
;	../fb_app_ft.c:273: rsin[12]=0x02;
	mov	(_rsin + 0x000c),#0x02
;	../fb_app_ft.c:274: rsin[13]=0x40+bytecount;
	mov	a,#0x40
	add	a,r7
	mov	(_rsin + 0x000d),a
;	../fb_app_ft.c:275: rsin[14]=adrh;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	(_rsin + 0x000e),@r0
;	../fb_app_ft.c:276: rsin[15]=adrl;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	(_rsin + 0x000f),@r0
;	../fb_app_ft.c:277: if (switch_mode==0x03) for (n=0;n<bytecount;n++) rsin[n+16]=eeprom[adrl+n];
	mov	a,#0x03
	cjne	a,_switch_mode,00102$
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00102$
	mov	a,#0x10
	add	a,r6
	add	a,#_rsin
	mov	r1,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	dptr,#_eeprom
	movc	a,@a+dptr
	mov	r5,a
	mov	@r1,a
	inc	r6
	sjmp	00103$
00102$:
;	../fb_app_ft.c:278: ft_send_frame();
	lcall	_ft_send_frame
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ft_process_telegram'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_ft.c:284: void ft_process_telegram(void)		// EIB telegram received
;	-----------------------------------------
;	 function ft_process_telegram
;	-----------------------------------------
_ft_process_telegram:
;	../fb_app_ft.c:289: tel_arrived=0;
	clr	_tel_arrived
;	../fb_app_ft.c:290: tel_was_acked=0;
	clr	_tel_was_acked
;	../fb_app_ft.c:292: if (switch_mode==0x05)		// busmonitor
	mov	a,#0x05
	cjne	a,_switch_mode,00130$
	sjmp	00131$
00130$:
	ljmp	00104$
00131$:
;	../fb_app_ft.c:294: FT_SET_HEADER((telegramm[5]&0x0F)+13,0x2B)
	mov	_rsin,#0x68
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	add	a,#0x0D
	mov	r7,a
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x2B
;	../fb_app_ft.c:295: rsin[6]=0x01;	// status
	mov	(_rsin + 0x0006),#0x01
;	../fb_app_ft.c:296: rsin[7]=0x22;	// timestamp
	mov	(_rsin + 0x0007),#0x22
;	../fb_app_ft.c:297: rsin[8]=0x33;	// timestamp
	mov	(_rsin + 0x0008),#0x33
;	../fb_app_ft.c:298: for (n=0;n<(rsin[1]-4);n++) rsin[n+9]=telegramm[n];	// -1
	mov	r7,#0x00
00106$:
	mov	r5,(_rsin + 0x0001)
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xFC
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
	mov	a,#0x09
	add	a,r7
	add	a,#_rsin
	mov	r1,a
	mov	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	ar6,@r0
	mov	@r1,ar6
	inc	r7
	sjmp	00106$
00109$:
;	../fb_app_ft.c:299: ft_send_frame();
	lcall	_ft_send_frame
;	../fb_app_ft.c:301: if (tel_was_acked) {
	jb	_tel_was_acked,00133$
	ret
00133$:
;	../fb_app_ft.c:302: FT_SET_HEADER(0x06,0x2B)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),#0x06
	mov	(_rsin + 0x0002),#0x06
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x2B
;	../fb_app_ft.c:303: rsin[6]=0x01;
	mov	(_rsin + 0x0006),#0x01
;	../fb_app_ft.c:304: rsin[7]=0x33;	// timestamp
	mov	(_rsin + 0x0007),#0x33
;	../fb_app_ft.c:305: rsin[8]=0x44;	// timestamp
	mov	(_rsin + 0x0008),#0x44
;	../fb_app_ft.c:306: rsin[9]=0xCC;
	mov	(_rsin + 0x0009),#0xCC
;	../fb_app_ft.c:307: ft_send_frame();
	ljmp	_ft_send_frame
00104$:
;	../fb_app_ft.c:311: FT_SET_HEADER((telegramm[5]&0x0F)+9,0x29)	// +9
	mov	_rsin,#0x68
	mov	a,#0x0F
	anl	a,(_telegramm + 0x0005)
	add	a,#0x09
	mov	r7,a
	mov	(_rsin + 0x0001),r7
	mov	(_rsin + 0x0002),r7
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0x29
;	../fb_app_ft.c:312: for (n=0;n<(rsin[1]-1);n++) rsin[n+6]=telegramm[n];	// -1
	mov	r7,#0x00
00110$:
	mov	r5,(_rsin + 0x0001)
	mov	r6,#0x00
	dec	r5
	cjne	r5,#0xFF,00134$
	dec	r6
00134$:
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
	mov	a,#0x06
	add	a,r7
	add	a,#_rsin
	mov	r1,a
	mov	a,r7
	add	a,#_telegramm
	mov	r0,a
	mov	ar6,@r0
	mov	@r1,ar6
	inc	r7
	sjmp	00110$
00113$:
;	../fb_app_ft.c:313: ft_send_frame();
	ljmp	_ft_send_frame
;------------------------------------------------------------
;Allocation info for local variables in function 'ft_send_frame'
;------------------------------------------------------------
;b                         Allocated to registers r4 
;n                         Allocated to stack - _bp +1
;repeat                    Allocated to registers r7 
;frame_length              Allocated to registers r6 
;send_char                 Allocated to registers r5 
;timeout                   Allocated to registers r5 r6 
;------------------------------------------------------------
;	../fb_app_ft.c:319: void ft_send_frame(void)	// send a frame with variable length that is stored in rsin
;	-----------------------------------------
;	 function ft_send_frame
;	-----------------------------------------
_ft_send_frame:
	push	_bp
	mov	_bp,sp
	inc	sp
;	../fb_app_ft.c:324: repeat=4;
	mov	r7,#0x04
;	../fb_app_ft.c:325: while (repeat--) {		// repeat sending frame up to 3 times if not achnowleged
00113$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00162$
	ljmp	00128$
00162$:
;	../fb_app_ft.c:326: rsin[rsin[1]+4]=0;
	mov	r6,(_rsin + 0x0001)
	mov	a,#0x04
	add	a,r6
	add	a,#_rsin
	mov	r0,a
	mov	@r0,#0x00
;	../fb_app_ft.c:327: for (n=4;n<(rsin[1]+4);n++) rsin[rsin[1]+4]+=rsin[n];	// checksum berechnen
	mov	a,#0x04
	add	a,r6
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x04
00116$:
	push	ar7
	mov	ar2,r6
	mov	r3,#0x00
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	mov	r7,#0x00
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	pop	ar7
	jnc	00119$
	mov	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	ar4,@r1
	push	ar1
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,#_rsin
	mov	r0,a
	pop	ar1
	mov	a,@r0
	mov	r3,a
	add	a,r4
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	inc	@r0
	sjmp	00116$
00119$:
;	../fb_app_ft.c:328: rsin[rsin[1]+5]=0x16;
	mov	a,#0x05
	add	a,r6
	add	a,#_rsin
	mov	r0,a
	mov	@r0,#0x16
;	../fb_app_ft.c:330: frame_length=rsin[1]+6;
	mov	a,#0x06
	add	a,r6
	mov	r6,a
;	../fb_app_ft.c:331: send_char=rsin[0];
	mov	r5,_rsin
;	../fb_app_ft.c:332: for (b=0;b<frame_length;b++) {
	mov	r4,#0x00
00124$:
	clr	c
	mov	a,r4
	subb	a,r6
	jnc	00127$
;	../fb_app_ft.c:333: SBUF=send_char; \
	mov	_SBUF,r5
	clr	_SCON_3
;	../fb_app_ft.c:335: for(n=1;n!=0;n=n<<1) {
	mov	r3,#0x01
	mov	a,r4
	add	a,#_rsin
	mov	r1,a
00120$:
	cjne	r3,#0x00,00165$
	sjmp	00123$
00165$:
;	../fb_app_ft.c:336: if (rsin[b] & n) TB8=!TB8;
	mov	ar2,@r1
	mov	a,r3
	anl	a,r2
	jz	00122$
	cpl	_SCON_3
00122$:
;	../fb_app_ft.c:335: for(n=1;n!=0;n=n<<1) {
	mov	a,r3
	add	a,r3
	mov	r3,a
	sjmp	00120$
00123$:
;	../fb_app_ft.c:338: if(ack) tel_was_acked=1;	// fals während dem seriellen Senden ein ACK am bus kam
	jnb	_ack,00104$
	setb	_tel_was_acked
00104$:
;	../fb_app_ft.c:339: send_char=rsin[b+1];
	mov	a,r4
	inc	a
	add	a,#_rsin
	mov	r1,a
	mov	ar3,@r1
	mov	ar5,r3
;	../fb_app_ft.c:340: while(!TI);
00105$:
;	../fb_app_ft.c:341: TI=0;
	jbc	_SCON_1,00168$
	sjmp	00105$
00168$:
;	../fb_app_ft.c:332: for (b=0;b<frame_length;b++) {
	inc	r4
	sjmp	00124$
00127$:
;	../fb_app_ft.c:346: while (timeout--) {		// give enough time to receive an ack
	mov	r5,#0x10
	mov	r6,#0x27
00110$:
	mov	ar3,r5
	mov	ar4,r6
	dec	r5
	cjne	r5,#0xFF,00169$
	dec	r6
00169$:
	mov	a,r3
	orl	a,r4
	jnz	00170$
	ljmp	00113$
00170$:
;	../fb_app_ft.c:347: if (ft_ack) {			
	jnb	_ft_ack,00110$
;	../fb_app_ft.c:348: repeat=0;
	mov	r7,#0x00
;	../fb_app_ft.c:349: ft_ack=0;
	clr	_ft_ack
;	../fb_app_ft.c:350: break;
	ljmp	00113$
00128$:
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ft_send_fixed_frame'
;------------------------------------------------------------
;controlfield              Allocated to registers r7 
;n                         Allocated to registers r5 
;r                         Allocated to registers r6 
;------------------------------------------------------------
;	../fb_app_ft.c:357: void ft_send_fixed_frame(unsigned char controlfield)	// send a frame with fixed length (single byte)
;	-----------------------------------------
;	 function ft_send_fixed_frame
;	-----------------------------------------
_ft_send_fixed_frame:
	mov	r7,dpl
;	../fb_app_ft.c:363: while (r<4) {
	mov	r6,#0x00
00106$:
	cjne	r6,#0x04,00138$
00138$:
	jnc	00117$
;	../fb_app_ft.c:364: rsin[0]=0x10;
	mov	_rsin,#0x10
;	../fb_app_ft.c:365: rsin[1]=controlfield;
	mov	(_rsin + 0x0001),r7
;	../fb_app_ft.c:366: rsin[2]=controlfield;
	mov	(_rsin + 0x0002),r7
;	../fb_app_ft.c:367: rsin[3]=0x16;
	mov	(_rsin + 0x0003),#0x16
;	../fb_app_ft.c:369: for (n=0;n<4;n++) {
	mov	r5,#0x00
00113$:
	cjne	r5,#0x04,00140$
00140$:
	jnc	00116$
;	../fb_app_ft.c:370: FT_SEND_CHAR(rsin[n])
	mov	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	_SBUF,@r1
	clr	_SCON_3
	mov	r5,#0x01
00109$:
	cjne	r5,#0x00,00142$
	sjmp	00103$
00142$:
	mov	a,r5
	add	a,#_rsin
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	anl	a,r4
	jz	00111$
	cpl	_SCON_3
00111$:
	mov	a,r5
	add	a,r5
	mov	r5,a
	sjmp	00109$
00103$:
	jbc	_SCON_1,00144$
	sjmp	00103$
00144$:
;	../fb_app_ft.c:369: for (n=0;n<4;n++) {
	inc	r5
	sjmp	00113$
00116$:
;	../fb_app_ft.c:374: r++;
	inc	r6
	sjmp	00106$
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PEI_identify_req'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_ft.c:380: void PEI_identify_req(void)
;	-----------------------------------------
;	 function PEI_identify_req
;	-----------------------------------------
_PEI_identify_req:
;	../fb_app_ft.c:384: FT_SEND_CHAR(0xE5)
	mov	_SBUF,#0xE5
	clr	_SCON_3
	mov	r7,#0x01
00106$:
	cjne	r7,#0x00,00122$
	sjmp	00103$
00122$:
	mov	a,r7
	anl	a,#0xE5
	jz	00108$
	cpl	_SCON_3
00108$:
	mov	a,r7
	add	a,r7
	mov	r7,a
	sjmp	00106$
00103$:
	jbc	_SCON_1,00124$
	sjmp	00103$
00124$:
;	../fb_app_ft.c:386: FT_SET_HEADER(0x0A,0xA8)
	mov	_rsin,#0x68
	mov	(_rsin + 0x0001),#0x0A
	mov	(_rsin + 0x0002),#0x0A
	mov	(_rsin + 0x0003),#0x68
	cpl	_fcb
	mov	c,_fcb
	clr	a
	rlc	a
	swap	a
	rl	a
	anl	a,#0xE0
	add	a,#0xD3
	mov	(_rsin + 0x0004),a
	mov	(_rsin + 0x0005),#0xA8
;	../fb_app_ft.c:388: rsin[6]=eeprom[ADDRTAB+1];
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_rsin + 0x0006),r7
;	../fb_app_ft.c:389: rsin[7]=eeprom[ADDRTAB+2];
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_rsin + 0x0007),r7
;	../fb_app_ft.c:390: rsin[8]=0x00;
	mov	(_rsin + 0x0008),#0x00
;	../fb_app_ft.c:391: rsin[9]=0x01;	
	mov	(_rsin + 0x0009),#0x01
;	../fb_app_ft.c:392: rsin[10]=0x00;	
	mov	(_rsin + 0x000a),#0x00
;	../fb_app_ft.c:393: rsin[11]=0x00;	
	mov	(_rsin + 0x000b),#0x00
;	../fb_app_ft.c:394: rsin[12]=0xE4;
	mov	(_rsin + 0x000c),#0xE4
;	../fb_app_ft.c:395: rsin[13]=0x5A;
	mov	(_rsin + 0x000d),#0x5A
;	../fb_app_ft.c:396: rsin[14]=0;
	mov	(_rsin + 0x000e),#0x00
;	../fb_app_ft.c:397: ft_send_frame();
	ljmp	_ft_send_frame
;------------------------------------------------------------
;Allocation info for local variables in function 'ft_rs_init'
;------------------------------------------------------------
;	../fb_app_ft.c:403: void ft_rs_init(void)
;	-----------------------------------------
;	 function ft_rs_init
;	-----------------------------------------
_ft_rs_init:
;	../fb_app_ft.c:405: SSTAT|=0x40;	// TI wird am Ende des Stopbits gesetzt
	orl	_SSTAT,#0x40
;	../fb_app_ft.c:406: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
	orl	_BRGCON,#0x02
;	../fb_app_ft.c:412: SCON=0xD0;	// Mode 3, receive enable für even parity
	mov	_SCON,#0xD0
;	../fb_app_ft.c:413: BRGR1=0x01;	// Baudrate = cclk/((BRGR1,BRGR0)+16) = 19200 = 01 70
	mov	_BRGR1,#0x01
;	../fb_app_ft.c:414: BRGR0=0x70;	// 115200 =  00 30
	mov	_BRGR0,#0x70
;	../fb_app_ft.c:421: BRGCON|=0x01;	// Baudrate Generator starten
	orl	_BRGCON,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_int'
;------------------------------------------------------------
;rxc                       Allocated to registers r7 
;------------------------------------------------------------
;	../fb_app_ft.c:425: void serial_int(void) __interrupt (4) __using (2)   // Interrupt on received char from serial port
;	-----------------------------------------
;	 function serial_int
;	-----------------------------------------
_serial_int:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	acc
	push	psw
	mov	psw,#0x10
;	../fb_app_ft.c:428: ES=0; /*????*/
	clr	_IEN0_4
;	../fb_app_ft.c:429: if (RI) {
;	../fb_app_ft.c:430: RI=0;
	jbc	_SCON_0,00142$
	ljmp	00119$
00142$:
;	../fb_app_ft.c:431: if (TF0) {      // time between 2 bytes was too long, discard previous frame.
	jnb	_TCON_5,00102$
;	../fb_app_ft.c:432: rsinpos=0;
	mov	_rsinpos,#0x00
00102$:
;	../fb_app_ft.c:434: rxc=SBUF;     // store byte in rsbuf
	mov	r7,_SBUF
;	../fb_app_ft.c:436: if (rsinpos==0 && rxc==0xE5) {  // in case of ack, set the ft_ack bit
	mov	a,_rsinpos
	jnz	00115$
	cjne	r7,#0xE5,00115$
;	../fb_app_ft.c:437: ft_ack=1;
	setb	_ft_ack
	sjmp	00116$
00115$:
;	../fb_app_ft.c:440: rsin[rsinpos]=rxc;
	mov	a,_rsinpos
	add	a,#_rsin
	mov	r0,a
	mov	@r0,ar7
;	../fb_app_ft.c:442: if (rxc==0x16 && rsinpos==(rsin[1]+5)) rsin_stat = RSIN_VARFRAME;
	cjne	r7,#0x16,00104$
	mov	r6,(_rsin + 0x0001)
	mov	r7,#0x00
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	r4,_rsinpos
	mov	r5,#0x00
	mov	a,r4
	cjne	a,ar6,00104$
	mov	a,r5
	cjne	a,ar7,00104$
	mov	_rsin_stat,#0x01
00104$:
;	../fb_app_ft.c:443: if (rsin[0]      ==0x10 && rsinpos==3) rsin_stat = RSIN_FIXFRAME;
	mov	a,#0x10
	cjne	a,_rsin,00107$
	mov	a,#0x03
	cjne	a,_rsinpos,00107$
	mov	_rsin_stat,#0x02
00107$:
;	../fb_app_ft.c:444: if (rsin_stat    != RSIN_NONE) {
	mov	a,_rsin_stat
	jz	00112$
;	../fb_app_ft.c:446: rsinpos = 0;   // ready to receive next frame.
	mov	_rsinpos,#0x00
	sjmp	00116$
00112$:
;	../fb_app_ft.c:449: if (rsinpos < sizeof(rsin)-1){
	mov	a,#0x100 - 0x1F
	add	a,_rsinpos
	jc	00116$
;	../fb_app_ft.c:450: rsinpos++;
	inc	_rsinpos
00116$:
;	../fb_app_ft.c:454: TR0=0;
	clr	_TCON_4
;	../fb_app_ft.c:461: TH0=0x39;
	mov	_TH0,#0x39
;	../fb_app_ft.c:463: TL0=0xFF;
	mov	_TL0,#0xFF
;	../fb_app_ft.c:464: TF0=0;
	clr	_TCON_5
;	../fb_app_ft.c:465: TR0=1;
	setb	_TCON_4
00119$:
;	../fb_app_ft.c:467: ES=1;  /*????*/
	setb	_IEN0_4
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'build_tel'
;------------------------------------------------------------
;objno                     Allocated to registers r7 
;build_ok                  Allocated to registers b0 
;n                         Allocated to registers r7 
;repeatflag                Allocated to registers b0 
;------------------------------------------------------------
;	../fb_app_ft.c:469: __bit build_tel(unsigned char objno)
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
;	../fb_app_ft.c:479: repeatflag=objno&0x20;
	mov	a,dpl
	mov	c,acc[5]
	clr	a
	rlc	a
	add	a,#0xff
;	../fb_app_ft.c:480: build_ok = !repeatflag;
	cpl	c
	mov	b0,c
;	../fb_app_ft.c:481: for (n=3;n<(rsin[1]-2);n++) telegramm[n]=rsin[n+6];
	mov	r7,#0x03
00101$:
	mov	r5,(_rsin + 0x0001)
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xFE
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	a,r7
	add	a,#_telegramm
	mov	r1,a
	mov	a,#0x06
	add	a,r7
	add	a,#_rsin
	mov	r0,a
	mov	ar6,@r0
	mov	@r1,ar6
	inc	r7
	sjmp	00101$
00104$:
;	../fb_app_ft.c:482: telegramm[0]=0xB0 + (rsin[6] & 0x0F);
	mov	a,#0x0F
	anl	a,(_rsin + 0x0006)
	add	a,#0xB0
	mov	_telegramm,a
;	../fb_app_ft.c:483: telegramm[1]=eeprom[ADDRTAB+1];	// PA high
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_telegramm + 0x0001),r7
;	../fb_app_ft.c:484: telegramm[2]=eeprom[ADDRTAB+2];	// PA low	
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_telegramm + 0x0002),r7
;	../fb_app_ft.c:570: */	return(build_ok);
	mov	c,b0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gapos_in_gat'
;------------------------------------------------------------
;gal                       Allocated to stack - _bp -3
;gah                       Allocated to registers 
;------------------------------------------------------------
;	../fb_app_ft.c:575: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
;	-----------------------------------------
;	 function gapos_in_gat
;	-----------------------------------------
_gapos_in_gat:
	push	_bp
	mov	_bp,sp
;	../fb_app_ft.c:578: return (1);						//GA wird immer wird geackt
	mov	dpl,#0x01
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_pa'
;------------------------------------------------------------
;	../fb_app_ft.c:582: void set_pa(void)
;	-----------------------------------------
;	 function set_pa
;	-----------------------------------------
_set_pa:
;	../fb_app_ft.c:584: while(fb_state!=0);		// warten falls noch gesendet wird
00101$:
	mov	a,_fb_state
	jnz	00101$
;	../fb_app_ft.c:585: EA=0;
	clr	_IEN0_7
;	../fb_app_ft.c:586: FMCON=0x00;				// load command, leert das pageregister
	mov	_FMCON,#0x00
;	../fb_app_ft.c:587: FMADRH=0x1D;
	mov	_FMADRH,#0x1D
;	../fb_app_ft.c:588: FMADRL=ADDRTAB+1;
	mov	_FMADRL,#0x17
;	../fb_app_ft.c:589: FMDATA=telegramm[8];
	mov	_FMDATA,(_telegramm + 0x0008)
;	../fb_app_ft.c:590: FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
	mov	_FMDATA,(_telegramm + 0x0009)
;	../fb_app_ft.c:591: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
	mov	_FMCON,#0x68
;	../fb_app_ft.c:592: EA=1;
	setb	_IEN0_7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_value_req'
;------------------------------------------------------------
;	../fb_app_ft.c:595: void write_value_req(void)
;	-----------------------------------------
;	 function write_value_req
;	-----------------------------------------
_write_value_req:
;	../fb_app_ft.c:598: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_value_req'
;------------------------------------------------------------
;	../fb_app_ft.c:602: void read_value_req(void)
;	-----------------------------------------
;	 function read_value_req
;	-----------------------------------------
_read_value_req:
;	../fb_app_ft.c:605: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_obj_value'
;------------------------------------------------------------
;objno                     Allocated to registers 
;------------------------------------------------------------
;	../fb_app_ft.c:608: unsigned long read_obj_value(unsigned char objno)
;	-----------------------------------------
;	 function read_obj_value
;	-----------------------------------------
_read_obj_value:
;	../fb_app_ft.c:611: return(0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'restart_app'
;------------------------------------------------------------
;	../fb_app_ft.c:615: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
;	-----------------------------------------
;	 function restart_app
;	-----------------------------------------
_restart_app:
;	../fb_app_ft.c:617: P0M1=0;
	mov	_P0M1,#0x00
;	../fb_app_ft.c:618: P0M2=0;
	mov	_P0M2,#0x00
;	../fb_app_ft.c:620: if(eeprom[ADDRTAB+1]==0 && eeprom[ADDRTAB+2]==0) {
	mov	dptr,#(_eeprom + 0x0017)
	clr	a
	movc	a,@a+dptr
	jnz	00102$
	mov	dptr,#(_eeprom + 0x0018)
	clr	a
	movc	a,@a+dptr
	jnz	00102$
;	../fb_app_ft.c:621: telegramm[8]=0x11;
	mov	(_telegramm + 0x0008),#0x11
;	../fb_app_ft.c:622: telegramm[9]=0xFF;
	mov	(_telegramm + 0x0009),#0xFF
;	../fb_app_ft.c:623: set_pa();
	lcall	_set_pa
00102$:
;	../fb_app_ft.c:627: ft_rs_init();			// serielle Schnittstelle initialisieren für FT1.2
	lcall	_ft_rs_init
;	../fb_app_ft.c:628: rsinpos=0;
	mov	_rsinpos,#0x00
;	../fb_app_ft.c:629: ES=1;					// enable serial interrupt
	setb	_IEN0_4
;	../fb_app_ft.c:632: switch_mode=0x00;		// normal mode
	mov	_switch_mode,#0x00
;	../fb_app_ft.c:633: fcb=0;
	clr	_fcb
;	../fb_app_ft.c:634: property_5=0x01;
	mov	_property_5,#0x01
;	../fb_app_ft.c:635: transparency=1;	// auch fremde Gruppentelegramme werden verarbeitet
	setb	_transparency
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
