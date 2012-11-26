                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Tue Nov 20 22:56:04 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_out
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _watchdog_start
                             14 	.globl _watchdog_feed
                             15 	.globl _watchdog_init
                             16 	.globl _restart_app
                             17 	.globl _bus_return
                             18 	.globl _port_schalten
                             19 	.globl _delay_timer
                             20 	.globl _process_tel
                             21 	.globl _restart_hw
                             22 	.globl _send_obj_value
                             23 	.globl _P3_1
                             24 	.globl _P3_0
                             25 	.globl _P1_7
                             26 	.globl _P1_6
                             27 	.globl _P1_5
                             28 	.globl _P1_4
                             29 	.globl _P1_3
                             30 	.globl _P1_2
                             31 	.globl _P1_1
                             32 	.globl _P1_0
                             33 	.globl _P0_7
                             34 	.globl _P0_6
                             35 	.globl _P0_5
                             36 	.globl _P0_4
                             37 	.globl _P0_3
                             38 	.globl _P0_2
                             39 	.globl _P0_1
                             40 	.globl _P0_0
                             41 	.globl _I2CON_0
                             42 	.globl _I2CON_2
                             43 	.globl _I2CON_3
                             44 	.globl _I2CON_4
                             45 	.globl _I2CON_5
                             46 	.globl _I2CON_6
                             47 	.globl _SCON_7
                             48 	.globl _SCON_6
                             49 	.globl _SCON_5
                             50 	.globl _SCON_4
                             51 	.globl _SCON_3
                             52 	.globl _SCON_2
                             53 	.globl _SCON_1
                             54 	.globl _SCON_0
                             55 	.globl _IP0_0
                             56 	.globl _IP0_1
                             57 	.globl _IP0_2
                             58 	.globl _IP0_3
                             59 	.globl _IP0_4
                             60 	.globl _IP0_5
                             61 	.globl _IP0_6
                             62 	.globl _IP1_0
                             63 	.globl _IP1_1
                             64 	.globl _IP1_2
                             65 	.globl _IP1_6
                             66 	.globl _IEN1_0
                             67 	.globl _IEN1_1
                             68 	.globl _IEN1_2
                             69 	.globl _IEN0_0
                             70 	.globl _IEN0_1
                             71 	.globl _IEN0_2
                             72 	.globl _IEN0_3
                             73 	.globl _IEN0_4
                             74 	.globl _IEN0_5
                             75 	.globl _IEN0_6
                             76 	.globl _IEN0_7
                             77 	.globl _TCON_0
                             78 	.globl _TCON_1
                             79 	.globl _TCON_2
                             80 	.globl _TCON_3
                             81 	.globl _TCON_4
                             82 	.globl _TCON_5
                             83 	.globl _TCON_6
                             84 	.globl _TCON_7
                             85 	.globl _PSW_7
                             86 	.globl _PSW_6
                             87 	.globl _PSW_5
                             88 	.globl _PSW_4
                             89 	.globl _PSW_3
                             90 	.globl _PSW_2
                             91 	.globl _PSW_1
                             92 	.globl _PSW_0
                             93 	.globl _IEN1
                             94 	.globl _IP0H
                             95 	.globl _WFEED2
                             96 	.globl _WFEED1
                             97 	.globl _WDL
                             98 	.globl _WDCON
                             99 	.globl _TRIM
                            100 	.globl _TAMOD
                            101 	.globl _SSTAT
                            102 	.globl _RTCL
                            103 	.globl _RTCH
                            104 	.globl _RTCCON
                            105 	.globl _RSTSRC
                            106 	.globl _PT0AD
                            107 	.globl _PCONA
                            108 	.globl _P3M2
                            109 	.globl _P3M1
                            110 	.globl _P1M2
                            111 	.globl _P1M1
                            112 	.globl _P0M2
                            113 	.globl _P0M1
                            114 	.globl _KBPATN
                            115 	.globl _KBMASK
                            116 	.globl _KBCON
                            117 	.globl _IP1H
                            118 	.globl _IP1
                            119 	.globl _I2STAT
                            120 	.globl _I2SCLL
                            121 	.globl _I2SCLH
                            122 	.globl _I2DAT
                            123 	.globl _I2CON
                            124 	.globl _I2ADR
                            125 	.globl _FMDATA
                            126 	.globl _FMCON
                            127 	.globl _FMADRL
                            128 	.globl _FMADRH
                            129 	.globl _DIVM
                            130 	.globl _CMP2
                            131 	.globl _CMP1
                            132 	.globl _BRGCON
                            133 	.globl _BRGR1
                            134 	.globl _BRGR0
                            135 	.globl _SADEN
                            136 	.globl _SADDR
                            137 	.globl _AUXR1
                            138 	.globl _SBUF
                            139 	.globl _SCON
                            140 	.globl _IP0
                            141 	.globl _IEN0
                            142 	.globl _TH1
                            143 	.globl _TH0
                            144 	.globl _TL1
                            145 	.globl _TL0
                            146 	.globl _TMOD
                            147 	.globl _TCON
                            148 	.globl _PCON
                            149 	.globl _DPH
                            150 	.globl _DPL
                            151 	.globl _SP
                            152 	.globl _B
                            153 	.globl _ACC
                            154 	.globl _PSW
                            155 	.globl _P3
                            156 	.globl _P1
                            157 	.globl _P0
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
                            326 ;--------------------------------------------------------
                            327 ; overlayable items in internal ram 
                            328 ;--------------------------------------------------------
                            329 	.area OSEG    (OVR,DATA)
                            330 ;--------------------------------------------------------
                            331 ; Stack segment in internal ram 
                            332 ;--------------------------------------------------------
                            333 	.area	SSEG	(DATA)
   006E                     334 __start__stack:
   006E                     335 	.ds	1
                            336 
                            337 ;--------------------------------------------------------
                            338 ; indirectly addressable internal ram data
                            339 ;--------------------------------------------------------
                            340 	.area ISEG    (DATA)
                            341 ;--------------------------------------------------------
                            342 ; absolute internal ram data
                            343 ;--------------------------------------------------------
                            344 	.area IABS    (ABS,DATA)
                            345 	.area IABS    (ABS,DATA)
                            346 ;--------------------------------------------------------
                            347 ; bit data
                            348 ;--------------------------------------------------------
                            349 	.area BSEG    (BIT)
                            350 ;--------------------------------------------------------
                            351 ; paged external ram data
                            352 ;--------------------------------------------------------
                            353 	.area PSEG    (PAG,XDATA)
                            354 ;--------------------------------------------------------
                            355 ; external ram data
                            356 ;--------------------------------------------------------
                            357 	.area XSEG    (XDATA)
                            358 ;--------------------------------------------------------
                            359 ; absolute external ram data
                            360 ;--------------------------------------------------------
                            361 	.area XABS    (ABS,XDATA)
                            362 ;--------------------------------------------------------
                            363 ; external initialized ram data
                            364 ;--------------------------------------------------------
                            365 	.area XISEG   (XDATA)
                            366 	.area HOME    (CODE)
                            367 	.area GSINIT0 (CODE)
                            368 	.area GSINIT1 (CODE)
                            369 	.area GSINIT2 (CODE)
                            370 	.area GSINIT3 (CODE)
                            371 	.area GSINIT4 (CODE)
                            372 	.area GSINIT5 (CODE)
                            373 	.area GSINIT  (CODE)
                            374 	.area GSFINAL (CODE)
                            375 	.area CSEG    (CODE)
                            376 ;--------------------------------------------------------
                            377 ; interrupt vector 
                            378 ;--------------------------------------------------------
                            379 	.area HOME    (CODE)
   0000                     380 __interrupt_vect:
   0000 02 00 23            381 	ljmp	__sdcc_gsinit_startup
   0003 32                  382 	reti
   0004                     383 	.ds	7
   000B 32                  384 	reti
   000C                     385 	.ds	7
   0013 02 0E EC            386 	ljmp	_X1_int
   0016                     387 	.ds	5
   001B 02 0F 1C            388 	ljmp	_T1_int
                            389 ;--------------------------------------------------------
                            390 ; global & static initialisations
                            391 ;--------------------------------------------------------
                            392 	.area HOME    (CODE)
                            393 	.area GSINIT  (CODE)
                            394 	.area GSFINAL (CODE)
                            395 	.area GSINIT  (CODE)
                            396 	.globl __sdcc_gsinit_startup
                            397 	.globl __sdcc_program_startup
                            398 	.globl __start__stack
                            399 	.globl __mcs51_genXINIT
                            400 	.globl __mcs51_genXRAMCLEAR
                            401 	.globl __mcs51_genRAMCLEAR
                            402 	.area GSFINAL (CODE)
   007C 02 00 1E            403 	ljmp	__sdcc_program_startup
                            404 ;--------------------------------------------------------
                            405 ; Home
                            406 ;--------------------------------------------------------
                            407 	.area HOME    (CODE)
                            408 	.area HOME    (CODE)
   001E                     409 __sdcc_program_startup:
   001E 12 0C 18            410 	lcall	_main
                            411 ;	return from main will lock up
   0021 80 FE               412 	sjmp .
                            413 ;--------------------------------------------------------
                            414 ; code
                            415 ;--------------------------------------------------------
                            416 	.area CSEG    (CODE)
                            417 ;------------------------------------------------------------
                            418 ;Allocation info for local variables in function 'main'
                            419 ;------------------------------------------------------------
                            420 ;n                         Allocated to registers r4 
                            421 ;cmd                       Allocated to registers r4 
                            422 ;tasterpegel               Allocated to registers r7 
                            423 ;cal                       Allocated to registers r5 
                            424 ;rm_count                  Allocated to registers r6 
                            425 ;wduf                      Allocated to registers b1 
                            426 ;tastergetoggelt           Allocated to registers b0 
                            427 ;------------------------------------------------------------
                            428 ;	../fb_out.c:123: void main(void)
                            429 ;	-----------------------------------------
                            430 ;	 function main
                            431 ;	-----------------------------------------
   0C18                     432 _main:
                    0007    433 	ar7 = 0x07
                    0006    434 	ar6 = 0x06
                    0005    435 	ar5 = 0x05
                    0004    436 	ar4 = 0x04
                    0003    437 	ar3 = 0x03
                    0002    438 	ar2 = 0x02
                    0001    439 	ar1 = 0x01
                    0000    440 	ar0 = 0x00
                            441 ;	../fb_out.c:125: unsigned char n,cmd,tasterpegel=0;
   0C18 7F 00               442 	mov	r7,#0x00
                            443 ;	../fb_out.c:131: unsigned char rm_count=0;
   0C1A 7E 00               444 	mov	r6,#0x00
                            445 ;	../fb_out.c:132: __bit wduf,tastergetoggelt=0;
   0C1C C2 18               446 	clr	b0
                            447 ;	../fb_out.c:133: wduf=WDCON&0x02;
   0C1E E5 A7               448 	mov	a,_WDCON
   0C20 03                  449 	rr	a
   0C21 54 01               450 	anl	a,#0x01
   0C23 24 FF               451 	add	a,#0xff
   0C25 92 19               452 	mov	b1,c
                            453 ;	../fb_out.c:134: restart_hw();							// Hardware zuruecksetzen
   0C27 C0 07               454 	push	ar7
   0C29 C0 06               455 	push	ar6
   0C2B C0 23               456 	push	bits
   0C2D 12 18 29            457 	lcall	_restart_hw
   0C30 D0 23               458 	pop	bits
   0C32 D0 06               459 	pop	ar6
   0C34 D0 07               460 	pop	ar7
                            461 ;	../fb_out.c:137: TASTER=1;
   0C36 D2 97               462 	setb	_P1_7
                            463 ;	../fb_out.c:138: if(!TASTER && wduf)cal=0;
   0C38 20 97 07            464 	jb	_P1_7,00102$
   0C3B 30 19 04            465 	jnb	b1,00102$
   0C3E 7D 00               466 	mov	r5,#0x00
   0C40 80 07               467 	sjmp	00103$
   0C42                     468 00102$:
                            469 ;	../fb_out.c:139: else cal=trimsave;
   0C42 90 1B FF            470 	mov	dptr,#_main_trimsave_1_1
   0C45 E4                  471 	clr	a
   0C46 93                  472 	movc	a,@a+dptr
   0C47 FC                  473 	mov	r4,a
   0C48 FD                  474 	mov	r5,a
   0C49                     475 00103$:
                            476 ;	../fb_out.c:140: TRIM = (TRIM+trimsave);
   0C49 90 1B FF            477 	mov	dptr,#_main_trimsave_1_1
   0C4C E4                  478 	clr	a
   0C4D 93                  479 	movc	a,@a+dptr
   0C4E AB 96               480 	mov	r3,_TRIM
   0C50 2B                  481 	add	a,r3
   0C51 FC                  482 	mov	r4,a
   0C52 8C 96               483 	mov	_TRIM,r4
                            484 ;	../fb_out.c:141: TRIM &= 0x3F;//oberen 2 bits ausblenden
   0C54 53 96 3F            485 	anl	_TRIM,#0x3F
                            486 ;	../fb_out.c:146: if (!wduf){// BUS return verzögerung nur wenn nicht watchdog underflow
   0C57 20 19 21            487 	jb	b1,00109$
                            488 ;	../fb_out.c:147: for (n=0;n<50;n++) {		// Warten bis Bus stabil
   0C5A 7C 00               489 	mov	r4,#0x00
   0C5C                     490 00182$:
   0C5C BC 32 00            491 	cjne	r4,#0x32,00238$
   0C5F                     492 00238$:
   0C5F 50 1A               493 	jnc	00109$
                            494 ;	../fb_out.c:148: TR0=0;					// Timer 0 anhalten
   0C61 C2 8C               495 	clr	_TCON_4
                            496 ;	../fb_out.c:149: TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
   0C63 90 1D 17            497 	mov	dptr,#(_eeprom + 0x0017)
   0C66 E4                  498 	clr	a
   0C67 93                  499 	movc	a,@a+dptr
   0C68 F5 8C               500 	mov	_TH0,a
                            501 ;	../fb_out.c:150: TL0=eeprom[ADDRTAB+2];
   0C6A 90 1D 18            502 	mov	dptr,#(_eeprom + 0x0018)
   0C6D E4                  503 	clr	a
   0C6E 93                  504 	movc	a,@a+dptr
   0C6F F5 8A               505 	mov	_TL0,a
                            506 ;	../fb_out.c:151: TF0=0;					// Überlauf-Flag zurücksetzen
   0C71 C2 8D               507 	clr	_TCON_5
                            508 ;	../fb_out.c:152: TR0=1;					// Timer 0 starten
   0C73 D2 8C               509 	setb	_TCON_4
                            510 ;	../fb_out.c:153: while(!TF0);
   0C75                     511 00105$:
   0C75 30 8D FD            512 	jnb	_TCON_5,00105$
                            513 ;	../fb_out.c:147: for (n=0;n<50;n++) {		// Warten bis Bus stabil
   0C78 0C                  514 	inc	r4
   0C79 80 E1               515 	sjmp	00182$
   0C7B                     516 00109$:
                            517 ;	../fb_out.c:156: watchdog_init();
   0C7B C0 07               518 	push	ar7
   0C7D C0 06               519 	push	ar6
   0C7F C0 05               520 	push	ar5
   0C81 C0 23               521 	push	bits
   0C83 12 0E A4            522 	lcall	_watchdog_init
   0C86 D0 23               523 	pop	bits
                            524 ;	../fb_out.c:157: watchdog_start();
   0C88 C0 23               525 	push	bits
   0C8A 12 0E C0            526 	lcall	_watchdog_start
   0C8D D0 23               527 	pop	bits
                            528 ;	../fb_out.c:158: restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
   0C8F C0 23               529 	push	bits
   0C91 12 0B A8            530 	lcall	_restart_app
   0C94 D0 23               531 	pop	bits
   0C96 D0 05               532 	pop	ar5
   0C98 D0 06               533 	pop	ar6
   0C9A D0 07               534 	pop	ar7
                            535 ;	../fb_out.c:159: if(!wduf)bus_return();							// Aktionen bei Busspannungswiederkehr
   0C9C 20 19 13            536 	jb	b1,00111$
   0C9F C0 07               537 	push	ar7
   0CA1 C0 06               538 	push	ar6
   0CA3 C0 05               539 	push	ar5
   0CA5 C0 23               540 	push	bits
   0CA7 12 0A E1            541 	lcall	_bus_return
   0CAA D0 23               542 	pop	bits
   0CAC D0 05               543 	pop	ar5
   0CAE D0 06               544 	pop	ar6
   0CB0 D0 07               545 	pop	ar7
   0CB2                     546 00111$:
                            547 ;	../fb_out.c:161: BRGCON&=0xFE;	// Baudrate Generator stoppen
   0CB2 53 BD FE            548 	anl	_BRGCON,#0xFE
                            549 ;	../fb_out.c:162: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   0CB5 53 91 FC            550 	anl	_P1M1,#0xFC
                            551 ;	../fb_out.c:163: P1M2&=0xFC;
   0CB8 53 92 FC            552 	anl	_P1M2,#0xFC
                            553 ;	../fb_out.c:164: SCON=0x50;		// Mode 1, receive enable
   0CBB 75 98 50            554 	mov	_SCON,#0x50
                            555 ;	../fb_out.c:165: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   0CBE 43 BA E0            556 	orl	_SSTAT,#0xE0
                            557 ;	../fb_out.c:166: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   0CC1 43 BD 02            558 	orl	_BRGCON,#0x02
                            559 ;	../fb_out.c:167: BRGR1=0x2F;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
   0CC4 75 BF 2F            560 	mov	_BRGR1,#0x2F
                            561 ;	../fb_out.c:168: BRGR0=0xF0;	// für 115200 0030 nehmen, autocal: 600bd= 0x2FF0
   0CC7 75 BE F0            562 	mov	_BRGR0,#0xF0
                            563 ;	../fb_out.c:169: BRGCON|=0x01;	// Baudrate Generator starten
   0CCA 43 BD 01            564 	orl	_BRGCON,#0x01
                            565 ;	../fb_out.c:170: SBUF=0x55;
   0CCD 75 99 55            566 	mov	_SBUF,#0x55
                            567 ;	../fb_out.c:171: do  {
   0CD0                     568 00179$:
                            569 ;	../fb_out.c:172: watchdog_feed();
   0CD0 C0 07               570 	push	ar7
   0CD2 C0 06               571 	push	ar6
   0CD4 C0 05               572 	push	ar5
   0CD6 C0 23               573 	push	bits
   0CD8 12 0E B5            574 	lcall	_watchdog_feed
   0CDB D0 23               575 	pop	bits
   0CDD D0 05               576 	pop	ar5
   0CDF D0 06               577 	pop	ar6
   0CE1 D0 07               578 	pop	ar7
                            579 ;	../fb_out.c:174: if(APPLICATION_RUN) {	// nur wenn run-mode gesetzt
   0CE3 90 1D 0D            580 	mov	dptr,#(_eeprom + 0x000d)
   0CE6 E4                  581 	clr	a
   0CE7 93                  582 	movc	a,@a+dptr
   0CE8 FC                  583 	mov	r4,a
   0CE9 BC FF 02            584 	cjne	r4,#0xFF,00242$
   0CEC 80 03               585 	sjmp	00243$
   0CEE                     586 00242$:
   0CEE 02 0D CC            587 	ljmp	00133$
   0CF1                     588 00243$:
   0CF1 30 10 03            589 	jnb	_connected,00244$
   0CF4 02 0D CC            590 	ljmp	00133$
   0CF7                     591 00244$:
   0CF7 E5 6D               592 	mov	a,_status60
   0CF9 30 E0 03            593 	jnb	acc.0,00245$
   0CFC 02 0D CC            594 	ljmp	00133$
   0CFF                     595 00245$:
                            596 ;	../fb_out.c:176: if(RTCCON>=0x80) delay_timer();	// Realtime clock Ueberlauf
   0CFF 74 80               597 	mov	a,#0x100 - 0x80
   0D01 25 D1               598 	add	a,_RTCCON
   0D03 50 13               599 	jnc	00113$
   0D05 C0 07               600 	push	ar7
   0D07 C0 06               601 	push	ar6
   0D09 C0 05               602 	push	ar5
   0D0B C0 23               603 	push	bits
   0D0D 12 08 B5            604 	lcall	_delay_timer
   0D10 D0 23               605 	pop	bits
   0D12 D0 05               606 	pop	ar5
   0D14 D0 06               607 	pop	ar6
   0D16 D0 07               608 	pop	ar7
   0D18                     609 00113$:
                            610 ;	../fb_out.c:178: if(TF0 && (TMOD & 0x0F)==0x01) {	// Vollstrom für Relais ausschalten und wieder PWM ein
   0D18 30 8D 0F            611 	jnb	_TCON_5,00115$
   0D1B 74 0F               612 	mov	a,#0x0F
   0D1D 55 89               613 	anl	a,_TMOD
   0D1F FC                  614 	mov	r4,a
   0D20 BC 01 07            615 	cjne	r4,#0x01,00115$
                            616 ;	../fb_out.c:184: TF0=0;
   0D23 C2 8D               617 	clr	_TCON_5
                            618 ;	../fb_out.c:188: PWM=1;			// PWM Pin muss auf 1 gesetzt werden, damit PWM geht !!!
   0D25 D2 92               619 	setb	_P1_2
                            620 ;	../fb_out.c:192: P0=portbuffer;
   0D27 85 3A 80            621 	mov	_P0,_portbuffer
   0D2A                     622 00115$:
                            623 ;	../fb_out.c:197: if (portchanged)port_schalten();	// Ausgänge schalten
   0D2A 30 01 13            624 	jnb	_portchanged,00118$
   0D2D C0 07               625 	push	ar7
   0D2F C0 06               626 	push	ar6
   0D31 C0 05               627 	push	ar5
   0D33 C0 23               628 	push	bits
   0D35 12 09 F8            629 	lcall	_port_schalten
   0D38 D0 23               630 	pop	bits
   0D3A D0 05               631 	pop	ar5
   0D3C D0 06               632 	pop	ar6
   0D3E D0 07               633 	pop	ar7
   0D40                     634 00118$:
                            635 ;	../fb_out.c:200: if(rm_send) {	// wenn nichts zu senden ist keine Zeit vertrödeln
   0D40 E5 3E               636 	mov	a,_rm_send
   0D42 60 5F               637 	jz	00125$
                            638 ;	../fb_out.c:201: if(rm_send & (1<<rm_count)) {
   0D44 C0 05               639 	push	ar5
   0D46 8E F0               640 	mov	b,r6
   0D48 05 F0               641 	inc	b
   0D4A 7B 01               642 	mov	r3,#0x01
   0D4C 7C 00               643 	mov	r4,#0x00
   0D4E 80 06               644 	sjmp	00253$
   0D50                     645 00252$:
   0D50 EB                  646 	mov	a,r3
   0D51 2B                  647 	add	a,r3
   0D52 FB                  648 	mov	r3,a
   0D53 EC                  649 	mov	a,r4
   0D54 33                  650 	rlc	a
   0D55 FC                  651 	mov	r4,a
   0D56                     652 00253$:
   0D56 D5 F0 F7            653 	djnz	b,00252$
   0D59 AA 3E               654 	mov	r2,_rm_send
   0D5B 7D 00               655 	mov	r5,#0x00
   0D5D EA                  656 	mov	a,r2
   0D5E 52 03               657 	anl	ar3,a
   0D60 ED                  658 	mov	a,r5
   0D61 52 04               659 	anl	ar4,a
   0D63 D0 05               660 	pop	ar5
   0D65 EB                  661 	mov	a,r3
   0D66 4C                  662 	orl	a,r4
   0D67 60 34               663 	jz	00122$
                            664 ;	../fb_out.c:202: if(send_obj_value(rm_count + 12)) {	// falls erfolgreich, dann nächste
   0D69 74 0C               665 	mov	a,#0x0C
   0D6B 2E                  666 	add	a,r6
   0D6C F5 82               667 	mov	dpl,a
   0D6E C0 07               668 	push	ar7
   0D70 C0 06               669 	push	ar6
   0D72 C0 05               670 	push	ar5
   0D74 C0 23               671 	push	bits
   0D76 12 15 29            672 	lcall	_send_obj_value
   0D79 D0 23               673 	pop	bits
   0D7B D0 05               674 	pop	ar5
   0D7D D0 06               675 	pop	ar6
   0D7F D0 07               676 	pop	ar7
   0D81 50 22               677 	jnc	00126$
                            678 ;	../fb_out.c:203: rm_send&=(0xFF-(1<<rm_count));
   0D83 8E F0               679 	mov	b,r6
   0D85 05 F0               680 	inc	b
   0D87 74 01               681 	mov	a,#0x01
   0D89 80 02               682 	sjmp	00258$
   0D8B                     683 00256$:
   0D8B 25 E0               684 	add	a,acc
   0D8D                     685 00258$:
   0D8D D5 F0 FB            686 	djnz	b,00256$
   0D90 FC                  687 	mov	r4,a
   0D91 74 FF               688 	mov	a,#0xFF
   0D93 C3                  689 	clr	c
   0D94 9C                  690 	subb	a,r4
   0D95 52 3E               691 	anl	_rm_send,a
                            692 ;	../fb_out.c:204: rm_count++;
   0D97 0E                  693 	inc	r6
                            694 ;	../fb_out.c:206: rm_count&=0x07;
   0D98 53 06 07            695 	anl	ar6,#0x07
   0D9B 80 08               696 	sjmp	00126$
   0D9D                     697 00122$:
                            698 ;	../fb_out.c:213: rm_count++;
   0D9D 0E                  699 	inc	r6
                            700 ;	../fb_out.c:215: rm_count&=0x07;
   0D9E 53 06 07            701 	anl	ar6,#0x07
   0DA1 80 02               702 	sjmp	00126$
   0DA3                     703 00125$:
                            704 ;	../fb_out.c:221: else rm_count=0;	// Immer mal wieder auf Null setzen, damit Reihenfolge von 1 bis 8 geht
   0DA3 7E 00               705 	mov	r6,#0x00
   0DA5                     706 00126$:
                            707 ;	../fb_out.c:227: if (fb_state==0 && (TH1<0XC0) && (!wait_for_ack)&& portbuffer!=eeprom[PORTSAVE]) {
   0DA5 E5 69               708 	mov	a,_fb_state
   0DA7 70 23               709 	jnz	00133$
   0DA9 74 40               710 	mov	a,#0x100 - 0xC0
   0DAB 25 8D               711 	add	a,_TH1
   0DAD 40 1D               712 	jc	00133$
   0DAF 20 0C 1A            713 	jb	_wait_for_ack,00133$
   0DB2 90 1D 99            714 	mov	dptr,#(_eeprom + 0x0099)
   0DB5 E4                  715 	clr	a
   0DB6 93                  716 	movc	a,@a+dptr
   0DB7 FC                  717 	mov	r4,a
   0DB8 B5 3A 02            718 	cjne	a,_portbuffer,00262$
   0DBB 80 0F               719 	sjmp	00133$
   0DBD                     720 00262$:
                            721 ;	../fb_out.c:228: START_WRITECYCLE;
   0DBD 75 E4 00            722 	mov	_FMCON,#0x00
                            723 ;	../fb_out.c:229: WRITE_BYTE(0x01,PORTSAVE,portbuffer);
   0DC0 75 E7 1D            724 	mov	_FMADRH,#0x1D
   0DC3 75 E6 99            725 	mov	_FMADRL,#0x99
   0DC6 85 3A E5            726 	mov	_FMDATA,_portbuffer
                            727 ;	../fb_out.c:230: STOP_WRITECYCLE;
   0DC9 75 E4 68            728 	mov	_FMCON,#0x68
   0DCC                     729 00133$:
                            730 ;	../fb_out.c:236: if (tel_arrived || tel_sent) {
   0DCC 20 08 03            731 	jb	_tel_arrived,00136$
   0DCF 30 09 19            732 	jnb	_tel_sent,00137$
   0DD2                     733 00136$:
                            734 ;	../fb_out.c:237: tel_arrived=0;
   0DD2 C2 08               735 	clr	_tel_arrived
                            736 ;	../fb_out.c:238: tel_sent=0;
   0DD4 C2 09               737 	clr	_tel_sent
                            738 ;	../fb_out.c:239: process_tel();
   0DD6 C0 07               739 	push	ar7
   0DD8 C0 06               740 	push	ar6
   0DDA C0 05               741 	push	ar5
   0DDC C0 23               742 	push	bits
   0DDE 12 15 5C            743 	lcall	_process_tel
   0DE1 D0 23               744 	pop	bits
   0DE3 D0 05               745 	pop	ar5
   0DE5 D0 06               746 	pop	ar6
   0DE7 D0 07               747 	pop	ar7
   0DE9 80 0A               748 	sjmp	00138$
   0DEB                     749 00137$:
                            750 ;	../fb_out.c:242: for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
   0DEB 7C 64               751 	mov	r4,#0x64
   0DED                     752 00188$:
   0DED 8C 03               753 	mov	ar3,r4
   0DEF 1B                  754 	dec	r3
   0DF0 8B 04               755 	mov	ar4,r3
   0DF2 EC                  756 	mov	a,r4
   0DF3 70 F8               757 	jnz	00188$
   0DF5                     758 00138$:
                            759 ;	../fb_out.c:247: if (RI){
                            760 ;	../fb_out.c:248: RI=0;
   0DF5 10 98 02            761 	jbc	_SCON_0,00266$
   0DF8 80 79               762 	sjmp	00167$
   0DFA                     763 00266$:
                            764 ;	../fb_out.c:249: cmd=SBUF;
   0DFA AC 99               765 	mov	r4,_SBUF
                            766 ;	../fb_out.c:250: if(cmd=='c'){
   0DFC BC 63 08            767 	cjne	r4,#0x63,00144$
                            768 ;	../fb_out.c:251: while(!TI);
   0DFF                     769 00140$:
                            770 ;	../fb_out.c:252: TI=0;
   0DFF 10 99 02            771 	jbc	_SCON_1,00269$
   0E02 80 FB               772 	sjmp	00140$
   0E04                     773 00269$:
                            774 ;	../fb_out.c:253: SBUF=0x55;
   0E04 75 99 55            775 	mov	_SBUF,#0x55
   0E07                     776 00144$:
                            777 ;	../fb_out.c:255: if(cmd=='+'){
   0E07 BC 2B 03            778 	cjne	r4,#0x2B,00146$
                            779 ;	../fb_out.c:256: TRIM--;
   0E0A 15 96               780 	dec	_TRIM
                            781 ;	../fb_out.c:257: cal--;
   0E0C 1D                  782 	dec	r5
   0E0D                     783 00146$:
                            784 ;	../fb_out.c:259: if(cmd=='-'){
   0E0D BC 2D 03            785 	cjne	r4,#0x2D,00148$
                            786 ;	../fb_out.c:260: TRIM++;
   0E10 05 96               787 	inc	_TRIM
                            788 ;	../fb_out.c:261: cal++;
   0E12 0D                  789 	inc	r5
   0E13                     790 00148$:
                            791 ;	../fb_out.c:263: if(cmd=='w'){
   0E13 BC 77 12            792 	cjne	r4,#0x77,00150$
                            793 ;	../fb_out.c:264: EA=0;
   0E16 C2 AF               794 	clr	_IEN0_7
                            795 ;	../fb_out.c:265: START_WRITECYCLE;	//cal an 0x1bff schreiben
   0E18 75 E4 00            796 	mov	_FMCON,#0x00
                            797 ;	../fb_out.c:271: FMADRH= 0x1B;		
   0E1B 75 E7 1B            798 	mov	_FMADRH,#0x1B
                            799 ;	../fb_out.c:272: FMADRL= 0xFF; 
   0E1E 75 E6 FF            800 	mov	_FMADRL,#0xFF
                            801 ;	../fb_out.c:274: FMDATA=	cal;
   0E21 8D E5               802 	mov	_FMDATA,r5
                            803 ;	../fb_out.c:275: STOP_WRITECYCLE;
   0E23 75 E4 68            804 	mov	_FMCON,#0x68
                            805 ;	../fb_out.c:276: EA=1;				//int wieder freigeben
   0E26 D2 AF               806 	setb	_IEN0_7
   0E28                     807 00150$:
                            808 ;	../fb_out.c:278: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   0E28 BC 70 03            809 	cjne	r4,#0x70,00152$
   0E2B 63 6D 81            810 	xrl	_status60,#0x81
   0E2E                     811 00152$:
                            812 ;	../fb_out.c:295: if(cmd=='v'){
   0E2E BC 76 08            813 	cjne	r4,#0x76,00157$
                            814 ;	../fb_out.c:296: while(!TI);
   0E31                     815 00153$:
                            816 ;	../fb_out.c:297: TI=0;
   0E31 10 99 02            817 	jbc	_SCON_1,00280$
   0E34 80 FB               818 	sjmp	00153$
   0E36                     819 00280$:
                            820 ;	../fb_out.c:298: SBUF=VERSION;
   0E36 75 99 23            821 	mov	_SBUF,#0x23
   0E39                     822 00157$:
                            823 ;	../fb_out.c:300: if(cmd=='t'){
   0E39 BC 74 08            824 	cjne	r4,#0x74,00162$
                            825 ;	../fb_out.c:301: while(!TI);
   0E3C                     826 00158$:
                            827 ;	../fb_out.c:302: TI=0;
   0E3C 10 99 02            828 	jbc	_SCON_1,00283$
   0E3F 80 FB               829 	sjmp	00158$
   0E41                     830 00283$:
                            831 ;	../fb_out.c:303: SBUF=TYPE;
   0E41 75 99 02            832 	mov	_SBUF,#0x02
   0E44                     833 00162$:
                            834 ;	../fb_out.c:306: if(cmd >=49 && cmd <= 56){
   0E44 BC 31 00            835 	cjne	r4,#0x31,00284$
   0E47                     836 00284$:
   0E47 40 2A               837 	jc	00167$
   0E49 EC                  838 	mov	a,r4
   0E4A 24 C7               839 	add	a,#0xff - 0x38
   0E4C 40 25               840 	jc	00167$
                            841 ;	../fb_out.c:307: portbuffer = portbuffer ^ (0x01<< (cmd-49));
   0E4E EC                  842 	mov	a,r4
   0E4F 24 CF               843 	add	a,#0xCF
   0E51 F5 F0               844 	mov	b,a
   0E53 05 F0               845 	inc	b
   0E55 74 01               846 	mov	a,#0x01
   0E57 80 02               847 	sjmp	00289$
   0E59                     848 00287$:
   0E59 25 E0               849 	add	a,acc
   0E5B                     850 00289$:
   0E5B D5 F0 FB            851 	djnz	b,00287$
   0E5E 62 3A               852 	xrl	_portbuffer,a
                            853 ;	../fb_out.c:308: port_schalten();
   0E60 C0 07               854 	push	ar7
   0E62 C0 06               855 	push	ar6
   0E64 C0 05               856 	push	ar5
   0E66 C0 23               857 	push	bits
   0E68 12 09 F8            858 	lcall	_port_schalten
   0E6B D0 23               859 	pop	bits
   0E6D D0 05               860 	pop	ar5
   0E6F D0 06               861 	pop	ar6
   0E71 D0 07               862 	pop	ar7
   0E73                     863 00167$:
                            864 ;	../fb_out.c:319: TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
   0E73 D2 97               865 	setb	_P1_7
                            866 ;	../fb_out.c:320: if(!TASTER){ // Taster gedrückt
   0E75 20 97 12            867 	jb	_P1_7,00177$
                            868 ;	../fb_out.c:321: if(tasterpegel<255)	tasterpegel++;
   0E78 BF FF 00            869 	cjne	r7,#0xFF,00291$
   0E7B                     870 00291$:
   0E7B 50 03               871 	jnc	00171$
   0E7D 0F                  872 	inc	r7
   0E7E 80 12               873 	sjmp	00178$
   0E80                     874 00171$:
                            875 ;	../fb_out.c:323: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   0E80 20 18 03            876 	jb	b0,00169$
   0E83 63 6D 81            877 	xrl	_status60,#0x81
   0E86                     878 00169$:
                            879 ;	../fb_out.c:324: tastergetoggelt=1;
   0E86 D2 18               880 	setb	b0
   0E88 80 08               881 	sjmp	00178$
   0E8A                     882 00177$:
                            883 ;	../fb_out.c:328: if(tasterpegel>0) tasterpegel--;
   0E8A EF                  884 	mov	a,r7
   0E8B 60 03               885 	jz	00174$
   0E8D 1F                  886 	dec	r7
   0E8E 80 02               887 	sjmp	00178$
   0E90                     888 00174$:
                            889 ;	../fb_out.c:329: else tastergetoggelt=0;
   0E90 C2 18               890 	clr	b0
   0E92                     891 00178$:
                            892 ;	../fb_out.c:331: TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
   0E92 E5 6D               893 	mov	a,_status60
   0E94 54 01               894 	anl	a,#0x01
   0E96 FC                  895 	mov	r4,a
   0E97 B4 01 00            896 	cjne	a,#0x01,00295$
   0E9A                     897 00295$:
   0E9A E4                  898 	clr	a
   0E9B 33                  899 	rlc	a
   0E9C FC                  900 	mov	r4,a
   0E9D 24 FF               901 	add	a,#0xff
   0E9F 92 97               902 	mov	_P1_7,c
                            903 ;	../fb_out.c:333: } while(1);
   0EA1 02 0C D0            904 	ljmp	00179$
                            905 	.area CSEG    (CODE)
                            906 	.area CONST   (CODE)
                    1BFF    907 _main_trimsave_1_1	=	0x1bff
                            908 	.area XINIT   (CODE)
                            909 	.area CABS    (ABS,CODE)
