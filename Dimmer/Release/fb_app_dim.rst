                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
                              4 ; This file was generated Sun Aug 14 13:44:17 2011
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_dim
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _P3_1
                             13 	.globl _P3_0
                             14 	.globl _P1_7
                             15 	.globl _P1_6
                             16 	.globl _P1_5
                             17 	.globl _P1_4
                             18 	.globl _P1_3
                             19 	.globl _P1_2
                             20 	.globl _P1_1
                             21 	.globl _P1_0
                             22 	.globl _P0_7
                             23 	.globl _P0_6
                             24 	.globl _P0_5
                             25 	.globl _P0_4
                             26 	.globl _P0_3
                             27 	.globl _P0_2
                             28 	.globl _P0_1
                             29 	.globl _P0_0
                             30 	.globl _I2CON_0
                             31 	.globl _I2CON_2
                             32 	.globl _I2CON_3
                             33 	.globl _I2CON_4
                             34 	.globl _I2CON_5
                             35 	.globl _I2CON_6
                             36 	.globl _SCON_7
                             37 	.globl _SCON_6
                             38 	.globl _SCON_5
                             39 	.globl _SCON_4
                             40 	.globl _SCON_3
                             41 	.globl _SCON_2
                             42 	.globl _SCON_1
                             43 	.globl _SCON_0
                             44 	.globl _IP0_0
                             45 	.globl _IP0_1
                             46 	.globl _IP0_2
                             47 	.globl _IP0_3
                             48 	.globl _IP0_4
                             49 	.globl _IP0_5
                             50 	.globl _IP0_6
                             51 	.globl _IP1_0
                             52 	.globl _IP1_1
                             53 	.globl _IP1_2
                             54 	.globl _IP1_6
                             55 	.globl _IEN1_0
                             56 	.globl _IEN1_1
                             57 	.globl _IEN1_2
                             58 	.globl _IEN0_0
                             59 	.globl _IEN0_1
                             60 	.globl _IEN0_2
                             61 	.globl _IEN0_3
                             62 	.globl _IEN0_4
                             63 	.globl _IEN0_5
                             64 	.globl _IEN0_6
                             65 	.globl _IEN0_7
                             66 	.globl _TCON_0
                             67 	.globl _TCON_1
                             68 	.globl _TCON_2
                             69 	.globl _TCON_3
                             70 	.globl _TCON_4
                             71 	.globl _TCON_5
                             72 	.globl _TCON_6
                             73 	.globl _TCON_7
                             74 	.globl _PSW_7
                             75 	.globl _PSW_6
                             76 	.globl _PSW_5
                             77 	.globl _PSW_4
                             78 	.globl _PSW_3
                             79 	.globl _PSW_2
                             80 	.globl _PSW_1
                             81 	.globl _PSW_0
                             82 	.globl _IEN1
                             83 	.globl _IP0H
                             84 	.globl _WFEED2
                             85 	.globl _WFEED1
                             86 	.globl _WDL
                             87 	.globl _WDCON
                             88 	.globl _TRIM
                             89 	.globl _TAMOD
                             90 	.globl _SSTAT
                             91 	.globl _RTCL
                             92 	.globl _RTCH
                             93 	.globl _RTCCON
                             94 	.globl _RSTSRC
                             95 	.globl _PT0AD
                             96 	.globl _PCONA
                             97 	.globl _P3M2
                             98 	.globl _P3M1
                             99 	.globl _P1M2
                            100 	.globl _P1M1
                            101 	.globl _P0M2
                            102 	.globl _P0M1
                            103 	.globl _KBPATN
                            104 	.globl _KBMASK
                            105 	.globl _KBCON
                            106 	.globl _IP1H
                            107 	.globl _IP1
                            108 	.globl _I2STAT
                            109 	.globl _I2SCLL
                            110 	.globl _I2SCLH
                            111 	.globl _I2DAT
                            112 	.globl _I2CON
                            113 	.globl _I2ADR
                            114 	.globl _FMDATA
                            115 	.globl _FMCON
                            116 	.globl _FMADRL
                            117 	.globl _FMADRH
                            118 	.globl _DIVM
                            119 	.globl _CMP2
                            120 	.globl _CMP1
                            121 	.globl _BRGCON
                            122 	.globl _BRGR1
                            123 	.globl _BRGR0
                            124 	.globl _SADEN
                            125 	.globl _SADDR
                            126 	.globl _AUXR1
                            127 	.globl _SBUF
                            128 	.globl _SCON
                            129 	.globl _IP0
                            130 	.globl _IEN0
                            131 	.globl _TH1
                            132 	.globl _TH0
                            133 	.globl _TL1
                            134 	.globl _TL0
                            135 	.globl _TMOD
                            136 	.globl _TCON
                            137 	.globl _PCON
                            138 	.globl _DPH
                            139 	.globl _DPL
                            140 	.globl _SP
                            141 	.globl _B
                            142 	.globl _ACC
                            143 	.globl _PSW
                            144 	.globl _P3
                            145 	.globl _P1
                            146 	.globl _P0
                            147 	.globl _delay_toggle
                            148 	.globl _timer
                            149 	.globl _logicstate
                            150 	.globl _blocked
                            151 	.globl _zfstate
                            152 	.globl _portbuffer
                            153 	.globl _Tval
                            154 	.globl _send_value
                            155 	.globl _write_value_req
                            156 	.globl _write_obj_lz
                            157 	.globl _read_value_req
                            158 	.globl _respond
                            159 ;--------------------------------------------------------
                            160 ; special function registers
                            161 ;--------------------------------------------------------
                            162 	.area RSEG    (DATA)
                    0080    163 _P0	=	0x0080
                    0090    164 _P1	=	0x0090
                    00B0    165 _P3	=	0x00b0
                    00D0    166 _PSW	=	0x00d0
                    00E0    167 _ACC	=	0x00e0
                    00F0    168 _B	=	0x00f0
                    0081    169 _SP	=	0x0081
                    0082    170 _DPL	=	0x0082
                    0083    171 _DPH	=	0x0083
                    0087    172 _PCON	=	0x0087
                    0088    173 _TCON	=	0x0088
                    0089    174 _TMOD	=	0x0089
                    008A    175 _TL0	=	0x008a
                    008B    176 _TL1	=	0x008b
                    008C    177 _TH0	=	0x008c
                    008D    178 _TH1	=	0x008d
                    00A8    179 _IEN0	=	0x00a8
                    00B8    180 _IP0	=	0x00b8
                    0098    181 _SCON	=	0x0098
                    0099    182 _SBUF	=	0x0099
                    00A2    183 _AUXR1	=	0x00a2
                    00A9    184 _SADDR	=	0x00a9
                    00B9    185 _SADEN	=	0x00b9
                    00BE    186 _BRGR0	=	0x00be
                    00BF    187 _BRGR1	=	0x00bf
                    00BD    188 _BRGCON	=	0x00bd
                    00AC    189 _CMP1	=	0x00ac
                    00AD    190 _CMP2	=	0x00ad
                    0095    191 _DIVM	=	0x0095
                    00E7    192 _FMADRH	=	0x00e7
                    00E6    193 _FMADRL	=	0x00e6
                    00E4    194 _FMCON	=	0x00e4
                    00E5    195 _FMDATA	=	0x00e5
                    00DB    196 _I2ADR	=	0x00db
                    00D8    197 _I2CON	=	0x00d8
                    00DA    198 _I2DAT	=	0x00da
                    00DD    199 _I2SCLH	=	0x00dd
                    00DC    200 _I2SCLL	=	0x00dc
                    00D9    201 _I2STAT	=	0x00d9
                    00F8    202 _IP1	=	0x00f8
                    00F7    203 _IP1H	=	0x00f7
                    0094    204 _KBCON	=	0x0094
                    0086    205 _KBMASK	=	0x0086
                    0093    206 _KBPATN	=	0x0093
                    0084    207 _P0M1	=	0x0084
                    0085    208 _P0M2	=	0x0085
                    0091    209 _P1M1	=	0x0091
                    0092    210 _P1M2	=	0x0092
                    00B1    211 _P3M1	=	0x00b1
                    00B2    212 _P3M2	=	0x00b2
                    00B5    213 _PCONA	=	0x00b5
                    00F6    214 _PT0AD	=	0x00f6
                    00DF    215 _RSTSRC	=	0x00df
                    00D1    216 _RTCCON	=	0x00d1
                    00D2    217 _RTCH	=	0x00d2
                    00D3    218 _RTCL	=	0x00d3
                    00BA    219 _SSTAT	=	0x00ba
                    008F    220 _TAMOD	=	0x008f
                    0096    221 _TRIM	=	0x0096
                    00A7    222 _WDCON	=	0x00a7
                    00C1    223 _WDL	=	0x00c1
                    00C2    224 _WFEED1	=	0x00c2
                    00C3    225 _WFEED2	=	0x00c3
                    00B7    226 _IP0H	=	0x00b7
                    00E8    227 _IEN1	=	0x00e8
                            228 ;--------------------------------------------------------
                            229 ; special function bits
                            230 ;--------------------------------------------------------
                            231 	.area RSEG    (DATA)
                    00D0    232 _PSW_0	=	0x00d0
                    00D1    233 _PSW_1	=	0x00d1
                    00D2    234 _PSW_2	=	0x00d2
                    00D3    235 _PSW_3	=	0x00d3
                    00D4    236 _PSW_4	=	0x00d4
                    00D5    237 _PSW_5	=	0x00d5
                    00D6    238 _PSW_6	=	0x00d6
                    00D7    239 _PSW_7	=	0x00d7
                    008F    240 _TCON_7	=	0x008f
                    008E    241 _TCON_6	=	0x008e
                    008D    242 _TCON_5	=	0x008d
                    008C    243 _TCON_4	=	0x008c
                    008B    244 _TCON_3	=	0x008b
                    008A    245 _TCON_2	=	0x008a
                    0089    246 _TCON_1	=	0x0089
                    0088    247 _TCON_0	=	0x0088
                    00AF    248 _IEN0_7	=	0x00af
                    00AE    249 _IEN0_6	=	0x00ae
                    00AD    250 _IEN0_5	=	0x00ad
                    00AC    251 _IEN0_4	=	0x00ac
                    00AB    252 _IEN0_3	=	0x00ab
                    00AA    253 _IEN0_2	=	0x00aa
                    00A9    254 _IEN0_1	=	0x00a9
                    00A8    255 _IEN0_0	=	0x00a8
                    00EA    256 _IEN1_2	=	0x00ea
                    00E9    257 _IEN1_1	=	0x00e9
                    00E8    258 _IEN1_0	=	0x00e8
                    00FE    259 _IP1_6	=	0x00fe
                    00FA    260 _IP1_2	=	0x00fa
                    00F9    261 _IP1_1	=	0x00f9
                    00F8    262 _IP1_0	=	0x00f8
                    00BE    263 _IP0_6	=	0x00be
                    00BD    264 _IP0_5	=	0x00bd
                    00BC    265 _IP0_4	=	0x00bc
                    00BB    266 _IP0_3	=	0x00bb
                    00BA    267 _IP0_2	=	0x00ba
                    00B9    268 _IP0_1	=	0x00b9
                    00B8    269 _IP0_0	=	0x00b8
                    0098    270 _SCON_0	=	0x0098
                    0099    271 _SCON_1	=	0x0099
                    009A    272 _SCON_2	=	0x009a
                    009B    273 _SCON_3	=	0x009b
                    009C    274 _SCON_4	=	0x009c
                    009D    275 _SCON_5	=	0x009d
                    009E    276 _SCON_6	=	0x009e
                    009F    277 _SCON_7	=	0x009f
                    00DE    278 _I2CON_6	=	0x00de
                    00DD    279 _I2CON_5	=	0x00dd
                    00DC    280 _I2CON_4	=	0x00dc
                    00DB    281 _I2CON_3	=	0x00db
                    00DA    282 _I2CON_2	=	0x00da
                    00D8    283 _I2CON_0	=	0x00d8
                    0080    284 _P0_0	=	0x0080
                    0081    285 _P0_1	=	0x0081
                    0082    286 _P0_2	=	0x0082
                    0083    287 _P0_3	=	0x0083
                    0084    288 _P0_4	=	0x0084
                    0085    289 _P0_5	=	0x0085
                    0086    290 _P0_6	=	0x0086
                    0087    291 _P0_7	=	0x0087
                    0090    292 _P1_0	=	0x0090
                    0091    293 _P1_1	=	0x0091
                    0092    294 _P1_2	=	0x0092
                    0093    295 _P1_3	=	0x0093
                    0094    296 _P1_4	=	0x0094
                    0095    297 _P1_5	=	0x0095
                    0096    298 _P1_6	=	0x0096
                    0097    299 _P1_7	=	0x0097
                    00B0    300 _P3_0	=	0x00b0
                    00B1    301 _P3_1	=	0x00b1
                            302 ;--------------------------------------------------------
                            303 ; overlayable register banks
                            304 ;--------------------------------------------------------
                            305 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     306 	.ds 8
                            307 ;--------------------------------------------------------
                            308 ; overlayable bit register bank
                            309 ;--------------------------------------------------------
                            310 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     311 bits:
   0021                     312 	.ds 1
                    8000    313 	b0 = bits[0]
                    8100    314 	b1 = bits[1]
                    8200    315 	b2 = bits[2]
                    8300    316 	b3 = bits[3]
                    8400    317 	b4 = bits[4]
                    8500    318 	b5 = bits[5]
                    8600    319 	b6 = bits[6]
                    8700    320 	b7 = bits[7]
                            321 ;--------------------------------------------------------
                            322 ; internal ram data
                            323 ;--------------------------------------------------------
                            324 	.area DSEG    (DATA)
   0008                     325 _Tval::
   0008                     326 	.ds 1
   0009                     327 _portbuffer::
   0009                     328 	.ds 1
   000A                     329 _zfstate::
   000A                     330 	.ds 1
   000B                     331 _blocked::
   000B                     332 	.ds 1
   000C                     333 _logicstate::
   000C                     334 	.ds 1
   000D                     335 _timer::
   000D                     336 	.ds 4
                            337 ;--------------------------------------------------------
                            338 ; overlayable items in internal ram 
                            339 ;--------------------------------------------------------
                            340 	.area OSEG    (OVR,DATA)
                            341 ;--------------------------------------------------------
                            342 ; indirectly addressable internal ram data
                            343 ;--------------------------------------------------------
                            344 	.area ISEG    (DATA)
                            345 ;--------------------------------------------------------
                            346 ; absolute internal ram data
                            347 ;--------------------------------------------------------
                            348 	.area IABS    (ABS,DATA)
                            349 	.area IABS    (ABS,DATA)
                            350 ;--------------------------------------------------------
                            351 ; bit data
                            352 ;--------------------------------------------------------
                            353 	.area BSEG    (BIT)
   0000                     354 _delay_toggle::
   0000                     355 	.ds 1
                            356 ;--------------------------------------------------------
                            357 ; paged external ram data
                            358 ;--------------------------------------------------------
                            359 	.area PSEG    (PAG,XDATA)
                            360 ;--------------------------------------------------------
                            361 ; external ram data
                            362 ;--------------------------------------------------------
                            363 	.area XSEG    (XDATA)
                            364 ;--------------------------------------------------------
                            365 ; absolute external ram data
                            366 ;--------------------------------------------------------
                            367 	.area XABS    (ABS,XDATA)
                            368 ;--------------------------------------------------------
                            369 ; external initialized ram data
                            370 ;--------------------------------------------------------
                            371 	.area XISEG   (XDATA)
                            372 	.area HOME    (CODE)
                            373 	.area GSINIT0 (CODE)
                            374 	.area GSINIT1 (CODE)
                            375 	.area GSINIT2 (CODE)
                            376 	.area GSINIT3 (CODE)
                            377 	.area GSINIT4 (CODE)
                            378 	.area GSINIT5 (CODE)
                            379 	.area GSINIT  (CODE)
                            380 	.area GSFINAL (CODE)
                            381 	.area CSEG    (CODE)
                            382 ;--------------------------------------------------------
                            383 ; global & static initialisations
                            384 ;--------------------------------------------------------
                            385 	.area HOME    (CODE)
                            386 	.area GSINIT  (CODE)
                            387 	.area GSFINAL (CODE)
                            388 	.area GSINIT  (CODE)
                            389 ;--------------------------------------------------------
                            390 ; Home
                            391 ;--------------------------------------------------------
                            392 	.area HOME    (CODE)
                            393 	.area HOME    (CODE)
                            394 ;--------------------------------------------------------
                            395 ; code
                            396 ;--------------------------------------------------------
                            397 	.area CSEG    (CODE)
                            398 ;------------------------------------------------------------
                            399 ;Allocation info for local variables in function 'send_value'
                            400 ;------------------------------------------------------------
                            401 ;objno                     Allocated to stack - offset -3
                            402 ;sval                      Allocated to stack - offset -5
                            403 ;type                      Allocated to registers r2 
                            404 ;ga                        Allocated to registers r3 r4 
                            405 ;objtype                   Allocated to registers r2 
                            406 ;------------------------------------------------------------
                            407 ;	../fb_app_dim.c:38: void send_value(unsigned char type, unsigned char objno, int sval)      // sucht Gruppenadresse für das Objekt objno uns sendet ein EIS Telegramm
                            408 ;	-----------------------------------------
                            409 ;	 function send_value
                            410 ;	-----------------------------------------
   008A                     411 _send_value:
                    0002    412 	ar2 = 0x02
                    0003    413 	ar3 = 0x03
                    0004    414 	ar4 = 0x04
                    0005    415 	ar5 = 0x05
                    0006    416 	ar6 = 0x06
                    0007    417 	ar7 = 0x07
                    0000    418 	ar0 = 0x00
                    0001    419 	ar1 = 0x01
   008A C0 15               420 	push	_bp
   008C 85 81 15            421 	mov	_bp,sp
   008F AA 82               422 	mov	r2,dpl
                            423 ;	../fb_app_dim.c:43: ga=find_ga(objno);                            // wenn keine Gruppenadresse hintrlegt nix tun
   0091 A8 15               424 	mov	r0,_bp
   0093 18                  425 	dec	r0
   0094 18                  426 	dec	r0
   0095 18                  427 	dec	r0
   0096 86 82               428 	mov	dpl,@r0
   0098 C0 02               429 	push	ar2
   009A 12 14 0C            430 	lcall	_find_ga
   009D AB 82               431 	mov	r3,dpl
   009F AC 83               432 	mov	r4,dph
   00A1 D0 02               433 	pop	ar2
                            434 ;	../fb_app_dim.c:44: if (ga!=0)
   00A3 EB                  435 	mov	a,r3
   00A4 4C                  436 	orl	a,r4
   00A5 70 03               437 	jnz	00121$
   00A7 02 01 29            438 	ljmp	00113$
   00AA                     439 00121$:
                            440 ;	../fb_app_dim.c:46: telegramm[0]=0xBC;
   00AA 75 4D BC            441 	mov	_telegramm,#0xBC
                            442 ;	../fb_app_dim.c:47: telegramm[1]=eeprom[ADDRTAB+1];
   00AD 90 1D 17            443 	mov	dptr,#(_eeprom + 0x0017)
   00B0 E4                  444 	clr	a
   00B1 93                  445 	movc	a,@a+dptr
   00B2 FD                  446 	mov	r5,a
   00B3 8D 4E               447 	mov	(_telegramm + 0x0001),r5
                            448 ;	../fb_app_dim.c:48: telegramm[2]=eeprom[ADDRTAB+2];
   00B5 90 1D 18            449 	mov	dptr,#(_eeprom + 0x0018)
   00B8 E4                  450 	clr	a
   00B9 93                  451 	movc	a,@a+dptr
   00BA FD                  452 	mov	r5,a
   00BB 8D 4F               453 	mov	(_telegramm + 0x0002),r5
                            454 ;	../fb_app_dim.c:49: telegramm[3]=ga>>8;
   00BD 8C 05               455 	mov	ar5,r4
   00BF 8D 50               456 	mov	(_telegramm + 0x0003),r5
                            457 ;	../fb_app_dim.c:50: telegramm[4]=ga;
   00C1 8B 51               458 	mov	(_telegramm + 0x0004),r3
                            459 ;	../fb_app_dim.c:51: telegramm[6]=0x00;
   00C3 75 53 00            460 	mov	(_telegramm + 0x0006),#0x00
                            461 ;	../fb_app_dim.c:52: if (type==0) telegramm[7]=0x40;             // read_value_response Telegramm (angefordert)
   00C6 EA                  462 	mov	a,r2
   00C7 70 05               463 	jnz	00102$
   00C9 75 54 40            464 	mov	(_telegramm + 0x0007),#0x40
   00CC 80 03               465 	sjmp	00103$
   00CE                     466 00102$:
                            467 ;	../fb_app_dim.c:53: else telegramm[7]=0x80;                     // write_value_request Telegramm (nicht angefordert)
   00CE 75 54 80            468 	mov	(_telegramm + 0x0007),#0x80
   00D1                     469 00103$:
                            470 ;	../fb_app_dim.c:55: objtype=read_obj_type(objno);
   00D1 A8 15               471 	mov	r0,_bp
   00D3 18                  472 	dec	r0
   00D4 18                  473 	dec	r0
   00D5 18                  474 	dec	r0
   00D6 86 82               475 	mov	dpl,@r0
   00D8 12 15 77            476 	lcall	_read_obj_type
   00DB AA 82               477 	mov	r2,dpl
                            478 ;	../fb_app_dim.c:57: if(objtype<6) {                             // Objekttyp, 1-6 Bit
   00DD BA 06 00            479 	cjne	r2,#0x06,00123$
   00E0                     480 00123$:
   00E0 E4                  481 	clr	a
   00E1 33                  482 	rlc	a
   00E2 FB                  483 	mov	r3,a
   00E3 60 0E               484 	jz	00105$
                            485 ;	../fb_app_dim.c:58: telegramm[5]=0xE1;
   00E5 75 52 E1            486 	mov	(_telegramm + 0x0005),#0xE1
                            487 ;	../fb_app_dim.c:59: telegramm[7]+=sval;
   00E8 E5 15               488 	mov	a,_bp
   00EA 24 FB               489 	add	a,#0xfb
   00EC F8                  490 	mov	r0,a
   00ED E6                  491 	mov	a,@r0
   00EE FC                  492 	mov	r4,a
   00EF 25 54               493 	add	a,(_telegramm + 0x0007)
   00F1 F5 54               494 	mov	(_telegramm + 0x0007),a
   00F3                     495 00105$:
                            496 ;	../fb_app_dim.c:62: if(objtype>=6 && objtype<=7) {              // Objekttyp, 7-8 Bit
   00F3 EB                  497 	mov	a,r3
   00F4 70 11               498 	jnz	00107$
   00F6 EA                  499 	mov	a,r2
   00F7 24 F8               500 	add	a,#0xff - 0x07
   00F9 40 0C               501 	jc	00107$
                            502 ;	../fb_app_dim.c:63: telegramm[5]=0xE2;
   00FB 75 52 E2            503 	mov	(_telegramm + 0x0005),#0xE2
                            504 ;	../fb_app_dim.c:64: telegramm[8]=sval;
   00FE E5 15               505 	mov	a,_bp
   0100 24 FB               506 	add	a,#0xfb
   0102 F8                  507 	mov	r0,a
   0103 86 03               508 	mov	ar3,@r0
   0105 8B 55               509 	mov	(_telegramm + 0x0008),r3
   0107                     510 00107$:
                            511 ;	../fb_app_dim.c:67: if(objtype==8) {                           // Objekttyp, 16 Bit
   0107 BA 08 16            512 	cjne	r2,#0x08,00110$
                            513 ;	../fb_app_dim.c:68: telegramm[5]=0xE3;
   010A 75 52 E3            514 	mov	(_telegramm + 0x0005),#0xE3
                            515 ;	../fb_app_dim.c:69: telegramm[8]=sval>>8;
   010D E5 15               516 	mov	a,_bp
   010F 24 FB               517 	add	a,#0xfb
   0111 F8                  518 	mov	r0,a
   0112 08                  519 	inc	r0
   0113 86 02               520 	mov	ar2,@r0
   0115 8A 55               521 	mov	(_telegramm + 0x0008),r2
                            522 ;	../fb_app_dim.c:70: telegramm[9]=sval;
   0117 E5 15               523 	mov	a,_bp
   0119 24 FB               524 	add	a,#0xfb
   011B F8                  525 	mov	r0,a
   011C 86 02               526 	mov	ar2,@r0
   011E 8A 56               527 	mov	(_telegramm + 0x0009),r2
   0120                     528 00110$:
                            529 ;	../fb_app_dim.c:73: EX1=0;
   0120 C2 AA               530 	clr	_IEN0_2
                            531 ;	../fb_app_dim.c:74: send_telegramm();
   0122 12 11 87            532 	lcall	_send_telegramm
                            533 ;	../fb_app_dim.c:75: IE1=0;
   0125 C2 8B               534 	clr	_TCON_3
                            535 ;	../fb_app_dim.c:76: EX1=1;
   0127 D2 AA               536 	setb	_IEN0_2
   0129                     537 00113$:
   0129 D0 15               538 	pop	_bp
   012B 22                  539 	ret
                            540 ;------------------------------------------------------------
                            541 ;Allocation info for local variables in function 'write_value_req'
                            542 ;------------------------------------------------------------
                            543 ;c                         Allocated to stack - offset 1
                            544 ;objno                     Allocated to registers r3 
                            545 ;gapos                     Allocated to stack - offset 2
                            546 ;atp                       Allocated to registers r3 
                            547 ;assno                     Allocated to stack - offset 3
                            548 ;n                         Allocated to stack - offset 4
                            549 ;gaposh                    Allocated to registers r6 
                            550 ;datal                     Allocated to registers r5 
                            551 ;b_send                    Allocated to registers b0 
                            552 ;dataw                     Allocated to stack - offset 5
                            553 ;sperr                     Allocated to registers r2 
                            554 ;commObjectNumber          Allocated to stack - offset 6
                            555 ;sloc0                     Allocated to stack - offset 7
                            556 ;sloc1                     Allocated to stack - offset 8
                            557 ;sloc2                     Allocated to stack - offset 9
                            558 ;sloc3                     Allocated to stack - offset 17
                            559 ;sloc4                     Allocated to stack - offset 11
                            560 ;------------------------------------------------------------
                            561 ;	../fb_app_dim.c:84: void write_value_req(void)				// Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
                            562 ;	-----------------------------------------
                            563 ;	 function write_value_req
                            564 ;	-----------------------------------------
   012C                     565 _write_value_req:
   012C C0 15               566 	push	_bp
   012E E5 81               567 	mov	a,sp
   0130 F5 15               568 	mov	_bp,a
   0132 24 0B               569 	add	a,#0x0b
   0134 F5 81               570 	mov	sp,a
                            571 ;	../fb_app_dim.c:87: bit b_send=0;//wert setzen und rueckmelden
   0136 C2 08               572 	clr	b0
                            573 ;	../fb_app_dim.c:92: gapos=gapos_in_gat(telegramm[3],telegramm[4]);	// Position der Gruppenadresse in der Adresstabelle
   0138 85 50 82            574 	mov	dpl,(_telegramm + 0x0003)
   013B C0 21               575 	push	bits
   013D C0 51               576 	push	(_telegramm + 0x0004)
   013F 12 14 5B            577 	lcall	_gapos_in_gat
   0142 AA 82               578 	mov	r2,dpl
   0144 15 81               579 	dec	sp
   0146 D0 21               580 	pop	bits
   0148 A8 15               581 	mov	r0,_bp
   014A 08                  582 	inc	r0
   014B 08                  583 	inc	r0
   014C A6 02               584 	mov	@r0,ar2
                            585 ;	../fb_app_dim.c:94: if (gapos!=0xFF)					// =0xFF falls nicht vorhanden
   014E A8 15               586 	mov	r0,_bp
   0150 08                  587 	inc	r0
   0151 08                  588 	inc	r0
   0152 B6 FF 03            589 	cjne	@r0,#0xFF,00192$
   0155 02 06 38            590 	ljmp	00154$
   0158                     591 00192$:
                            592 ;	../fb_app_dim.c:96: send_ack();
   0158 C0 21               593 	push	bits
   015A 12 12 3B            594 	lcall	_send_ack
   015D D0 21               595 	pop	bits
                            596 ;	../fb_app_dim.c:97: rs_send_s("\nwr_val_rq ");
   015F 90 17 64            597 	mov	dptr,#__str_0
   0162 75 F0 80            598 	mov	b,#0x80
   0165 C0 21               599 	push	bits
   0167 12 16 F2            600 	lcall	_rs_send_s
   016A D0 21               601 	pop	bits
                            602 ;	../fb_app_dim.c:98: atp=eeprom[ASSOCTABPTR];			// Start Association Table
   016C 90 1D 11            603 	mov	dptr,#(_eeprom + 0x0011)
   016F E4                  604 	clr	a
   0170 93                  605 	movc	a,@a+dptr
                            606 ;	../fb_app_dim.c:99: assno=eeprom[atp];			// Erster Eintrag = Anzahl Einträge
   0171 FB                  607 	mov	r3,a
   0172 F5 82               608 	mov	dpl,a
   0174 75 83 1D            609 	mov	dph,#(_eeprom >> 8)
   0177 E4                  610 	clr	a
   0178 93                  611 	movc	a,@a+dptr
   0179 FC                  612 	mov	r4,a
   017A A8 15               613 	mov	r0,_bp
   017C 08                  614 	inc	r0
   017D 08                  615 	inc	r0
   017E 08                  616 	inc	r0
   017F A6 04               617 	mov	@r0,ar4
                            618 ;	../fb_app_dim.c:100: datal=telegramm[8];                       //wert sichern nach respond ist er anders
   0181 AD 55               619 	mov	r5,(_telegramm + 0x0008)
                            620 ;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   0183 74 02               621 	mov	a,#0x02
   0185 2B                  622 	add	a,r3
   0186 FE                  623 	mov	r6,a
   0187 74 80               624 	mov	a,#0x80
   0189 5D                  625 	anl	a,r5
   018A FF                  626 	mov	r7,a
   018B E4                  627 	clr	a
   018C BF 80 01            628 	cjne	r7,#0x80,00193$
   018F 04                  629 	inc	a
   0190                     630 00193$:
   0190 FF                  631 	mov	r7,a
   0191 74 7F               632 	mov	a,#0x7F
   0193 5D                  633 	anl	a,r5
   0194 24 E7               634 	add	a,#0xE7
   0196 FD                  635 	mov	r5,a
   0197 E5 15               636 	mov	a,_bp
   0199 24 07               637 	add	a,#0x07
   019B F8                  638 	mov	r0,a
   019C A6 05               639 	mov	@r0,ar5
   019E E5 15               640 	mov	a,_bp
   01A0 24 0B               641 	add	a,#0x0b
   01A2 F8                  642 	mov	r0,a
   01A3 EB                  643 	mov	a,r3
   01A4 04                  644 	inc	a
   01A5 F6                  645 	mov	@r0,a
   01A6 E5 15               646 	mov	a,_bp
   01A8 24 04               647 	add	a,#0x04
   01AA F8                  648 	mov	r0,a
   01AB 76 00               649 	mov	@r0,#0x00
   01AD                     650 00150$:
   01AD E5 15               651 	mov	a,_bp
   01AF 24 04               652 	add	a,#0x04
   01B1 F8                  653 	mov	r0,a
   01B2 A9 15               654 	mov	r1,_bp
   01B4 09                  655 	inc	r1
   01B5 09                  656 	inc	r1
   01B6 09                  657 	inc	r1
   01B7 C3                  658 	clr	c
   01B8 E6                  659 	mov	a,@r0
   01B9 97                  660 	subb	a,@r1
   01BA 40 03               661 	jc	00195$
   01BC 02 06 38            662 	ljmp	00154$
   01BF                     663 00195$:
                            664 ;	../fb_app_dim.c:104: gaposh=eeprom[atp+1+(n*2)];
   01BF C0 06               665 	push	ar6
   01C1 E5 15               666 	mov	a,_bp
   01C3 24 04               667 	add	a,#0x04
   01C5 F8                  668 	mov	r0,a
   01C6 E6                  669 	mov	a,@r0
   01C7 25 E0               670 	add	a,acc
   01C9 FA                  671 	mov	r2,a
   01CA E5 15               672 	mov	a,_bp
   01CC 24 0B               673 	add	a,#0x0b
   01CE F8                  674 	mov	r0,a
   01CF EA                  675 	mov	a,r2
   01D0 26                  676 	add	a,@r0
   01D1 90 1D 00            677 	mov	dptr,#_eeprom
   01D4 93                  678 	movc	a,@a+dptr
   01D5 FE                  679 	mov	r6,a
                            680 ;	../fb_app_dim.c:105: if(gapos==gaposh)			// Wenn Positionsnummer übereinstimmt
   01D6 A8 15               681 	mov	r0,_bp
   01D8 08                  682 	inc	r0
   01D9 08                  683 	inc	r0
   01DA E6                  684 	mov	a,@r0
   01DB B5 06 04            685 	cjne	a,ar6,00196$
   01DE 74 01               686 	mov	a,#0x01
   01E0 80 01               687 	sjmp	00197$
   01E2                     688 00196$:
   01E2 E4                  689 	clr	a
   01E3                     690 00197$:
   01E3 D0 06               691 	pop	ar6
   01E5 70 03               692 	jnz	00198$
   01E7 02 06 2F            693 	ljmp	00152$
   01EA                     694 00198$:
                            695 ;	../fb_app_dim.c:107: objno=eeprom[atp+2+(n*2)];		// Objektnummer
   01EA EA                  696 	mov	a,r2
   01EB 2E                  697 	add	a,r6
   01EC 90 1D 00            698 	mov	dptr,#_eeprom
   01EF 93                  699 	movc	a,@a+dptr
   01F0 FB                  700 	mov	r3,a
                            701 ;	../fb_app_dim.c:108: commObjectNumber=objno;
   01F1 E5 15               702 	mov	a,_bp
   01F3 24 06               703 	add	a,#0x06
   01F5 F8                  704 	mov	r0,a
   01F6 A6 03               705 	mov	@r0,ar3
                            706 ;	../fb_app_dim.c:109: dataw=telegramm[7]&0x3f;
   01F8 E5 15               707 	mov	a,_bp
   01FA 24 05               708 	add	a,#0x05
   01FC F8                  709 	mov	r0,a
   01FD 74 3F               710 	mov	a,#0x3F
   01FF 55 54               711 	anl	a,(_telegramm + 0x0007)
   0201 F6                  712 	mov	@r0,a
                            713 ;	../fb_app_dim.c:111: rs_send_s(" ");
   0202 90 17 70            714 	mov	dptr,#__str_1
   0205 75 F0 80            715 	mov	b,#0x80
   0208 C0 03               716 	push	ar3
   020A C0 05               717 	push	ar5
   020C C0 06               718 	push	ar6
   020E C0 07               719 	push	ar7
   0210 C0 21               720 	push	bits
   0212 12 16 F2            721 	lcall	_rs_send_s
   0215 D0 21               722 	pop	bits
   0217 D0 07               723 	pop	ar7
   0219 D0 06               724 	pop	ar6
   021B D0 05               725 	pop	ar5
   021D D0 03               726 	pop	ar3
                            727 ;	../fb_app_dim.c:112: rs_send_hex(objno);
   021F 8B 82               728 	mov	dpl,r3
   0221 C0 05               729 	push	ar5
   0223 C0 06               730 	push	ar6
   0225 C0 07               731 	push	ar7
   0227 C0 21               732 	push	bits
   0229 12 17 39            733 	lcall	_rs_send_hex
   022C D0 21               734 	pop	bits
                            735 ;	../fb_app_dim.c:113: rs_send_s(" ");
   022E 90 17 70            736 	mov	dptr,#__str_1
   0231 75 F0 80            737 	mov	b,#0x80
   0234 C0 21               738 	push	bits
   0236 12 16 F2            739 	lcall	_rs_send_s
   0239 D0 21               740 	pop	bits
                            741 ;	../fb_app_dim.c:114: rs_send_hex(dataw);
   023B E5 15               742 	mov	a,_bp
   023D 24 05               743 	add	a,#0x05
   023F F8                  744 	mov	r0,a
   0240 86 82               745 	mov	dpl,@r0
   0242 C0 21               746 	push	bits
   0244 12 17 39            747 	lcall	_rs_send_hex
   0247 D0 21               748 	pop	bits
   0249 D0 07               749 	pop	ar7
   024B D0 06               750 	pop	ar6
   024D D0 05               751 	pop	ar5
                            752 ;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
                            753 ;	../fb_app_dim.c:115: for(c=0;c<2;c++)
   024F E5 15               754 	mov	a,_bp
   0251 24 05               755 	add	a,#0x05
   0253 F8                  756 	mov	r0,a
   0254 E5 15               757 	mov	a,_bp
   0256 24 08               758 	add	a,#0x08
   0258 F9                  759 	mov	r1,a
   0259 E4                  760 	clr	a
   025A B6 01 01            761 	cjne	@r0,#0x01,00199$
   025D 04                  762 	inc	a
   025E                     763 00199$:
   025E F7                  764 	mov	@r1,a
   025F A8 15               765 	mov	r0,_bp
   0261 08                  766 	inc	r0
   0262 76 00               767 	mov	@r0,#0x00
   0264                     768 00146$:
   0264 A8 15               769 	mov	r0,_bp
   0266 08                  770 	inc	r0
   0267 B6 02 00            771 	cjne	@r0,#0x02,00201$
   026A                     772 00201$:
   026A 40 03               773 	jc	00202$
   026C 02 06 2F            774 	ljmp	00152$
   026F                     775 00202$:
                            776 ;	../fb_app_dim.c:118: if(dataw==0&&commObjectNumber==c && sperren[c]==0) //schaltobjekt  aus,
   026F E5 15               777 	mov	a,_bp
   0271 24 05               778 	add	a,#0x05
   0273 F8                  779 	mov	r0,a
   0274 E6                  780 	mov	a,@r0
   0275 70 23               781 	jnz	00102$
   0277 E5 15               782 	mov	a,_bp
   0279 24 06               783 	add	a,#0x06
   027B F8                  784 	mov	r0,a
   027C A9 15               785 	mov	r1,_bp
   027E 09                  786 	inc	r1
   027F 86 F0               787 	mov	b,@r0
   0281 E7                  788 	mov	a,@r1
   0282 B5 F0 15            789 	cjne	a,b,00102$
   0285 A9 15               790 	mov	r1,_bp
   0287 09                  791 	inc	r1
   0288 E7                  792 	mov	a,@r1
   0289 24 30               793 	add	a,#_sperren
   028B F8                  794 	mov	r0,a
   028C E6                  795 	mov	a,@r0
   028D 70 0B               796 	jnz	00102$
                            797 ;	../fb_app_dim.c:120: dimmwert[c]=0;
   028F A8 15               798 	mov	r0,_bp
   0291 08                  799 	inc	r0
   0292 E6                  800 	mov	a,@r0
   0293 24 28               801 	add	a,#_dimmwert
   0295 F8                  802 	mov	r0,a
   0296 76 00               803 	mov	@r0,#0x00
                            804 ;	../fb_app_dim.c:121: b_send=1;
   0298 D2 08               805 	setb	b0
   029A                     806 00102$:
                            807 ;	../fb_app_dim.c:123: if(dataw==1&&commObjectNumber==c && sperren[c]==0) //schaltobjekt  EIN
   029A E5 15               808 	mov	a,_bp
   029C 24 08               809 	add	a,#0x08
   029E F8                  810 	mov	r0,a
   029F E6                  811 	mov	a,@r0
   02A0 60 50               812 	jz	00106$
   02A2 E5 15               813 	mov	a,_bp
   02A4 24 06               814 	add	a,#0x06
   02A6 F8                  815 	mov	r0,a
   02A7 A9 15               816 	mov	r1,_bp
   02A9 09                  817 	inc	r1
   02AA 86 F0               818 	mov	b,@r0
   02AC E7                  819 	mov	a,@r1
   02AD B5 F0 42            820 	cjne	a,b,00106$
   02B0 A9 15               821 	mov	r1,_bp
   02B2 09                  822 	inc	r1
   02B3 E7                  823 	mov	a,@r1
   02B4 24 30               824 	add	a,#_sperren
   02B6 F8                  825 	mov	r0,a
   02B7 E6                  826 	mov	a,@r0
   02B8 70 38               827 	jnz	00106$
                            828 ;	../fb_app_dim.c:125: dimmwert[c]=helligkeittsstufe(einschathellikeit[c]-1,c);
   02BA C0 06               829 	push	ar6
   02BC A9 15               830 	mov	r1,_bp
   02BE 09                  831 	inc	r1
   02BF E7                  832 	mov	a,@r1
   02C0 24 28               833 	add	a,#_dimmwert
   02C2 F8                  834 	mov	r0,a
   02C3 C0 00               835 	push	ar0
   02C5 A8 15               836 	mov	r0,_bp
   02C7 08                  837 	inc	r0
   02C8 E6                  838 	mov	a,@r0
   02C9 24 2C               839 	add	a,#_einschathellikeit
   02CB F9                  840 	mov	r1,a
   02CC D0 00               841 	pop	ar0
   02CE 87 06               842 	mov	ar6,@r1
   02D0 1E                  843 	dec	r6
   02D1 C0 05               844 	push	ar5
   02D3 C0 07               845 	push	ar7
   02D5 C0 00               846 	push	ar0
   02D7 A9 15               847 	mov	r1,_bp
   02D9 09                  848 	inc	r1
   02DA E7                  849 	mov	a,@r1
   02DB C0 E0               850 	push	acc
   02DD 8E 82               851 	mov	dpl,r6
   02DF 12 07 11            852 	lcall	_helligkeittsstufe
   02E2 AE 82               853 	mov	r6,dpl
   02E4 15 81               854 	dec	sp
   02E6 D0 00               855 	pop	ar0
   02E8 D0 07               856 	pop	ar7
   02EA D0 05               857 	pop	ar5
   02EC A6 06               858 	mov	@r0,ar6
                            859 ;	../fb_app_dim.c:126: b_send=1;
   02EE D2 08               860 	setb	b0
                            861 ;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   02F0 D0 06               862 	pop	ar6
                            863 ;	../fb_app_dim.c:126: b_send=1;
   02F2                     864 00106$:
                            865 ;	../fb_app_dim.c:128: if(commObjectNumber==c+2 && sperren[c]==0)         //Dimmobjekt
   02F2 C0 06               866 	push	ar6
   02F4 A8 15               867 	mov	r0,_bp
   02F6 08                  868 	inc	r0
   02F7 86 06               869 	mov	ar6,@r0
   02F9 7C 00               870 	mov	r4,#0x00
   02FB 74 02               871 	mov	a,#0x02
   02FD 2E                  872 	add	a,r6
   02FE FE                  873 	mov	r6,a
   02FF E4                  874 	clr	a
   0300 3C                  875 	addc	a,r4
   0301 FC                  876 	mov	r4,a
   0302 E5 15               877 	mov	a,_bp
   0304 24 06               878 	add	a,#0x06
   0306 F8                  879 	mov	r0,a
   0307 E5 15               880 	mov	a,_bp
   0309 24 09               881 	add	a,#0x09
   030B F9                  882 	mov	r1,a
   030C E6                  883 	mov	a,@r0
   030D F7                  884 	mov	@r1,a
   030E 09                  885 	inc	r1
   030F 77 00               886 	mov	@r1,#0x00
   0311 E5 15               887 	mov	a,_bp
   0313 24 09               888 	add	a,#0x09
   0315 F8                  889 	mov	r0,a
   0316 E6                  890 	mov	a,@r0
   0317 B5 06 09            891 	cjne	a,ar6,00211$
   031A 08                  892 	inc	r0
   031B E6                  893 	mov	a,@r0
   031C B5 04 04            894 	cjne	a,ar4,00211$
   031F 74 01               895 	mov	a,#0x01
   0321 80 01               896 	sjmp	00212$
   0323                     897 00211$:
   0323 E4                  898 	clr	a
   0324                     899 00212$:
   0324 D0 06               900 	pop	ar6
   0326 60 22               901 	jz	00112$
   0328 A9 15               902 	mov	r1,_bp
   032A 09                  903 	inc	r1
   032B E7                  904 	mov	a,@r1
   032C 24 30               905 	add	a,#_sperren
   032E F8                  906 	mov	r0,a
   032F E6                  907 	mov	a,@r0
   0330 70 18               908 	jnz	00112$
                            909 ;	../fb_app_dim.c:130: dimm_helldunkel[c]=dataw;
   0332 A8 15               910 	mov	r0,_bp
   0334 08                  911 	inc	r0
   0335 E6                  912 	mov	a,@r0
   0336 24 24               913 	add	a,#_dimm_helldunkel
   0338 F8                  914 	mov	r0,a
   0339 E5 15               915 	mov	a,_bp
   033B 24 05               916 	add	a,#0x05
   033D F9                  917 	mov	r1,a
   033E E7                  918 	mov	a,@r1
   033F F6                  919 	mov	@r0,a
                            920 ;	../fb_app_dim.c:131: if(dataw==0) //nur senden beim aulassen der taste
   0340 E5 15               921 	mov	a,_bp
   0342 24 05               922 	add	a,#0x05
   0344 F8                  923 	mov	r0,a
   0345 E6                  924 	mov	a,@r0
   0346 70 02               925 	jnz	00112$
                            926 ;	../fb_app_dim.c:132: b_send=1;
   0348 D2 08               927 	setb	b0
   034A                     928 00112$:
                            929 ;	../fb_app_dim.c:134: if(commObjectNumber==c+4 && sperren[c]==0)         //Wertobjekt
   034A C0 06               930 	push	ar6
   034C A8 15               931 	mov	r0,_bp
   034E 08                  932 	inc	r0
   034F 86 04               933 	mov	ar4,@r0
   0351 7E 00               934 	mov	r6,#0x00
   0353 74 04               935 	mov	a,#0x04
   0355 2C                  936 	add	a,r4
   0356 FC                  937 	mov	r4,a
   0357 E4                  938 	clr	a
   0358 3E                  939 	addc	a,r6
   0359 FE                  940 	mov	r6,a
   035A E5 15               941 	mov	a,_bp
   035C 24 09               942 	add	a,#0x09
   035E F8                  943 	mov	r0,a
   035F E6                  944 	mov	a,@r0
   0360 B5 04 09            945 	cjne	a,ar4,00216$
   0363 08                  946 	inc	r0
   0364 E6                  947 	mov	a,@r0
   0365 B5 06 04            948 	cjne	a,ar6,00216$
   0368 74 01               949 	mov	a,#0x01
   036A 80 01               950 	sjmp	00217$
   036C                     951 00216$:
   036C E4                  952 	clr	a
   036D                     953 00217$:
   036D D0 06               954 	pop	ar6
   036F 60 17               955 	jz	00115$
   0371 A9 15               956 	mov	r1,_bp
   0373 09                  957 	inc	r1
   0374 E7                  958 	mov	a,@r1
   0375 24 30               959 	add	a,#_sperren
   0377 F8                  960 	mov	r0,a
   0378 E6                  961 	mov	a,@r0
   0379 70 0D               962 	jnz	00115$
                            963 ;	../fb_app_dim.c:136: dimmwert[c]=telegramm[8];
   037B A9 15               964 	mov	r1,_bp
   037D 09                  965 	inc	r1
   037E E7                  966 	mov	a,@r1
   037F 24 28               967 	add	a,#_dimmwert
   0381 F8                  968 	mov	r0,a
   0382 AC 55               969 	mov	r4,(_telegramm + 0x0008)
   0384 A6 04               970 	mov	@r0,ar4
                            971 ;	../fb_app_dim.c:137: b_send=1;
   0386 D2 08               972 	setb	b0
   0388                     973 00115$:
                            974 ;	../fb_app_dim.c:139: if(commObjectNumber==c+0x0c && sperren[c]==0)      //Lichtzene
   0388 C0 06               975 	push	ar6
   038A A8 15               976 	mov	r0,_bp
   038C 08                  977 	inc	r0
   038D 86 03               978 	mov	ar3,@r0
   038F 7A 00               979 	mov	r2,#0x00
   0391 74 0C               980 	mov	a,#0x0C
   0393 2B                  981 	add	a,r3
   0394 FC                  982 	mov	r4,a
   0395 E4                  983 	clr	a
   0396 3A                  984 	addc	a,r2
   0397 FE                  985 	mov	r6,a
   0398 E5 15               986 	mov	a,_bp
   039A 24 09               987 	add	a,#0x09
   039C F8                  988 	mov	r0,a
   039D E6                  989 	mov	a,@r0
   039E B5 04 09            990 	cjne	a,ar4,00220$
   03A1 08                  991 	inc	r0
   03A2 E6                  992 	mov	a,@r0
   03A3 B5 06 04            993 	cjne	a,ar6,00220$
   03A6 74 01               994 	mov	a,#0x01
   03A8 80 01               995 	sjmp	00221$
   03AA                     996 00220$:
   03AA E4                  997 	clr	a
   03AB                     998 00221$:
   03AB D0 06               999 	pop	ar6
   03AD 70 03              1000 	jnz	00222$
   03AF 02 04 43           1001 	ljmp	00123$
   03B2                    1002 00222$:
   03B2 A9 15              1003 	mov	r1,_bp
   03B4 09                 1004 	inc	r1
   03B5 E7                 1005 	mov	a,@r1
   03B6 24 30              1006 	add	a,#_sperren
   03B8 F8                 1007 	mov	r0,a
   03B9 E6                 1008 	mov	a,@r0
   03BA 60 03              1009 	jz	00223$
   03BC 02 04 43           1010 	ljmp	00123$
   03BF                    1011 00223$:
                           1012 ;	../fb_app_dim.c:141: if((datal&0x80)==0x80)        //Lichtzenen Speichern mit 0x8n n=szenennummer
   03BF EF                 1013 	mov	a,r7
   03C0 60 62              1014 	jz	00120$
                           1015 ;	../fb_app_dim.c:143: if(eeprom[0xe3]&(1<<(4+c))!=0)// speichern nur wenn erlaubt
   03C2 C0 06              1016 	push	ar6
   03C4 90 1D E3           1017 	mov	dptr,#(_eeprom + 0x00e3)
   03C7 E4                 1018 	clr	a
   03C8 93                 1019 	movc	a,@a+dptr
   03C9 FC                 1020 	mov	r4,a
   03CA 74 04              1021 	mov	a,#0x04
   03CC 2B                 1022 	add	a,r3
   03CD FE                 1023 	mov	r6,a
   03CE E4                 1024 	clr	a
   03CF 3A                 1025 	addc	a,r2
   03D0 8E F0              1026 	mov	b,r6
   03D2 05 F0              1027 	inc	b
   03D4 7E 01              1028 	mov	r6,#0x01
   03D6 7A 00              1029 	mov	r2,#0x00
   03D8 80 06              1030 	sjmp	00226$
   03DA                    1031 00225$:
   03DA EE                 1032 	mov	a,r6
   03DB 2E                 1033 	add	a,r6
   03DC FE                 1034 	mov	r6,a
   03DD EA                 1035 	mov	a,r2
   03DE 33                 1036 	rlc	a
   03DF FA                 1037 	mov	r2,a
   03E0                    1038 00226$:
   03E0 D5 F0 F7           1039 	djnz	b,00225$
   03E3 7B 00              1040 	mov	r3,#0x00
   03E5 EC                 1041 	mov	a,r4
   03E6 52 06              1042 	anl	ar6,a
   03E8 EB                 1043 	mov	a,r3
   03E9 52 02              1044 	anl	ar2,a
   03EB EE                 1045 	mov	a,r6
   03EC 4A                 1046 	orl	a,r2
   03ED D0 06              1047 	pop	ar6
   03EF 60 35              1048 	jz	00121$
                           1049 ;	../fb_app_dim.c:144: write_obj_lz(0xe7+(datal&~0x80)+(c*8),dimmwert[c]);
   03F1 A9 15              1050 	mov	r1,_bp
   03F3 09                 1051 	inc	r1
   03F4 E7                 1052 	mov	a,@r1
   03F5 24 28              1053 	add	a,#_dimmwert
   03F7 F8                 1054 	mov	r0,a
   03F8 86 02              1055 	mov	ar2,@r0
   03FA 7B 00              1056 	mov	r3,#0x00
   03FC A8 15              1057 	mov	r0,_bp
   03FE 08                 1058 	inc	r0
   03FF E6                 1059 	mov	a,@r0
   0400 C4                 1060 	swap	a
   0401 03                 1061 	rr	a
   0402 54 F8              1062 	anl	a,#0xf8
   0404 2D                 1063 	add	a,r5
   0405 F5 82              1064 	mov	dpl,a
   0407 C0 05              1065 	push	ar5
   0409 C0 06              1066 	push	ar6
   040B C0 07              1067 	push	ar7
   040D C0 21              1068 	push	bits
   040F C0 02              1069 	push	ar2
   0411 C0 03              1070 	push	ar3
   0413 12 06 3E           1071 	lcall	_write_obj_lz
   0416 15 81              1072 	dec	sp
   0418 15 81              1073 	dec	sp
   041A D0 21              1074 	pop	bits
   041C D0 07              1075 	pop	ar7
   041E D0 06              1076 	pop	ar6
   0420 D0 05              1077 	pop	ar5
   0422 80 02              1078 	sjmp	00121$
   0424                    1079 00120$:
                           1080 ;	../fb_app_dim.c:147: b_send=1;
   0424 D2 08              1081 	setb	b0
   0426                    1082 00121$:
                           1083 ;	../fb_app_dim.c:148: dimmwert[c]=eeprom[0xe7+(datal&~0x80)+(c*8)]; //Nummer der LZ
   0426 A9 15              1084 	mov	r1,_bp
   0428 09                 1085 	inc	r1
   0429 E7                 1086 	mov	a,@r1
   042A 24 28              1087 	add	a,#_dimmwert
   042C F8                 1088 	mov	r0,a
   042D A9 15              1089 	mov	r1,_bp
   042F 09                 1090 	inc	r1
   0430 E7                 1091 	mov	a,@r1
   0431 C4                 1092 	swap	a
   0432 03                 1093 	rr	a
   0433 54 F8              1094 	anl	a,#0xf8
   0435 FA                 1095 	mov	r2,a
   0436 E5 15              1096 	mov	a,_bp
   0438 24 07              1097 	add	a,#0x07
   043A F9                 1098 	mov	r1,a
   043B EA                 1099 	mov	a,r2
   043C 27                 1100 	add	a,@r1
   043D 90 1D 00           1101 	mov	dptr,#_eeprom
   0440 93                 1102 	movc	a,@a+dptr
   0441 FA                 1103 	mov	r2,a
   0442 F6                 1104 	mov	@r0,a
   0443                    1105 00123$:
                           1106 ;	../fb_app_dim.c:150: if(commObjectNumber==c+0x0a)      // Sperren
   0443 C0 06              1107 	push	ar6
   0445 A8 15              1108 	mov	r0,_bp
   0447 08                 1109 	inc	r0
   0448 86 02              1110 	mov	ar2,@r0
   044A 7B 00              1111 	mov	r3,#0x00
   044C 74 0A              1112 	mov	a,#0x0A
   044E 2A                 1113 	add	a,r2
   044F FC                 1114 	mov	r4,a
   0450 E4                 1115 	clr	a
   0451 3B                 1116 	addc	a,r3
   0452 FE                 1117 	mov	r6,a
   0453 E5 15              1118 	mov	a,_bp
   0455 24 09              1119 	add	a,#0x09
   0457 F8                 1120 	mov	r0,a
   0458 E6                 1121 	mov	a,@r0
   0459 B5 04 09           1122 	cjne	a,ar4,00228$
   045C 08                 1123 	inc	r0
   045D E6                 1124 	mov	a,@r0
   045E B5 06 04           1125 	cjne	a,ar6,00228$
   0461 74 01              1126 	mov	a,#0x01
   0463 80 01              1127 	sjmp	00229$
   0465                    1128 00228$:
   0465 E4                 1129 	clr	a
   0466                    1130 00229$:
   0466 D0 06              1131 	pop	ar6
   0468 70 03              1132 	jnz	00230$
   046A 02 05 38           1133 	ljmp	00135$
   046D                    1134 00230$:
                           1135 ;	../fb_app_dim.c:152: if(eeprom[0xc3]&(1<<(3+c))!=0)//invertiert
   046D C0 06              1136 	push	ar6
   046F 90 1D C3           1137 	mov	dptr,#(_eeprom + 0x00c3)
   0472 E4                 1138 	clr	a
   0473 93                 1139 	movc	a,@a+dptr
   0474 FC                 1140 	mov	r4,a
   0475 74 03              1141 	mov	a,#0x03
   0477 2A                 1142 	add	a,r2
   0478 FA                 1143 	mov	r2,a
   0479 E4                 1144 	clr	a
   047A 3B                 1145 	addc	a,r3
   047B 8A F0              1146 	mov	b,r2
   047D 05 F0              1147 	inc	b
   047F 7A 01              1148 	mov	r2,#0x01
   0481 7B 00              1149 	mov	r3,#0x00
   0483 80 06              1150 	sjmp	00232$
   0485                    1151 00231$:
   0485 EA                 1152 	mov	a,r2
   0486 2A                 1153 	add	a,r2
   0487 FA                 1154 	mov	r2,a
   0488 EB                 1155 	mov	a,r3
   0489 33                 1156 	rlc	a
   048A FB                 1157 	mov	r3,a
   048B                    1158 00232$:
   048B D5 F0 F7           1159 	djnz	b,00231$
   048E 7E 00              1160 	mov	r6,#0x00
   0490 EC                 1161 	mov	a,r4
   0491 52 02              1162 	anl	ar2,a
   0493 EE                 1163 	mov	a,r6
   0494 52 03              1164 	anl	ar3,a
   0496 D0 06              1165 	pop	ar6
   0498 EA                 1166 	mov	a,r2
   0499 4B                 1167 	orl	a,r3
   049A 60 10              1168 	jz	00129$
                           1169 ;	../fb_app_dim.c:154: if(dataw==1) sperr=0;
   049C E5 15              1170 	mov	a,_bp
   049E 24 08              1171 	add	a,#0x08
   04A0 F8                 1172 	mov	r0,a
   04A1 E6                 1173 	mov	a,@r0
   04A2 60 04              1174 	jz	00126$
   04A4 7A 00              1175 	mov	r2,#0x00
   04A6 80 0B              1176 	sjmp	00130$
   04A8                    1177 00126$:
                           1178 ;	../fb_app_dim.c:155: else sperr=1;
   04A8 7A 01              1179 	mov	r2,#0x01
   04AA 80 07              1180 	sjmp	00130$
   04AC                    1181 00129$:
                           1182 ;	../fb_app_dim.c:157: else sperr=dataw;
   04AC E5 15              1183 	mov	a,_bp
   04AE 24 05              1184 	add	a,#0x05
   04B0 F8                 1185 	mov	r0,a
   04B1 86 02              1186 	mov	ar2,@r0
   04B3                    1187 00130$:
                           1188 ;	../fb_app_dim.c:158: if (sperr==1)
   04B3 BA 01 41           1189 	cjne	r2,#0x01,00132$
                           1190 ;	../fb_app_dim.c:160: dimmwert[c]=helligkeittsstufe(eeprom[0xdf+c]&0x0f,c);
   04B6 A9 15              1191 	mov	r1,_bp
   04B8 09                 1192 	inc	r1
   04B9 E7                 1193 	mov	a,@r1
   04BA 24 28              1194 	add	a,#_dimmwert
   04BC F8                 1195 	mov	r0,a
   04BD A9 15              1196 	mov	r1,_bp
   04BF 09                 1197 	inc	r1
   04C0 74 DF              1198 	mov	a,#0xDF
   04C2 27                 1199 	add	a,@r1
   04C3 90 1D 00           1200 	mov	dptr,#_eeprom
   04C6 93                 1201 	movc	a,@a+dptr
   04C7 FA                 1202 	mov	r2,a
   04C8 53 02 0F           1203 	anl	ar2,#0x0F
   04CB C0 05              1204 	push	ar5
   04CD C0 06              1205 	push	ar6
   04CF C0 07              1206 	push	ar7
   04D1 C0 00              1207 	push	ar0
   04D3 A9 15              1208 	mov	r1,_bp
   04D5 09                 1209 	inc	r1
   04D6 E7                 1210 	mov	a,@r1
   04D7 C0 E0              1211 	push	acc
   04D9 8A 82              1212 	mov	dpl,r2
   04DB 12 07 11           1213 	lcall	_helligkeittsstufe
   04DE AA 82              1214 	mov	r2,dpl
   04E0 15 81              1215 	dec	sp
   04E2 D0 00              1216 	pop	ar0
   04E4 D0 07              1217 	pop	ar7
   04E6 D0 06              1218 	pop	ar6
   04E8 D0 05              1219 	pop	ar5
   04EA A6 02              1220 	mov	@r0,ar2
                           1221 ;	../fb_app_dim.c:161: sperren[c]=1;
   04EC A8 15              1222 	mov	r0,_bp
   04EE 08                 1223 	inc	r0
   04EF E6                 1224 	mov	a,@r0
   04F0 24 30              1225 	add	a,#_sperren
   04F2 F8                 1226 	mov	r0,a
   04F3 76 01              1227 	mov	@r0,#0x01
   04F5 80 3F              1228 	sjmp	00133$
   04F7                    1229 00132$:
                           1230 ;	../fb_app_dim.c:165: dimmwert[c]=helligkeittsstufe(eeprom[0xdf+c]>>4,c);
   04F7 A9 15              1231 	mov	r1,_bp
   04F9 09                 1232 	inc	r1
   04FA E7                 1233 	mov	a,@r1
   04FB 24 28              1234 	add	a,#_dimmwert
   04FD F8                 1235 	mov	r0,a
   04FE A9 15              1236 	mov	r1,_bp
   0500 09                 1237 	inc	r1
   0501 74 DF              1238 	mov	a,#0xDF
   0503 27                 1239 	add	a,@r1
   0504 90 1D 00           1240 	mov	dptr,#_eeprom
   0507 93                 1241 	movc	a,@a+dptr
   0508 C4                 1242 	swap	a
   0509 54 0F              1243 	anl	a,#0x0f
   050B FA                 1244 	mov	r2,a
   050C C0 05              1245 	push	ar5
   050E C0 06              1246 	push	ar6
   0510 C0 07              1247 	push	ar7
   0512 C0 00              1248 	push	ar0
   0514 A9 15              1249 	mov	r1,_bp
   0516 09                 1250 	inc	r1
   0517 E7                 1251 	mov	a,@r1
   0518 C0 E0              1252 	push	acc
   051A 8A 82              1253 	mov	dpl,r2
   051C 12 07 11           1254 	lcall	_helligkeittsstufe
   051F AA 82              1255 	mov	r2,dpl
   0521 15 81              1256 	dec	sp
   0523 D0 00              1257 	pop	ar0
   0525 D0 07              1258 	pop	ar7
   0527 D0 06              1259 	pop	ar6
   0529 D0 05              1260 	pop	ar5
   052B A6 02              1261 	mov	@r0,ar2
                           1262 ;	../fb_app_dim.c:166: sperren[c]=0;
   052D A8 15              1263 	mov	r0,_bp
   052F 08                 1264 	inc	r0
   0530 E6                 1265 	mov	a,@r0
   0531 24 30              1266 	add	a,#_sperren
   0533 F8                 1267 	mov	r0,a
   0534 76 00              1268 	mov	@r0,#0x00
   0536                    1269 00133$:
                           1270 ;	../fb_app_dim.c:168: b_send=1;
   0536 D2 08              1271 	setb	b0
   0538                    1272 00135$:
                           1273 ;	../fb_app_dim.c:171: if(b_send==1)
   0538 A2 08              1274 	mov	c,b0
   053A E4                 1275 	clr	a
   053B 33                 1276 	rlc	a
   053C FA                 1277 	mov	r2,a
   053D BA 01 02           1278 	cjne	r2,#0x01,00237$
   0540 80 03              1279 	sjmp	00238$
   0542                    1280 00237$:
   0542 02 06 28           1281 	ljmp	00148$
   0545                    1282 00238$:
                           1283 ;	../fb_app_dim.c:173: write_obj_value(c,dimmwert[c]?1:0);     //Schaltobjekt
   0545 A9 15              1284 	mov	r1,_bp
   0547 09                 1285 	inc	r1
   0548 E7                 1286 	mov	a,@r1
   0549 24 28              1287 	add	a,#_dimmwert
   054B F8                 1288 	mov	r0,a
   054C E6                 1289 	mov	a,@r0
   054D 60 02              1290 	jz	00156$
   054F 74 01              1291 	mov	a,#0x01
   0551                    1292 00156$:
   0551 FA                 1293 	mov	r2,a
   0552 C0 06              1294 	push	ar6
   0554 7B 00              1295 	mov	r3,#0x00
   0556 C0 05              1296 	push	ar5
   0558 C0 06              1297 	push	ar6
   055A C0 07              1298 	push	ar7
   055C C0 02              1299 	push	ar2
   055E C0 03              1300 	push	ar3
   0560 A8 15              1301 	mov	r0,_bp
   0562 08                 1302 	inc	r0
   0563 86 82              1303 	mov	dpl,@r0
   0565 12 15 9B           1304 	lcall	_write_obj_value
   0568 15 81              1305 	dec	sp
   056A 15 81              1306 	dec	sp
                           1307 ;	../fb_app_dim.c:174: write_obj_value(c+4,dimmwert[c]);       //wertobjekt
   056C A9 15              1308 	mov	r1,_bp
   056E 09                 1309 	inc	r1
   056F E7                 1310 	mov	a,@r1
   0570 24 28              1311 	add	a,#_dimmwert
   0572 F8                 1312 	mov	r0,a
   0573 86 02              1313 	mov	ar2,@r0
   0575 7B 00              1314 	mov	r3,#0x00
   0577 A8 15              1315 	mov	r0,_bp
   0579 08                 1316 	inc	r0
   057A 74 04              1317 	mov	a,#0x04
   057C 26                 1318 	add	a,@r0
   057D F5 82              1319 	mov	dpl,a
   057F C0 02              1320 	push	ar2
   0581 C0 03              1321 	push	ar3
   0583 12 15 9B           1322 	lcall	_write_obj_value
   0586 15 81              1323 	dec	sp
   0588 15 81              1324 	dec	sp
   058A D0 07              1325 	pop	ar7
   058C D0 06              1326 	pop	ar6
   058E D0 05              1327 	pop	ar5
                           1328 ;	../fb_app_dim.c:175: if(eeprom[0xc3]&(1<<(6+c))!=0)// nur wenn  wertobjekt eingeschalten
   0590 90 1D C3           1329 	mov	dptr,#(_eeprom + 0x00c3)
   0593 E4                 1330 	clr	a
   0594 93                 1331 	movc	a,@a+dptr
   0595 FA                 1332 	mov	r2,a
   0596 A8 15              1333 	mov	r0,_bp
   0598 08                 1334 	inc	r0
   0599 86 03              1335 	mov	ar3,@r0
   059B 7C 00              1336 	mov	r4,#0x00
   059D 74 06              1337 	mov	a,#0x06
   059F 2B                 1338 	add	a,r3
   05A0 FB                 1339 	mov	r3,a
   05A1 E4                 1340 	clr	a
   05A2 3C                 1341 	addc	a,r4
   05A3 8B F0              1342 	mov	b,r3
   05A5 05 F0              1343 	inc	b
   05A7 7B 01              1344 	mov	r3,#0x01
   05A9 7C 00              1345 	mov	r4,#0x00
   05AB 80 06              1346 	sjmp	00241$
   05AD                    1347 00240$:
   05AD EB                 1348 	mov	a,r3
   05AE 2B                 1349 	add	a,r3
   05AF FB                 1350 	mov	r3,a
   05B0 EC                 1351 	mov	a,r4
   05B1 33                 1352 	rlc	a
   05B2 FC                 1353 	mov	r4,a
   05B3                    1354 00241$:
   05B3 D5 F0 F7           1355 	djnz	b,00240$
   05B6 7E 00              1356 	mov	r6,#0x00
   05B8 EA                 1357 	mov	a,r2
   05B9 52 03              1358 	anl	ar3,a
   05BB EE                 1359 	mov	a,r6
   05BC 52 04              1360 	anl	ar4,a
   05BE D0 06              1361 	pop	ar6
   05C0 EB                 1362 	mov	a,r3
   05C1 4C                 1363 	orl	a,r4
   05C2 60 24              1364 	jz	00137$
                           1365 ;	../fb_app_dim.c:176: respond(c+8,dimmwert[c]);
   05C4 A9 15              1366 	mov	r1,_bp
   05C6 09                 1367 	inc	r1
   05C7 E7                 1368 	mov	a,@r1
   05C8 24 28              1369 	add	a,#_dimmwert
   05CA F8                 1370 	mov	r0,a
   05CB 86 02              1371 	mov	ar2,@r0
   05CD A8 15              1372 	mov	r0,_bp
   05CF 08                 1373 	inc	r0
   05D0 74 08              1374 	mov	a,#0x08
   05D2 26                 1375 	add	a,@r0
   05D3 F5 82              1376 	mov	dpl,a
   05D5 C0 05              1377 	push	ar5
   05D7 C0 06              1378 	push	ar6
   05D9 C0 07              1379 	push	ar7
   05DB C0 02              1380 	push	ar2
   05DD 12 06 BA           1381 	lcall	_respond
   05E0 15 81              1382 	dec	sp
   05E2 D0 07              1383 	pop	ar7
   05E4 D0 06              1384 	pop	ar6
   05E6 D0 05              1385 	pop	ar5
   05E8                    1386 00137$:
                           1387 ;	../fb_app_dim.c:177: respond(c+6,(dimmwert[c]?1:0)+0x80);
   05E8 A9 15              1388 	mov	r1,_bp
   05EA 09                 1389 	inc	r1
   05EB E7                 1390 	mov	a,@r1
   05EC 24 28              1391 	add	a,#_dimmwert
   05EE F8                 1392 	mov	r0,a
   05EF E6                 1393 	mov	a,@r0
   05F0 60 02              1394 	jz	00158$
   05F2 74 01              1395 	mov	a,#0x01
   05F4                    1396 00158$:
   05F4 24 80              1397 	add	a,#0x80
   05F6 FA                 1398 	mov	r2,a
   05F7 A8 15              1399 	mov	r0,_bp
   05F9 08                 1400 	inc	r0
   05FA 74 06              1401 	mov	a,#0x06
   05FC 26                 1402 	add	a,@r0
   05FD F5 82              1403 	mov	dpl,a
   05FF C0 05              1404 	push	ar5
   0601 C0 06              1405 	push	ar6
   0603 C0 07              1406 	push	ar7
   0605 C0 02              1407 	push	ar2
   0607 12 06 BA           1408 	lcall	_respond
   060A 15 81              1409 	dec	sp
   060C D0 07              1410 	pop	ar7
   060E D0 06              1411 	pop	ar6
   0610 D0 05              1412 	pop	ar5
                           1413 ;	../fb_app_dim.c:178: if(dimmwert[c]>0)
   0612 A9 15              1414 	mov	r1,_bp
   0614 09                 1415 	inc	r1
   0615 E7                 1416 	mov	a,@r1
   0616 24 28              1417 	add	a,#_dimmwert
   0618 F8                 1418 	mov	r0,a
   0619 E6                 1419 	mov	a,@r0
   061A FA                 1420 	mov	r2,a
   061B 60 09              1421 	jz	00139$
                           1422 ;	../fb_app_dim.c:179: ausschalthellikeit[c]=dimmwert[c];
   061D A8 15              1423 	mov	r0,_bp
   061F 08                 1424 	inc	r0
   0620 E6                 1425 	mov	a,@r0
   0621 24 38              1426 	add	a,#_ausschalthellikeit
   0623 F8                 1427 	mov	r0,a
   0624 A6 02              1428 	mov	@r0,ar2
   0626                    1429 00139$:
                           1430 ;	../fb_app_dim.c:180: b_send=0;
   0626 C2 08              1431 	clr	b0
   0628                    1432 00148$:
                           1433 ;	../fb_app_dim.c:115: for(c=0;c<2;c++)
   0628 A8 15              1434 	mov	r0,_bp
   062A 08                 1435 	inc	r0
   062B 06                 1436 	inc	@r0
   062C 02 02 64           1437 	ljmp	00146$
   062F                    1438 00152$:
                           1439 ;	../fb_app_dim.c:102: for(n=0;n<assno;n++)			// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   062F E5 15              1440 	mov	a,_bp
   0631 24 04              1441 	add	a,#0x04
   0633 F8                 1442 	mov	r0,a
   0634 06                 1443 	inc	@r0
   0635 02 01 AD           1444 	ljmp	00150$
   0638                    1445 00154$:
   0638 85 15 81           1446 	mov	sp,_bp
   063B D0 15              1447 	pop	_bp
   063D 22                 1448 	ret
                           1449 ;------------------------------------------------------------
                           1450 ;Allocation info for local variables in function 'write_obj_lz'
                           1451 ;------------------------------------------------------------
                           1452 ;objvalue                  Allocated to stack - offset -4
                           1453 ;objno                     Allocated to registers r2 
                           1454 ;write_ok                  Allocated to registers b0 
                           1455 ;------------------------------------------------------------
                           1456 ;	../fb_app_dim.c:191: bit write_obj_lz(unsigned char objno,int objvalue)  // schreibt den aktuellen Wert eines Objektes ins 'EEprom'
                           1457 ;	-----------------------------------------
                           1458 ;	 function write_obj_lz
                           1459 ;	-----------------------------------------
   063E                    1460 _write_obj_lz:
   063E C0 15              1461 	push	_bp
   0640 85 81 15           1462 	mov	_bp,sp
   0643 AA 82              1463 	mov	r2,dpl
                           1464 ;	../fb_app_dim.c:193: bit write_ok=0;
   0645 C2 08              1465 	clr	b0
                           1466 ;	../fb_app_dim.c:194: while (!write_ok)
   0647                    1467 00103$:
   0647 20 08 1B           1468 	jb	b0,00105$
                           1469 ;	../fb_app_dim.c:196: START_WRITECYCLE
   064A 75 E4 00           1470 	mov	_FMCON,#0x00
                           1471 ;	../fb_app_dim.c:197: WRITE_BYTE(0x01,objno,objvalue);
   064D 75 E7 1D           1472 	mov	_FMADRH,#0x1D
   0650 8A E6              1473 	mov	_FMADRL,r2
   0652 E5 15              1474 	mov	a,_bp
   0654 24 FC              1475 	add	a,#0xfc
   0656 F8                 1476 	mov	r0,a
   0657 86 E5              1477 	mov	_FMDATA,@r0
                           1478 ;	../fb_app_dim.c:198: STOP_WRITECYCLE
   0659 75 E4 68           1479 	mov	_FMCON,#0x68
                           1480 ;	../fb_app_dim.c:199: if(!(FMCON & 0x01)) write_ok=1;
   065C E5 E4              1481 	mov	a,_FMCON
   065E 20 E0 E6           1482 	jb	acc.0,00103$
   0661 D2 08              1483 	setb	b0
   0663 80 E2              1484 	sjmp	00103$
   0665                    1485 00105$:
                           1486 ;	../fb_app_dim.c:201: return(write_ok);
   0665 A2 08              1487 	mov	c,b0
   0667 D0 15              1488 	pop	_bp
   0669 22                 1489 	ret
                           1490 ;------------------------------------------------------------
                           1491 ;Allocation info for local variables in function 'read_value_req'
                           1492 ;------------------------------------------------------------
                           1493 ;objno                     Allocated to registers r2 
                           1494 ;objflags                  Allocated to registers r5 
                           1495 ;objvalue                  Allocated to registers 
                           1496 ;------------------------------------------------------------
                           1497 ;	../fb_app_dim.c:211: void read_value_req(void)
                           1498 ;	-----------------------------------------
                           1499 ;	 function read_value_req
                           1500 ;	-----------------------------------------
   066A                    1501 _read_value_req:
                           1502 ;	../fb_app_dim.c:216: objno=find_first_objno(telegramm[3],telegramm[4]);      // erste Objektnummer zu empfangener GA finden
   066A 85 50 82           1503 	mov	dpl,(_telegramm + 0x0003)
   066D C0 51              1504 	push	(_telegramm + 0x0004)
   066F 12 14 9C           1505 	lcall	_find_first_objno
   0672 AA 82              1506 	mov	r2,dpl
   0674 15 81              1507 	dec	sp
                           1508 ;	../fb_app_dim.c:217: if(objno!=0xFF) {       // falls Gruppenadresse nicht gefunden
   0676 BA FF 01           1509 	cjne	r2,#0xFF,00109$
   0679 22                 1510 	ret
   067A                    1511 00109$:
                           1512 ;	../fb_app_dim.c:218: send_ack();
   067A C0 02              1513 	push	ar2
   067C 12 12 3B           1514 	lcall	_send_ack
   067F D0 02              1515 	pop	ar2
                           1516 ;	../fb_app_dim.c:220: objvalue=read_obj_value(objno);         // Objektwert aus USER-RAM lesen (Standard Einstellung)
   0681 8A 82              1517 	mov	dpl,r2
   0683 C0 02              1518 	push	ar2
   0685 12 15 11           1519 	lcall	_read_obj_value
   0688 AB 82              1520 	mov	r3,dpl
   068A AC 83              1521 	mov	r4,dph
   068C D0 02              1522 	pop	ar2
                           1523 ;	../fb_app_dim.c:222: objflags=read_objflags(objno);          // Objekt Flags lesen
   068E 8A 82              1524 	mov	dpl,r2
   0690 C0 02              1525 	push	ar2
   0692 C0 03              1526 	push	ar3
   0694 C0 04              1527 	push	ar4
   0696 12 13 F1           1528 	lcall	_read_objflags
   0699 AD 82              1529 	mov	r5,dpl
   069B D0 04              1530 	pop	ar4
   069D D0 03              1531 	pop	ar3
   069F D0 02              1532 	pop	ar2
                           1533 ;	../fb_app_dim.c:224: if((objflags&0x0C)==0x0C) send_value(0,objno,objvalue);
   06A1 53 05 0C           1534 	anl	ar5,#0x0C
   06A4 BD 0C 12           1535 	cjne	r5,#0x0C,00105$
   06A7 C0 03              1536 	push	ar3
   06A9 C0 04              1537 	push	ar4
   06AB C0 02              1538 	push	ar2
   06AD 75 82 00           1539 	mov	dpl,#0x00
   06B0 12 00 8A           1540 	lcall	_send_value
   06B3 15 81              1541 	dec	sp
   06B5 15 81              1542 	dec	sp
   06B7 15 81              1543 	dec	sp
   06B9                    1544 00105$:
   06B9 22                 1545 	ret
                           1546 ;------------------------------------------------------------
                           1547 ;Allocation info for local variables in function 'respond'
                           1548 ;------------------------------------------------------------
                           1549 ;rval                      Allocated to stack - offset -3
                           1550 ;objno                     Allocated to registers r2 
                           1551 ;ga                        Allocated to registers r3 r4 
                           1552 ;------------------------------------------------------------
                           1553 ;	../fb_app_dim.c:229: void respond(unsigned char objno, unsigned char rval)	// sucht Gruppenadresse für das Objekt objno uns sendet ein Telegramm
                           1554 ;	-----------------------------------------
                           1555 ;	 function respond
                           1556 ;	-----------------------------------------
   06BA                    1557 _respond:
   06BA C0 15              1558 	push	_bp
   06BC 85 81 15           1559 	mov	_bp,sp
                           1560 ;	../fb_app_dim.c:232: ga=find_ga(objno);					// wenn keine Gruppenadresse hintrlegt nix tun
   06BF AA 82              1561 	mov  r2,dpl
   06C1 C0 02              1562 	push	ar2
   06C3 12 14 0C           1563 	lcall	_find_ga
   06C6 AB 82              1564 	mov	r3,dpl
   06C8 AC 83              1565 	mov	r4,dph
   06CA D0 02              1566 	pop	ar2
                           1567 ;	../fb_app_dim.c:233: if (ga!=0)
   06CC EB                 1568 	mov	a,r3
   06CD 4C                 1569 	orl	a,r4
   06CE 60 3E              1570 	jz	00106$
                           1571 ;	../fb_app_dim.c:236: telegramm[0]=0xBC;
   06D0 75 4D BC           1572 	mov	_telegramm,#0xBC
                           1573 ;	../fb_app_dim.c:237: telegramm[1]=eeprom[ADDRTAB+1];
   06D3 90 1D 17           1574 	mov	dptr,#(_eeprom + 0x0017)
   06D6 E4                 1575 	clr	a
   06D7 93                 1576 	movc	a,@a+dptr
   06D8 FD                 1577 	mov	r5,a
   06D9 8D 4E              1578 	mov	(_telegramm + 0x0001),r5
                           1579 ;	../fb_app_dim.c:238: telegramm[2]=eeprom[ADDRTAB+2];
   06DB 90 1D 18           1580 	mov	dptr,#(_eeprom + 0x0018)
   06DE E4                 1581 	clr	a
   06DF 93                 1582 	movc	a,@a+dptr
   06E0 FD                 1583 	mov	r5,a
   06E1 8D 4F              1584 	mov	(_telegramm + 0x0002),r5
                           1585 ;	../fb_app_dim.c:239: telegramm[3]=ga>>8;
   06E3 8C 05              1586 	mov	ar5,r4
   06E5 8D 50              1587 	mov	(_telegramm + 0x0003),r5
                           1588 ;	../fb_app_dim.c:240: telegramm[4]=ga;
   06E7 8B 51              1589 	mov	(_telegramm + 0x0004),r3
                           1590 ;	../fb_app_dim.c:241: telegramm[5]=0xD1;
   06E9 75 52 D1           1591 	mov	(_telegramm + 0x0005),#0xD1
                           1592 ;	../fb_app_dim.c:242: telegramm[6]=0x00;
   06EC 75 53 00           1593 	mov	(_telegramm + 0x0006),#0x00
                           1594 ;	../fb_app_dim.c:243: telegramm[7]=rval;
   06EF A8 15              1595 	mov	r0,_bp
   06F1 18                 1596 	dec	r0
   06F2 18                 1597 	dec	r0
   06F3 18                 1598 	dec	r0
   06F4 86 54              1599 	mov	(_telegramm + 0x0007),@r0
                           1600 ;	../fb_app_dim.c:244: if(objno==8||objno==9)   //wert objekt rückmelden 1Byte
   06F6 BA 08 02           1601 	cjne	r2,#0x08,00111$
   06F9 80 03              1602 	sjmp	00101$
   06FB                    1603 00111$:
   06FB BA 09 0D           1604 	cjne	r2,#0x09,00102$
   06FE                    1605 00101$:
                           1606 ;	../fb_app_dim.c:246: telegramm[5]=0xE2;
   06FE 75 52 E2           1607 	mov	(_telegramm + 0x0005),#0xE2
                           1608 ;	../fb_app_dim.c:247: telegramm[7]=0x80;
   0701 75 54 80           1609 	mov	(_telegramm + 0x0007),#0x80
                           1610 ;	../fb_app_dim.c:248: telegramm[8]=rval;
   0704 A8 15              1611 	mov	r0,_bp
   0706 18                 1612 	dec	r0
   0707 18                 1613 	dec	r0
   0708 18                 1614 	dec	r0
   0709 86 55              1615 	mov	(_telegramm + 0x0008),@r0
   070B                    1616 00102$:
                           1617 ;	../fb_app_dim.c:250: send_telegramm();
   070B 12 11 87           1618 	lcall	_send_telegramm
   070E                    1619 00106$:
   070E D0 15              1620 	pop	_bp
   0710 22                 1621 	ret
                           1622 	.area CSEG    (CODE)
                           1623 	.area CONST   (CODE)
   1764                    1624 __str_0:
   1764 0A                 1625 	.db 0x0A
   1765 77 72 5F 76 61 6C  1626 	.ascii "wr_val_rq "
        5F 72 71 20
   176F 00                 1627 	.db 0x00
   1770                    1628 __str_1:
   1770 20                 1629 	.ascii " "
   1771 00                 1630 	.db 0x00
                           1631 	.area XINIT   (CODE)
                           1632 	.area CABS    (ABS,CODE)
