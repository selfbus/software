                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Sat May 12 20:44:55 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_lpc922
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _eeprom
                             13 	.globl _userram
                             14 	.globl _read_obj_value
                             15 	.globl _read_value_req
                             16 	.globl _write_value_req
                             17 	.globl _P3_1
                             18 	.globl _P3_0
                             19 	.globl _P1_7
                             20 	.globl _P1_6
                             21 	.globl _P1_5
                             22 	.globl _P1_4
                             23 	.globl _P1_3
                             24 	.globl _P1_2
                             25 	.globl _P1_1
                             26 	.globl _P1_0
                             27 	.globl _P0_7
                             28 	.globl _P0_6
                             29 	.globl _P0_5
                             30 	.globl _P0_4
                             31 	.globl _P0_3
                             32 	.globl _P0_2
                             33 	.globl _P0_1
                             34 	.globl _P0_0
                             35 	.globl _I2CON_0
                             36 	.globl _I2CON_2
                             37 	.globl _I2CON_3
                             38 	.globl _I2CON_4
                             39 	.globl _I2CON_5
                             40 	.globl _I2CON_6
                             41 	.globl _SCON_7
                             42 	.globl _SCON_6
                             43 	.globl _SCON_5
                             44 	.globl _SCON_4
                             45 	.globl _SCON_3
                             46 	.globl _SCON_2
                             47 	.globl _SCON_1
                             48 	.globl _SCON_0
                             49 	.globl _IP0_0
                             50 	.globl _IP0_1
                             51 	.globl _IP0_2
                             52 	.globl _IP0_3
                             53 	.globl _IP0_4
                             54 	.globl _IP0_5
                             55 	.globl _IP0_6
                             56 	.globl _IP1_0
                             57 	.globl _IP1_1
                             58 	.globl _IP1_2
                             59 	.globl _IP1_6
                             60 	.globl _IEN1_0
                             61 	.globl _IEN1_1
                             62 	.globl _IEN1_2
                             63 	.globl _IEN0_0
                             64 	.globl _IEN0_1
                             65 	.globl _IEN0_2
                             66 	.globl _IEN0_3
                             67 	.globl _IEN0_4
                             68 	.globl _IEN0_5
                             69 	.globl _IEN0_6
                             70 	.globl _IEN0_7
                             71 	.globl _TCON_0
                             72 	.globl _TCON_1
                             73 	.globl _TCON_2
                             74 	.globl _TCON_3
                             75 	.globl _TCON_4
                             76 	.globl _TCON_5
                             77 	.globl _TCON_6
                             78 	.globl _TCON_7
                             79 	.globl _PSW_7
                             80 	.globl _PSW_6
                             81 	.globl _PSW_5
                             82 	.globl _PSW_4
                             83 	.globl _PSW_3
                             84 	.globl _PSW_2
                             85 	.globl _PSW_1
                             86 	.globl _PSW_0
                             87 	.globl _IEN1
                             88 	.globl _IP0H
                             89 	.globl _WFEED2
                             90 	.globl _WFEED1
                             91 	.globl _WDL
                             92 	.globl _WDCON
                             93 	.globl _TRIM
                             94 	.globl _TAMOD
                             95 	.globl _SSTAT
                             96 	.globl _RTCL
                             97 	.globl _RTCH
                             98 	.globl _RTCCON
                             99 	.globl _RSTSRC
                            100 	.globl _PT0AD
                            101 	.globl _PCONA
                            102 	.globl _P3M2
                            103 	.globl _P3M1
                            104 	.globl _P1M2
                            105 	.globl _P1M1
                            106 	.globl _P0M2
                            107 	.globl _P0M1
                            108 	.globl _KBPATN
                            109 	.globl _KBMASK
                            110 	.globl _KBCON
                            111 	.globl _IP1H
                            112 	.globl _IP1
                            113 	.globl _I2STAT
                            114 	.globl _I2SCLL
                            115 	.globl _I2SCLH
                            116 	.globl _I2DAT
                            117 	.globl _I2CON
                            118 	.globl _I2ADR
                            119 	.globl _FMDATA
                            120 	.globl _FMCON
                            121 	.globl _FMADRL
                            122 	.globl _FMADRH
                            123 	.globl _DIVM
                            124 	.globl _CMP2
                            125 	.globl _CMP1
                            126 	.globl _BRGCON
                            127 	.globl _BRGR1
                            128 	.globl _BRGR0
                            129 	.globl _SADEN
                            130 	.globl _SADDR
                            131 	.globl _AUXR1
                            132 	.globl _SBUF
                            133 	.globl _SCON
                            134 	.globl _IP0
                            135 	.globl _IEN0
                            136 	.globl _TH1
                            137 	.globl _TH0
                            138 	.globl _TL1
                            139 	.globl _TL0
                            140 	.globl _TMOD
                            141 	.globl _TCON
                            142 	.globl _PCON
                            143 	.globl _DPH
                            144 	.globl _DPL
                            145 	.globl _SP
                            146 	.globl _B
                            147 	.globl _ACC
                            148 	.globl _PSW
                            149 	.globl _P3
                            150 	.globl _P1
                            151 	.globl _P0
                            152 	.globl _inc_pcount
                            153 	.globl _connected
                            154 	.globl _transparency
                            155 	.globl _send_nack
                            156 	.globl _send_ack
                            157 	.globl _wait_for_ack
                            158 	.globl _fbtx_bit
                            159 	.globl _auto_ack
                            160 	.globl _tel_sent
                            161 	.globl _tel_arrived
                            162 	.globl _its_me
                            163 	.globl _nack
                            164 	.globl _ack
                            165 	.globl _fb_parity
                            166 	.globl _interrupted
                            167 	.globl _parity_ok
                            168 	.globl _status60
                            169 	.globl _tx_nextsend
                            170 	.globl _tx_nextwrite
                            171 	.globl _repeat_count
                            172 	.globl _fb_state
                            173 	.globl _fb_pattern
                            174 	.globl _fbrx_byte
                            175 	.globl _cs
                            176 	.globl _telpos
                            177 	.globl _tx_buffer
                            178 	.globl _telegramm
                            179 	.globl _senders_pcount
                            180 	.globl _mem_adrl
                            181 	.globl _mem_adrh
                            182 	.globl _mem_length
                            183 	.globl _pcount
                            184 	.globl _conl
                            185 	.globl _conh
                            186 	.globl _X1_int
                            187 	.globl _T1_int
                            188 	.globl _init_rx
                            189 	.globl _init_tx
                            190 	.globl _gapos_in_gat
                            191 	.globl _build_tel
                            192 	.globl _send_obj_value
                            193 	.globl _process_tel
                            194 	.globl _write_memory
                            195 	.globl _set_pa
                            196 	.globl _read_objflags
                            197 	.globl _find_first_objno
                            198 	.globl _find_ga
                            199 	.globl _restart_hw
                            200 ;--------------------------------------------------------
                            201 ; special function registers
                            202 ;--------------------------------------------------------
                            203 	.area RSEG    (ABS,DATA)
   0000                     204 	.org 0x0000
                    0080    205 _P0	=	0x0080
                    0090    206 _P1	=	0x0090
                    00B0    207 _P3	=	0x00b0
                    00D0    208 _PSW	=	0x00d0
                    00E0    209 _ACC	=	0x00e0
                    00F0    210 _B	=	0x00f0
                    0081    211 _SP	=	0x0081
                    0082    212 _DPL	=	0x0082
                    0083    213 _DPH	=	0x0083
                    0087    214 _PCON	=	0x0087
                    0088    215 _TCON	=	0x0088
                    0089    216 _TMOD	=	0x0089
                    008A    217 _TL0	=	0x008a
                    008B    218 _TL1	=	0x008b
                    008C    219 _TH0	=	0x008c
                    008D    220 _TH1	=	0x008d
                    00A8    221 _IEN0	=	0x00a8
                    00B8    222 _IP0	=	0x00b8
                    0098    223 _SCON	=	0x0098
                    0099    224 _SBUF	=	0x0099
                    00A2    225 _AUXR1	=	0x00a2
                    00A9    226 _SADDR	=	0x00a9
                    00B9    227 _SADEN	=	0x00b9
                    00BE    228 _BRGR0	=	0x00be
                    00BF    229 _BRGR1	=	0x00bf
                    00BD    230 _BRGCON	=	0x00bd
                    00AC    231 _CMP1	=	0x00ac
                    00AD    232 _CMP2	=	0x00ad
                    0095    233 _DIVM	=	0x0095
                    00E7    234 _FMADRH	=	0x00e7
                    00E6    235 _FMADRL	=	0x00e6
                    00E4    236 _FMCON	=	0x00e4
                    00E5    237 _FMDATA	=	0x00e5
                    00DB    238 _I2ADR	=	0x00db
                    00D8    239 _I2CON	=	0x00d8
                    00DA    240 _I2DAT	=	0x00da
                    00DD    241 _I2SCLH	=	0x00dd
                    00DC    242 _I2SCLL	=	0x00dc
                    00D9    243 _I2STAT	=	0x00d9
                    00F8    244 _IP1	=	0x00f8
                    00F7    245 _IP1H	=	0x00f7
                    0094    246 _KBCON	=	0x0094
                    0086    247 _KBMASK	=	0x0086
                    0093    248 _KBPATN	=	0x0093
                    0084    249 _P0M1	=	0x0084
                    0085    250 _P0M2	=	0x0085
                    0091    251 _P1M1	=	0x0091
                    0092    252 _P1M2	=	0x0092
                    00B1    253 _P3M1	=	0x00b1
                    00B2    254 _P3M2	=	0x00b2
                    00B5    255 _PCONA	=	0x00b5
                    00F6    256 _PT0AD	=	0x00f6
                    00DF    257 _RSTSRC	=	0x00df
                    00D1    258 _RTCCON	=	0x00d1
                    00D2    259 _RTCH	=	0x00d2
                    00D3    260 _RTCL	=	0x00d3
                    00BA    261 _SSTAT	=	0x00ba
                    008F    262 _TAMOD	=	0x008f
                    0096    263 _TRIM	=	0x0096
                    00A7    264 _WDCON	=	0x00a7
                    00C1    265 _WDL	=	0x00c1
                    00C2    266 _WFEED1	=	0x00c2
                    00C3    267 _WFEED2	=	0x00c3
                    00B7    268 _IP0H	=	0x00b7
                    00E8    269 _IEN1	=	0x00e8
                            270 ;--------------------------------------------------------
                            271 ; special function bits
                            272 ;--------------------------------------------------------
                            273 	.area RSEG    (ABS,DATA)
   0000                     274 	.org 0x0000
                    00D0    275 _PSW_0	=	0x00d0
                    00D1    276 _PSW_1	=	0x00d1
                    00D2    277 _PSW_2	=	0x00d2
                    00D3    278 _PSW_3	=	0x00d3
                    00D4    279 _PSW_4	=	0x00d4
                    00D5    280 _PSW_5	=	0x00d5
                    00D6    281 _PSW_6	=	0x00d6
                    00D7    282 _PSW_7	=	0x00d7
                    008F    283 _TCON_7	=	0x008f
                    008E    284 _TCON_6	=	0x008e
                    008D    285 _TCON_5	=	0x008d
                    008C    286 _TCON_4	=	0x008c
                    008B    287 _TCON_3	=	0x008b
                    008A    288 _TCON_2	=	0x008a
                    0089    289 _TCON_1	=	0x0089
                    0088    290 _TCON_0	=	0x0088
                    00AF    291 _IEN0_7	=	0x00af
                    00AE    292 _IEN0_6	=	0x00ae
                    00AD    293 _IEN0_5	=	0x00ad
                    00AC    294 _IEN0_4	=	0x00ac
                    00AB    295 _IEN0_3	=	0x00ab
                    00AA    296 _IEN0_2	=	0x00aa
                    00A9    297 _IEN0_1	=	0x00a9
                    00A8    298 _IEN0_0	=	0x00a8
                    00EA    299 _IEN1_2	=	0x00ea
                    00E9    300 _IEN1_1	=	0x00e9
                    00E8    301 _IEN1_0	=	0x00e8
                    00FE    302 _IP1_6	=	0x00fe
                    00FA    303 _IP1_2	=	0x00fa
                    00F9    304 _IP1_1	=	0x00f9
                    00F8    305 _IP1_0	=	0x00f8
                    00BE    306 _IP0_6	=	0x00be
                    00BD    307 _IP0_5	=	0x00bd
                    00BC    308 _IP0_4	=	0x00bc
                    00BB    309 _IP0_3	=	0x00bb
                    00BA    310 _IP0_2	=	0x00ba
                    00B9    311 _IP0_1	=	0x00b9
                    00B8    312 _IP0_0	=	0x00b8
                    0098    313 _SCON_0	=	0x0098
                    0099    314 _SCON_1	=	0x0099
                    009A    315 _SCON_2	=	0x009a
                    009B    316 _SCON_3	=	0x009b
                    009C    317 _SCON_4	=	0x009c
                    009D    318 _SCON_5	=	0x009d
                    009E    319 _SCON_6	=	0x009e
                    009F    320 _SCON_7	=	0x009f
                    00DE    321 _I2CON_6	=	0x00de
                    00DD    322 _I2CON_5	=	0x00dd
                    00DC    323 _I2CON_4	=	0x00dc
                    00DB    324 _I2CON_3	=	0x00db
                    00DA    325 _I2CON_2	=	0x00da
                    00D8    326 _I2CON_0	=	0x00d8
                    0080    327 _P0_0	=	0x0080
                    0081    328 _P0_1	=	0x0081
                    0082    329 _P0_2	=	0x0082
                    0083    330 _P0_3	=	0x0083
                    0084    331 _P0_4	=	0x0084
                    0085    332 _P0_5	=	0x0085
                    0086    333 _P0_6	=	0x0086
                    0087    334 _P0_7	=	0x0087
                    0090    335 _P1_0	=	0x0090
                    0091    336 _P1_1	=	0x0091
                    0092    337 _P1_2	=	0x0092
                    0093    338 _P1_3	=	0x0093
                    0094    339 _P1_4	=	0x0094
                    0095    340 _P1_5	=	0x0095
                    0096    341 _P1_6	=	0x0096
                    0097    342 _P1_7	=	0x0097
                    00B0    343 _P3_0	=	0x00b0
                    00B1    344 _P3_1	=	0x00b1
                            345 ;--------------------------------------------------------
                            346 ; overlayable register banks
                            347 ;--------------------------------------------------------
                            348 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     349 	.ds 8
                            350 ;--------------------------------------------------------
                            351 ; overlayable bit register bank
                            352 ;--------------------------------------------------------
                            353 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     354 bits:
   0023                     355 	.ds 1
                    8000    356 	b0 = bits[0]
                    8100    357 	b1 = bits[1]
                    8200    358 	b2 = bits[2]
                    8300    359 	b3 = bits[3]
                    8400    360 	b4 = bits[4]
                    8500    361 	b5 = bits[5]
                    8600    362 	b6 = bits[6]
                    8700    363 	b7 = bits[7]
                            364 ;--------------------------------------------------------
                            365 ; internal ram data
                            366 ;--------------------------------------------------------
                            367 	.area DSEG    (DATA)
   0044                     368 _conh::
   0044                     369 	.ds 1
   0045                     370 _conl::
   0045                     371 	.ds 1
   0046                     372 _pcount::
   0046                     373 	.ds 1
   0047                     374 _mem_length::
   0047                     375 	.ds 1
   0048                     376 _mem_adrh::
   0048                     377 	.ds 1
   0049                     378 _mem_adrl::
   0049                     379 	.ds 1
   004A                     380 _senders_pcount::
   004A                     381 	.ds 1
   004B                     382 _telegramm::
   004B                     383 	.ds 23
   0062                     384 _tx_buffer::
   0062                     385 	.ds 8
   006A                     386 _telpos::
   006A                     387 	.ds 1
   006B                     388 _cs::
   006B                     389 	.ds 1
   006C                     390 _fbrx_byte::
   006C                     391 	.ds 1
   006D                     392 _fb_pattern::
   006D                     393 	.ds 1
   006E                     394 _fb_state::
   006E                     395 	.ds 1
   006F                     396 _repeat_count::
   006F                     397 	.ds 1
   0070                     398 _tx_nextwrite::
   0070                     399 	.ds 1
   0071                     400 _tx_nextsend::
   0071                     401 	.ds 1
   0072                     402 _status60::
   0072                     403 	.ds 1
                            404 ;--------------------------------------------------------
                            405 ; overlayable items in internal ram 
                            406 ;--------------------------------------------------------
                            407 ;--------------------------------------------------------
                            408 ; indirectly addressable internal ram data
                            409 ;--------------------------------------------------------
                            410 	.area ISEG    (DATA)
                            411 ;--------------------------------------------------------
                            412 ; absolute internal ram data
                            413 ;--------------------------------------------------------
                            414 	.area IABS    (ABS,DATA)
                            415 	.area IABS    (ABS,DATA)
                            416 ;--------------------------------------------------------
                            417 ; bit data
                            418 ;--------------------------------------------------------
                            419 	.area BSEG    (BIT)
   0001                     420 _parity_ok::
   0001                     421 	.ds 1
   0002                     422 _interrupted::
   0002                     423 	.ds 1
   0003                     424 _fb_parity::
   0003                     425 	.ds 1
   0004                     426 _ack::
   0004                     427 	.ds 1
   0005                     428 _nack::
   0005                     429 	.ds 1
   0006                     430 _its_me::
   0006                     431 	.ds 1
   0007                     432 _tel_arrived::
   0007                     433 	.ds 1
   0008                     434 _tel_sent::
   0008                     435 	.ds 1
   0009                     436 _auto_ack::
   0009                     437 	.ds 1
   000A                     438 _fbtx_bit::
   000A                     439 	.ds 1
   000B                     440 _wait_for_ack::
   000B                     441 	.ds 1
   000C                     442 _send_ack::
   000C                     443 	.ds 1
   000D                     444 _send_nack::
   000D                     445 	.ds 1
   000E                     446 _transparency::
   000E                     447 	.ds 1
   000F                     448 _connected::
   000F                     449 	.ds 1
   0010                     450 _inc_pcount::
   0010                     451 	.ds 1
                            452 ;--------------------------------------------------------
                            453 ; paged external ram data
                            454 ;--------------------------------------------------------
                            455 	.area PSEG    (PAG,XDATA)
                            456 ;--------------------------------------------------------
                            457 ; external ram data
                            458 ;--------------------------------------------------------
                            459 	.area XSEG    (XDATA)
                            460 ;--------------------------------------------------------
                            461 ; absolute external ram data
                            462 ;--------------------------------------------------------
                            463 	.area XABS    (ABS,XDATA)
                            464 ;--------------------------------------------------------
                            465 ; external initialized ram data
                            466 ;--------------------------------------------------------
                            467 	.area XISEG   (XDATA)
                            468 	.area HOME    (CODE)
                            469 	.area GSINIT0 (CODE)
                            470 	.area GSINIT1 (CODE)
                            471 	.area GSINIT2 (CODE)
                            472 	.area GSINIT3 (CODE)
                            473 	.area GSINIT4 (CODE)
                            474 	.area GSINIT5 (CODE)
                            475 	.area GSINIT  (CODE)
                            476 	.area GSFINAL (CODE)
                            477 	.area CSEG    (CODE)
                            478 ;--------------------------------------------------------
                            479 ; global & static initialisations
                            480 ;--------------------------------------------------------
                            481 	.area HOME    (CODE)
                            482 	.area GSINIT  (CODE)
                            483 	.area GSFINAL (CODE)
                            484 	.area GSINIT  (CODE)
                            485 ;--------------------------------------------------------
                            486 ; Home
                            487 ;--------------------------------------------------------
                            488 	.area HOME    (CODE)
                            489 	.area HOME    (CODE)
                            490 ;--------------------------------------------------------
                            491 ; code
                            492 ;--------------------------------------------------------
                            493 	.area CSEG    (CODE)
                            494 ;------------------------------------------------------------
                            495 ;Allocation info for local variables in function 'X1_int'
                            496 ;------------------------------------------------------------
                            497 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:60: void X1_int(void) __interrupt (2)		// Flanke des Startbits löst int1 aus
                            498 ;	-----------------------------------------
                            499 ;	 function X1_int
                            500 ;	-----------------------------------------
   0FE3                     501 _X1_int:
                    0007    502 	ar7 = 0x07
                    0006    503 	ar6 = 0x06
                    0005    504 	ar5 = 0x05
                    0004    505 	ar4 = 0x04
                    0003    506 	ar3 = 0x03
                    0002    507 	ar2 = 0x02
                    0001    508 	ar1 = 0x01
                    0000    509 	ar0 = 0x00
   0FE3 C0 E0               510 	push	acc
   0FE5 C0 D0               511 	push	psw
                            512 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:63: EX1=0;			// int1 stoppen								1 cycle = 0,27127us
   0FE7 C2 AA               513 	clr	_IEN0_2
                            514 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:64: TR1=0;			// Timer 1 stoppen
   0FE9 C2 8E               515 	clr	_TCON_6
                            516 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:65: TMOD=(TMOD & 0x0F) + 0x20;	// Timer 1 als 8-Bit autoreload
   0FEB 74 0F               517 	mov	a,#0x0F
   0FED 55 89               518 	anl	a,_TMOD
   0FEF 24 20               519 	add	a,#0x20
   0FF1 F5 89               520 	mov	_TMOD,a
                            521 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:66: TL1=53;//108;//128;		// Timer laden so dass in state 2 bei 75µs abgefragt wird
   0FF3 75 8B 35            522 	mov	_TL1,#0x35
                            523 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:67: TH1=128;//128;			// autoreload auf 35µs setzen (gilt für sprung von 2 auf 3)
   0FF6 75 8D 80            524 	mov	_TH1,#0x80
                            525 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:68: TF1=0;			// Timer1-flag löschen						1 cycle
   0FF9 C2 8F               526 	clr	_TCON_7
                            527 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:69: TR1=1;			// Timer1 starten							1 cycle
   0FFB D2 8E               528 	setb	_TCON_6
                            529 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:70: ET1=1;			// Timer1-int aktiv							1 cycle
   0FFD D2 AB               530 	setb	_IEN0_3
                            531 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:71: fb_state=2;		// nächster state
   0FFF 75 6E 02            532 	mov	_fb_state,#0x02
                            533 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:72: fb_parity=0;	// Parity Bit löschen
   1002 C2 03               534 	clr	_fb_parity
                            535 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:73: parity_ok=1;	// wird bei Fehler gelöscht
   1004 D2 01               536 	setb	_parity_ok
                            537 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:74: fb_pattern=0;
   1006 75 6D 00            538 	mov	_fb_pattern,#0x00
                            539 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:75: fbrx_byte=0;
   1009 75 6C 00            540 	mov	_fbrx_byte,#0x00
                            541 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:76: interrupted=1;	// signalisiert app, dass unterbrochen wurde
   100C D2 02               542 	setb	_interrupted
   100E D0 D0               543 	pop	psw
   1010 D0 E0               544 	pop	acc
   1012 32                  545 	reti
                            546 ;	eliminated unneeded mov psw,# (no regs used in bank)
                            547 ;	eliminated unneeded push/pop dpl
                            548 ;	eliminated unneeded push/pop dph
                            549 ;	eliminated unneeded push/pop b
                            550 ;------------------------------------------------------------
                            551 ;Allocation info for local variables in function 'T1_int'
                            552 ;------------------------------------------------------------
                            553 ;fbrx_bit                  Allocated to registers b0 
                            554 ;send_byte                 Allocated to registers r7 
                            555 ;------------------------------------------------------------
                            556 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:81: void T1_int(void) __interrupt (3) 	// Timer 1 Interrupt
                            557 ;	-----------------------------------------
                            558 ;	 function T1_int
                            559 ;	-----------------------------------------
   1013                     560 _T1_int:
   1013 C0 23               561 	push	bits
   1015 C0 E0               562 	push	acc
   1017 C0 F0               563 	push	b
   1019 C0 82               564 	push	dpl
   101B C0 83               565 	push	dph
   101D C0 07               566 	push	(0+7)
   101F C0 06               567 	push	(0+6)
   1021 C0 05               568 	push	(0+5)
   1023 C0 04               569 	push	(0+4)
   1025 C0 03               570 	push	(0+3)
   1027 C0 02               571 	push	(0+2)
   1029 C0 01               572 	push	(0+1)
   102B C0 00               573 	push	(0+0)
   102D C0 D0               574 	push	psw
   102F 75 D0 00            575 	mov	psw,#0x00
                            576 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:87: switch (fb_state){
   1032 E5 6E               577 	mov	a,_fb_state
   1034 FF                  578 	mov	r7,a
   1035 24 F1               579 	add	a,#0xff - 0x0E
   1037 50 03               580 	jnc	00318$
   1039 02 13 30            581 	ljmp	00217$
   103C                     582 00318$:
   103C EF                  583 	mov	a,r7
   103D 2F                  584 	add	a,r7
   103E 2F                  585 	add	a,r7
   103F 90 10 43            586 	mov	dptr,#00319$
   1042 73                  587 	jmp	@a+dptr
   1043                     588 00319$:
   1043 02 10 70            589 	ljmp	00101$
   1046 02 13 30            590 	ljmp	00217$
   1049 02 10 E3            591 	ljmp	00115$
   104C 02 11 9D            592 	ljmp	00151$
   104F 02 11 A6            593 	ljmp	00152$
   1052 02 12 1B            594 	ljmp	00173$
   1055 02 13 30            595 	ljmp	00217$
   1058 02 13 30            596 	ljmp	00217$
   105B 02 13 30            597 	ljmp	00217$
   105E 02 13 30            598 	ljmp	00217$
   1061 02 12 3F            599 	ljmp	00180$
   1064 02 12 A7            600 	ljmp	00201$
   1067 02 13 30            601 	ljmp	00217$
   106A 02 12 CB            602 	ljmp	00208$
   106D 02 13 19            603 	ljmp	00216$
                            604 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:91: case 0:
   1070                     605 00101$:
                            606 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:92: TR1=0;			// Timer 1 stoppen
   1070 C2 8E               607 	clr	_TCON_6
                            608 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:93: TMOD=(TMOD & 0x0F) + 0x20;	// Timer 1 als 8-Bit autoreload
   1072 74 0F               609 	mov	a,#0x0F
   1074 55 89               610 	anl	a,_TMOD
   1076 24 20               611 	add	a,#0x20
   1078 F5 89               612 	mov	_TMOD,a
                            613 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:94: TL1=128;		// Timer laden
   107A 75 8B 80            614 	mov	_TL1,#0x80
                            615 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:95: TH1=128;
   107D 75 8D 80            616 	mov	_TH1,#0x80
                            617 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:96: TF1=0;			// Timer1-flag löschen						1 cycle
   1080 C2 8F               618 	clr	_TCON_7
                            619 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:97: TR1=1;			// Timer1 starten							1 cycle
   1082 D2 8E               620 	setb	_TCON_6
                            621 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:98: if(tx_nextsend != tx_nextwrite) { 			// wenn zu sendendes Objekt vorhanden
   1084 E5 70               622 	mov	a,_tx_nextwrite
   1086 B5 71 02            623 	cjne	a,_tx_nextsend,00320$
   1089 80 51               624 	sjmp	00113$
   108B                     625 00320$:
                            626 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:99: if(build_tel(tx_buffer[tx_nextsend])) {	// wenn Telegramm gebildet werden konnte
   108B E5 71               627 	mov	a,_tx_nextsend
   108D 24 62               628 	add	a,#_tx_buffer
   108F F9                  629 	mov	r1,a
   1090 87 82               630 	mov	dpl,@r1
   1092 12 14 18            631 	lcall	_build_tel
   1095 50 3D               632 	jnc	00110$
                            633 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:100: EX1=0; 				//Um zu vermeiden dass man in die Abfrage hinein-empfängt
   1097 C2 AA               634 	clr	_IEN0_2
                            635 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:101: if(!fb_state) { 	//nur bilden wenn vorher kein rx_intit durch ext int kam
   1099 E5 6E               636 	mov	a,_fb_state
   109B 70 32               637 	jnz	00108$
                            638 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:102: if((tx_buffer[tx_nextsend]&0x20)==0) {	// wenn erstmaliges Senden des Objektes
   109D E5 71               639 	mov	a,_tx_nextsend
   109F 24 62               640 	add	a,#_tx_buffer
   10A1 F9                  641 	mov	r1,a
   10A2 E7                  642 	mov	a,@r1
   10A3 FF                  643 	mov	r7,a
   10A4 20 E5 07            644 	jb	acc.5,00103$
                            645 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:103: tx_buffer[tx_nextsend]|=0x20;		// Bit für "wird gerade gesendet"
   10A7 74 20               646 	mov	a,#0x20
   10A9 4F                  647 	orl	a,r7
   10AA F7                  648 	mov	@r1,a
                            649 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:104: repeat_count=0;						// Wiederholungszähler für nicht geackte Telegramme
   10AB 75 6F 00            650 	mov	_repeat_count,#0x00
   10AE                     651 00103$:
                            652 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:106: if (repeat_count<4) init_tx();		// Senden starten
   10AE 74 FC               653 	mov	a,#0x100 - 0x04
   10B0 25 6F               654 	add	a,_repeat_count
   10B2 40 05               655 	jc	00105$
   10B4 12 13 7B            656 	lcall	_init_tx
   10B7 80 16               657 	sjmp	00108$
   10B9                     658 00105$:
                            659 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:108: tx_nextsend++;
   10B9 05 71               660 	inc	_tx_nextsend
                            661 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:109: tx_nextsend&=0x07;
   10BB 53 71 07            662 	anl	_tx_nextsend,#0x07
                            663 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:110: wait_for_ack=0;
   10BE C2 0B               664 	clr	_wait_for_ack
                            665 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:111: inc_pcount=0;
   10C0 C2 10               666 	clr	_inc_pcount
                            667 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:112: init_rx();
   10C2 12 13 4F            668 	lcall	_init_rx
                            669 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:113: TR1=0;		// hier nicht noch einmal die ganze busfree Zeit warten
   10C5 C2 8E               670 	clr	_TCON_6
                            671 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:114: TH1=0xF0;
   10C7 75 8D F0            672 	mov	_TH1,#0xF0
                            673 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:115: TL1=0x00;
   10CA 75 8B 00            674 	mov	_TL1,#0x00
                            675 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:116: TR1=1;
   10CD D2 8E               676 	setb	_TCON_6
   10CF                     677 00108$:
                            678 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:119: EX1=1;	// ext1 int einschalten falls Empfang...
   10CF D2 AA               679 	setb	_IEN0_2
   10D1 02 13 30            680 	ljmp	00217$
   10D4                     681 00110$:
                            682 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:122: tx_nextsend++; //hier Zeiger erhöhen wenn Telegramm nicht gebildet werden konnte
   10D4 05 71               683 	inc	_tx_nextsend
                            684 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:123: tx_nextsend&=0x07;
   10D6 53 71 07            685 	anl	_tx_nextsend,#0x07
   10D9 02 13 30            686 	ljmp	00217$
   10DC                     687 00113$:
                            688 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:127: TR1=0;		// nichts mehr zu tun, also statemachine stoppen
   10DC C2 8E               689 	clr	_TCON_6
                            690 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:128: EX1=1;		// sicherstellen, dass ext. Int. 1 aktiv ist
   10DE D2 AA               691 	setb	_IEN0_2
                            692 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:130: break;
   10E0 02 13 30            693 	ljmp	00217$
                            694 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:133: case 2: // T=75us
   10E3                     695 00115$:
                            696 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:134: fbrx_bit=!IE1;				// Flipflop des ext. Int. 1 auslesen, ist 1 bei fallender Flanke am Pin
   10E3 A2 8B               697 	mov	c,_TCON_3
   10E5 B3                  698 	cpl	c
   10E6 92 18               699 	mov	b0,c
                            700 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:135: IE1=0;						// Flipflop zurücksetzen
   10E8 C2 8B               701 	clr	_TCON_3
                            702 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:136: fb_state=3;// nächster state: 3
   10EA 75 6E 03            703 	mov	_fb_state,#0x03
                            704 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:137: TH1=0;// reload auf 70µs (zeit swischen state 3 und 2)
   10ED 75 8D 00            705 	mov	_TH1,#0x00
                            706 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:138: if(fb_pattern==0) {			// fb_pattern=0 bedeutet, dass bisher nur das Startbit empfangen wurde
   10F0 E5 6D               707 	mov	a,_fb_pattern
   10F2 70 0A               708 	jnz	00149$
                            709 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:139: fb_pattern=1;			// 70us nach Startbit, als näcstes kommt Datenbit 0
   10F4 75 6D 01            710 	mov	_fb_pattern,#0x01
                            711 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:140: ack=0;					// Empfang eines neuen Bytes, also ack/nack Flags zurücksetzen
   10F7 C2 04               712 	clr	_ack
                            713 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:141: nack=0;
   10F9 C2 05               714 	clr	_nack
   10FB 02 13 30            715 	ljmp	00217$
   10FE                     716 00149$:
                            717 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:144: if(fb_pattern<129) {					// Daten-Bit LSB first
   10FE 74 7F               718 	mov	a,#0x100 - 0x81
   1100 25 6D               719 	add	a,_fb_pattern
   1102 40 1C               720 	jc	00146$
                            721 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:145: if(fbrx_bit) {
   1104 30 18 08            722 	jnb	b0,00117$
                            723 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:146: fb_parity=!fb_parity;			// Paritybit berechnen
   1107 B2 03               724 	cpl	_fb_parity
                            725 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:147: fbrx_byte+=fb_pattern;			// Datenbit speichern
   1109 E5 6D               726 	mov	a,_fb_pattern
   110B 25 6C               727 	add	a,_fbrx_byte
   110D F5 6C               728 	mov	_fbrx_byte,a
   110F                     729 00117$:
                            730 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:149: fb_pattern=fb_pattern<<1;			// nächstes Bit
   110F E5 6D               731 	mov	a,_fb_pattern
   1111 25 6D               732 	add	a,_fb_pattern
                            733 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:150: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gelesen, Parity-Bit folgt
   1113 F5 6D               734 	mov	_fb_pattern,a
   1115 60 03               735 	jz	00328$
   1117 02 13 30            736 	ljmp	00217$
   111A                     737 00328$:
   111A 75 6D 81            738 	mov	_fb_pattern,#0x81
   111D 02 13 30            739 	ljmp	00217$
   1120                     740 00146$:
                            741 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:153: TR1=0;
   1120 C2 8E               742 	clr	_TCON_6
                            743 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:154: TF1=0; //prüfen ob erforderlich!!!
   1122 C2 8F               744 	clr	_TCON_7
                            745 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:155: if(fb_parity==fbrx_bit) {				// Parity-Bit OK
   1124 A2 03               746 	mov	c,_fb_parity
   1126 20 18 01            747 	jb	b0,00329$
   1129 B3                  748 	cpl	c
   112A                     749 00329$:
   112A 50 26               750 	jnc	00130$
                            751 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:156: if (telpos==0) {						// erstes empfangenes Byte
   112C E5 6A               752 	mov	a,_telpos
   112E 70 0E               753 	jnz	00125$
                            754 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:157: if (fbrx_byte==0xCC) ack=1;				// ACK empfangen
   1130 74 CC               755 	mov	a,#0xCC
   1132 B5 6C 02            756 	cjne	a,_fbrx_byte,00121$
   1135 D2 04               757 	setb	_ack
   1137                     758 00121$:
                            759 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:158: if (fbrx_byte==0x0C) nack=1;			// NACK empfangen
   1137 74 0C               760 	mov	a,#0x0C
   1139 B5 6C 02            761 	cjne	a,_fbrx_byte,00125$
   113C D2 05               762 	setb	_nack
   113E                     763 00125$:
                            764 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:160: if (!ack && !nack) {					// Datenbyte empfangen
   113E 20 04 13            765 	jb	_ack,00131$
   1141 20 05 10            766 	jb	_nack,00131$
                            767 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:161: telegramm[telpos]=fbrx_byte;			// Byte speichern
   1144 E5 6A               768 	mov	a,_telpos
   1146 24 4B               769 	add	a,#_telegramm
   1148 F8                  770 	mov	r0,a
                            771 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:162: cs^=fbrx_byte;							// Checksum berechnen
   1149 E5 6C               772 	mov	a,_fbrx_byte
   114B F6                  773 	mov	@r0,a
   114C 62 6B               774 	xrl	_cs,a
                            775 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:163: telpos++;								// Telegrammzeiger erhöhen
   114E 05 6A               776 	inc	_telpos
   1150 80 02               777 	sjmp	00131$
   1152                     778 00130$:
                            779 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:166: else parity_ok=0;						// Parity Error
   1152 C2 01               780 	clr	_parity_ok
   1154                     781 00131$:
                            782 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:168: if (wait_for_ack) {						// es wird ein ACK erwartet
                            783 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:169: wait_for_ack=0;							// Flag zurücksetzen, da wir es ja gerade abarbeiten
   1154 10 0B 02            784 	jbc	_wait_for_ack,00338$
   1157 80 1D               785 	sjmp	00143$
   1159                     786 00338$:
                            787 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:170: if (ack && parity_ok) {					// ACK empfangen und auch erwartet
   1159 30 04 14            788 	jnb	_ack,00135$
   115C 30 01 11            789 	jnb	_parity_ok,00135$
                            790 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:171: repeat_count=4;						// keine Wiederholtelegramme mehr senden
   115F 75 6F 04            791 	mov	_repeat_count,#0x04
                            792 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:172: if(inc_pcount) {
                            793 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:173: inc_pcount=0;
   1162 10 10 02            794 	jbc	_inc_pcount,00341$
   1165 80 09               795 	sjmp	00135$
   1167                     796 00341$:
                            797 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:174: pcount+=4;
   1167 E5 46               798 	mov	a,_pcount
   1169 24 04               799 	add	a,#0x04
   116B F5 46               800 	mov	_pcount,a
                            801 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:175: pcount&=0x3C;
   116D 53 46 3C            802 	anl	_pcount,#0x3C
   1170                     803 00135$:
                            804 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:178: init_rx();
   1170 12 13 4F            805 	lcall	_init_rx
   1173 02 13 30            806 	ljmp	00217$
   1176                     807 00143$:
                            808 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:181: if (parity_ok && (!ack && !nack)) {		// ganz normales Datenbyte
   1176 30 01 1E            809 	jnb	_parity_ok,00138$
   1179 20 04 1B            810 	jb	_ack,00138$
   117C 20 05 18            811 	jb	_nack,00138$
                            812 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:182: TMOD=(TMOD & 0x0F) +0x10;			// Timer 1 als 16-Bit Timer
   117F 74 0F               813 	mov	a,#0x0F
   1181 55 89               814 	anl	a,_TMOD
   1183 24 10               815 	add	a,#0x10
   1185 F5 89               816 	mov	_TMOD,a
                            817 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:183: TH1=0xFA;//0xFA;							// Timer 1 auf Timeout-Position setzen (370us)
   1187 75 8D FA            818 	mov	_TH1,#0xFA
                            819 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:184: TL1=0x70;//4f 0xAB; (bis hierher sinds 91µs)
   118A 75 8B 70            820 	mov	_TL1,#0x70
                            821 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:185: TR1=1;
   118D D2 8E               822 	setb	_TCON_6
                            823 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:186: fb_state=4;							// nächster state: timeout = Telegramm fertig
   118F 75 6E 04            824 	mov	_fb_state,#0x04
                            825 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:187: EX1=1;								// int1 aktiv, falls noch ein Byte kommt
   1192 D2 AA               826 	setb	_IEN0_2
   1194 02 13 30            827 	ljmp	00217$
   1197                     828 00138$:
                            829 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:189: else init_rx();							// irgendwas empfangen
   1197 12 13 4F            830 	lcall	_init_rx
                            831 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:193: break;
   119A 02 13 30            832 	ljmp	00217$
                            833 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:195: case 3: // T=104us=0us
   119D                     834 00151$:
                            835 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:196: TH1=128;// reload auf 35µs (Zeit zwischen State 2 und 3)
   119D 75 8D 80            836 	mov	_TH1,#0x80
                            837 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:197: fb_state=2;//1
   11A0 75 6E 02            838 	mov	_fb_state,#0x02
                            839 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:198: break;
   11A3 02 13 30            840 	ljmp	00217$
                            841 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:200: case 4:	//	Timeout, d.h. Telegramm-Ende
   11A6                     842 00152$:
                            843 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:201: if (auto_ack && telpos>4) {		// wenn ACK gesendet werden soll und Telegramm zumindest 5 Bytes hat
   11A6 30 09 64            844 	jnb	_auto_ack,00170$
   11A9 E5 6A               845 	mov	a,_telpos
   11AB 24 FB               846 	add	a,#0xff - 0x04
   11AD 50 5E               847 	jnc	00170$
                            848 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:202: TR1=0;
   11AF C2 8E               849 	clr	_TCON_6
                            850 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:203: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
   11B1 74 0F               851 	mov	a,#0x0F
   11B3 55 89               852 	anl	a,_TMOD
   11B5 24 10               853 	add	a,#0x10
   11B7 F5 89               854 	mov	_TMOD,a
                            855 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:204: TH1=0xEF;					// Timer 1 auf ACK-Position setzen (15 Bit Pause = 2708µs (26 Bit) nach Beginn Startbit vom letzten Datenbyte)
   11B9 75 8D EF            856 	mov	_TH1,#0xEF
                            857 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:205: TL1=0x42;
   11BC 75 8B 42            858 	mov	_TL1,#0x42
                            859 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:206: TR1=1;
   11BF D2 8E               860 	setb	_TCON_6
                            861 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:207: its_me=transparency;			// indiziert, ob dieses Gerät adressiert wurde, bei transparecy=1 immer
   11C1 A2 0E               862 	mov	c,_transparency
   11C3 92 06               863 	mov	_its_me,c
                            864 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:208: if(telegramm[5]&0x80) {
   11C5 E5 50               865 	mov	a,(_telegramm + 0x0005)
   11C7 30 E7 1F            866 	jnb	acc.7,00162$
                            867 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:209: if (gapos_in_gat(telegramm[3],telegramm[4])!=0xFF) its_me=1;	// Gruppenadresse
   11CA 85 4E 82            868 	mov	dpl,(_telegramm + 0x0003)
   11CD C0 4F               869 	push	(_telegramm + 0x0004)
   11CF 12 13 C5            870 	lcall	_gapos_in_gat
   11D2 AF 82               871 	mov	r7,dpl
   11D4 15 81               872 	dec	sp
   11D6 BF FF 02            873 	cjne	r7,#0xFF,00348$
   11D9 80 02               874 	sjmp	00154$
   11DB                     875 00348$:
   11DB D2 06               876 	setb	_its_me
   11DD                     877 00154$:
                            878 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:210: if (telegramm[3]==0 && telegramm[4]==0) its_me=1;				// Broadcast
   11DD E5 4E               879 	mov	a,(_telegramm + 0x0003)
   11DF 70 1C               880 	jnz	00163$
   11E1 E5 4F               881 	mov	a,(_telegramm + 0x0004)
   11E3 70 18               882 	jnz	00163$
   11E5 D2 06               883 	setb	_its_me
   11E7 80 14               884 	sjmp	00163$
   11E9                     885 00162$:
                            886 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:212: else if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) its_me=1;	// phys. Adresse
   11E9 90 1D 17            887 	mov	dptr,#(_eeprom + 0x0017)
   11EC E4                  888 	clr	a
   11ED 93                  889 	movc	a,@a+dptr
   11EE FF                  890 	mov	r7,a
   11EF B5 4E 0B            891 	cjne	a,(_telegramm + 0x0003),00163$
   11F2 90 1D 18            892 	mov	dptr,#(_eeprom + 0x0018)
   11F5 E4                  893 	clr	a
   11F6 93                  894 	movc	a,@a+dptr
   11F7 FF                  895 	mov	r7,a
   11F8 B5 4F 02            896 	cjne	a,(_telegramm + 0x0004),00163$
   11FB D2 06               897 	setb	_its_me
   11FD                     898 00163$:
                            899 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:213: if ((cs==0xFF) && its_me) tel_arrived=1;
   11FD 74 FF               900 	mov	a,#0xFF
   11FF B5 6B 05            901 	cjne	a,_cs,00165$
   1202 30 06 02            902 	jnb	_its_me,00165$
   1205 D2 07               903 	setb	_tel_arrived
   1207                     904 00165$:
                            905 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:214: fb_state=5;					// nächster state: ACK-Position erreicht
   1207 75 6E 05            906 	mov	_fb_state,#0x05
   120A 02 13 30            907 	ljmp	00217$
   120D                     908 00170$:
                            909 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:218: if (telpos>1) tel_arrived=1;	// trotzdem den Eingang eines Telegramms anzeigen
   120D E5 6A               910 	mov	a,_telpos
   120F 24 FE               911 	add	a,#0xff - 0x01
   1211 50 02               912 	jnc	00168$
   1213 D2 07               913 	setb	_tel_arrived
   1215                     914 00168$:
                            915 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:219: init_rx();						// wieder in den Empfang zurück
   1215 12 13 4F            916 	lcall	_init_rx
                            917 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:221: break;
   1218 02 13 30            918 	ljmp	00217$
                            919 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:223: case 5:	// ACK-Position erreicht
   121B                     920 00173$:
                            921 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:224: TR1=0;
   121B C2 8E               922 	clr	_TCON_6
                            923 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:225: if (cs==0xFF) {	// Checksum OK
   121D 74 FF               924 	mov	a,#0xFF
   121F B5 6B 13            925 	cjne	a,_cs,00178$
                            926 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:226: if (its_me) {					// Gerät adressiert
   1222 30 06 0A            927 	jnb	_its_me,00175$
                            928 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:227: send_ack=1;
   1225 D2 0C               929 	setb	_send_ack
                            930 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:228: init_tx();						// Senden initiieren
   1227 12 13 7B            931 	lcall	_init_tx
                            932 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:229: wait_for_ack=0;					// bei ACK senden nicht erneut auf ACK warten
   122A C2 0B               933 	clr	_wait_for_ack
   122C 02 13 30            934 	ljmp	00217$
   122F                     935 00175$:
                            936 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:231: else init_rx();					// Gerät nicht adressiert, also zurück zu Empfang
   122F 12 13 4F            937 	lcall	_init_rx
   1232 02 13 30            938 	ljmp	00217$
   1235                     939 00178$:
                            940 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:234: send_nack=1;
   1235 D2 0D               941 	setb	_send_nack
                            942 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:235: init_tx();
   1237 12 13 7B            943 	lcall	_init_tx
                            944 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:236: wait_for_ack=0;					// bei NACK senden nicht erneut auf ACK warten
   123A C2 0B               945 	clr	_wait_for_ack
                            946 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:238: break;
   123C 02 13 30            947 	ljmp	00217$
                            948 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:242: case 10:	// Byte Senden, T=0us
   123F                     949 00180$:
                            950 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:243: send_byte=telegramm[telpos];
   123F E5 6A               951 	mov	a,_telpos
   1241 24 4B               952 	add	a,#_telegramm
   1243 F9                  953 	mov	r1,a
   1244 87 07               954 	mov	ar7,@r1
                            955 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:244: if (send_ack) send_byte=0xCC;
   1246 30 0C 02            956 	jnb	_send_ack,00182$
   1249 7F CC               957 	mov	r7,#0xCC
   124B                     958 00182$:
                            959 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:245: if (send_nack) send_byte=0x0C;
   124B 30 0D 02            960 	jnb	_send_nack,00184$
   124E 7F 0C               961 	mov	r7,#0x0C
   1250                     962 00184$:
                            963 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:246: EX1=0;					// Empfang verhindern
   1250 C2 AA               964 	clr	_IEN0_2
                            965 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:247: if(fb_state==10){
   1252 74 0A               966 	mov	a,#0x0A
   1254 B5 6E 02            967 	cjne	a,_fb_state,00364$
   1257 80 03               968 	sjmp	00365$
   1259                     969 00364$:
   1259 02 13 30            970 	ljmp	00217$
   125C                     971 00365$:
                            972 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:248: if (fb_pattern<=128) {			// Startbit und Datenbits (pattern=0:startbit, 1 2 4 8 .. 128 Datenbits, 129 parity)
   125C E5 6D               973 	mov	a,_fb_pattern
   125E 24 7F               974 	add	a,#0xff - 0x80
   1260 40 2C               975 	jc	00197$
                            976 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:249: if ((send_byte & fb_pattern)==0) {	// wenn Bit logisch 0 ist
   1262 E5 6D               977 	mov	a,_fb_pattern
   1264 5F                  978 	anl	a,r7
   1265 70 08               979 	jnz	00186$
                            980 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:251: FBOUTC=1;						// Bus runter ziehen
   1267 D2 96               981 	setb	_P1_6
                            982 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:253: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
   1269 C2 0A               983 	clr	_fbtx_bit
                            984 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:254: fb_parity=!fb_parity;			// Parity-Bit berechnen
   126B B2 03               985 	cpl	_fb_parity
   126D 80 02               986 	sjmp	00187$
   126F                     987 00186$:
                            988 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:256: else fbtx_bit=1;
   126F D2 0A               989 	setb	_fbtx_bit
   1271                     990 00187$:
                            991 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:257: if (fb_pattern==0) {				// wenn Startbit: parity zurücksetzen
   1271 E5 6D               992 	mov	a,_fb_pattern
   1273 70 07               993 	jnz	00189$
                            994 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:258: fb_pattern=1;					// auf erstes Datenbit zeigen
   1275 75 6D 01            995 	mov	_fb_pattern,#0x01
                            996 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:259: fb_parity=0;
   1278 C2 03               997 	clr	_fb_parity
   127A 80 06               998 	sjmp	00190$
   127C                     999 00189$:
                           1000 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:261: else fb_pattern=fb_pattern<<1;		// nächstes Datenbit
   127C E5 6D              1001 	mov	a,_fb_pattern
   127E 25 6D              1002 	add	a,_fb_pattern
   1280 F5 6D              1003 	mov	_fb_pattern,a
   1282                    1004 00190$:
                           1005 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:262: if(fb_pattern==0) fb_pattern=129;	// alle Daten-Bits gesendet, Parity-Bit folgt
   1282 E5 6D              1006 	mov	a,_fb_pattern
   1284 70 03              1007 	jnz	00192$
   1286 75 6D 81           1008 	mov	_fb_pattern,#0x81
   1289                    1009 00192$:
                           1010 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:263: fb_state=11;
   1289 75 6E 0B           1011 	mov	_fb_state,#0x0B
   128C 80 13              1012 	sjmp	00198$
   128E                    1013 00197$:
                           1014 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:266: if (!fb_parity) {				// wenn Parity-Bit logisch 0
   128E 20 03 06           1015 	jb	_fb_parity,00194$
                           1016 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:267: FBOUTC=1;						// Bus runterziehen
   1291 D2 96              1017 	setb	_P1_6
                           1018 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:268: fbtx_bit=0;						// fbtx_bit dient zur späteren Kollisionsprüfung
   1293 C2 0A              1019 	clr	_fbtx_bit
   1295 80 02              1020 	sjmp	00195$
   1297                    1021 00194$:
                           1022 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:270: else fbtx_bit=1;
   1297 D2 0A              1023 	setb	_fbtx_bit
   1299                    1024 00195$:
                           1025 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:271: telpos++;					// nächstes Byte
   1299 05 6A              1026 	inc	_telpos
                           1027 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:272: fb_pattern=0;				// wieder mit Startbit beginnen
   129B 75 6D 00           1028 	mov	_fb_pattern,#0x00
                           1029 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:273: fb_state=13;				// Prüfen ob Telegramm fertig
   129E 75 6E 0D           1030 	mov	_fb_state,#0x0D
   12A1                    1031 00198$:
                           1032 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:275: TH1=18; //reload 70µ -delay interrupt (von state 11 auf 13)
   12A1 75 8D 12           1033 	mov	_TH1,#0x12
                           1034 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:277: break;
   12A4 02 13 30           1035 	ljmp	00217$
                           1036 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:279: case 11:	// Sendestufe aus, T=35us
   12A7                    1037 00201$:
                           1038 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:280: if(telpos==0 && fb_pattern==1) {	// 1. Byte Startbit
   12A7 E5 6A              1039 	mov	a,_telpos
   12A9 70 07              1040 	jnz	00203$
   12AB 74 01              1041 	mov	a,#0x01
   12AD B5 6D 02           1042 	cjne	a,_fb_pattern,00203$
                           1043 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:281: repeat_count++;		// angefangener Sendeversuch, also Zähler erhöhen
   12B0 05 6F              1044 	inc	_repeat_count
   12B2                    1045 00203$:
                           1046 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:283: FBOUTC=0;				// Sendestufe aus
   12B2 C2 96              1047 	clr	_P1_6
                           1048 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:284: if (fbtx_bit & IE1) {	// Kollision
   12B4 A2 0A              1049 	mov	c,_fbtx_bit
   12B6 82 8B              1050 	anl	c,_TCON_3
   12B8 50 07              1051 	jnc	00206$
                           1052 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:285: wait_for_ack=0;
   12BA C2 0B              1053 	clr	_wait_for_ack
                           1054 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:286: init_rx();				// Senden abbrechen und Empfang initialisieren
   12BC 12 13 4F           1055 	lcall	_init_rx
   12BF 80 06              1056 	sjmp	00207$
   12C1                    1057 00206$:
                           1058 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:289: fb_state=10;//12;
   12C1 75 6E 0A           1059 	mov	_fb_state,#0x0A
                           1060 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:290: TH1=110;// 35µs + delay (von state 10 auf 11)
   12C4 75 8D 6E           1061 	mov	_TH1,#0x6E
   12C7                    1062 00207$:
                           1063 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:292: IE1=0;					// Flipflop löschen
   12C7 C2 8B              1064 	clr	_TCON_3
                           1065 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:293: break;
                           1066 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:299: case 13:	// Byte übertragen, T=35us, prüfen ob Telegramm fertig
   12C9 80 65              1067 	sjmp	00217$
   12CB                    1068 00208$:
                           1069 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:300: FBOUTC=0;
   12CB C2 96              1070 	clr	_P1_6
                           1071 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:301: TR1=0;
   12CD C2 8E              1072 	clr	_TCON_6
                           1073 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:302: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
   12CF 74 0F              1074 	mov	a,#0x0F
   12D1 55 89              1075 	anl	a,_TMOD
   12D3 24 10              1076 	add	a,#0x10
   12D5 F5 89              1077 	mov	_TMOD,a
                           1078 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:303: TH1=0xFB;					// Timer 1 auf Interbyte Abstand setzen (3 Bit Pause = 312µs 
   12D7 75 8D FB           1079 	mov	_TH1,#0xFB
                           1080 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:304: TL1=0x90;
   12DA 75 8B 90           1081 	mov	_TL1,#0x90
                           1082 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:305: TR1=1;
   12DD D2 8E              1083 	setb	_TCON_6
                           1084 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:306: if (send_ack || send_nack) {	// ACK/NACK senden
   12DF 20 0C 03           1085 	jb	_send_ack,00212$
   12E2 30 0D 05           1086 	jnb	_send_nack,00213$
   12E5                    1087 00212$:
                           1088 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:307: init_rx();					// ACK senden abgeschlossen, also statemachine auf Anfang
   12E5 12 13 4F           1089 	lcall	_init_rx
   12E8 80 2B              1090 	sjmp	00214$
   12EA                    1091 00213$:
                           1092 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:310: if (telpos>((telegramm[5]&0x0F)+7)) {		// Telegramm fertig gesendet
   12EA 74 0F              1093 	mov	a,#0x0F
   12EC 55 50              1094 	anl	a,(_telegramm + 0x0005)
   12EE FF                 1095 	mov	r7,a
   12EF 7E 00              1096 	mov	r6,#0x00
   12F1 74 07              1097 	mov	a,#0x07
   12F3 2F                 1098 	add	a,r7
   12F4 FF                 1099 	mov	r7,a
   12F5 E4                 1100 	clr	a
   12F6 3E                 1101 	addc	a,r6
   12F7 FE                 1102 	mov	r6,a
   12F8 AC 6A              1103 	mov	r4,_telpos
   12FA 7D 00              1104 	mov	r5,#0x00
   12FC C3                 1105 	clr	c
   12FD EF                 1106 	mov	a,r7
   12FE 9C                 1107 	subb	a,r4
   12FF EE                 1108 	mov	a,r6
   1300 64 80              1109 	xrl	a,#0x80
   1302 8D F0              1110 	mov	b,r5
   1304 63 F0 80           1111 	xrl	b,#0x80
   1307 95 F0              1112 	subb	a,b
   1309 50 07              1113 	jnc	00210$
                           1114 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:311: tel_sent=1;
   130B D2 08              1115 	setb	_tel_sent
                           1116 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:312: init_rx();	// Telegramm senden abgeschlossen, ggf. wiederholen wenn nicht geackt wird
   130D 12 13 4F           1117 	lcall	_init_rx
   1310 80 03              1118 	sjmp	00214$
   1312                    1119 00210$:
                           1120 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:314: else fb_state=14;		// nächstes Byte: Interbyte Abstand einhalten
   1312 75 6E 0E           1121 	mov	_fb_state,#0x0E
   1315                    1122 00214$:
                           1123 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:316: IE1=0;
   1315 C2 8B              1124 	clr	_TCON_3
                           1125 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:317: break;
                           1126 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:319: case 14:	// Interbyte Abstand erreicht (=Stopbit + 2 Bit)
   1317 80 17              1127 	sjmp	00217$
   1319                    1128 00216$:
                           1129 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:320: TR1=0;
   1319 C2 8E              1130 	clr	_TCON_6
                           1131 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:321: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
   131B 74 0F              1132 	mov	a,#0x0F
   131D 55 89              1133 	anl	a,_TMOD
   131F 24 20              1134 	add	a,#0x20
   1321 F5 89              1135 	mov	_TMOD,a
                           1136 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:322: TH1=110;							// Timer 1 auf 104/3 us laden
   1323 75 8D 6E           1137 	mov	_TH1,#0x6E
                           1138 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:323: TL1=128;
   1326 75 8B 80           1139 	mov	_TL1,#0x80
                           1140 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:324: TF1=0;
   1329 C2 8F              1141 	clr	_TCON_7
                           1142 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:325: TR1=1;
   132B D2 8E              1143 	setb	_TCON_6
                           1144 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:326: fb_state=10;
   132D 75 6E 0A           1145 	mov	_fb_state,#0x0A
                           1146 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:331: }
   1330                    1147 00217$:
                           1148 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:332: interrupted=1;			// zeigt der app, dass sie unterbrochen wurde
   1330 D2 02              1149 	setb	_interrupted
   1332 D0 D0              1150 	pop	psw
   1334 D0 00              1151 	pop	(0+0)
   1336 D0 01              1152 	pop	(0+1)
   1338 D0 02              1153 	pop	(0+2)
   133A D0 03              1154 	pop	(0+3)
   133C D0 04              1155 	pop	(0+4)
   133E D0 05              1156 	pop	(0+5)
   1340 D0 06              1157 	pop	(0+6)
   1342 D0 07              1158 	pop	(0+7)
   1344 D0 83              1159 	pop	dph
   1346 D0 82              1160 	pop	dpl
   1348 D0 F0              1161 	pop	b
   134A D0 E0              1162 	pop	acc
   134C D0 23              1163 	pop	bits
   134E 32                 1164 	reti
                           1165 ;------------------------------------------------------------
                           1166 ;Allocation info for local variables in function 'init_rx'
                           1167 ;------------------------------------------------------------
                           1168 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:336: void init_rx(void) 	// Empfangen initiieren (statemachine auf Anfang)
                           1169 ;	-----------------------------------------
                           1170 ;	 function init_rx
                           1171 ;	-----------------------------------------
   134F                    1172 _init_rx:
                           1173 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:338: fb_state=0;
   134F 75 6E 00           1174 	mov	_fb_state,#0x00
                           1175 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:339: IE1=0;
   1352 C2 8B              1176 	clr	_TCON_3
                           1177 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:340: TR1=0;
   1354 C2 8E              1178 	clr	_TCON_6
                           1179 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:341: ET1=0;
   1356 C2 AB              1180 	clr	_IEN0_3
                           1181 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:342: cs=0;
   1358 75 6B 00           1182 	mov	_cs,#0x00
                           1183 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:343: telpos=0;
   135B 75 6A 00           1184 	mov	_telpos,#0x00
                           1185 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:344: TR1=0;
   135E C2 8E              1186 	clr	_TCON_6
                           1187 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:345: TMOD=(TMOD & 0x0F) +0x10;	// Timer 1 als 16-Bit Timer
   1360 74 0F              1188 	mov	a,#0x0F
   1362 55 89              1189 	anl	a,_TMOD
   1364 24 10              1190 	add	a,#0x10
   1366 F5 89              1191 	mov	_TMOD,a
                           1192 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:346: TH1=0x89;					// busfree Zeit = 15 Bit (auf ACK) + 11 Bit (ACK) + 53 Bit
   1368 75 8D 89           1193 	mov	_TH1,#0x89
                           1194 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:347: TL1=0xAF;
   136B 75 8B AF           1195 	mov	_TL1,#0xAF
                           1196 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:348: send_ack=0;
   136E C2 0C              1197 	clr	_send_ack
                           1198 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:349: send_nack=0;
   1370 C2 0D              1199 	clr	_send_nack
                           1200 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:350: TF1=0;
   1372 C2 8F              1201 	clr	_TCON_7
                           1202 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:351: TR1=1;
   1374 D2 8E              1203 	setb	_TCON_6
                           1204 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:352: EX1=1;
   1376 D2 AA              1205 	setb	_IEN0_2
                           1206 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:353: ET1=1;
   1378 D2 AB              1207 	setb	_IEN0_3
   137A 22                 1208 	ret
                           1209 ;------------------------------------------------------------
                           1210 ;Allocation info for local variables in function 'init_tx'
                           1211 ;------------------------------------------------------------
                           1212 ;n                         Allocated to registers r6 
                           1213 ;cs_pos                    Allocated to registers r7 
                           1214 ;------------------------------------------------------------
                           1215 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:357: void init_tx(void) 		// Checksum des Telegramms berechnen und Senden initiieren
                           1216 ;	-----------------------------------------
                           1217 ;	 function init_tx
                           1218 ;	-----------------------------------------
   137B                    1219 _init_tx:
                           1220 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:361: TR1=0;
   137B C2 8E              1221 	clr	_TCON_6
                           1222 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:362: TMOD=(TMOD & 0x0F) +0x20;			// Timer 1 als 8-Bit autoreload
   137D 74 0F              1223 	mov	a,#0x0F
   137F 55 89              1224 	anl	a,_TMOD
   1381 24 20              1225 	add	a,#0x20
   1383 F5 89              1226 	mov	_TMOD,a
                           1227 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:363: TH1=110;							// von state 10 auf 11
   1385 75 8D 6E           1228 	mov	_TH1,#0x6E
                           1229 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:364: TL1=128;							// von hier bis state 10
   1388 75 8B 80           1230 	mov	_TL1,#0x80
                           1231 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:365: TF1=0;
   138B C2 8F              1232 	clr	_TCON_7
                           1233 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:367: cs_pos=(telegramm[5]&0x0F)+7;		// Position der Checksum im Telegramm
   138D 74 0F              1234 	mov	a,#0x0F
   138F 55 50              1235 	anl	a,(_telegramm + 0x0005)
   1391 24 07              1236 	add	a,#0x07
   1393 FF                 1237 	mov	r7,a
                           1238 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:368: cs=0xFF;
   1394 75 6B FF           1239 	mov	_cs,#0xFF
                           1240 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:369: for(n=0;n<cs_pos;n++) {
   1397 7E 00              1241 	mov	r6,#0x00
   1399                    1242 00101$:
   1399 C3                 1243 	clr	c
   139A EE                 1244 	mov	a,r6
   139B 9F                 1245 	subb	a,r7
   139C 50 0B              1246 	jnc	00104$
                           1247 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:370: cs^=telegramm[n];				// Checksum berechnen
   139E EE                 1248 	mov	a,r6
   139F 24 4B              1249 	add	a,#_telegramm
   13A1 F9                 1250 	mov	r1,a
   13A2 E7                 1251 	mov	a,@r1
   13A3 FD                 1252 	mov	r5,a
   13A4 62 6B              1253 	xrl	_cs,a
                           1254 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:369: for(n=0;n<cs_pos;n++) {
   13A6 0E                 1255 	inc	r6
   13A7 80 F0              1256 	sjmp	00101$
   13A9                    1257 00104$:
                           1258 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:372: telegramm[cs_pos]=cs;				// Checksum hinter Nutzdaten anfügen
   13A9 EF                 1259 	mov	a,r7
   13AA 24 4B              1260 	add	a,#_telegramm
   13AC F8                 1261 	mov	r0,a
   13AD A6 6B              1262 	mov	@r0,_cs
                           1263 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:373: ack=0;
   13AF C2 04              1264 	clr	_ack
                           1265 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:374: nack=0;
   13B1 C2 05              1266 	clr	_nack
                           1267 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:375: wait_for_ack=1;
   13B3 D2 0B              1268 	setb	_wait_for_ack
                           1269 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:377: fb_state=10;						// nächster state: senden
   13B5 75 6E 0A           1270 	mov	_fb_state,#0x0A
                           1271 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:378: fb_pattern=0;						// nächstes zu sendendes Bit, 0=Startbit
   13B8 75 6D 00           1272 	mov	_fb_pattern,#0x00
                           1273 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:379: telpos=0;							// nächstes zu sendende Byte
   13BB 75 6A 00           1274 	mov	_telpos,#0x00
                           1275 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:380: EX1=0;								// ext. int1 inaktiv
   13BE C2 AA              1276 	clr	_IEN0_2
                           1277 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:381: TR1=1;								// Timer 1 starten
   13C0 D2 8E              1278 	setb	_TCON_6
                           1279 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:382: ET1=1;								// Timer 1 int. aktiv
   13C2 D2 AB              1280 	setb	_IEN0_3
   13C4 22                 1281 	ret
                           1282 ;------------------------------------------------------------
                           1283 ;Allocation info for local variables in function 'gapos_in_gat'
                           1284 ;------------------------------------------------------------
                           1285 ;gal                       Allocated to stack - _bp -3
                           1286 ;gah                       Allocated to registers r7 
                           1287 ;ga_position               Allocated to registers r6 
                           1288 ;n                         Allocated to registers 
                           1289 ;------------------------------------------------------------
                           1290 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:390: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
                           1291 ;	-----------------------------------------
                           1292 ;	 function gapos_in_gat
                           1293 ;	-----------------------------------------
   13C5                    1294 _gapos_in_gat:
   13C5 C0 14              1295 	push	_bp
   13C7 85 81 14           1296 	mov	_bp,sp
   13CA AF 82              1297 	mov	r7,dpl
                           1298 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:394: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
   13CC 7E FF              1299 	mov	r6,#0xFF
                           1300 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:395: if (eeprom[ADDRTAB]<0xFF && !transparency){
   13CE 90 1D 16           1301 	mov	dptr,#(_eeprom + 0x0016)
   13D1 E4                 1302 	clr	a
   13D2 93                 1303 	movc	a,@a+dptr
   13D3 FD                 1304 	mov	r5,a
   13D4 BD FF 00           1305 	cjne	r5,#0xFF,00130$
   13D7                    1306 00130$:
   13D7 50 3A              1307 	jnc	00107$
   13D9 20 0E 37           1308 	jb	_transparency,00107$
                           1309 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:396: if (eeprom[ADDRTAB]) {
   13DC 90 1D 16           1310 	mov	dptr,#(_eeprom + 0x0016)
   13DF E4                 1311 	clr	a
   13E0 93                 1312 	movc	a,@a+dptr
   13E1 60 30              1313 	jz	00107$
                           1314 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:397: for (n=1;n<=eeprom[ADDRTAB];n++) {
   13E3 7D 01              1315 	mov	r5,#0x01
   13E5                    1316 00109$:
   13E5 90 1D 16           1317 	mov	dptr,#(_eeprom + 0x0016)
   13E8 E4                 1318 	clr	a
   13E9 93                 1319 	movc	a,@a+dptr
   13EA FC                 1320 	mov	r4,a
   13EB C3                 1321 	clr	c
   13EC 9D                 1322 	subb	a,r5
   13ED 40 24              1323 	jc	00107$
                           1324 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:398: if (gah==eeprom[ADDRTAB+n*2+1] && gal==eeprom[ADDRTAB+n*2+2]) ga_position=n;	// Berechnung in [] nicht in lokale var !!!
   13EF ED                 1325 	mov	a,r5
   13F0 2D                 1326 	add	a,r5
   13F1 FC                 1327 	mov	r4,a
   13F2 24 17              1328 	add	a,#0x17
   13F4 90 1D 00           1329 	mov	dptr,#_eeprom
   13F7 93                 1330 	movc	a,@a+dptr
   13F8 FB                 1331 	mov	r3,a
   13F9 EF                 1332 	mov	a,r7
   13FA B5 03 13           1333 	cjne	a,ar3,00111$
   13FD 74 18              1334 	mov	a,#0x18
   13FF 2C                 1335 	add	a,r4
   1400 90 1D 00           1336 	mov	dptr,#_eeprom
   1403 93                 1337 	movc	a,@a+dptr
   1404 FC                 1338 	mov	r4,a
   1405 E5 14              1339 	mov	a,_bp
   1407 24 FD              1340 	add	a,#0xfd
   1409 F8                 1341 	mov	r0,a
   140A E6                 1342 	mov	a,@r0
   140B B5 04 02           1343 	cjne	a,ar4,00111$
   140E 8D 06              1344 	mov	ar6,r5
   1410                    1345 00111$:
                           1346 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:397: for (n=1;n<=eeprom[ADDRTAB];n++) {
   1410 0D                 1347 	inc	r5
   1411 80 D2              1348 	sjmp	00109$
   1413                    1349 00107$:
                           1350 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:402: return (ga_position);
   1413 8E 82              1351 	mov	dpl,r6
   1415 D0 14              1352 	pop	_bp
   1417 22                 1353 	ret
                           1354 ;------------------------------------------------------------
                           1355 ;Allocation info for local variables in function 'build_tel'
                           1356 ;------------------------------------------------------------
                           1357 ;objno                     Allocated to registers r7 
                           1358 ;build_ok                  Allocated to registers b0 
                           1359 ;objvalue                  Allocated to stack - _bp +1
                           1360 ;ga                        Allocated to registers r5 r6 
                           1361 ;objtype                   Allocated to registers r6 
                           1362 ;n                         Allocated to registers r7 
                           1363 ;length                    Allocated to registers r6 
                           1364 ;type                      Allocated to registers b2 
                           1365 ;repeatflag                Allocated to registers b1 
                           1366 ;------------------------------------------------------------
                           1367 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:408: __bit build_tel(unsigned char objno)
                           1368 ;	-----------------------------------------
                           1369 ;	 function build_tel
                           1370 ;	-----------------------------------------
   1418                    1371 _build_tel:
   1418 C0 14              1372 	push	_bp
   141A E5 81              1373 	mov	a,sp
   141C F5 14              1374 	mov	_bp,a
   141E 24 04              1375 	add	a,#0x04
   1420 F5 81              1376 	mov	sp,a
   1422 AF 82              1377 	mov	r7,dpl
                           1378 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:410: __bit build_ok=0;
   1424 C2 18              1379 	clr	b0
                           1380 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:417: repeatflag=objno&0x20;
   1426 EF                 1381 	mov	a,r7
   1427 A2 E5              1382 	mov	c,acc[5]
   1429 E4                 1383 	clr	a
   142A 33                 1384 	rlc	a
   142B FE                 1385 	mov	r6,a
   142C 24 FF              1386 	add	a,#0xff
   142E 92 19              1387 	mov	b1,c
                           1388 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:419: if(objno<128) {		// Multicast
   1430 BF 80 00           1389 	cjne	r7,#0x80,00169$
   1433                    1390 00169$:
   1433 40 03              1391 	jc	00170$
   1435 02 15 30           1392 	ljmp	00130$
   1438                    1393 00170$:
                           1394 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:420: type=(objno&0x40);	// bei Multicast ist type0 normal und type1 response telegramm
   1438 EF                 1395 	mov	a,r7
   1439 23                 1396 	rl	a
   143A 23                 1397 	rl	a
   143B 54 01              1398 	anl	a,#0x01
   143D 24 FF              1399 	add	a,#0xff
   143F 92 1A              1400 	mov	b2,c
                           1401 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:421: objno&=0x1F;
   1441 53 07 1F           1402 	anl	ar7,#0x1F
                           1403 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:423: objvalue=read_obj_value(objno);		// Objektwert lesen
   1444 8F 82              1404 	mov	dpl,r7
   1446 C0 07              1405 	push	ar7
   1448 C0 23              1406 	push	bits
   144A 12 07 0C           1407 	lcall	_read_obj_value
   144D AB 82              1408 	mov	r3,dpl
   144F AC 83              1409 	mov	r4,dph
   1451 AD F0              1410 	mov	r5,b
   1453 FE                 1411 	mov	r6,a
   1454 D0 23              1412 	pop	bits
   1456 D0 07              1413 	pop	ar7
   1458 A8 14              1414 	mov	r0,_bp
   145A 08                 1415 	inc	r0
   145B A6 03              1416 	mov	@r0,ar3
   145D 08                 1417 	inc	r0
   145E A6 04              1418 	mov	@r0,ar4
   1460 08                 1419 	inc	r0
   1461 A6 05              1420 	mov	@r0,ar5
   1463 08                 1421 	inc	r0
   1464 A6 06              1422 	mov	@r0,ar6
                           1423 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:425: ga=find_ga(objno);					// wenn keine Gruppenadresse hinterlegt nix tun
   1466 8F 82              1424 	mov	dpl,r7
   1468 C0 07              1425 	push	ar7
   146A C0 23              1426 	push	bits
   146C 12 18 BD           1427 	lcall	_find_ga
   146F AA 82              1428 	mov	r2,dpl
   1471 AE 83              1429 	mov	r6,dph
   1473 D0 23              1430 	pop	bits
   1475 D0 07              1431 	pop	ar7
   1477 8A 05              1432 	mov	ar5,r2
                           1433 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:426: if (ga!=0)
   1479 ED                 1434 	mov	a,r5
   147A 4E                 1435 	orl	a,r6
   147B 70 03              1436 	jnz	00171$
   147D 02 16 0F           1437 	ljmp	00131$
   1480                    1438 00171$:
                           1439 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:428: telegramm[0]=0xBC;
   1480 75 4B BC           1440 	mov	_telegramm,#0xBC
                           1441 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:429: telegramm[1]=eeprom[ADDRTAB+1];
   1483 90 1D 17           1442 	mov	dptr,#(_eeprom + 0x0017)
   1486 E4                 1443 	clr	a
   1487 93                 1444 	movc	a,@a+dptr
   1488 FC                 1445 	mov	r4,a
   1489 8C 4C              1446 	mov	(_telegramm + 0x0001),r4
                           1447 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:430: telegramm[2]=eeprom[ADDRTAB+2];
   148B 90 1D 18           1448 	mov	dptr,#(_eeprom + 0x0018)
   148E E4                 1449 	clr	a
   148F 93                 1450 	movc	a,@a+dptr
   1490 FC                 1451 	mov	r4,a
   1491 8C 4D              1452 	mov	(_telegramm + 0x0002),r4
                           1453 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:431: telegramm[3]=ga>>8;
   1493 8E 04              1454 	mov	ar4,r6
   1495 8C 4E              1455 	mov	(_telegramm + 0x0003),r4
                           1456 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:432: telegramm[4]=ga;
   1497 8D 4F              1457 	mov	(_telegramm + 0x0004),r5
                           1458 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:433: telegramm[6]=0x00;
   1499 75 51 00           1459 	mov	(_telegramm + 0x0006),#0x00
                           1460 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:434: if (type) telegramm[7]=0x40;		// read_value_response Telegramm (angefordert)
   149C 30 1A 05           1461 	jnb	b2,00102$
   149F 75 52 40           1462 	mov	(_telegramm + 0x0007),#0x40
   14A2 80 03              1463 	sjmp	00103$
   14A4                    1464 00102$:
                           1465 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:435: else telegramm[7]=0x80;				// write_value_request Telegramm (nicht angefordert)
   14A4 75 52 80           1466 	mov	(_telegramm + 0x0007),#0x80
   14A7                    1467 00103$:
                           1468 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:437: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
   14A7 90 1D 12           1469 	mov	dptr,#(_eeprom + 0x0012)
   14AA E4                 1470 	clr	a
   14AB 93                 1471 	movc	a,@a+dptr
   14AC FE                 1472 	mov	r6,a
   14AD EF                 1473 	mov	a,r7
   14AE 75 F0 03           1474 	mov	b,#0x03
   14B1 A4                 1475 	mul	ab
   14B2 2E                 1476 	add	a,r6
   14B3 24 04              1477 	add	a,#0x04
   14B5 90 1D 00           1478 	mov	dptr,#_eeprom
   14B8 93                 1479 	movc	a,@a+dptr
                           1480 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:439: if(objtype>6) length=objtype-5; else length=1;
   14B9 FE                 1481 	mov  r6,a
   14BA 24 F9              1482 	add	a,#0xff - 0x06
   14BC 50 06              1483 	jnc	00105$
   14BE EE                 1484 	mov	a,r6
   14BF 24 FB              1485 	add	a,#0xFB
   14C1 FE                 1486 	mov	r6,a
   14C2 80 02              1487 	sjmp	00106$
   14C4                    1488 00105$:
   14C4 7E 01              1489 	mov	r6,#0x01
   14C6                    1490 00106$:
                           1491 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:440: telegramm[5]=0xE0+length;
   14C6 74 E0              1492 	mov	a,#0xE0
   14C8 2E                 1493 	add	a,r6
   14C9 F5 50              1494 	mov	(_telegramm + 0x0005),a
                           1495 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:441: if (length>1) telegramm[length+6]=objvalue; else telegramm[7]+=(objvalue&0x3F);
   14CB EE                 1496 	mov	a,r6
   14CC 24 FE              1497 	add	a,#0xff - 0x01
   14CE 50 0F              1498 	jnc	00108$
   14D0 74 06              1499 	mov	a,#0x06
   14D2 2E                 1500 	add	a,r6
   14D3 24 4B              1501 	add	a,#_telegramm
   14D5 F9                 1502 	mov	r1,a
   14D6 A8 14              1503 	mov	r0,_bp
   14D8 08                 1504 	inc	r0
   14D9 86 03              1505 	mov	ar3,@r0
   14DB A7 03              1506 	mov	@r1,ar3
   14DD 80 10              1507 	sjmp	00109$
   14DF                    1508 00108$:
   14DF A8 14              1509 	mov	r0,_bp
   14E1 08                 1510 	inc	r0
   14E2 74 3F              1511 	mov	a,#0x3F
   14E4 56                 1512 	anl	a,@r0
   14E5 FA                 1513 	mov	r2,a
   14E6 E4                 1514 	clr	a
   14E7 FB                 1515 	mov	r3,a
   14E8 FC                 1516 	mov	r4,a
   14E9 FD                 1517 	mov	r5,a
   14EA EA                 1518 	mov	a,r2
   14EB 25 52              1519 	add	a,(_telegramm + 0x0007)
   14ED F5 52              1520 	mov	(_telegramm + 0x0007),a
   14EF                    1521 00109$:
                           1522 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:442: if (length>2) telegramm[length+5]=objvalue>>8;
   14EF EE                 1523 	mov	a,r6
   14F0 24 FD              1524 	add	a,#0xff - 0x02
   14F2 50 0E              1525 	jnc	00111$
   14F4 74 05              1526 	mov	a,#0x05
   14F6 2E                 1527 	add	a,r6
   14F7 24 4B              1528 	add	a,#_telegramm
   14F9 F9                 1529 	mov	r1,a
   14FA A8 14              1530 	mov	r0,_bp
   14FC 08                 1531 	inc	r0
   14FD 08                 1532 	inc	r0
   14FE 86 05              1533 	mov	ar5,@r0
   1500 A7 05              1534 	mov	@r1,ar5
   1502                    1535 00111$:
                           1536 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:443: if (length>3) telegramm[length+4]=objvalue>>16;
   1502 EE                 1537 	mov	a,r6
   1503 24 FC              1538 	add	a,#0xff - 0x03
   1505 50 0F              1539 	jnc	00113$
   1507 74 04              1540 	mov	a,#0x04
   1509 2E                 1541 	add	a,r6
   150A 24 4B              1542 	add	a,#_telegramm
   150C F9                 1543 	mov	r1,a
   150D A8 14              1544 	mov	r0,_bp
   150F 08                 1545 	inc	r0
   1510 08                 1546 	inc	r0
   1511 08                 1547 	inc	r0
   1512 86 05              1548 	mov	ar5,@r0
   1514 A7 05              1549 	mov	@r1,ar5
   1516                    1550 00113$:
                           1551 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:444: if (length>4) telegramm[length+3]=objvalue>>24;
   1516 EE                 1552 	mov	a,r6
   1517 24 FB              1553 	add	a,#0xff - 0x04
   1519 50 10              1554 	jnc	00115$
   151B 74 03              1555 	mov	a,#0x03
   151D 2E                 1556 	add	a,r6
   151E 24 4B              1557 	add	a,#_telegramm
   1520 F9                 1558 	mov	r1,a
   1521 A8 14              1559 	mov	r0,_bp
   1523 08                 1560 	inc	r0
   1524 08                 1561 	inc	r0
   1525 08                 1562 	inc	r0
   1526 08                 1563 	inc	r0
   1527 86 06              1564 	mov	ar6,@r0
   1529 A7 06              1565 	mov	@r1,ar6
   152B                    1566 00115$:
                           1567 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:446: build_ok=1;
   152B D2 18              1568 	setb	b0
   152D 02 16 0F           1569 	ljmp	00131$
   1530                    1570 00130$:
                           1571 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:450: telegramm[0]=0xB0;				// Control Byte
   1530 75 4B B0           1572 	mov	_telegramm,#0xB0
                           1573 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:451: telegramm[1]=eeprom[ADDRTAB+1];	// Quelladresse ist phys. Adresse
   1533 90 1D 17           1574 	mov	dptr,#(_eeprom + 0x0017)
   1536 E4                 1575 	clr	a
   1537 93                 1576 	movc	a,@a+dptr
   1538 FE                 1577 	mov	r6,a
   1539 8E 4C              1578 	mov	(_telegramm + 0x0001),r6
                           1579 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:452: telegramm[2]=eeprom[ADDRTAB+2];
   153B 90 1D 18           1580 	mov	dptr,#(_eeprom + 0x0018)
   153E E4                 1581 	clr	a
   153F 93                 1582 	movc	a,@a+dptr
   1540 FE                 1583 	mov	r6,a
   1541 8E 4D              1584 	mov	(_telegramm + 0x0002),r6
                           1585 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:453: telegramm[3]=conh;
   1543 85 44 4E           1586 	mov	(_telegramm + 0x0003),_conh
                           1587 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:454: telegramm[4]=conl;
   1546 85 45 4F           1588 	mov	(_telegramm + 0x0004),_conl
                           1589 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:456: switch(objno&0x1F) {
   1549 53 07 1F           1590 	anl	ar7,#0x1F
   154C EF                 1591 	mov	a,r7
   154D 24 FA              1592 	add	a,#0xff - 0x05
   154F 50 03              1593 	jnc	00178$
   1551 02 16 0D           1594 	ljmp	00128$
   1554                    1595 00178$:
   1554 EF                 1596 	mov	a,r7
   1555 2F                 1597 	add	a,r7
   1556 2F                 1598 	add	a,r7
   1557 90 15 5B           1599 	mov	dptr,#00179$
   155A 73                 1600 	jmp	@a+dptr
   155B                    1601 00179$:
   155B 02 16 0D           1602 	ljmp	00128$
   155E 02 15 6D           1603 	ljmp	00118$
   1561 02 15 79           1604 	ljmp	00119$
   1564 02 15 90           1605 	ljmp	00120$
   1567 02 15 A1           1606 	ljmp	00121$
   156A 02 16 07           1607 	ljmp	00127$
                           1608 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:457: case 1:	// NCD ACK Quittierung (129)
   156D                    1609 00118$:
                           1610 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:458: telegramm[5]=0x60;					// DRL
   156D 75 50 60           1611 	mov	(_telegramm + 0x0005),#0x60
                           1612 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:459: telegramm[6]=senders_pcount + 0xC2;	// Bit 6,7(TCPI = 11 NCD Quittierung) und Bit 0,1 (10=ACK)
   1570 74 C2              1613 	mov	a,#0xC2
   1572 25 4A              1614 	add	a,_senders_pcount
   1574 F5 51              1615 	mov	(_telegramm + 0x0006),a
                           1616 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:461: break;
   1576 02 16 0D           1617 	ljmp	00128$
                           1618 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:462: case 2:	// read mask response (130)
   1579                    1619 00119$:
                           1620 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:463: telegramm[5]=0x63;					// DRL
   1579 75 50 63           1621 	mov	(_telegramm + 0x0005),#0x63
                           1622 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:464: telegramm[6]=pcount + 0x43;			// bei response immer eigene Paketnummer senden
   157C 74 43              1623 	mov	a,#0x43
   157E 25 46              1624 	add	a,_pcount
   1580 F5 51              1625 	mov	(_telegramm + 0x0006),a
                           1626 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:465: telegramm[7]=0x40;
   1582 75 52 40           1627 	mov	(_telegramm + 0x0007),#0x40
                           1628 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:466: telegramm[8]=0x00;
   1585 75 53 00           1629 	mov	(_telegramm + 0x0008),#0x00
                           1630 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:467: telegramm[9]=0x12;					// Maskenversion 1 = BCU1
   1588 75 54 12           1631 	mov	(_telegramm + 0x0009),#0x12
                           1632 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:468: inc_pcount=1;
   158B D2 10              1633 	setb	_inc_pcount
                           1634 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:469: break;
   158D 02 16 0D           1635 	ljmp	00128$
                           1636 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:470: case 3:	// read PA response (131)
   1590                    1637 00120$:
                           1638 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:471: telegramm[3]=0x00;			// Zieladresse auf 0000, da Broadcast
   1590 75 4E 00           1639 	mov	(_telegramm + 0x0003),#0x00
                           1640 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:472: telegramm[4]=0x00;
   1593 75 4F 00           1641 	mov	(_telegramm + 0x0004),#0x00
                           1642 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:473: telegramm[5]=0xE1;			// DRL
   1596 75 50 E1           1643 	mov	(_telegramm + 0x0005),#0xE1
                           1644 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:474: telegramm[6]=0x01;
   1599 75 51 01           1645 	mov	(_telegramm + 0x0006),#0x01
                           1646 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:475: telegramm[7]=0x40;
   159C 75 52 40           1647 	mov	(_telegramm + 0x0007),#0x40
                           1648 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:476: break;
                           1649 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:477: case 4:	// memory_read_response (132)
   159F 80 6C              1650 	sjmp	00128$
   15A1                    1651 00121$:
                           1652 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:478: for(n=0;n<mem_length;n++) {
   15A1 7F 00              1653 	mov	r7,#0x00
   15A3                    1654 00134$:
   15A3 C3                 1655 	clr	c
   15A4 EF                 1656 	mov	a,r7
   15A5 95 47              1657 	subb	a,_mem_length
   15A7 50 42              1658 	jnc	00137$
                           1659 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:479: if (mem_adrh==0) {
   15A9 E5 48              1660 	mov	a,_mem_adrh
   15AB 70 2C              1661 	jnz	00125$
                           1662 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:480: telegramm[n+10]=userram[mem_adrl+n];
   15AD 74 0A              1663 	mov	a,#0x0A
   15AF 2F                 1664 	add	a,r7
   15B0 24 4B              1665 	add	a,#_telegramm
   15B2 F9                 1666 	mov	r1,a
   15B3 EF                 1667 	mov	a,r7
   15B4 25 49              1668 	add	a,_mem_adrl
   15B6 90 1C 00           1669 	mov	dptr,#_userram
   15B9 93                 1670 	movc	a,@a+dptr
   15BA F7                 1671 	mov	@r1,a
                           1672 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:481: if(mem_adrl+n==0x60) telegramm[n+10]=status60;	// ausser bei 0x60
   15BB AD 49              1673 	mov	r5,_mem_adrl
   15BD 7E 00              1674 	mov	r6,#0x00
   15BF 8F 03              1675 	mov	ar3,r7
   15C1 7C 00              1676 	mov	r4,#0x00
   15C3 EB                 1677 	mov	a,r3
   15C4 2D                 1678 	add	a,r5
   15C5 FD                 1679 	mov	r5,a
   15C6 EC                 1680 	mov	a,r4
   15C7 3E                 1681 	addc	a,r6
   15C8 FE                 1682 	mov	r6,a
   15C9 BD 60 1C           1683 	cjne	r5,#0x60,00136$
   15CC BE 00 19           1684 	cjne	r6,#0x00,00136$
   15CF 74 0A              1685 	mov	a,#0x0A
   15D1 2F                 1686 	add	a,r7
   15D2 24 4B              1687 	add	a,#_telegramm
   15D4 F8                 1688 	mov	r0,a
   15D5 A6 72              1689 	mov	@r0,_status60
   15D7 80 0F              1690 	sjmp	00136$
   15D9                    1691 00125$:
                           1692 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:483: else telegramm[n+10]=eeprom[mem_adrl+n];
   15D9 74 0A              1693 	mov	a,#0x0A
   15DB 2F                 1694 	add	a,r7
   15DC 24 4B              1695 	add	a,#_telegramm
   15DE F9                 1696 	mov	r1,a
   15DF EF                 1697 	mov	a,r7
   15E0 25 49              1698 	add	a,_mem_adrl
   15E2 90 1D 00           1699 	mov	dptr,#_eeprom
   15E5 93                 1700 	movc	a,@a+dptr
   15E6 FE                 1701 	mov	r6,a
   15E7 F7                 1702 	mov	@r1,a
   15E8                    1703 00136$:
                           1704 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:478: for(n=0;n<mem_length;n++) {
   15E8 0F                 1705 	inc	r7
   15E9 80 B8              1706 	sjmp	00134$
   15EB                    1707 00137$:
                           1708 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:485: telegramm[5]=mem_length+0x63;		// DRL (Anzahl Bytes + 3)
   15EB 74 63              1709 	mov	a,#0x63
   15ED 25 47              1710 	add	a,_mem_length
   15EF F5 50              1711 	mov	(_telegramm + 0x0005),a
                           1712 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:486: telegramm[6]=pcount|0x42;			// eigener Paketzaehler, TCPI und ersten beiden Befehlsbits
   15F1 74 42              1713 	mov	a,#0x42
   15F3 45 46              1714 	orl	a,_pcount
   15F5 F5 51              1715 	mov	(_telegramm + 0x0006),a
                           1716 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:487: telegramm[7]=mem_length|0x40;		// letzten 2 Befehlsbits
   15F7 74 40              1717 	mov	a,#0x40
   15F9 45 47              1718 	orl	a,_mem_length
   15FB F5 52              1719 	mov	(_telegramm + 0x0007),a
                           1720 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:488: telegramm[8]=mem_adrh;
   15FD 85 48 53           1721 	mov	(_telegramm + 0x0008),_mem_adrh
                           1722 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:489: telegramm[9]=mem_adrl;
   1600 85 49 54           1723 	mov	(_telegramm + 0x0009),_mem_adrl
                           1724 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:490: inc_pcount=1;
   1603 D2 10              1725 	setb	_inc_pcount
                           1726 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:491: break;
                           1727 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:492: case 5:	// T-disconnect (133)
   1605 80 06              1728 	sjmp	00128$
   1607                    1729 00127$:
                           1730 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:493: telegramm[5]=0x60;
   1607 75 50 60           1731 	mov	(_telegramm + 0x0005),#0x60
                           1732 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:494: telegramm[6]=0x81;
   160A 75 51 81           1733 	mov	(_telegramm + 0x0006),#0x81
                           1734 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:496: }
   160D                    1735 00128$:
                           1736 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:497: build_ok=1;
   160D D2 18              1737 	setb	b0
   160F                    1738 00131$:
                           1739 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:499: if(repeatflag) telegramm[0]&=0xDF;		// Wiederholungsbit löschen für Wiederholtelegramm
   160F 30 19 06           1740 	jnb	b1,00133$
   1612 74 DF              1741 	mov	a,#0xDF
   1614 55 4B              1742 	anl	a,_telegramm
   1616 F5 4B              1743 	mov	_telegramm,a
   1618                    1744 00133$:
                           1745 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:500: return(build_ok);
   1618 A2 18              1746 	mov	c,b0
   161A 85 14 81           1747 	mov	sp,_bp
   161D D0 14              1748 	pop	_bp
   161F 22                 1749 	ret
                           1750 ;------------------------------------------------------------
                           1751 ;Allocation info for local variables in function 'send_obj_value'
                           1752 ;------------------------------------------------------------
                           1753 ;objno                     Allocated to registers r7 
                           1754 ;success                   Allocated to registers b0 
                           1755 ;------------------------------------------------------------
                           1756 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:504: __bit send_obj_value(unsigned char objno)
                           1757 ;	-----------------------------------------
                           1758 ;	 function send_obj_value
                           1759 ;	-----------------------------------------
   1620                    1760 _send_obj_value:
   1620 AF 82              1761 	mov	r7,dpl
                           1762 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:506: __bit success=0;
   1622 C2 18              1763 	clr	b0
                           1764 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:508: if(tx_nextsend!=((tx_nextwrite+1)&0x07)) {
   1624 AD 70              1765 	mov	r5,_tx_nextwrite
   1626 7E 00              1766 	mov	r6,#0x00
   1628 0D                 1767 	inc	r5
   1629 BD 00 01           1768 	cjne	r5,#0x00,00107$
   162C 0E                 1769 	inc	r6
   162D                    1770 00107$:
   162D 53 05 07           1771 	anl	ar5,#0x07
   1630 7E 00              1772 	mov	r6,#0x00
   1632 AB 71              1773 	mov	r3,_tx_nextsend
   1634 7C 00              1774 	mov	r4,#0x00
   1636 EB                 1775 	mov	a,r3
   1637 B5 05 06           1776 	cjne	a,ar5,00108$
   163A EC                 1777 	mov	a,r4
   163B B5 06 02           1778 	cjne	a,ar6,00108$
   163E 80 0E              1779 	sjmp	00102$
   1640                    1780 00108$:
                           1781 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:509: tx_buffer[tx_nextwrite]=objno;
   1640 E5 70              1782 	mov	a,_tx_nextwrite
   1642 24 62              1783 	add	a,#_tx_buffer
   1644 F8                 1784 	mov	r0,a
   1645 A6 07              1785 	mov	@r0,ar7
                           1786 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:510: tx_nextwrite++;
   1647 05 70              1787 	inc	_tx_nextwrite
                           1788 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:511: tx_nextwrite&=0x07;
   1649 53 70 07           1789 	anl	_tx_nextwrite,#0x07
                           1790 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:512: success=1;
   164C D2 18              1791 	setb	b0
   164E                    1792 00102$:
                           1793 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:514: TR1=1;	// statemachine starten falls vorher in state 0 gestoppt
   164E D2 8E              1794 	setb	_TCON_6
                           1795 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:515: return(success);
   1650 A2 18              1796 	mov	c,b0
   1652 22                 1797 	ret
                           1798 ;------------------------------------------------------------
                           1799 ;Allocation info for local variables in function 'process_tel'
                           1800 ;------------------------------------------------------------
                           1801 ;tpdu                      Allocated to registers r6 
                           1802 ;apdu                      Allocated to registers r5 
                           1803 ;------------------------------------------------------------
                           1804 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:521: void process_tel(void)
                           1805 ;	-----------------------------------------
                           1806 ;	 function process_tel
                           1807 ;	-----------------------------------------
   1653                    1808 _process_tel:
                           1809 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:525: tel_arrived=0;
   1653 C2 07              1810 	clr	_tel_arrived
                           1811 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:526: tpdu=telegramm[6]&0xC3;
   1655 AF 51              1812 	mov	r7,(_telegramm + 0x0006)
   1657 74 C3              1813 	mov	a,#0xC3
   1659 5F                 1814 	anl	a,r7
   165A FE                 1815 	mov	r6,a
                           1816 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:527: apdu=telegramm[7];
   165B AD 52              1817 	mov	r5,(_telegramm + 0x0007)
                           1818 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:530: if(telegramm[3]==0 && telegramm[4]==0) {	// nur wenn wenn Zieladresse = 0
   165D E5 4E              1819 	mov	a,(_telegramm + 0x0003)
   165F FC                 1820 	mov	r4,a
   1660 70 2B              1821 	jnz	00142$
   1662 E5 4F              1822 	mov	a,(_telegramm + 0x0004)
   1664 70 27              1823 	jnz	00142$
                           1824 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:531: if(status60 & 0x01) {					// und nur im prog mode
   1666 E5 72              1825 	mov	a,_status60
   1668 20 E0 01           1826 	jb	acc.0,00201$
   166B 22                 1827 	ret
   166C                    1828 00201$:
                           1829 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:532: if(tpdu==BROADCAST_PDU_SET_PA_REQ && apdu==SET_PHYSADDR_REQUEST) set_pa();				// 00000000 11000000
   166C EE                 1830 	mov	a,r6
   166D 70 0E              1831 	jnz	00102$
   166F BD C0 0B           1832 	cjne	r5,#0xC0,00102$
   1672 C0 06              1833 	push	ar6
   1674 C0 05              1834 	push	ar5
   1676 12 18 31           1835 	lcall	_set_pa
   1679 D0 05              1836 	pop	ar5
   167B D0 06              1837 	pop	ar6
   167D                    1838 00102$:
                           1839 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:533: if(tpdu==BROADCAST_PDU_READ_PA && apdu==READ_PHYSADDR_REQUEST) send_obj_value(READ_PHYSADDR_RESPONSE);	// 00000001 00000000
   167D BE 01 02           1840 	cjne	r6,#0x01,00205$
   1680 80 01              1841 	sjmp	00206$
   1682                    1842 00205$:
   1682 22                 1843 	ret
   1683                    1844 00206$:
   1683 ED                 1845 	mov	a,r5
   1684 60 01              1846 	jz	00207$
   1686 22                 1847 	ret
   1687                    1848 00207$:
   1687 75 82 83           1849 	mov	dpl,#0x83
   168A 02 16 20           1850 	ljmp	_send_obj_value
   168D                    1851 00142$:
                           1852 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:538: if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag Bit 7, 0=phys. Adr., 1=Gruppenadr.
   168D E5 50              1853 	mov	a,(_telegramm + 0x0005)
   168F 30 E7 03           1854 	jnb	acc.7,00208$
   1692 02 17 39           1855 	ljmp	00139$
   1695                    1856 00208$:
                           1857 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:539: if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) {	// nur wenn es die eigene phys. Adr. ist
   1695 90 1D 17           1858 	mov	dptr,#(_eeprom + 0x0017)
   1698 E4                 1859 	clr	a
   1699 93                 1860 	movc	a,@a+dptr
   169A FB                 1861 	mov	r3,a
   169B EC                 1862 	mov	a,r4
   169C B5 03 02           1863 	cjne	a,ar3,00209$
   169F 80 01              1864 	sjmp	00210$
   16A1                    1865 00209$:
   16A1 22                 1866 	ret
   16A2                    1867 00210$:
   16A2 90 1D 18           1868 	mov	dptr,#(_eeprom + 0x0018)
   16A5 E4                 1869 	clr	a
   16A6 93                 1870 	movc	a,@a+dptr
   16A7 FC                 1871 	mov	r4,a
   16A8 B5 4F 02           1872 	cjne	a,(_telegramm + 0x0004),00211$
   16AB 80 01              1873 	sjmp	00212$
   16AD                    1874 00211$:
   16AD 22                 1875 	ret
   16AE                    1876 00212$:
                           1877 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:543: switch (tpdu) {	// transport layer control field
   16AE BE 42 02           1878 	cjne	r6,#0x42,00213$
   16B1 80 15              1879 	sjmp	00109$
   16B3                    1880 00213$:
   16B3 BE 43 02           1881 	cjne	r6,#0x43,00214$
   16B6 80 41              1882 	sjmp	00114$
   16B8                    1883 00214$:
   16B8 BE 80 02           1884 	cjne	r6,#0x80,00215$
   16BB 80 56              1885 	sjmp	00119$
   16BD                    1886 00215$:
   16BD BE 81 02           1887 	cjne	r6,#0x81,00216$
   16C0 80 62              1888 	sjmp	00122$
   16C2                    1889 00216$:
   16C2 BE 83 02           1890 	cjne	r6,#0x83,00217$
   16C5 80 6C              1891 	sjmp	00127$
   16C7                    1892 00217$:
   16C7 22                 1893 	ret
                           1894 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:545: case DATA_PDU_MEMORY_OPERATIONS:
   16C8                    1895 00109$:
                           1896 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:546: senders_pcount=telegramm[6]&0x3C;
   16C8 74 3C              1897 	mov	a,#0x3C
   16CA 5F                 1898 	anl	a,r7
   16CB F5 4A              1899 	mov	_senders_pcount,a
                           1900 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:547: apdu &= 0xF0;						// da bei memory operations nur obere 4 Bits aktiv
   16CD 53 05 F0           1901 	anl	ar5,#0xF0
                           1902 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:548: if(apdu==WRITE_MEMORY_REQUEST) {	// 01pppp10 1000xxxx
   16D0 BD 80 0D           1903 	cjne	r5,#0x80,00111$
                           1904 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:549: send_obj_value(NCD_ACK);
   16D3 75 82 81           1905 	mov	dpl,#0x81
   16D6 C0 05              1906 	push	ar5
   16D8 12 16 20           1907 	lcall	_send_obj_value
                           1908 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:550: write_memory();
   16DB 12 17 51           1909 	lcall	_write_memory
   16DE D0 05              1910 	pop	ar5
   16E0                    1911 00111$:
                           1912 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:552: if(apdu==READ_MEMORY_REQUEST) {		// 01pppp10 0000xxxx
   16E0 ED                 1913 	mov	a,r5
   16E1 60 01              1914 	jz	00220$
   16E3 22                 1915 	ret
   16E4                    1916 00220$:
                           1917 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:553: mem_length=telegramm[7];		// Anzahl Bytes für späteres(!) memory Auslesen
   16E4 85 52 47           1918 	mov	_mem_length,(_telegramm + 0x0007)
                           1919 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:554: mem_adrh = telegramm[8];		// Adresse
   16E7 85 53 48           1920 	mov	_mem_adrh,(_telegramm + 0x0008)
                           1921 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:555: mem_adrl = telegramm[9];
   16EA 85 54 49           1922 	mov	_mem_adrl,(_telegramm + 0x0009)
                           1923 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:556: send_obj_value(NCD_ACK);
   16ED 75 82 81           1924 	mov	dpl,#0x81
   16F0 12 16 20           1925 	lcall	_send_obj_value
                           1926 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:557: send_obj_value(READ_MEMORY_RESPONSE);
   16F3 75 82 84           1927 	mov	dpl,#0x84
                           1928 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:559: break;
                           1929 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:561: case DATA_PDU_MISC_OPERATIONS:
   16F6 02 16 20           1930 	ljmp	_send_obj_value
   16F9                    1931 00114$:
                           1932 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:562: senders_pcount=telegramm[6]&0x3C;
   16F9 74 3C              1933 	mov	a,#0x3C
   16FB 5F                 1934 	anl	a,r7
   16FC F5 4A              1935 	mov	_senders_pcount,a
                           1936 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:563: if(apdu==RESTART_REQUEST) {		// 01pppp11 10000000
   16FE BD 80 03           1937 	cjne	r5,#0x80,00116$
                           1938 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:564: AUXR1|=0x08;				// Software Reset
   1701 43 A2 08           1939 	orl	_AUXR1,#0x08
   1704                    1940 00116$:
                           1941 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:566: if(apdu==READ_MASK_VERSION_REQUEST) {		// 01pppp11 00000000
   1704 ED                 1942 	mov	a,r5
   1705 70 49              1943 	jnz	00145$
                           1944 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:567: send_obj_value(NCD_ACK);
   1707 75 82 81           1945 	mov	dpl,#0x81
   170A 12 16 20           1946 	lcall	_send_obj_value
                           1947 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:568: send_obj_value(READ_MASK_VERSION_RESPONSE);
   170D 75 82 82           1948 	mov	dpl,#0x82
                           1949 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:570: break;
                           1950 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:572: case CONNECT_PDU:	// 10000000 xxxxxxxx
   1710 02 16 20           1951 	ljmp	_send_obj_value
   1713                    1952 00119$:
                           1953 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:573: if(!connected) {				// wenn bereits verbunden: ignorieren
   1713 20 0F 3A           1954 	jb	_connected,00145$
                           1955 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:574: connected=1;
   1716 D2 0F              1956 	setb	_connected
                           1957 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:575: conh=telegramm[1];			// phys. Adresse des Verbindungspartners
   1718 85 4C 44           1958 	mov	_conh,(_telegramm + 0x0001)
                           1959 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:576: conl=telegramm[2];
   171B 85 4D 45           1960 	mov	_conl,(_telegramm + 0x0002)
                           1961 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:577: pcount=0;					// Paketzaehler zuruecksetzen
   171E 75 46 00           1962 	mov	_pcount,#0x00
                           1963 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:578: inc_pcount=0;
   1721 C2 10              1964 	clr	_inc_pcount
                           1965 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:580: break;
                           1966 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:582: case DISCONNECT_PDU:	// 10000001 xxxxxxxx
   1723 22                 1967 	ret
   1724                    1968 00122$:
                           1969 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:583: if(conh==telegramm[1] && conl==telegramm[2] && connected)	{	// nur abbauen, wenn verbunden und Anforderung vom Verbindungspartner, kein ACK senden
   1724 E5 4C              1970 	mov	a,(_telegramm + 0x0001)
   1726 B5 44 27           1971 	cjne	a,_conh,00145$
   1729 E5 4D              1972 	mov	a,(_telegramm + 0x0002)
   172B B5 45 22           1973 	cjne	a,_conl,00145$
                           1974 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:584: connected=0;
   172E 10 0F 01           1975 	jbc	_connected,00229$
   1731 22                 1976 	ret
   1732                    1977 00229$:
                           1978 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:588: break;
                           1979 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:590: case NACK_PDU:	// 11pppp11 xxxxxxxx
   1732 22                 1980 	ret
   1733                    1981 00127$:
                           1982 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:591: send_obj_value(T_DISCONNECT);
   1733 75 82 85           1983 	mov	dpl,#0x85
                           1984 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:593: }
   1736 02 16 20           1985 	ljmp	_send_obj_value
   1739                    1986 00139$:
                           1987 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:599: if(tpdu==GROUP_PDU){
   1739 EE                 1988 	mov	a,r6
   173A 70 14              1989 	jnz	00145$
                           1990 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:600: if((apdu&0xC0)==WRITE_GROUP) write_value_req();	// Objektwerte schreiben (zB. EISx)		00000000 10xxxxxx
   173C 74 C0              1991 	mov	a,#0xC0
   173E 5D                 1992 	anl	a,r5
   173F FF                 1993 	mov	r7,a
   1740 BF 80 07           1994 	cjne	r7,#0x80,00133$
   1743 C0 05              1995 	push	ar5
   1745 12 07 89           1996 	lcall	_write_value_req
   1748 D0 05              1997 	pop	ar5
   174A                    1998 00133$:
                           1999 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:601: if(apdu==READ_GROUP_REQUEST) read_value_req();	// Objektwert lesen und read_value_response senden	00000000 00000000
   174A ED                 2000 	mov	a,r5
   174B 70 03              2001 	jnz	00145$
   174D 02 09 0B           2002 	ljmp	_read_value_req
   1750                    2003 00145$:
   1750 22                 2004 	ret
                           2005 ;------------------------------------------------------------
                           2006 ;Allocation info for local variables in function 'write_memory'
                           2007 ;------------------------------------------------------------
                           2008 ;ab                        Allocated to stack - _bp +1
                           2009 ;n                         Allocated to stack - _bp +2
                           2010 ;sloc0                     Allocated to stack - _bp +3
                           2011 ;------------------------------------------------------------
                           2012 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:612: void write_memory(void)
                           2013 ;	-----------------------------------------
                           2014 ;	 function write_memory
                           2015 ;	-----------------------------------------
   1751                    2016 _write_memory:
   1751 C0 14              2017 	push	_bp
   1753 E5 81              2018 	mov	a,sp
   1755 F5 14              2019 	mov	_bp,a
   1757 24 04              2020 	add	a,#0x04
   1759 F5 81              2021 	mov	sp,a
                           2022 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:616: ab=telegramm[7]&0x0F;		// Anzahl Bytes
   175B A8 14              2023 	mov	r0,_bp
   175D 08                 2024 	inc	r0
   175E 74 0F              2025 	mov	a,#0x0F
   1760 55 52              2026 	anl	a,(_telegramm + 0x0007)
   1762 F6                 2027 	mov	@r0,a
                           2028 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:618: while(fb_state!=0);					// warten falls noch gesendet wird
   1763                    2029 00101$:
   1763 E5 6E              2030 	mov	a,_fb_state
   1765 70 FC              2031 	jnz	00101$
                           2032 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:620: EA=0;
   1767 C2 AF              2033 	clr	_IEN0_7
                           2034 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:621: START_WRITECYCLE;					// load command, leert das pageregister
   1769 75 E4 00           2035 	mov	_FMCON,#0x00
                           2036 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:622: for(n=0;n<ab;n++) {
   176C AE 54              2037 	mov	r6,(_telegramm + 0x0009)
   176E AD 53              2038 	mov	r5,(_telegramm + 0x0008)
   1770 74 01              2039 	mov	a,#0x01
   1772 5D                 2040 	anl	a,r5
   1773 24 1C              2041 	add	a,#0x1C
   1775 FC                 2042 	mov	r4,a
   1776 A8 14              2043 	mov	r0,_bp
   1778 08                 2044 	inc	r0
   1779 08                 2045 	inc	r0
   177A 76 00              2046 	mov	@r0,#0x00
   177C                    2047 00111$:
   177C A8 14              2048 	mov	r0,_bp
   177E 08                 2049 	inc	r0
   177F 08                 2050 	inc	r0
   1780 A9 14              2051 	mov	r1,_bp
   1782 09                 2052 	inc	r1
   1783 C3                 2053 	clr	c
   1784 E6                 2054 	mov	a,@r0
   1785 97                 2055 	subb	a,@r1
   1786 40 03              2056 	jc	00135$
   1788 02 18 26           2057 	ljmp	00114$
   178B                    2058 00135$:
                           2059 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:623: if(telegramm[8]==0 && (telegramm[9]+n)==0x60) status60=telegramm[10+n];
   178B ED                 2060 	mov	a,r5
   178C 70 30              2061 	jnz	00105$
   178E C0 04              2062 	push	ar4
   1790 8E 02              2063 	mov	ar2,r6
   1792 7C 00              2064 	mov	r4,#0x00
   1794 A8 14              2065 	mov	r0,_bp
   1796 08                 2066 	inc	r0
   1797 08                 2067 	inc	r0
   1798 86 03              2068 	mov	ar3,@r0
   179A 7F 00              2069 	mov	r7,#0x00
   179C EB                 2070 	mov	a,r3
   179D 2A                 2071 	add	a,r2
   179E FA                 2072 	mov	r2,a
   179F EF                 2073 	mov	a,r7
   17A0 3C                 2074 	addc	a,r4
   17A1 FC                 2075 	mov	r4,a
   17A2 BA 60 05           2076 	cjne	r2,#0x60,00137$
   17A5 BC 00 02           2077 	cjne	r4,#0x00,00137$
   17A8 80 04              2078 	sjmp	00138$
   17AA                    2079 00137$:
   17AA D0 04              2080 	pop	ar4
   17AC 80 10              2081 	sjmp	00105$
   17AE                    2082 00138$:
   17AE D0 04              2083 	pop	ar4
   17B0 A8 14              2084 	mov	r0,_bp
   17B2 08                 2085 	inc	r0
   17B3 08                 2086 	inc	r0
   17B4 74 0A              2087 	mov	a,#0x0A
   17B6 26                 2088 	add	a,@r0
   17B7 24 4B              2089 	add	a,#_telegramm
   17B9 F9                 2090 	mov	r1,a
   17BA 87 72              2091 	mov	_status60,@r1
   17BC 80 02              2092 	sjmp	00106$
   17BE                    2093 00105$:
                           2094 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:624: else WRITE_BYTE(telegramm[8],telegramm[9]+n,telegramm[n+10]);
   17BE 8C E7              2095 	mov	_FMADRH,r4
   17C0                    2096 00106$:
   17C0 A8 14              2097 	mov	r0,_bp
   17C2 08                 2098 	inc	r0
   17C3 08                 2099 	inc	r0
   17C4 E6                 2100 	mov	a,@r0
   17C5 2E                 2101 	add	a,r6
   17C6 F5 E6              2102 	mov	_FMADRL,a
   17C8 A8 14              2103 	mov	r0,_bp
   17CA 08                 2104 	inc	r0
   17CB 08                 2105 	inc	r0
   17CC 74 0A              2106 	mov	a,#0x0A
   17CE 26                 2107 	add	a,@r0
   17CF 24 4B              2108 	add	a,#_telegramm
   17D1 F9                 2109 	mov	r1,a
   17D2 87 E5              2110 	mov	_FMDATA,@r1
                           2111 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:626: if ((((telegramm[9]+n)&0x3F)==0x3F) && n!=(ab-1)) {		// Ende des 64-Byte Pageregisters, also zwischendurch flashen
   17D4 8E 03              2112 	mov	ar3,r6
   17D6 7F 00              2113 	mov	r7,#0x00
   17D8 A8 14              2114 	mov	r0,_bp
   17DA 08                 2115 	inc	r0
   17DB 08                 2116 	inc	r0
   17DC E5 14              2117 	mov	a,_bp
   17DE 24 03              2118 	add	a,#0x03
   17E0 F9                 2119 	mov	r1,a
   17E1 E6                 2120 	mov	a,@r0
   17E2 F7                 2121 	mov	@r1,a
   17E3 09                 2122 	inc	r1
   17E4 77 00              2123 	mov	@r1,#0x00
   17E6 E5 14              2124 	mov	a,_bp
   17E8 24 03              2125 	add	a,#0x03
   17EA F8                 2126 	mov	r0,a
   17EB E6                 2127 	mov	a,@r0
   17EC 2B                 2128 	add	a,r3
   17ED FB                 2129 	mov	r3,a
   17EE 08                 2130 	inc	r0
   17EF E6                 2131 	mov	a,@r0
   17F0 3F                 2132 	addc	a,r7
   17F1 53 03 3F           2133 	anl	ar3,#0x3F
   17F4 7F 00              2134 	mov	r7,#0x00
   17F6 BB 3F 25           2135 	cjne	r3,#0x3F,00113$
   17F9 BF 00 22           2136 	cjne	r7,#0x00,00113$
   17FC A8 14              2137 	mov	r0,_bp
   17FE 08                 2138 	inc	r0
   17FF 86 03              2139 	mov	ar3,@r0
   1801 7F 00              2140 	mov	r7,#0x00
   1803 1B                 2141 	dec	r3
   1804 BB FF 01           2142 	cjne	r3,#0xFF,00141$
   1807 1F                 2143 	dec	r7
   1808                    2144 00141$:
   1808 E5 14              2145 	mov	a,_bp
   180A 24 03              2146 	add	a,#0x03
   180C F8                 2147 	mov	r0,a
   180D E6                 2148 	mov	a,@r0
   180E B5 03 07           2149 	cjne	a,ar3,00142$
   1811 08                 2150 	inc	r0
   1812 E6                 2151 	mov	a,@r0
   1813 B5 07 02           2152 	cjne	a,ar7,00142$
   1816 80 06              2153 	sjmp	00113$
   1818                    2154 00142$:
                           2155 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:627: STOP_WRITECYCLE;			// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   1818 75 E4 68           2156 	mov	_FMCON,#0x68
                           2157 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:628: START_WRITECYCLE;		// load command, leert das pageregister
   181B 75 E4 00           2158 	mov	_FMCON,#0x00
   181E                    2159 00113$:
                           2160 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:622: for(n=0;n<ab;n++) {
   181E A8 14              2161 	mov	r0,_bp
   1820 08                 2162 	inc	r0
   1821 08                 2163 	inc	r0
   1822 06                 2164 	inc	@r0
   1823 02 17 7C           2165 	ljmp	00111$
   1826                    2166 00114$:
                           2167 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:631: STOP_WRITECYCLE;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   1826 75 E4 68           2168 	mov	_FMCON,#0x68
                           2169 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:632: EA=1;
   1829 D2 AF              2170 	setb	_IEN0_7
   182B 85 14 81           2171 	mov	sp,_bp
   182E D0 14              2172 	pop	_bp
   1830 22                 2173 	ret
                           2174 ;------------------------------------------------------------
                           2175 ;Allocation info for local variables in function 'set_pa'
                           2176 ;------------------------------------------------------------
                           2177 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:637: void set_pa(void)
                           2178 ;	-----------------------------------------
                           2179 ;	 function set_pa
                           2180 ;	-----------------------------------------
   1831                    2181 _set_pa:
                           2182 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:639: while(fb_state!=0);		// warten falls noch gesendet wird
   1831                    2183 00101$:
   1831 E5 6E              2184 	mov	a,_fb_state
   1833 70 FC              2185 	jnz	00101$
                           2186 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:640: EA=0;
   1835 C2 AF              2187 	clr	_IEN0_7
                           2188 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:641: FMCON=0x00;				// load command, leert das pageregister
   1837 75 E4 00           2189 	mov	_FMCON,#0x00
                           2190 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:642: FMADRH=0x1D;
   183A 75 E7 1D           2191 	mov	_FMADRH,#0x1D
                           2192 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:643: FMADRL=ADDRTAB+1;
   183D 75 E6 17           2193 	mov	_FMADRL,#0x17
                           2194 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:644: FMDATA=telegramm[8];
   1840 85 53 E5           2195 	mov	_FMDATA,(_telegramm + 0x0008)
                           2196 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:645: FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
   1843 85 54 E5           2197 	mov	_FMDATA,(_telegramm + 0x0009)
                           2198 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:646: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   1846 75 E4 68           2199 	mov	_FMCON,#0x68
                           2200 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:647: EA=1;
   1849 D2 AF              2201 	setb	_IEN0_7
   184B 22                 2202 	ret
                           2203 ;------------------------------------------------------------
                           2204 ;Allocation info for local variables in function 'read_objflags'
                           2205 ;------------------------------------------------------------
                           2206 ;objno                     Allocated to registers r7 
                           2207 ;------------------------------------------------------------
                           2208 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:653: unsigned char read_objflags(unsigned char objno)
                           2209 ;	-----------------------------------------
                           2210 ;	 function read_objflags
                           2211 ;	-----------------------------------------
   184C                    2212 _read_objflags:
   184C AF 82              2213 	mov	r7,dpl
                           2214 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:655: return(eeprom[eeprom[COMMSTABPTR]+3+3*objno]);
   184E 90 1D 12           2215 	mov	dptr,#(_eeprom + 0x0012)
   1851 E4                 2216 	clr	a
   1852 93                 2217 	movc	a,@a+dptr
   1853 FE                 2218 	mov	r6,a
   1854 0E                 2219 	inc	r6
   1855 0E                 2220 	inc	r6
   1856 0E                 2221 	inc	r6
   1857 EF                 2222 	mov	a,r7
   1858 75 F0 03           2223 	mov	b,#0x03
   185B A4                 2224 	mul	ab
   185C 2E                 2225 	add	a,r6
   185D 90 1D 00           2226 	mov	dptr,#_eeprom
   1860 93                 2227 	movc	a,@a+dptr
   1861 F5 82              2228 	mov	dpl,a
   1863 22                 2229 	ret
                           2230 ;------------------------------------------------------------
                           2231 ;Allocation info for local variables in function 'find_first_objno'
                           2232 ;------------------------------------------------------------
                           2233 ;gal                       Allocated to stack - _bp -3
                           2234 ;gah                       Allocated to registers r7 
                           2235 ;gaposgat                  Allocated to registers r7 
                           2236 ;gaposass                  Allocated to registers r2 
                           2237 ;atp                       Allocated to registers r5 
                           2238 ;assmax                    Allocated to registers r4 
                           2239 ;n                         Allocated to registers r3 
                           2240 ;objno                     Allocated to registers r6 
                           2241 ;asspos                    Allocated to registers 
                           2242 ;------------------------------------------------------------
                           2243 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:660: unsigned char find_first_objno(unsigned char gah, unsigned char gal)
                           2244 ;	-----------------------------------------
                           2245 ;	 function find_first_objno
                           2246 ;	-----------------------------------------
   1864                    2247 _find_first_objno:
   1864 C0 14              2248 	push	_bp
   1866 85 81 14           2249 	mov	_bp,sp
   1869 AF 82              2250 	mov	r7,dpl
                           2251 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:664: objno=0xFF;
   186B 7E FF              2252 	mov	r6,#0xFF
                           2253 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:665: gaposgat=gapos_in_gat(gah,gal);
   186D C0 06              2254 	push	ar6
   186F E5 14              2255 	mov	a,_bp
   1871 24 FD              2256 	add	a,#0xfd
   1873 F8                 2257 	mov	r0,a
   1874 E6                 2258 	mov	a,@r0
   1875 C0 E0              2259 	push	acc
   1877 8F 82              2260 	mov	dpl,r7
   1879 12 13 C5           2261 	lcall	_gapos_in_gat
   187C AF 82              2262 	mov	r7,dpl
   187E 15 81              2263 	dec	sp
   1880 D0 06              2264 	pop	ar6
                           2265 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:667: atp=eeprom[ASSOCTABPTR];	// Pointer auf Assoziationstabelle
   1882 90 1D 11           2266 	mov	dptr,#(_eeprom + 0x0011)
   1885 E4                 2267 	clr	a
   1886 93                 2268 	movc	a,@a+dptr
                           2269 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:668: assmax=eeprom[atp];			// Anzahl Assoziationen
   1887 FD                 2270 	mov	r5,a
   1888 F5 82              2271 	mov	dpl,a
   188A 75 83 1D           2272 	mov	dph,#(_eeprom >> 8)
   188D E4                 2273 	clr	a
   188E 93                 2274 	movc	a,@a+dptr
   188F FC                 2275 	mov	r4,a
                           2276 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:669: if (gaposgat!=0xFF) {	// falls Gruppenadresse nicht vorhanden
   1890 BF FF 02           2277 	cjne	r7,#0xFF,00119$
   1893 80 23              2278 	sjmp	00107$
   1895                    2279 00119$:
                           2280 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:670: n=0;
   1895 7B 00              2281 	mov	r3,#0x00
                           2282 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:671: asspos=atp+1;
   1897 0D                 2283 	inc	r5
                           2284 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:672: while(n<assmax) { 	// Schleife ueber Assoziationstabelle
   1898                    2285 00103$:
   1898 C3                 2286 	clr	c
   1899 EB                 2287 	mov	a,r3
   189A 9C                 2288 	subb	a,r4
   189B 50 1B              2289 	jnc	00107$
                           2290 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:673: gaposass=eeprom[asspos];
   189D 8D 82              2291 	mov	dpl,r5
   189F 75 83 1D           2292 	mov	dph,#(_eeprom >> 8)
   18A2 E4                 2293 	clr	a
   18A3 93                 2294 	movc	a,@a+dptr
   18A4 FA                 2295 	mov	r2,a
                           2296 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:674: if(gaposgat==gaposass) {
   18A5 EF                 2297 	mov	a,r7
   18A6 B5 02 0A           2298 	cjne	a,ar2,00102$
                           2299 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:675: objno=eeprom[asspos+1];
   18A9 ED                 2300 	mov	a,r5
   18AA 04                 2301 	inc	a
   18AB 90 1D 00           2302 	mov	dptr,#_eeprom
   18AE 93                 2303 	movc	a,@a+dptr
   18AF FA                 2304 	mov	r2,a
   18B0 FE                 2305 	mov	r6,a
                           2306 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:676: n=assmax;
   18B1 8C 03              2307 	mov	ar3,r4
   18B3                    2308 00102$:
                           2309 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:678: n++;
   18B3 0B                 2310 	inc	r3
                           2311 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:679: asspos+=2;
   18B4 0D                 2312 	inc	r5
   18B5 0D                 2313 	inc	r5
   18B6 80 E0              2314 	sjmp	00103$
   18B8                    2315 00107$:
                           2316 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:682: return (objno);
   18B8 8E 82              2317 	mov	dpl,r6
   18BA D0 14              2318 	pop	_bp
   18BC 22                 2319 	ret
                           2320 ;------------------------------------------------------------
                           2321 ;Allocation info for local variables in function 'find_ga'
                           2322 ;------------------------------------------------------------
                           2323 ;objno                     Allocated to registers r7 
                           2324 ;asstab                    Allocated to registers 
                           2325 ;gapos                     Allocated to registers r6 
                           2326 ;asspos                    Allocated to registers r5 
                           2327 ;ga                        Allocated to registers r7 r5 
                           2328 ;------------------------------------------------------------
                           2329 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:687: unsigned int find_ga(unsigned char objno)
                           2330 ;	-----------------------------------------
                           2331 ;	 function find_ga
                           2332 ;	-----------------------------------------
   18BD                    2333 _find_ga:
   18BD AF 82              2334 	mov	r7,dpl
                           2335 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:692: gapos=0xFE;
   18BF 7E FE              2336 	mov	r6,#0xFE
                           2337 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:693: asstab=eeprom[ASSOCTABPTR];		// Adresse der Assoziationstabelle
   18C1 90 1D 11           2338 	mov	dptr,#(_eeprom + 0x0011)
   18C4 E4                 2339 	clr	a
   18C5 93                 2340 	movc	a,@a+dptr
   18C6 FD                 2341 	mov	r5,a
                           2342 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:694: asspos=asstab+1+2*objno;
   18C7 0D                 2343 	inc	r5
   18C8 EF                 2344 	mov	a,r7
   18C9 2F                 2345 	add	a,r7
   18CA 2D                 2346 	add	a,r5
                           2347 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:696: if(eeprom[asspos+1]==objno) gapos=eeprom[asspos];
   18CB FD                 2348 	mov	r5,a
   18CC 04                 2349 	inc	a
   18CD 90 1D 00           2350 	mov	dptr,#_eeprom
   18D0 93                 2351 	movc	a,@a+dptr
   18D1 FC                 2352 	mov	r4,a
   18D2 B5 07 09           2353 	cjne	a,ar7,00102$
   18D5 8D 82              2354 	mov	dpl,r5
   18D7 75 83 1D           2355 	mov	dph,#(_eeprom >> 8)
   18DA E4                 2356 	clr	a
   18DB 93                 2357 	movc	a,@a+dptr
   18DC FF                 2358 	mov	r7,a
   18DD FE                 2359 	mov	r6,a
   18DE                    2360 00102$:
                           2361 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:698: if(gapos!=0xFE) {
   18DE BE FE 02           2362 	cjne	r6,#0xFE,00114$
   18E1 80 1D              2363 	sjmp	00104$
   18E3                    2364 00114$:
                           2365 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:700: ga=eeprom[ADDRTAB+1+gapos*2]*256;
   18E3 EE                 2366 	mov	a,r6
   18E4 2E                 2367 	add	a,r6
   18E5 FE                 2368 	mov	r6,a
   18E6 24 17              2369 	add	a,#0x17
   18E8 90 1D 00           2370 	mov	dptr,#_eeprom
   18EB 93                 2371 	movc	a,@a+dptr
   18EC FD                 2372 	mov	r5,a
   18ED 7F 00              2373 	mov	r7,#0x00
                           2374 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:701: ga+=eeprom[ADDRTAB+2+gapos*2];
   18EF 74 18              2375 	mov	a,#0x18
   18F1 2E                 2376 	add	a,r6
   18F2 90 1D 00           2377 	mov	dptr,#_eeprom
   18F5 93                 2378 	movc	a,@a+dptr
   18F6 FE                 2379 	mov	r6,a
   18F7 7C 00              2380 	mov	r4,#0x00
   18F9 2F                 2381 	add	a,r7
   18FA FF                 2382 	mov	r7,a
   18FB EC                 2383 	mov	a,r4
   18FC 3D                 2384 	addc	a,r5
   18FD FD                 2385 	mov	r5,a
   18FE 80 04              2386 	sjmp	00105$
   1900                    2387 00104$:
                           2388 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:703: else ga=0;
   1900 7F 00              2389 	mov	r7,#0x00
   1902 7D 00              2390 	mov	r5,#0x00
   1904                    2391 00105$:
                           2392 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:705: return(ga);
   1904 8F 82              2393 	mov	dpl,r7
   1906 8D 83              2394 	mov	dph,r5
   1908 22                 2395 	ret
                           2396 ;------------------------------------------------------------
                           2397 ;Allocation info for local variables in function 'restart_hw'
                           2398 ;------------------------------------------------------------
                           2399 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:711: void restart_hw(void)
                           2400 ;	-----------------------------------------
                           2401 ;	 function restart_hw
                           2402 ;	-----------------------------------------
   1909                    2403 _restart_hw:
                           2404 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:713: DIVM=0;			// Taktferquenz nicht teilen -> volles Tempo
   1909 75 95 00           2405 	mov	_DIVM,#0x00
                           2406 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:715: P1M1=0x14;		// Port 1 auf quasi-bidirektional,
   190C 75 91 14           2407 	mov	_P1M1,#0x14
                           2408 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:716: P1M2=0x4C;		// ausser P1.2(T0 als PWM Ausgang)=open-drain,
   190F 75 92 4C           2409 	mov	_P1M2,#0x4C
                           2410 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:720: FBOUTC=0;		// Bus-Ausgang auf low
   1912 C2 96              2411 	clr	_P1_6
                           2412 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:722: TMOD=0x21;		// Timer 0 als 16-Bit Timer, Timer 1 als 8 Bit autoreload
   1914 75 89 21           2413 	mov	_TMOD,#0x21
                           2414 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:723: TAMOD=0x00;
   1917 75 8F 00           2415 	mov	_TAMOD,#0x00
                           2416 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:724: TR0=0;			// Timer 0 (zur Verwendung in app) zunaechst stoppen 
   191A C2 8C              2417 	clr	_TCON_4
                           2418 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:725: TR1=0;			// Timer 1 (Empfangs-Timer, nicht in app verwenden!) zunaechst stoppen
   191C C2 8E              2419 	clr	_TCON_6
                           2420 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:726: TH1=128;		// Timer 1 auf 104us/3
   191E 75 8D 80           2421 	mov	_TH1,#0x80
                           2422 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:727: TL1=128;
   1921 75 8B 80           2423 	mov	_TL1,#0x80
                           2424 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:728: TF1=0;
   1924 C2 8F              2425 	clr	_TCON_7
                           2426 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:730: RTCH=0x0E;		// Real Time Clock auf 65ms laden
   1926 75 D2 0E           2427 	mov	_RTCH,#0x0E
                           2428 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:731: RTCL=0xA0;		// (RTC ist ein down-counter mit 128 bit prescaler und osc-clock)
   1929 75 D3 A0           2429 	mov	_RTCL,#0xA0
                           2430 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:732: RTCCON=0x61;	// ... und starten
   192C 75 D1 61           2431 	mov	_RTCCON,#0x61
                           2432 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:734: interrupted=0;	// wird durch die interrupt-routine auf 1 gesetzt
   192F C2 02              2433 	clr	_interrupted
                           2434 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:735: IEN0=0x00;
   1931 75 A8 00           2435 	mov	_IEN0,#0x00
                           2436 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:736: IEN1=0x00;
   1934 75 E8 00           2437 	mov	_IEN1,#0x00
                           2438 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:738: ET1=0;			// Interrupt von Timer 1 sperren
   1937 C2 AB              2439 	clr	_IEN0_3
                           2440 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:739: EX0=0;			// Externen Interrupt 0 sperren
   1939 C2 A8              2441 	clr	_IEN0_0
                           2442 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:740: EX1=0;			// Externen Interrupt 1 sperren
   193B C2 AA              2443 	clr	_IEN0_2
                           2444 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:741: EA=1;			// Interrupts prinzipiell freigeben
   193D D2 AF              2445 	setb	_IEN0_7
                           2446 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:743: IP0=0x04;		// höchste Priorität fuer ext1
   193F 75 B8 04           2447 	mov	_IP0,#0x04
                           2448 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:744: IP0H=0x0C;
   1942 75 B7 0C           2449 	mov	_IP0H,#0x0C
                           2450 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:745: IT1=1;			// Interrupt 1 flankengetriggert=1
   1945 D2 8A              2451 	setb	_TCON_2
                           2452 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:747: status60=0x2E;	// Status-Byte (steht normal im userram an 0x60)
   1947 75 72 2E           2453 	mov	_status60,#0x2E
                           2454 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:749: ack=0;			// ack und nack flag zurücksetzen
   194A C2 04              2455 	clr	_ack
                           2456 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:750: nack=0;
   194C C2 05              2457 	clr	_nack
                           2458 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:751: send_ack=0;
   194E C2 0C              2459 	clr	_send_ack
                           2460 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:752: send_nack=0;
   1950 C2 0D              2461 	clr	_send_nack
                           2462 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:753: tel_arrived=0;	// kein Telegramm empfangen
   1952 C2 07              2463 	clr	_tel_arrived
                           2464 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:754: auto_ack=1;		// empfangene Telegramme automatisch mit ack bestätigen
   1954 D2 09              2465 	setb	_auto_ack
                           2466 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:755: tx_nextwrite=0;	// Zeiger auf nächste zu schreibende Objektnr. in tx_buffer
   1956 75 70 00           2467 	mov	_tx_nextwrite,#0x00
                           2468 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:756: tx_nextsend=0;	// Zeiger auf nächste zu sendende Objektnr. in tx_buffer
   1959 75 71 00           2469 	mov	_tx_nextsend,#0x00
                           2470 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:757: pcount=0;		// Paketzaehler initialisieren
   195C 75 46 00           2471 	mov	_pcount,#0x00
                           2472 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:758: inc_pcount=0;
   195F C2 10              2473 	clr	_inc_pcount
                           2474 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:759: connected=0;	// keine Verbindung
   1961 C2 0F              2475 	clr	_connected
                           2476 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:760: transparency=0;	// fremde Gruppentelegramme werden ignoriert
   1963 C2 0E              2477 	clr	_transparency
                           2478 ;	C:/Freebus/C_Programme/oldisprogramm/lib_lpc922/fb_lpc922.c:761: init_rx();		// Empfang initialisieren
   1965 02 13 4F           2479 	ljmp	_init_rx
                           2480 	.area CSEG    (CODE)
                           2481 	.area CONST   (CODE)
                    1C00   2482 _userram	=	0x1c00
                    1D00   2483 _eeprom	=	0x1d00
                           2484 	.area XINIT   (CODE)
                           2485 	.area CABS    (ABS,CODE)
