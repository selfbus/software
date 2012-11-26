                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Fri Oct 19 23:17:24 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_rs
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _baud
                             13 	.globl _ga_db
                             14 	.globl _echo
                             15 	.globl _pa_l
                             16 	.globl _pa_h
                             17 	.globl _fm
                             18 	.globl _rs_send_s
                             19 	.globl _rs_send
                             20 	.globl _rs_send_dec
                             21 	.globl _P3_1
                             22 	.globl _P3_0
                             23 	.globl _P1_7
                             24 	.globl _P1_6
                             25 	.globl _P1_5
                             26 	.globl _P1_4
                             27 	.globl _P1_3
                             28 	.globl _P1_2
                             29 	.globl _P1_1
                             30 	.globl _P1_0
                             31 	.globl _P0_7
                             32 	.globl _P0_6
                             33 	.globl _P0_5
                             34 	.globl _P0_4
                             35 	.globl _P0_3
                             36 	.globl _P0_2
                             37 	.globl _P0_1
                             38 	.globl _P0_0
                             39 	.globl _I2CON_0
                             40 	.globl _I2CON_2
                             41 	.globl _I2CON_3
                             42 	.globl _I2CON_4
                             43 	.globl _I2CON_5
                             44 	.globl _I2CON_6
                             45 	.globl _SCON_7
                             46 	.globl _SCON_6
                             47 	.globl _SCON_5
                             48 	.globl _SCON_4
                             49 	.globl _SCON_3
                             50 	.globl _SCON_2
                             51 	.globl _SCON_1
                             52 	.globl _SCON_0
                             53 	.globl _IP0_0
                             54 	.globl _IP0_1
                             55 	.globl _IP0_2
                             56 	.globl _IP0_3
                             57 	.globl _IP0_4
                             58 	.globl _IP0_5
                             59 	.globl _IP0_6
                             60 	.globl _IP1_0
                             61 	.globl _IP1_1
                             62 	.globl _IP1_2
                             63 	.globl _IP1_6
                             64 	.globl _IEN1_0
                             65 	.globl _IEN1_1
                             66 	.globl _IEN1_2
                             67 	.globl _IEN0_0
                             68 	.globl _IEN0_1
                             69 	.globl _IEN0_2
                             70 	.globl _IEN0_3
                             71 	.globl _IEN0_4
                             72 	.globl _IEN0_5
                             73 	.globl _IEN0_6
                             74 	.globl _IEN0_7
                             75 	.globl _TCON_0
                             76 	.globl _TCON_1
                             77 	.globl _TCON_2
                             78 	.globl _TCON_3
                             79 	.globl _TCON_4
                             80 	.globl _TCON_5
                             81 	.globl _TCON_6
                             82 	.globl _TCON_7
                             83 	.globl _PSW_7
                             84 	.globl _PSW_6
                             85 	.globl _PSW_5
                             86 	.globl _PSW_4
                             87 	.globl _PSW_3
                             88 	.globl _PSW_2
                             89 	.globl _PSW_1
                             90 	.globl _PSW_0
                             91 	.globl _IEN1
                             92 	.globl _IP0H
                             93 	.globl _WFEED2
                             94 	.globl _WFEED1
                             95 	.globl _WDL
                             96 	.globl _WDCON
                             97 	.globl _TRIM
                             98 	.globl _TAMOD
                             99 	.globl _SSTAT
                            100 	.globl _RTCL
                            101 	.globl _RTCH
                            102 	.globl _RTCCON
                            103 	.globl _RSTSRC
                            104 	.globl _PT0AD
                            105 	.globl _PCONA
                            106 	.globl _P3M2
                            107 	.globl _P3M1
                            108 	.globl _P1M2
                            109 	.globl _P1M1
                            110 	.globl _P0M2
                            111 	.globl _P0M1
                            112 	.globl _KBPATN
                            113 	.globl _KBMASK
                            114 	.globl _KBCON
                            115 	.globl _IP1H
                            116 	.globl _IP1
                            117 	.globl _I2STAT
                            118 	.globl _I2SCLL
                            119 	.globl _I2SCLH
                            120 	.globl _I2DAT
                            121 	.globl _I2CON
                            122 	.globl _I2ADR
                            123 	.globl _FMDATA
                            124 	.globl _FMCON
                            125 	.globl _FMADRL
                            126 	.globl _FMADRH
                            127 	.globl _DIVM
                            128 	.globl _CMP2
                            129 	.globl _CMP1
                            130 	.globl _BRGCON
                            131 	.globl _BRGR1
                            132 	.globl _BRGR0
                            133 	.globl _SADEN
                            134 	.globl _SADDR
                            135 	.globl _AUXR1
                            136 	.globl _SBUF
                            137 	.globl _SCON
                            138 	.globl _IP0
                            139 	.globl _IEN0
                            140 	.globl _TH1
                            141 	.globl _TH0
                            142 	.globl _TL1
                            143 	.globl _TL0
                            144 	.globl _TMOD
                            145 	.globl _TCON
                            146 	.globl _PCON
                            147 	.globl _DPH
                            148 	.globl _DPL
                            149 	.globl _SP
                            150 	.globl _B
                            151 	.globl _ACC
                            152 	.globl _PSW
                            153 	.globl _P3
                            154 	.globl _P1
                            155 	.globl _P0
                            156 	.globl _rxledcount
                            157 	.globl _eibledcount
                            158 	.globl _ledcount
                            159 	.globl _pa_tmp
                            160 	.globl _groupadr
                            161 	.globl _rsinpos
                            162 	.globl _rsin
                            163 	.globl _build_tel
                            164 	.globl _gapos_in_gat
                            165 	.globl _write_value_req
                            166 	.globl _read_value_req
                            167 	.globl _save_ga
                            168 	.globl _tel_header
                            169 	.globl _convert_adr
                            170 	.globl _equal_pos
                            171 	.globl _serial_int
                            172 	.globl _send_ok
                            173 	.globl _set_filtermode
                            174 	.globl _restart_app
                            175 ;--------------------------------------------------------
                            176 ; special function registers
                            177 ;--------------------------------------------------------
                            178 	.area RSEG    (ABS,DATA)
   0000                     179 	.org 0x0000
                    0080    180 _P0	=	0x0080
                    0090    181 _P1	=	0x0090
                    00B0    182 _P3	=	0x00b0
                    00D0    183 _PSW	=	0x00d0
                    00E0    184 _ACC	=	0x00e0
                    00F0    185 _B	=	0x00f0
                    0081    186 _SP	=	0x0081
                    0082    187 _DPL	=	0x0082
                    0083    188 _DPH	=	0x0083
                    0087    189 _PCON	=	0x0087
                    0088    190 _TCON	=	0x0088
                    0089    191 _TMOD	=	0x0089
                    008A    192 _TL0	=	0x008a
                    008B    193 _TL1	=	0x008b
                    008C    194 _TH0	=	0x008c
                    008D    195 _TH1	=	0x008d
                    00A8    196 _IEN0	=	0x00a8
                    00B8    197 _IP0	=	0x00b8
                    0098    198 _SCON	=	0x0098
                    0099    199 _SBUF	=	0x0099
                    00A2    200 _AUXR1	=	0x00a2
                    00A9    201 _SADDR	=	0x00a9
                    00B9    202 _SADEN	=	0x00b9
                    00BE    203 _BRGR0	=	0x00be
                    00BF    204 _BRGR1	=	0x00bf
                    00BD    205 _BRGCON	=	0x00bd
                    00AC    206 _CMP1	=	0x00ac
                    00AD    207 _CMP2	=	0x00ad
                    0095    208 _DIVM	=	0x0095
                    00E7    209 _FMADRH	=	0x00e7
                    00E6    210 _FMADRL	=	0x00e6
                    00E4    211 _FMCON	=	0x00e4
                    00E5    212 _FMDATA	=	0x00e5
                    00DB    213 _I2ADR	=	0x00db
                    00D8    214 _I2CON	=	0x00d8
                    00DA    215 _I2DAT	=	0x00da
                    00DD    216 _I2SCLH	=	0x00dd
                    00DC    217 _I2SCLL	=	0x00dc
                    00D9    218 _I2STAT	=	0x00d9
                    00F8    219 _IP1	=	0x00f8
                    00F7    220 _IP1H	=	0x00f7
                    0094    221 _KBCON	=	0x0094
                    0086    222 _KBMASK	=	0x0086
                    0093    223 _KBPATN	=	0x0093
                    0084    224 _P0M1	=	0x0084
                    0085    225 _P0M2	=	0x0085
                    0091    226 _P1M1	=	0x0091
                    0092    227 _P1M2	=	0x0092
                    00B1    228 _P3M1	=	0x00b1
                    00B2    229 _P3M2	=	0x00b2
                    00B5    230 _PCONA	=	0x00b5
                    00F6    231 _PT0AD	=	0x00f6
                    00DF    232 _RSTSRC	=	0x00df
                    00D1    233 _RTCCON	=	0x00d1
                    00D2    234 _RTCH	=	0x00d2
                    00D3    235 _RTCL	=	0x00d3
                    00BA    236 _SSTAT	=	0x00ba
                    008F    237 _TAMOD	=	0x008f
                    0096    238 _TRIM	=	0x0096
                    00A7    239 _WDCON	=	0x00a7
                    00C1    240 _WDL	=	0x00c1
                    00C2    241 _WFEED1	=	0x00c2
                    00C3    242 _WFEED2	=	0x00c3
                    00B7    243 _IP0H	=	0x00b7
                    00E8    244 _IEN1	=	0x00e8
                            245 ;--------------------------------------------------------
                            246 ; special function bits
                            247 ;--------------------------------------------------------
                            248 	.area RSEG    (ABS,DATA)
   0000                     249 	.org 0x0000
                    00D0    250 _PSW_0	=	0x00d0
                    00D1    251 _PSW_1	=	0x00d1
                    00D2    252 _PSW_2	=	0x00d2
                    00D3    253 _PSW_3	=	0x00d3
                    00D4    254 _PSW_4	=	0x00d4
                    00D5    255 _PSW_5	=	0x00d5
                    00D6    256 _PSW_6	=	0x00d6
                    00D7    257 _PSW_7	=	0x00d7
                    008F    258 _TCON_7	=	0x008f
                    008E    259 _TCON_6	=	0x008e
                    008D    260 _TCON_5	=	0x008d
                    008C    261 _TCON_4	=	0x008c
                    008B    262 _TCON_3	=	0x008b
                    008A    263 _TCON_2	=	0x008a
                    0089    264 _TCON_1	=	0x0089
                    0088    265 _TCON_0	=	0x0088
                    00AF    266 _IEN0_7	=	0x00af
                    00AE    267 _IEN0_6	=	0x00ae
                    00AD    268 _IEN0_5	=	0x00ad
                    00AC    269 _IEN0_4	=	0x00ac
                    00AB    270 _IEN0_3	=	0x00ab
                    00AA    271 _IEN0_2	=	0x00aa
                    00A9    272 _IEN0_1	=	0x00a9
                    00A8    273 _IEN0_0	=	0x00a8
                    00EA    274 _IEN1_2	=	0x00ea
                    00E9    275 _IEN1_1	=	0x00e9
                    00E8    276 _IEN1_0	=	0x00e8
                    00FE    277 _IP1_6	=	0x00fe
                    00FA    278 _IP1_2	=	0x00fa
                    00F9    279 _IP1_1	=	0x00f9
                    00F8    280 _IP1_0	=	0x00f8
                    00BE    281 _IP0_6	=	0x00be
                    00BD    282 _IP0_5	=	0x00bd
                    00BC    283 _IP0_4	=	0x00bc
                    00BB    284 _IP0_3	=	0x00bb
                    00BA    285 _IP0_2	=	0x00ba
                    00B9    286 _IP0_1	=	0x00b9
                    00B8    287 _IP0_0	=	0x00b8
                    0098    288 _SCON_0	=	0x0098
                    0099    289 _SCON_1	=	0x0099
                    009A    290 _SCON_2	=	0x009a
                    009B    291 _SCON_3	=	0x009b
                    009C    292 _SCON_4	=	0x009c
                    009D    293 _SCON_5	=	0x009d
                    009E    294 _SCON_6	=	0x009e
                    009F    295 _SCON_7	=	0x009f
                    00DE    296 _I2CON_6	=	0x00de
                    00DD    297 _I2CON_5	=	0x00dd
                    00DC    298 _I2CON_4	=	0x00dc
                    00DB    299 _I2CON_3	=	0x00db
                    00DA    300 _I2CON_2	=	0x00da
                    00D8    301 _I2CON_0	=	0x00d8
                    0080    302 _P0_0	=	0x0080
                    0081    303 _P0_1	=	0x0081
                    0082    304 _P0_2	=	0x0082
                    0083    305 _P0_3	=	0x0083
                    0084    306 _P0_4	=	0x0084
                    0085    307 _P0_5	=	0x0085
                    0086    308 _P0_6	=	0x0086
                    0087    309 _P0_7	=	0x0087
                    0090    310 _P1_0	=	0x0090
                    0091    311 _P1_1	=	0x0091
                    0092    312 _P1_2	=	0x0092
                    0093    313 _P1_3	=	0x0093
                    0094    314 _P1_4	=	0x0094
                    0095    315 _P1_5	=	0x0095
                    0096    316 _P1_6	=	0x0096
                    0097    317 _P1_7	=	0x0097
                    00B0    318 _P3_0	=	0x00b0
                    00B1    319 _P3_1	=	0x00b1
                            320 ;--------------------------------------------------------
                            321 ; overlayable register banks
                            322 ;--------------------------------------------------------
                            323 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     324 	.ds 8
                            325 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     326 	.ds 8
                            327 ;--------------------------------------------------------
                            328 ; overlayable bit register bank
                            329 ;--------------------------------------------------------
                            330 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     331 bits:
   0023                     332 	.ds 1
                    8000    333 	b0 = bits[0]
                    8100    334 	b1 = bits[1]
                    8200    335 	b2 = bits[2]
                    8300    336 	b3 = bits[3]
                    8400    337 	b4 = bits[4]
                    8500    338 	b5 = bits[5]
                    8600    339 	b6 = bits[6]
                    8700    340 	b7 = bits[7]
                            341 ;--------------------------------------------------------
                            342 ; internal ram data
                            343 ;--------------------------------------------------------
                            344 	.area DSEG    (DATA)
   0024                     345 _rsin::
   0024                     346 	.ds 30
   0042                     347 _rsinpos::
   0042                     348 	.ds 1
   0043                     349 _groupadr::
   0043                     350 	.ds 2
   0045                     351 _pa_tmp::
   0045                     352 	.ds 2
   0047                     353 _ledcount::
   0047                     354 	.ds 1
   0048                     355 _eibledcount::
   0048                     356 	.ds 1
   0049                     357 _rxledcount::
   0049                     358 	.ds 1
                            359 ;--------------------------------------------------------
                            360 ; overlayable items in internal ram 
                            361 ;--------------------------------------------------------
                            362 ;--------------------------------------------------------
                            363 ; indirectly addressable internal ram data
                            364 ;--------------------------------------------------------
                            365 	.area ISEG    (DATA)
                            366 ;--------------------------------------------------------
                            367 ; absolute internal ram data
                            368 ;--------------------------------------------------------
                            369 	.area IABS    (ABS,DATA)
                            370 	.area IABS    (ABS,DATA)
                            371 ;--------------------------------------------------------
                            372 ; bit data
                            373 ;--------------------------------------------------------
                            374 	.area BSEG    (BIT)
                            375 ;--------------------------------------------------------
                            376 ; paged external ram data
                            377 ;--------------------------------------------------------
                            378 	.area PSEG    (PAG,XDATA)
                            379 ;--------------------------------------------------------
                            380 ; external ram data
                            381 ;--------------------------------------------------------
                            382 	.area XSEG    (XDATA)
                            383 ;--------------------------------------------------------
                            384 ; absolute external ram data
                            385 ;--------------------------------------------------------
                            386 	.area XABS    (ABS,XDATA)
                            387 ;--------------------------------------------------------
                            388 ; external initialized ram data
                            389 ;--------------------------------------------------------
                            390 	.area XISEG   (XDATA)
                            391 	.area HOME    (CODE)
                            392 	.area GSINIT0 (CODE)
                            393 	.area GSINIT1 (CODE)
                            394 	.area GSINIT2 (CODE)
                            395 	.area GSINIT3 (CODE)
                            396 	.area GSINIT4 (CODE)
                            397 	.area GSINIT5 (CODE)
                            398 	.area GSINIT  (CODE)
                            399 	.area GSFINAL (CODE)
                            400 	.area CSEG    (CODE)
                            401 ;--------------------------------------------------------
                            402 ; global & static initialisations
                            403 ;--------------------------------------------------------
                            404 	.area HOME    (CODE)
                            405 	.area GSINIT  (CODE)
                            406 	.area GSFINAL (CODE)
                            407 	.area GSINIT  (CODE)
                            408 ;	../fb_app_rs.c:26: unsigned int groupadr=0,pa_tmp;
   0084 E4                  409 	clr	a
   0085 F5 43               410 	mov	_groupadr,a
   0087 F5 44               411 	mov	(_groupadr + 1),a
                            412 ;--------------------------------------------------------
                            413 ; Home
                            414 ;--------------------------------------------------------
                            415 	.area HOME    (CODE)
                            416 	.area HOME    (CODE)
                            417 ;--------------------------------------------------------
                            418 ; code
                            419 ;--------------------------------------------------------
                            420 	.area CSEG    (CODE)
                            421 ;------------------------------------------------------------
                            422 ;Allocation info for local variables in function 'build_tel'
                            423 ;------------------------------------------------------------
                            424 ;objno                     Allocated to registers r7 
                            425 ;build_ok                  Allocated to registers 
                            426 ;value                     Allocated to stack - _bp +1
                            427 ;value_pos                 Allocated to registers r5 r4 
                            428 ;eis5temp                  Allocated to registers r2 r3 
                            429 ;d                         Allocated to stack - _bp +3
                            430 ;exp                       Allocated to registers r5 r4 
                            431 ;temp                      Allocated to stack - _bp +5
                            432 ;day                       Allocated to registers r6 
                            433 ;repeatflag                Allocated to registers b0 
                            434 ;sloc0                     Allocated to stack - _bp +9
                            435 ;sloc1                     Allocated to stack - _bp +20
                            436 ;sloc2                     Allocated to stack - _bp +10
                            437 ;sloc3                     Allocated to stack - _bp +11
                            438 ;sloc4                     Allocated to stack - _bp +25
                            439 ;------------------------------------------------------------
                            440 ;	../fb_app_rs.c:50: __bit build_tel(unsigned char objno)
                            441 ;	-----------------------------------------
                            442 ;	 function build_tel
                            443 ;	-----------------------------------------
   008C                     444 _build_tel:
                    0007    445 	ar7 = 0x07
                    0006    446 	ar6 = 0x06
                    0005    447 	ar5 = 0x05
                    0004    448 	ar4 = 0x04
                    0003    449 	ar3 = 0x03
                    0002    450 	ar2 = 0x02
                    0001    451 	ar1 = 0x01
                    0000    452 	ar0 = 0x00
   008C C0 10               453 	push	_bp
   008E E5 81               454 	mov	a,sp
   0090 F5 10               455 	mov	_bp,a
   0092 24 0C               456 	add	a,#0x0C
   0094 F5 81               457 	mov	sp,a
   0096 AF 82               458 	mov	r7,dpl
                            459 ;	../fb_app_rs.c:59: unsigned char day=0;//, length;
   0098 7E 00               460 	mov	r6,#0x00
                            461 ;	../fb_app_rs.c:63: repeatflag=objno&0x20;
   009A EF                  462 	mov	a,r7
   009B A2 E5               463 	mov	c,acc[5]
   009D E4                  464 	clr	a
   009E 33                  465 	rlc	a
   009F 24 FF               466 	add	a,#0xff
   00A1 92 18               467 	mov	b0,c
                            468 ;	../fb_app_rs.c:64: groupadr=convert_adr(6);
   00A3 75 82 06            469 	mov	dpl,#0x06
   00A6 C0 07               470 	push	ar7
   00A8 C0 06               471 	push	ar6
   00AA C0 23               472 	push	bits
   00AC 12 09 EA            473 	lcall	_convert_adr
   00AF 85 82 43            474 	mov	_groupadr,dpl
   00B2 85 83 44            475 	mov	(_groupadr + 1),dph
   00B5 D0 23               476 	pop	bits
                            477 ;	../fb_app_rs.c:65: value_pos=equal_pos()+1;
   00B7 C0 23               478 	push	bits
   00B9 12 0A F6            479 	lcall	_equal_pos
   00BC AD 82               480 	mov	r5,dpl
   00BE D0 23               481 	pop	bits
   00C0 D0 06               482 	pop	ar6
   00C2 D0 07               483 	pop	ar7
   00C4 7C 00               484 	mov	r4,#0x00
   00C6 0D                  485 	inc	r5
   00C7 BD 00 01            486 	cjne	r5,#0x00,00205$
   00CA 0C                  487 	inc	r4
   00CB                     488 00205$:
                            489 ;	../fb_app_rs.c:66: switch (objno)// entspricht in der rs soft dem eis type.
   00CB BF 01 02            490 	cjne	r7,#0x01,00206$
   00CE 80 2C               491 	sjmp	00101$
   00D0                     492 00206$:
   00D0 BF 02 02            493 	cjne	r7,#0x02,00207$
   00D3 80 64               494 	sjmp	00105$
   00D5                     495 00207$:
   00D5 BF 03 03            496 	cjne	r7,#0x03,00208$
   00D8 02 01 93            497 	ljmp	00109$
   00DB                     498 00208$:
   00DB BF 04 03            499 	cjne	r7,#0x04,00209$
   00DE 02 01 A7            500 	ljmp	00110$
   00E1                     501 00209$:
   00E1 BF 05 03            502 	cjne	r7,#0x05,00210$
   00E4 02 02 1C            503 	ljmp	00111$
   00E7                     504 00210$:
   00E7 BF 06 03            505 	cjne	r7,#0x06,00211$
   00EA 02 05 35            506 	ljmp	00131$
   00ED                     507 00211$:
   00ED BF 0F 03            508 	cjne	r7,#0x0F,00212$
   00F0 02 05 CD            509 	ljmp	00135$
   00F3                     510 00212$:
   00F3 BF 10 03            511 	cjne	r7,#0x10,00213$
   00F6 02 06 46            512 	ljmp	00139$
   00F9                     513 00213$:
   00F9 02 06 6C            514 	ljmp	00140$
                            515 ;	../fb_app_rs.c:71: case 1:// EIS1
   00FC                     516 00101$:
                            517 ;	../fb_app_rs.c:72: tel_header(groupadr, 1);
   00FC C0 23               518 	push	bits
   00FE 74 01               519 	mov	a,#0x01
   0100 C0 E0               520 	push	acc
   0102 85 43 82            521 	mov	dpl,_groupadr
   0105 85 44 83            522 	mov	dph,(_groupadr + 1)
   0108 12 09 B8            523 	lcall	_tel_header
   010B 15 81               524 	dec	sp
   010D D0 23               525 	pop	bits
                            526 ;	../fb_app_rs.c:73: if (rsin[rsinpos-2]=='1') value=1;
   010F E5 42               527 	mov	a,_rsinpos
   0111 24 FE               528 	add	a,#0xFE
   0113 24 24               529 	add	a,#_rsin
   0115 F9                  530 	mov	r1,a
   0116 87 07               531 	mov	ar7,@r1
   0118 BF 31 0A            532 	cjne	r7,#0x31,00103$
   011B A8 10               533 	mov	r0,_bp
   011D 08                  534 	inc	r0
   011E 76 01               535 	mov	@r0,#0x01
   0120 08                  536 	inc	r0
   0121 76 00               537 	mov	@r0,#0x00
   0123 80 07               538 	sjmp	00104$
   0125                     539 00103$:
                            540 ;	../fb_app_rs.c:74: else value=0;
   0125 A8 10               541 	mov	r0,_bp
   0127 08                  542 	inc	r0
   0128 E4                  543 	clr	a
   0129 F6                  544 	mov	@r0,a
   012A 08                  545 	inc	r0
   012B F6                  546 	mov	@r0,a
   012C                     547 00104$:
                            548 ;	../fb_app_rs.c:75: telegramm[7]=0x80+value;
   012C A8 10               549 	mov	r0,_bp
   012E 08                  550 	inc	r0
   012F 86 02               551 	mov	ar2,@r0
   0131 74 80               552 	mov	a,#0x80
   0133 2A                  553 	add	a,r2
   0134 F5 58               554 	mov	(_telegramm + 0x0007),a
                            555 ;	../fb_app_rs.c:77: break;	
   0136 02 06 6C            556 	ljmp	00140$
                            557 ;	../fb_app_rs.c:78: case 2:// EIS2
   0139                     558 00105$:
                            559 ;	../fb_app_rs.c:79: tel_header(groupadr, 1);
   0139 C0 23               560 	push	bits
   013B 74 01               561 	mov	a,#0x01
   013D C0 E0               562 	push	acc
   013F 85 43 82            563 	mov	dpl,_groupadr
   0142 85 44 83            564 	mov	dph,(_groupadr + 1)
   0145 12 09 B8            565 	lcall	_tel_header
   0148 15 81               566 	dec	sp
   014A D0 23               567 	pop	bits
                            568 ;	../fb_app_rs.c:80: if (rsin[rsinpos-3]=='u') value=0x88;
   014C E5 42               569 	mov	a,_rsinpos
   014E 24 FD               570 	add	a,#0xFD
   0150 24 24               571 	add	a,#_rsin
   0152 F9                  572 	mov	r1,a
   0153 87 02               573 	mov	ar2,@r1
   0155 BA 75 0A            574 	cjne	r2,#0x75,00107$
   0158 A8 10               575 	mov	r0,_bp
   015A 08                  576 	inc	r0
   015B 76 88               577 	mov	@r0,#0x88
   015D 08                  578 	inc	r0
   015E 76 00               579 	mov	@r0,#0x00
   0160 80 08               580 	sjmp	00108$
   0162                     581 00107$:
                            582 ;	../fb_app_rs.c:81: else value=0x80;
   0162 A8 10               583 	mov	r0,_bp
   0164 08                  584 	inc	r0
   0165 76 80               585 	mov	@r0,#0x80
   0167 08                  586 	inc	r0
   0168 76 00               587 	mov	@r0,#0x00
   016A                     588 00108$:
                            589 ;	../fb_app_rs.c:82: value+=((rsin[rsinpos-2]-48));
   016A E5 42               590 	mov	a,_rsinpos
   016C 24 FE               591 	add	a,#0xFE
   016E 24 24               592 	add	a,#_rsin
   0170 F9                  593 	mov	r1,a
   0171 87 02               594 	mov	ar2,@r1
   0173 7F 00               595 	mov	r7,#0x00
   0175 EA                  596 	mov	a,r2
   0176 24 D0               597 	add	a,#0xD0
   0178 FA                  598 	mov	r2,a
   0179 EF                  599 	mov	a,r7
   017A 34 FF               600 	addc	a,#0xFF
   017C FF                  601 	mov	r7,a
   017D A8 10               602 	mov	r0,_bp
   017F 08                  603 	inc	r0
   0180 EA                  604 	mov	a,r2
   0181 26                  605 	add	a,@r0
   0182 F6                  606 	mov	@r0,a
   0183 EF                  607 	mov	a,r7
   0184 08                  608 	inc	r0
   0185 36                  609 	addc	a,@r0
   0186 F6                  610 	mov	@r0,a
                            611 ;	../fb_app_rs.c:83: telegramm[7]=value&0xFF;
   0187 A8 10               612 	mov	r0,_bp
   0189 08                  613 	inc	r0
   018A 86 03               614 	mov	ar3,@r0
   018C 7F 00               615 	mov	r7,#0x00
   018E 8B 58               616 	mov	(_telegramm + 0x0007),r3
                            617 ;	../fb_app_rs.c:84: break;	
   0190 02 06 6C            618 	ljmp	00140$
                            619 ;	../fb_app_rs.c:85: case 3:// EIS3
   0193                     620 00109$:
                            621 ;	../fb_app_rs.c:86: day=(rsin[value_pos]-48)<<5;
   0193 ED                  622 	mov	a,r5
   0194 24 24               623 	add	a,#_rsin
   0196 F9                  624 	mov	r1,a
   0197 E7                  625 	mov	a,@r1
   0198 24 D0               626 	add	a,#0xD0
   019A FF                  627 	mov	r7,a
   019B C4                  628 	swap	a
   019C 23                  629 	rl	a
   019D 54 E0               630 	anl	a,#0xE0
   019F FE                  631 	mov	r6,a
                            632 ;	../fb_app_rs.c:87: value_pos+=2;
   01A0 74 02               633 	mov	a,#0x02
   01A2 2D                  634 	add	a,r5
   01A3 FD                  635 	mov	r5,a
   01A4 E4                  636 	clr	a
   01A5 3C                  637 	addc	a,r4
   01A6 FC                  638 	mov	r4,a
                            639 ;	../fb_app_rs.c:88: case 4:// EIS4	
   01A7                     640 00110$:
                            641 ;	../fb_app_rs.c:89: tel_header(groupadr, 4);
   01A7 C0 06               642 	push	ar6
   01A9 C0 05               643 	push	ar5
   01AB C0 04               644 	push	ar4
   01AD C0 23               645 	push	bits
   01AF 74 04               646 	mov	a,#0x04
   01B1 C0 E0               647 	push	acc
   01B3 85 43 82            648 	mov	dpl,_groupadr
   01B6 85 44 83            649 	mov	dph,(_groupadr + 1)
   01B9 12 09 B8            650 	lcall	_tel_header
   01BC 15 81               651 	dec	sp
   01BE D0 23               652 	pop	bits
   01C0 D0 04               653 	pop	ar4
   01C2 D0 05               654 	pop	ar5
   01C4 D0 06               655 	pop	ar6
                            656 ;	../fb_app_rs.c:90: telegramm[7]=0x80;
   01C6 75 58 80            657 	mov	(_telegramm + 0x0007),#0x80
                            658 ;	../fb_app_rs.c:91: telegramm[8]=((rsin[value_pos]-48)*10)+(rsin[value_pos+1]-48)+day;
   01C9 ED                  659 	mov	a,r5
   01CA 24 24               660 	add	a,#_rsin
   01CC F9                  661 	mov	r1,a
   01CD E7                  662 	mov	a,@r1
   01CE 24 D0               663 	add	a,#0xD0
   01D0 75 F0 0A            664 	mov	b,#0x0A
   01D3 A4                  665 	mul	ab
   01D4 FF                  666 	mov	r7,a
   01D5 8D 03               667 	mov	ar3,r5
   01D7 EB                  668 	mov	a,r3
   01D8 04                  669 	inc	a
   01D9 24 24               670 	add	a,#_rsin
   01DB F9                  671 	mov	r1,a
   01DC E7                  672 	mov	a,@r1
   01DD FA                  673 	mov	r2,a
   01DE 24 D0               674 	add	a,#0xD0
   01E0 2F                  675 	add	a,r7
   01E1 2E                  676 	add	a,r6
   01E2 F5 59               677 	mov	(_telegramm + 0x0008),a
                            678 ;	../fb_app_rs.c:92: telegramm[9]=((rsin[value_pos+3]-48)*10)+(rsin[value_pos+4]-48);
   01E4 74 03               679 	mov	a,#0x03
   01E6 2B                  680 	add	a,r3
   01E7 24 24               681 	add	a,#_rsin
   01E9 F9                  682 	mov	r1,a
   01EA E7                  683 	mov	a,@r1
   01EB 24 D0               684 	add	a,#0xD0
   01ED 75 F0 0A            685 	mov	b,#0x0A
   01F0 A4                  686 	mul	ab
   01F1 FF                  687 	mov	r7,a
   01F2 74 04               688 	mov	a,#0x04
   01F4 2B                  689 	add	a,r3
   01F5 24 24               690 	add	a,#_rsin
   01F7 F9                  691 	mov	r1,a
   01F8 E7                  692 	mov	a,@r1
   01F9 24 D0               693 	add	a,#0xD0
   01FB 2F                  694 	add	a,r7
   01FC F5 5A               695 	mov	(_telegramm + 0x0009),a
                            696 ;	../fb_app_rs.c:93: telegramm[10]=((rsin[value_pos+6]-48)*10)+(rsin[value_pos+7]-48);
   01FE 74 06               697 	mov	a,#0x06
   0200 2B                  698 	add	a,r3
   0201 24 24               699 	add	a,#_rsin
   0203 F9                  700 	mov	r1,a
   0204 E7                  701 	mov	a,@r1
   0205 24 D0               702 	add	a,#0xD0
   0207 75 F0 0A            703 	mov	b,#0x0A
   020A A4                  704 	mul	ab
   020B FF                  705 	mov	r7,a
   020C 74 07               706 	mov	a,#0x07
   020E 2B                  707 	add	a,r3
   020F 24 24               708 	add	a,#_rsin
   0211 F9                  709 	mov	r1,a
   0212 E7                  710 	mov	a,@r1
   0213 FE                  711 	mov	r6,a
   0214 24 D0               712 	add	a,#0xD0
   0216 2F                  713 	add	a,r7
   0217 F5 5B               714 	mov	(_telegramm + 0x000a),a
                            715 ;	../fb_app_rs.c:94: break;
   0219 02 06 6C            716 	ljmp	00140$
                            717 ;	../fb_app_rs.c:102: */	case 5://
   021C                     718 00111$:
                            719 ;	../fb_app_rs.c:103: tel_header(groupadr, 3);
   021C C0 05               720 	push	ar5
   021E C0 04               721 	push	ar4
   0220 C0 23               722 	push	bits
   0222 74 03               723 	mov	a,#0x03
   0224 C0 E0               724 	push	acc
   0226 85 43 82            725 	mov	dpl,_groupadr
   0229 85 44 83            726 	mov	dph,(_groupadr + 1)
   022C 12 09 B8            727 	lcall	_tel_header
   022F 15 81               728 	dec	sp
   0231 D0 23               729 	pop	bits
   0233 D0 04               730 	pop	ar4
   0235 D0 05               731 	pop	ar5
                            732 ;	../fb_app_rs.c:104: telegramm[7]=0x80;
   0237 75 58 80            733 	mov	(_telegramm + 0x0007),#0x80
                            734 ;	../fb_app_rs.c:106: if(rsin[value_pos]<48 || rsin[value_pos]>57) d=value_pos+1; else d=value_pos;	// falls Vorzeichen
   023A ED                  735 	mov	a,r5
   023B 24 24               736 	add	a,#_rsin
   023D F9                  737 	mov	r1,a
   023E E5 10               738 	mov	a,_bp
   0240 24 09               739 	add	a,#0x09
   0242 F8                  740 	mov	r0,a
   0243 E7                  741 	mov	a,@r1
   0244 F6                  742 	mov	@r0,a
   0245 E5 10               743 	mov	a,_bp
   0247 24 09               744 	add	a,#0x09
   0249 F8                  745 	mov	r0,a
   024A B6 30 00            746 	cjne	@r0,#0x30,00218$
   024D                     747 00218$:
   024D 40 0A               748 	jc	00112$
   024F E5 10               749 	mov	a,_bp
   0251 24 09               750 	add	a,#0x09
   0253 F8                  751 	mov	r0,a
   0254 E6                  752 	mov	a,@r0
   0255 24 C6               753 	add	a,#0xff - 0x39
   0257 50 13               754 	jnc	00113$
   0259                     755 00112$:
   0259 74 01               756 	mov	a,#0x01
   025B 2D                  757 	add	a,r5
   025C FB                  758 	mov	r3,a
   025D E4                  759 	clr	a
   025E 3C                  760 	addc	a,r4
   025F FE                  761 	mov	r6,a
   0260 E5 10               762 	mov	a,_bp
   0262 24 03               763 	add	a,#0x03
   0264 F8                  764 	mov	r0,a
   0265 A6 03               765 	mov	@r0,ar3
   0267 08                  766 	inc	r0
   0268 A6 06               767 	mov	@r0,ar6
   026A 80 0A               768 	sjmp	00114$
   026C                     769 00113$:
   026C E5 10               770 	mov	a,_bp
   026E 24 03               771 	add	a,#0x03
   0270 F8                  772 	mov	r0,a
   0271 A6 05               773 	mov	@r0,ar5
   0273 08                  774 	inc	r0
   0274 A6 04               775 	mov	@r0,ar4
   0276                     776 00114$:
                            777 ;	../fb_app_rs.c:109: temp=0;
   0276 E5 10               778 	mov	a,_bp
   0278 24 05               779 	add	a,#0x05
   027A F8                  780 	mov	r0,a
   027B E4                  781 	clr	a
   027C F6                  782 	mov	@r0,a
   027D 08                  783 	inc	r0
   027E F6                  784 	mov	@r0,a
   027F 08                  785 	inc	r0
   0280 F6                  786 	mov	@r0,a
   0281 08                  787 	inc	r0
   0282 F6                  788 	mov	@r0,a
                            789 ;	../fb_app_rs.c:110: while (d<(rsinpos-1) && rsin[d]!=0x2E && rsin[d]!=0x2C) {
   0283 E5 10               790 	mov	a,_bp
   0285 24 03               791 	add	a,#0x03
   0287 F8                  792 	mov	r0,a
   0288 E5 10               793 	mov	a,_bp
   028A 24 0B               794 	add	a,#0x0b
   028C F9                  795 	mov	r1,a
   028D E6                  796 	mov	a,@r0
   028E F7                  797 	mov	@r1,a
   028F 08                  798 	inc	r0
   0290 09                  799 	inc	r1
   0291 E6                  800 	mov	a,@r0
   0292 F7                  801 	mov	@r1,a
   0293                     802 00118$:
   0293 AD 42               803 	mov	r5,_rsinpos
   0295 7C 00               804 	mov	r4,#0x00
   0297 ED                  805 	mov	a,r5
   0298 24 FF               806 	add	a,#0xFF
   029A FA                  807 	mov	r2,a
   029B EC                  808 	mov	a,r4
   029C 34 FF               809 	addc	a,#0xFF
   029E FB                  810 	mov	r3,a
   029F E5 10               811 	mov	a,_bp
   02A1 24 0B               812 	add	a,#0x0b
   02A3 F8                  813 	mov	r0,a
   02A4 C3                  814 	clr	c
   02A5 E6                  815 	mov	a,@r0
   02A6 9A                  816 	subb	a,r2
   02A7 08                  817 	inc	r0
   02A8 E6                  818 	mov	a,@r0
   02A9 64 80               819 	xrl	a,#0x80
   02AB 8B F0               820 	mov	b,r3
   02AD 63 F0 80            821 	xrl	b,#0x80
   02B0 95 F0               822 	subb	a,b
   02B2 40 03               823 	jc	00221$
   02B4 02 03 52            824 	ljmp	00120$
   02B7                     825 00221$:
   02B7 E5 10               826 	mov	a,_bp
   02B9 24 0B               827 	add	a,#0x0b
   02BB F8                  828 	mov	r0,a
   02BC E6                  829 	mov	a,@r0
   02BD 24 24               830 	add	a,#_rsin
   02BF F9                  831 	mov	r1,a
   02C0 E5 10               832 	mov	a,_bp
   02C2 24 0A               833 	add	a,#0x0a
   02C4 F8                  834 	mov	r0,a
   02C5 E7                  835 	mov	a,@r1
   02C6 F6                  836 	mov	@r0,a
   02C7 E5 10               837 	mov	a,_bp
   02C9 24 0A               838 	add	a,#0x0a
   02CB F8                  839 	mov	r0,a
   02CC B6 2E 03            840 	cjne	@r0,#0x2E,00222$
   02CF 02 03 52            841 	ljmp	00120$
   02D2                     842 00222$:
   02D2 E5 10               843 	mov	a,_bp
   02D4 24 0A               844 	add	a,#0x0a
   02D6 F8                  845 	mov	r0,a
   02D7 B6 2C 02            846 	cjne	@r0,#0x2C,00223$
   02DA 80 76               847 	sjmp	00120$
   02DC                     848 00223$:
                            849 ;	../fb_app_rs.c:111: temp=temp*10;
   02DC C0 23               850 	push	bits
   02DE E5 10               851 	mov	a,_bp
   02E0 24 05               852 	add	a,#0x05
   02E2 F8                  853 	mov	r0,a
   02E3 E6                  854 	mov	a,@r0
   02E4 C0 E0               855 	push	acc
   02E6 08                  856 	inc	r0
   02E7 E6                  857 	mov	a,@r0
   02E8 C0 E0               858 	push	acc
   02EA 08                  859 	inc	r0
   02EB E6                  860 	mov	a,@r0
   02EC C0 E0               861 	push	acc
   02EE 08                  862 	inc	r0
   02EF E6                  863 	mov	a,@r0
   02F0 C0 E0               864 	push	acc
   02F2 90 00 0A            865 	mov	dptr,#(0x0A&0x00ff)
   02F5 E4                  866 	clr	a
   02F6 F5 F0               867 	mov	b,a
   02F8 12 1B 05            868 	lcall	__mullong
   02FB AA 82               869 	mov	r2,dpl
   02FD AB 83               870 	mov	r3,dph
   02FF AE F0               871 	mov	r6,b
   0301 FF                  872 	mov	r7,a
   0302 E5 81               873 	mov	a,sp
   0304 24 FC               874 	add	a,#0xfc
   0306 F5 81               875 	mov	sp,a
   0308 D0 23               876 	pop	bits
   030A E5 10               877 	mov	a,_bp
   030C 24 05               878 	add	a,#0x05
   030E F8                  879 	mov	r0,a
   030F A6 02               880 	mov	@r0,ar2
   0311 08                  881 	inc	r0
   0312 A6 03               882 	mov	@r0,ar3
   0314 08                  883 	inc	r0
   0315 A6 06               884 	mov	@r0,ar6
   0317 08                  885 	inc	r0
   0318 A6 07               886 	mov	@r0,ar7
                            887 ;	../fb_app_rs.c:112: temp=temp+(rsin[d]-48);
   031A E5 10               888 	mov	a,_bp
   031C 24 0A               889 	add	a,#0x0a
   031E F8                  890 	mov	r0,a
   031F 86 03               891 	mov	ar3,@r0
   0321 7F 00               892 	mov	r7,#0x00
   0323 EB                  893 	mov	a,r3
   0324 24 D0               894 	add	a,#0xD0
   0326 FB                  895 	mov	r3,a
   0327 EF                  896 	mov	a,r7
   0328 34 FF               897 	addc	a,#0xFF
   032A FF                  898 	mov	r7,a
   032B 33                  899 	rlc	a
   032C 95 E0               900 	subb	a,acc
   032E FE                  901 	mov	r6,a
   032F FA                  902 	mov	r2,a
   0330 E5 10               903 	mov	a,_bp
   0332 24 05               904 	add	a,#0x05
   0334 F8                  905 	mov	r0,a
   0335 EB                  906 	mov	a,r3
   0336 26                  907 	add	a,@r0
   0337 F6                  908 	mov	@r0,a
   0338 EF                  909 	mov	a,r7
   0339 08                  910 	inc	r0
   033A 36                  911 	addc	a,@r0
   033B F6                  912 	mov	@r0,a
   033C EE                  913 	mov	a,r6
   033D 08                  914 	inc	r0
   033E 36                  915 	addc	a,@r0
   033F F6                  916 	mov	@r0,a
   0340 EA                  917 	mov	a,r2
   0341 08                  918 	inc	r0
   0342 36                  919 	addc	a,@r0
   0343 F6                  920 	mov	@r0,a
                            921 ;	../fb_app_rs.c:113: d++;
   0344 E5 10               922 	mov	a,_bp
   0346 24 0B               923 	add	a,#0x0b
   0348 F8                  924 	mov	r0,a
   0349 06                  925 	inc	@r0
   034A B6 00 02            926 	cjne	@r0,#0x00,00224$
   034D 08                  927 	inc	r0
   034E 06                  928 	inc	@r0
   034F                     929 00224$:
   034F 02 02 93            930 	ljmp	00118$
   0352                     931 00120$:
                            932 ;	../fb_app_rs.c:115: d++;
   0352 E5 10               933 	mov	a,_bp
   0354 24 0B               934 	add	a,#0x0b
   0356 F8                  935 	mov	r0,a
   0357 E5 10               936 	mov	a,_bp
   0359 24 03               937 	add	a,#0x03
   035B F9                  938 	mov	r1,a
   035C 74 01               939 	mov	a,#0x01
   035E 26                  940 	add	a,@r0
   035F F7                  941 	mov	@r1,a
   0360 E4                  942 	clr	a
   0361 08                  943 	inc	r0
   0362 36                  944 	addc	a,@r0
   0363 09                  945 	inc	r1
   0364 F7                  946 	mov	@r1,a
                            947 ;	../fb_app_rs.c:116: temp=temp*10;
   0365 C0 05               948 	push	ar5
   0367 C0 04               949 	push	ar4
   0369 C0 23               950 	push	bits
   036B E5 10               951 	mov	a,_bp
   036D 24 05               952 	add	a,#0x05
   036F F8                  953 	mov	r0,a
   0370 E6                  954 	mov	a,@r0
   0371 C0 E0               955 	push	acc
   0373 08                  956 	inc	r0
   0374 E6                  957 	mov	a,@r0
   0375 C0 E0               958 	push	acc
   0377 08                  959 	inc	r0
   0378 E6                  960 	mov	a,@r0
   0379 C0 E0               961 	push	acc
   037B 08                  962 	inc	r0
   037C E6                  963 	mov	a,@r0
   037D C0 E0               964 	push	acc
   037F 90 00 0A            965 	mov	dptr,#(0x0A&0x00ff)
   0382 E4                  966 	clr	a
   0383 F5 F0               967 	mov	b,a
   0385 12 1B 05            968 	lcall	__mullong
   0388 AA 82               969 	mov	r2,dpl
   038A AB 83               970 	mov	r3,dph
   038C AE F0               971 	mov	r6,b
   038E FF                  972 	mov	r7,a
   038F E5 81               973 	mov	a,sp
   0391 24 FC               974 	add	a,#0xfc
   0393 F5 81               975 	mov	sp,a
   0395 D0 23               976 	pop	bits
   0397 D0 04               977 	pop	ar4
   0399 D0 05               978 	pop	ar5
   039B E5 10               979 	mov	a,_bp
   039D 24 05               980 	add	a,#0x05
   039F F8                  981 	mov	r0,a
   03A0 A6 02               982 	mov	@r0,ar2
   03A2 08                  983 	inc	r0
   03A3 A6 03               984 	mov	@r0,ar3
   03A5 08                  985 	inc	r0
   03A6 A6 06               986 	mov	@r0,ar6
   03A8 08                  987 	inc	r0
   03A9 A6 07               988 	mov	@r0,ar7
                            989 ;	../fb_app_rs.c:117: if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//erste Stelle nach dem Komma
   03AB ED                  990 	mov	a,r5
   03AC 24 FF               991 	add	a,#0xFF
   03AE FE                  992 	mov	r6,a
   03AF EC                  993 	mov	a,r4
   03B0 34 FF               994 	addc	a,#0xFF
   03B2 FF                  995 	mov	r7,a
   03B3 E5 10               996 	mov	a,_bp
   03B5 24 03               997 	add	a,#0x03
   03B7 F8                  998 	mov	r0,a
   03B8 C3                  999 	clr	c
   03B9 E6                 1000 	mov	a,@r0
   03BA 9E                 1001 	subb	a,r6
   03BB 08                 1002 	inc	r0
   03BC E6                 1003 	mov	a,@r0
   03BD 64 80              1004 	xrl	a,#0x80
   03BF 8F F0              1005 	mov	b,r7
   03C1 63 F0 80           1006 	xrl	b,#0x80
   03C4 95 F0              1007 	subb	a,b
   03C6 50 2E              1008 	jnc	00122$
   03C8 E5 10              1009 	mov	a,_bp
   03CA 24 03              1010 	add	a,#0x03
   03CC F8                 1011 	mov	r0,a
   03CD E6                 1012 	mov	a,@r0
   03CE 24 24              1013 	add	a,#_rsin
   03D0 F9                 1014 	mov	r1,a
   03D1 87 07              1015 	mov	ar7,@r1
   03D3 7E 00              1016 	mov	r6,#0x00
   03D5 EF                 1017 	mov	a,r7
   03D6 24 D0              1018 	add	a,#0xD0
   03D8 FF                 1019 	mov	r7,a
   03D9 EE                 1020 	mov	a,r6
   03DA 34 FF              1021 	addc	a,#0xFF
   03DC FE                 1022 	mov	r6,a
   03DD 33                 1023 	rlc	a
   03DE 95 E0              1024 	subb	a,acc
   03E0 FB                 1025 	mov	r3,a
   03E1 FA                 1026 	mov	r2,a
   03E2 E5 10              1027 	mov	a,_bp
   03E4 24 05              1028 	add	a,#0x05
   03E6 F8                 1029 	mov	r0,a
   03E7 EF                 1030 	mov	a,r7
   03E8 26                 1031 	add	a,@r0
   03E9 F6                 1032 	mov	@r0,a
   03EA EE                 1033 	mov	a,r6
   03EB 08                 1034 	inc	r0
   03EC 36                 1035 	addc	a,@r0
   03ED F6                 1036 	mov	@r0,a
   03EE EB                 1037 	mov	a,r3
   03EF 08                 1038 	inc	r0
   03F0 36                 1039 	addc	a,@r0
   03F1 F6                 1040 	mov	@r0,a
   03F2 EA                 1041 	mov	a,r2
   03F3 08                 1042 	inc	r0
   03F4 36                 1043 	addc	a,@r0
   03F5 F6                 1044 	mov	@r0,a
   03F6                    1045 00122$:
                           1046 ;	../fb_app_rs.c:118: d++;
   03F6 E5 10              1047 	mov	a,_bp
   03F8 24 03              1048 	add	a,#0x03
   03FA F8                 1049 	mov	r0,a
   03FB 06                 1050 	inc	@r0
   03FC B6 00 02           1051 	cjne	@r0,#0x00,00226$
   03FF 08                 1052 	inc	r0
   0400 06                 1053 	inc	@r0
   0401                    1054 00226$:
                           1055 ;	../fb_app_rs.c:119: temp=temp*10;
   0401 C0 05              1056 	push	ar5
   0403 C0 04              1057 	push	ar4
   0405 C0 23              1058 	push	bits
   0407 E5 10              1059 	mov	a,_bp
   0409 24 05              1060 	add	a,#0x05
   040B F8                 1061 	mov	r0,a
   040C E6                 1062 	mov	a,@r0
   040D C0 E0              1063 	push	acc
   040F 08                 1064 	inc	r0
   0410 E6                 1065 	mov	a,@r0
   0411 C0 E0              1066 	push	acc
   0413 08                 1067 	inc	r0
   0414 E6                 1068 	mov	a,@r0
   0415 C0 E0              1069 	push	acc
   0417 08                 1070 	inc	r0
   0418 E6                 1071 	mov	a,@r0
   0419 C0 E0              1072 	push	acc
   041B 90 00 0A           1073 	mov	dptr,#(0x0A&0x00ff)
   041E E4                 1074 	clr	a
   041F F5 F0              1075 	mov	b,a
   0421 12 1B 05           1076 	lcall	__mullong
   0424 AA 82              1077 	mov	r2,dpl
   0426 AB 83              1078 	mov	r3,dph
   0428 AE F0              1079 	mov	r6,b
   042A FF                 1080 	mov	r7,a
   042B E5 81              1081 	mov	a,sp
   042D 24 FC              1082 	add	a,#0xfc
   042F F5 81              1083 	mov	sp,a
   0431 D0 23              1084 	pop	bits
   0433 D0 04              1085 	pop	ar4
   0435 D0 05              1086 	pop	ar5
   0437 E5 10              1087 	mov	a,_bp
   0439 24 05              1088 	add	a,#0x05
   043B F8                 1089 	mov	r0,a
   043C A6 02              1090 	mov	@r0,ar2
   043E 08                 1091 	inc	r0
   043F A6 03              1092 	mov	@r0,ar3
   0441 08                 1093 	inc	r0
   0442 A6 06              1094 	mov	@r0,ar6
   0444 08                 1095 	inc	r0
   0445 A6 07              1096 	mov	@r0,ar7
                           1097 ;	../fb_app_rs.c:120: if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//zweite Stelle nach dem Komma gen
   0447 ED                 1098 	mov	a,r5
   0448 24 FF              1099 	add	a,#0xFF
   044A FE                 1100 	mov	r6,a
   044B EC                 1101 	mov	a,r4
   044C 34 FF              1102 	addc	a,#0xFF
   044E FF                 1103 	mov	r7,a
   044F E5 10              1104 	mov	a,_bp
   0451 24 03              1105 	add	a,#0x03
   0453 F8                 1106 	mov	r0,a
   0454 C3                 1107 	clr	c
   0455 E6                 1108 	mov	a,@r0
   0456 9E                 1109 	subb	a,r6
   0457 08                 1110 	inc	r0
   0458 E6                 1111 	mov	a,@r0
   0459 64 80              1112 	xrl	a,#0x80
   045B 8F F0              1113 	mov	b,r7
   045D 63 F0 80           1114 	xrl	b,#0x80
   0460 95 F0              1115 	subb	a,b
   0462 50 2E              1116 	jnc	00167$
   0464 E5 10              1117 	mov	a,_bp
   0466 24 03              1118 	add	a,#0x03
   0468 F8                 1119 	mov	r0,a
   0469 E6                 1120 	mov	a,@r0
   046A 24 24              1121 	add	a,#_rsin
   046C F9                 1122 	mov	r1,a
   046D 87 07              1123 	mov	ar7,@r1
   046F 7E 00              1124 	mov	r6,#0x00
   0471 EF                 1125 	mov	a,r7
   0472 24 D0              1126 	add	a,#0xD0
   0474 FF                 1127 	mov	r7,a
   0475 EE                 1128 	mov	a,r6
   0476 34 FF              1129 	addc	a,#0xFF
   0478 FE                 1130 	mov	r6,a
   0479 33                 1131 	rlc	a
   047A 95 E0              1132 	subb	a,acc
   047C FB                 1133 	mov	r3,a
   047D FA                 1134 	mov	r2,a
   047E E5 10              1135 	mov	a,_bp
   0480 24 05              1136 	add	a,#0x05
   0482 F8                 1137 	mov	r0,a
   0483 EF                 1138 	mov	a,r7
   0484 26                 1139 	add	a,@r0
   0485 F6                 1140 	mov	@r0,a
   0486 EE                 1141 	mov	a,r6
   0487 08                 1142 	inc	r0
   0488 36                 1143 	addc	a,@r0
   0489 F6                 1144 	mov	@r0,a
   048A EB                 1145 	mov	a,r3
   048B 08                 1146 	inc	r0
   048C 36                 1147 	addc	a,@r0
   048D F6                 1148 	mov	@r0,a
   048E EA                 1149 	mov	a,r2
   048F 08                 1150 	inc	r0
   0490 36                 1151 	addc	a,@r0
   0491 F6                 1152 	mov	@r0,a
                           1153 ;	../fb_app_rs.c:123: while(temp > 0x07FF) {
   0492                    1154 00167$:
   0492 7D 00              1155 	mov	r5,#0x00
   0494 7C 00              1156 	mov	r4,#0x00
   0496                    1157 00125$:
   0496 E5 10              1158 	mov	a,_bp
   0498 24 05              1159 	add	a,#0x05
   049A F8                 1160 	mov	r0,a
   049B 08                 1161 	inc	r0
   049C E6                 1162 	mov	a,@r0
   049D 54 F8              1163 	anl	a,#0xF8
   049F 70 08              1164 	jnz	00228$
   04A1 08                 1165 	inc	r0
   04A2 E6                 1166 	mov	a,@r0
   04A3 70 04              1167 	jnz	00228$
   04A5 08                 1168 	inc	r0
   04A6 E6                 1169 	mov	a,@r0
   04A7 60 1E              1170 	jz	00127$
   04A9                    1171 00228$:
                           1172 ;	../fb_app_rs.c:124: temp=temp>>1;
   04A9 E5 10              1173 	mov	a,_bp
   04AB 24 05              1174 	add	a,#0x05
   04AD F8                 1175 	mov	r0,a
   04AE 08                 1176 	inc	r0
   04AF 08                 1177 	inc	r0
   04B0 08                 1178 	inc	r0
   04B1 E6                 1179 	mov	a,@r0
   04B2 C3                 1180 	clr	c
   04B3 13                 1181 	rrc	a
   04B4 F6                 1182 	mov	@r0,a
   04B5 18                 1183 	dec	r0
   04B6 E6                 1184 	mov	a,@r0
   04B7 13                 1185 	rrc	a
   04B8 F6                 1186 	mov	@r0,a
   04B9 18                 1187 	dec	r0
   04BA E6                 1188 	mov	a,@r0
   04BB 13                 1189 	rrc	a
   04BC F6                 1190 	mov	@r0,a
   04BD 18                 1191 	dec	r0
   04BE E6                 1192 	mov	a,@r0
   04BF 13                 1193 	rrc	a
   04C0 F6                 1194 	mov	@r0,a
                           1195 ;	../fb_app_rs.c:125: exp=exp + (0x800);
   04C1 74 08              1196 	mov	a,#0x08
   04C3 2C                 1197 	add	a,r4
   04C4 FC                 1198 	mov	r4,a
   04C5 80 CF              1199 	sjmp	00125$
   04C7                    1200 00127$:
                           1201 ;	../fb_app_rs.c:127: if (rsin[value_pos]=='-') {
   04C7 E5 10              1202 	mov	a,_bp
   04C9 24 09              1203 	add	a,#0x09
   04CB F8                 1204 	mov	r0,a
   04CC B6 2D 3F           1205 	cjne	@r0,#0x2D,00129$
                           1206 ;	../fb_app_rs.c:128: temp=(0x7FF-temp)+1;
   04CF E5 10              1207 	mov	a,_bp
   04D1 24 05              1208 	add	a,#0x05
   04D3 F8                 1209 	mov	r0,a
   04D4 E4                 1210 	clr	a
   04D5 C3                 1211 	clr	c
   04D6 96                 1212 	subb	a,@r0
   04D7 F6                 1213 	mov	@r0,a
   04D8 74 08              1214 	mov	a,#0x08
   04DA 08                 1215 	inc	r0
   04DB 96                 1216 	subb	a,@r0
   04DC F6                 1217 	mov	@r0,a
   04DD E4                 1218 	clr	a
   04DE 08                 1219 	inc	r0
   04DF 96                 1220 	subb	a,@r0
   04E0 F6                 1221 	mov	@r0,a
   04E1 E4                 1222 	clr	a
   04E2 08                 1223 	inc	r0
   04E3 96                 1224 	subb	a,@r0
   04E4 F6                 1225 	mov	@r0,a
                           1226 ;	../fb_app_rs.c:129: eis5temp=temp+exp;
   04E5 8D 02              1227 	mov	ar2,r5
   04E7 EC                 1228 	mov	a,r4
   04E8 FB                 1229 	mov	r3,a
   04E9 33                 1230 	rlc	a
   04EA 95 E0              1231 	subb	a,acc
   04EC FE                 1232 	mov	r6,a
   04ED FF                 1233 	mov	r7,a
   04EE E5 10              1234 	mov	a,_bp
   04F0 24 05              1235 	add	a,#0x05
   04F2 F8                 1236 	mov	r0,a
   04F3 EA                 1237 	mov	a,r2
   04F4 26                 1238 	add	a,@r0
   04F5 FA                 1239 	mov	r2,a
   04F6 EB                 1240 	mov	a,r3
   04F7 08                 1241 	inc	r0
   04F8 36                 1242 	addc	a,@r0
   04F9 FB                 1243 	mov	r3,a
   04FA EE                 1244 	mov	a,r6
   04FB 08                 1245 	inc	r0
   04FC 36                 1246 	addc	a,@r0
   04FD EF                 1247 	mov	a,r7
   04FE 08                 1248 	inc	r0
   04FF 36                 1249 	addc	a,@r0
                           1250 ;	../fb_app_rs.c:130: eis5temp+=0x8000;
   0500 8A 06              1251 	mov	ar6,r2
   0502 8B 07              1252 	mov	ar7,r3
   0504 74 80              1253 	mov	a,#0x80
   0506 2F                 1254 	add	a,r7
   0507 FF                 1255 	mov	r7,a
   0508 8E 02              1256 	mov	ar2,r6
   050A 8F 03              1257 	mov	ar3,r7
   050C 80 1E              1258 	sjmp	00130$
   050E                    1259 00129$:
                           1260 ;	../fb_app_rs.c:132: else eis5temp=temp+exp;
   050E EC                 1261 	mov	a,r4
   050F 33                 1262 	rlc	a
   0510 95 E0              1263 	subb	a,acc
   0512 FF                 1264 	mov	r7,a
   0513 FE                 1265 	mov	r6,a
   0514 E5 10              1266 	mov	a,_bp
   0516 24 05              1267 	add	a,#0x05
   0518 F8                 1268 	mov	r0,a
   0519 ED                 1269 	mov	a,r5
   051A 26                 1270 	add	a,@r0
   051B FD                 1271 	mov	r5,a
   051C EC                 1272 	mov	a,r4
   051D 08                 1273 	inc	r0
   051E 36                 1274 	addc	a,@r0
   051F FC                 1275 	mov	r4,a
   0520 EF                 1276 	mov	a,r7
   0521 08                 1277 	inc	r0
   0522 36                 1278 	addc	a,@r0
   0523 FF                 1279 	mov	r7,a
   0524 EE                 1280 	mov	a,r6
   0525 08                 1281 	inc	r0
   0526 36                 1282 	addc	a,@r0
   0527 FE                 1283 	mov	r6,a
   0528 8D 02              1284 	mov	ar2,r5
   052A 8C 03              1285 	mov	ar3,r4
   052C                    1286 00130$:
                           1287 ;	../fb_app_rs.c:133: telegramm[8]=eis5temp>>8;
   052C 8B 07              1288 	mov	ar7,r3
   052E 8F 59              1289 	mov	(_telegramm + 0x0008),r7
                           1290 ;	../fb_app_rs.c:134: telegramm[9]=eis5temp;		
   0530 8A 5A              1291 	mov	(_telegramm + 0x0009),r2
                           1292 ;	../fb_app_rs.c:135: break;
   0532 02 06 6C           1293 	ljmp	00140$
                           1294 ;	../fb_app_rs.c:136: case 6:// EIS 6
   0535                    1295 00131$:
                           1296 ;	../fb_app_rs.c:137: tel_header(groupadr, 2);
   0535 C0 05              1297 	push	ar5
   0537 C0 04              1298 	push	ar4
   0539 C0 23              1299 	push	bits
   053B 74 02              1300 	mov	a,#0x02
   053D C0 E0              1301 	push	acc
   053F 85 43 82           1302 	mov	dpl,_groupadr
   0542 85 44 83           1303 	mov	dph,(_groupadr + 1)
   0545 12 09 B8           1304 	lcall	_tel_header
   0548 15 81              1305 	dec	sp
   054A D0 23              1306 	pop	bits
   054C D0 04              1307 	pop	ar4
   054E D0 05              1308 	pop	ar5
                           1309 ;	../fb_app_rs.c:138: telegramm[7]=0x80;
   0550 75 58 80           1310 	mov	(_telegramm + 0x0007),#0x80
                           1311 ;	../fb_app_rs.c:140: value=0;
   0553 A8 10              1312 	mov	r0,_bp
   0555 08                 1313 	inc	r0
   0556 E4                 1314 	clr	a
   0557 F6                 1315 	mov	@r0,a
   0558 08                 1316 	inc	r0
   0559 F6                 1317 	mov	@r0,a
                           1318 ;	../fb_app_rs.c:141: d=value_pos;
   055A 8D 06              1319 	mov	ar6,r5
   055C 8C 07              1320 	mov	ar7,r4
                           1321 ;	../fb_app_rs.c:142: while(d<(rsinpos-1)) {
   055E                    1322 00132$:
   055E AA 42              1323 	mov	r2,_rsinpos
   0560 7B 00              1324 	mov	r3,#0x00
   0562 1A                 1325 	dec	r2
   0563 BA FF 01           1326 	cjne	r2,#0xFF,00231$
   0566 1B                 1327 	dec	r3
   0567                    1328 00231$:
   0567 C3                 1329 	clr	c
   0568 EE                 1330 	mov	a,r6
   0569 9A                 1331 	subb	a,r2
   056A EF                 1332 	mov	a,r7
   056B 64 80              1333 	xrl	a,#0x80
   056D 8B F0              1334 	mov	b,r3
   056F 63 F0 80           1335 	xrl	b,#0x80
   0572 95 F0              1336 	subb	a,b
   0574 50 4D              1337 	jnc	00134$
                           1338 ;	../fb_app_rs.c:143: value*=10;
   0576 C0 07              1339 	push	ar7
   0578 C0 06              1340 	push	ar6
   057A C0 23              1341 	push	bits
   057C A8 10              1342 	mov	r0,_bp
   057E 08                 1343 	inc	r0
   057F E6                 1344 	mov	a,@r0
   0580 C0 E0              1345 	push	acc
   0582 08                 1346 	inc	r0
   0583 E6                 1347 	mov	a,@r0
   0584 C0 E0              1348 	push	acc
   0586 90 00 0A           1349 	mov	dptr,#0x000A
   0589 12 1A C7           1350 	lcall	__mulint
   058C AA 82              1351 	mov	r2,dpl
   058E AB 83              1352 	mov	r3,dph
   0590 15 81              1353 	dec	sp
   0592 15 81              1354 	dec	sp
   0594 D0 23              1355 	pop	bits
   0596 D0 06              1356 	pop	ar6
   0598 D0 07              1357 	pop	ar7
   059A A8 10              1358 	mov	r0,_bp
   059C 08                 1359 	inc	r0
   059D A6 02              1360 	mov	@r0,ar2
   059F 08                 1361 	inc	r0
   05A0 A6 03              1362 	mov	@r0,ar3
                           1363 ;	../fb_app_rs.c:144: value+=rsin[d]-48;
   05A2 EE                 1364 	mov	a,r6
   05A3 24 24              1365 	add	a,#_rsin
   05A5 F9                 1366 	mov	r1,a
   05A6 87 03              1367 	mov	ar3,@r1
   05A8 7A 00              1368 	mov	r2,#0x00
   05AA EB                 1369 	mov	a,r3
   05AB 24 D0              1370 	add	a,#0xD0
   05AD FB                 1371 	mov	r3,a
   05AE EA                 1372 	mov	a,r2
   05AF 34 FF              1373 	addc	a,#0xFF
   05B1 FA                 1374 	mov	r2,a
   05B2 A8 10              1375 	mov	r0,_bp
   05B4 08                 1376 	inc	r0
   05B5 EB                 1377 	mov	a,r3
   05B6 26                 1378 	add	a,@r0
   05B7 F6                 1379 	mov	@r0,a
   05B8 EA                 1380 	mov	a,r2
   05B9 08                 1381 	inc	r0
   05BA 36                 1382 	addc	a,@r0
   05BB F6                 1383 	mov	@r0,a
                           1384 ;	../fb_app_rs.c:145: d++;
   05BC 0E                 1385 	inc	r6
   05BD BE 00 9E           1386 	cjne	r6,#0x00,00132$
   05C0 0F                 1387 	inc	r7
   05C1 80 9B              1388 	sjmp	00132$
   05C3                    1389 00134$:
                           1390 ;	../fb_app_rs.c:148: telegramm[8]=value;
   05C3 A8 10              1391 	mov	r0,_bp
   05C5 08                 1392 	inc	r0
   05C6 86 03              1393 	mov	ar3,@r0
   05C8 8B 59              1394 	mov	(_telegramm + 0x0008),r3
                           1395 ;	../fb_app_rs.c:149: break;
   05CA 02 06 6C           1396 	ljmp	00140$
                           1397 ;	../fb_app_rs.c:150: case 15: // EIS 15
   05CD                    1398 00135$:
                           1399 ;	../fb_app_rs.c:151: tel_header(groupadr,15); //15
   05CD C0 05              1400 	push	ar5
   05CF C0 04              1401 	push	ar4
   05D1 C0 23              1402 	push	bits
   05D3 74 0F              1403 	mov	a,#0x0F
   05D5 C0 E0              1404 	push	acc
   05D7 85 43 82           1405 	mov	dpl,_groupadr
   05DA 85 44 83           1406 	mov	dph,(_groupadr + 1)
   05DD 12 09 B8           1407 	lcall	_tel_header
   05E0 15 81              1408 	dec	sp
   05E2 D0 23              1409 	pop	bits
   05E4 D0 04              1410 	pop	ar4
   05E6 D0 05              1411 	pop	ar5
                           1412 ;	../fb_app_rs.c:152: telegramm[7]=0x80;
   05E8 75 58 80           1413 	mov	(_telegramm + 0x0007),#0x80
                           1414 ;	../fb_app_rs.c:153: for(d=8;d<22;d++){
   05EB 7E 08              1415 	mov	r6,#0x08
   05ED 7F 00              1416 	mov	r7,#0x00
   05EF                    1417 00143$:
   05EF C3                 1418 	clr	c
   05F0 EE                 1419 	mov	a,r6
   05F1 94 16              1420 	subb	a,#0x16
   05F3 EF                 1421 	mov	a,r7
   05F4 64 80              1422 	xrl	a,#0x80
   05F6 94 80              1423 	subb	a,#0x80
   05F8 50 72              1424 	jnc	00140$
                           1425 ;	../fb_app_rs.c:154: if((value_pos+d-8)>=(rsinpos-1)) telegramm[d]=0x00;
   05FA 8E 02              1426 	mov	ar2,r6
   05FC 8F 03              1427 	mov	ar3,r7
   05FE EA                 1428 	mov	a,r2
   05FF 2D                 1429 	add	a,r5
   0600 FA                 1430 	mov	r2,a
   0601 EB                 1431 	mov	a,r3
   0602 3C                 1432 	addc	a,r4
   0603 FB                 1433 	mov	r3,a
   0604 EA                 1434 	mov	a,r2
   0605 24 F8              1435 	add	a,#0xF8
   0607 FA                 1436 	mov	r2,a
   0608 EB                 1437 	mov	a,r3
   0609 34 FF              1438 	addc	a,#0xFF
   060B FB                 1439 	mov	r3,a
   060C C0 05              1440 	push	ar5
   060E C0 04              1441 	push	ar4
   0610 AC 42              1442 	mov	r4,_rsinpos
   0612 7D 00              1443 	mov	r5,#0x00
   0614 1C                 1444 	dec	r4
   0615 BC FF 01           1445 	cjne	r4,#0xFF,00235$
   0618 1D                 1446 	dec	r5
   0619                    1447 00235$:
   0619 C3                 1448 	clr	c
   061A EA                 1449 	mov	a,r2
   061B 9C                 1450 	subb	a,r4
   061C EB                 1451 	mov	a,r3
   061D 9D                 1452 	subb	a,r5
   061E D0 04              1453 	pop	ar4
   0620 D0 05              1454 	pop	ar5
   0622 40 08              1455 	jc	00137$
   0624 EE                 1456 	mov	a,r6
   0625 24 51              1457 	add	a,#_telegramm
   0627 F8                 1458 	mov	r0,a
   0628 76 00              1459 	mov	@r0,#0x00
   062A 80 13              1460 	sjmp	00145$
   062C                    1461 00137$:
                           1462 ;	../fb_app_rs.c:155: else telegramm[d]=rsin[(value_pos+d-8)];
   062C EE                 1463 	mov	a,r6
   062D 24 51              1464 	add	a,#_telegramm
   062F F9                 1465 	mov	r1,a
   0630 8D 03              1466 	mov	ar3,r5
   0632 8E 02              1467 	mov	ar2,r6
   0634 EA                 1468 	mov	a,r2
   0635 2B                 1469 	add	a,r3
   0636 24 F8              1470 	add	a,#0xF8
   0638 24 24              1471 	add	a,#_rsin
   063A F8                 1472 	mov	r0,a
   063B 86 03              1473 	mov	ar3,@r0
   063D A7 03              1474 	mov	@r1,ar3
   063F                    1475 00145$:
                           1476 ;	../fb_app_rs.c:153: for(d=8;d<22;d++){
   063F 0E                 1477 	inc	r6
                           1478 ;	../fb_app_rs.c:158: case 16:
   0640 BE 00 AC           1479 	cjne	r6,#0x00,00143$
   0643 0F                 1480 	inc	r7
   0644 80 A9              1481 	sjmp	00143$
   0646                    1482 00139$:
                           1483 ;	../fb_app_rs.c:159: groupadr=convert_adr(5);
   0646 75 82 05           1484 	mov	dpl,#0x05
   0649 C0 23              1485 	push	bits
   064B 12 09 EA           1486 	lcall	_convert_adr
   064E 85 82 43           1487 	mov	_groupadr,dpl
   0651 85 83 44           1488 	mov	(_groupadr + 1),dph
   0654 D0 23              1489 	pop	bits
                           1490 ;	../fb_app_rs.c:160: tel_header(groupadr, 1);
   0656 C0 23              1491 	push	bits
   0658 74 01              1492 	mov	a,#0x01
   065A C0 E0              1493 	push	acc
   065C 85 43 82           1494 	mov	dpl,_groupadr
   065F 85 44 83           1495 	mov	dph,(_groupadr + 1)
   0662 12 09 B8           1496 	lcall	_tel_header
   0665 15 81              1497 	dec	sp
   0667 D0 23              1498 	pop	bits
                           1499 ;	../fb_app_rs.c:161: telegramm[7]=0x00;
   0669 75 58 00           1500 	mov	(_telegramm + 0x0007),#0x00
                           1501 ;	../fb_app_rs.c:163: }
   066C                    1502 00140$:
                           1503 ;	../fb_app_rs.c:164: if(repeatflag) telegramm[0]&=0xDF;		// Wiederholungsbit löschen für Wiederholtelegramm
   066C 30 18 06           1504 	jnb	b0,00142$
   066F 74 DF              1505 	mov	a,#0xDF
   0671 55 51              1506 	anl	a,_telegramm
   0673 F5 51              1507 	mov	_telegramm,a
   0675                    1508 00142$:
                           1509 ;	../fb_app_rs.c:165: return(build_ok);
   0675 D3                 1510 	setb	c
   0676 85 10 81           1511 	mov	sp,_bp
   0679 D0 10              1512 	pop	_bp
   067B 22                 1513 	ret
                           1514 ;------------------------------------------------------------
                           1515 ;Allocation info for local variables in function 'gapos_in_gat'
                           1516 ;------------------------------------------------------------
                           1517 ;gal                       Allocated to stack - _bp -3
                           1518 ;gah                       Allocated to stack - _bp +1
                           1519 ;ga_position               Allocated to registers r6 
                           1520 ;n                         Allocated to stack - _bp +2
                           1521 ;------------------------------------------------------------
                           1522 ;	../fb_app_rs.c:170: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
                           1523 ;	-----------------------------------------
                           1524 ;	 function gapos_in_gat
                           1525 ;	-----------------------------------------
   067C                    1526 _gapos_in_gat:
   067C C0 10              1527 	push	_bp
   067E 85 81 10           1528 	mov	_bp,sp
   0681 C0 82              1529 	push	dpl
   0683 05 81              1530 	inc	sp
                           1531 ;	../fb_app_rs.c:174: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
   0685 7E FF              1532 	mov	r6,#0xFF
                           1533 ;	../fb_app_rs.c:176: while(ga_db[n].ga==((gah<<8)+gal) && n<=62){
   0687 A8 10              1534 	mov	r0,_bp
   0689 08                 1535 	inc	r0
   068A 08                 1536 	inc	r0
   068B 76 00              1537 	mov	@r0,#0x00
   068D                    1538 00102$:
   068D C0 06              1539 	push	ar6
   068F A8 10              1540 	mov	r0,_bp
   0691 08                 1541 	inc	r0
   0692 08                 1542 	inc	r0
   0693 E6                 1543 	mov	a,@r0
   0694 25 E0              1544 	add	a,acc
   0696 25 E0              1545 	add	a,acc
   0698 F5 82              1546 	mov	dpl,a
   069A 75 83 1D           1547 	mov	dph,#(_ga_db >> 8)
   069D E4                 1548 	clr	a
   069E 93                 1549 	movc	a,@a+dptr
   069F FB                 1550 	mov	r3,a
   06A0 A3                 1551 	inc	dptr
   06A1 E4                 1552 	clr	a
   06A2 93                 1553 	movc	a,@a+dptr
   06A3 FC                 1554 	mov	r4,a
   06A4 A8 10              1555 	mov	r0,_bp
   06A6 08                 1556 	inc	r0
   06A7 86 02              1557 	mov	ar2,@r0
   06A9 8A 06              1558 	mov	ar6,r2
   06AB 7A 00              1559 	mov	r2,#0x00
   06AD E5 10              1560 	mov	a,_bp
   06AF 24 FD              1561 	add	a,#0xfd
   06B1 F8                 1562 	mov	r0,a
   06B2 86 05              1563 	mov	ar5,@r0
   06B4 7F 00              1564 	mov	r7,#0x00
   06B6 ED                 1565 	mov	a,r5
   06B7 2A                 1566 	add	a,r2
   06B8 FA                 1567 	mov	r2,a
   06B9 EF                 1568 	mov	a,r7
   06BA 3E                 1569 	addc	a,r6
   06BB FE                 1570 	mov	r6,a
   06BC EB                 1571 	mov	a,r3
   06BD B5 02 06           1572 	cjne	a,ar2,00119$
   06C0 EC                 1573 	mov	a,r4
   06C1 B5 06 02           1574 	cjne	a,ar6,00119$
   06C4 80 04              1575 	sjmp	00120$
   06C6                    1576 00119$:
   06C6 D0 06              1577 	pop	ar6
   06C8 80 12              1578 	sjmp	00114$
   06CA                    1579 00120$:
   06CA D0 06              1580 	pop	ar6
   06CC A8 10              1581 	mov	r0,_bp
   06CE 08                 1582 	inc	r0
   06CF 08                 1583 	inc	r0
   06D0 E6                 1584 	mov	a,@r0
   06D1 24 C1              1585 	add	a,#0xff - 0x3E
   06D3 40 07              1586 	jc	00114$
                           1587 ;	../fb_app_rs.c:177: n++;
   06D5 A8 10              1588 	mov	r0,_bp
   06D7 08                 1589 	inc	r0
   06D8 08                 1590 	inc	r0
   06D9 06                 1591 	inc	@r0
   06DA 80 B1              1592 	sjmp	00102$
   06DC                    1593 00114$:
   06DC A8 10              1594 	mov	r0,_bp
   06DE 08                 1595 	inc	r0
   06DF 08                 1596 	inc	r0
   06E0 86 07              1597 	mov	ar7,@r0
                           1598 ;	../fb_app_rs.c:179: if(n<62|| !filtermode)ga_position=n;// wenn GA gefunden oder kein filtermode aktiv ist... 
   06E2 A8 10              1599 	mov	r0,_bp
   06E4 08                 1600 	inc	r0
   06E5 08                 1601 	inc	r0
   06E6 B6 3E 00           1602 	cjne	@r0,#0x3E,00122$
   06E9                    1603 00122$:
   06E9 40 03              1604 	jc	00105$
   06EB 20 00 02           1605 	jb	_filtermode,00106$
   06EE                    1606 00105$:
   06EE 8F 06              1607 	mov	ar6,r7
   06F0                    1608 00106$:
                           1609 ;	../fb_app_rs.c:180: return (ga_position);						// wird geackt
   06F0 8E 82              1610 	mov	dpl,r6
   06F2 85 10 81           1611 	mov	sp,_bp
   06F5 D0 10              1612 	pop	_bp
   06F7 22                 1613 	ret
                           1614 ;------------------------------------------------------------
                           1615 ;Allocation info for local variables in function 'write_value_req'
                           1616 ;------------------------------------------------------------
                           1617 ;length                    Allocated to registers r4 
                           1618 ;n                         Allocated to stack - _bp +1
                           1619 ;ga                        Allocated to stack - _bp +2
                           1620 ;val                       Allocated to registers r5 r6 
                           1621 ;------------------------------------------------------------
                           1622 ;	../fb_app_rs.c:187: void write_value_req(void)
                           1623 ;	-----------------------------------------
                           1624 ;	 function write_value_req
                           1625 ;	-----------------------------------------
   06F8                    1626 _write_value_req:
   06F8 C0 10              1627 	push	_bp
   06FA 85 81 10           1628 	mov	_bp,sp
   06FD 05 81              1629 	inc	sp
   06FF 05 81              1630 	inc	sp
   0701 05 81              1631 	inc	sp
                           1632 ;	../fb_app_rs.c:189: unsigned char length,n=0;
   0703 A8 10              1633 	mov	r0,_bp
   0705 08                 1634 	inc	r0
   0706 76 00              1635 	mov	@r0,#0x00
                           1636 ;	../fb_app_rs.c:191: unsigned int val=0;
   0708 7D 00              1637 	mov	r5,#0x00
   070A 7E 00              1638 	mov	r6,#0x00
                           1639 ;	../fb_app_rs.c:193: eibledcount=0xff;// EIBLED lang einschalten
   070C 75 48 FF           1640 	mov	_eibledcount,#0xFF
                           1641 ;	../fb_app_rs.c:194: length=telegramm[5]&0x0F;
   070F 74 0F              1642 	mov	a,#0x0F
   0711 55 56              1643 	anl	a,(_telegramm + 0x0005)
                           1644 ;	../fb_app_rs.c:195: if (length<=15 )	{// wenn ein Telegramm reinkommt..
   0713 FC                 1645 	mov  r4,a
   0714 24 F0              1646 	add	a,#0xff - 0x0F
   0716 50 03              1647 	jnc	00169$
   0718 02 08 FE           1648 	ljmp	00134$
   071B                    1649 00169$:
                           1650 ;	../fb_app_rs.c:196: if(length==1)val=telegramm[7] & 0x3F;
   071B BC 01 08           1651 	cjne	r4,#0x01,00102$
   071E 74 3F              1652 	mov	a,#0x3F
   0720 55 58              1653 	anl	a,(_telegramm + 0x0007)
   0722 FB                 1654 	mov	r3,a
   0723 FD                 1655 	mov	r5,a
   0724 7E 00              1656 	mov	r6,#0x00
   0726                    1657 00102$:
                           1658 ;	../fb_app_rs.c:197: if(length==2)val=telegramm[8] ;
   0726 BC 02 04           1659 	cjne	r4,#0x02,00104$
   0729 AD 59              1660 	mov	r5,(_telegramm + 0x0008)
   072B 7E 00              1661 	mov	r6,#0x00
   072D                    1662 00104$:
                           1663 ;	../fb_app_rs.c:198: if(length==3)val=256*telegramm[8]+telegramm[9];
   072D BC 03 16           1664 	cjne	r4,#0x03,00106$
   0730 C0 04              1665 	push	ar4
   0732 AB 59              1666 	mov	r3,(_telegramm + 0x0008)
   0734 7A 00              1667 	mov	r2,#0x00
   0736 AC 5A              1668 	mov	r4,(_telegramm + 0x0009)
   0738 7F 00              1669 	mov	r7,#0x00
   073A EC                 1670 	mov	a,r4
   073B 2A                 1671 	add	a,r2
   073C FA                 1672 	mov	r2,a
   073D EF                 1673 	mov	a,r7
   073E 3B                 1674 	addc	a,r3
   073F FB                 1675 	mov	r3,a
   0740 8A 05              1676 	mov	ar5,r2
   0742 8B 06              1677 	mov	ar6,r3
                           1678 ;	../fb_app_rs.c:237: save_ga(ga,val);						// GA mit Wert speichern
   0744 D0 04              1679 	pop	ar4
                           1680 ;	../fb_app_rs.c:198: if(length==3)val=256*telegramm[8]+telegramm[9];
   0746                    1681 00106$:
                           1682 ;	../fb_app_rs.c:199: ga=256*telegramm[3]+telegramm[4];
   0746 C0 05              1683 	push	ar5
   0748 C0 06              1684 	push	ar6
   074A AF 54              1685 	mov	r7,(_telegramm + 0x0003)
   074C 8F 02              1686 	mov	ar2,r7
   074E 8A 03              1687 	mov	ar3,r2
   0750 7A 00              1688 	mov	r2,#0x00
   0752 AD 55              1689 	mov	r5,(_telegramm + 0x0004)
   0754 7E 00              1690 	mov	r6,#0x00
   0756 ED                 1691 	mov	a,r5
   0757 2A                 1692 	add	a,r2
   0758 FA                 1693 	mov	r2,a
   0759 EE                 1694 	mov	a,r6
   075A 3B                 1695 	addc	a,r3
   075B FB                 1696 	mov	r3,a
   075C A8 10              1697 	mov	r0,_bp
   075E 08                 1698 	inc	r0
   075F 08                 1699 	inc	r0
   0760 A6 02              1700 	mov	@r0,ar2
   0762 08                 1701 	inc	r0
   0763 A6 03              1702 	mov	@r0,ar3
                           1703 ;	../fb_app_rs.c:200: if(filtermode){
   0765 D0 06              1704 	pop	ar6
   0767 D0 05              1705 	pop	ar5
   0769 30 00 3D           1706 	jnb	_filtermode,00110$
                           1707 ;	../fb_app_rs.c:201: for(n=0;n<=61;n++) {						// Wert der GA aus Flash lesen
   076C A8 10              1708 	mov	r0,_bp
   076E 08                 1709 	inc	r0
   076F 76 00              1710 	mov	@r0,#0x00
   0771                    1711 00126$:
   0771 A8 10              1712 	mov	r0,_bp
   0773 08                 1713 	inc	r0
   0774 E6                 1714 	mov	a,@r0
   0775 24 C2              1715 	add	a,#0xff - 0x3D
   0777 40 30              1716 	jc	00110$
                           1717 ;	../fb_app_rs.c:202: if(ga_db[n].ga==ga) {
   0779 A8 10              1718 	mov	r0,_bp
   077B 08                 1719 	inc	r0
   077C E6                 1720 	mov	a,@r0
   077D 25 E0              1721 	add	a,acc
   077F 25 E0              1722 	add	a,acc
   0781 F5 82              1723 	mov	dpl,a
   0783 75 83 1D           1724 	mov	dph,#(_ga_db >> 8)
   0786 E4                 1725 	clr	a
   0787 93                 1726 	movc	a,@a+dptr
   0788 FA                 1727 	mov	r2,a
   0789 A3                 1728 	inc	dptr
   078A E4                 1729 	clr	a
   078B 93                 1730 	movc	a,@a+dptr
   078C FB                 1731 	mov	r3,a
   078D A8 10              1732 	mov	r0,_bp
   078F 08                 1733 	inc	r0
   0790 08                 1734 	inc	r0
   0791 E6                 1735 	mov	a,@r0
   0792 B5 02 07           1736 	cjne	a,ar2,00178$
   0795 08                 1737 	inc	r0
   0796 E6                 1738 	mov	a,@r0
   0797 B5 03 02           1739 	cjne	a,ar3,00178$
   079A 80 02              1740 	sjmp	00179$
   079C                    1741 00178$:
   079C 80 05              1742 	sjmp	00128$
   079E                    1743 00179$:
                           1744 ;	../fb_app_rs.c:203: n=63;
   079E A8 10              1745 	mov	r0,_bp
   07A0 08                 1746 	inc	r0
   07A1 76 3F              1747 	mov	@r0,#0x3F
   07A3                    1748 00128$:
                           1749 ;	../fb_app_rs.c:201: for(n=0;n<=61;n++) {						// Wert der GA aus Flash lesen
   07A3 A8 10              1750 	mov	r0,_bp
   07A5 08                 1751 	inc	r0
   07A6 06                 1752 	inc	@r0
   07A7 80 C8              1753 	sjmp	00126$
   07A9                    1754 00110$:
                           1755 ;	../fb_app_rs.c:207: if ((n>=63 || !filtermode)) {
   07A9 A8 10              1756 	mov	r0,_bp
   07AB 08                 1757 	inc	r0
   07AC B6 3F 00           1758 	cjne	@r0,#0x3F,00180$
   07AF                    1759 00180$:
   07AF 50 06              1760 	jnc	00121$
   07B1 30 00 03           1761 	jnb	_filtermode,00182$
   07B4 02 08 FE           1762 	ljmp	00134$
   07B7                    1763 00182$:
   07B7                    1764 00121$:
                           1765 ;	../fb_app_rs.c:208: if(!tel_sent){
   07B7 30 0A 03           1766 	jnb	_tel_sent,00183$
   07BA 02 08 EA           1767 	ljmp	00120$
   07BD                    1768 00183$:
                           1769 ;	../fb_app_rs.c:209: rs_send_dec(telegramm[3]>>3);			// GA senden
   07BD EF                 1770 	mov	a,r7
   07BE C4                 1771 	swap	a
   07BF 23                 1772 	rl	a
   07C0 54 1F              1773 	anl	a,#0x1F
   07C2 FF                 1774 	mov	r7,a
   07C3 7B 00              1775 	mov	r3,#0x00
   07C5 8F 82              1776 	mov	dpl,r7
   07C7 8B 83              1777 	mov	dph,r3
   07C9 C0 06              1778 	push	ar6
   07CB C0 05              1779 	push	ar5
   07CD C0 04              1780 	push	ar4
   07CF 12 13 AD           1781 	lcall	_rs_send_dec
                           1782 ;	../fb_app_rs.c:210: rs_send('/');
   07D2 75 82 2F           1783 	mov	dpl,#0x2F
   07D5 12 15 BA           1784 	lcall	_rs_send
                           1785 ;	../fb_app_rs.c:211: rs_send_dec(telegramm[3] & 0x07);
   07D8 74 07              1786 	mov	a,#0x07
   07DA 55 54              1787 	anl	a,(_telegramm + 0x0003)
   07DC FF                 1788 	mov	r7,a
   07DD 7B 00              1789 	mov	r3,#0x00
   07DF 8F 82              1790 	mov	dpl,r7
   07E1 8B 83              1791 	mov	dph,r3
   07E3 12 13 AD           1792 	lcall	_rs_send_dec
                           1793 ;	../fb_app_rs.c:212: rs_send('/');
   07E6 75 82 2F           1794 	mov	dpl,#0x2F
   07E9 12 15 BA           1795 	lcall	_rs_send
                           1796 ;	../fb_app_rs.c:213: rs_send_dec(telegramm[4]);
   07EC AB 55              1797 	mov	r3,(_telegramm + 0x0004)
   07EE 7F 00              1798 	mov	r7,#0x00
   07F0 8B 82              1799 	mov	dpl,r3
   07F2 8F 83              1800 	mov	dph,r7
   07F4 12 13 AD           1801 	lcall	_rs_send_dec
                           1802 ;	../fb_app_rs.c:214: rs_send('=');
   07F7 75 82 3D           1803 	mov	dpl,#0x3D
   07FA 12 15 BA           1804 	lcall	_rs_send
   07FD D0 04              1805 	pop	ar4
   07FF D0 05              1806 	pop	ar5
   0801 D0 06              1807 	pop	ar6
                           1808 ;	../fb_app_rs.c:215: if (length<=3)	rs_send_dec(val);		// Value senden
   0803 EC                 1809 	mov	a,r4
   0804 24 FC              1810 	add	a,#0xff - 0x03
   0806 40 13              1811 	jc	00112$
   0808 8D 82              1812 	mov	dpl,r5
   080A 8E 83              1813 	mov	dph,r6
   080C C0 06              1814 	push	ar6
   080E C0 05              1815 	push	ar5
   0810 C0 04              1816 	push	ar4
   0812 12 13 AD           1817 	lcall	_rs_send_dec
   0815 D0 04              1818 	pop	ar4
   0817 D0 05              1819 	pop	ar5
   0819 D0 06              1820 	pop	ar6
   081B                    1821 00112$:
                           1822 ;	../fb_app_rs.c:216: if(length==4){
   081B BC 04 6F           1823 	cjne	r4,#0x04,00116$
                           1824 ;	../fb_app_rs.c:217: n='.';  
   081E A8 10              1825 	mov	r0,_bp
   0820 08                 1826 	inc	r0
   0821 76 2E              1827 	mov	@r0,#0x2E
                           1828 ;	../fb_app_rs.c:218: if(telegramm[8]>31){// time
   0823 E5 59              1829 	mov	a,(_telegramm + 0x0008)
   0825 FF                 1830 	mov	r7,a
   0826 24 E0              1831 	add	a,#0xff - 0x1F
   0828 50 23              1832 	jnc	00114$
                           1833 ;	../fb_app_rs.c:219: rs_send((telegramm[8]>>5)+48);
   082A EF                 1834 	mov	a,r7
   082B C4                 1835 	swap	a
   082C 03                 1836 	rr	a
   082D 54 07              1837 	anl	a,#0x07
   082F 24 30              1838 	add	a,#0x30
   0831 F5 82              1839 	mov	dpl,a
   0833 C0 06              1840 	push	ar6
   0835 C0 05              1841 	push	ar5
   0837 C0 04              1842 	push	ar4
   0839 12 15 BA           1843 	lcall	_rs_send
                           1844 ;	../fb_app_rs.c:220: rs_send(',');
   083C 75 82 2C           1845 	mov	dpl,#0x2C
   083F 12 15 BA           1846 	lcall	_rs_send
   0842 D0 04              1847 	pop	ar4
   0844 D0 05              1848 	pop	ar5
   0846 D0 06              1849 	pop	ar6
                           1850 ;	../fb_app_rs.c:221: n=':';
   0848 A8 10              1851 	mov	r0,_bp
   084A 08                 1852 	inc	r0
   084B 76 3A              1853 	mov	@r0,#0x3A
   084D                    1854 00114$:
                           1855 ;	../fb_app_rs.c:223: rs_send_dec(telegramm[8]&0x1F);
   084D 74 1F              1856 	mov	a,#0x1F
   084F 55 59              1857 	anl	a,(_telegramm + 0x0008)
   0851 FF                 1858 	mov	r7,a
   0852 7B 00              1859 	mov	r3,#0x00
   0854 8F 82              1860 	mov	dpl,r7
   0856 8B 83              1861 	mov	dph,r3
   0858 C0 06              1862 	push	ar6
   085A C0 05              1863 	push	ar5
   085C C0 04              1864 	push	ar4
   085E 12 13 AD           1865 	lcall	_rs_send_dec
                           1866 ;	../fb_app_rs.c:224: rs_send(n);
   0861 A8 10              1867 	mov	r0,_bp
   0863 08                 1868 	inc	r0
   0864 86 82              1869 	mov	dpl,@r0
   0866 12 15 BA           1870 	lcall	_rs_send
                           1871 ;	../fb_app_rs.c:225: rs_send_dec(telegramm[9]);
   0869 AB 5A              1872 	mov	r3,(_telegramm + 0x0009)
   086B 7F 00              1873 	mov	r7,#0x00
   086D 8B 82              1874 	mov	dpl,r3
   086F 8F 83              1875 	mov	dph,r7
   0871 12 13 AD           1876 	lcall	_rs_send_dec
                           1877 ;	../fb_app_rs.c:226: rs_send(n);
   0874 A8 10              1878 	mov	r0,_bp
   0876 08                 1879 	inc	r0
   0877 86 82              1880 	mov	dpl,@r0
   0879 12 15 BA           1881 	lcall	_rs_send
                           1882 ;	../fb_app_rs.c:227: rs_send_dec(telegramm[10]);
   087C AB 5B              1883 	mov	r3,(_telegramm + 0x000a)
   087E 7F 00              1884 	mov	r7,#0x00
   0880 8B 82              1885 	mov	dpl,r3
   0882 8F 83              1886 	mov	dph,r7
   0884 12 13 AD           1887 	lcall	_rs_send_dec
   0887 D0 04              1888 	pop	ar4
   0889 D0 05              1889 	pop	ar5
   088B D0 06              1890 	pop	ar6
   088D                    1891 00116$:
                           1892 ;	../fb_app_rs.c:229: if(length>4){
   088D EC                 1893 	mov	a,r4
   088E 24 FB              1894 	add	a,#0xff - 0x04
   0890 50 44              1895 	jnc	00118$
                           1896 ;	../fb_app_rs.c:230: for(n=8;n <= length+6;n++){
   0892 7F 08              1897 	mov	r7,#0x08
   0894                    1898 00130$:
   0894 C0 05              1899 	push	ar5
   0896 C0 06              1900 	push	ar6
   0898 8C 02              1901 	mov	ar2,r4
   089A 7B 00              1902 	mov	r3,#0x00
   089C 74 06              1903 	mov	a,#0x06
   089E 2A                 1904 	add	a,r2
   089F FA                 1905 	mov	r2,a
   08A0 E4                 1906 	clr	a
   08A1 3B                 1907 	addc	a,r3
   08A2 FB                 1908 	mov	r3,a
   08A3 8F 05              1909 	mov	ar5,r7
   08A5 7E 00              1910 	mov	r6,#0x00
   08A7 C3                 1911 	clr	c
   08A8 EA                 1912 	mov	a,r2
   08A9 9D                 1913 	subb	a,r5
   08AA EB                 1914 	mov	a,r3
   08AB 64 80              1915 	xrl	a,#0x80
   08AD 8E F0              1916 	mov	b,r6
   08AF 63 F0 80           1917 	xrl	b,#0x80
   08B2 95 F0              1918 	subb	a,b
   08B4 D0 06              1919 	pop	ar6
   08B6 D0 05              1920 	pop	ar5
   08B8 40 1C              1921 	jc	00118$
                           1922 ;	../fb_app_rs.c:231: rs_send(telegramm[n]);
   08BA EF                 1923 	mov	a,r7
   08BB 24 51              1924 	add	a,#_telegramm
   08BD F9                 1925 	mov	r1,a
   08BE 87 82              1926 	mov	dpl,@r1
   08C0 C0 07              1927 	push	ar7
   08C2 C0 06              1928 	push	ar6
   08C4 C0 05              1929 	push	ar5
   08C6 C0 04              1930 	push	ar4
   08C8 12 15 BA           1931 	lcall	_rs_send
   08CB D0 04              1932 	pop	ar4
   08CD D0 05              1933 	pop	ar5
   08CF D0 06              1934 	pop	ar6
   08D1 D0 07              1935 	pop	ar7
                           1936 ;	../fb_app_rs.c:230: for(n=8;n <= length+6;n++){
   08D3 0F                 1937 	inc	r7
   08D4 80 BE              1938 	sjmp	00130$
   08D6                    1939 00118$:
                           1940 ;	../fb_app_rs.c:234: rs_send(13);							// CR LF
   08D6 75 82 0D           1941 	mov	dpl,#0x0D
   08D9 C0 06              1942 	push	ar6
   08DB C0 05              1943 	push	ar5
   08DD 12 15 BA           1944 	lcall	_rs_send
                           1945 ;	../fb_app_rs.c:235: rs_send(10);
   08E0 75 82 0A           1946 	mov	dpl,#0x0A
   08E3 12 15 BA           1947 	lcall	_rs_send
   08E6 D0 05              1948 	pop	ar5
   08E8 D0 06              1949 	pop	ar6
   08EA                    1950 00120$:
                           1951 ;	../fb_app_rs.c:237: save_ga(ga,val);						// GA mit Wert speichern
   08EA C0 05              1952 	push	ar5
   08EC C0 06              1953 	push	ar6
   08EE A8 10              1954 	mov	r0,_bp
   08F0 08                 1955 	inc	r0
   08F1 08                 1956 	inc	r0
   08F2 86 82              1957 	mov	dpl,@r0
   08F4 08                 1958 	inc	r0
   08F5 86 83              1959 	mov	dph,@r0
   08F7 12 09 05           1960 	lcall	_save_ga
   08FA 15 81              1961 	dec	sp
   08FC 15 81              1962 	dec	sp
   08FE                    1963 00134$:
   08FE 85 10 81           1964 	mov	sp,_bp
   0901 D0 10              1965 	pop	_bp
   0903 22                 1966 	ret
                           1967 ;------------------------------------------------------------
                           1968 ;Allocation info for local variables in function 'read_value_req'
                           1969 ;------------------------------------------------------------
                           1970 ;	../fb_app_rs.c:246: void read_value_req(void)
                           1971 ;	-----------------------------------------
                           1972 ;	 function read_value_req
                           1973 ;	-----------------------------------------
   0904                    1974 _read_value_req:
                           1975 ;	../fb_app_rs.c:249: }
   0904 22                 1976 	ret
                           1977 ;------------------------------------------------------------
                           1978 ;Allocation info for local variables in function 'save_ga'
                           1979 ;------------------------------------------------------------
                           1980 ;val                       Allocated to stack - _bp -4
                           1981 ;ga                        Allocated to stack - _bp +1
                           1982 ;n                         Allocated to registers r5 
                           1983 ;write_ok                  Allocated to registers b0 
                           1984 ;------------------------------------------------------------
                           1985 ;	../fb_app_rs.c:256: void save_ga(unsigned int ga, unsigned int val)
                           1986 ;	-----------------------------------------
                           1987 ;	 function save_ga
                           1988 ;	-----------------------------------------
   0905                    1989 _save_ga:
   0905 C0 10              1990 	push	_bp
   0907 85 81 10           1991 	mov	_bp,sp
   090A C0 82              1992 	push	dpl
   090C C0 83              1993 	push	dph
                           1994 ;	../fb_app_rs.c:261: n=0;
   090E 7D 00              1995 	mov	r5,#0x00
                           1996 ;	../fb_app_rs.c:262: do {								// Wert der GA in Flash schreiben
   0910 A8 10              1997 	mov	r0,_bp
   0912 08                 1998 	inc	r0
   0913 08                 1999 	inc	r0
   0914 86 04              2000 	mov	ar4,@r0
   0916 E5 10              2001 	mov	a,_bp
   0918 24 FC              2002 	add	a,#0xfc
   091A F8                 2003 	mov	r0,a
   091B 08                 2004 	inc	r0
   091C 86 03              2005 	mov	ar3,@r0
   091E                    2006 00111$:
                           2007 ;	../fb_app_rs.c:263: if(ga_db[n].ga==ga || ga_db[n].ga==0xFFFF) {
   091E C0 03              2008 	push	ar3
   0920 ED                 2009 	mov	a,r5
   0921 2D                 2010 	add	a,r5
   0922 25 E0              2011 	add	a,acc
   0924 FA                 2012 	mov	r2,a
   0925 F5 82              2013 	mov	dpl,a
   0927 75 83 1D           2014 	mov	dph,#(_ga_db >> 8)
   092A E4                 2015 	clr	a
   092B 93                 2016 	movc	a,@a+dptr
   092C FB                 2017 	mov	r3,a
   092D A3                 2018 	inc	dptr
   092E E4                 2019 	clr	a
   092F 93                 2020 	movc	a,@a+dptr
   0930 FF                 2021 	mov	r7,a
   0931 A8 10              2022 	mov	r0,_bp
   0933 08                 2023 	inc	r0
   0934 E6                 2024 	mov	a,@r0
   0935 B5 03 09           2025 	cjne	a,ar3,00128$
   0938 08                 2026 	inc	r0
   0939 E6                 2027 	mov	a,@r0
   093A B5 07 04           2028 	cjne	a,ar7,00128$
   093D D0 03              2029 	pop	ar3
   093F 80 14              2030 	sjmp	00108$
   0941                    2031 00128$:
   0941 D0 03              2032 	pop	ar3
   0943 8A 82              2033 	mov	dpl,r2
   0945 75 83 1D           2034 	mov	dph,#(_ga_db >> 8)
   0948 E4                 2035 	clr	a
   0949 93                 2036 	movc	a,@a+dptr
   094A FE                 2037 	mov	r6,a
   094B A3                 2038 	inc	dptr
   094C E4                 2039 	clr	a
   094D 93                 2040 	movc	a,@a+dptr
   094E FF                 2041 	mov	r7,a
   094F BE FF 57           2042 	cjne	r6,#0xFF,00109$
   0952 BF FF 54           2043 	cjne	r7,#0xFF,00109$
   0955                    2044 00108$:
                           2045 ;	../fb_app_rs.c:264: write_ok=0;
   0955 C2 18              2046 	clr	b0
                           2047 ;	../fb_app_rs.c:265: while (!write_ok) {
   0957 ED                 2048 	mov	a,r5
   0958 2D                 2049 	add	a,r5
   0959 25 E0              2050 	add	a,acc
   095B FF                 2051 	mov	r7,a
   095C 24 02              2052 	add	a,#0x02
   095E FE                 2053 	mov	r6,a
   095F                    2054 00105$:
   095F 20 18 45           2055 	jb	b0,00107$
                           2056 ;	../fb_app_rs.c:266: START_WRITECYCLE
   0962 C0 03              2057 	push	ar3
   0964 75 E4 00           2058 	mov	_FMCON,#0x00
                           2059 ;	../fb_app_rs.c:267: if(ga_db[n].ga==0xFFFF) {			// GA noch nicht gespeichert
   0967 8F 82              2060 	mov	dpl,r7
   0969 75 83 1D           2061 	mov	dph,#(_ga_db >> 8)
   096C E4                 2062 	clr	a
   096D 93                 2063 	movc	a,@a+dptr
   096E FA                 2064 	mov	r2,a
   096F A3                 2065 	inc	dptr
   0970 E4                 2066 	clr	a
   0971 93                 2067 	movc	a,@a+dptr
   0972 FB                 2068 	mov	r3,a
   0973 BA FF 05           2069 	cjne	r2,#0xFF,00132$
   0976 BB FF 02           2070 	cjne	r3,#0xFF,00132$
   0979 80 04              2071 	sjmp	00133$
   097B                    2072 00132$:
   097B D0 03              2073 	pop	ar3
   097D 80 0E              2074 	sjmp	00102$
   097F                    2075 00133$:
   097F D0 03              2076 	pop	ar3
                           2077 ;	../fb_app_rs.c:268: FMADRH = 0x1D;//(n >> 6) + 0x1D;		// GA schreiben
   0981 75 E7 1D           2078 	mov	_FMADRH,#0x1D
                           2079 ;	../fb_app_rs.c:269: FMADRL = n*4;//((n & 0x3F) * 4);		// (int wird LSB first abgelegt)
   0984 8F E6              2080 	mov	_FMADRL,r7
                           2081 ;	../fb_app_rs.c:270: FMDATA=ga;
   0986 A8 10              2082 	mov	r0,_bp
   0988 08                 2083 	inc	r0
   0989 86 E5              2084 	mov	_FMDATA,@r0
                           2085 ;	../fb_app_rs.c:271: FMDATA=ga>>8;
   098B 8C E5              2086 	mov	_FMDATA,r4
   098D                    2087 00102$:
                           2088 ;	../fb_app_rs.c:273: FMADRH = 0x1D;//(n >> 6) + 0x1D;		// Value schreiben
   098D 75 E7 1D           2089 	mov	_FMADRH,#0x1D
                           2090 ;	../fb_app_rs.c:274: FMADRL = (n*4) +2;//((n & 0x3F) * 4) + 2;
   0990 8E E6              2091 	mov	_FMADRL,r6
                           2092 ;	../fb_app_rs.c:275: FMDATA=val;
   0992 E5 10              2093 	mov	a,_bp
   0994 24 FC              2094 	add	a,#0xfc
   0996 F8                 2095 	mov	r0,a
   0997 86 E5              2096 	mov	_FMDATA,@r0
                           2097 ;	../fb_app_rs.c:276: FMDATA=val>>8;					// High Byte schreiben
   0999 8B E5              2098 	mov	_FMDATA,r3
                           2099 ;	../fb_app_rs.c:277: STOP_WRITECYCLE
   099B 75 E4 68           2100 	mov	_FMCON,#0x68
                           2101 ;	../fb_app_rs.c:278: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   099E E5 E4              2102 	mov	a,_FMCON
   09A0 20 E0 BC           2103 	jb	acc.0,00105$
   09A3 D2 18              2104 	setb	b0
   09A5 80 B8              2105 	sjmp	00105$
   09A7                    2106 00107$:
                           2107 ;	../fb_app_rs.c:280: n=62;	// Schleife abbrechen
   09A7 7D 3E              2108 	mov	r5,#0x3E
   09A9                    2109 00109$:
                           2110 ;	../fb_app_rs.c:282: n++;
   09A9 0D                 2111 	inc	r5
                           2112 ;	../fb_app_rs.c:283: }while (n<62);
   09AA BD 3E 00           2113 	cjne	r5,#0x3E,00135$
   09AD                    2114 00135$:
   09AD 50 03              2115 	jnc	00136$
   09AF 02 09 1E           2116 	ljmp	00111$
   09B2                    2117 00136$:
   09B2 85 10 81           2118 	mov	sp,_bp
   09B5 D0 10              2119 	pop	_bp
   09B7 22                 2120 	ret
                           2121 ;------------------------------------------------------------
                           2122 ;Allocation info for local variables in function 'tel_header'
                           2123 ;------------------------------------------------------------
                           2124 ;length                    Allocated to stack - _bp -3
                           2125 ;ga                        Allocated to registers r6 r7 
                           2126 ;------------------------------------------------------------
                           2127 ;	../fb_app_rs.c:288: void tel_header(unsigned int ga, unsigned char length)
                           2128 ;	-----------------------------------------
                           2129 ;	 function tel_header
                           2130 ;	-----------------------------------------
   09B8                    2131 _tel_header:
   09B8 C0 10              2132 	push	_bp
   09BA 85 81 10           2133 	mov	_bp,sp
   09BD AE 82              2134 	mov	r6,dpl
   09BF AF 83              2135 	mov	r7,dph
                           2136 ;	../fb_app_rs.c:290: telegramm[0]=0xBC;
   09C1 75 51 BC           2137 	mov	_telegramm,#0xBC
                           2138 ;	../fb_app_rs.c:291: telegramm[1]=pa_h;
   09C4 90 1C FB           2139 	mov	dptr,#_pa_h
   09C7 E4                 2140 	clr	a
   09C8 93                 2141 	movc	a,@a+dptr
   09C9 FD                 2142 	mov	r5,a
   09CA 8D 52              2143 	mov	(_telegramm + 0x0001),r5
                           2144 ;	../fb_app_rs.c:292: telegramm[2]=pa_l;
   09CC 90 1C FC           2145 	mov	dptr,#_pa_l
   09CF E4                 2146 	clr	a
   09D0 93                 2147 	movc	a,@a+dptr
   09D1 FD                 2148 	mov	r5,a
   09D2 8D 53              2149 	mov	(_telegramm + 0x0002),r5
                           2150 ;	../fb_app_rs.c:293: telegramm[3]=ga>>8;
   09D4 8F 05              2151 	mov	ar5,r7
   09D6 8D 54              2152 	mov	(_telegramm + 0x0003),r5
                           2153 ;	../fb_app_rs.c:294: telegramm[4]=ga;
   09D8 8E 55              2154 	mov	(_telegramm + 0x0004),r6
                           2155 ;	../fb_app_rs.c:295: telegramm[5]=0xE0 + length;
   09DA E5 10              2156 	mov	a,_bp
   09DC 24 FD              2157 	add	a,#0xfd
   09DE F8                 2158 	mov	r0,a
   09DF 74 E0              2159 	mov	a,#0xE0
   09E1 26                 2160 	add	a,@r0
   09E2 F5 56              2161 	mov	(_telegramm + 0x0005),a
                           2162 ;	../fb_app_rs.c:296: telegramm[6]=0x00;
   09E4 75 57 00           2163 	mov	(_telegramm + 0x0006),#0x00
   09E7 D0 10              2164 	pop	_bp
   09E9 22                 2165 	ret
                           2166 ;------------------------------------------------------------
                           2167 ;Allocation info for local variables in function 'convert_adr'
                           2168 ;------------------------------------------------------------
                           2169 ;pos                       Allocated to registers 
                           2170 ;adr                       Allocated to stack - _bp +1
                           2171 ;sepcount                  Allocated to registers r3 
                           2172 ;n                         Allocated to stack - _bp +3
                           2173 ;adr_tmp                   Allocated to registers r5 
                           2174 ;firstrun                  Allocated to registers b0 
                           2175 ;------------------------------------------------------------
                           2176 ;	../fb_app_rs.c:301: unsigned int convert_adr(unsigned char pos)
                           2177 ;	-----------------------------------------
                           2178 ;	 function convert_adr
                           2179 ;	-----------------------------------------
   09EA                    2180 _convert_adr:
   09EA C0 10              2181 	push	_bp
   09EC 85 81 10           2182 	mov	_bp,sp
   09EF 05 81              2183 	inc	sp
   09F1 05 81              2184 	inc	sp
   09F3 05 81              2185 	inc	sp
   09F5 A8 10              2186 	mov	r0,_bp
   09F7 08                 2187 	inc	r0
   09F8 08                 2188 	inc	r0
   09F9 08                 2189 	inc	r0
   09FA A6 82              2190 	mov	@r0,dpl
                           2191 ;	../fb_app_rs.c:307: firstrun=1;
   09FC D2 18              2192 	setb	b0
                           2193 ;	../fb_app_rs.c:310: adr=0;
   09FE A8 10              2194 	mov	r0,_bp
   0A00 08                 2195 	inc	r0
   0A01 E4                 2196 	clr	a
   0A02 F6                 2197 	mov	@r0,a
   0A03 08                 2198 	inc	r0
   0A04 F6                 2199 	mov	@r0,a
                           2200 ;	../fb_app_rs.c:311: adr_tmp=0;
   0A05 7D 00              2201 	mov	r5,#0x00
                           2202 ;	../fb_app_rs.c:312: while(rsin[n]!='=' && n<(rsinpos-1)) {
   0A07 7B 00              2203 	mov	r3,#0x00
   0A09                    2204 00117$:
   0A09 E5 10              2205 	mov	a,_bp
   0A0B 24 03              2206 	add	a,#0x03
   0A0D F8                 2207 	mov	r0,a
   0A0E E6                 2208 	mov	a,@r0
   0A0F 24 24              2209 	add	a,#_rsin
   0A11 F9                 2210 	mov	r1,a
   0A12 87 02              2211 	mov	ar2,@r1
   0A14 BA 3D 03           2212 	cjne	r2,#0x3D,00141$
   0A17 02 0A DA           2213 	ljmp	00119$
   0A1A                    2214 00141$:
   0A1A C0 03              2215 	push	ar3
   0A1C AB 42              2216 	mov	r3,_rsinpos
   0A1E 7C 00              2217 	mov	r4,#0x00
   0A20 1B                 2218 	dec	r3
   0A21 BB FF 01           2219 	cjne	r3,#0xFF,00142$
   0A24 1C                 2220 	dec	r4
   0A25                    2221 00142$:
   0A25 E5 10              2222 	mov	a,_bp
   0A27 24 03              2223 	add	a,#0x03
   0A29 F8                 2224 	mov	r0,a
   0A2A 86 06              2225 	mov	ar6,@r0
   0A2C 7F 00              2226 	mov	r7,#0x00
   0A2E C3                 2227 	clr	c
   0A2F EE                 2228 	mov	a,r6
   0A30 9B                 2229 	subb	a,r3
   0A31 EF                 2230 	mov	a,r7
   0A32 64 80              2231 	xrl	a,#0x80
   0A34 8C F0              2232 	mov	b,r4
   0A36 63 F0 80           2233 	xrl	b,#0x80
   0A39 95 F0              2234 	subb	a,b
   0A3B D0 03              2235 	pop	ar3
   0A3D 40 03              2236 	jc	00143$
   0A3F 02 0A DA           2237 	ljmp	00119$
   0A42                    2238 00143$:
                           2239 ;	../fb_app_rs.c:313: if(rsin[n]!='/' && rsin[n]!='.') {
   0A42 BA 2F 02           2240 	cjne	r2,#0x2F,00144$
   0A45 80 21              2241 	sjmp	00113$
   0A47                    2242 00144$:
   0A47 BA 2E 02           2243 	cjne	r2,#0x2E,00145$
   0A4A 80 1C              2244 	sjmp	00113$
   0A4C                    2245 00145$:
                           2246 ;	../fb_app_rs.c:314: if(!firstrun) adr_tmp*=10;
   0A4C 20 18 06           2247 	jb	b0,00102$
   0A4F ED                 2248 	mov	a,r5
   0A50 75 F0 0A           2249 	mov	b,#0x0A
   0A53 A4                 2250 	mul	ab
   0A54 FD                 2251 	mov	r5,a
   0A55                    2252 00102$:
                           2253 ;	../fb_app_rs.c:315: adr_tmp+=rsin[n]-48;
   0A55 E5 10              2254 	mov	a,_bp
   0A57 24 03              2255 	add	a,#0x03
   0A59 F8                 2256 	mov	r0,a
   0A5A E6                 2257 	mov	a,@r0
   0A5B 24 24              2258 	add	a,#_rsin
   0A5D F9                 2259 	mov	r1,a
   0A5E E7                 2260 	mov	a,@r1
   0A5F 24 D0              2261 	add	a,#0xD0
   0A61 FF                 2262 	mov	r7,a
   0A62 2D                 2263 	add	a,r5
   0A63 FD                 2264 	mov	r5,a
                           2265 ;	../fb_app_rs.c:316: firstrun=0;
   0A64 C2 18              2266 	clr	b0
   0A66 80 69              2267 	sjmp	00114$
   0A68                    2268 00113$:
                           2269 ;	../fb_app_rs.c:319: sepcount++;
   0A68 0B                 2270 	inc	r3
                           2271 ;	../fb_app_rs.c:320: firstrun=1;
   0A69 D2 18              2272 	setb	b0
                           2273 ;	../fb_app_rs.c:321: adr+=adr_tmp;
   0A6B 8D 04              2274 	mov	ar4,r5
   0A6D 7F 00              2275 	mov	r7,#0x00
   0A6F A8 10              2276 	mov	r0,_bp
   0A71 08                 2277 	inc	r0
   0A72 EC                 2278 	mov	a,r4
   0A73 26                 2279 	add	a,@r0
   0A74 F6                 2280 	mov	@r0,a
   0A75 EF                 2281 	mov	a,r7
   0A76 08                 2282 	inc	r0
   0A77 36                 2283 	addc	a,@r0
   0A78 F6                 2284 	mov	@r0,a
                           2285 ;	../fb_app_rs.c:322: if (rsin[n]=='/') {		// für GA
   0A79 E5 10              2286 	mov	a,_bp
   0A7B 24 03              2287 	add	a,#0x03
   0A7D F8                 2288 	mov	r0,a
   0A7E E6                 2289 	mov	a,@r0
   0A7F 24 24              2290 	add	a,#_rsin
   0A81 F9                 2291 	mov	r1,a
   0A82 87 07              2292 	mov	ar7,@r1
   0A84 BF 2F 26           2293 	cjne	r7,#0x2F,00110$
                           2294 ;	../fb_app_rs.c:323: if (sepcount==1) adr=adr<<3; else adr=adr<<8;
   0A87 BB 01 18           2295 	cjne	r3,#0x01,00104$
   0A8A A8 10              2296 	mov	r0,_bp
   0A8C 08                 2297 	inc	r0
   0A8D 08                 2298 	inc	r0
   0A8E E6                 2299 	mov	a,@r0
   0A8F 18                 2300 	dec	r0
   0A90 C4                 2301 	swap	a
   0A91 03                 2302 	rr	a
   0A92 54 F8              2303 	anl	a,#0xF8
   0A94 C6                 2304 	xch	a,@r0
   0A95 C4                 2305 	swap	a
   0A96 03                 2306 	rr	a
   0A97 C6                 2307 	xch	a,@r0
   0A98 66                 2308 	xrl	a,@r0
   0A99 C6                 2309 	xch	a,@r0
   0A9A 54 F8              2310 	anl	a,#0xF8
   0A9C C6                 2311 	xch	a,@r0
   0A9D 66                 2312 	xrl	a,@r0
   0A9E 08                 2313 	inc	r0
   0A9F F6                 2314 	mov	@r0,a
   0AA0 80 2D              2315 	sjmp	00111$
   0AA2                    2316 00104$:
   0AA2 A8 10              2317 	mov	r0,_bp
   0AA4 08                 2318 	inc	r0
   0AA5 E6                 2319 	mov	a,@r0
   0AA6 08                 2320 	inc	r0
   0AA7 F6                 2321 	mov	@r0,a
   0AA8 18                 2322 	dec	r0
   0AA9 76 00              2323 	mov	@r0,#0x00
   0AAB 80 22              2324 	sjmp	00111$
   0AAD                    2325 00110$:
                           2326 ;	../fb_app_rs.c:326: if (sepcount==1) adr=adr<<4; else adr=adr<<8;
   0AAD BB 01 16           2327 	cjne	r3,#0x01,00107$
   0AB0 A8 10              2328 	mov	r0,_bp
   0AB2 08                 2329 	inc	r0
   0AB3 08                 2330 	inc	r0
   0AB4 E6                 2331 	mov	a,@r0
   0AB5 18                 2332 	dec	r0
   0AB6 C4                 2333 	swap	a
   0AB7 54 F0              2334 	anl	a,#0xF0
   0AB9 C6                 2335 	xch	a,@r0
   0ABA C4                 2336 	swap	a
   0ABB C6                 2337 	xch	a,@r0
   0ABC 66                 2338 	xrl	a,@r0
   0ABD C6                 2339 	xch	a,@r0
   0ABE 54 F0              2340 	anl	a,#0xF0
   0AC0 C6                 2341 	xch	a,@r0
   0AC1 66                 2342 	xrl	a,@r0
   0AC2 08                 2343 	inc	r0
   0AC3 F6                 2344 	mov	@r0,a
   0AC4 80 09              2345 	sjmp	00111$
   0AC6                    2346 00107$:
   0AC6 A8 10              2347 	mov	r0,_bp
   0AC8 08                 2348 	inc	r0
   0AC9 E6                 2349 	mov	a,@r0
   0ACA 08                 2350 	inc	r0
   0ACB F6                 2351 	mov	@r0,a
   0ACC 18                 2352 	dec	r0
   0ACD 76 00              2353 	mov	@r0,#0x00
   0ACF                    2354 00111$:
                           2355 ;	../fb_app_rs.c:328: adr_tmp=0;
   0ACF 7D 00              2356 	mov	r5,#0x00
   0AD1                    2357 00114$:
                           2358 ;	../fb_app_rs.c:330: n++;
   0AD1 E5 10              2359 	mov	a,_bp
   0AD3 24 03              2360 	add	a,#0x03
   0AD5 F8                 2361 	mov	r0,a
   0AD6 06                 2362 	inc	@r0
   0AD7 02 0A 09           2363 	ljmp	00117$
   0ADA                    2364 00119$:
                           2365 ;	../fb_app_rs.c:332: adr+=adr_tmp;
   0ADA 8D 04              2366 	mov	ar4,r5
   0ADC 7F 00              2367 	mov	r7,#0x00
   0ADE A8 10              2368 	mov	r0,_bp
   0AE0 08                 2369 	inc	r0
   0AE1 EC                 2370 	mov	a,r4
   0AE2 26                 2371 	add	a,@r0
   0AE3 F6                 2372 	mov	@r0,a
   0AE4 EF                 2373 	mov	a,r7
   0AE5 08                 2374 	inc	r0
   0AE6 36                 2375 	addc	a,@r0
   0AE7 F6                 2376 	mov	@r0,a
                           2377 ;	../fb_app_rs.c:333: return(adr);
   0AE8 A8 10              2378 	mov	r0,_bp
   0AEA 08                 2379 	inc	r0
   0AEB 86 82              2380 	mov	dpl,@r0
   0AED 08                 2381 	inc	r0
   0AEE 86 83              2382 	mov	dph,@r0
   0AF0 85 10 81           2383 	mov	sp,_bp
   0AF3 D0 10              2384 	pop	_bp
   0AF5 22                 2385 	ret
                           2386 ;------------------------------------------------------------
                           2387 ;Allocation info for local variables in function 'equal_pos'
                           2388 ;------------------------------------------------------------
                           2389 ;n                         Allocated to registers 
                           2390 ;pos                       Allocated to registers r7 
                           2391 ;------------------------------------------------------------
                           2392 ;	../fb_app_rs.c:339: unsigned char equal_pos(void)
                           2393 ;	-----------------------------------------
                           2394 ;	 function equal_pos
                           2395 ;	-----------------------------------------
   0AF6                    2396 _equal_pos:
                           2397 ;	../fb_app_rs.c:344: pos=0xFF;
   0AF6 7F FF              2398 	mov	r7,#0xFF
                           2399 ;	../fb_app_rs.c:345: while(n<(rsinpos-1)) {
   0AF8 7E 00              2400 	mov	r6,#0x00
   0AFA                    2401 00103$:
   0AFA AC 42              2402 	mov	r4,_rsinpos
   0AFC 7D 00              2403 	mov	r5,#0x00
   0AFE 1C                 2404 	dec	r4
   0AFF BC FF 01           2405 	cjne	r4,#0xFF,00115$
   0B02 1D                 2406 	dec	r5
   0B03                    2407 00115$:
   0B03 8E 02              2408 	mov	ar2,r6
   0B05 7B 00              2409 	mov	r3,#0x00
   0B07 C3                 2410 	clr	c
   0B08 EA                 2411 	mov	a,r2
   0B09 9C                 2412 	subb	a,r4
   0B0A EB                 2413 	mov	a,r3
   0B0B 64 80              2414 	xrl	a,#0x80
   0B0D 8D F0              2415 	mov	b,r5
   0B0F 63 F0 80           2416 	xrl	b,#0x80
   0B12 95 F0              2417 	subb	a,b
   0B14 50 0E              2418 	jnc	00105$
                           2419 ;	../fb_app_rs.c:346: if(rsin[n]=='=') pos=n;
   0B16 EE                 2420 	mov	a,r6
   0B17 24 24              2421 	add	a,#_rsin
   0B19 F9                 2422 	mov	r1,a
   0B1A 87 05              2423 	mov	ar5,@r1
   0B1C BD 3D 02           2424 	cjne	r5,#0x3D,00102$
   0B1F 8E 07              2425 	mov	ar7,r6
   0B21                    2426 00102$:
                           2427 ;	../fb_app_rs.c:347: n++;
   0B21 0E                 2428 	inc	r6
   0B22 80 D6              2429 	sjmp	00103$
   0B24                    2430 00105$:
                           2431 ;	../fb_app_rs.c:349: return(pos);
   0B24 8F 82              2432 	mov	dpl,r7
   0B26 22                 2433 	ret
                           2434 ;------------------------------------------------------------
                           2435 ;Allocation info for local variables in function 'serial_int'
                           2436 ;------------------------------------------------------------
                           2437 ;	../fb_app_rs.c:353: void serial_int(void) __interrupt (4) __using (1)	// Interrupt on received char from serial port
                           2438 ;	-----------------------------------------
                           2439 ;	 function serial_int
                           2440 ;	-----------------------------------------
   0B27                    2441 _serial_int:
                    000F   2442 	ar7 = 0x0F
                    000E   2443 	ar6 = 0x0E
                    000D   2444 	ar5 = 0x0D
                    000C   2445 	ar4 = 0x0C
                    000B   2446 	ar3 = 0x0B
                    000A   2447 	ar2 = 0x0A
                    0009   2448 	ar1 = 0x09
                    0008   2449 	ar0 = 0x08
   0B27 C0 E0              2450 	push	acc
   0B29 C0 82              2451 	push	dpl
   0B2B C0 83              2452 	push	dph
   0B2D C0 D0              2453 	push	psw
   0B2F 75 D0 08           2454 	mov	psw,#0x08
                           2455 ;	../fb_app_rs.c:355: ES=0;
   0B32 C2 AC              2456 	clr	_IEN0_4
                           2457 ;	../fb_app_rs.c:356: if (RI){
   0B34 30 98 30           2458 	jnb	_SCON_0,00112$
                           2459 ;	../fb_app_rs.c:357: if (rsinpos<30) {
   0B37 74 E2              2460 	mov	a,#0x100 - 0x1E
   0B39 25 42              2461 	add	a,_rsinpos
   0B3B 40 25              2462 	jc	00109$
                           2463 ;	../fb_app_rs.c:358: rxledcount=0x40;// * RXLED kurz eischalten
   0B3D 75 49 40           2464 	mov	_rxledcount,#0x40
                           2465 ;	../fb_app_rs.c:359: if(SBUF!=0x0A) {
   0B40 74 0A              2466 	mov	a,#0x0A
   0B42 B5 99 02           2467 	cjne	a,_SBUF,00127$
   0B45 80 1E              2468 	sjmp	00110$
   0B47                    2469 00127$:
                           2470 ;	../fb_app_rs.c:360: rsin[rsinpos]=SBUF;		// store byte in rsin
   0B47 E5 42              2471 	mov	a,_rsinpos
   0B49 24 24              2472 	add	a,#_rsin
   0B4B F8                 2473 	mov	r0,a
   0B4C A6 99              2474 	mov	@r0,_SBUF
                           2475 ;	../fb_app_rs.c:361: rsinpos++;
   0B4E 05 42              2476 	inc	_rsinpos
                           2477 ;	../fb_app_rs.c:362: if (echo) {
   0B50 90 1C FD           2478 	mov	dptr,#_echo
   0B53 E4                 2479 	clr	a
   0B54 93                 2480 	movc	a,@a+dptr
   0B55 FF                 2481 	mov	r7,a
   0B56 60 0D              2482 	jz	00110$
                           2483 ;	../fb_app_rs.c:363: while(!TI);
   0B58                    2484 00101$:
                           2485 ;	../fb_app_rs.c:364: TI=0;
   0B58 10 99 02           2486 	jbc	_SCON_1,00129$
   0B5B 80 FB              2487 	sjmp	00101$
   0B5D                    2488 00129$:
                           2489 ;	../fb_app_rs.c:365: SBUF=SBUF;
   0B5D 85 99 99           2490 	mov	_SBUF,_SBUF
   0B60 80 03              2491 	sjmp	00110$
   0B62                    2492 00109$:
                           2493 ;	../fb_app_rs.c:369: else rsinpos=0;
   0B62 75 42 00           2494 	mov	_rsinpos,#0x00
   0B65                    2495 00110$:
                           2496 ;	../fb_app_rs.c:370: RI=0;	
   0B65 C2 98              2497 	clr	_SCON_0
   0B67                    2498 00112$:
                           2499 ;	../fb_app_rs.c:372: ES=1;
   0B67 D2 AC              2500 	setb	_IEN0_4
   0B69 D0 D0              2501 	pop	psw
   0B6B D0 83              2502 	pop	dph
   0B6D D0 82              2503 	pop	dpl
   0B6F D0 E0              2504 	pop	acc
   0B71 32                 2505 	reti
                           2506 ;	eliminated unneeded push/pop b
                           2507 ;------------------------------------------------------------
                           2508 ;Allocation info for local variables in function 'send_ok'
                           2509 ;------------------------------------------------------------
                           2510 ;	../fb_app_rs.c:375: void send_ok(void)
                           2511 ;	-----------------------------------------
                           2512 ;	 function send_ok
                           2513 ;	-----------------------------------------
   0B72                    2514 _send_ok:
                    0007   2515 	ar7 = 0x07
                    0006   2516 	ar6 = 0x06
                    0005   2517 	ar5 = 0x05
                    0004   2518 	ar4 = 0x04
                    0003   2519 	ar3 = 0x03
                    0002   2520 	ar2 = 0x02
                    0001   2521 	ar1 = 0x01
                    0000   2522 	ar0 = 0x00
                           2523 ;	../fb_app_rs.c:377: rs_send_s("OK\n");
   0B72 90 1B 79           2524 	mov	dptr,#__str_0
   0B75 75 F0 80           2525 	mov	b,#0x80
   0B78 02 15 1A           2526 	ljmp	_rs_send_s
                           2527 ;------------------------------------------------------------
                           2528 ;Allocation info for local variables in function 'set_filtermode'
                           2529 ;------------------------------------------------------------
                           2530 ;mode                      Allocated to registers r7 
                           2531 ;------------------------------------------------------------
                           2532 ;	../fb_app_rs.c:380: void set_filtermode(unsigned char mode)
                           2533 ;	-----------------------------------------
                           2534 ;	 function set_filtermode
                           2535 ;	-----------------------------------------
   0B7B                    2536 _set_filtermode:
   0B7B AF 82              2537 	mov	r7,dpl
                           2538 ;	../fb_app_rs.c:382: write_ok=0;
   0B7D C2 01              2539 	clr	_write_ok
                           2540 ;	../fb_app_rs.c:383: while (!write_ok) {
   0B7F E4                 2541 	clr	a
   0B80 BF 31 01           2542 	cjne	r7,#0x31,00119$
   0B83 04                 2543 	inc	a
   0B84                    2544 00119$:
   0B84 FF                 2545 	mov	r7,a
   0B85                    2546 00106$:
   0B85 20 01 28           2547 	jb	_write_ok,00109$
                           2548 ;	../fb_app_rs.c:384: START_WRITECYCLE
   0B88 75 E4 00           2549 	mov	_FMCON,#0x00
                           2550 ;	../fb_app_rs.c:385: FMADRH = 0x1C;
   0B8B 75 E7 1C           2551 	mov	_FMADRH,#0x1C
                           2552 ;	../fb_app_rs.c:386: FMADRL = 0xFA;
   0B8E 75 E6 FA           2553 	mov	_FMADRL,#0xFA
                           2554 ;	../fb_app_rs.c:387: if(mode =='1'){
   0B91 EF                 2555 	mov	a,r7
   0B92 60 09              2556 	jz	00102$
                           2557 ;	../fb_app_rs.c:388: filtermode=1;
   0B94 D2 00              2558 	setb	_filtermode
                           2559 ;	../fb_app_rs.c:389: transparency=0;
   0B96 C2 10              2560 	clr	_transparency
                           2561 ;	../fb_app_rs.c:390: FMDATA = 1;		// LSB
   0B98 75 E5 01           2562 	mov	_FMDATA,#0x01
   0B9B 80 07              2563 	sjmp	00103$
   0B9D                    2564 00102$:
                           2565 ;	../fb_app_rs.c:393: filtermode=0;
   0B9D C2 00              2566 	clr	_filtermode
                           2567 ;	../fb_app_rs.c:394: transparency=1;
   0B9F D2 10              2568 	setb	_transparency
                           2569 ;	../fb_app_rs.c:395: FMDATA=0;
   0BA1 75 E5 00           2570 	mov	_FMDATA,#0x00
   0BA4                    2571 00103$:
                           2572 ;	../fb_app_rs.c:397: STOP_WRITECYCLE
   0BA4 75 E4 68           2573 	mov	_FMCON,#0x68
                           2574 ;	../fb_app_rs.c:398: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   0BA7 E5 E4              2575 	mov	a,_FMCON
   0BA9 20 E0 D9           2576 	jb	acc.0,00106$
   0BAC D2 01              2577 	setb	_write_ok
   0BAE 80 D5              2578 	sjmp	00106$
   0BB0                    2579 00109$:
   0BB0 22                 2580 	ret
                           2581 ;------------------------------------------------------------
                           2582 ;Allocation info for local variables in function 'restart_app'
                           2583 ;------------------------------------------------------------
                           2584 ;n                         Allocated to registers r7 
                           2585 ;------------------------------------------------------------
                           2586 ;	../fb_app_rs.c:403: void restart_app(void)
                           2587 ;	-----------------------------------------
                           2588 ;	 function restart_app
                           2589 ;	-----------------------------------------
   0BB1                    2590 _restart_app:
                           2591 ;	../fb_app_rs.c:408: P0M1=0x00;
   0BB1 75 84 00           2592 	mov	_P0M1,#0x00
                           2593 ;	../fb_app_rs.c:409: P0M2=0xC0;
   0BB4 75 85 C0           2594 	mov	_P0M2,#0xC0
                           2595 ;	../fb_app_rs.c:410: P0=0xC0;
   0BB7 75 80 C0           2596 	mov	_P0,#0xC0
                           2597 ;	../fb_app_rs.c:412: for (n=0;n<255;n++) ;	// Warten bis Bus stabil
   0BBA 7F FF              2598 	mov	r7,#0xFF
   0BBC                    2599 00103$:
   0BBC 8F 06              2600 	mov	ar6,r7
   0BBE 1E                 2601 	dec	r6
   0BBF 8E 07              2602 	mov	ar7,r6
   0BC1 EF                 2603 	mov	a,r7
   0BC2 70 F8              2604 	jnz	00103$
                           2605 ;	../fb_app_rs.c:417: RI=0;
   0BC4 C2 98              2606 	clr	_SCON_0
                           2607 ;	../fb_app_rs.c:418: TI=1;
   0BC6 D2 99              2608 	setb	_SCON_1
                           2609 ;	../fb_app_rs.c:419: ES=1;
   0BC8 D2 AC              2610 	setb	_IEN0_4
   0BCA 22                 2611 	ret
                           2612 	.area CSEG    (CODE)
                           2613 	.area CONST   (CODE)
                    1CFA   2614 _fm	=	0x1cfa
                    1CFB   2615 _pa_h	=	0x1cfb
                    1CFC   2616 _pa_l	=	0x1cfc
                    1CFD   2617 _echo	=	0x1cfd
                    1D00   2618 _ga_db	=	0x1d00
   1B79                    2619 __str_0:
   1B79 4F 4B              2620 	.ascii "OK"
   1B7B 0A                 2621 	.db 0x0A
   1B7C 00                 2622 	.db 0x00
                           2623 	.area XINIT   (CODE)
                           2624 	.area CABS    (ABS,CODE)
   1CFE                    2625 	.org 0x1CFE
   1CFE                    2626 _baud:
   1CFE C0 00              2627 	.byte #0xC0,#0x00	; 192
