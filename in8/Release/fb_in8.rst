                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Tue Nov 06 16:08:30 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_in8
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _space
                             13 	.globl _bitmask_1
                             14 	.globl _main
                             15 	.globl _watchdog_start
                             16 	.globl _watchdog_init
                             17 	.globl _bus_return
                             18 	.globl _restart_app
                             19 	.globl _read_obj_value
                             20 	.globl _delay_timer
                             21 	.globl _pin_changed
                             22 	.globl _process_tel
                             23 	.globl _restart_hw
                             24 	.globl _send_obj_value
                             25 	.globl _P3_1
                             26 	.globl _P3_0
                             27 	.globl _P1_7
                             28 	.globl _P1_6
                             29 	.globl _P1_5
                             30 	.globl _P1_4
                             31 	.globl _P1_3
                             32 	.globl _P1_2
                             33 	.globl _P1_1
                             34 	.globl _P1_0
                             35 	.globl _P0_7
                             36 	.globl _P0_6
                             37 	.globl _P0_5
                             38 	.globl _P0_4
                             39 	.globl _P0_3
                             40 	.globl _P0_2
                             41 	.globl _P0_1
                             42 	.globl _P0_0
                             43 	.globl _I2CON_0
                             44 	.globl _I2CON_2
                             45 	.globl _I2CON_3
                             46 	.globl _I2CON_4
                             47 	.globl _I2CON_5
                             48 	.globl _I2CON_6
                             49 	.globl _SCON_7
                             50 	.globl _SCON_6
                             51 	.globl _SCON_5
                             52 	.globl _SCON_4
                             53 	.globl _SCON_3
                             54 	.globl _SCON_2
                             55 	.globl _SCON_1
                             56 	.globl _SCON_0
                             57 	.globl _IP0_0
                             58 	.globl _IP0_1
                             59 	.globl _IP0_2
                             60 	.globl _IP0_3
                             61 	.globl _IP0_4
                             62 	.globl _IP0_5
                             63 	.globl _IP0_6
                             64 	.globl _IP1_0
                             65 	.globl _IP1_1
                             66 	.globl _IP1_2
                             67 	.globl _IP1_6
                             68 	.globl _IEN1_0
                             69 	.globl _IEN1_1
                             70 	.globl _IEN1_2
                             71 	.globl _IEN0_0
                             72 	.globl _IEN0_1
                             73 	.globl _IEN0_2
                             74 	.globl _IEN0_3
                             75 	.globl _IEN0_4
                             76 	.globl _IEN0_5
                             77 	.globl _IEN0_6
                             78 	.globl _IEN0_7
                             79 	.globl _TCON_0
                             80 	.globl _TCON_1
                             81 	.globl _TCON_2
                             82 	.globl _TCON_3
                             83 	.globl _TCON_4
                             84 	.globl _TCON_5
                             85 	.globl _TCON_6
                             86 	.globl _TCON_7
                             87 	.globl _PSW_7
                             88 	.globl _PSW_6
                             89 	.globl _PSW_5
                             90 	.globl _PSW_4
                             91 	.globl _PSW_3
                             92 	.globl _PSW_2
                             93 	.globl _PSW_1
                             94 	.globl _PSW_0
                             95 	.globl _IEN1
                             96 	.globl _IP0H
                             97 	.globl _WFEED2
                             98 	.globl _WFEED1
                             99 	.globl _WDL
                            100 	.globl _WDCON
                            101 	.globl _TRIM
                            102 	.globl _TAMOD
                            103 	.globl _SSTAT
                            104 	.globl _RTCL
                            105 	.globl _RTCH
                            106 	.globl _RTCCON
                            107 	.globl _RSTSRC
                            108 	.globl _PT0AD
                            109 	.globl _PCONA
                            110 	.globl _P3M2
                            111 	.globl _P3M1
                            112 	.globl _P1M2
                            113 	.globl _P1M1
                            114 	.globl _P0M2
                            115 	.globl _P0M1
                            116 	.globl _KBPATN
                            117 	.globl _KBMASK
                            118 	.globl _KBCON
                            119 	.globl _IP1H
                            120 	.globl _IP1
                            121 	.globl _I2STAT
                            122 	.globl _I2SCLL
                            123 	.globl _I2SCLH
                            124 	.globl _I2DAT
                            125 	.globl _I2CON
                            126 	.globl _I2ADR
                            127 	.globl _FMDATA
                            128 	.globl _FMCON
                            129 	.globl _FMADRL
                            130 	.globl _FMADRH
                            131 	.globl _DIVM
                            132 	.globl _CMP2
                            133 	.globl _CMP1
                            134 	.globl _BRGCON
                            135 	.globl _BRGR1
                            136 	.globl _BRGR0
                            137 	.globl _SADEN
                            138 	.globl _SADDR
                            139 	.globl _AUXR1
                            140 	.globl _SBUF
                            141 	.globl _SCON
                            142 	.globl _IP0
                            143 	.globl _IEN0
                            144 	.globl _TH1
                            145 	.globl _TH0
                            146 	.globl _TL1
                            147 	.globl _TL0
                            148 	.globl _TMOD
                            149 	.globl _TCON
                            150 	.globl _PCON
                            151 	.globl _DPH
                            152 	.globl _DPL
                            153 	.globl _SP
                            154 	.globl _B
                            155 	.globl _ACC
                            156 	.globl _PSW
                            157 	.globl _P3
                            158 	.globl _P1
                            159 	.globl _P0
                            160 ;--------------------------------------------------------
                            161 ; special function registers
                            162 ;--------------------------------------------------------
                            163 	.area RSEG    (ABS,DATA)
   0000                     164 	.org 0x0000
                    0080    165 _P0	=	0x0080
                    0090    166 _P1	=	0x0090
                    00B0    167 _P3	=	0x00b0
                    00D0    168 _PSW	=	0x00d0
                    00E0    169 _ACC	=	0x00e0
                    00F0    170 _B	=	0x00f0
                    0081    171 _SP	=	0x0081
                    0082    172 _DPL	=	0x0082
                    0083    173 _DPH	=	0x0083
                    0087    174 _PCON	=	0x0087
                    0088    175 _TCON	=	0x0088
                    0089    176 _TMOD	=	0x0089
                    008A    177 _TL0	=	0x008a
                    008B    178 _TL1	=	0x008b
                    008C    179 _TH0	=	0x008c
                    008D    180 _TH1	=	0x008d
                    00A8    181 _IEN0	=	0x00a8
                    00B8    182 _IP0	=	0x00b8
                    0098    183 _SCON	=	0x0098
                    0099    184 _SBUF	=	0x0099
                    00A2    185 _AUXR1	=	0x00a2
                    00A9    186 _SADDR	=	0x00a9
                    00B9    187 _SADEN	=	0x00b9
                    00BE    188 _BRGR0	=	0x00be
                    00BF    189 _BRGR1	=	0x00bf
                    00BD    190 _BRGCON	=	0x00bd
                    00AC    191 _CMP1	=	0x00ac
                    00AD    192 _CMP2	=	0x00ad
                    0095    193 _DIVM	=	0x0095
                    00E7    194 _FMADRH	=	0x00e7
                    00E6    195 _FMADRL	=	0x00e6
                    00E4    196 _FMCON	=	0x00e4
                    00E5    197 _FMDATA	=	0x00e5
                    00DB    198 _I2ADR	=	0x00db
                    00D8    199 _I2CON	=	0x00d8
                    00DA    200 _I2DAT	=	0x00da
                    00DD    201 _I2SCLH	=	0x00dd
                    00DC    202 _I2SCLL	=	0x00dc
                    00D9    203 _I2STAT	=	0x00d9
                    00F8    204 _IP1	=	0x00f8
                    00F7    205 _IP1H	=	0x00f7
                    0094    206 _KBCON	=	0x0094
                    0086    207 _KBMASK	=	0x0086
                    0093    208 _KBPATN	=	0x0093
                    0084    209 _P0M1	=	0x0084
                    0085    210 _P0M2	=	0x0085
                    0091    211 _P1M1	=	0x0091
                    0092    212 _P1M2	=	0x0092
                    00B1    213 _P3M1	=	0x00b1
                    00B2    214 _P3M2	=	0x00b2
                    00B5    215 _PCONA	=	0x00b5
                    00F6    216 _PT0AD	=	0x00f6
                    00DF    217 _RSTSRC	=	0x00df
                    00D1    218 _RTCCON	=	0x00d1
                    00D2    219 _RTCH	=	0x00d2
                    00D3    220 _RTCL	=	0x00d3
                    00BA    221 _SSTAT	=	0x00ba
                    008F    222 _TAMOD	=	0x008f
                    0096    223 _TRIM	=	0x0096
                    00A7    224 _WDCON	=	0x00a7
                    00C1    225 _WDL	=	0x00c1
                    00C2    226 _WFEED1	=	0x00c2
                    00C3    227 _WFEED2	=	0x00c3
                    00B7    228 _IP0H	=	0x00b7
                    00E8    229 _IEN1	=	0x00e8
                            230 ;--------------------------------------------------------
                            231 ; special function bits
                            232 ;--------------------------------------------------------
                            233 	.area RSEG    (ABS,DATA)
   0000                     234 	.org 0x0000
                    00D0    235 _PSW_0	=	0x00d0
                    00D1    236 _PSW_1	=	0x00d1
                    00D2    237 _PSW_2	=	0x00d2
                    00D3    238 _PSW_3	=	0x00d3
                    00D4    239 _PSW_4	=	0x00d4
                    00D5    240 _PSW_5	=	0x00d5
                    00D6    241 _PSW_6	=	0x00d6
                    00D7    242 _PSW_7	=	0x00d7
                    008F    243 _TCON_7	=	0x008f
                    008E    244 _TCON_6	=	0x008e
                    008D    245 _TCON_5	=	0x008d
                    008C    246 _TCON_4	=	0x008c
                    008B    247 _TCON_3	=	0x008b
                    008A    248 _TCON_2	=	0x008a
                    0089    249 _TCON_1	=	0x0089
                    0088    250 _TCON_0	=	0x0088
                    00AF    251 _IEN0_7	=	0x00af
                    00AE    252 _IEN0_6	=	0x00ae
                    00AD    253 _IEN0_5	=	0x00ad
                    00AC    254 _IEN0_4	=	0x00ac
                    00AB    255 _IEN0_3	=	0x00ab
                    00AA    256 _IEN0_2	=	0x00aa
                    00A9    257 _IEN0_1	=	0x00a9
                    00A8    258 _IEN0_0	=	0x00a8
                    00EA    259 _IEN1_2	=	0x00ea
                    00E9    260 _IEN1_1	=	0x00e9
                    00E8    261 _IEN1_0	=	0x00e8
                    00FE    262 _IP1_6	=	0x00fe
                    00FA    263 _IP1_2	=	0x00fa
                    00F9    264 _IP1_1	=	0x00f9
                    00F8    265 _IP1_0	=	0x00f8
                    00BE    266 _IP0_6	=	0x00be
                    00BD    267 _IP0_5	=	0x00bd
                    00BC    268 _IP0_4	=	0x00bc
                    00BB    269 _IP0_3	=	0x00bb
                    00BA    270 _IP0_2	=	0x00ba
                    00B9    271 _IP0_1	=	0x00b9
                    00B8    272 _IP0_0	=	0x00b8
                    0098    273 _SCON_0	=	0x0098
                    0099    274 _SCON_1	=	0x0099
                    009A    275 _SCON_2	=	0x009a
                    009B    276 _SCON_3	=	0x009b
                    009C    277 _SCON_4	=	0x009c
                    009D    278 _SCON_5	=	0x009d
                    009E    279 _SCON_6	=	0x009e
                    009F    280 _SCON_7	=	0x009f
                    00DE    281 _I2CON_6	=	0x00de
                    00DD    282 _I2CON_5	=	0x00dd
                    00DC    283 _I2CON_4	=	0x00dc
                    00DB    284 _I2CON_3	=	0x00db
                    00DA    285 _I2CON_2	=	0x00da
                    00D8    286 _I2CON_0	=	0x00d8
                    0080    287 _P0_0	=	0x0080
                    0081    288 _P0_1	=	0x0081
                    0082    289 _P0_2	=	0x0082
                    0083    290 _P0_3	=	0x0083
                    0084    291 _P0_4	=	0x0084
                    0085    292 _P0_5	=	0x0085
                    0086    293 _P0_6	=	0x0086
                    0087    294 _P0_7	=	0x0087
                    0090    295 _P1_0	=	0x0090
                    0091    296 _P1_1	=	0x0091
                    0092    297 _P1_2	=	0x0092
                    0093    298 _P1_3	=	0x0093
                    0094    299 _P1_4	=	0x0094
                    0095    300 _P1_5	=	0x0095
                    0096    301 _P1_6	=	0x0096
                    0097    302 _P1_7	=	0x0097
                    00B0    303 _P3_0	=	0x00b0
                    00B1    304 _P3_1	=	0x00b1
                            305 ;--------------------------------------------------------
                            306 ; overlayable register banks
                            307 ;--------------------------------------------------------
                            308 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     309 	.ds 8
                            310 ;--------------------------------------------------------
                            311 ; overlayable bit register bank
                            312 ;--------------------------------------------------------
                            313 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     314 bits:
   0023                     315 	.ds 1
                    8000    316 	b0 = bits[0]
                    8100    317 	b1 = bits[1]
                    8200    318 	b2 = bits[2]
                    8300    319 	b3 = bits[3]
                    8400    320 	b4 = bits[4]
                    8500    321 	b5 = bits[5]
                    8600    322 	b6 = bits[6]
                    8700    323 	b7 = bits[7]
                            324 ;--------------------------------------------------------
                            325 ; internal ram data
                            326 ;--------------------------------------------------------
                            327 	.area DSEG    (DATA)
                            328 ;--------------------------------------------------------
                            329 ; overlayable items in internal ram 
                            330 ;--------------------------------------------------------
                            331 ;--------------------------------------------------------
                            332 ; Stack segment in internal ram 
                            333 ;--------------------------------------------------------
                            334 	.area	SSEG	(DATA)
   007C                     335 __start__stack:
   007C                     336 	.ds	1
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
   000B 32                  385 	reti
   000C                     386 	.ds	7
   0013 02 11 C5            387 	ljmp	_X1_int
   0016                     388 	.ds	5
   001B 02 11 F5            389 	ljmp	_T1_int
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
   0082 02 00 1E            404 	ljmp	__sdcc_program_startup
                            405 ;--------------------------------------------------------
                            406 ; Home
                            407 ;--------------------------------------------------------
                            408 	.area HOME    (CODE)
                            409 	.area HOME    (CODE)
   001E                     410 __sdcc_program_startup:
   001E 12 0E 95            411 	lcall	_main
                            412 ;	return from main will lock up
   0021 80 FE               413 	sjmp .
                            414 ;--------------------------------------------------------
                            415 ; code
                            416 ;--------------------------------------------------------
                            417 	.area CSEG    (CODE)
                            418 ;------------------------------------------------------------
                            419 ;Allocation info for local variables in function 'main'
                            420 ;------------------------------------------------------------
                            421 ;n                         Allocated to registers r7 
                            422 ;cmd                       Allocated to registers r7 
                            423 ;tasterpegel               Allocated to stack - _bp +1
                            424 ;cal                       Allocated to registers r6 
                            425 ;base                      Allocated to registers r4 r5 
                            426 ;pin                       Allocated to registers 
                            427 ;tmp                       Allocated to registers r4 
                            428 ;objno                     Allocated to registers r5 
                            429 ;objstate                  Allocated to registers r2 
                            430 ;wduf                      Allocated to registers b1 
                            431 ;tastergetoggelt           Allocated to registers b0 
                            432 ;------------------------------------------------------------
                            433 ;	../fb_in8.c:39: void main(void)
                            434 ;	-----------------------------------------
                            435 ;	 function main
                            436 ;	-----------------------------------------
   0E95                     437 _main:
                    0007    438 	ar7 = 0x07
                    0006    439 	ar6 = 0x06
                    0005    440 	ar5 = 0x05
                    0004    441 	ar4 = 0x04
                    0003    442 	ar3 = 0x03
                    0002    443 	ar2 = 0x02
                    0001    444 	ar1 = 0x01
                    0000    445 	ar0 = 0x00
   0E95 C0 7B               446 	push	_bp
   0E97 85 81 7B            447 	mov	_bp,sp
   0E9A 05 81               448 	inc	sp
                            449 ;	../fb_in8.c:41: unsigned char n,cmd,tasterpegel=0;
   0E9C A8 7B               450 	mov	r0,_bp
   0E9E 08                  451 	inc	r0
   0E9F 76 00               452 	mov	@r0,#0x00
                            453 ;	../fb_in8.c:52: __bit wduf,tastergetoggelt=0;
   0EA1 C2 18               454 	clr	b0
                            455 ;	../fb_in8.c:53: wduf=WDCON&0x02;
   0EA3 E5 A7               456 	mov	a,_WDCON
   0EA5 03                  457 	rr	a
   0EA6 54 01               458 	anl	a,#0x01
   0EA8 FE                  459 	mov	r6,a
   0EA9 24 FF               460 	add	a,#0xff
   0EAB 92 19               461 	mov	b1,c
                            462 ;	../fb_in8.c:54: TASTER=1;
   0EAD D2 97               463 	setb	_P1_7
                            464 ;	../fb_in8.c:55: if(!TASTER && wduf)cal=0;
   0EAF 20 97 07            465 	jb	_P1_7,00102$
   0EB2 30 19 04            466 	jnb	b1,00102$
   0EB5 7E 00               467 	mov	r6,#0x00
   0EB7 80 07               468 	sjmp	00103$
   0EB9                     469 00102$:
                            470 ;	../fb_in8.c:56: else cal=trimsave;
   0EB9 90 1C FF            471 	mov	dptr,#_main_trimsave_1_43
   0EBC E4                  472 	clr	a
   0EBD 93                  473 	movc	a,@a+dptr
   0EBE FD                  474 	mov	r5,a
   0EBF FE                  475 	mov	r6,a
   0EC0                     476 00103$:
                            477 ;	../fb_in8.c:57: TRIM = (TRIM+trimsave);
   0EC0 90 1C FF            478 	mov	dptr,#_main_trimsave_1_43
   0EC3 E4                  479 	clr	a
   0EC4 93                  480 	movc	a,@a+dptr
   0EC5 AC 96               481 	mov	r4,_TRIM
   0EC7 2C                  482 	add	a,r4
   0EC8 FD                  483 	mov	r5,a
   0EC9 8D 96               484 	mov	_TRIM,r5
                            485 ;	../fb_in8.c:58: TRIM &= 0x3F;//oberen 2 bits ausblenden
   0ECB 53 96 3F            486 	anl	_TRIM,#0x3F
                            487 ;	../fb_in8.c:60: restart_hw();				// Hardware zurücksetzen
   0ECE C0 06               488 	push	ar6
   0ED0 C0 23               489 	push	bits
   0ED2 12 1A EB            490 	lcall	_restart_hw
   0ED5 D0 23               491 	pop	bits
                            492 ;	../fb_in8.c:63: BRGCON&=0xFE;	// Baudrate Generator stoppen
   0ED7 53 BD FE            493 	anl	_BRGCON,#0xFE
                            494 ;	../fb_in8.c:64: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   0EDA 53 91 FC            495 	anl	_P1M1,#0xFC
                            496 ;	../fb_in8.c:65: P1M2&=0xFC;
   0EDD 53 92 FC            497 	anl	_P1M2,#0xFC
                            498 ;	../fb_in8.c:66: SCON=0x50;		// Mode 1, receive enable
   0EE0 75 98 50            499 	mov	_SCON,#0x50
                            500 ;	../fb_in8.c:67: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   0EE3 43 BA E0            501 	orl	_SSTAT,#0xE0
                            502 ;	../fb_in8.c:68: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   0EE6 43 BD 02            503 	orl	_BRGCON,#0x02
                            504 ;	../fb_in8.c:69: BRGR1=0x2F;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
   0EE9 75 BF 2F            505 	mov	_BRGR1,#0x2F
                            506 ;	../fb_in8.c:70: BRGR0=0xF0;	// für 115200 0030 nehmen, autocal: 600bd= 0x2FF0
   0EEC 75 BE F0            507 	mov	_BRGR0,#0xF0
                            508 ;	../fb_in8.c:71: BRGCON|=0x01;	// Baudrate Generator starten
   0EEF 43 BD 01            509 	orl	_BRGCON,#0x01
                            510 ;	../fb_in8.c:72: SBUF=0x55;
   0EF2 75 99 55            511 	mov	_SBUF,#0x55
                            512 ;	../fb_in8.c:78: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
   0EF5 C0 23               513 	push	bits
   0EF7 12 0E 32            514 	lcall	_restart_app
   0EFA D0 23               515 	pop	bits
   0EFC D0 06               516 	pop	ar6
                            517 ;	../fb_in8.c:81: portbuffer=P0;			// zunächst keine Änderungen bei Busspannungswiederkehr
   0EFE 85 80 24            518 	mov	_portbuffer,_P0
                            519 ;	../fb_in8.c:82: p0h=portbuffer;
   0F01 85 24 25            520 	mov	_p0h,_portbuffer
                            521 ;	../fb_in8.c:87: if(!wduf){
   0F04 20 19 52            522 	jb	b1,00109$
                            523 ;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
   0F07 7C 00               524 	mov	r4,#0x00
   0F09 7D 00               525 	mov	r5,#0x00
   0F0B                     526 00179$:
   0F0B C0 06               527 	push	ar6
   0F0D 90 1D D4            528 	mov	dptr,#(_eeprom + 0x00d4)
   0F10 E4                  529 	clr	a
   0F11 93                  530 	movc	a,@a+dptr
   0F12 FB                  531 	mov	r3,a
   0F13 7A 00               532 	mov	r2,#0x00
   0F15 90 1D FE            533 	mov	dptr,#(_eeprom + 0x00fe)
   0F18 E4                  534 	clr	a
   0F19 93                  535 	movc	a,@a+dptr
   0F1A C4                  536 	swap	a
   0F1B 54 0F               537 	anl	a,#0x0F
   0F1D FE                  538 	mov	r6,a
   0F1E 8E F0               539 	mov	b,r6
   0F20 05 F0               540 	inc	b
   0F22 80 06               541 	sjmp	00288$
   0F24                     542 00287$:
   0F24 EB                  543 	mov	a,r3
   0F25 2B                  544 	add	a,r3
   0F26 FB                  545 	mov	r3,a
   0F27 EA                  546 	mov	a,r2
   0F28 33                  547 	rlc	a
   0F29 FA                  548 	mov	r2,a
   0F2A                     549 00288$:
   0F2A D5 F0 F7            550 	djnz	b,00287$
   0F2D C3                  551 	clr	c
   0F2E EB                  552 	mov	a,r3
   0F2F 9C                  553 	subb	a,r4
   0F30 EA                  554 	mov	a,r2
   0F31 9D                  555 	subb	a,r5
   0F32 D0 06               556 	pop	ar6
   0F34 40 23               557 	jc	00109$
                            558 ;	../fb_in8.c:91: RTCCON=0x60;		// RTC anhalten und Flag löschen
   0F36 75 D1 60            559 	mov	_RTCCON,#0x60
                            560 ;	../fb_in8.c:92: RTCH=0x1D;			// reload Real Time Clock für 65ms
   0F39 75 D2 1D            561 	mov	_RTCH,#0x1D
                            562 ;	../fb_in8.c:93: RTCL=0x40;
   0F3C 75 D3 40            563 	mov	_RTCL,#0x40
                            564 ;	../fb_in8.c:94: RTCCON=0x61;		// RTC starten
   0F3F 75 D1 61            565 	mov	_RTCCON,#0x61
                            566 ;	../fb_in8.c:95: while (RTCCON<=0x7F) ;	// Realtime clock ueberlauf abwarten
   0F42                     567 00105$:
   0F42 E5 D1               568 	mov	a,_RTCCON
   0F44 24 80               569 	add	a,#0xff - 0x7F
   0F46 50 FA               570 	jnc	00105$
                            571 ;	../fb_in8.c:97: EA = 0;
   0F48 C2 AF               572 	clr	_IEN0_7
                            573 ;	../fb_in8.c:98: WFEED1 = 0xA5;
   0F4A 75 C2 A5            574 	mov	_WFEED1,#0xA5
                            575 ;	../fb_in8.c:99: WFEED2 = 0x5A;
   0F4D 75 C3 5A            576 	mov	_WFEED2,#0x5A
                            577 ;	../fb_in8.c:100: EA=1;
   0F50 D2 AF               578 	setb	_IEN0_7
                            579 ;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
   0F52 0C                  580 	inc	r4
   0F53 BC 00 B5            581 	cjne	r4,#0x00,00179$
   0F56 0D                  582 	inc	r5
   0F57 80 B2               583 	sjmp	00179$
   0F59                     584 00109$:
                            585 ;	../fb_in8.c:105: watchdog_init();
   0F59 C0 06               586 	push	ar6
   0F5B C0 23               587 	push	bits
   0F5D 12 11 7D            588 	lcall	_watchdog_init
   0F60 D0 23               589 	pop	bits
                            590 ;	../fb_in8.c:106: watchdog_start();
   0F62 C0 23               591 	push	bits
   0F64 12 11 99            592 	lcall	_watchdog_start
   0F67 D0 23               593 	pop	bits
   0F69 D0 06               594 	pop	ar6
                            595 ;	../fb_in8.c:108: if(!wduf)bus_return();			// Anwendungsspezifische Einstellungen zurücksetzen
   0F6B 20 19 0B            596 	jb	b1,00111$
   0F6E C0 06               597 	push	ar6
   0F70 C0 23               598 	push	bits
   0F72 12 0B A4            599 	lcall	_bus_return
   0F75 D0 23               600 	pop	bits
   0F77 D0 06               601 	pop	ar6
   0F79                     602 00111$:
                            603 ;	../fb_in8.c:110: TASTER=1;
   0F79 D2 97               604 	setb	_P1_7
                            605 ;	../fb_in8.c:111: do  {
   0F7B                     606 00176$:
                            607 ;	../fb_in8.c:114: EA = 0;
   0F7B C2 AF               608 	clr	_IEN0_7
                            609 ;	../fb_in8.c:115: WFEED1 = 0xA5;
   0F7D 75 C2 A5            610 	mov	_WFEED1,#0xA5
                            611 ;	../fb_in8.c:116: WFEED2 = 0x5A;
   0F80 75 C3 5A            612 	mov	_WFEED2,#0x5A
                            613 ;	../fb_in8.c:117: EA=1;
   0F83 D2 AF               614 	setb	_IEN0_7
                            615 ;	../fb_in8.c:120: if(APPLICATION_RUN){	  
   0F85 90 1D 0D            616 	mov	dptr,#(_eeprom + 0x000d)
   0F88 E4                  617 	clr	a
   0F89 93                  618 	movc	a,@a+dptr
   0F8A FD                  619 	mov	r5,a
   0F8B BD FF 02            620 	cjne	r5,#0xFF,00293$
   0F8E 80 03               621 	sjmp	00294$
   0F90                     622 00293$:
   0F90 02 10 CB            623 	ljmp	00133$
   0F93                     624 00294$:
   0F93 30 11 03            625 	jnb	_connected,00295$
   0F96 02 10 CB            626 	ljmp	00133$
   0F99                     627 00295$:
   0F99 E5 7A               628 	mov	a,_status60
   0F9B 30 E0 03            629 	jnb	acc.0,00296$
   0F9E 02 10 CB            630 	ljmp	00133$
   0FA1                     631 00296$:
                            632 ;	../fb_in8.c:122: p0h=P0;				// prüfen ob ein Eingang sich geändert hat
   0FA1 85 80 25            633 	mov	_p0h,_P0
                            634 ;	../fb_in8.c:126: if (p0h!=portbuffer) 
   0FA4 E5 24               635 	mov	a,_portbuffer
   0FA6 B5 25 02            636 	cjne	a,_p0h,00297$
   0FA9 80 31               637 	sjmp	00116$
   0FAB                     638 00297$:
                            639 ;	../fb_in8.c:128: for(n=0;n<8;n++)					// jeden Eingangspin einzel prüfen
   0FAB 7D 00               640 	mov	r5,#0x00
   0FAD                     641 00183$:
   0FAD BD 08 00            642 	cjne	r5,#0x08,00298$
   0FB0                     643 00298$:
   0FB0 50 27               644 	jnc	00186$
                            645 ;	../fb_in8.c:132: if (((p0h^portbuffer) & bitmask_1[n])&& !(blocked & bitmask_1[n]) )//kürzeste Version
   0FB2 E5 24               646 	mov	a,_portbuffer
   0FB4 65 25               647 	xrl	a,_p0h
   0FB6 FC                  648 	mov	r4,a
   0FB7 ED                  649 	mov	a,r5
   0FB8 90 1B 70            650 	mov	dptr,#_bitmask_1
   0FBB 93                  651 	movc	a,@a+dptr
   0FBC FB                  652 	mov	r3,a
   0FBD 5C                  653 	anl	a,r4
   0FBE 60 16               654 	jz	00185$
   0FC0 EB                  655 	mov	a,r3
   0FC1 55 28               656 	anl	a,_blocked
   0FC3 70 11               657 	jnz	00185$
                            658 ;	../fb_in8.c:134: pin_changed(n);				// Änderung verarbeiten
   0FC5 8D 82               659 	mov	dpl,r5
   0FC7 C0 06               660 	push	ar6
   0FC9 C0 05               661 	push	ar5
   0FCB C0 23               662 	push	bits
   0FCD 12 00 85            663 	lcall	_pin_changed
   0FD0 D0 23               664 	pop	bits
   0FD2 D0 05               665 	pop	ar5
   0FD4 D0 06               666 	pop	ar6
   0FD6                     667 00185$:
                            668 ;	../fb_in8.c:128: for(n=0;n<8;n++)					// jeden Eingangspin einzel prüfen
   0FD6 0D                  669 	inc	r5
   0FD7 80 D4               670 	sjmp	00183$
   0FD9                     671 00186$:
                            672 ;	../fb_in8.c:137: portbuffer=p0h;					// neuen Portzustand in buffer speichern
   0FD9 85 25 24            673 	mov	_portbuffer,_p0h
   0FDC                     674 00116$:
                            675 ;	../fb_in8.c:142: if (RTCCON>=0x80){
   0FDC 74 80               676 	mov	a,#0x100 - 0x80
   0FDE 25 D1               677 	add	a,_RTCCON
   0FE0 50 0B               678 	jnc	00219$
                            679 ;	../fb_in8.c:143: delay_timer();	// Realtime clock ueberlauf
   0FE2 C0 06               680 	push	ar6
   0FE4 C0 23               681 	push	bits
   0FE6 12 05 49            682 	lcall	_delay_timer
   0FE9 D0 23               683 	pop	bits
   0FEB D0 06               684 	pop	ar6
                            685 ;	../fb_in8.c:147: for(objno=0;objno<=7;objno++){	
   0FED                     686 00219$:
   0FED 7D 00               687 	mov	r5,#0x00
   0FEF                     688 00187$:
   0FEF ED                  689 	mov	a,r5
   0FF0 24 F8               690 	add	a,#0xff - 0x07
   0FF2 50 03               691 	jnc	00303$
   0FF4 02 10 CB            692 	ljmp	00133$
   0FF7                     693 00303$:
                            694 ;	../fb_in8.c:148: tmp=(eeprom[0xD5+(objno*4)]&0x0C);//0xD5/ bit 2-3 zykl senden aktiv 
   0FF7 C0 06               695 	push	ar6
   0FF9 ED                  696 	mov	a,r5
   0FFA 2D                  697 	add	a,r5
   0FFB 25 E0               698 	add	a,acc
   0FFD 24 D5               699 	add	a,#0xD5
   0FFF 90 1D 00            700 	mov	dptr,#_eeprom
   1002 93                  701 	movc	a,@a+dptr
   1003 FC                  702 	mov	r4,a
   1004 53 04 0C            703 	anl	ar4,#0x0C
                            704 ;	../fb_in8.c:149: objstate=read_obj_value(objno);
   1007 8D 82               705 	mov	dpl,r5
   1009 C0 05               706 	push	ar5
   100B C0 04               707 	push	ar4
   100D C0 23               708 	push	bits
   100F 12 0C E0            709 	lcall	_read_obj_value
   1012 AA 82               710 	mov	r2,dpl
   1014 AB 83               711 	mov	r3,dph
   1016 AE F0               712 	mov	r6,b
   1018 D0 23               713 	pop	bits
   101A D0 04               714 	pop	ar4
   101C D0 05               715 	pop	ar5
                            716 ;	../fb_in8.c:150: if (((eeprom[0xCE+(objno>>1)] >> ((objno & 0x01)*4)) & 0x0F)==1){// bei Funktion=Schalten
   101E ED                  717 	mov	a,r5
   101F C3                  718 	clr	c
   1020 13                  719 	rrc	a
   1021 24 CE               720 	add	a,#0xCE
   1023 90 1D 00            721 	mov	dptr,#_eeprom
   1026 93                  722 	movc	a,@a+dptr
   1027 FF                  723 	mov	r7,a
   1028 74 01               724 	mov	a,#0x01
   102A 5D                  725 	anl	a,r5
   102B 75 F0 04            726 	mov	b,#0x04
   102E A4                  727 	mul	ab
   102F F5 F0               728 	mov	b,a
   1031 05 F0               729 	inc	b
   1033 EF                  730 	mov	a,r7
   1034 80 02               731 	sjmp	00305$
   1036                     732 00304$:
   1036 C3                  733 	clr	c
   1037 13                  734 	rrc	a
   1038                     735 00305$:
   1038 D5 F0 FB            736 	djnz	b,00304$
   103B 54 0F               737 	anl	a,#0x0F
   103D FF                  738 	mov	r7,a
   103E BF 01 02            739 	cjne	r7,#0x01,00306$
   1041 80 05               740 	sjmp	00307$
   1043                     741 00306$:
   1043 D0 06               742 	pop	ar6
   1045 02 10 C7            743 	ljmp	00189$
   1048                     744 00307$:
   1048 D0 06               745 	pop	ar6
                            746 ;	../fb_in8.c:151: if ((tmp==0x04 && objstate==1)||(tmp==0x08 && objstate==0)|| tmp==0x0C){//bei zykl senden aktiviert
   104A BC 04 05            747 	cjne	r4,#0x04,00128$
   104D BA 01 02            748 	cjne	r2,#0x01,00310$
   1050 80 09               749 	sjmp	00123$
   1052                     750 00310$:
   1052                     751 00128$:
   1052 BC 08 03            752 	cjne	r4,#0x08,00129$
   1055 EA                  753 	mov	a,r2
   1056 60 03               754 	jz	00123$
   1058                     755 00129$:
   1058 BC 0C 66            756 	cjne	r4,#0x0C,00124$
   105B                     757 00123$:
                            758 ;	../fb_in8.c:152: n=timercnt[objno];
   105B ED                  759 	mov	a,r5
   105C 24 36               760 	add	a,#_timercnt
   105E F9                  761 	mov	r1,a
                            762 ;	../fb_in8.c:153: if ((n & 0x7F) ==0){ 		//    wenn aus oder abgelaufen
   105F E7                  763 	mov	a,@r1
   1060 FF                  764 	mov	r7,a
   1061 54 7F               765 	anl	a,#0x7F
   1063 70 62               766 	jnz	00189$
                            767 ;	../fb_in8.c:154: timercnt[objno] = (eeprom[0xD6+(objno*4)]& 0x3F)+ 0x80 ;//0xD6 Faktor Zyklisch senden x.1 + x.2 )+ einschalten
   1065 ED                  768 	mov	a,r5
   1066 2D                  769 	add	a,r5
   1067 25 E0               770 	add	a,acc
   1069 24 D6               771 	add	a,#0xD6
   106B 90 1D 00            772 	mov	dptr,#_eeprom
   106E 93                  773 	movc	a,@a+dptr
   106F FC                  774 	mov	r4,a
   1070 74 3F               775 	mov	a,#0x3F
   1072 5C                  776 	anl	a,r4
   1073 24 80               777 	add	a,#0x80
   1075 F7                  778 	mov	@r1,a
                            779 ;	../fb_in8.c:155: timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07;	//Basis zyklisch senden
   1076 ED                  780 	mov	a,r5
   1077 24 2D               781 	add	a,#_timerbase
   1079 F9                  782 	mov	r1,a
   107A 8D 03               783 	mov	ar3,r5
   107C 7C 00               784 	mov	r4,#0x00
   107E 0B                  785 	inc	r3
   107F BB 00 01            786 	cjne	r3,#0x00,00318$
   1082 0C                  787 	inc	r4
   1083                     788 00318$:
   1083 EC                  789 	mov	a,r4
   1084 A2 E7               790 	mov	c,acc.7
   1086 13                  791 	rrc	a
   1087 CB                  792 	xch	a,r3
   1088 13                  793 	rrc	a
   1089 CB                  794 	xch	a,r3
   108A 74 F6               795 	mov	a,#0xF6
   108C 2B                  796 	add	a,r3
   108D 90 1D 00            797 	mov	dptr,#_eeprom
   1090 93                  798 	movc	a,@a+dptr
   1091 FC                  799 	mov	r4,a
   1092 74 01               800 	mov	a,#0x01
   1094 5D                  801 	anl	a,r5
   1095 64 01               802 	xrl	a,#0x01
   1097 75 F0 04            803 	mov	b,#0x04
   109A A4                  804 	mul	ab
   109B F5 F0               805 	mov	b,a
   109D 05 F0               806 	inc	b
   109F EC                  807 	mov	a,r4
   10A0 80 02               808 	sjmp	00320$
   10A2                     809 00319$:
   10A2 C3                  810 	clr	c
   10A3 13                  811 	rrc	a
   10A4                     812 00320$:
   10A4 D5 F0 FB            813 	djnz	b,00319$
   10A7 54 07               814 	anl	a,#0x07
   10A9 F7                  815 	mov	@r1,a
                            816 ;	../fb_in8.c:156: if (n & 0x80){// wenn timer ein war
   10AA EF                  817 	mov	a,r7
   10AB 30 E7 19            818 	jnb	acc.7,00189$
                            819 ;	../fb_in8.c:157: send_obj_value(objno);		// Eingang x.1 zyklisch senden
   10AE 8D 82               820 	mov	dpl,r5
   10B0 C0 06               821 	push	ar6
   10B2 C0 05               822 	push	ar5
   10B4 C0 23               823 	push	bits
   10B6 12 18 02            824 	lcall	_send_obj_value
   10B9 D0 23               825 	pop	bits
   10BB D0 05               826 	pop	ar5
   10BD D0 06               827 	pop	ar6
   10BF 80 06               828 	sjmp	00189$
   10C1                     829 00124$:
                            830 ;	../fb_in8.c:161: else timercnt[objno]=0;
   10C1 ED                  831 	mov	a,r5
   10C2 24 36               832 	add	a,#_timercnt
   10C4 F8                  833 	mov	r0,a
   10C5 76 00               834 	mov	@r0,#0x00
   10C7                     835 00189$:
                            836 ;	../fb_in8.c:147: for(objno=0;objno<=7;objno++){	
   10C7 0D                  837 	inc	r5
   10C8 02 0F EF            838 	ljmp	00187$
   10CB                     839 00133$:
                            840 ;	../fb_in8.c:180: if (tel_arrived || tel_sent) { 
   10CB 20 09 03            841 	jb	_tel_arrived,00136$
   10CE 30 0A 11            842 	jnb	_tel_sent,00137$
   10D1                     843 00136$:
                            844 ;	../fb_in8.c:181: tel_arrived=0;
   10D1 C2 09               845 	clr	_tel_arrived
                            846 ;	../fb_in8.c:182: tel_sent=0;
   10D3 C2 0A               847 	clr	_tel_sent
                            848 ;	../fb_in8.c:183: process_tel();
   10D5 C0 06               849 	push	ar6
   10D7 C0 23               850 	push	bits
   10D9 12 18 35            851 	lcall	_process_tel
   10DC D0 23               852 	pop	bits
   10DE D0 06               853 	pop	ar6
   10E0 80 0A               854 	sjmp	00138$
   10E2                     855 00137$:
                            856 ;	../fb_in8.c:186: for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
   10E2 7F 64               857 	mov	r7,#0x64
   10E4                     858 00193$:
   10E4 8F 05               859 	mov	ar5,r7
   10E6 1D                  860 	dec	r5
   10E7 8D 07               861 	mov	ar7,r5
   10E9 EF                  862 	mov	a,r7
   10EA 70 F8               863 	jnz	00193$
   10EC                     864 00138$:
                            865 ;	../fb_in8.c:190: if (RI){
                            866 ;	../fb_in8.c:191: RI=0;
   10EC 10 98 02            867 	jbc	_SCON_0,00325$
   10EF 80 4A               868 	sjmp	00164$
   10F1                     869 00325$:
                            870 ;	../fb_in8.c:192: cmd=SBUF;
   10F1 AF 99               871 	mov	r7,_SBUF
                            872 ;	../fb_in8.c:193: if(cmd=='c'){
   10F3 BF 63 08            873 	cjne	r7,#0x63,00144$
                            874 ;	../fb_in8.c:194: while(!TI);
   10F6                     875 00140$:
                            876 ;	../fb_in8.c:195: TI=0;
   10F6 10 99 02            877 	jbc	_SCON_1,00328$
   10F9 80 FB               878 	sjmp	00140$
   10FB                     879 00328$:
                            880 ;	../fb_in8.c:196: SBUF=0x55;
   10FB 75 99 55            881 	mov	_SBUF,#0x55
   10FE                     882 00144$:
                            883 ;	../fb_in8.c:198: if(cmd=='+'){
   10FE BF 2B 03            884 	cjne	r7,#0x2B,00146$
                            885 ;	../fb_in8.c:199: TRIM--;
   1101 15 96               886 	dec	_TRIM
                            887 ;	../fb_in8.c:200: cal--;
   1103 1E                  888 	dec	r6
   1104                     889 00146$:
                            890 ;	../fb_in8.c:202: if(cmd=='-'){
   1104 BF 2D 03            891 	cjne	r7,#0x2D,00148$
                            892 ;	../fb_in8.c:203: TRIM++;
   1107 05 96               893 	inc	_TRIM
                            894 ;	../fb_in8.c:204: cal++;
   1109 0E                  895 	inc	r6
   110A                     896 00148$:
                            897 ;	../fb_in8.c:206: if(cmd=='w'){
   110A BF 77 12            898 	cjne	r7,#0x77,00150$
                            899 ;	../fb_in8.c:207: EA=0;
   110D C2 AF               900 	clr	_IEN0_7
                            901 ;	../fb_in8.c:208: START_WRITECYCLE;	//cal an 0x1bff schreiben
   110F 75 E4 00            902 	mov	_FMCON,#0x00
                            903 ;	../fb_in8.c:210: FMADRH= 0x1C;		
   1112 75 E7 1C            904 	mov	_FMADRH,#0x1C
                            905 ;	../fb_in8.c:211: FMADRL= 0xFF; 
   1115 75 E6 FF            906 	mov	_FMADRL,#0xFF
                            907 ;	../fb_in8.c:213: FMDATA=	cal;
   1118 8E E5               908 	mov	_FMDATA,r6
                            909 ;	../fb_in8.c:214: STOP_WRITECYCLE;
   111A 75 E4 68            910 	mov	_FMCON,#0x68
                            911 ;	../fb_in8.c:215: EA=1;				//int wieder freigeben
   111D D2 AF               912 	setb	_IEN0_7
   111F                     913 00150$:
                            914 ;	../fb_in8.c:217: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   111F BF 70 03            915 	cjne	r7,#0x70,00152$
   1122 63 7A 81            916 	xrl	_status60,#0x81
   1125                     917 00152$:
                            918 ;	../fb_in8.c:219: if(cmd=='v'){
   1125 BF 76 08            919 	cjne	r7,#0x76,00157$
                            920 ;	../fb_in8.c:220: while(!TI);
   1128                     921 00153$:
                            922 ;	../fb_in8.c:221: TI=0;
   1128 10 99 02            923 	jbc	_SCON_1,00339$
   112B 80 FB               924 	sjmp	00153$
   112D                     925 00339$:
                            926 ;	../fb_in8.c:222: SBUF=VERSION;
   112D 75 99 07            927 	mov	_SBUF,#0x07
   1130                     928 00157$:
                            929 ;	../fb_in8.c:224: if(cmd=='t'){
   1130 BF 74 08            930 	cjne	r7,#0x74,00164$
                            931 ;	../fb_in8.c:225: while(!TI);
   1133                     932 00158$:
                            933 ;	../fb_in8.c:226: TI=0;
   1133 10 99 02            934 	jbc	_SCON_1,00342$
   1136 80 FB               935 	sjmp	00158$
   1138                     936 00342$:
                            937 ;	../fb_in8.c:227: SBUF=TYPE;
   1138 75 99 02            938 	mov	_SBUF,#0x02
   113B                     939 00164$:
                            940 ;	../fb_in8.c:232: TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
   113B D2 97               941 	setb	_P1_7
                            942 ;	../fb_in8.c:233: if(!TASTER){ // Taster gedrückt
   113D 20 97 18            943 	jb	_P1_7,00174$
                            944 ;	../fb_in8.c:234: if(tasterpegel<255)	tasterpegel++;
   1140 A8 7B               945 	mov	r0,_bp
   1142 08                  946 	inc	r0
   1143 B6 FF 00            947 	cjne	@r0,#0xFF,00344$
   1146                     948 00344$:
   1146 50 06               949 	jnc	00168$
   1148 A8 7B               950 	mov	r0,_bp
   114A 08                  951 	inc	r0
   114B 06                  952 	inc	@r0
   114C 80 18               953 	sjmp	00175$
   114E                     954 00168$:
                            955 ;	../fb_in8.c:236: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   114E 20 18 03            956 	jb	b0,00166$
   1151 63 7A 81            957 	xrl	_status60,#0x81
   1154                     958 00166$:
                            959 ;	../fb_in8.c:237: tastergetoggelt=1;
   1154 D2 18               960 	setb	b0
   1156 80 0E               961 	sjmp	00175$
   1158                     962 00174$:
                            963 ;	../fb_in8.c:241: if(tasterpegel>0) tasterpegel--;
   1158 A8 7B               964 	mov	r0,_bp
   115A 08                  965 	inc	r0
   115B E6                  966 	mov	a,@r0
   115C 60 06               967 	jz	00171$
   115E A8 7B               968 	mov	r0,_bp
   1160 08                  969 	inc	r0
   1161 16                  970 	dec	@r0
   1162 80 02               971 	sjmp	00175$
   1164                     972 00171$:
                            973 ;	../fb_in8.c:242: else tastergetoggelt=0;
   1164 C2 18               974 	clr	b0
   1166                     975 00175$:
                            976 ;	../fb_in8.c:244: TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
   1166 E5 7A               977 	mov	a,_status60
   1168 54 01               978 	anl	a,#0x01
   116A FF                  979 	mov	r7,a
   116B B4 01 00            980 	cjne	a,#0x01,00348$
   116E                     981 00348$:
   116E E4                  982 	clr	a
   116F 33                  983 	rlc	a
   1170 FF                  984 	mov	r7,a
   1171 24 FF               985 	add	a,#0xff
   1173 92 97               986 	mov	_P1_7,c
                            987 ;	../fb_in8.c:246: } while(1);
   1175 02 0F 7B            988 	ljmp	00176$
   1178 15 81               989 	dec	sp
   117A D0 7B               990 	pop	_bp
   117C 22                  991 	ret
                            992 	.area CSEG    (CODE)
                            993 	.area CONST   (CODE)
   1B70                     994 _bitmask_1:
   1B70 01                  995 	.db #0x01	; 1
   1B71 02                  996 	.db #0x02	; 2
   1B72 04                  997 	.db #0x04	; 4
   1B73 08                  998 	.db #0x08	; 8
   1B74 10                  999 	.db #0x10	; 16
   1B75 20                 1000 	.db #0x20	; 32
   1B76 40                 1001 	.db #0x40	; 64
   1B77 80                 1002 	.db #0x80	; 128
                    01CE   1003 _space	=	0x01ce
                    1CFF   1004 _main_trimsave_1_43	=	0x1cff
                           1005 	.area XINIT   (CODE)
                           1006 	.area CABS    (ABS,CODE)
