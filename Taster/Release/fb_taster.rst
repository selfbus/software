                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Sat May 12 21:47:29 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_taster
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _watchdog_start
                             14 	.globl _watchdog_feed
                             15 	.globl _watchdog_init
                             16 	.globl _delay_timer
                             17 	.globl _switch_led
                             18 	.globl _port_changed
                             19 	.globl _restart_app
                             20 	.globl _process_tel
                             21 	.globl _restart_hw
                             22 	.globl _P3_1
                             23 	.globl _P3_0
                             24 	.globl _P1_7
                             25 	.globl _P1_6
                             26 	.globl _P1_5
                             27 	.globl _P1_4
                             28 	.globl _P1_3
                             29 	.globl _P1_2
                             30 	.globl _P1_1
                             31 	.globl _P1_0
                             32 	.globl _P0_7
                             33 	.globl _P0_6
                             34 	.globl _P0_5
                             35 	.globl _P0_4
                             36 	.globl _P0_3
                             37 	.globl _P0_2
                             38 	.globl _P0_1
                             39 	.globl _P0_0
                             40 	.globl _I2CON_0
                             41 	.globl _I2CON_2
                             42 	.globl _I2CON_3
                             43 	.globl _I2CON_4
                             44 	.globl _I2CON_5
                             45 	.globl _I2CON_6
                             46 	.globl _SCON_7
                             47 	.globl _SCON_6
                             48 	.globl _SCON_5
                             49 	.globl _SCON_4
                             50 	.globl _SCON_3
                             51 	.globl _SCON_2
                             52 	.globl _SCON_1
                             53 	.globl _SCON_0
                             54 	.globl _IP0_0
                             55 	.globl _IP0_1
                             56 	.globl _IP0_2
                             57 	.globl _IP0_3
                             58 	.globl _IP0_4
                             59 	.globl _IP0_5
                             60 	.globl _IP0_6
                             61 	.globl _IP1_0
                             62 	.globl _IP1_1
                             63 	.globl _IP1_2
                             64 	.globl _IP1_6
                             65 	.globl _IEN1_0
                             66 	.globl _IEN1_1
                             67 	.globl _IEN1_2
                             68 	.globl _IEN0_0
                             69 	.globl _IEN0_1
                             70 	.globl _IEN0_2
                             71 	.globl _IEN0_3
                             72 	.globl _IEN0_4
                             73 	.globl _IEN0_5
                             74 	.globl _IEN0_6
                             75 	.globl _IEN0_7
                             76 	.globl _TCON_0
                             77 	.globl _TCON_1
                             78 	.globl _TCON_2
                             79 	.globl _TCON_3
                             80 	.globl _TCON_4
                             81 	.globl _TCON_5
                             82 	.globl _TCON_6
                             83 	.globl _TCON_7
                             84 	.globl _PSW_7
                             85 	.globl _PSW_6
                             86 	.globl _PSW_5
                             87 	.globl _PSW_4
                             88 	.globl _PSW_3
                             89 	.globl _PSW_2
                             90 	.globl _PSW_1
                             91 	.globl _PSW_0
                             92 	.globl _IEN1
                             93 	.globl _IP0H
                             94 	.globl _WFEED2
                             95 	.globl _WFEED1
                             96 	.globl _WDL
                             97 	.globl _WDCON
                             98 	.globl _TRIM
                             99 	.globl _TAMOD
                            100 	.globl _SSTAT
                            101 	.globl _RTCL
                            102 	.globl _RTCH
                            103 	.globl _RTCCON
                            104 	.globl _RSTSRC
                            105 	.globl _PT0AD
                            106 	.globl _PCONA
                            107 	.globl _P3M2
                            108 	.globl _P3M1
                            109 	.globl _P1M2
                            110 	.globl _P1M1
                            111 	.globl _P0M2
                            112 	.globl _P0M1
                            113 	.globl _KBPATN
                            114 	.globl _KBMASK
                            115 	.globl _KBCON
                            116 	.globl _IP1H
                            117 	.globl _IP1
                            118 	.globl _I2STAT
                            119 	.globl _I2SCLL
                            120 	.globl _I2SCLH
                            121 	.globl _I2DAT
                            122 	.globl _I2CON
                            123 	.globl _I2ADR
                            124 	.globl _FMDATA
                            125 	.globl _FMCON
                            126 	.globl _FMADRL
                            127 	.globl _FMADRH
                            128 	.globl _DIVM
                            129 	.globl _CMP2
                            130 	.globl _CMP1
                            131 	.globl _BRGCON
                            132 	.globl _BRGR1
                            133 	.globl _BRGR0
                            134 	.globl _SADEN
                            135 	.globl _SADDR
                            136 	.globl _AUXR1
                            137 	.globl _SBUF
                            138 	.globl _SCON
                            139 	.globl _IP0
                            140 	.globl _IEN0
                            141 	.globl _TH1
                            142 	.globl _TH0
                            143 	.globl _TL1
                            144 	.globl _TL0
                            145 	.globl _TMOD
                            146 	.globl _TCON
                            147 	.globl _PCON
                            148 	.globl _DPH
                            149 	.globl _DPL
                            150 	.globl _SP
                            151 	.globl _B
                            152 	.globl _ACC
                            153 	.globl _PSW
                            154 	.globl _P3
                            155 	.globl _P1
                            156 	.globl _P0
                            157 	.globl _object_value
                            158 ;--------------------------------------------------------
                            159 ; special function registers
                            160 ;--------------------------------------------------------
                            161 	.area RSEG    (ABS,DATA)
   0000                     162 	.org 0x0000
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
                            231 	.area RSEG    (ABS,DATA)
   0000                     232 	.org 0x0000
                    00D0    233 _PSW_0	=	0x00d0
                    00D1    234 _PSW_1	=	0x00d1
                    00D2    235 _PSW_2	=	0x00d2
                    00D3    236 _PSW_3	=	0x00d3
                    00D4    237 _PSW_4	=	0x00d4
                    00D5    238 _PSW_5	=	0x00d5
                    00D6    239 _PSW_6	=	0x00d6
                    00D7    240 _PSW_7	=	0x00d7
                    008F    241 _TCON_7	=	0x008f
                    008E    242 _TCON_6	=	0x008e
                    008D    243 _TCON_5	=	0x008d
                    008C    244 _TCON_4	=	0x008c
                    008B    245 _TCON_3	=	0x008b
                    008A    246 _TCON_2	=	0x008a
                    0089    247 _TCON_1	=	0x0089
                    0088    248 _TCON_0	=	0x0088
                    00AF    249 _IEN0_7	=	0x00af
                    00AE    250 _IEN0_6	=	0x00ae
                    00AD    251 _IEN0_5	=	0x00ad
                    00AC    252 _IEN0_4	=	0x00ac
                    00AB    253 _IEN0_3	=	0x00ab
                    00AA    254 _IEN0_2	=	0x00aa
                    00A9    255 _IEN0_1	=	0x00a9
                    00A8    256 _IEN0_0	=	0x00a8
                    00EA    257 _IEN1_2	=	0x00ea
                    00E9    258 _IEN1_1	=	0x00e9
                    00E8    259 _IEN1_0	=	0x00e8
                    00FE    260 _IP1_6	=	0x00fe
                    00FA    261 _IP1_2	=	0x00fa
                    00F9    262 _IP1_1	=	0x00f9
                    00F8    263 _IP1_0	=	0x00f8
                    00BE    264 _IP0_6	=	0x00be
                    00BD    265 _IP0_5	=	0x00bd
                    00BC    266 _IP0_4	=	0x00bc
                    00BB    267 _IP0_3	=	0x00bb
                    00BA    268 _IP0_2	=	0x00ba
                    00B9    269 _IP0_1	=	0x00b9
                    00B8    270 _IP0_0	=	0x00b8
                    0098    271 _SCON_0	=	0x0098
                    0099    272 _SCON_1	=	0x0099
                    009A    273 _SCON_2	=	0x009a
                    009B    274 _SCON_3	=	0x009b
                    009C    275 _SCON_4	=	0x009c
                    009D    276 _SCON_5	=	0x009d
                    009E    277 _SCON_6	=	0x009e
                    009F    278 _SCON_7	=	0x009f
                    00DE    279 _I2CON_6	=	0x00de
                    00DD    280 _I2CON_5	=	0x00dd
                    00DC    281 _I2CON_4	=	0x00dc
                    00DB    282 _I2CON_3	=	0x00db
                    00DA    283 _I2CON_2	=	0x00da
                    00D8    284 _I2CON_0	=	0x00d8
                    0080    285 _P0_0	=	0x0080
                    0081    286 _P0_1	=	0x0081
                    0082    287 _P0_2	=	0x0082
                    0083    288 _P0_3	=	0x0083
                    0084    289 _P0_4	=	0x0084
                    0085    290 _P0_5	=	0x0085
                    0086    291 _P0_6	=	0x0086
                    0087    292 _P0_7	=	0x0087
                    0090    293 _P1_0	=	0x0090
                    0091    294 _P1_1	=	0x0091
                    0092    295 _P1_2	=	0x0092
                    0093    296 _P1_3	=	0x0093
                    0094    297 _P1_4	=	0x0094
                    0095    298 _P1_5	=	0x0095
                    0096    299 _P1_6	=	0x0096
                    0097    300 _P1_7	=	0x0097
                    00B0    301 _P3_0	=	0x00b0
                    00B1    302 _P3_1	=	0x00b1
                            303 ;--------------------------------------------------------
                            304 ; overlayable register banks
                            305 ;--------------------------------------------------------
                            306 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     307 	.ds 8
                            308 ;--------------------------------------------------------
                            309 ; overlayable bit register bank
                            310 ;--------------------------------------------------------
                            311 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     312 bits:
   0023                     313 	.ds 1
                    8000    314 	b0 = bits[0]
                    8100    315 	b1 = bits[1]
                    8200    316 	b2 = bits[2]
                    8300    317 	b3 = bits[3]
                    8400    318 	b4 = bits[4]
                    8500    319 	b5 = bits[5]
                    8600    320 	b6 = bits[6]
                    8700    321 	b7 = bits[7]
                            322 ;--------------------------------------------------------
                            323 ; internal ram data
                            324 ;--------------------------------------------------------
                            325 	.area DSEG    (DATA)
   0008                     326 _object_value::
   0008                     327 	.ds 12
                            328 ;--------------------------------------------------------
                            329 ; overlayable items in internal ram 
                            330 ;--------------------------------------------------------
                            331 ;--------------------------------------------------------
                            332 ; Stack segment in internal ram 
                            333 ;--------------------------------------------------------
                            334 	.area	SSEG	(DATA)
   0073                     335 __start__stack:
   0073                     336 	.ds	1
                            337 
                            338 ;--------------------------------------------------------
                            339 ; indirectly addressable internal ram data
                            340 ;--------------------------------------------------------
                            341 	.area ISEG    (DATA)
                            342 ;--------------------------------------------------------
                            343 ; absolute internal ram data
                            344 ;--------------------------------------------------------
                            345 	.area IABS    (ABS,DATA)
                            346 	.area IABS    (ABS,DATA)
                            347 ;--------------------------------------------------------
                            348 ; bit data
                            349 ;--------------------------------------------------------
                            350 	.area BSEG    (BIT)
                            351 ;--------------------------------------------------------
                            352 ; paged external ram data
                            353 ;--------------------------------------------------------
                            354 	.area PSEG    (PAG,XDATA)
                            355 ;--------------------------------------------------------
                            356 ; external ram data
                            357 ;--------------------------------------------------------
                            358 	.area XSEG    (XDATA)
                            359 ;--------------------------------------------------------
                            360 ; absolute external ram data
                            361 ;--------------------------------------------------------
                            362 	.area XABS    (ABS,XDATA)
                            363 ;--------------------------------------------------------
                            364 ; external initialized ram data
                            365 ;--------------------------------------------------------
                            366 	.area XISEG   (XDATA)
                            367 	.area HOME    (CODE)
                            368 	.area GSINIT0 (CODE)
                            369 	.area GSINIT1 (CODE)
                            370 	.area GSINIT2 (CODE)
                            371 	.area GSINIT3 (CODE)
                            372 	.area GSINIT4 (CODE)
                            373 	.area GSINIT5 (CODE)
                            374 	.area GSINIT  (CODE)
                            375 	.area GSFINAL (CODE)
                            376 	.area CSEG    (CODE)
                            377 ;--------------------------------------------------------
                            378 ; interrupt vector 
                            379 ;--------------------------------------------------------
                            380 	.area HOME    (CODE)
   0000                     381 __interrupt_vect:
   0000 02 00 23            382 	ljmp	__sdcc_gsinit_startup
   0003 32                  383 	reti
   0004                     384 	.ds	7
   000B 02 09 F7            385 	ljmp	_timer0_int
   000E                     386 	.ds	5
   0013 02 12 7C            387 	ljmp	_X1_int
   0016                     388 	.ds	5
   001B 02 12 AC            389 	ljmp	_T1_int
                            390 ;--------------------------------------------------------
                            391 ; global & static initialisations
                            392 ;--------------------------------------------------------
                            393 	.area HOME    (CODE)
                            394 	.area GSINIT  (CODE)
                            395 	.area GSFINAL (CODE)
                            396 	.area GSINIT  (CODE)
                            397 	.globl __sdcc_gsinit_startup
                            398 	.globl __sdcc_program_startup
                            399 	.globl __start__stack
                            400 	.globl __mcs51_genXINIT
                            401 	.globl __mcs51_genXRAMCLEAR
                            402 	.globl __mcs51_genRAMCLEAR
                            403 	.area GSFINAL (CODE)
   007C 02 00 1E            404 	ljmp	__sdcc_program_startup
                            405 ;--------------------------------------------------------
                            406 ; Home
                            407 ;--------------------------------------------------------
                            408 	.area HOME    (CODE)
                            409 	.area HOME    (CODE)
   001E                     410 __sdcc_program_startup:
   001E 12 0F D4            411 	lcall	_main
                            412 ;	return from main will lock up
   0021 80 FE               413 	sjmp .
                            414 ;--------------------------------------------------------
                            415 ; code
                            416 ;--------------------------------------------------------
                            417 	.area CSEG    (CODE)
                            418 ;------------------------------------------------------------
                            419 ;Allocation info for local variables in function 'main'
                            420 ;------------------------------------------------------------
                            421 ;n                         Allocated to registers r5 
                            422 ;LED                       Allocated to registers 
                            423 ;cmd                       Allocated to registers r5 
                            424 ;tasterpegel               Allocated to registers r7 
                            425 ;blink                     Allocated to registers b2 
                            426 ;verstell                  Allocated to registers b3 
                            427 ;verstellt                 Allocated to registers b1 
                            428 ;tastergetoggelt           Allocated to registers b0 
                            429 ;cal                       Allocated to registers r6 
                            430 ;buttonpattern             Allocated to registers 
                            431 ;wduf                      Allocated to registers b1 
                            432 ;------------------------------------------------------------
                            433 ;	../fb_taster.c:74: void main(void)
                            434 ;	-----------------------------------------
                            435 ;	 function main
                            436 ;	-----------------------------------------
   0FD4                     437 _main:
                    0007    438 	ar7 = 0x07
                    0006    439 	ar6 = 0x06
                    0005    440 	ar5 = 0x05
                    0004    441 	ar4 = 0x04
                    0003    442 	ar3 = 0x03
                    0002    443 	ar2 = 0x02
                    0001    444 	ar1 = 0x01
                    0000    445 	ar0 = 0x00
                            446 ;	../fb_taster.c:76: unsigned char n,LED,cmd,tasterpegel=0;
   0FD4 7F 00               447 	mov	r7,#0x00
                            448 ;	../fb_taster.c:77: __bit blink, verstell, verstellt,tastergetoggelt=0;
   0FD6 C2 18               449 	clr	b0
                            450 ;	../fb_taster.c:84: wduf=WDCON&0x02;
   0FD8 E5 A7               451 	mov	a,_WDCON
   0FDA 03                  452 	rr	a
   0FDB 54 01               453 	anl	a,#0x01
   0FDD 24 FF               454 	add	a,#0xff
   0FDF 92 19               455 	mov	b1,c
                            456 ;	../fb_taster.c:86: restart_hw();							// Hardware zuruecksetzen	
   0FE1 C0 07               457 	push	ar7
   0FE3 C0 23               458 	push	bits
   0FE5 12 1B A2            459 	lcall	_restart_hw
   0FE8 D0 23               460 	pop	bits
   0FEA D0 07               461 	pop	ar7
                            462 ;	../fb_taster.c:88: if((((PORT & 0x0F)== 0x03) || ((PORT & 0x0F)== 0x0C)) && wduf) cal=0;
   0FEC 74 0F               463 	mov	a,#0x0F
   0FEE 55 80               464 	anl	a,_P0
   0FF0 FE                  465 	mov	r6,a
   0FF1 BE 03 02            466 	cjne	r6,#0x03,00285$
   0FF4 80 08               467 	sjmp	00105$
   0FF6                     468 00285$:
   0FF6 74 0F               469 	mov	a,#0x0F
   0FF8 55 80               470 	anl	a,_P0
   0FFA FE                  471 	mov	r6,a
   0FFB BE 0C 07            472 	cjne	r6,#0x0C,00102$
   0FFE                     473 00105$:
   0FFE 30 19 04            474 	jnb	b1,00102$
   1001 7E 00               475 	mov	r6,#0x00
   1003 80 07               476 	sjmp	00103$
   1005                     477 00102$:
                            478 ;	../fb_taster.c:89: else cal=trimsave;
   1005 90 1C BF            479 	mov	dptr,#_main_trimsave_1_33
   1008 E4                  480 	clr	a
   1009 93                  481 	movc	a,@a+dptr
   100A FD                  482 	mov	r5,a
   100B FE                  483 	mov	r6,a
   100C                     484 00103$:
                            485 ;	../fb_taster.c:96: TRIM = (TRIM+trimsave);
   100C 90 1C BF            486 	mov	dptr,#_main_trimsave_1_33
   100F E4                  487 	clr	a
   1010 93                  488 	movc	a,@a+dptr
   1011 AC 96               489 	mov	r4,_TRIM
   1013 2C                  490 	add	a,r4
   1014 FD                  491 	mov	r5,a
   1015 8D 96               492 	mov	_TRIM,r5
                            493 ;	../fb_taster.c:97: TRIM &= 0x3F;//oberen 2 bits ausblenden
   1017 53 96 3F            494 	anl	_TRIM,#0x3F
                            495 ;	../fb_taster.c:98: watchdog_init();
   101A C0 07               496 	push	ar7
   101C C0 06               497 	push	ar6
   101E C0 23               498 	push	bits
   1020 12 12 34            499 	lcall	_watchdog_init
   1023 D0 23               500 	pop	bits
                            501 ;	../fb_taster.c:99: watchdog_start();
   1025 C0 23               502 	push	bits
   1027 12 12 50            503 	lcall	_watchdog_start
   102A D0 23               504 	pop	bits
   102C D0 06               505 	pop	ar6
   102E D0 07               506 	pop	ar7
                            507 ;	../fb_taster.c:100: for (n=0;n<50;n++) {
   1030 7D 00               508 	mov	r5,#0x00
   1032                     509 00183$:
   1032 BD 32 00            510 	cjne	r5,#0x32,00289$
   1035                     511 00289$:
   1035 50 1A               512 	jnc	00186$
                            513 ;	../fb_taster.c:101: TR0=0;					// Timer 0 anhalten
   1037 C2 8C               514 	clr	_TCON_4
                            515 ;	../fb_taster.c:102: TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
   1039 90 1D 17            516 	mov	dptr,#(_eeprom + 0x0017)
   103C E4                  517 	clr	a
   103D 93                  518 	movc	a,@a+dptr
   103E F5 8C               519 	mov	_TH0,a
                            520 ;	../fb_taster.c:103: TL0=eeprom[ADDRTAB+2];
   1040 90 1D 18            521 	mov	dptr,#(_eeprom + 0x0018)
   1043 E4                  522 	clr	a
   1044 93                  523 	movc	a,@a+dptr
   1045 F5 8A               524 	mov	_TL0,a
                            525 ;	../fb_taster.c:104: TF0=0;					// Überlauf-Flag zurücksetzen
   1047 C2 8D               526 	clr	_TCON_5
                            527 ;	../fb_taster.c:105: TR0=1;					// Timer 0 starten
   1049 D2 8C               528 	setb	_TCON_4
                            529 ;	../fb_taster.c:106: while(!TF0);
   104B                     530 00106$:
   104B 30 8D FD            531 	jnb	_TCON_5,00106$
                            532 ;	../fb_taster.c:100: for (n=0;n<50;n++) {
   104E 0D                  533 	inc	r5
   104F 80 E1               534 	sjmp	00183$
   1051                     535 00186$:
                            536 ;	../fb_taster.c:108: restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
   1051 C0 07               537 	push	ar7
   1053 C0 06               538 	push	ar6
   1055 C0 23               539 	push	bits
   1057 12 0E D0            540 	lcall	_restart_app
   105A D0 23               541 	pop	bits
   105C D0 06               542 	pop	ar6
   105E D0 07               543 	pop	ar7
                            544 ;	../fb_taster.c:110: BRGCON&=0xFE;	// Baudrate Generator stoppen
   1060 53 BD FE            545 	anl	_BRGCON,#0xFE
                            546 ;	../fb_taster.c:111: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   1063 53 91 FC            547 	anl	_P1M1,#0xFC
                            548 ;	../fb_taster.c:112: P1M2&=0xFC;
   1066 53 92 FC            549 	anl	_P1M2,#0xFC
                            550 ;	../fb_taster.c:113: SCON=0x50;		// Mode 1, receive enable
   1069 75 98 50            551 	mov	_SCON,#0x50
                            552 ;	../fb_taster.c:114: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   106C 43 BA E0            553 	orl	_SSTAT,#0xE0
                            554 ;	../fb_taster.c:115: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   106F 43 BD 02            555 	orl	_BRGCON,#0x02
                            556 ;	../fb_taster.c:116: BRGR1=0x2F;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
   1072 75 BF 2F            557 	mov	_BRGR1,#0x2F
                            558 ;	../fb_taster.c:117: BRGR0=0xF0;	// für 115200 0030 nehmen, autocal: 600bd= 0x2FF0
   1075 75 BE F0            559 	mov	_BRGR0,#0xF0
                            560 ;	../fb_taster.c:118: BRGCON|=0x01;	// Baudrate Generator starten
   1078 43 BD 01            561 	orl	_BRGCON,#0x01
                            562 ;	../fb_taster.c:119: SBUF=0x55; // hiernach ist TI==1
   107B 75 99 55            563 	mov	_SBUF,#0x55
                            564 ;	../fb_taster.c:121: for (n=0;n<4;n++) switch_led(n,0);	// Alle LEDs gemaess ihren Parametern setzen
   107E 7D 00               565 	mov	r5,#0x00
   1080                     566 00187$:
   1080 BD 04 00            567 	cjne	r5,#0x04,00292$
   1083                     568 00292$:
   1083 50 1D               569 	jnc	00190$
   1085 C2 F0               570 	clr	b[0]
   1087 C0 07               571 	push	ar7
   1089 C0 06               572 	push	ar6
   108B C0 05               573 	push	ar5
   108D C0 23               574 	push	bits
   108F 85 F0 23            575 	mov	bits,b
   1092 8D 82               576 	mov	dpl,r5
   1094 12 09 5B            577 	lcall	_switch_led
   1097 D0 23               578 	pop	bits
   1099 D0 05               579 	pop	ar5
   109B D0 06               580 	pop	ar6
   109D D0 07               581 	pop	ar7
   109F 0D                  582 	inc	r5
   10A0 80 DE               583 	sjmp	00187$
   10A2                     584 00190$:
                            585 ;	../fb_taster.c:124: verstellt=0;
   10A2 C2 19               586 	clr	b1
                            587 ;	../fb_taster.c:125: dimmwert = LED_hell;
   10A4 90 1C BE            588 	mov	dptr,#_main_LED_hell_1_33
   10A7 E4                  589 	clr	a
   10A8 93                  590 	movc	a,@a+dptr
   10A9 F5 2B               591 	mov	_dimmwert,a
                            592 ;	../fb_taster.c:127: do  {
   10AB                     593 00180$:
                            594 ;	../fb_taster.c:128: watchdog_feed();
   10AB C0 07               595 	push	ar7
   10AD C0 06               596 	push	ar6
   10AF C0 23               597 	push	bits
   10B1 12 12 45            598 	lcall	_watchdog_feed
   10B4 D0 23               599 	pop	bits
   10B6 D0 06               600 	pop	ar6
   10B8 D0 07               601 	pop	ar7
                            602 ;	../fb_taster.c:129: if (RTCCON>=0x80) delay_timer();	// Realtime clock ueberlauf
   10BA 74 80               603 	mov	a,#0x100 - 0x80
   10BC 25 D1               604 	add	a,_RTCCON
   10BE 50 0F               605 	jnc	00110$
   10C0 C0 07               606 	push	ar7
   10C2 C0 06               607 	push	ar6
   10C4 C0 23               608 	push	bits
   10C6 12 0A 16            609 	lcall	_delay_timer
   10C9 D0 23               610 	pop	bits
   10CB D0 06               611 	pop	ar6
   10CD D0 07               612 	pop	ar7
   10CF                     613 00110$:
                            614 ;	../fb_taster.c:131: n=timer;
                            615 ;	../fb_taster.c:132: blink=((n>>5) & 0x01);
   10CF E5 24               616 	mov	a,_timer
   10D1 FD                  617 	mov	r5,a
   10D2 A2 E5               618 	mov	c,acc[5]
   10D4 E4                  619 	clr	a
   10D5 33                  620 	rlc	a
   10D6 24 FF               621 	add	a,#0xff
   10D8 92 1A               622 	mov	b2,c
                            623 ;	../fb_taster.c:133: verstell=((n>>2) & 0x01);
   10DA ED                  624 	mov	a,r5
   10DB 03                  625 	rr	a
   10DC 03                  626 	rr	a
   10DD 54 01               627 	anl	a,#0x01
   10DF FC                  628 	mov	r4,a
   10E0 24 FF               629 	add	a,#0xff
                            630 ;	../fb_taster.c:135: if (verstell==0)verstellt=0;
   10E2 92 1B               631 	mov	b3,c
   10E4 40 02               632 	jc	00112$
   10E6 C2 19               633 	clr	b1
   10E8                     634 00112$:
                            635 ;	../fb_taster.c:139: if (status60 & 0x01){			//wenn progmode aktiv ist...
   10E8 E5 72               636 	mov	a,_status60
   10EA 30 E0 3C            637 	jnb	acc.0,00131$
                            638 ;	../fb_taster.c:141: if ((PORT & 0x0F)==0x0E){	// Taste 1 gedrück
   10ED 74 0F               639 	mov	a,#0x0F
   10EF 55 80               640 	anl	a,_P0
   10F1 FC                  641 	mov	r4,a
   10F2 BC 0E 15            642 	cjne	r4,#0x0E,00118$
                            643 ;	../fb_taster.c:142: if ((dimmwert<254) && (verstell==1)&& verstellt==0){
   10F5 74 02               644 	mov	a,#0x100 - 0xFE
   10F7 25 2B               645 	add	a,_dimmwert
   10F9 40 0F               646 	jc	00118$
   10FB A2 1B               647 	mov	c,b3
   10FD E4                  648 	clr	a
   10FE 33                  649 	rlc	a
   10FF FC                  650 	mov	r4,a
   1100 BC 01 07            651 	cjne	r4,#0x01,00118$
   1103 20 19 04            652 	jb	b1,00118$
                            653 ;	../fb_taster.c:143: dimmwert++;
   1106 05 2B               654 	inc	_dimmwert
                            655 ;	../fb_taster.c:144: verstellt=1;
   1108 D2 19               656 	setb	b1
   110A                     657 00118$:
                            658 ;	../fb_taster.c:147: if ((PORT & 0x0F)==0x0D){ // Taste 2 gedrückt
   110A 74 0F               659 	mov	a,#0x0F
   110C 55 80               660 	anl	a,_P0
   110E FC                  661 	mov	r4,a
   110F BC 0D 42            662 	cjne	r4,#0x0D,00132$
                            663 ;	../fb_taster.c:148: if ((dimmwert>1) && (verstell==1)&& verstellt==0){
   1112 E5 2B               664 	mov	a,_dimmwert
   1114 24 FE               665 	add	a,#0xff - 0x01
   1116 50 3C               666 	jnc	00132$
   1118 A2 1B               667 	mov	c,b3
   111A E4                  668 	clr	a
   111B 33                  669 	rlc	a
   111C FC                  670 	mov	r4,a
   111D BC 01 34            671 	cjne	r4,#0x01,00132$
   1120 20 19 31            672 	jb	b1,00132$
                            673 ;	../fb_taster.c:149: dimmwert--;
   1123 15 2B               674 	dec	_dimmwert
                            675 ;	../fb_taster.c:150: verstellt=1;
   1125 D2 19               676 	setb	b1
   1127 80 2B               677 	sjmp	00132$
   1129                     678 00131$:
                            679 ;	../fb_taster.c:157: if(APPLICATION_RUN)	{// nur wenn im Run modus und nicht connected
   1129 90 1D 0D            680 	mov	dptr,#(_eeprom + 0x000d)
   112C E4                  681 	clr	a
   112D 93                  682 	movc	a,@a+dptr
   112E FC                  683 	mov	r4,a
   112F BC FF 22            684 	cjne	r4,#0xFF,00132$
   1132 20 0F 1F            685 	jb	_connected,00132$
                            686 ;	../fb_taster.c:158: if ((PORT & 0x0F) != button_buffer) port_changed(PORT & 0x0F);	// ein Taster wurde gedrueckt
   1135 74 0F               687 	mov	a,#0x0F
   1137 55 80               688 	anl	a,_P0
   1139 FC                  689 	mov	r4,a
   113A B5 28 02            690 	cjne	a,_button_buffer,00312$
   113D 80 15               691 	sjmp	00132$
   113F                     692 00312$:
   113F 74 0F               693 	mov	a,#0x0F
   1141 55 80               694 	anl	a,_P0
   1143 F5 82               695 	mov	dpl,a
   1145 C0 07               696 	push	ar7
   1147 C0 06               697 	push	ar6
   1149 C0 23               698 	push	bits
   114B 12 00 7F            699 	lcall	_port_changed
   114E D0 23               700 	pop	bits
   1150 D0 06               701 	pop	ar6
   1152 D0 07               702 	pop	ar7
   1154                     703 00132$:
                            704 ;	../fb_taster.c:162: if (tel_arrived || tel_sent) {//
   1154 20 07 03            705 	jb	_tel_arrived,00133$
   1157 30 08 13            706 	jnb	_tel_sent,00134$
   115A                     707 00133$:
                            708 ;	../fb_taster.c:163: tel_sent=0;
   115A C2 08               709 	clr	_tel_sent
                            710 ;	../fb_taster.c:164: process_tel();
   115C C0 07               711 	push	ar7
   115E C0 06               712 	push	ar6
   1160 C0 23               713 	push	bits
   1162 12 18 EC            714 	lcall	_process_tel
   1165 D0 23               715 	pop	bits
   1167 D0 06               716 	pop	ar6
   1169 D0 07               717 	pop	ar7
   116B 80 0A               718 	sjmp	00135$
   116D                     719 00134$:
                            720 ;	../fb_taster.c:167: for(n=0;n<100;n++);
   116D 7D 64               721 	mov	r5,#0x64
   116F                     722 00193$:
   116F 8D 04               723 	mov	ar4,r5
   1171 1C                  724 	dec	r4
   1172 8C 05               725 	mov	ar5,r4
   1174 ED                  726 	mov	a,r5
   1175 70 F8               727 	jnz	00193$
   1177                     728 00135$:
                            729 ;	../fb_taster.c:173: if (RI){
                            730 ;	../fb_taster.c:174: RI=0;
   1177 10 98 02            731 	jbc	_SCON_0,00316$
   117A 80 4A               732 	sjmp	00161$
   117C                     733 00316$:
                            734 ;	../fb_taster.c:175: cmd=SBUF;
   117C AD 99               735 	mov	r5,_SBUF
                            736 ;	../fb_taster.c:176: if(cmd=='c'){
   117E BD 63 08            737 	cjne	r5,#0x63,00141$
                            738 ;	../fb_taster.c:177: while(!TI);
   1181                     739 00137$:
                            740 ;	../fb_taster.c:178: TI=0;
   1181 10 99 02            741 	jbc	_SCON_1,00319$
   1184 80 FB               742 	sjmp	00137$
   1186                     743 00319$:
                            744 ;	../fb_taster.c:179: SBUF=0x55;
   1186 75 99 55            745 	mov	_SBUF,#0x55
   1189                     746 00141$:
                            747 ;	../fb_taster.c:181: if(cmd=='+'){
   1189 BD 2B 03            748 	cjne	r5,#0x2B,00143$
                            749 ;	../fb_taster.c:182: TRIM--;
   118C 15 96               750 	dec	_TRIM
                            751 ;	../fb_taster.c:183: cal--;
   118E 1E                  752 	dec	r6
   118F                     753 00143$:
                            754 ;	../fb_taster.c:185: if(cmd=='-'){
   118F BD 2D 03            755 	cjne	r5,#0x2D,00145$
                            756 ;	../fb_taster.c:186: TRIM++;
   1192 05 96               757 	inc	_TRIM
                            758 ;	../fb_taster.c:187: cal++;
   1194 0E                  759 	inc	r6
   1195                     760 00145$:
                            761 ;	../fb_taster.c:189: if(cmd=='w'){
   1195 BD 77 12            762 	cjne	r5,#0x77,00147$
                            763 ;	../fb_taster.c:190: EA=0;
   1198 C2 AF               764 	clr	_IEN0_7
                            765 ;	../fb_taster.c:191: START_WRITECYCLE;	//cal an 0x1bff schreiben
   119A 75 E4 00            766 	mov	_FMCON,#0x00
                            767 ;	../fb_taster.c:192: FMADRH= 0x1C;		
   119D 75 E7 1C            768 	mov	_FMADRH,#0x1C
                            769 ;	../fb_taster.c:193: FMADRL= 0xBF; 
   11A0 75 E6 BF            770 	mov	_FMADRL,#0xBF
                            771 ;	../fb_taster.c:194: FMDATA=	cal; 
   11A3 8E E5               772 	mov	_FMDATA,r6
                            773 ;	../fb_taster.c:195: STOP_WRITECYCLE;
   11A5 75 E4 68            774 	mov	_FMCON,#0x68
                            775 ;	../fb_taster.c:196: EA=1;				//int wieder freigeben
   11A8 D2 AF               776 	setb	_IEN0_7
   11AA                     777 00147$:
                            778 ;	../fb_taster.c:198: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   11AA BD 70 03            779 	cjne	r5,#0x70,00149$
   11AD 63 72 81            780 	xrl	_status60,#0x81
   11B0                     781 00149$:
                            782 ;	../fb_taster.c:199: if(cmd=='v'){
   11B0 BD 76 08            783 	cjne	r5,#0x76,00154$
                            784 ;	../fb_taster.c:200: while(!TI);
   11B3                     785 00150$:
                            786 ;	../fb_taster.c:201: TI=0;
   11B3 10 99 02            787 	jbc	_SCON_1,00330$
   11B6 80 FB               788 	sjmp	00150$
   11B8                     789 00330$:
                            790 ;	../fb_taster.c:202: SBUF=VERSION;
   11B8 75 99 69            791 	mov	_SBUF,#0x69
   11BB                     792 00154$:
                            793 ;	../fb_taster.c:204: if(cmd=='t'){
   11BB BD 74 08            794 	cjne	r5,#0x74,00161$
                            795 ;	../fb_taster.c:205: while(!TI);
   11BE                     796 00155$:
                            797 ;	../fb_taster.c:206: TI=0;
   11BE 10 99 02            798 	jbc	_SCON_1,00333$
   11C1 80 FB               799 	sjmp	00155$
   11C3                     800 00333$:
                            801 ;	../fb_taster.c:207: SBUF=TYPE;
   11C3 75 99 03            802 	mov	_SBUF,#0x03
   11C6                     803 00161$:
                            804 ;	../fb_taster.c:240: if (((PORT & 0x0F)== 0x03) || ((PORT & 0x0F)== 0x0C)) {
   11C6 74 0F               805 	mov	a,#0x0F
   11C8 55 80               806 	anl	a,_P0
   11CA FD                  807 	mov	r5,a
   11CB BD 03 02            808 	cjne	r5,#0x03,00334$
   11CE 80 08               809 	sjmp	00169$
   11D0                     810 00334$:
   11D0 74 0F               811 	mov	a,#0x0F
   11D2 55 80               812 	anl	a,_P0
   11D4 FD                  813 	mov	r5,a
   11D5 BD 0C 28            814 	cjne	r5,#0x0C,00170$
   11D8                     815 00169$:
                            816 ;	../fb_taster.c:241: if(tasterpegel<255)	tasterpegel++;
   11D8 BF FF 00            817 	cjne	r7,#0xFF,00337$
   11DB                     818 00337$:
   11DB 50 03               819 	jnc	00167$
   11DD 0F                  820 	inc	r7
   11DE 80 20               821 	sjmp	00170$
   11E0                     822 00167$:
                            823 ;	../fb_taster.c:243: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   11E0 20 18 03            824 	jb	b0,00163$
   11E3 63 72 81            825 	xrl	_status60,#0x81
   11E6                     826 00163$:
                            827 ;	../fb_taster.c:244: tastergetoggelt=1;
   11E6 D2 18               828 	setb	b0
                            829 ;	../fb_taster.c:245: if((status60 & 0x01)==0){	//wenn ausgemacht Dimmwert speichern
   11E8 E5 72               830 	mov	a,_status60
   11EA 20 E0 13            831 	jb	acc.0,00170$
                            832 ;	../fb_taster.c:246: EA=0;
   11ED C2 AF               833 	clr	_IEN0_7
                            834 ;	../fb_taster.c:247: START_WRITECYCLE;
   11EF 75 E4 00            835 	mov	_FMCON,#0x00
                            836 ;	../fb_taster.c:248: FMADRH= 0x1C;		
   11F2 75 E7 1C            837 	mov	_FMADRH,#0x1C
                            838 ;	../fb_taster.c:249: FMADRL= 0xBE; 
   11F5 75 E6 BE            839 	mov	_FMADRL,#0xBE
                            840 ;	../fb_taster.c:250: FMDATA=	dimmwert; 
   11F8 85 2B E5            841 	mov	_FMDATA,_dimmwert
                            842 ;	../fb_taster.c:251: STOP_WRITECYCLE;
   11FB 75 E4 68            843 	mov	_FMCON,#0x68
                            844 ;	../fb_taster.c:252: EA=1;
   11FE D2 AF               845 	setb	_IEN0_7
   1200                     846 00170$:
                            847 ;	../fb_taster.c:258: if ((PORT & 0x0F)== 0x0F){ ;	// Warten bis alle Taster losgelassen
   1200 74 0F               848 	mov	a,#0x0F
   1202 55 80               849 	anl	a,_P0
   1204 FD                  850 	mov	r5,a
   1205 BD 0F 08            851 	cjne	r5,#0x0F,00176$
                            852 ;	../fb_taster.c:259: if(tasterpegel>0) tasterpegel--;
   1208 EF                  853 	mov	a,r7
   1209 60 03               854 	jz	00173$
   120B 1F                  855 	dec	r7
   120C 80 02               856 	sjmp	00176$
   120E                     857 00173$:
                            858 ;	../fb_taster.c:260: else tastergetoggelt=0;
   120E C2 18               859 	clr	b0
   1210                     860 00176$:
                            861 ;	../fb_taster.c:265: if (status60 & 0x01) TASTER = blink;		// LED blinkt im Prog-Mode
   1210 E5 72               862 	mov	a,_status60
   1212 30 E0 07            863 	jnb	acc.0,00178$
   1215 A2 1A               864 	mov	c,b2
   1217 92 97               865 	mov	_P1_7,c
   1219 02 10 AB            866 	ljmp	00180$
   121C                     867 00178$:
                            868 ;	../fb_taster.c:266: else TASTER = !((eeprom[0xCD] & 0x10) >> 4);	// LED ist an oder aus gemaess Parameter fuer Betriebs-LED
   121C 90 1D CD            869 	mov	dptr,#(_eeprom + 0x00cd)
   121F E4                  870 	clr	a
   1220 93                  871 	movc	a,@a+dptr
   1221 54 10               872 	anl	a,#0x10
   1223 C4                  873 	swap	a
   1224 54 0F               874 	anl	a,#0x0F
   1226 FD                  875 	mov	r5,a
   1227 B4 01 00            876 	cjne	a,#0x01,00345$
   122A                     877 00345$:
   122A E4                  878 	clr	a
   122B 33                  879 	rlc	a
   122C FD                  880 	mov	r5,a
   122D 24 FF               881 	add	a,#0xff
   122F 92 97               882 	mov	_P1_7,c
                            883 ;	../fb_taster.c:273: }  while(1);
   1231 02 10 AB            884 	ljmp	00180$
                            885 	.area CSEG    (CODE)
                            886 	.area CONST   (CODE)
                    1CBF    887 _main_trimsave_1_33	=	0x1cbf
                    1CBE    888 _main_LED_hell_1_33	=	0x1cbe
                            889 	.area XINIT   (CODE)
                            890 	.area CABS    (ABS,CODE)
