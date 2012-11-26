                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
                              4 ; This file was generated Fri Jul 08 06:33:15 2011
                              5 ;--------------------------------------------------------
                              6 	.module fb_delay
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _clear_delay_record
                             13 	.globl _write_delay_record
                             14 	.globl _delrec
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 	.area RSEG    (DATA)
                             19 ;--------------------------------------------------------
                             20 ; special function bits
                             21 ;--------------------------------------------------------
                             22 	.area RSEG    (DATA)
                             23 ;--------------------------------------------------------
                             24 ; overlayable register banks
                             25 ;--------------------------------------------------------
                             26 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      27 	.ds 8
                             28 ;--------------------------------------------------------
                             29 ; internal ram data
                             30 ;--------------------------------------------------------
                             31 	.area DSEG    (DATA)
   0023                      32 _delrec::
   0023                      33 	.ds 32
                             34 ;--------------------------------------------------------
                             35 ; overlayable items in internal ram 
                             36 ;--------------------------------------------------------
                             37 	.area OSEG    (OVR,DATA)
                             38 ;--------------------------------------------------------
                             39 ; indirectly addressable internal ram data
                             40 ;--------------------------------------------------------
                             41 	.area ISEG    (DATA)
                             42 ;--------------------------------------------------------
                             43 ; absolute internal ram data
                             44 ;--------------------------------------------------------
                             45 	.area IABS    (ABS,DATA)
                             46 	.area IABS    (ABS,DATA)
                             47 ;--------------------------------------------------------
                             48 ; bit data
                             49 ;--------------------------------------------------------
                             50 	.area BSEG    (BIT)
                             51 ;--------------------------------------------------------
                             52 ; paged external ram data
                             53 ;--------------------------------------------------------
                             54 	.area PSEG    (PAG,XDATA)
                             55 ;--------------------------------------------------------
                             56 ; external ram data
                             57 ;--------------------------------------------------------
                             58 	.area XSEG    (XDATA)
                             59 ;--------------------------------------------------------
                             60 ; absolute external ram data
                             61 ;--------------------------------------------------------
                             62 	.area XABS    (ABS,XDATA)
                             63 ;--------------------------------------------------------
                             64 ; external initialized ram data
                             65 ;--------------------------------------------------------
                             66 	.area XISEG   (XDATA)
                             67 	.area HOME    (CODE)
                             68 	.area GSINIT0 (CODE)
                             69 	.area GSINIT1 (CODE)
                             70 	.area GSINIT2 (CODE)
                             71 	.area GSINIT3 (CODE)
                             72 	.area GSINIT4 (CODE)
                             73 	.area GSINIT5 (CODE)
                             74 	.area GSINIT  (CODE)
                             75 	.area GSFINAL (CODE)
                             76 	.area CSEG    (CODE)
                             77 ;--------------------------------------------------------
                             78 ; global & static initialisations
                             79 ;--------------------------------------------------------
                             80 	.area HOME    (CODE)
                             81 	.area GSINIT  (CODE)
                             82 	.area GSFINAL (CODE)
                             83 	.area GSINIT  (CODE)
                             84 ;--------------------------------------------------------
                             85 ; Home
                             86 ;--------------------------------------------------------
                             87 	.area HOME    (CODE)
                             88 	.area HOME    (CODE)
                             89 ;--------------------------------------------------------
                             90 ; code
                             91 ;--------------------------------------------------------
                             92 	.area CSEG    (CODE)
                             93 ;------------------------------------------------------------
                             94 ;Allocation info for local variables in function 'write_delay_record'
                             95 ;------------------------------------------------------------
                             96 ;delay_state               Allocated to stack - offset -3
                             97 ;delay_target              Allocated to stack - offset -7
                             98 ;objno                     Allocated to registers r2 
                             99 ;------------------------------------------------------------
                            100 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:34: void write_delay_record(unsigned char objno, unsigned char delay_state, long delay_target)
                            101 ;	-----------------------------------------
                            102 ;	 function write_delay_record
                            103 ;	-----------------------------------------
   0D33                     104 _write_delay_record:
                    0002    105 	ar2 = 0x02
                    0003    106 	ar3 = 0x03
                    0004    107 	ar4 = 0x04
                    0005    108 	ar5 = 0x05
                    0006    109 	ar6 = 0x06
                    0007    110 	ar7 = 0x07
                    0000    111 	ar0 = 0x00
                    0001    112 	ar1 = 0x01
   0D33 C0 1C               113 	push	_bp
   0D35 85 81 1C            114 	mov	_bp,sp
                            115 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:36: delrec[objno*4]=delay_state;
   0D38 E5 82               116 	mov	a,dpl
   0D3A 25 E0               117 	add	a,acc
   0D3C 25 E0               118 	add	a,acc
   0D3E FA                  119 	mov	r2,a
   0D3F 24 23               120 	add	a,#_delrec
   0D41 F8                  121 	mov	r0,a
   0D42 A9 1C               122 	mov	r1,_bp
   0D44 19                  123 	dec	r1
   0D45 19                  124 	dec	r1
   0D46 19                  125 	dec	r1
   0D47 E7                  126 	mov	a,@r1
   0D48 F6                  127 	mov	@r0,a
                            128 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:37: delrec[objno*4+1]=delay_target>>16;
   0D49 EA                  129 	mov	a,r2
   0D4A 04                  130 	inc	a
   0D4B 24 23               131 	add	a,#_delrec
   0D4D F8                  132 	mov	r0,a
   0D4E E5 1C               133 	mov	a,_bp
   0D50 24 F9               134 	add	a,#0xf9
   0D52 F9                  135 	mov	r1,a
   0D53 09                  136 	inc	r1
   0D54 09                  137 	inc	r1
   0D55 87 03               138 	mov	ar3,@r1
   0D57 A6 03               139 	mov	@r0,ar3
                            140 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:38: delrec[objno*4+2]=delay_target>>8;
   0D59 74 02               141 	mov	a,#0x02
   0D5B 2A                  142 	add	a,r2
   0D5C 24 23               143 	add	a,#_delrec
   0D5E F8                  144 	mov	r0,a
   0D5F E5 1C               145 	mov	a,_bp
   0D61 24 F9               146 	add	a,#0xf9
   0D63 F9                  147 	mov	r1,a
   0D64 09                  148 	inc	r1
   0D65 87 03               149 	mov	ar3,@r1
   0D67 A6 03               150 	mov	@r0,ar3
                            151 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:39: delrec[objno*4+3]=delay_target;
   0D69 74 03               152 	mov	a,#0x03
   0D6B 2A                  153 	add	a,r2
   0D6C 24 23               154 	add	a,#_delrec
   0D6E F8                  155 	mov	r0,a
   0D6F E5 1C               156 	mov	a,_bp
   0D71 24 F9               157 	add	a,#0xf9
   0D73 F9                  158 	mov	r1,a
   0D74 87 02               159 	mov	ar2,@r1
   0D76 A6 02               160 	mov	@r0,ar2
   0D78 D0 1C               161 	pop	_bp
   0D7A 22                  162 	ret
                            163 ;------------------------------------------------------------
                            164 ;Allocation info for local variables in function 'clear_delay_record'
                            165 ;------------------------------------------------------------
                            166 ;objno                     Allocated to registers r2 
                            167 ;------------------------------------------------------------
                            168 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:49: void clear_delay_record(unsigned char objno)
                            169 ;	-----------------------------------------
                            170 ;	 function clear_delay_record
                            171 ;	-----------------------------------------
   0D7B                     172 _clear_delay_record:
                            173 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:51: delrec[objno*4]=0;
   0D7B E5 82               174 	mov	a,dpl
   0D7D 25 E0               175 	add	a,acc
   0D7F 25 E0               176 	add	a,acc
   0D81 FA                  177 	mov	r2,a
   0D82 24 23               178 	add	a,#_delrec
   0D84 F8                  179 	mov	r0,a
   0D85 76 00               180 	mov	@r0,#0x00
                            181 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:52: delrec[objno*4+1]=0;
   0D87 EA                  182 	mov	a,r2
   0D88 04                  183 	inc	a
   0D89 24 23               184 	add	a,#_delrec
   0D8B F8                  185 	mov	r0,a
   0D8C 76 00               186 	mov	@r0,#0x00
                            187 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:53: delrec[objno*4+2]=0;
   0D8E 74 02               188 	mov	a,#0x02
   0D90 2A                  189 	add	a,r2
   0D91 24 23               190 	add	a,#_delrec
   0D93 F8                  191 	mov	r0,a
   0D94 76 00               192 	mov	@r0,#0x00
                            193 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_delay.c:54: delrec[objno*4+3]=0;
   0D96 74 03               194 	mov	a,#0x03
   0D98 2A                  195 	add	a,r2
   0D99 24 23               196 	add	a,#_delrec
   0D9B F8                  197 	mov	r0,a
   0D9C 76 00               198 	mov	@r0,#0x00
   0D9E 22                  199 	ret
                            200 	.area CSEG    (CODE)
                            201 	.area CONST   (CODE)
                            202 	.area XINIT   (CODE)
                            203 	.area CABS    (ABS,CODE)
