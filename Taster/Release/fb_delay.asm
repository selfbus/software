;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
; This file was generated Fri Jul 08 06:33:15 2011
;--------------------------------------------------------
	.module fb_delay
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clear_delay_record
	.globl _write_delay_record
	.globl _delrec
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_delrec::
	.ds 32
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
;Allocation info for local variables in function 'write_delay_record'
;------------------------------------------------------------
;delay_state               Allocated to stack - offset -3
;delay_target              Allocated to stack - offset -7
;objno                     Allocated to registers r2 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:34: void write_delay_record(unsigned char objno, unsigned char delay_state, long delay_target)
;	-----------------------------------------
;	 function write_delay_record
;	-----------------------------------------
_write_delay_record:
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
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:36: delrec[objno*4]=delay_state;
	mov	a,dpl
	add	a,acc
	add	a,acc
	mov	r2,a
	add	a,#_delrec
	mov	r0,a
	mov	r1,_bp
	dec	r1
	dec	r1
	dec	r1
	mov	a,@r1
	mov	@r0,a
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:37: delrec[objno*4+1]=delay_target>>16;
	mov	a,r2
	inc	a
	add	a,#_delrec
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	inc	r1
	inc	r1
	mov	ar3,@r1
	mov	@r0,ar3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:38: delrec[objno*4+2]=delay_target>>8;
	mov	a,#0x02
	add	a,r2
	add	a,#_delrec
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	inc	r1
	mov	ar3,@r1
	mov	@r0,ar3
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:39: delrec[objno*4+3]=delay_target;
	mov	a,#0x03
	add	a,r2
	add	a,#_delrec
	mov	r0,a
	mov	a,_bp
	add	a,#0xf9
	mov	r1,a
	mov	ar2,@r1
	mov	@r0,ar2
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_delay_record'
;------------------------------------------------------------
;objno                     Allocated to registers r2 
;------------------------------------------------------------
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:49: void clear_delay_record(unsigned char objno)
;	-----------------------------------------
;	 function clear_delay_record
;	-----------------------------------------
_clear_delay_record:
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:51: delrec[objno*4]=0;
	mov	a,dpl
	add	a,acc
	add	a,acc
	mov	r2,a
	add	a,#_delrec
	mov	r0,a
	mov	@r0,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:52: delrec[objno*4+1]=0;
	mov	a,r2
	inc	a
	add	a,#_delrec
	mov	r0,a
	mov	@r0,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:53: delrec[objno*4+2]=0;
	mov	a,#0x02
	add	a,r2
	add	a,#_delrec
	mov	r0,a
	mov	@r0,#0x00
;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:54: delrec[objno*4+3]=0;
	mov	a,#0x03
	add	a,r2
	add	a,#_delrec
	mov	r0,a
	mov	@r0,#0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
