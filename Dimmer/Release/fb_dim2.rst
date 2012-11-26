                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
                              4 ; This file was generated Sun Aug 14 13:56:16 2011
                              5 ;--------------------------------------------------------
                              6 	.module fb_dim2
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _schritttabelle
                             13 	.globl _basis
                             14 	.globl _hellikeit
                             15 	.globl _main
                             16 	.globl _tr0_int
                             17 	.globl _tastenauswertung
                             18 	.globl _P3_1
                             19 	.globl _P3_0
                             20 	.globl _P1_7
                             21 	.globl _P1_6
                             22 	.globl _P1_5
                             23 	.globl _P1_4
                             24 	.globl _P1_3
                             25 	.globl _P1_2
                             26 	.globl _P1_1
                             27 	.globl _P1_0
                             28 	.globl _P0_7
                             29 	.globl _P0_6
                             30 	.globl _P0_5
                             31 	.globl _P0_4
                             32 	.globl _P0_3
                             33 	.globl _P0_2
                             34 	.globl _P0_1
                             35 	.globl _P0_0
                             36 	.globl _I2CON_0
                             37 	.globl _I2CON_2
                             38 	.globl _I2CON_3
                             39 	.globl _I2CON_4
                             40 	.globl _I2CON_5
                             41 	.globl _I2CON_6
                             42 	.globl _SCON_7
                             43 	.globl _SCON_6
                             44 	.globl _SCON_5
                             45 	.globl _SCON_4
                             46 	.globl _SCON_3
                             47 	.globl _SCON_2
                             48 	.globl _SCON_1
                             49 	.globl _SCON_0
                             50 	.globl _IP0_0
                             51 	.globl _IP0_1
                             52 	.globl _IP0_2
                             53 	.globl _IP0_3
                             54 	.globl _IP0_4
                             55 	.globl _IP0_5
                             56 	.globl _IP0_6
                             57 	.globl _IP1_0
                             58 	.globl _IP1_1
                             59 	.globl _IP1_2
                             60 	.globl _IP1_6
                             61 	.globl _IEN1_0
                             62 	.globl _IEN1_1
                             63 	.globl _IEN1_2
                             64 	.globl _IEN0_0
                             65 	.globl _IEN0_1
                             66 	.globl _IEN0_2
                             67 	.globl _IEN0_3
                             68 	.globl _IEN0_4
                             69 	.globl _IEN0_5
                             70 	.globl _IEN0_6
                             71 	.globl _IEN0_7
                             72 	.globl _TCON_0
                             73 	.globl _TCON_1
                             74 	.globl _TCON_2
                             75 	.globl _TCON_3
                             76 	.globl _TCON_4
                             77 	.globl _TCON_5
                             78 	.globl _TCON_6
                             79 	.globl _TCON_7
                             80 	.globl _PSW_7
                             81 	.globl _PSW_6
                             82 	.globl _PSW_5
                             83 	.globl _PSW_4
                             84 	.globl _PSW_3
                             85 	.globl _PSW_2
                             86 	.globl _PSW_1
                             87 	.globl _PSW_0
                             88 	.globl _IEN1
                             89 	.globl _IP0H
                             90 	.globl _WFEED2
                             91 	.globl _WFEED1
                             92 	.globl _WDL
                             93 	.globl _WDCON
                             94 	.globl _TRIM
                             95 	.globl _TAMOD
                             96 	.globl _SSTAT
                             97 	.globl _RTCL
                             98 	.globl _RTCH
                             99 	.globl _RTCCON
                            100 	.globl _RSTSRC
                            101 	.globl _PT0AD
                            102 	.globl _PCONA
                            103 	.globl _P3M2
                            104 	.globl _P3M1
                            105 	.globl _P1M2
                            106 	.globl _P1M1
                            107 	.globl _P0M2
                            108 	.globl _P0M1
                            109 	.globl _KBPATN
                            110 	.globl _KBMASK
                            111 	.globl _KBCON
                            112 	.globl _IP1H
                            113 	.globl _IP1
                            114 	.globl _I2STAT
                            115 	.globl _I2SCLL
                            116 	.globl _I2SCLH
                            117 	.globl _I2DAT
                            118 	.globl _I2CON
                            119 	.globl _I2ADR
                            120 	.globl _FMDATA
                            121 	.globl _FMCON
                            122 	.globl _FMADRL
                            123 	.globl _FMADRH
                            124 	.globl _DIVM
                            125 	.globl _CMP2
                            126 	.globl _CMP1
                            127 	.globl _BRGCON
                            128 	.globl _BRGR1
                            129 	.globl _BRGR0
                            130 	.globl _SADEN
                            131 	.globl _SADDR
                            132 	.globl _AUXR1
                            133 	.globl _SBUF
                            134 	.globl _SCON
                            135 	.globl _IP0
                            136 	.globl _IEN0
                            137 	.globl _TH1
                            138 	.globl _TH0
                            139 	.globl _TL1
                            140 	.globl _TL0
                            141 	.globl _TMOD
                            142 	.globl _TCON
                            143 	.globl _PCON
                            144 	.globl _DPH
                            145 	.globl _DPL
                            146 	.globl _SP
                            147 	.globl _B
                            148 	.globl _ACC
                            149 	.globl _PSW
                            150 	.globl _P3
                            151 	.globl _P1
                            152 	.globl _P0
                            153 	.globl _schritt_zl_dim
                            154 	.globl _mtaste
                            155 	.globl _ctaste
                            156 	.globl _andimm_zl
                            157 	.globl _kanal_zl
                            158 	.globl _basis_zl
                            159 	.globl _faktor_zl
                            160 	.globl _ausschalthellikeit
                            161 	.globl _basis_dimmgeschwindikeit
                            162 	.globl _ie
                            163 	.globl _sperren
                            164 	.globl _mk
                            165 	.globl _einschathellikeit
                            166 	.globl _mindimmwert
                            167 	.globl _dimmwert
                            168 	.globl _dimm_I2C
                            169 	.globl _dimm_helldunkel
                            170 	.globl _anspringen
                            171 	.globl _helligkeittsstufe
                            172 	.globl _restart_app
                            173 ;--------------------------------------------------------
                            174 ; special function registers
                            175 ;--------------------------------------------------------
                            176 	.area RSEG    (DATA)
                    0080    177 _P0	=	0x0080
                    0090    178 _P1	=	0x0090
                    00B0    179 _P3	=	0x00b0
                    00D0    180 _PSW	=	0x00d0
                    00E0    181 _ACC	=	0x00e0
                    00F0    182 _B	=	0x00f0
                    0081    183 _SP	=	0x0081
                    0082    184 _DPL	=	0x0082
                    0083    185 _DPH	=	0x0083
                    0087    186 _PCON	=	0x0087
                    0088    187 _TCON	=	0x0088
                    0089    188 _TMOD	=	0x0089
                    008A    189 _TL0	=	0x008a
                    008B    190 _TL1	=	0x008b
                    008C    191 _TH0	=	0x008c
                    008D    192 _TH1	=	0x008d
                    00A8    193 _IEN0	=	0x00a8
                    00B8    194 _IP0	=	0x00b8
                    0098    195 _SCON	=	0x0098
                    0099    196 _SBUF	=	0x0099
                    00A2    197 _AUXR1	=	0x00a2
                    00A9    198 _SADDR	=	0x00a9
                    00B9    199 _SADEN	=	0x00b9
                    00BE    200 _BRGR0	=	0x00be
                    00BF    201 _BRGR1	=	0x00bf
                    00BD    202 _BRGCON	=	0x00bd
                    00AC    203 _CMP1	=	0x00ac
                    00AD    204 _CMP2	=	0x00ad
                    0095    205 _DIVM	=	0x0095
                    00E7    206 _FMADRH	=	0x00e7
                    00E6    207 _FMADRL	=	0x00e6
                    00E4    208 _FMCON	=	0x00e4
                    00E5    209 _FMDATA	=	0x00e5
                    00DB    210 _I2ADR	=	0x00db
                    00D8    211 _I2CON	=	0x00d8
                    00DA    212 _I2DAT	=	0x00da
                    00DD    213 _I2SCLH	=	0x00dd
                    00DC    214 _I2SCLL	=	0x00dc
                    00D9    215 _I2STAT	=	0x00d9
                    00F8    216 _IP1	=	0x00f8
                    00F7    217 _IP1H	=	0x00f7
                    0094    218 _KBCON	=	0x0094
                    0086    219 _KBMASK	=	0x0086
                    0093    220 _KBPATN	=	0x0093
                    0084    221 _P0M1	=	0x0084
                    0085    222 _P0M2	=	0x0085
                    0091    223 _P1M1	=	0x0091
                    0092    224 _P1M2	=	0x0092
                    00B1    225 _P3M1	=	0x00b1
                    00B2    226 _P3M2	=	0x00b2
                    00B5    227 _PCONA	=	0x00b5
                    00F6    228 _PT0AD	=	0x00f6
                    00DF    229 _RSTSRC	=	0x00df
                    00D1    230 _RTCCON	=	0x00d1
                    00D2    231 _RTCH	=	0x00d2
                    00D3    232 _RTCL	=	0x00d3
                    00BA    233 _SSTAT	=	0x00ba
                    008F    234 _TAMOD	=	0x008f
                    0096    235 _TRIM	=	0x0096
                    00A7    236 _WDCON	=	0x00a7
                    00C1    237 _WDL	=	0x00c1
                    00C2    238 _WFEED1	=	0x00c2
                    00C3    239 _WFEED2	=	0x00c3
                    00B7    240 _IP0H	=	0x00b7
                    00E8    241 _IEN1	=	0x00e8
                            242 ;--------------------------------------------------------
                            243 ; special function bits
                            244 ;--------------------------------------------------------
                            245 	.area RSEG    (DATA)
                    00D0    246 _PSW_0	=	0x00d0
                    00D1    247 _PSW_1	=	0x00d1
                    00D2    248 _PSW_2	=	0x00d2
                    00D3    249 _PSW_3	=	0x00d3
                    00D4    250 _PSW_4	=	0x00d4
                    00D5    251 _PSW_5	=	0x00d5
                    00D6    252 _PSW_6	=	0x00d6
                    00D7    253 _PSW_7	=	0x00d7
                    008F    254 _TCON_7	=	0x008f
                    008E    255 _TCON_6	=	0x008e
                    008D    256 _TCON_5	=	0x008d
                    008C    257 _TCON_4	=	0x008c
                    008B    258 _TCON_3	=	0x008b
                    008A    259 _TCON_2	=	0x008a
                    0089    260 _TCON_1	=	0x0089
                    0088    261 _TCON_0	=	0x0088
                    00AF    262 _IEN0_7	=	0x00af
                    00AE    263 _IEN0_6	=	0x00ae
                    00AD    264 _IEN0_5	=	0x00ad
                    00AC    265 _IEN0_4	=	0x00ac
                    00AB    266 _IEN0_3	=	0x00ab
                    00AA    267 _IEN0_2	=	0x00aa
                    00A9    268 _IEN0_1	=	0x00a9
                    00A8    269 _IEN0_0	=	0x00a8
                    00EA    270 _IEN1_2	=	0x00ea
                    00E9    271 _IEN1_1	=	0x00e9
                    00E8    272 _IEN1_0	=	0x00e8
                    00FE    273 _IP1_6	=	0x00fe
                    00FA    274 _IP1_2	=	0x00fa
                    00F9    275 _IP1_1	=	0x00f9
                    00F8    276 _IP1_0	=	0x00f8
                    00BE    277 _IP0_6	=	0x00be
                    00BD    278 _IP0_5	=	0x00bd
                    00BC    279 _IP0_4	=	0x00bc
                    00BB    280 _IP0_3	=	0x00bb
                    00BA    281 _IP0_2	=	0x00ba
                    00B9    282 _IP0_1	=	0x00b9
                    00B8    283 _IP0_0	=	0x00b8
                    0098    284 _SCON_0	=	0x0098
                    0099    285 _SCON_1	=	0x0099
                    009A    286 _SCON_2	=	0x009a
                    009B    287 _SCON_3	=	0x009b
                    009C    288 _SCON_4	=	0x009c
                    009D    289 _SCON_5	=	0x009d
                    009E    290 _SCON_6	=	0x009e
                    009F    291 _SCON_7	=	0x009f
                    00DE    292 _I2CON_6	=	0x00de
                    00DD    293 _I2CON_5	=	0x00dd
                    00DC    294 _I2CON_4	=	0x00dc
                    00DB    295 _I2CON_3	=	0x00db
                    00DA    296 _I2CON_2	=	0x00da
                    00D8    297 _I2CON_0	=	0x00d8
                    0080    298 _P0_0	=	0x0080
                    0081    299 _P0_1	=	0x0081
                    0082    300 _P0_2	=	0x0082
                    0083    301 _P0_3	=	0x0083
                    0084    302 _P0_4	=	0x0084
                    0085    303 _P0_5	=	0x0085
                    0086    304 _P0_6	=	0x0086
                    0087    305 _P0_7	=	0x0087
                    0090    306 _P1_0	=	0x0090
                    0091    307 _P1_1	=	0x0091
                    0092    308 _P1_2	=	0x0092
                    0093    309 _P1_3	=	0x0093
                    0094    310 _P1_4	=	0x0094
                    0095    311 _P1_5	=	0x0095
                    0096    312 _P1_6	=	0x0096
                    0097    313 _P1_7	=	0x0097
                    00B0    314 _P3_0	=	0x00b0
                    00B1    315 _P3_1	=	0x00b1
                            316 ;--------------------------------------------------------
                            317 ; overlayable register banks
                            318 ;--------------------------------------------------------
                            319 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     320 	.ds 8
                            321 ;--------------------------------------------------------
                            322 ; overlayable bit register bank
                            323 ;--------------------------------------------------------
                            324 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     325 bits:
   0021                     326 	.ds 1
                    8000    327 	b0 = bits[0]
                    8100    328 	b1 = bits[1]
                    8200    329 	b2 = bits[2]
                    8300    330 	b3 = bits[3]
                    8400    331 	b4 = bits[4]
                    8500    332 	b5 = bits[5]
                    8600    333 	b6 = bits[6]
                    8700    334 	b7 = bits[7]
                            335 ;--------------------------------------------------------
                            336 ; internal ram data
                            337 ;--------------------------------------------------------
                            338 	.area DSEG    (DATA)
   0022                     339 _anspringen::
   0022                     340 	.ds 2
   0024                     341 _dimm_helldunkel::
   0024                     342 	.ds 2
   0026                     343 _dimm_I2C::
   0026                     344 	.ds 2
   0028                     345 _dimmwert::
   0028                     346 	.ds 2
   002A                     347 _mindimmwert::
   002A                     348 	.ds 2
   002C                     349 _einschathellikeit::
   002C                     350 	.ds 2
   002E                     351 _mk::
   002E                     352 	.ds 2
   0030                     353 _sperren::
   0030                     354 	.ds 2
   0032                     355 _ie::
   0032                     356 	.ds 2
   0034                     357 _basis_dimmgeschwindikeit::
   0034                     358 	.ds 4
   0038                     359 _ausschalthellikeit::
   0038                     360 	.ds 2
   003A                     361 _faktor_zl::
   003A                     362 	.ds 2
   003C                     363 _basis_zl::
   003C                     364 	.ds 4
   0040                     365 _kanal_zl::
   0040                     366 	.ds 1
   0041                     367 _andimm_zl::
   0041                     368 	.ds 1
   0042                     369 _ctaste::
   0042                     370 	.ds 1
   0043                     371 _mtaste::
   0043                     372 	.ds 8
   004B                     373 _schritt_zl_dim::
   004B                     374 	.ds 2
                            375 ;--------------------------------------------------------
                            376 ; overlayable items in internal ram 
                            377 ;--------------------------------------------------------
                            378 	.area OSEG    (OVR,DATA)
                            379 ;--------------------------------------------------------
                            380 ; Stack segment in internal ram 
                            381 ;--------------------------------------------------------
                            382 	.area	SSEG	(DATA)
   0066                     383 __start__stack:
   0066                     384 	.ds	1
                            385 
                            386 ;--------------------------------------------------------
                            387 ; indirectly addressable internal ram data
                            388 ;--------------------------------------------------------
                            389 	.area ISEG    (DATA)
                            390 ;--------------------------------------------------------
                            391 ; absolute internal ram data
                            392 ;--------------------------------------------------------
                            393 	.area IABS    (ABS,DATA)
                            394 	.area IABS    (ABS,DATA)
                            395 ;--------------------------------------------------------
                            396 ; bit data
                            397 ;--------------------------------------------------------
                            398 	.area BSEG    (BIT)
                            399 ;--------------------------------------------------------
                            400 ; paged external ram data
                            401 ;--------------------------------------------------------
                            402 	.area PSEG    (PAG,XDATA)
                            403 ;--------------------------------------------------------
                            404 ; external ram data
                            405 ;--------------------------------------------------------
                            406 	.area XSEG    (XDATA)
                            407 ;--------------------------------------------------------
                            408 ; absolute external ram data
                            409 ;--------------------------------------------------------
                            410 	.area XABS    (ABS,XDATA)
                            411 ;--------------------------------------------------------
                            412 ; external initialized ram data
                            413 ;--------------------------------------------------------
                            414 	.area XISEG   (XDATA)
                            415 	.area HOME    (CODE)
                            416 	.area GSINIT0 (CODE)
                            417 	.area GSINIT1 (CODE)
                            418 	.area GSINIT2 (CODE)
                            419 	.area GSINIT3 (CODE)
                            420 	.area GSINIT4 (CODE)
                            421 	.area GSINIT5 (CODE)
                            422 	.area GSINIT  (CODE)
                            423 	.area GSFINAL (CODE)
                            424 	.area CSEG    (CODE)
                            425 ;--------------------------------------------------------
                            426 ; interrupt vector 
                            427 ;--------------------------------------------------------
                            428 	.area HOME    (CODE)
   0000                     429 __interrupt_vect:
   0000 02 00 23            430 	ljmp	__sdcc_gsinit_startup
   0003 32                  431 	reti
   0004                     432 	.ds	7
   000B 02 09 58            433 	ljmp	_tr0_int
   000E                     434 	.ds	5
   0013 02 0D 22            435 	ljmp	_ext_int0
   0016                     436 	.ds	5
   001B 02 0F D8            437 	ljmp	_timer1
                            438 ;--------------------------------------------------------
                            439 ; global & static initialisations
                            440 ;--------------------------------------------------------
                            441 	.area HOME    (CODE)
                            442 	.area GSINIT  (CODE)
                            443 	.area GSFINAL (CODE)
                            444 	.area GSINIT  (CODE)
                            445 	.globl __sdcc_gsinit_startup
                            446 	.globl __sdcc_program_startup
                            447 	.globl __start__stack
                            448 	.globl __mcs51_genXINIT
                            449 	.globl __mcs51_genXRAMCLEAR
                            450 	.globl __mcs51_genRAMCLEAR
                            451 ;	../fb_dim2.c:60: unsigned int ie=0;              // dimmer immer wieder aktualisieren
   007C E4                  452 	clr	a
   007D F5 32               453 	mov	_ie,a
   007F F5 33               454 	mov	(_ie + 1),a
                            455 ;	../fb_dim2.c:69: unsigned char kanal_zl=0;
   0081 75 40 00            456 	mov	_kanal_zl,#0x00
                            457 ;	../fb_dim2.c:70: unsigned char andimm_zl=0;
   0084 75 41 00            458 	mov	_andimm_zl,#0x00
                            459 	.area GSFINAL (CODE)
   0087 02 00 1E            460 	ljmp	__sdcc_program_startup
                            461 ;--------------------------------------------------------
                            462 ; Home
                            463 ;--------------------------------------------------------
                            464 	.area HOME    (CODE)
                            465 	.area HOME    (CODE)
   001E                     466 __sdcc_program_startup:
   001E 12 0B 81            467 	lcall	_main
                            468 ;	return from main will lock up
   0021 80 FE               469 	sjmp .
                            470 ;--------------------------------------------------------
                            471 ; code
                            472 ;--------------------------------------------------------
                            473 	.area CSEG    (CODE)
                            474 ;------------------------------------------------------------
                            475 ;Allocation info for local variables in function 'helligkeittsstufe'
                            476 ;------------------------------------------------------------
                            477 ;kanal                     Allocated to stack - offset -3
                            478 ;stufe                     Allocated to registers r2 
                            479 ;------------------------------------------------------------
                            480 ;	../fb_dim2.c:74: unsigned char helligkeittsstufe(unsigned char stufe,unsigned char kanal)//Stufe 0-c
                            481 ;	-----------------------------------------
                            482 ;	 function helligkeittsstufe
                            483 ;	-----------------------------------------
   0711                     484 _helligkeittsstufe:
                    0002    485 	ar2 = 0x02
                    0003    486 	ar3 = 0x03
                    0004    487 	ar4 = 0x04
                    0005    488 	ar5 = 0x05
                    0006    489 	ar6 = 0x06
                    0007    490 	ar7 = 0x07
                    0000    491 	ar0 = 0x00
                    0001    492 	ar1 = 0x01
   0711 C0 15               493 	push	_bp
   0713 85 81 15            494 	mov	_bp,sp
   0716 AA 82               495 	mov	r2,dpl
                            496 ;	../fb_dim2.c:76: if(stufe == 1)
   0718 BA 01 0D            497 	cjne	r2,#0x01,00102$
                            498 ;	../fb_dim2.c:77: return mindimmwert[kanal];
   071B A9 15               499 	mov	r1,_bp
   071D 19                  500 	dec	r1
   071E 19                  501 	dec	r1
   071F 19                  502 	dec	r1
   0720 E7                  503 	mov	a,@r1
   0721 24 2A               504 	add	a,#_mindimmwert
   0723 F8                  505 	mov	r0,a
   0724 86 82               506 	mov	dpl,@r0
   0726 80 20               507 	sjmp	00107$
   0728                     508 00102$:
                            509 ;	../fb_dim2.c:78: if(stufe == 0x0b)
   0728 BA 0B 05            510 	cjne	r2,#0x0B,00104$
                            511 ;	../fb_dim2.c:79: return MAXDIMMWERT;
   072B 75 82 FF            512 	mov	dpl,#0xFF
   072E 80 18               513 	sjmp	00107$
   0730                     514 00104$:
                            515 ;	../fb_dim2.c:80: if(stufe == 0x0c)
   0730 BA 0C 0D            516 	cjne	r2,#0x0C,00106$
                            517 ;	../fb_dim2.c:81: return ausschalthellikeit[kanal];
   0733 A9 15               518 	mov	r1,_bp
   0735 19                  519 	dec	r1
   0736 19                  520 	dec	r1
   0737 19                  521 	dec	r1
   0738 E7                  522 	mov	a,@r1
   0739 24 38               523 	add	a,#_ausschalthellikeit
   073B F8                  524 	mov	r0,a
   073C 86 82               525 	mov	dpl,@r0
   073E 80 08               526 	sjmp	00107$
   0740                     527 00106$:
                            528 ;	../fb_dim2.c:82: return hellikeit[stufe];
   0740 EA                  529 	mov	a,r2
   0741 90 17 72            530 	mov	dptr,#_hellikeit
   0744 93                  531 	movc	a,@a+dptr
   0745 FA                  532 	mov	r2,a
   0746 F5 82               533 	mov	dpl,a
   0748                     534 00107$:
   0748 D0 15               535 	pop	_bp
   074A 22                  536 	ret
                            537 ;------------------------------------------------------------
                            538 ;Allocation info for local variables in function 'restart_app'
                            539 ;------------------------------------------------------------
                            540 ;------------------------------------------------------------
                            541 ;	../fb_dim2.c:86: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
                            542 ;	-----------------------------------------
                            543 ;	 function restart_app
                            544 ;	-----------------------------------------
   074B                     545 _restart_app:
                            546 ;	../fb_dim2.c:89: TMOD&=0xf0;   //register für Timer 0 löschen
   074B 53 89 F0            547 	anl	_TMOD,#0xF0
                            548 ;	../fb_dim2.c:90: TMOD|=0x01;   // Timer 0 als reload, Timer 1 nicht ändern !
   074E 43 89 01            549 	orl	_TMOD,#0x01
                            550 ;	../fb_dim2.c:91: TAMOD&=0xf0;
   0751 53 8F F0            551 	anl	_TAMOD,#0xF0
                            552 ;	../fb_dim2.c:92: TH0 = 0xff;
   0754 75 8C FF            553 	mov	_TH0,#0xFF
                            554 ;	../fb_dim2.c:93: AUXR1&=~0x10;      // toggled whenever Timer0 overflows ausschalten
   0757 53 A2 EF            555 	anl	_AUXR1,#0xEF
                            556 ;	../fb_dim2.c:94: ET0=1;             // Interrupt für Timer 0 freigeben
   075A D2 A9               557 	setb	_IEN0_1
                            558 ;	../fb_dim2.c:95: TR0=1;             // Timer 0 starten
   075C D2 8C               559 	setb	_TCON_4
                            560 ;	../fb_dim2.c:96: EA=1;
   075E D2 AF               561 	setb	_IEN0_7
                            562 ;	../fb_dim2.c:98: Tval=0x00;
   0760 75 08 00            563 	mov	_Tval,#0x00
                            564 ;	../fb_dim2.c:100: P0M1=0xEE;            // Port 0 Modus push-pull für Ausgang nur PIN 0 und 4 Output
   0763 75 84 EE            565 	mov	_P0M1,#0xEE
                            566 ;	../fb_dim2.c:101: P0M2=0x11;            // nur PIN 0 und 4 Output
   0766 75 85 11            567 	mov	_P0M2,#0x11
                            568 ;	../fb_dim2.c:102: P0=0;
   0769 75 80 00            569 	mov	_P0,#0x00
                            570 ;	../fb_dim2.c:104: anspringen[0]=(eeprom[0xC6]&(1<<3))>>3;
   076C 90 1D C6            571 	mov	dptr,#(_eeprom + 0x00c6)
   076F E4                  572 	clr	a
   0770 93                  573 	movc	a,@a+dptr
   0771 54 08               574 	anl	a,#0x08
   0773 C4                  575 	swap	a
   0774 23                  576 	rl	a
   0775 54 1F               577 	anl	a,#0x1f
   0777 FA                  578 	mov	r2,a
   0778 8A 22               579 	mov	_anspringen,r2
                            580 ;	../fb_dim2.c:105: anspringen[1]=(eeprom[0xC6]&(1<<7))>>7;
   077A 90 1D C6            581 	mov	dptr,#(_eeprom + 0x00c6)
   077D E4                  582 	clr	a
   077E 93                  583 	movc	a,@a+dptr
   077F 54 80               584 	anl	a,#0x80
   0781 23                  585 	rl	a
   0782 54 01               586 	anl	a,#0x01
   0784 FA                  587 	mov	r2,a
   0785 8A 23               588 	mov	(_anspringen + 0x0001),r2
                            589 ;	../fb_dim2.c:106: einschathellikeit[0]=eeprom[0xC4]&0x0f;       //wert 0 - 0x0c
   0787 90 1D C4            590 	mov	dptr,#(_eeprom + 0x00c4)
   078A E4                  591 	clr	a
   078B 93                  592 	movc	a,@a+dptr
   078C FA                  593 	mov	r2,a
   078D 74 0F               594 	mov	a,#0x0F
   078F 5A                  595 	anl	a,r2
   0790 F5 2C               596 	mov	_einschathellikeit,a
                            597 ;	../fb_dim2.c:107: einschathellikeit[1]=eeprom[0xC4]>>4;         //wert 0 - 0x0c
   0792 90 1D C4            598 	mov	dptr,#(_eeprom + 0x00c4)
   0795 E4                  599 	clr	a
   0796 93                  600 	movc	a,@a+dptr
   0797 C4                  601 	swap	a
   0798 54 0F               602 	anl	a,#0x0f
   079A FA                  603 	mov	r2,a
   079B 8A 2D               604 	mov	(_einschathellikeit + 0x0001),r2
                            605 ;	../fb_dim2.c:108: dimmwert[0]=helligkeittsstufe(eeprom[0xe2]&0x0f,0);     //Verhalten bei Busspannungswiederkehr
   079D 90 1D E2            606 	mov	dptr,#(_eeprom + 0x00e2)
   07A0 E4                  607 	clr	a
   07A1 93                  608 	movc	a,@a+dptr
   07A2 FA                  609 	mov	r2,a
   07A3 74 0F               610 	mov	a,#0x0F
   07A5 5A                  611 	anl	a,r2
   07A6 F5 82               612 	mov	dpl,a
   07A8 E4                  613 	clr	a
   07A9 C0 E0               614 	push	acc
   07AB 12 07 11            615 	lcall	_helligkeittsstufe
   07AE AA 82               616 	mov	r2,dpl
   07B0 15 81               617 	dec	sp
   07B2 8A 28               618 	mov	_dimmwert,r2
                            619 ;	../fb_dim2.c:109: dimmwert[1]=helligkeittsstufe((eeprom[0xe2]>>4)&0x0f,1);//Verhalten bei Busspannungswiederkehr
   07B4 90 1D E2            620 	mov	dptr,#(_eeprom + 0x00e2)
   07B7 E4                  621 	clr	a
   07B8 93                  622 	movc	a,@a+dptr
   07B9 C4                  623 	swap	a
   07BA 54 0F               624 	anl	a,#0x0f
   07BC FA                  625 	mov	r2,a
   07BD 74 0F               626 	mov	a,#0x0F
   07BF 5A                  627 	anl	a,r2
   07C0 F5 82               628 	mov	dpl,a
   07C2 74 01               629 	mov	a,#0x01
   07C4 C0 E0               630 	push	acc
   07C6 12 07 11            631 	lcall	_helligkeittsstufe
   07C9 AA 82               632 	mov	r2,dpl
   07CB 15 81               633 	dec	sp
   07CD 8A 29               634 	mov	(_dimmwert + 0x0001),r2
                            635 ;	../fb_dim2.c:110: mindimmwert[0]=(eeprom[0xc2]&0x0f)*15+30;
   07CF 90 1D C2            636 	mov	dptr,#(_eeprom + 0x00c2)
   07D2 E4                  637 	clr	a
   07D3 93                  638 	movc	a,@a+dptr
   07D4 FA                  639 	mov	r2,a
   07D5 74 0F               640 	mov	a,#0x0F
   07D7 5A                  641 	anl	a,r2
   07D8 75 F0 0F            642 	mov	b,#0x0F
   07DB A4                  643 	mul	ab
   07DC 24 1E               644 	add	a,#0x1E
   07DE F5 2A               645 	mov	_mindimmwert,a
                            646 ;	../fb_dim2.c:111: mindimmwert[1]=(eeprom[0xc2]>>4)*15+30;
   07E0 90 1D C2            647 	mov	dptr,#(_eeprom + 0x00c2)
   07E3 E4                  648 	clr	a
   07E4 93                  649 	movc	a,@a+dptr
   07E5 C4                  650 	swap	a
   07E6 54 0F               651 	anl	a,#0x0f
   07E8 75 F0 0F            652 	mov	b,#0x0F
   07EB A4                  653 	mul	ab
   07EC 24 1E               654 	add	a,#0x1E
   07EE F5 2B               655 	mov	(_mindimmwert + 0x0001),a
                            656 ;	../fb_dim2.c:113: basis_dimmgeschwindikeit[0]=basis[(eeprom[0xC6]&0x07)];
   07F0 90 1D C6            657 	mov	dptr,#(_eeprom + 0x00c6)
   07F3 E4                  658 	clr	a
   07F4 93                  659 	movc	a,@a+dptr
   07F5 54 07               660 	anl	a,#0x07
   07F7 25 E0               661 	add	a,acc
   07F9 FA                  662 	mov	r2,a
   07FA 90 17 7F            663 	mov	dptr,#_basis
   07FD 93                  664 	movc	a,@a+dptr
   07FE CA                  665 	xch	a,r2
   07FF A3                  666 	inc	dptr
   0800 93                  667 	movc	a,@a+dptr
   0801 FB                  668 	mov	r3,a
   0802 8A 34               669 	mov	_basis_dimmgeschwindikeit,r2
   0804 8B 35               670 	mov	(_basis_dimmgeschwindikeit + 1),r3
                            671 ;	../fb_dim2.c:114: basis_dimmgeschwindikeit[1]=basis[(eeprom[0xC6]>>4)&0x07];
   0806 90 1D C6            672 	mov	dptr,#(_eeprom + 0x00c6)
   0809 E4                  673 	clr	a
   080A 93                  674 	movc	a,@a+dptr
   080B C4                  675 	swap	a
   080C 54 07               676 	anl	a,#(0x0f&0x07)
   080E 25 E0               677 	add	a,acc
   0810 FA                  678 	mov	r2,a
   0811 90 17 7F            679 	mov	dptr,#_basis
   0814 93                  680 	movc	a,@a+dptr
   0815 CA                  681 	xch	a,r2
   0816 A3                  682 	inc	dptr
   0817 93                  683 	movc	a,@a+dptr
   0818 FB                  684 	mov	r3,a
   0819 8A 36               685 	mov	(_basis_dimmgeschwindikeit + 0x0002),r2
   081B 8B 37               686 	mov	((_basis_dimmgeschwindikeit + 0x0002) + 1),r3
                            687 ;	../fb_dim2.c:122: EA=0;
   081D C2 AF               688 	clr	_IEN0_7
                            689 ;	../fb_dim2.c:123: START_WRITECYCLE
   081F 75 E4 00            690 	mov	_FMCON,#0x00
                            691 ;	../fb_dim2.c:124: WRITE_BYTE(0x01,0x03,0x00);	// Herstellercode 0x0004 = Jung 0x0008 = Gira
   0822 75 E7 1D            692 	mov	_FMADRH,#0x1D
   0825 75 E6 03            693 	mov	_FMADRL,#0x03
   0828 75 E5 00            694 	mov	_FMDATA,#0x00
                            695 ;	../fb_dim2.c:125: WRITE_BYTE(0x01,0x04,0x08);
   082B 75 E7 1D            696 	mov	_FMADRH,#0x1D
   082E 75 E6 04            697 	mov	_FMADRL,#0x04
   0831 75 E5 08            698 	mov	_FMDATA,#0x08
                            699 ;	../fb_dim2.c:126: WRITE_BYTE(0x01,0x05,0x30);	// Device Type (2038.10) 2060h (0x3015 gira 1032)
   0834 75 E7 1D            700 	mov	_FMADRH,#0x1D
   0837 75 E6 05            701 	mov	_FMADRL,#0x05
   083A 75 E5 30            702 	mov	_FMDATA,#0x30
                            703 ;	../fb_dim2.c:127: WRITE_BYTE(0x01,0x06,0x15);	// 	"	"	"
   083D 75 E7 1D            704 	mov	_FMADRH,#0x1D
   0840 75 E6 06            705 	mov	_FMADRL,#0x06
   0843 75 E5 15            706 	mov	_FMDATA,#0x15
                            707 ;	../fb_dim2.c:128: WRITE_BYTE(0x01,0x07,0x01);	// Versionsnummer
   0846 75 E7 1D            708 	mov	_FMADRH,#0x1D
   0849 75 E6 07            709 	mov	_FMADRL,#0x07
   084C 75 E5 01            710 	mov	_FMDATA,#0x01
                            711 ;	../fb_dim2.c:129: WRITE_BYTE(0x01,0x0C,0x00);	// PORT A Direction Bit Setting
   084F 75 E7 1D            712 	mov	_FMADRH,#0x1D
   0852 75 E6 0C            713 	mov	_FMADRL,#0x0C
   0855 75 E5 00            714 	mov	_FMDATA,#0x00
                            715 ;	../fb_dim2.c:130: WRITE_BYTE(0x01,0x0D,0xFF);	// Run-Status (00=stop FF=run)
   0858 75 E7 1D            716 	mov	_FMADRH,#0x1D
   085B 75 E6 0D            717 	mov	_FMADRL,#0x0D
   085E 75 E5 FF            718 	mov	_FMDATA,#0xFF
                            719 ;	../fb_dim2.c:131: WRITE_BYTE(0x01,COMMSTABPTR,0x8a);	// COMMSTAB Pointer
   0861 75 E7 1D            720 	mov	_FMADRH,#0x1D
   0864 75 E6 12            721 	mov	_FMADRL,#0x12
   0867 75 E5 8A            722 	mov	_FMDATA,#0x8A
                            723 ;	../fb_dim2.c:132: STOP_WRITECYCLE
   086A 75 E4 68            724 	mov	_FMCON,#0x68
                            725 ;	../fb_dim2.c:133: START_WRITECYCLE;
   086D 75 E4 00            726 	mov	_FMCON,#0x00
                            727 ;	../fb_dim2.c:134: WRITE_BYTE(0x00,0x60,0x2E);     // system state: all layers active (run), not in prog mode
   0870 75 E7 1C            728 	mov	_FMADRH,#0x1C
   0873 75 E6 60            729 	mov	_FMADRL,#0x60
   0876 75 E5 2E            730 	mov	_FMDATA,#0x2E
                            731 ;	../fb_dim2.c:135: STOP_WRITECYCLE;
   0879 75 E4 68            732 	mov	_FMCON,#0x68
                            733 ;	../fb_dim2.c:136: EA=1;
   087C D2 AF               734 	setb	_IEN0_7
   087E 22                  735 	ret
                            736 ;------------------------------------------------------------
                            737 ;Allocation info for local variables in function 'tastenauswertung'
                            738 ;------------------------------------------------------------
                            739 ;retp0                     Allocated to registers r2 
                            740 ;------------------------------------------------------------
                            741 ;	../fb_dim2.c:142: void tastenauswertung(void)
                            742 ;	-----------------------------------------
                            743 ;	 function tastenauswertung
                            744 ;	-----------------------------------------
   087F                     745 _tastenauswertung:
                            746 ;	../fb_dim2.c:144: unsigned char retp0=P0;//port 0 merken
   087F AA 80               747 	mov	r2,_P0
                            748 ;	../fb_dim2.c:145: P3_0=0;                //SCL damit i2c nicht meckert
   0881 C2 B0               749 	clr	_P3_0
                            750 ;	../fb_dim2.c:146: P0=0;
   0883 75 80 00            751 	mov	_P0,#0x00
                            752 ;	../fb_dim2.c:147: if(ctaste<6)           //0 bis 5
   0886 74 FA               753 	mov	a,#0x100 - 0x06
   0888 25 42               754 	add	a,_ctaste
   088A 40 04               755 	jc	00102$
                            756 ;	../fb_dim2.c:148: ctaste++;
   088C 05 42               757 	inc	_ctaste
   088E 80 03               758 	sjmp	00103$
   0890                     759 00102$:
                            760 ;	../fb_dim2.c:149: else ctaste=0;
   0890 75 42 00            761 	mov	_ctaste,#0x00
   0893                     762 00103$:
                            763 ;	../fb_dim2.c:150: P0M1=~(1<<ctaste);    // Port 0  PIN Output
   0893 85 42 F0            764 	mov	b,_ctaste
   0896 05 F0               765 	inc	b
   0898 74 01               766 	mov	a,#0x01
   089A 80 02               767 	sjmp	00163$
   089C                     768 00161$:
   089C 25 E0               769 	add	a,acc
   089E                     770 00163$:
   089E D5 F0 FB            771 	djnz	b,00161$
   08A1 FB                  772 	mov	r3,a
   08A2 F4                  773 	cpl	a
   08A3 FC                  774 	mov	r4,a
   08A4 8C 84               775 	mov	_P0M1,r4
                            776 ;	../fb_dim2.c:151: P0M2=(1<<ctaste);
   08A6 8B 85               777 	mov	_P0M2,r3
                            778 ;	../fb_dim2.c:152: P0=~(1<<ctaste);      //nur eine Taste aktivieren
   08A8 8C 80               779 	mov	_P0,r4
   08AA 20 93 41            780 	jb	_P1_3,00138$
                            781 ;	../fb_dim2.c:155: if(mtaste[ctaste]<254)  mtaste[ctaste]++;
   08AD E5 42               782 	mov	a,_ctaste
   08AF 24 43               783 	add	a,#_mtaste
   08B1 F8                  784 	mov	r0,a
   08B2 86 03               785 	mov	ar3,@r0
   08B4 BB FE 00            786 	cjne	r3,#0xFE,00165$
   08B7                     787 00165$:
   08B7 50 03               788 	jnc	00105$
   08B9 EB                  789 	mov	a,r3
   08BA 04                  790 	inc	a
   08BB F6                  791 	mov	@r0,a
   08BC                     792 00105$:
                            793 ;	../fb_dim2.c:156: if(mtaste[ctaste]==200) //langer tastendruck
   08BC 86 03               794 	mov	ar3,@r0
   08BE BB C8 02            795 	cjne	r3,#0xC8,00167$
   08C1 80 03               796 	sjmp	00168$
   08C3                     797 00167$:
   08C3 02 09 4B            798 	ljmp	00139$
   08C6                     799 00168$:
                            800 ;	../fb_dim2.c:158: if(ctaste==1)
   08C6 74 01               801 	mov	a,#0x01
   08C8 B5 42 03            802 	cjne	a,_ctaste,00107$
                            803 ;	../fb_dim2.c:159: dimm_helldunkel[0]=9;
   08CB 75 24 09            804 	mov	_dimm_helldunkel,#0x09
   08CE                     805 00107$:
                            806 ;	../fb_dim2.c:160: if(ctaste==2)
   08CE 74 02               807 	mov	a,#0x02
   08D0 B5 42 03            808 	cjne	a,_ctaste,00109$
                            809 ;	../fb_dim2.c:161: dimm_helldunkel[0]=1;
   08D3 75 24 01            810 	mov	_dimm_helldunkel,#0x01
   08D6                     811 00109$:
                            812 ;	../fb_dim2.c:162: if(ctaste==5)
   08D6 74 05               813 	mov	a,#0x05
   08D8 B5 42 03            814 	cjne	a,_ctaste,00111$
                            815 ;	../fb_dim2.c:163: dimm_helldunkel[1]=9;
   08DB 75 25 09            816 	mov	(_dimm_helldunkel + 0x0001),#0x09
   08DE                     817 00111$:
                            818 ;	../fb_dim2.c:164: if(ctaste==6)
   08DE 74 06               819 	mov	a,#0x06
   08E0 B5 42 02            820 	cjne	a,_ctaste,00175$
   08E3 80 03               821 	sjmp	00176$
   08E5                     822 00175$:
   08E5 02 09 4B            823 	ljmp	00139$
   08E8                     824 00176$:
                            825 ;	../fb_dim2.c:165: dimm_helldunkel[1]=1;
   08E8 75 25 01            826 	mov	(_dimm_helldunkel + 0x0001),#0x01
   08EB 02 09 4B            827 	ljmp	00139$
   08EE                     828 00138$:
                            829 ;	../fb_dim2.c:171: if(mtaste[ctaste]>20)
   08EE E5 42               830 	mov	a,_ctaste
   08F0 24 43               831 	add	a,#_mtaste
   08F2 F8                  832 	mov	r0,a
   08F3 86 03               833 	mov	ar3,@r0
   08F5 C3                  834 	clr	c
   08F6 74 14               835 	mov	a,#0x14
   08F8 9B                  836 	subb	a,r3
   08F9 E4                  837 	clr	a
   08FA 33                  838 	rlc	a
   08FB FC                  839 	mov	r4,a
   08FC 60 4B               840 	jz	00136$
                            841 ;	../fb_dim2.c:173: if(mtaste[ctaste]>20&&mtaste[ctaste]<200) //kurzer tastendruck mit Tastenprellung
   08FE EC                  842 	mov	a,r4
   08FF 60 25               843 	jz	00125$
   0901 BB C8 00            844 	cjne	r3,#0xC8,00179$
   0904                     845 00179$:
   0904 50 20               846 	jnc	00125$
                            847 ;	../fb_dim2.c:175: if(ctaste==1) dimmwert[0]=0xff;
   0906 74 01               848 	mov	a,#0x01
   0908 B5 42 03            849 	cjne	a,_ctaste,00117$
   090B 75 28 FF            850 	mov	_dimmwert,#0xFF
   090E                     851 00117$:
                            852 ;	../fb_dim2.c:176: if(ctaste==2) dimmwert[0]=0x0;
   090E 74 02               853 	mov	a,#0x02
   0910 B5 42 03            854 	cjne	a,_ctaste,00119$
   0913 75 28 00            855 	mov	_dimmwert,#0x00
   0916                     856 00119$:
                            857 ;	../fb_dim2.c:177: if(ctaste==5) dimmwert[1]=0xff;
   0916 74 05               858 	mov	a,#0x05
   0918 B5 42 03            859 	cjne	a,_ctaste,00121$
   091B 75 29 FF            860 	mov	(_dimmwert + 0x0001),#0xFF
   091E                     861 00121$:
                            862 ;	../fb_dim2.c:178: if(ctaste==6) dimmwert[1]=0x0;
   091E 74 06               863 	mov	a,#0x06
   0920 B5 42 03            864 	cjne	a,_ctaste,00125$
   0923 75 29 00            865 	mov	(_dimmwert + 0x0001),#0x00
   0926                     866 00125$:
                            867 ;	../fb_dim2.c:180: if(mtaste[ctaste]>199) //langer tastendruck
   0926 EB                  868 	mov	a,r3
   0927 24 38               869 	add	a,#0xff - 0xC7
   0929 50 0F               870 	jnc	00131$
                            871 ;	../fb_dim2.c:181: if(ctaste==1||ctaste==2)
   092B 74 01               872 	mov	a,#0x01
   092D B5 42 02            873 	cjne	a,_ctaste,00190$
   0930 80 05               874 	sjmp	00127$
   0932                     875 00190$:
   0932 74 02               876 	mov	a,#0x02
   0934 B5 42 03            877 	cjne	a,_ctaste,00131$
   0937                     878 00127$:
                            879 ;	../fb_dim2.c:182: dimm_helldunkel[0]=0;
   0937 75 24 00            880 	mov	_dimm_helldunkel,#0x00
   093A                     881 00131$:
                            882 ;	../fb_dim2.c:183: if(ctaste==5||ctaste==6)
   093A 74 05               883 	mov	a,#0x05
   093C B5 42 02            884 	cjne	a,_ctaste,00193$
   093F 80 05               885 	sjmp	00132$
   0941                     886 00193$:
   0941 74 06               887 	mov	a,#0x06
   0943 B5 42 03            888 	cjne	a,_ctaste,00136$
   0946                     889 00132$:
                            890 ;	../fb_dim2.c:184: dimm_helldunkel[1]=0;
   0946 75 25 00            891 	mov	(_dimm_helldunkel + 0x0001),#0x00
   0949                     892 00136$:
                            893 ;	../fb_dim2.c:186: mtaste[ctaste]=0;
   0949 76 00               894 	mov	@r0,#0x00
   094B                     895 00139$:
                            896 ;	../fb_dim2.c:188: P0=retp0;
   094B 8A 80               897 	mov	_P0,r2
                            898 ;	../fb_dim2.c:190: P0M1=0x00;    //ee   // Port 0  PIN 0 und 4 Output
   094D 75 84 00            899 	mov	_P0M1,#0x00
                            900 ;	../fb_dim2.c:191: P0M2=0xFF;    //11
   0950 75 85 FF            901 	mov	_P0M2,#0xFF
                            902 ;	../fb_dim2.c:192: P3_1=1;       //SDA damit i2c nicht meckert
   0953 D2 B1               903 	setb	_P3_1
                            904 ;	../fb_dim2.c:193: P3_0=1;       //SCL damit i2c nicht meckert
   0955 D2 B0               905 	setb	_P3_0
   0957 22                  906 	ret
                            907 ;------------------------------------------------------------
                            908 ;Allocation info for local variables in function 'tr0_int'
                            909 ;------------------------------------------------------------
                            910 ;------------------------------------------------------------
                            911 ;	../fb_dim2.c:198: void tr0_int(void) interrupt 1         //n=nummer 0x03+8*n
                            912 ;	-----------------------------------------
                            913 ;	 function tr0_int
                            914 ;	-----------------------------------------
   0958                     915 _tr0_int:
   0958 C0 21               916 	push	bits
   095A C0 E0               917 	push	acc
   095C C0 F0               918 	push	b
   095E C0 82               919 	push	dpl
   0960 C0 83               920 	push	dph
   0962 C0 02               921 	push	(0+2)
   0964 C0 03               922 	push	(0+3)
   0966 C0 04               923 	push	(0+4)
   0968 C0 05               924 	push	(0+5)
   096A C0 06               925 	push	(0+6)
   096C C0 07               926 	push	(0+7)
   096E C0 00               927 	push	(0+0)
   0970 C0 01               928 	push	(0+1)
   0972 C0 D0               929 	push	psw
   0974 75 D0 00            930 	mov	psw,#0x00
                            931 ;	../fb_dim2.c:201: TL0=0x09;     // timer mit H=0xf9 L=0x09 2KHz = 0,5ms
   0977 75 8A 09            932 	mov	_TL0,#0x09
                            933 ;	../fb_dim2.c:202: TH0=0xf9;     // timer mit 0xb7 200HZ = 5ms
   097A 75 8C F9            934 	mov	_TH0,#0xF9
                            935 ;	../fb_dim2.c:204: tastenauswertung();
   097D 12 08 7F            936 	lcall	_tastenauswertung
                            937 ;	../fb_dim2.c:205: P0_3=(dimm_I2C[0])?1:0;     //LED_zeile K1
   0980 E5 26               938 	mov	a,_dimm_I2C
   0982 FA                  939 	mov	r2,a
   0983 24 FF               940 	add	a,#0xff
   0985 92 83               941 	mov	_P0_3,c
                            942 ;	../fb_dim2.c:206: if(dimm_I2C[0]>75) P0_2=1;
   0987 EA                  943 	mov	a,r2
   0988 24 B4               944 	add	a,#0xff - 0x4B
                            945 ;	../fb_dim2.c:207: else P0_2=0;
   098A 92 82               946 	mov	_P0_2,c
                            947 ;	../fb_dim2.c:208: if(dimm_I2C[0]>125) P0_1=1;
   098C EA                  948 	mov	a,r2
   098D 24 82               949 	add	a,#0xff - 0x7D
                            950 ;	../fb_dim2.c:209: else P0_1=0;
   098F 92 81               951 	mov	_P0_1,c
                            952 ;	../fb_dim2.c:210: if(dimm_I2C[0]>220) P0_0=1;
   0991 EA                  953 	mov	a,r2
   0992 24 23               954 	add	a,#0xff - 0xDC
                            955 ;	../fb_dim2.c:211: else P0_0=0;
   0994 92 80               956 	mov	_P0_0,c
                            957 ;	../fb_dim2.c:213: P0_7=(dimm_I2C[1])?1:0;     //LED_zeile K2
   0996 E5 27               958 	mov	a,(_dimm_I2C + 0x0001)
   0998 FB                  959 	mov	r3,a
   0999 24 FF               960 	add	a,#0xff
   099B 92 87               961 	mov	_P0_7,c
                            962 ;	../fb_dim2.c:214: if(dimm_I2C[1]>75) P0_6=1;
   099D EB                  963 	mov	a,r3
   099E 24 B4               964 	add	a,#0xff - 0x4B
                            965 ;	../fb_dim2.c:215: else P0_6=0;
   09A0 92 86               966 	mov	_P0_6,c
                            967 ;	../fb_dim2.c:216: if(dimm_I2C[1]>125) P0_5=1;
   09A2 EB                  968 	mov	a,r3
   09A3 24 82               969 	add	a,#0xff - 0x7D
                            970 ;	../fb_dim2.c:217: else P0_5=0;
   09A5 92 85               971 	mov	_P0_5,c
                            972 ;	../fb_dim2.c:218: if(dimm_I2C[1]>220) P0_4=1;
   09A7 EB                  973 	mov	a,r3
   09A8 24 23               974 	add	a,#0xff - 0xDC
                            975 ;	../fb_dim2.c:219: else P0_4=0;
   09AA 92 84               976 	mov	_P0_4,c
                            977 ;	../fb_dim2.c:221: if(ie<40000)                   //interwallmäsiges senden kann evetuel raus
   09AC AC 32               978 	mov	r4,_ie
   09AE AD 33               979 	mov	r5,(_ie + 1)
   09B0 7E 00               980 	mov	r6,#0x00
   09B2 7F 00               981 	mov	r7,#0x00
   09B4 C3                  982 	clr	c
   09B5 EC                  983 	mov	a,r4
   09B6 94 40               984 	subb	a,#0x40
   09B8 ED                  985 	mov	a,r5
   09B9 94 9C               986 	subb	a,#0x9C
   09BB EE                  987 	mov	a,r6
   09BC 94 00               988 	subb	a,#0x00
   09BE EF                  989 	mov	a,r7
   09BF 64 80               990 	xrl	a,#0x80
   09C1 94 80               991 	subb	a,#0x80
   09C3 50 0A               992 	jnc	00120$
                            993 ;	../fb_dim2.c:222: ++ie;
   09C5 05 32               994 	inc	_ie
   09C7 E4                  995 	clr	a
   09C8 B5 32 12            996 	cjne	a,_ie,00121$
   09CB 05 33               997 	inc	(_ie + 1)
   09CD 80 0E               998 	sjmp	00121$
   09CF                     999 00120$:
                           1000 ;	../fb_dim2.c:225: i2c_send_daten(dimm_I2C[0],dimm_I2C[1]);
   09CF C0 03              1001 	push	ar3
   09D1 8A 82              1002 	mov	dpl,r2
   09D3 12 0F 2B           1003 	lcall	_i2c_send_daten
   09D6 15 81              1004 	dec	sp
                           1005 ;	../fb_dim2.c:226: ie=0;
   09D8 E4                 1006 	clr	a
   09D9 F5 32              1007 	mov	_ie,a
   09DB F5 33              1008 	mov	(_ie + 1),a
   09DD                    1009 00121$:
                           1010 ;	../fb_dim2.c:229: if(dimm_I2C[0]!=mk[0]||dimm_I2C[1]!=mk[1])   //i2c übertragen
   09DD E5 26              1011 	mov	a,_dimm_I2C
   09DF FA                 1012 	mov	r2,a
   09E0 B5 2E 07           1013 	cjne	a,_mk,00122$
   09E3 E5 2F              1014 	mov	a,(_mk + 0x0001)
   09E5 B5 27 02           1015 	cjne	a,(_dimm_I2C + 0x0001),00202$
   09E8 80 13              1016 	sjmp	00123$
   09EA                    1017 00202$:
   09EA                    1018 00122$:
                           1019 ;	../fb_dim2.c:238: ie=0;
   09EA E4                 1020 	clr	a
   09EB F5 32              1021 	mov	_ie,a
   09ED F5 33              1022 	mov	(_ie + 1),a
                           1023 ;	../fb_dim2.c:239: mk[0]=dimm_I2C[0];
   09EF 8A 2E              1024 	mov	_mk,r2
                           1025 ;	../fb_dim2.c:240: mk[1]=dimm_I2C[1];
   09F1 85 27 2F           1026 	mov	(_mk + 0x0001),(_dimm_I2C + 0x0001)
                           1027 ;	../fb_dim2.c:241: i2c_send_daten(dimm_I2C[0],dimm_I2C[1]);
   09F4 C0 27              1028 	push	(_dimm_I2C + 0x0001)
   09F6 8A 82              1029 	mov	dpl,r2
   09F8 12 0F 2B           1030 	lcall	_i2c_send_daten
   09FB 15 81              1031 	dec	sp
   09FD                    1032 00123$:
                           1033 ;	../fb_dim2.c:244: if(anspringen[0])
   09FD E5 22              1034 	mov	a,_anspringen
   09FF 60 03              1035 	jz	00126$
                           1036 ;	../fb_dim2.c:245: dimm_I2C[0]=dimmwert[0];  //anspringen vom wert K1
   0A01 85 28 26           1037 	mov	_dimm_I2C,_dimmwert
   0A04                    1038 00126$:
                           1039 ;	../fb_dim2.c:246: if(anspringen[1])
   0A04 E5 23              1040 	mov	a,(_anspringen + 0x0001)
   0A06 60 03              1041 	jz	00128$
                           1042 ;	../fb_dim2.c:247: dimm_I2C[1]=dimmwert[1];  //anspringen vom wert K2
   0A08 85 29 27           1043 	mov	(_dimm_I2C + 0x0001),(_dimmwert + 0x0001)
   0A0B                    1044 00128$:
                           1045 ;	../fb_dim2.c:249: if(andimm_zl>8)                    //andimmern vom wert
   0A0B E5 41              1046 	mov	a,_andimm_zl
   0A0D 24 F7              1047 	add	a,#0xff - 0x08
   0A0F 50 5B              1048 	jnc	00139$
                           1049 ;	../fb_dim2.c:251: andimm_zl=0;
   0A11 75 41 00           1050 	mov	_andimm_zl,#0x00
                           1051 ;	../fb_dim2.c:252: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)
   0A14 75 40 00           1052 	mov	_kanal_zl,#0x00
   0A17                    1053 00155$:
   0A17 74 FE              1054 	mov	a,#0x100 - 0x02
   0A19 25 40              1055 	add	a,_kanal_zl
   0A1B 40 51              1056 	jc	00140$
                           1057 ;	../fb_dim2.c:254: if(dimmwert[kanal_zl]!=dimm_I2C[kanal_zl])        //andimmern von wert
   0A1D E5 40              1058 	mov	a,_kanal_zl
   0A1F 24 28              1059 	add	a,#_dimmwert
   0A21 F8                 1060 	mov	r0,a
   0A22 86 02              1061 	mov	ar2,@r0
   0A24 E5 40              1062 	mov	a,_kanal_zl
   0A26 24 26              1063 	add	a,#_dimm_I2C
   0A28 F8                 1064 	mov	r0,a
   0A29 86 03              1065 	mov	ar3,@r0
   0A2B EA                 1066 	mov	a,r2
   0A2C B5 03 02           1067 	cjne	a,ar3,00207$
   0A2F 80 37              1068 	sjmp	00157$
   0A31                    1069 00207$:
                           1070 ;	../fb_dim2.c:256: if(dimm_I2C[kanal_zl] > dimmwert[kanal_zl])    //dunkler andimmen
   0A31 C3                 1071 	clr	c
   0A32 EA                 1072 	mov	a,r2
   0A33 9B                 1073 	subb	a,r3
   0A34 50 03              1074 	jnc	00130$
                           1075 ;	../fb_dim2.c:257: dimm_I2C[kanal_zl]--;
   0A36 EB                 1076 	mov	a,r3
   0A37 14                 1077 	dec	a
   0A38 F6                 1078 	mov	@r0,a
   0A39                    1079 00130$:
                           1080 ;	../fb_dim2.c:258: if(dimm_I2C[kanal_zl] < dimmwert[kanal_zl])    //heller andimmen
   0A39 E5 40              1081 	mov	a,_kanal_zl
   0A3B 24 26              1082 	add	a,#_dimm_I2C
   0A3D F8                 1083 	mov	r0,a
   0A3E 86 02              1084 	mov	ar2,@r0
   0A40 E5 40              1085 	mov	a,_kanal_zl
   0A42 24 28              1086 	add	a,#_dimmwert
   0A44 F9                 1087 	mov	r1,a
   0A45 87 03              1088 	mov	ar3,@r1
   0A47 C3                 1089 	clr	c
   0A48 EA                 1090 	mov	a,r2
   0A49 9B                 1091 	subb	a,r3
   0A4A 50 1C              1092 	jnc	00157$
                           1093 ;	../fb_dim2.c:260: if(dimmwert[kanal_zl]<mindimmwert[kanal_zl])   // mit minimalwert Starten
   0A4C E5 40              1094 	mov	a,_kanal_zl
   0A4E 24 2A              1095 	add	a,#_mindimmwert
   0A50 FA                 1096 	mov	r2,a
   0A51 C0 00              1097 	push	ar0
   0A53 A8 02              1098 	mov	r0,ar2
   0A55 86 02              1099 	mov	ar2,@r0
   0A57 D0 00              1100 	pop	ar0
   0A59 C3                 1101 	clr	c
   0A5A EB                 1102 	mov	a,r3
   0A5B 9A                 1103 	subb	a,r2
   0A5C 50 06              1104 	jnc	00132$
                           1105 ;	../fb_dim2.c:262: dimm_I2C[kanal_zl]=mindimmwert[kanal_zl];
   0A5E A6 02              1106 	mov	@r0,ar2
                           1107 ;	../fb_dim2.c:263: dimmwert[kanal_zl]=dimm_I2C[kanal_zl];
   0A60 A7 02              1108 	mov	@r1,ar2
   0A62 80 04              1109 	sjmp	00157$
   0A64                    1110 00132$:
                           1111 ;	../fb_dim2.c:265: else dimm_I2C[kanal_zl]++;
   0A64 E6                 1112 	mov	a,@r0
   0A65 FA                 1113 	mov	r2,a
   0A66 04                 1114 	inc	a
   0A67 F6                 1115 	mov	@r0,a
   0A68                    1116 00157$:
                           1117 ;	../fb_dim2.c:252: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)
   0A68 05 40              1118 	inc	_kanal_zl
   0A6A 80 AB              1119 	sjmp	00155$
   0A6C                    1120 00139$:
                           1121 ;	../fb_dim2.c:270: else andimm_zl++;
   0A6C 05 41              1122 	inc	_andimm_zl
   0A6E                    1123 00140$:
                           1124 ;	../fb_dim2.c:273: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)//basis und faktor für dimmstufen
   0A6E 75 40 00           1125 	mov	_kanal_zl,#0x00
   0A71                    1126 00159$:
   0A71 74 FE              1127 	mov	a,#0x100 - 0x02
   0A73 25 40              1128 	add	a,_kanal_zl
   0A75 50 03              1129 	jnc	00211$
   0A77 02 0B 64           1130 	ljmp	00163$
   0A7A                    1131 00211$:
                           1132 ;	../fb_dim2.c:275: basis_zl[kanal_zl]++;
   0A7A E5 40              1133 	mov	a,_kanal_zl
   0A7C 25 40              1134 	add	a,_kanal_zl
   0A7E FA                 1135 	mov	r2,a
   0A7F 24 3C              1136 	add	a,#_basis_zl
   0A81 F8                 1137 	mov	r0,a
   0A82 86 03              1138 	mov	ar3,@r0
   0A84 08                 1139 	inc	r0
   0A85 86 04              1140 	mov	ar4,@r0
   0A87 18                 1141 	dec	r0
   0A88 0B                 1142 	inc	r3
   0A89 BB 00 01           1143 	cjne	r3,#0x00,00212$
   0A8C 0C                 1144 	inc	r4
   0A8D                    1145 00212$:
   0A8D A6 03              1146 	mov	@r0,ar3
   0A8F 08                 1147 	inc	r0
   0A90 A6 04              1148 	mov	@r0,ar4
   0A92 18                 1149 	dec	r0
                           1150 ;	../fb_dim2.c:276: if(basis_zl[kanal_zl] > basis_dimmgeschwindikeit[kanal_zl])//1-65000
   0A93 EA                 1151 	mov	a,r2
   0A94 24 34              1152 	add	a,#_basis_dimmgeschwindikeit
   0A96 F9                 1153 	mov	r1,a
   0A97 87 02              1154 	mov	ar2,@r1
   0A99 09                 1155 	inc	r1
   0A9A 87 05              1156 	mov	ar5,@r1
   0A9C 19                 1157 	dec	r1
   0A9D C3                 1158 	clr	c
   0A9E EA                 1159 	mov	a,r2
   0A9F 9B                 1160 	subb	a,r3
   0AA0 ED                 1161 	mov	a,r5
   0AA1 9C                 1162 	subb	a,r4
   0AA2 40 03              1163 	jc	00213$
   0AA4 02 0B 5F           1164 	ljmp	00161$
   0AA7                    1165 00213$:
                           1166 ;	../fb_dim2.c:278: basis_zl[kanal_zl]=0;
   0AA7 76 00              1167 	mov	@r0,#0x00
   0AA9 08                 1168 	inc	r0
   0AAA 76 00              1169 	mov	@r0,#0x00
   0AAC 18                 1170 	dec	r0
                           1171 ;	../fb_dim2.c:279: faktor_zl[kanal_zl]++;
   0AAD E5 40              1172 	mov	a,_kanal_zl
   0AAF 24 3A              1173 	add	a,#_faktor_zl
   0AB1 F8                 1174 	mov	r0,a
   0AB2 86 02              1175 	mov	ar2,@r0
   0AB4 0A                 1176 	inc	r2
   0AB5 A6 02              1177 	mov	@r0,ar2
                           1178 ;	../fb_dim2.c:280: if(faktor_zl[kanal_zl] > eeprom[0xc8+(kanal_zl)])
   0AB7 74 C8              1179 	mov	a,#0xC8
   0AB9 25 40              1180 	add	a,_kanal_zl
   0ABB 90 1D 00           1181 	mov	dptr,#_eeprom
   0ABE 93                 1182 	movc	a,@a+dptr
   0ABF FB                 1183 	mov	r3,a
   0AC0 C3                 1184 	clr	c
   0AC1 9A                 1185 	subb	a,r2
   0AC2 40 03              1186 	jc	00214$
   0AC4 02 0B 5F           1187 	ljmp	00161$
   0AC7                    1188 00214$:
                           1189 ;	../fb_dim2.c:282: faktor_zl[kanal_zl]=0;
   0AC7 76 00              1190 	mov	@r0,#0x00
                           1191 ;	../fb_dim2.c:283: if(dimm_helldunkel[kanal_zl]>=9 && dimm_helldunkel[kanal_zl]<=0xf)//heller=9==100%
   0AC9 E5 40              1192 	mov	a,_kanal_zl
   0ACB 24 24              1193 	add	a,#_dimm_helldunkel
   0ACD F8                 1194 	mov	r0,a
   0ACE 86 02              1195 	mov	ar2,@r0
   0AD0 BA 09 00           1196 	cjne	r2,#0x09,00215$
   0AD3                    1197 00215$:
   0AD3 40 37              1198 	jc	00144$
   0AD5 EA                 1199 	mov	a,r2
   0AD6 24 F0              1200 	add	a,#0xff - 0x0F
   0AD8 40 32              1201 	jc	00144$
                           1202 ;	../fb_dim2.c:285: if(dimmwert[kanal_zl]<MAXDIMMWERT-1)
   0ADA E5 40              1203 	mov	a,_kanal_zl
   0ADC 24 28              1204 	add	a,#_dimmwert
   0ADE F8                 1205 	mov	r0,a
   0ADF 86 03              1206 	mov	ar3,@r0
   0AE1 BB FE 00           1207 	cjne	r3,#0xFE,00218$
   0AE4                    1208 00218$:
   0AE4 50 26              1209 	jnc	00144$
                           1210 ;	../fb_dim2.c:287: schritt_zl_dim[kanal_zl]+=schritttabelle[(dimm_helldunkel[kanal_zl]-8)];
   0AE6 E5 40              1211 	mov	a,_kanal_zl
   0AE8 24 4B              1212 	add	a,#_schritt_zl_dim
   0AEA F9                 1213 	mov	r1,a
   0AEB 87 04              1214 	mov	ar4,@r1
   0AED EA                 1215 	mov	a,r2
   0AEE 24 83              1216 	add	a,#0xf8+_schritttabelle
   0AF0 F5 82              1217 	mov	dpl,a
   0AF2 E4                 1218 	clr	a
   0AF3 34 17              1219 	addc	a,#(_schritttabelle >> 8)
   0AF5 F5 83              1220 	mov	dph,a
   0AF7 E4                 1221 	clr	a
   0AF8 93                 1222 	movc	a,@a+dptr
   0AF9 2C                 1223 	add	a,r4
   0AFA FC                 1224 	mov	r4,a
   0AFB F7                 1225 	mov	@r1,a
                           1226 ;	../fb_dim2.c:288: dimmwert[kanal_zl]+=(schritt_zl_dim[kanal_zl]/100);
   0AFC 75 F0 64           1227 	mov	b,#0x64
   0AFF EC                 1228 	mov	a,r4
   0B00 84                 1229 	div	ab
   0B01 FD                 1230 	mov	r5,a
   0B02 2B                 1231 	add	a,r3
   0B03 F6                 1232 	mov	@r0,a
                           1233 ;	../fb_dim2.c:289: schritt_zl_dim[kanal_zl]%=100;
   0B04 75 F0 64           1234 	mov	b,#0x64
   0B07 EC                 1235 	mov	a,r4
   0B08 84                 1236 	div	ab
   0B09 E5 F0              1237 	mov	a,b
   0B0B F7                 1238 	mov	@r1,a
   0B0C                    1239 00144$:
                           1240 ;	../fb_dim2.c:292: if(dimm_helldunkel[kanal_zl]>=1 && dimm_helldunkel[kanal_zl]<8) //dunkler=1==100%
   0B0C BA 01 00           1241 	cjne	r2,#0x01,00220$
   0B0F                    1242 00220$:
   0B0F 40 4E              1243 	jc	00161$
   0B11 BA 08 00           1244 	cjne	r2,#0x08,00222$
   0B14                    1245 00222$:
   0B14 50 49              1246 	jnc	00161$
                           1247 ;	../fb_dim2.c:294: if(dimmwert[kanal_zl]>mindimmwert[kanal_zl]+1)
   0B16 E5 40              1248 	mov	a,_kanal_zl
   0B18 24 28              1249 	add	a,#_dimmwert
   0B1A F8                 1250 	mov	r0,a
   0B1B 86 03              1251 	mov	ar3,@r0
   0B1D E5 40              1252 	mov	a,_kanal_zl
   0B1F 24 2A              1253 	add	a,#_mindimmwert
   0B21 F9                 1254 	mov	r1,a
   0B22 87 04              1255 	mov	ar4,@r1
   0B24 7D 00              1256 	mov	r5,#0x00
   0B26 0C                 1257 	inc	r4
   0B27 BC 00 01           1258 	cjne	r4,#0x00,00224$
   0B2A 0D                 1259 	inc	r5
   0B2B                    1260 00224$:
   0B2B 8B 06              1261 	mov	ar6,r3
   0B2D 7F 00              1262 	mov	r7,#0x00
   0B2F C3                 1263 	clr	c
   0B30 EC                 1264 	mov	a,r4
   0B31 9E                 1265 	subb	a,r6
   0B32 ED                 1266 	mov	a,r5
   0B33 64 80              1267 	xrl	a,#0x80
   0B35 8F F0              1268 	mov	b,r7
   0B37 63 F0 80           1269 	xrl	b,#0x80
   0B3A 95 F0              1270 	subb	a,b
   0B3C 50 21              1271 	jnc	00161$
                           1272 ;	../fb_dim2.c:296: schritt_zl_dim[kanal_zl]+=schritttabelle[(dimm_helldunkel[kanal_zl])];
   0B3E E5 40              1273 	mov	a,_kanal_zl
   0B40 24 4B              1274 	add	a,#_schritt_zl_dim
   0B42 F9                 1275 	mov	r1,a
   0B43 87 04              1276 	mov	ar4,@r1
   0B45 EA                 1277 	mov	a,r2
   0B46 90 17 8B           1278 	mov	dptr,#_schritttabelle
   0B49 93                 1279 	movc	a,@a+dptr
   0B4A 2C                 1280 	add	a,r4
   0B4B FC                 1281 	mov	r4,a
   0B4C F7                 1282 	mov	@r1,a
                           1283 ;	../fb_dim2.c:297: dimmwert[kanal_zl]-=(schritt_zl_dim[kanal_zl]/100);
   0B4D 75 F0 64           1284 	mov	b,#0x64
   0B50 EC                 1285 	mov	a,r4
   0B51 84                 1286 	div	ab
   0B52 FA                 1287 	mov	r2,a
   0B53 EB                 1288 	mov	a,r3
   0B54 C3                 1289 	clr	c
   0B55 9A                 1290 	subb	a,r2
   0B56 F6                 1291 	mov	@r0,a
                           1292 ;	../fb_dim2.c:298: schritt_zl_dim[kanal_zl]%=100;
   0B57 75 F0 64           1293 	mov	b,#0x64
   0B5A EC                 1294 	mov	a,r4
   0B5B 84                 1295 	div	ab
   0B5C E5 F0              1296 	mov	a,b
   0B5E F7                 1297 	mov	@r1,a
   0B5F                    1298 00161$:
                           1299 ;	../fb_dim2.c:273: for(kanal_zl=0;kanal_zl<DIMKREISE;++kanal_zl)//basis und faktor für dimmstufen
   0B5F 05 40              1300 	inc	_kanal_zl
   0B61 02 0A 71           1301 	ljmp	00159$
   0B64                    1302 00163$:
   0B64 D0 D0              1303 	pop	psw
   0B66 D0 01              1304 	pop	(0+1)
   0B68 D0 00              1305 	pop	(0+0)
   0B6A D0 07              1306 	pop	(0+7)
   0B6C D0 06              1307 	pop	(0+6)
   0B6E D0 05              1308 	pop	(0+5)
   0B70 D0 04              1309 	pop	(0+4)
   0B72 D0 03              1310 	pop	(0+3)
   0B74 D0 02              1311 	pop	(0+2)
   0B76 D0 83              1312 	pop	dph
   0B78 D0 82              1313 	pop	dpl
   0B7A D0 F0              1314 	pop	b
   0B7C D0 E0              1315 	pop	acc
   0B7E D0 21              1316 	pop	bits
   0B80 32                 1317 	reti
                           1318 ;------------------------------------------------------------
                           1319 ;Allocation info for local variables in function 'main'
                           1320 ;------------------------------------------------------------
                           1321 ;i                         Allocated to registers 
                           1322 ;n                         Allocated to registers r3 
                           1323 ;cmd                       Allocated to registers r3 
                           1324 ;cal                       Allocated to registers r2 
                           1325 ;flag50hz                  Allocated to registers 
                           1326 ;------------------------------------------------------------
                           1327 ;	../fb_dim2.c:312: void main(void)
                           1328 ;	-----------------------------------------
                           1329 ;	 function main
                           1330 ;	-----------------------------------------
   0B81                    1331 _main:
                           1332 ;	../fb_dim2.c:321: restart_hw();				// Hardware zurücksetzen
   0B81 12 0E 9B           1333 	lcall	_restart_hw
                           1334 ;	../fb_dim2.c:322: restart_prot();			// Protokoll-relevante Parameter zurücksetzen
   0B84 12 16 49           1335 	lcall	_restart_prot
                           1336 ;	../fb_dim2.c:323: rs_init(6);
   0B87 90 00 06           1337 	mov	dptr,#0x0006
   0B8A 12 16 6A           1338 	lcall	_rs_init
                           1339 ;	../fb_dim2.c:324: i2c_ma_init();
   0B8D 12 0E F3           1340 	lcall	_i2c_ma_init
                           1341 ;	../fb_dim2.c:325: restart_app();                        // Anwendungsspezifische Einstellungen zurücksetzen
   0B90 12 07 4B           1342 	lcall	_restart_app
                           1343 ;	../fb_dim2.c:327: TASTER=1;
   0B93 D2 97              1344 	setb	_P1_7
                           1345 ;	../fb_dim2.c:328: if(!TASTER )cal=0;// && wduf
   0B95 20 97 04           1346 	jb	_P1_7,00102$
   0B98 7A 00              1347 	mov	r2,#0x00
   0B9A 80 07              1348 	sjmp	00103$
   0B9C                    1349 00102$:
                           1350 ;	../fb_dim2.c:329: else cal=trimsave;
   0B9C 90 1B FF           1351 	mov	dptr,#_main_trimsave_1_1
   0B9F E4                 1352 	clr	a
   0BA0 93                 1353 	movc	a,@a+dptr
   0BA1 FB                 1354 	mov	r3,a
   0BA2 FA                 1355 	mov	r2,a
   0BA3                    1356 00103$:
                           1357 ;	../fb_dim2.c:330: TRIM = (TRIM+trimsave);
   0BA3 90 1B FF           1358 	mov	dptr,#_main_trimsave_1_1
   0BA6 E4                 1359 	clr	a
   0BA7 93                 1360 	movc	a,@a+dptr
   0BA8 FB                 1361 	mov	r3,a
   0BA9 AC 96              1362 	mov	r4,_TRIM
   0BAB EB                 1363 	mov	a,r3
   0BAC 2C                 1364 	add	a,r4
   0BAD F5 96              1365 	mov	_TRIM,a
                           1366 ;	../fb_dim2.c:331: TRIM &= 0x3F;//oberen 2 bits ausblenden
   0BAF 53 96 3F           1367 	anl	_TRIM,#0x3F
                           1368 ;	../fb_dim2.c:334: rs_send(0x55);
   0BB2 75 82 55           1369 	mov	dpl,#0x55
   0BB5 C0 02              1370 	push	ar2
   0BB7 12 17 3A           1371 	lcall	_rs_send
   0BBA D0 02              1372 	pop	ar2
                           1373 ;	../fb_dim2.c:335: do
   0BBC                    1374 00123$:
                           1375 ;	../fb_dim2.c:337: if (RI){
                           1376 ;	../fb_dim2.c:338: RI=0;
   0BBC 10 98 02           1377 	jbc	_SCON_0,00153$
   0BBF 80 52              1378 	sjmp	00117$
   0BC1                    1379 00153$:
                           1380 ;	../fb_dim2.c:339: cmd=SBUF;
   0BC1 AB 99              1381 	mov	r3,_SBUF
                           1382 ;	../fb_dim2.c:340: if(cmd=='c')rs_send(0x55);
   0BC3 BB 63 0E           1383 	cjne	r3,#0x63,00105$
   0BC6 75 82 55           1384 	mov	dpl,#0x55
   0BC9 C0 02              1385 	push	ar2
   0BCB C0 03              1386 	push	ar3
   0BCD 12 17 3A           1387 	lcall	_rs_send
   0BD0 D0 03              1388 	pop	ar3
   0BD2 D0 02              1389 	pop	ar2
   0BD4                    1390 00105$:
                           1391 ;	../fb_dim2.c:341: if(cmd=='+'){
   0BD4 BB 2B 03           1392 	cjne	r3,#0x2B,00107$
                           1393 ;	../fb_dim2.c:342: TRIM--;
   0BD7 15 96              1394 	dec	_TRIM
                           1395 ;	../fb_dim2.c:343: cal--;
   0BD9 1A                 1396 	dec	r2
   0BDA                    1397 00107$:
                           1398 ;	../fb_dim2.c:345: if(cmd=='-'){
   0BDA BB 2D 03           1399 	cjne	r3,#0x2D,00109$
                           1400 ;	../fb_dim2.c:346: TRIM++;
   0BDD 05 96              1401 	inc	_TRIM
                           1402 ;	../fb_dim2.c:347: cal++;
   0BDF 0A                 1403 	inc	r2
   0BE0                    1404 00109$:
                           1405 ;	../fb_dim2.c:349: if(cmd=='w'){
   0BE0 BB 77 12           1406 	cjne	r3,#0x77,00111$
                           1407 ;	../fb_dim2.c:350: EA=0;
   0BE3 C2 AF              1408 	clr	_IEN0_7
                           1409 ;	../fb_dim2.c:351: START_WRITECYCLE;	//cal an 0x1bff schreiben
   0BE5 75 E4 00           1410 	mov	_FMCON,#0x00
                           1411 ;	../fb_dim2.c:352: FMADRH= 0x1B;		
   0BE8 75 E7 1B           1412 	mov	_FMADRH,#0x1B
                           1413 ;	../fb_dim2.c:353: FMADRL= 0xFF; 
   0BEB 75 E6 FF           1414 	mov	_FMADRL,#0xFF
                           1415 ;	../fb_dim2.c:354: FMDATA=	cal; 
   0BEE 8A E5              1416 	mov	_FMDATA,r2
                           1417 ;	../fb_dim2.c:355: STOP_WRITECYCLE;
   0BF0 75 E4 68           1418 	mov	_FMCON,#0x68
                           1419 ;	../fb_dim2.c:356: EA=1;				//int wieder freigeben
   0BF3 D2 AF              1420 	setb	_IEN0_7
   0BF5                    1421 00111$:
                           1422 ;	../fb_dim2.c:358: if(cmd=='v')rs_send(VERSION);
   0BF5 BB 76 0E           1423 	cjne	r3,#0x76,00113$
   0BF8 75 82 01           1424 	mov	dpl,#0x01
   0BFB C0 02              1425 	push	ar2
   0BFD C0 03              1426 	push	ar3
   0BFF 12 17 3A           1427 	lcall	_rs_send
   0C02 D0 03              1428 	pop	ar3
   0C04 D0 02              1429 	pop	ar2
   0C06                    1430 00113$:
                           1431 ;	../fb_dim2.c:359: if(cmd=='t')rs_send(TYPE);
   0C06 BB 74 0A           1432 	cjne	r3,#0x74,00117$
   0C09 75 82 01           1433 	mov	dpl,#0x01
   0C0C C0 02              1434 	push	ar2
   0C0E 12 17 3A           1435 	lcall	_rs_send
   0C11 D0 02              1436 	pop	ar2
   0C13                    1437 00117$:
                           1438 ;	../fb_dim2.c:370: TASTER=1;                       // Pin als Eingang schalten um Taster abzufragen
   0C13 D2 97              1439 	setb	_P1_7
                           1440 ;	../fb_dim2.c:371: if(!TASTER) {                   // Taster gedrückt
   0C15 20 97 22           1441 	jb	_P1_7,00122$
                           1442 ;	../fb_dim2.c:372: for(n=0;n<200;n++) {}   // Entprell-Zeit
   0C18 7B C8              1443 	mov	r3,#0xC8
   0C1A                    1444 00128$:
   0C1A DB FE              1445 	djnz	r3,00128$
                           1446 ;	../fb_dim2.c:373: while(!TASTER);         // warten bis Taster losgelassen
   0C1C                    1447 00118$:
   0C1C 30 97 FD           1448 	jnb	_P1_7,00118$
                           1449 ;	../fb_dim2.c:374: EA=0;
   0C1F C2 AF              1450 	clr	_IEN0_7
                           1451 ;	../fb_dim2.c:375: START_WRITECYCLE;
   0C21 75 E4 00           1452 	mov	_FMCON,#0x00
                           1453 ;	../fb_dim2.c:376: WRITE_BYTE(0x00,0x60,userram[0x60] ^ 0x81);     // Prog-Bit und Parity-Bit im system_state toggeln
   0C24 75 E7 1C           1454 	mov	_FMADRH,#0x1C
   0C27 75 E6 60           1455 	mov	_FMADRL,#0x60
   0C2A 90 1C 60           1456 	mov	dptr,#(_userram + 0x0060)
   0C2D E4                 1457 	clr	a
   0C2E 93                 1458 	movc	a,@a+dptr
   0C2F FB                 1459 	mov	r3,a
   0C30 74 81              1460 	mov	a,#0x81
   0C32 6B                 1461 	xrl	a,r3
   0C33 F5 E5              1462 	mov	_FMDATA,a
                           1463 ;	../fb_dim2.c:377: STOP_WRITECYCLE;
   0C35 75 E4 68           1464 	mov	_FMCON,#0x68
                           1465 ;	../fb_dim2.c:378: EA=1;
   0C38 D2 AF              1466 	setb	_IEN0_7
   0C3A                    1467 00122$:
                           1468 ;	../fb_dim2.c:380: TASTER=!(userram[0x060] & 0x01);// LED entsprechend Prog-Bit schalten (low=LED an)
   0C3A 90 1C 60           1469 	mov	dptr,#(_userram + 0x0060)
   0C3D E4                 1470 	clr	a
   0C3E 93                 1471 	movc	a,@a+dptr
   0C3F 54 01              1472 	anl	a,#0x01
   0C41 FB                 1473 	mov	r3,a
   0C42 B4 01 00           1474 	cjne	a,#0x01,00170$
   0C45                    1475 00170$:
   0C45 92 97              1476 	mov	_P1_7,c
                           1477 ;	../fb_dim2.c:381: for(n=0;n<100;n++) {}           // falls Hauptroutine keine Zeit verbraucht, der LED etwas Zeit geben, damit sie auch leuchten kann
   0C47 7B 64              1478 	mov	r3,#0x64
   0C49                    1479 00131$:
   0C49 DB FE              1480 	djnz	r3,00131$
                           1481 ;	../fb_dim2.c:383: while(1)
   0C4B 02 0B BC           1482 	ljmp	00123$
                           1483 	.area CSEG    (CODE)
                           1484 	.area CONST   (CODE)
   1772                    1485 _hellikeit:
   1772 00                 1486 	.db #0x00
   1773 19                 1487 	.db #0x19
   1774 28                 1488 	.db #0x28
   1775 33                 1489 	.db #0x33
   1776 4C                 1490 	.db #0x4C
   1777 66                 1491 	.db #0x66
   1778 7F                 1492 	.db #0x7F
   1779 99                 1493 	.db #0x99
   177A B2                 1494 	.db #0xB2
   177B CC                 1495 	.db #0xCC
   177C E6                 1496 	.db #0xE6
   177D FF                 1497 	.db #0xFF
   177E FF                 1498 	.db #0xFF
   177F                    1499 _basis:
   177F 00 00              1500 	.byte #0x00,#0x00
   1781 01 00              1501 	.byte #0x01,#0x00
   1783 10 00              1502 	.byte #0x10,#0x00
   1785 04 01              1503 	.byte #0x04,#0x01
   1787 68 10              1504 	.byte #0x68,#0x10
   1789 E8 FD              1505 	.byte #0xE8,#0xFD
   178B                    1506 _schritttabelle:
   178B 00                 1507 	.db #0x00
   178C C8                 1508 	.db #0xC8
   178D 64                 1509 	.db #0x64
   178E 32                 1510 	.db #0x32
   178F 19                 1511 	.db #0x19
   1790 0C                 1512 	.db #0x0C
   1791 06                 1513 	.db #0x06
   1792 03                 1514 	.db #0x03
                    1BFF   1515 _main_trimsave_1_1	=	0x1bff
                           1516 	.area XINIT   (CODE)
                           1517 	.area CABS    (ABS,CODE)
