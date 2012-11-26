                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
                              4 ; This file was generated Sun Aug 14 13:44:18 2011
                              5 ;--------------------------------------------------------
                              6 	.module fb_hal_lpc
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _eeprom
                             13 	.globl _userram
                             14 	.globl _P3_1
                             15 	.globl _P3_0
                             16 	.globl _P1_7
                             17 	.globl _P1_6
                             18 	.globl _P1_5
                             19 	.globl _P1_4
                             20 	.globl _P1_3
                             21 	.globl _P1_2
                             22 	.globl _P1_1
                             23 	.globl _P1_0
                             24 	.globl _P0_7
                             25 	.globl _P0_6
                             26 	.globl _P0_5
                             27 	.globl _P0_4
                             28 	.globl _P0_3
                             29 	.globl _P0_2
                             30 	.globl _P0_1
                             31 	.globl _P0_0
                             32 	.globl _I2CON_0
                             33 	.globl _I2CON_2
                             34 	.globl _I2CON_3
                             35 	.globl _I2CON_4
                             36 	.globl _I2CON_5
                             37 	.globl _I2CON_6
                             38 	.globl _SCON_7
                             39 	.globl _SCON_6
                             40 	.globl _SCON_5
                             41 	.globl _SCON_4
                             42 	.globl _SCON_3
                             43 	.globl _SCON_2
                             44 	.globl _SCON_1
                             45 	.globl _SCON_0
                             46 	.globl _IP0_0
                             47 	.globl _IP0_1
                             48 	.globl _IP0_2
                             49 	.globl _IP0_3
                             50 	.globl _IP0_4
                             51 	.globl _IP0_5
                             52 	.globl _IP0_6
                             53 	.globl _IP1_0
                             54 	.globl _IP1_1
                             55 	.globl _IP1_2
                             56 	.globl _IP1_6
                             57 	.globl _IEN1_0
                             58 	.globl _IEN1_1
                             59 	.globl _IEN1_2
                             60 	.globl _IEN0_0
                             61 	.globl _IEN0_1
                             62 	.globl _IEN0_2
                             63 	.globl _IEN0_3
                             64 	.globl _IEN0_4
                             65 	.globl _IEN0_5
                             66 	.globl _IEN0_6
                             67 	.globl _IEN0_7
                             68 	.globl _TCON_0
                             69 	.globl _TCON_1
                             70 	.globl _TCON_2
                             71 	.globl _TCON_3
                             72 	.globl _TCON_4
                             73 	.globl _TCON_5
                             74 	.globl _TCON_6
                             75 	.globl _TCON_7
                             76 	.globl _PSW_7
                             77 	.globl _PSW_6
                             78 	.globl _PSW_5
                             79 	.globl _PSW_4
                             80 	.globl _PSW_3
                             81 	.globl _PSW_2
                             82 	.globl _PSW_1
                             83 	.globl _PSW_0
                             84 	.globl _IEN1
                             85 	.globl _IP0H
                             86 	.globl _WFEED2
                             87 	.globl _WFEED1
                             88 	.globl _WDL
                             89 	.globl _WDCON
                             90 	.globl _TRIM
                             91 	.globl _TAMOD
                             92 	.globl _SSTAT
                             93 	.globl _RTCL
                             94 	.globl _RTCH
                             95 	.globl _RTCCON
                             96 	.globl _RSTSRC
                             97 	.globl _PT0AD
                             98 	.globl _PCONA
                             99 	.globl _P3M2
                            100 	.globl _P3M1
                            101 	.globl _P1M2
                            102 	.globl _P1M1
                            103 	.globl _P0M2
                            104 	.globl _P0M1
                            105 	.globl _KBPATN
                            106 	.globl _KBMASK
                            107 	.globl _KBCON
                            108 	.globl _IP1H
                            109 	.globl _IP1
                            110 	.globl _I2STAT
                            111 	.globl _I2SCLL
                            112 	.globl _I2SCLH
                            113 	.globl _I2DAT
                            114 	.globl _I2CON
                            115 	.globl _I2ADR
                            116 	.globl _FMDATA
                            117 	.globl _FMCON
                            118 	.globl _FMADRL
                            119 	.globl _FMADRH
                            120 	.globl _DIVM
                            121 	.globl _CMP2
                            122 	.globl _CMP1
                            123 	.globl _BRGCON
                            124 	.globl _BRGR1
                            125 	.globl _BRGR0
                            126 	.globl _SADEN
                            127 	.globl _SADDR
                            128 	.globl _AUXR1
                            129 	.globl _SBUF
                            130 	.globl _SCON
                            131 	.globl _IP0
                            132 	.globl _IEN0
                            133 	.globl _TH1
                            134 	.globl _TH0
                            135 	.globl _TL1
                            136 	.globl _TL0
                            137 	.globl _TMOD
                            138 	.globl _TCON
                            139 	.globl _PCON
                            140 	.globl _DPH
                            141 	.globl _DPL
                            142 	.globl _SP
                            143 	.globl _B
                            144 	.globl _ACC
                            145 	.globl _PSW
                            146 	.globl _P3
                            147 	.globl _P1
                            148 	.globl _P0
                            149 	.globl _interrupted
                            150 	.globl _parity_ok
                            151 	.globl _cs
                            152 	.globl _telpos
                            153 	.globl _telegramm
                            154 	.globl _start_rtc
                            155 	.globl _stop_rtc
                            156 	.globl _get_byte
                            157 	.globl _ext_int0
                            158 	.globl _sendbyte
                            159 	.globl _sysdelay
                            160 	.globl _set_timer0
                            161 	.globl _set_timer1
                            162 	.globl _restart_hw
                            163 ;--------------------------------------------------------
                            164 ; special function registers
                            165 ;--------------------------------------------------------
                            166 	.area RSEG    (DATA)
                    0080    167 _P0	=	0x0080
                    0090    168 _P1	=	0x0090
                    00B0    169 _P3	=	0x00b0
                    00D0    170 _PSW	=	0x00d0
                    00E0    171 _ACC	=	0x00e0
                    00F0    172 _B	=	0x00f0
                    0081    173 _SP	=	0x0081
                    0082    174 _DPL	=	0x0082
                    0083    175 _DPH	=	0x0083
                    0087    176 _PCON	=	0x0087
                    0088    177 _TCON	=	0x0088
                    0089    178 _TMOD	=	0x0089
                    008A    179 _TL0	=	0x008a
                    008B    180 _TL1	=	0x008b
                    008C    181 _TH0	=	0x008c
                    008D    182 _TH1	=	0x008d
                    00A8    183 _IEN0	=	0x00a8
                    00B8    184 _IP0	=	0x00b8
                    0098    185 _SCON	=	0x0098
                    0099    186 _SBUF	=	0x0099
                    00A2    187 _AUXR1	=	0x00a2
                    00A9    188 _SADDR	=	0x00a9
                    00B9    189 _SADEN	=	0x00b9
                    00BE    190 _BRGR0	=	0x00be
                    00BF    191 _BRGR1	=	0x00bf
                    00BD    192 _BRGCON	=	0x00bd
                    00AC    193 _CMP1	=	0x00ac
                    00AD    194 _CMP2	=	0x00ad
                    0095    195 _DIVM	=	0x0095
                    00E7    196 _FMADRH	=	0x00e7
                    00E6    197 _FMADRL	=	0x00e6
                    00E4    198 _FMCON	=	0x00e4
                    00E5    199 _FMDATA	=	0x00e5
                    00DB    200 _I2ADR	=	0x00db
                    00D8    201 _I2CON	=	0x00d8
                    00DA    202 _I2DAT	=	0x00da
                    00DD    203 _I2SCLH	=	0x00dd
                    00DC    204 _I2SCLL	=	0x00dc
                    00D9    205 _I2STAT	=	0x00d9
                    00F8    206 _IP1	=	0x00f8
                    00F7    207 _IP1H	=	0x00f7
                    0094    208 _KBCON	=	0x0094
                    0086    209 _KBMASK	=	0x0086
                    0093    210 _KBPATN	=	0x0093
                    0084    211 _P0M1	=	0x0084
                    0085    212 _P0M2	=	0x0085
                    0091    213 _P1M1	=	0x0091
                    0092    214 _P1M2	=	0x0092
                    00B1    215 _P3M1	=	0x00b1
                    00B2    216 _P3M2	=	0x00b2
                    00B5    217 _PCONA	=	0x00b5
                    00F6    218 _PT0AD	=	0x00f6
                    00DF    219 _RSTSRC	=	0x00df
                    00D1    220 _RTCCON	=	0x00d1
                    00D2    221 _RTCH	=	0x00d2
                    00D3    222 _RTCL	=	0x00d3
                    00BA    223 _SSTAT	=	0x00ba
                    008F    224 _TAMOD	=	0x008f
                    0096    225 _TRIM	=	0x0096
                    00A7    226 _WDCON	=	0x00a7
                    00C1    227 _WDL	=	0x00c1
                    00C2    228 _WFEED1	=	0x00c2
                    00C3    229 _WFEED2	=	0x00c3
                    00B7    230 _IP0H	=	0x00b7
                    00E8    231 _IEN1	=	0x00e8
                            232 ;--------------------------------------------------------
                            233 ; special function bits
                            234 ;--------------------------------------------------------
                            235 	.area RSEG    (DATA)
                    00D0    236 _PSW_0	=	0x00d0
                    00D1    237 _PSW_1	=	0x00d1
                    00D2    238 _PSW_2	=	0x00d2
                    00D3    239 _PSW_3	=	0x00d3
                    00D4    240 _PSW_4	=	0x00d4
                    00D5    241 _PSW_5	=	0x00d5
                    00D6    242 _PSW_6	=	0x00d6
                    00D7    243 _PSW_7	=	0x00d7
                    008F    244 _TCON_7	=	0x008f
                    008E    245 _TCON_6	=	0x008e
                    008D    246 _TCON_5	=	0x008d
                    008C    247 _TCON_4	=	0x008c
                    008B    248 _TCON_3	=	0x008b
                    008A    249 _TCON_2	=	0x008a
                    0089    250 _TCON_1	=	0x0089
                    0088    251 _TCON_0	=	0x0088
                    00AF    252 _IEN0_7	=	0x00af
                    00AE    253 _IEN0_6	=	0x00ae
                    00AD    254 _IEN0_5	=	0x00ad
                    00AC    255 _IEN0_4	=	0x00ac
                    00AB    256 _IEN0_3	=	0x00ab
                    00AA    257 _IEN0_2	=	0x00aa
                    00A9    258 _IEN0_1	=	0x00a9
                    00A8    259 _IEN0_0	=	0x00a8
                    00EA    260 _IEN1_2	=	0x00ea
                    00E9    261 _IEN1_1	=	0x00e9
                    00E8    262 _IEN1_0	=	0x00e8
                    00FE    263 _IP1_6	=	0x00fe
                    00FA    264 _IP1_2	=	0x00fa
                    00F9    265 _IP1_1	=	0x00f9
                    00F8    266 _IP1_0	=	0x00f8
                    00BE    267 _IP0_6	=	0x00be
                    00BD    268 _IP0_5	=	0x00bd
                    00BC    269 _IP0_4	=	0x00bc
                    00BB    270 _IP0_3	=	0x00bb
                    00BA    271 _IP0_2	=	0x00ba
                    00B9    272 _IP0_1	=	0x00b9
                    00B8    273 _IP0_0	=	0x00b8
                    0098    274 _SCON_0	=	0x0098
                    0099    275 _SCON_1	=	0x0099
                    009A    276 _SCON_2	=	0x009a
                    009B    277 _SCON_3	=	0x009b
                    009C    278 _SCON_4	=	0x009c
                    009D    279 _SCON_5	=	0x009d
                    009E    280 _SCON_6	=	0x009e
                    009F    281 _SCON_7	=	0x009f
                    00DE    282 _I2CON_6	=	0x00de
                    00DD    283 _I2CON_5	=	0x00dd
                    00DC    284 _I2CON_4	=	0x00dc
                    00DB    285 _I2CON_3	=	0x00db
                    00DA    286 _I2CON_2	=	0x00da
                    00D8    287 _I2CON_0	=	0x00d8
                    0080    288 _P0_0	=	0x0080
                    0081    289 _P0_1	=	0x0081
                    0082    290 _P0_2	=	0x0082
                    0083    291 _P0_3	=	0x0083
                    0084    292 _P0_4	=	0x0084
                    0085    293 _P0_5	=	0x0085
                    0086    294 _P0_6	=	0x0086
                    0087    295 _P0_7	=	0x0087
                    0090    296 _P1_0	=	0x0090
                    0091    297 _P1_1	=	0x0091
                    0092    298 _P1_2	=	0x0092
                    0093    299 _P1_3	=	0x0093
                    0094    300 _P1_4	=	0x0094
                    0095    301 _P1_5	=	0x0095
                    0096    302 _P1_6	=	0x0096
                    0097    303 _P1_7	=	0x0097
                    00B0    304 _P3_0	=	0x00b0
                    00B1    305 _P3_1	=	0x00b1
                            306 ;--------------------------------------------------------
                            307 ; overlayable register banks
                            308 ;--------------------------------------------------------
                            309 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     310 	.ds 8
                            311 ;--------------------------------------------------------
                            312 ; overlayable bit register bank
                            313 ;--------------------------------------------------------
                            314 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     315 bits:
   0021                     316 	.ds 1
                    8000    317 	b0 = bits[0]
                    8100    318 	b1 = bits[1]
                    8200    319 	b2 = bits[2]
                    8300    320 	b3 = bits[3]
                    8400    321 	b4 = bits[4]
                    8500    322 	b5 = bits[5]
                    8600    323 	b6 = bits[6]
                    8700    324 	b7 = bits[7]
                            325 ;--------------------------------------------------------
                            326 ; internal ram data
                            327 ;--------------------------------------------------------
                            328 	.area DSEG    (DATA)
   004D                     329 _telegramm::
   004D                     330 	.ds 23
   0064                     331 _telpos::
   0064                     332 	.ds 1
   0065                     333 _cs::
   0065                     334 	.ds 1
                            335 ;--------------------------------------------------------
                            336 ; overlayable items in internal ram 
                            337 ;--------------------------------------------------------
                            338 	.area OSEG    (OVR,DATA)
                            339 ;--------------------------------------------------------
                            340 ; indirectly addressable internal ram data
                            341 ;--------------------------------------------------------
                            342 	.area ISEG    (DATA)
                            343 ;--------------------------------------------------------
                            344 ; absolute internal ram data
                            345 ;--------------------------------------------------------
                            346 	.area IABS    (ABS,DATA)
                            347 	.area IABS    (ABS,DATA)
                            348 ;--------------------------------------------------------
                            349 ; bit data
                            350 ;--------------------------------------------------------
                            351 	.area BSEG    (BIT)
   0001                     352 _parity_ok::
   0001                     353 	.ds 1
   0002                     354 _interrupted::
   0002                     355 	.ds 1
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
                            399 ;Allocation info for local variables in function 'start_rtc'
                            400 ;------------------------------------------------------------
                            401 ;base                      Allocated to registers r2 
                            402 ;rtcval                    Allocated to registers r3 r4 r5 r6 
                            403 ;n                         Allocated to registers r7 
                            404 ;------------------------------------------------------------
                            405 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:47: void start_rtc(unsigned char base)
                            406 ;	-----------------------------------------
                            407 ;	 function start_rtc
                            408 ;	-----------------------------------------
   0C4E                     409 _start_rtc:
                    0002    410 	ar2 = 0x02
                    0003    411 	ar3 = 0x03
                    0004    412 	ar4 = 0x04
                    0005    413 	ar5 = 0x05
                    0006    414 	ar6 = 0x06
                    0007    415 	ar7 = 0x07
                    0000    416 	ar0 = 0x00
                    0001    417 	ar1 = 0x01
   0C4E AA 82               418 	mov	r2,dpl
                            419 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:52: for (n=0;n<base;n++) rtcval+=7373;
   0C50 7B 00               420 	mov	r3,#0x00
   0C52 7C 00               421 	mov	r4,#0x00
   0C54 7D 00               422 	mov	r5,#0x00
   0C56 7E 00               423 	mov	r6,#0x00
   0C58 7F 00               424 	mov	r7,#0x00
   0C5A                     425 00101$:
   0C5A C3                  426 	clr	c
   0C5B EF                  427 	mov	a,r7
   0C5C 9A                  428 	subb	a,r2
   0C5D 50 11               429 	jnc	00104$
   0C5F 74 CD               430 	mov	a,#0xCD
   0C61 2B                  431 	add	a,r3
   0C62 FB                  432 	mov	r3,a
   0C63 74 1C               433 	mov	a,#0x1C
   0C65 3C                  434 	addc	a,r4
   0C66 FC                  435 	mov	r4,a
   0C67 E4                  436 	clr	a
   0C68 3D                  437 	addc	a,r5
   0C69 FD                  438 	mov	r5,a
   0C6A E4                  439 	clr	a
   0C6B 3E                  440 	addc	a,r6
   0C6C FE                  441 	mov	r6,a
   0C6D 0F                  442 	inc	r7
   0C6E 80 EA               443 	sjmp	00101$
   0C70                     444 00104$:
                            445 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:54: rtcval=rtcval>>7;	// 7 bit prescaler ( /128 )
   0C70 EC                  446 	mov	a,r4
   0C71 A2 E7               447 	mov	c,acc.7
   0C73 CB                  448 	xch	a,r3
   0C74 33                  449 	rlc	a
   0C75 CB                  450 	xch	a,r3
   0C76 33                  451 	rlc	a
   0C77 CB                  452 	xch	a,r3
   0C78 54 01               453 	anl	a,#0x01
   0C7A FC                  454 	mov	r4,a
   0C7B ED                  455 	mov	a,r5
   0C7C 2D                  456 	add	a,r5
   0C7D 4C                  457 	orl	a,r4
   0C7E FC                  458 	mov	r4,a
   0C7F EE                  459 	mov	a,r6
   0C80 A2 E7               460 	mov	c,acc.7
   0C82 CD                  461 	xch	a,r5
   0C83 33                  462 	rlc	a
   0C84 CD                  463 	xch	a,r5
   0C85 33                  464 	rlc	a
   0C86 CD                  465 	xch	a,r5
   0C87 54 01               466 	anl	a,#0x01
                            467 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:55: RTCH=(rtcval>>8);
   0C89 8C D2               468 	mov	_RTCH,r4
                            469 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:56: RTCL=rtcval;
   0C8B 8B D3               470 	mov	_RTCL,r3
                            471 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:57: RTCCON=0x61;	// ... und starten
   0C8D 75 D1 61            472 	mov	_RTCCON,#0x61
   0C90 22                  473 	ret
                            474 ;------------------------------------------------------------
                            475 ;Allocation info for local variables in function 'stop_rtc'
                            476 ;------------------------------------------------------------
                            477 ;------------------------------------------------------------
                            478 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:66: void stop_rtc(void)
                            479 ;	-----------------------------------------
                            480 ;	 function stop_rtc
                            481 ;	-----------------------------------------
   0C91                     482 _stop_rtc:
                            483 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:68: RTCCON=0x60;
   0C91 75 D1 60            484 	mov	_RTCCON,#0x60
   0C94 22                  485 	ret
                            486 ;------------------------------------------------------------
                            487 ;Allocation info for local variables in function 'get_byte'
                            488 ;------------------------------------------------------------
                            489 ;rbit                      Allocated to registers b1 
                            490 ;parity                    Allocated to registers b1 
                            491 ;ph                        Allocated to registers b0 
                            492 ;n                         Allocated to registers r3 
                            493 ;m                         Allocated to registers r2 
                            494 ;fbb                       Allocated to registers r2 
                            495 ;------------------------------------------------------------
                            496 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:81: unsigned char get_byte(void)
                            497 ;	-----------------------------------------
                            498 ;	 function get_byte
                            499 ;	-----------------------------------------
   0C95                     500 _get_byte:
                            501 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:86: EX1=0;				// Interrupt 1 sperren
   0C95 C2 AA               502 	clr	_IEN0_2
                            503 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:87: ET1=0;				// Interrupt von Timer 1 sperren
   0C97 C2 AB               504 	clr	_IEN0_3
                            505 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:89: set_timer1(380);		// Timer setzen um 1. Bit zu treffen (320-440)
   0C99 90 01 7C            506 	mov	dptr,#0x017C
   0C9C 12 0E 83            507 	lcall	_set_timer1
                            508 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:93: ph=0;					// Paritybit wird aus empfangenem Byte berechnet
   0C9F C2 08               509 	clr	b0
                            510 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:94: parity_ok=0;
   0CA1 C2 01               511 	clr	_parity_ok
                            512 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:95: while(!TF1);			// warten auf Timer 1
   0CA3                     513 00101$:
   0CA3 30 8F FD            514 	jnb	_TCON_7,00101$
                            515 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:96: set_timer1(360);		// Timer 1 neu setzen fuer 2.Bit (300-420)
   0CA6 90 01 68            516 	mov	dptr,#0x0168
   0CA9 C0 21               517 	push	bits
   0CAB 12 0E 83            518 	lcall	_set_timer1
   0CAE D0 21               519 	pop	bits
                            520 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:97: rbit=FBINC;			// 1.Bit einlesen
   0CB0 A2 94               521 	mov	c,_P1_4
   0CB2 92 09               522 	mov	b1,c
                            523 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:98: for(m=0;m<5;m++) rbit&=FBINC;		// zur Steigerung der Fehlertoleranz mehrfach lesen
   0CB4 7A 05               524 	mov	r2,#0x05
   0CB6                     525 00120$:
   0CB6 A2 94               526 	mov	c,_P1_4
   0CB8 82 09               527 	anl	c,b1
   0CBA 92 09               528 	mov	b1,c
   0CBC DA F8               529 	djnz	r2,00120$
                            530 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:99: fbb=rbit;
   0CBE A2 09               531 	mov	c,b1
   0CC0 E4                  532 	clr	a
   0CC1 33                  533 	rlc	a
   0CC2 FA                  534 	mov	r2,a
                            535 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:100: if(rbit) ph=!ph;		// Paritybit berechnen 
   0CC3 30 09 02            536 	jnb	b1,00105$
   0CC6 D2 08               537 	setb	b0
   0CC8                     538 00105$:
                            539 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:102: for (n=2;n!=0;n=n<<1) {
   0CC8 7B 02               540 	mov	r3,#0x02
   0CCA                     541 00124$:
   0CCA BB 00 02            542 	cjne	r3,#0x00,00157$
   0CCD 80 33               543 	sjmp	00113$
   0CCF                     544 00157$:
                            545 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:103: while(!TF1);
   0CCF                     546 00106$:
   0CCF 30 8F FD            547 	jnb	_TCON_7,00106$
                            548 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:104: set_timer1(350);	// Timer 1 setzen fuer Position 2.-9.Bit (342-359)
   0CD2 90 01 5E            549 	mov	dptr,#0x015E
   0CD5 C0 02               550 	push	ar2
   0CD7 C0 03               551 	push	ar3
   0CD9 C0 21               552 	push	bits
   0CDB 12 0E 83            553 	lcall	_set_timer1
   0CDE D0 21               554 	pop	bits
   0CE0 D0 03               555 	pop	ar3
   0CE2 D0 02               556 	pop	ar2
                            557 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:105: rbit=FBINC;
   0CE4 A2 94               558 	mov	c,_P1_4
   0CE6 92 09               559 	mov	b1,c
                            560 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:106: for(m=0;m<5;m++) rbit&=FBINC;	// zur Steigerung der Fehlertoleranz mehrfach lesen
   0CE8 7C 05               561 	mov	r4,#0x05
   0CEA                     562 00123$:
   0CEA A2 94               563 	mov	c,_P1_4
   0CEC 82 09               564 	anl	c,b1
   0CEE 92 09               565 	mov	b1,c
   0CF0 DC F8               566 	djnz	r4,00123$
                            567 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:108: if (rbit) fbb+=n;
   0CF2 30 09 03            568 	jnb	b1,00110$
   0CF5 EB                  569 	mov	a,r3
   0CF6 2A                  570 	add	a,r2
   0CF7 FA                  571 	mov	r2,a
   0CF8                     572 00110$:
                            573 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:110: if(rbit) ph=!ph;	// Paritybit berechnen
   0CF8 30 09 02            574 	jnb	b1,00126$
   0CFB B2 08               575 	cpl	b0
   0CFD                     576 00126$:
                            577 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:102: for (n=2;n!=0;n=n<<1) {
   0CFD EB                  578 	mov	a,r3
   0CFE 2B                  579 	add	a,r3
   0CFF FB                  580 	mov	r3,a
                            581 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:112: while(!TF1);				
   0D00 80 C8               582 	sjmp	00124$
   0D02                     583 00113$:
   0D02 30 8F FD            584 	jnb	_TCON_7,00113$
                            585 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:113: TR1=0;
   0D05 C2 8E               586 	clr	_TCON_6
                            587 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:114: parity=FBINC;			// Paritybit lesen
   0D07 A2 94               588 	mov	c,_P1_4
   0D09 92 09               589 	mov	b1,c
                            590 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:115: for(m=0;m<5;m++) parity&=FBINC;	// zur Steigerung der Fehlertoleranz mehrfach lesen
   0D0B 7B 05               591 	mov	r3,#0x05
   0D0D                     592 00130$:
   0D0D A2 94               593 	mov	c,_P1_4
   0D0F 82 09               594 	anl	c,b1
   0D11 92 09               595 	mov	b1,c
   0D13 DB F8               596 	djnz	r3,00130$
                            597 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:116: if(parity==ph) parity_ok=1;
   0D15 A2 09               598 	mov	c,b1
   0D17 20 08 01            599 	jb	b0,00166$
   0D1A B3                  600 	cpl	c
   0D1B                     601 00166$:
   0D1B 50 02               602 	jnc	00117$
   0D1D D2 01               603 	setb	_parity_ok
   0D1F                     604 00117$:
                            605 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:117: return (fbb);	
   0D1F 8A 82               606 	mov	dpl,r2
   0D21 22                  607 	ret
                            608 ;------------------------------------------------------------
                            609 ;Allocation info for local variables in function 'ext_int0'
                            610 ;------------------------------------------------------------
                            611 ;fbbh                      Allocated to registers r2 
                            612 ;------------------------------------------------------------
                            613 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:132: void ext_int0(void) interrupt 2
                            614 ;	-----------------------------------------
                            615 ;	 function ext_int0
                            616 ;	-----------------------------------------
   0D22                     617 _ext_int0:
   0D22 C0 21               618 	push	bits
   0D24 C0 E0               619 	push	acc
   0D26 C0 F0               620 	push	b
   0D28 C0 82               621 	push	dpl
   0D2A C0 83               622 	push	dph
   0D2C C0 02               623 	push	(0+2)
   0D2E C0 03               624 	push	(0+3)
   0D30 C0 04               625 	push	(0+4)
   0D32 C0 05               626 	push	(0+5)
   0D34 C0 06               627 	push	(0+6)
   0D36 C0 07               628 	push	(0+7)
   0D38 C0 00               629 	push	(0+0)
   0D3A C0 01               630 	push	(0+1)
   0D3C C0 D0               631 	push	psw
   0D3E 75 D0 00            632 	mov	psw,#0x00
                            633 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:136: TR1=0;
   0D41 C2 8E               634 	clr	_TCON_6
                            635 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:137: EX1=0;					// Interrupt 1 sperren
   0D43 C2 AA               636 	clr	_IEN0_2
                            637 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:138: ET1=0;					// Interrupt von Timer 1 sperren
   0D45 C2 AB               638 	clr	_IEN0_3
                            639 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:140: fbbh=get_byte();			// Byte vom Bus empfangen
   0D47 12 0C 95            640 	lcall	_get_byte
   0D4A AA 82               641 	mov	r2,dpl
                            642 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:141: sysdelay(200);
   0D4C 90 00 C8            643 	mov	dptr,#0x00C8
   0D4F C0 02               644 	push	ar2
   0D51 12 0E 4E            645 	lcall	_sysdelay
                            646 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:142: set_timer1(1350);			// Timer 1 starten fuer Timeout 370us -> signalisiert Telegrammende (1350)
   0D54 90 05 46            647 	mov	dptr,#0x0546
   0D57 12 0E 83            648 	lcall	_set_timer1
   0D5A D0 02               649 	pop	ar2
                            650 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:144: if(parity_ok)				// wenn Parity OK
   0D5C 30 01 23            651 	jnb	_parity_ok,00107$
                            652 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:146: if (telpos!=0 || (fbbh&0xF0)!=0xC0) telegramm[telpos]=fbbh;	// keine ACK oder NACK als telegramm speichern
   0D5F E5 64               653 	mov	a,_telpos
   0D61 70 09               654 	jnz	00101$
   0D63 74 F0               655 	mov	a,#0xF0
   0D65 5A                  656 	anl	a,r2
   0D66 FB                  657 	mov	r3,a
   0D67 BB C0 02            658 	cjne	r3,#0xC0,00116$
   0D6A 80 07               659 	sjmp	00102$
   0D6C                     660 00116$:
   0D6C                     661 00101$:
   0D6C E5 64               662 	mov	a,_telpos
   0D6E 24 4D               663 	add	a,#_telegramm
   0D70 F8                  664 	mov	r0,a
   0D71 A6 02               665 	mov	@r0,ar2
   0D73                     666 00102$:
                            667 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:147: if(telpos==0) cs=0;
   0D73 E5 64               668 	mov	a,_telpos
   0D75 70 02               669 	jnz	00105$
   0D77 F5 65               670 	mov	_cs,a
   0D79                     671 00105$:
                            672 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:148: cs^=fbbh;				// Checksum durch EXOR der einzelnen Telegramm-Bytes bilden
   0D79 EA                  673 	mov	a,r2
   0D7A 62 65               674 	xrl	_cs,a
                            675 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:149: telpos++;
   0D7C 05 64               676 	inc	_telpos
                            677 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:150: ET1=1;
   0D7E D2 AB               678 	setb	_IEN0_3
   0D80 80 0C               679 	sjmp	00108$
   0D82                     680 00107$:
                            681 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:153: telpos=0;
   0D82 75 64 00            682 	mov	_telpos,#0x00
                            683 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:154: ET1=0;
   0D85 C2 AB               684 	clr	_IEN0_3
                            685 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:155: TR1=0;	// ???????????????????
   0D87 C2 8E               686 	clr	_TCON_6
                            687 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:156: TF1=0;
   0D89 C2 8F               688 	clr	_TCON_7
                            689 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:157: cs=0;
   0D8B 75 65 00            690 	mov	_cs,#0x00
   0D8E                     691 00108$:
                            692 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:163: IE1=0;					// Interrupt 0 request zuruecksetzen
   0D8E C2 8B               693 	clr	_TCON_3
                            694 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:164: EX1=1;					// Interrupt 0 wieder freigeben
   0D90 D2 AA               695 	setb	_IEN0_2
                            696 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:165: interrupted=1;			// teilt anderen Routinen mit, dass sie unterbrochen wurden
   0D92 D2 02               697 	setb	_interrupted
   0D94 D0 D0               698 	pop	psw
   0D96 D0 01               699 	pop	(0+1)
   0D98 D0 00               700 	pop	(0+0)
   0D9A D0 07               701 	pop	(0+7)
   0D9C D0 06               702 	pop	(0+6)
   0D9E D0 05               703 	pop	(0+5)
   0DA0 D0 04               704 	pop	(0+4)
   0DA2 D0 03               705 	pop	(0+3)
   0DA4 D0 02               706 	pop	(0+2)
   0DA6 D0 83               707 	pop	dph
   0DA8 D0 82               708 	pop	dpl
   0DAA D0 F0               709 	pop	b
   0DAC D0 E0               710 	pop	acc
   0DAE D0 21               711 	pop	bits
   0DB0 32                  712 	reti
                            713 ;------------------------------------------------------------
                            714 ;Allocation info for local variables in function 'sendbyte'
                            715 ;------------------------------------------------------------
                            716 ;fbsb                      Allocated to registers r2 
                            717 ;n                         Allocated to registers r3 
                            718 ;m                         Allocated to registers r4 
                            719 ;sendbit                   Allocated to registers b2 
                            720 ;parity                    Allocated to registers b0 
                            721 ;error                     Allocated to registers b1 
                            722 ;------------------------------------------------------------
                            723 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:176: bit sendbyte(unsigned char fbsb)
                            724 ;	-----------------------------------------
                            725 ;	 function sendbyte
                            726 ;	-----------------------------------------
   0DB1                     727 _sendbyte:
   0DB1 AA 82               728 	mov	r2,dpl
                            729 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:181: parity=1;
   0DB3 D2 08               730 	setb	b0
                            731 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:182: error=0;
   0DB5 C2 09               732 	clr	b1
                            733 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:184: FBOUTC=1;	// Startbit senden
   0DB7 D2 96               734 	setb	_P1_6
                            735 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:185: sysdelay(95);	// 35us
   0DB9 90 00 5F            736 	mov	dptr,#0x005F
   0DBC C0 02               737 	push	ar2
   0DBE C0 21               738 	push	bits
   0DC0 12 0E 4E            739 	lcall	_sysdelay
   0DC3 D0 21               740 	pop	bits
   0DC5 D0 02               741 	pop	ar2
                            742 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:186: FBOUTC=0;
   0DC7 C2 96               743 	clr	_P1_6
                            744 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:188: for(n=0;n<8;n++)		// 8 Datenbits senden
   0DC9 7B 00               745 	mov	r3,#0x00
   0DCB                     746 00116$:
   0DCB BB 08 00            747 	cjne	r3,#0x08,00141$
   0DCE                     748 00141$:
   0DCE 50 5C               749 	jnc	00119$
                            750 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:190: set_timer1(215);		// 69us Pause
   0DD0 90 00 D7            751 	mov	dptr,#0x00D7
   0DD3 C0 02               752 	push	ar2
   0DD5 C0 03               753 	push	ar3
   0DD7 C0 21               754 	push	bits
   0DD9 12 0E 83            755 	lcall	_set_timer1
   0DDC D0 21               756 	pop	bits
   0DDE D0 03               757 	pop	ar3
   0DE0 D0 02               758 	pop	ar2
                            759 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:191: if(((fbsb>>n)&0x01)==1) sendbit=0;
   0DE2 8B F0               760 	mov	b,r3
   0DE4 05 F0               761 	inc	b
   0DE6 EA                  762 	mov	a,r2
   0DE7 80 02               763 	sjmp	00144$
   0DE9                     764 00143$:
   0DE9 C3                  765 	clr	c
   0DEA 13                  766 	rrc	a
   0DEB                     767 00144$:
   0DEB D5 F0 FB            768 	djnz	b,00143$
   0DEE 54 01               769 	anl	a,#0x01
   0DF0 FC                  770 	mov	r4,a
   0DF1 BC 01 04            771 	cjne	r4,#0x01,00102$
   0DF4 C2 0A               772 	clr	b2
   0DF6 80 02               773 	sjmp	00104$
   0DF8                     774 00102$:
                            775 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:192: else sendbit=1;
   0DF8 D2 0A               776 	setb	b2
                            777 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:193: while(!TF1);		// Warten bis 69us Pause fretig ist
   0DFA                     778 00104$:
   0DFA 30 8F FD            779 	jnb	_TCON_7,00104$
                            780 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:195: FBOUTC=sendbit;		// Bit senden
   0DFD A2 0A               781 	mov	c,b2
   0DFF 92 96               782 	mov	_P1_6,c
                            783 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:197: set_timer1(100);		//35us Haltezeit fuer Bit 
   0E01 90 00 64            784 	mov	dptr,#0x0064
   0E04 C0 02               785 	push	ar2
   0E06 C0 03               786 	push	ar3
   0E08 C0 21               787 	push	bits
   0E0A 12 0E 83            788 	lcall	_set_timer1
   0E0D D0 21               789 	pop	bits
   0E0F D0 03               790 	pop	ar3
   0E11 D0 02               791 	pop	ar2
                            792 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:199: if(!sendbit) {		// wenn logische 1 gesendet wird, auf Kollision pruefen
   0E13 20 0A 0B            793 	jb	b2,00110$
                            794 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:200: parity=!parity;
   0E16 B2 08               795 	cpl	b0
                            796 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:201: for(m=0;m<5;m++) if(!FBINC) error=1;
   0E18 7C 05               797 	mov	r4,#0x05
   0E1A                     798 00124$:
   0E1A 20 94 02            799 	jb	_P1_4,00108$
   0E1D D2 09               800 	setb	b1
   0E1F                     801 00108$:
   0E1F DC F9               802 	djnz	r4,00124$
   0E21                     803 00110$:
                            804 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:203: if(error) break;  
   0E21 20 09 08            805 	jb	b1,00119$
                            806 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:205: while(!TF1);		// Warten bis 35us abgelaufen
   0E24                     807 00113$:
   0E24 30 8F FD            808 	jnb	_TCON_7,00113$
                            809 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:206: FBOUTC=0;
   0E27 C2 96               810 	clr	_P1_6
                            811 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:188: for(n=0;n<8;n++)		// 8 Datenbits senden
   0E29 0B                  812 	inc	r3
   0E2A 80 9F               813 	sjmp	00116$
   0E2C                     814 00119$:
                            815 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:208: if(!error) {
   0E2C 20 09 1A            816 	jb	b1,00121$
                            817 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:209: sysdelay(212);			// 69 us Pause vor Parity-Bit
   0E2F 90 00 D4            818 	mov	dptr,#0x00D4
   0E32 C0 21               819 	push	bits
   0E34 12 0E 4E            820 	lcall	_sysdelay
   0E37 D0 21               821 	pop	bits
                            822 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:210: FBOUTC=parity;
   0E39 A2 08               823 	mov	c,b0
   0E3B 92 96               824 	mov	_P1_6,c
                            825 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:211: sysdelay(95);			// 35us fuer Parity-Bit
   0E3D 90 00 5F            826 	mov	dptr,#0x005F
   0E40 C0 21               827 	push	bits
   0E42 12 0E 4E            828 	lcall	_sysdelay
   0E45 D0 21               829 	pop	bits
                            830 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:212: FBOUTC=0;
   0E47 C2 96               831 	clr	_P1_6
   0E49                     832 00121$:
                            833 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:214: TR1=0;
   0E49 C2 8E               834 	clr	_TCON_6
                            835 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:216: return (error);
   0E4B A2 09               836 	mov	c,b1
   0E4D 22                  837 	ret
                            838 ;------------------------------------------------------------
                            839 ;Allocation info for local variables in function 'sysdelay'
                            840 ;------------------------------------------------------------
                            841 ;deltime                   Allocated to registers r2 r3 
                            842 ;------------------------------------------------------------
                            843 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:233: void sysdelay(unsigned int deltime)
                            844 ;	-----------------------------------------
                            845 ;	 function sysdelay
                            846 ;	-----------------------------------------
   0E4E                     847 _sysdelay:
   0E4E AA 82               848 	mov	r2,dpl
   0E50 AB 83               849 	mov	r3,dph
                            850 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:235: TR1=0;					// Timer 1 anhalten
   0E52 C2 8E               851 	clr	_TCON_6
                            852 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:236: deltime=0xFFFF-deltime;
   0E54 74 FF               853 	mov	a,#0xFF
   0E56 C3                  854 	clr	c
   0E57 9A                  855 	subb	a,r2
   0E58 FA                  856 	mov	r2,a
   0E59 74 FF               857 	mov	a,#0xFF
   0E5B 9B                  858 	subb	a,r3
   0E5C FB                  859 	mov	r3,a
                            860 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:237: TH1=deltime>>8;			// Timer 1 setzen 
   0E5D 8B 8D               861 	mov	_TH1,r3
                            862 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:238: TL1=deltime;	
   0E5F 8A 8B               863 	mov	_TL1,r2
                            864 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:239: TF1=0;
   0E61 C2 8F               865 	clr	_TCON_7
                            866 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:240: TR1=1;
   0E63 D2 8E               867 	setb	_TCON_6
                            868 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:241: while(!TF1);				// warten auf Timer 1
   0E65                     869 00101$:
   0E65 30 8F FD            870 	jnb	_TCON_7,00101$
                            871 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:242: TR1=0;		
   0E68 C2 8E               872 	clr	_TCON_6
   0E6A 22                  873 	ret
                            874 ;------------------------------------------------------------
                            875 ;Allocation info for local variables in function 'set_timer0'
                            876 ;------------------------------------------------------------
                            877 ;deltime                   Allocated to registers r2 r3 
                            878 ;------------------------------------------------------------
                            879 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:253: void set_timer0(unsigned int deltime)
                            880 ;	-----------------------------------------
                            881 ;	 function set_timer0
                            882 ;	-----------------------------------------
   0E6B                     883 _set_timer0:
   0E6B AA 82               884 	mov	r2,dpl
   0E6D AB 83               885 	mov	r3,dph
                            886 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:255: TR0=0;					// Timer 0 anhalten
   0E6F C2 8C               887 	clr	_TCON_4
                            888 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:256: deltime=0xFFFF-deltime;
   0E71 74 FF               889 	mov	a,#0xFF
   0E73 C3                  890 	clr	c
   0E74 9A                  891 	subb	a,r2
   0E75 FA                  892 	mov	r2,a
   0E76 74 FF               893 	mov	a,#0xFF
   0E78 9B                  894 	subb	a,r3
   0E79 FB                  895 	mov	r3,a
                            896 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:257: TH0=deltime>>8;			// Timer 0 setzen 
   0E7A 8B 8C               897 	mov	_TH0,r3
                            898 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:258: TL0=deltime;	
   0E7C 8A 8A               899 	mov	_TL0,r2
                            900 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:259: TF0=0;					// ï¿½berlauf-Flag zuruecksetzen
   0E7E C2 8D               901 	clr	_TCON_5
                            902 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:260: TR0=1;					// Timer 0 starten
   0E80 D2 8C               903 	setb	_TCON_4
   0E82 22                  904 	ret
                            905 ;------------------------------------------------------------
                            906 ;Allocation info for local variables in function 'set_timer1'
                            907 ;------------------------------------------------------------
                            908 ;deltime                   Allocated to registers r2 r3 
                            909 ;------------------------------------------------------------
                            910 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:272: void set_timer1(unsigned int deltime)
                            911 ;	-----------------------------------------
                            912 ;	 function set_timer1
                            913 ;	-----------------------------------------
   0E83                     914 _set_timer1:
   0E83 AA 82               915 	mov	r2,dpl
   0E85 AB 83               916 	mov	r3,dph
                            917 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:274: TR1=0;				// Timer 1 anhalten
   0E87 C2 8E               918 	clr	_TCON_6
                            919 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:275: deltime=0xFFFF-deltime;
   0E89 74 FF               920 	mov	a,#0xFF
   0E8B C3                  921 	clr	c
   0E8C 9A                  922 	subb	a,r2
   0E8D FA                  923 	mov	r2,a
   0E8E 74 FF               924 	mov	a,#0xFF
   0E90 9B                  925 	subb	a,r3
   0E91 FB                  926 	mov	r3,a
                            927 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:276: TH1=deltime>>8;			// Timer 1 setzen 
   0E92 8B 8D               928 	mov	_TH1,r3
                            929 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:277: TL1=deltime;	
   0E94 8A 8B               930 	mov	_TL1,r2
                            931 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:278: TF1=0;				// Ueberlauf-Flag zuruecksetzen
   0E96 C2 8F               932 	clr	_TCON_7
                            933 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:279: TR1=1;				// Timer 1 starten
   0E98 D2 8E               934 	setb	_TCON_6
   0E9A 22                  935 	ret
                            936 ;------------------------------------------------------------
                            937 ;Allocation info for local variables in function 'restart_hw'
                            938 ;------------------------------------------------------------
                            939 ;------------------------------------------------------------
                            940 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:318: void restart_hw(void)
                            941 ;	-----------------------------------------
                            942 ;	 function restart_hw
                            943 ;	-----------------------------------------
   0E9B                     944 _restart_hw:
                            945 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:321: DIVM=0;			// Taktferquenz nicht teilen -> volles Tempo
   0E9B 75 95 00            946 	mov	_DIVM,#0x00
                            947 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:323: P1M1=0x14;		// Port 1 auf quasi-bidirektional,
   0E9E 75 91 14            948 	mov	_P1M1,#0x14
                            949 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:328: P1M2=0x4C;
   0EA1 75 92 4C            950 	mov	_P1M2,#0x4C
                            951 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:330: FBOUTC=0;		// Bus-Ausgang auf low
   0EA4 C2 96               952 	clr	_P1_6
                            953 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:332: TMOD=0x11;		// Timer 0 und Timer 1 als 16-Bit Timer
   0EA6 75 89 11            954 	mov	_TMOD,#0x11
                            955 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:333: TAMOD=0x00;
   0EA9 75 8F 00            956 	mov	_TAMOD,#0x00
                            957 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:334: TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen 
   0EAC C2 8C               958 	clr	_TCON_4
                            959 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:335: TR1=0;			// Timer 1 (Empfangs-Timeout, nicht in app verwenden!) zunaechst stoppen
   0EAE C2 8E               960 	clr	_TCON_6
                            961 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:337: RTCH=0x0E;		// Real Time Clock auf 65ms laden
   0EB0 75 D2 0E            962 	mov	_RTCH,#0x0E
                            963 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:338: RTCL=0xA0;		// (RTC ist ein down-counter mit 128 bit prescaler und osc-clock)
   0EB3 75 D3 A0            964 	mov	_RTCL,#0xA0
                            965 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:339: RTCCON=0x61;	// ... und starten
   0EB6 75 D1 61            966 	mov	_RTCCON,#0x61
                            967 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:341: interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
   0EB9 C2 02               968 	clr	_interrupted
                            969 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:342: IEN0=0x00;
   0EBB 75 A8 00            970 	mov	_IEN0,#0x00
                            971 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:343: IEN1=0x00;
   0EBE 75 E8 00            972 	mov	_IEN1,#0x00
                            973 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:345: ET1=0;			// Interrupt von Timer 1 sperren
   0EC1 C2 AB               974 	clr	_IEN0_3
                            975 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:346: EX0=0;			// Externen Interrupt 0 sperren
   0EC3 C2 A8               976 	clr	_IEN0_0
                            977 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:347: EX1=1;			// Externen Interrupt 1 freigeben	
   0EC5 D2 AA               978 	setb	_IEN0_2
                            979 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:348: EA=1;			// Interrupts prinzipiell freigeben
   0EC7 D2 AF               980 	setb	_IEN0_7
                            981 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:350: IP0=0x0C;		// höchste Priorität fuer ext. Int. 1 und Timer 1 (Bit 0 und 3)
   0EC9 75 B8 0C            982 	mov	_IP0,#0x0C
                            983 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:351: IP0H=0x0C;
   0ECC 75 B7 0C            984 	mov	_IP0H,#0x0C
                            985 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:352: IP1=0x00;
   0ECF 75 F8 00            986 	mov	_IP1,#0x00
                            987 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:353: IP1H=0x00;
   0ED2 75 F7 00            988 	mov	_IP1H,#0x00
                            989 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_hal_lpc.c:354: IT1=1;			// Interrupt 1 flankengetriggert=1 pegelgetriggert=0
   0ED5 D2 8A               990 	setb	_TCON_2
   0ED7 22                  991 	ret
                            992 	.area CSEG    (CODE)
                            993 	.area CONST   (CODE)
                    1C00    994 _userram	=	0x1c00
                    1D00    995 _eeprom	=	0x1d00
                            996 	.area XINIT   (CODE)
                            997 	.area CABS    (ABS,CODE)
