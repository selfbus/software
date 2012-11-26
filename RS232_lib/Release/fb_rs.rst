                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Mon Nov 19 23:06:04 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_rs
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _watchdog_start
                             14 	.globl _watchdog_feed
                             15 	.globl _watchdog_init
                             16 	.globl _convert_adr
                             17 	.globl _save_ga
                             18 	.globl _restart_app
                             19 	.globl _set_filtermode
                             20 	.globl _send_ok
                             21 	.globl _process_tel
                             22 	.globl _restart_hw
                             23 	.globl _send_obj_value
                             24 	.globl _rs_send_s
                             25 	.globl _rs_send
                             26 	.globl _rs_send_hex_i
                             27 	.globl _rs_send_hex
                             28 	.globl _rs_send_dec
                             29 	.globl _rs_init
                             30 	.globl _P3_1
                             31 	.globl _P3_0
                             32 	.globl _P1_7
                             33 	.globl _P1_6
                             34 	.globl _P1_5
                             35 	.globl _P1_4
                             36 	.globl _P1_3
                             37 	.globl _P1_2
                             38 	.globl _P1_1
                             39 	.globl _P1_0
                             40 	.globl _P0_7
                             41 	.globl _P0_6
                             42 	.globl _P0_5
                             43 	.globl _P0_4
                             44 	.globl _P0_3
                             45 	.globl _P0_2
                             46 	.globl _P0_1
                             47 	.globl _P0_0
                             48 	.globl _I2CON_0
                             49 	.globl _I2CON_2
                             50 	.globl _I2CON_3
                             51 	.globl _I2CON_4
                             52 	.globl _I2CON_5
                             53 	.globl _I2CON_6
                             54 	.globl _SCON_7
                             55 	.globl _SCON_6
                             56 	.globl _SCON_5
                             57 	.globl _SCON_4
                             58 	.globl _SCON_3
                             59 	.globl _SCON_2
                             60 	.globl _SCON_1
                             61 	.globl _SCON_0
                             62 	.globl _IP0_0
                             63 	.globl _IP0_1
                             64 	.globl _IP0_2
                             65 	.globl _IP0_3
                             66 	.globl _IP0_4
                             67 	.globl _IP0_5
                             68 	.globl _IP0_6
                             69 	.globl _IP1_0
                             70 	.globl _IP1_1
                             71 	.globl _IP1_2
                             72 	.globl _IP1_6
                             73 	.globl _IEN1_0
                             74 	.globl _IEN1_1
                             75 	.globl _IEN1_2
                             76 	.globl _IEN0_0
                             77 	.globl _IEN0_1
                             78 	.globl _IEN0_2
                             79 	.globl _IEN0_3
                             80 	.globl _IEN0_4
                             81 	.globl _IEN0_5
                             82 	.globl _IEN0_6
                             83 	.globl _IEN0_7
                             84 	.globl _TCON_0
                             85 	.globl _TCON_1
                             86 	.globl _TCON_2
                             87 	.globl _TCON_3
                             88 	.globl _TCON_4
                             89 	.globl _TCON_5
                             90 	.globl _TCON_6
                             91 	.globl _TCON_7
                             92 	.globl _PSW_7
                             93 	.globl _PSW_6
                             94 	.globl _PSW_5
                             95 	.globl _PSW_4
                             96 	.globl _PSW_3
                             97 	.globl _PSW_2
                             98 	.globl _PSW_1
                             99 	.globl _PSW_0
                            100 	.globl _IEN1
                            101 	.globl _IP0H
                            102 	.globl _WFEED2
                            103 	.globl _WFEED1
                            104 	.globl _WDL
                            105 	.globl _WDCON
                            106 	.globl _TRIM
                            107 	.globl _TAMOD
                            108 	.globl _SSTAT
                            109 	.globl _RTCL
                            110 	.globl _RTCH
                            111 	.globl _RTCCON
                            112 	.globl _RSTSRC
                            113 	.globl _PT0AD
                            114 	.globl _PCONA
                            115 	.globl _P3M2
                            116 	.globl _P3M1
                            117 	.globl _P1M2
                            118 	.globl _P1M1
                            119 	.globl _P0M2
                            120 	.globl _P0M1
                            121 	.globl _KBPATN
                            122 	.globl _KBMASK
                            123 	.globl _KBCON
                            124 	.globl _IP1H
                            125 	.globl _IP1
                            126 	.globl _I2STAT
                            127 	.globl _I2SCLL
                            128 	.globl _I2SCLH
                            129 	.globl _I2DAT
                            130 	.globl _I2CON
                            131 	.globl _I2ADR
                            132 	.globl _FMDATA
                            133 	.globl _FMCON
                            134 	.globl _FMADRL
                            135 	.globl _FMADRH
                            136 	.globl _DIVM
                            137 	.globl _CMP2
                            138 	.globl _CMP1
                            139 	.globl _BRGCON
                            140 	.globl _BRGR1
                            141 	.globl _BRGR0
                            142 	.globl _SADEN
                            143 	.globl _SADDR
                            144 	.globl _AUXR1
                            145 	.globl _SBUF
                            146 	.globl _SCON
                            147 	.globl _IP0
                            148 	.globl _IEN0
                            149 	.globl _TH1
                            150 	.globl _TH0
                            151 	.globl _TL1
                            152 	.globl _TL0
                            153 	.globl _TMOD
                            154 	.globl _TCON
                            155 	.globl _PCON
                            156 	.globl _DPH
                            157 	.globl _DPL
                            158 	.globl _SP
                            159 	.globl _B
                            160 	.globl _ACC
                            161 	.globl _PSW
                            162 	.globl _P3
                            163 	.globl _P1
                            164 	.globl _P0
                            165 	.globl _rsin_busy
                            166 	.globl _write_ok
                            167 	.globl _filtermode
                            168 ;--------------------------------------------------------
                            169 ; special function registers
                            170 ;--------------------------------------------------------
                            171 	.area RSEG    (ABS,DATA)
   0000                     172 	.org 0x0000
                    0080    173 _P0	=	0x0080
                    0090    174 _P1	=	0x0090
                    00B0    175 _P3	=	0x00b0
                    00D0    176 _PSW	=	0x00d0
                    00E0    177 _ACC	=	0x00e0
                    00F0    178 _B	=	0x00f0
                    0081    179 _SP	=	0x0081
                    0082    180 _DPL	=	0x0082
                    0083    181 _DPH	=	0x0083
                    0087    182 _PCON	=	0x0087
                    0088    183 _TCON	=	0x0088
                    0089    184 _TMOD	=	0x0089
                    008A    185 _TL0	=	0x008a
                    008B    186 _TL1	=	0x008b
                    008C    187 _TH0	=	0x008c
                    008D    188 _TH1	=	0x008d
                    00A8    189 _IEN0	=	0x00a8
                    00B8    190 _IP0	=	0x00b8
                    0098    191 _SCON	=	0x0098
                    0099    192 _SBUF	=	0x0099
                    00A2    193 _AUXR1	=	0x00a2
                    00A9    194 _SADDR	=	0x00a9
                    00B9    195 _SADEN	=	0x00b9
                    00BE    196 _BRGR0	=	0x00be
                    00BF    197 _BRGR1	=	0x00bf
                    00BD    198 _BRGCON	=	0x00bd
                    00AC    199 _CMP1	=	0x00ac
                    00AD    200 _CMP2	=	0x00ad
                    0095    201 _DIVM	=	0x0095
                    00E7    202 _FMADRH	=	0x00e7
                    00E6    203 _FMADRL	=	0x00e6
                    00E4    204 _FMCON	=	0x00e4
                    00E5    205 _FMDATA	=	0x00e5
                    00DB    206 _I2ADR	=	0x00db
                    00D8    207 _I2CON	=	0x00d8
                    00DA    208 _I2DAT	=	0x00da
                    00DD    209 _I2SCLH	=	0x00dd
                    00DC    210 _I2SCLL	=	0x00dc
                    00D9    211 _I2STAT	=	0x00d9
                    00F8    212 _IP1	=	0x00f8
                    00F7    213 _IP1H	=	0x00f7
                    0094    214 _KBCON	=	0x0094
                    0086    215 _KBMASK	=	0x0086
                    0093    216 _KBPATN	=	0x0093
                    0084    217 _P0M1	=	0x0084
                    0085    218 _P0M2	=	0x0085
                    0091    219 _P1M1	=	0x0091
                    0092    220 _P1M2	=	0x0092
                    00B1    221 _P3M1	=	0x00b1
                    00B2    222 _P3M2	=	0x00b2
                    00B5    223 _PCONA	=	0x00b5
                    00F6    224 _PT0AD	=	0x00f6
                    00DF    225 _RSTSRC	=	0x00df
                    00D1    226 _RTCCON	=	0x00d1
                    00D2    227 _RTCH	=	0x00d2
                    00D3    228 _RTCL	=	0x00d3
                    00BA    229 _SSTAT	=	0x00ba
                    008F    230 _TAMOD	=	0x008f
                    0096    231 _TRIM	=	0x0096
                    00A7    232 _WDCON	=	0x00a7
                    00C1    233 _WDL	=	0x00c1
                    00C2    234 _WFEED1	=	0x00c2
                    00C3    235 _WFEED2	=	0x00c3
                    00B7    236 _IP0H	=	0x00b7
                    00E8    237 _IEN1	=	0x00e8
                            238 ;--------------------------------------------------------
                            239 ; special function bits
                            240 ;--------------------------------------------------------
                            241 	.area RSEG    (ABS,DATA)
   0000                     242 	.org 0x0000
                    00D0    243 _PSW_0	=	0x00d0
                    00D1    244 _PSW_1	=	0x00d1
                    00D2    245 _PSW_2	=	0x00d2
                    00D3    246 _PSW_3	=	0x00d3
                    00D4    247 _PSW_4	=	0x00d4
                    00D5    248 _PSW_5	=	0x00d5
                    00D6    249 _PSW_6	=	0x00d6
                    00D7    250 _PSW_7	=	0x00d7
                    008F    251 _TCON_7	=	0x008f
                    008E    252 _TCON_6	=	0x008e
                    008D    253 _TCON_5	=	0x008d
                    008C    254 _TCON_4	=	0x008c
                    008B    255 _TCON_3	=	0x008b
                    008A    256 _TCON_2	=	0x008a
                    0089    257 _TCON_1	=	0x0089
                    0088    258 _TCON_0	=	0x0088
                    00AF    259 _IEN0_7	=	0x00af
                    00AE    260 _IEN0_6	=	0x00ae
                    00AD    261 _IEN0_5	=	0x00ad
                    00AC    262 _IEN0_4	=	0x00ac
                    00AB    263 _IEN0_3	=	0x00ab
                    00AA    264 _IEN0_2	=	0x00aa
                    00A9    265 _IEN0_1	=	0x00a9
                    00A8    266 _IEN0_0	=	0x00a8
                    00EA    267 _IEN1_2	=	0x00ea
                    00E9    268 _IEN1_1	=	0x00e9
                    00E8    269 _IEN1_0	=	0x00e8
                    00FE    270 _IP1_6	=	0x00fe
                    00FA    271 _IP1_2	=	0x00fa
                    00F9    272 _IP1_1	=	0x00f9
                    00F8    273 _IP1_0	=	0x00f8
                    00BE    274 _IP0_6	=	0x00be
                    00BD    275 _IP0_5	=	0x00bd
                    00BC    276 _IP0_4	=	0x00bc
                    00BB    277 _IP0_3	=	0x00bb
                    00BA    278 _IP0_2	=	0x00ba
                    00B9    279 _IP0_1	=	0x00b9
                    00B8    280 _IP0_0	=	0x00b8
                    0098    281 _SCON_0	=	0x0098
                    0099    282 _SCON_1	=	0x0099
                    009A    283 _SCON_2	=	0x009a
                    009B    284 _SCON_3	=	0x009b
                    009C    285 _SCON_4	=	0x009c
                    009D    286 _SCON_5	=	0x009d
                    009E    287 _SCON_6	=	0x009e
                    009F    288 _SCON_7	=	0x009f
                    00DE    289 _I2CON_6	=	0x00de
                    00DD    290 _I2CON_5	=	0x00dd
                    00DC    291 _I2CON_4	=	0x00dc
                    00DB    292 _I2CON_3	=	0x00db
                    00DA    293 _I2CON_2	=	0x00da
                    00D8    294 _I2CON_0	=	0x00d8
                    0080    295 _P0_0	=	0x0080
                    0081    296 _P0_1	=	0x0081
                    0082    297 _P0_2	=	0x0082
                    0083    298 _P0_3	=	0x0083
                    0084    299 _P0_4	=	0x0084
                    0085    300 _P0_5	=	0x0085
                    0086    301 _P0_6	=	0x0086
                    0087    302 _P0_7	=	0x0087
                    0090    303 _P1_0	=	0x0090
                    0091    304 _P1_1	=	0x0091
                    0092    305 _P1_2	=	0x0092
                    0093    306 _P1_3	=	0x0093
                    0094    307 _P1_4	=	0x0094
                    0095    308 _P1_5	=	0x0095
                    0096    309 _P1_6	=	0x0096
                    0097    310 _P1_7	=	0x0097
                    00B0    311 _P3_0	=	0x00b0
                    00B1    312 _P3_1	=	0x00b1
                            313 ;--------------------------------------------------------
                            314 ; overlayable register banks
                            315 ;--------------------------------------------------------
                            316 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     317 	.ds 8
                            318 ;--------------------------------------------------------
                            319 ; overlayable bit register bank
                            320 ;--------------------------------------------------------
                            321 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     322 bits:
   0023                     323 	.ds 1
                    8000    324 	b0 = bits[0]
                    8100    325 	b1 = bits[1]
                    8200    326 	b2 = bits[2]
                    8300    327 	b3 = bits[3]
                    8400    328 	b4 = bits[4]
                    8500    329 	b5 = bits[5]
                    8600    330 	b6 = bits[6]
                    8700    331 	b7 = bits[7]
                            332 ;--------------------------------------------------------
                            333 ; internal ram data
                            334 ;--------------------------------------------------------
                            335 	.area DSEG    (DATA)
                            336 ;--------------------------------------------------------
                            337 ; overlayable items in internal ram 
                            338 ;--------------------------------------------------------
                            339 	.area OSEG    (OVR,DATA)
                            340 ;--------------------------------------------------------
                            341 ; Stack segment in internal ram 
                            342 ;--------------------------------------------------------
                            343 	.area	SSEG	(DATA)
   0079                     344 __start__stack:
   0079                     345 	.ds	1
                            346 
                            347 ;--------------------------------------------------------
                            348 ; indirectly addressable internal ram data
                            349 ;--------------------------------------------------------
                            350 	.area ISEG    (DATA)
                            351 ;--------------------------------------------------------
                            352 ; absolute internal ram data
                            353 ;--------------------------------------------------------
                            354 	.area IABS    (ABS,DATA)
                            355 	.area IABS    (ABS,DATA)
                            356 ;--------------------------------------------------------
                            357 ; bit data
                            358 ;--------------------------------------------------------
                            359 	.area BSEG    (BIT)
   0000                     360 _filtermode::
   0000                     361 	.ds 1
   0001                     362 _write_ok::
   0001                     363 	.ds 1
   0002                     364 _rsin_busy::
   0002                     365 	.ds 1
                            366 ;--------------------------------------------------------
                            367 ; paged external ram data
                            368 ;--------------------------------------------------------
                            369 	.area PSEG    (PAG,XDATA)
                            370 ;--------------------------------------------------------
                            371 ; external ram data
                            372 ;--------------------------------------------------------
                            373 	.area XSEG    (XDATA)
                            374 ;--------------------------------------------------------
                            375 ; absolute external ram data
                            376 ;--------------------------------------------------------
                            377 	.area XABS    (ABS,XDATA)
                            378 ;--------------------------------------------------------
                            379 ; external initialized ram data
                            380 ;--------------------------------------------------------
                            381 	.area XISEG   (XDATA)
                            382 	.area HOME    (CODE)
                            383 	.area GSINIT0 (CODE)
                            384 	.area GSINIT1 (CODE)
                            385 	.area GSINIT2 (CODE)
                            386 	.area GSINIT3 (CODE)
                            387 	.area GSINIT4 (CODE)
                            388 	.area GSINIT5 (CODE)
                            389 	.area GSINIT  (CODE)
                            390 	.area GSFINAL (CODE)
                            391 	.area CSEG    (CODE)
                            392 ;--------------------------------------------------------
                            393 ; interrupt vector 
                            394 ;--------------------------------------------------------
                            395 	.area HOME    (CODE)
   0000                     396 __interrupt_vect:
   0000 02 00 2B            397 	ljmp	__sdcc_gsinit_startup
   0003 32                  398 	reti
   0004                     399 	.ds	7
   000B 32                  400 	reti
   000C                     401 	.ds	7
   0013 02 16 0C            402 	ljmp	_X1_int
   0016                     403 	.ds	5
   001B 02 16 3C            404 	ljmp	_T1_int
   001E                     405 	.ds	5
   0023 02 0B 27            406 	ljmp	_serial_int
                            407 ;--------------------------------------------------------
                            408 ; global & static initialisations
                            409 ;--------------------------------------------------------
                            410 	.area HOME    (CODE)
                            411 	.area GSINIT  (CODE)
                            412 	.area GSFINAL (CODE)
                            413 	.area GSINIT  (CODE)
                            414 	.globl __sdcc_gsinit_startup
                            415 	.globl __sdcc_program_startup
                            416 	.globl __start__stack
                            417 	.globl __mcs51_genXINIT
                            418 	.globl __mcs51_genXRAMCLEAR
                            419 	.globl __mcs51_genRAMCLEAR
                            420 	.area GSFINAL (CODE)
   0089 02 00 26            421 	ljmp	__sdcc_program_startup
                            422 ;--------------------------------------------------------
                            423 ; Home
                            424 ;--------------------------------------------------------
                            425 	.area HOME    (CODE)
                            426 	.area HOME    (CODE)
   0026                     427 __sdcc_program_startup:
   0026 12 0B CB            428 	lcall	_main
                            429 ;	return from main will lock up
   0029 80 FE               430 	sjmp .
                            431 ;--------------------------------------------------------
                            432 ; code
                            433 ;--------------------------------------------------------
                            434 	.area CSEG    (CODE)
                            435 ;------------------------------------------------------------
                            436 ;Allocation info for local variables in function 'main'
                            437 ;------------------------------------------------------------
                            438 ;n                         Allocated to registers r7 
                            439 ;busy                      Allocated to registers b0 
                            440 ;value                     Allocated to registers r5 r6 
                            441 ;baud_tmp                  Allocated to registers r6 r7 
                            442 ;------------------------------------------------------------
                            443 ;	../fb_rs.c:49: void main(void)
                            444 ;	-----------------------------------------
                            445 ;	 function main
                            446 ;	-----------------------------------------
   0BCB                     447 _main:
                    0007    448 	ar7 = 0x07
                    0006    449 	ar6 = 0x06
                    0005    450 	ar5 = 0x05
                    0004    451 	ar4 = 0x04
                    0003    452 	ar3 = 0x03
                    0002    453 	ar2 = 0x02
                    0001    454 	ar1 = 0x01
                    0000    455 	ar0 = 0x00
                            456 ;	../fb_rs.c:52: __bit busy=0;
   0BCB C2 18               457 	clr	b0
                            458 ;	../fb_rs.c:57: restart_hw();			// Hardware zurücksetzen
   0BCD C0 23               459 	push	bits
   0BCF 12 1A 68            460 	lcall	_restart_hw
   0BD2 D0 23               461 	pop	bits
                            462 ;	../fb_rs.c:58: rs_init(baud);			// serielle Schnittstelle initialisieren, muss hier sein
   0BD4 90 1C FE            463 	mov	dptr,#_baud
   0BD7 E4                  464 	clr	a
   0BD8 93                  465 	movc	a,@a+dptr
   0BD9 FE                  466 	mov	r6,a
   0BDA 74 01               467 	mov	a,#0x01
   0BDC 93                  468 	movc	a,@a+dptr
   0BDD FF                  469 	mov	r7,a
   0BDE 8E 82               470 	mov	dpl,r6
   0BE0 8F 83               471 	mov	dph,r7
   0BE2 C0 23               472 	push	bits
   0BE4 12 13 2F            473 	lcall	_rs_init
   0BE7 D0 23               474 	pop	bits
                            475 ;	../fb_rs.c:61: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
   0BE9 C0 23               476 	push	bits
   0BEB 12 0B B1            477 	lcall	_restart_app
   0BEE D0 23               478 	pop	bits
                            479 ;	../fb_rs.c:63: RXLED=1;
   0BF0 D2 86               480 	setb	_P0_6
                            481 ;	../fb_rs.c:64: EIBLED=1;
   0BF2 D2 87               482 	setb	_P0_7
                            483 ;	../fb_rs.c:65: ledcount=0xff;
   0BF4 75 47 FF            484 	mov	_ledcount,#0xFF
                            485 ;	../fb_rs.c:66: eibledcount=0;
   0BF7 75 48 00            486 	mov	_eibledcount,#0x00
                            487 ;	../fb_rs.c:67: rxledcount=0;
   0BFA 75 49 00            488 	mov	_rxledcount,#0x00
                            489 ;	../fb_rs.c:68: rsinpos=0;
   0BFD 75 42 00            490 	mov	_rsinpos,#0x00
                            491 ;	../fb_rs.c:70: rs_send_s("Kubi's RS-interface V2.01 ");
   0C00 90 1B 7D            492 	mov	dptr,#__str_0
   0C03 75 F0 80            493 	mov	b,#0x80
   0C06 C0 23               494 	push	bits
   0C08 12 15 1A            495 	lcall	_rs_send_s
   0C0B D0 23               496 	pop	bits
                            497 ;	../fb_rs.c:71: if (baud==96 || baud==192 || baud==384 || baud==576) rs_send_dec(baud);
   0C0D 90 1C FE            498 	mov	dptr,#_baud
   0C10 E4                  499 	clr	a
   0C11 93                  500 	movc	a,@a+dptr
   0C12 FE                  501 	mov	r6,a
   0C13 74 01               502 	mov	a,#0x01
   0C15 93                  503 	movc	a,@a+dptr
   0C16 FF                  504 	mov	r7,a
   0C17 BE 60 05            505 	cjne	r6,#0x60,00387$
   0C1A BF 00 02            506 	cjne	r7,#0x00,00387$
   0C1D 80 34               507 	sjmp	00101$
   0C1F                     508 00387$:
   0C1F 90 1C FE            509 	mov	dptr,#_baud
   0C22 E4                  510 	clr	a
   0C23 93                  511 	movc	a,@a+dptr
   0C24 FE                  512 	mov	r6,a
   0C25 74 01               513 	mov	a,#0x01
   0C27 93                  514 	movc	a,@a+dptr
   0C28 FF                  515 	mov	r7,a
   0C29 BE C0 05            516 	cjne	r6,#0xC0,00388$
   0C2C BF 00 02            517 	cjne	r7,#0x00,00388$
   0C2F 80 22               518 	sjmp	00101$
   0C31                     519 00388$:
   0C31 90 1C FE            520 	mov	dptr,#_baud
   0C34 E4                  521 	clr	a
   0C35 93                  522 	movc	a,@a+dptr
   0C36 FE                  523 	mov	r6,a
   0C37 74 01               524 	mov	a,#0x01
   0C39 93                  525 	movc	a,@a+dptr
   0C3A FF                  526 	mov	r7,a
   0C3B BE 80 05            527 	cjne	r6,#0x80,00389$
   0C3E BF 01 02            528 	cjne	r7,#0x01,00389$
   0C41 80 10               529 	sjmp	00101$
   0C43                     530 00389$:
   0C43 90 1C FE            531 	mov	dptr,#_baud
   0C46 E4                  532 	clr	a
   0C47 93                  533 	movc	a,@a+dptr
   0C48 FE                  534 	mov	r6,a
   0C49 74 01               535 	mov	a,#0x01
   0C4B 93                  536 	movc	a,@a+dptr
   0C4C FF                  537 	mov	r7,a
   0C4D BE 40 1A            538 	cjne	r6,#0x40,00102$
   0C50 BF 02 17            539 	cjne	r7,#0x02,00102$
   0C53                     540 00101$:
   0C53 90 1C FE            541 	mov	dptr,#_baud
   0C56 E4                  542 	clr	a
   0C57 93                  543 	movc	a,@a+dptr
   0C58 FE                  544 	mov	r6,a
   0C59 74 01               545 	mov	a,#0x01
   0C5B 93                  546 	movc	a,@a+dptr
   0C5C FF                  547 	mov	r7,a
   0C5D 8E 82               548 	mov	dpl,r6
   0C5F 8F 83               549 	mov	dph,r7
   0C61 C0 23               550 	push	bits
   0C63 12 13 AD            551 	lcall	_rs_send_dec
   0C66 D0 23               552 	pop	bits
   0C68 80 0D               553 	sjmp	00103$
   0C6A                     554 00102$:
                            555 ;	../fb_rs.c:72: else rs_send_s("1152");
   0C6A 90 1B 98            556 	mov	dptr,#__str_1
   0C6D 75 F0 80            557 	mov	b,#0x80
   0C70 C0 23               558 	push	bits
   0C72 12 15 1A            559 	lcall	_rs_send_s
   0C75 D0 23               560 	pop	bits
   0C77                     561 00103$:
                            562 ;	../fb_rs.c:73: rs_send_s("00 Baud.\n");
   0C77 90 1B 9D            563 	mov	dptr,#__str_2
   0C7A 75 F0 80            564 	mov	b,#0x80
   0C7D C0 23               565 	push	bits
   0C7F 12 15 1A            566 	lcall	_rs_send_s
   0C82 D0 23               567 	pop	bits
                            568 ;	../fb_rs.c:74: watchdog_init();
   0C84 C0 23               569 	push	bits
   0C86 12 15 C4            570 	lcall	_watchdog_init
   0C89 D0 23               571 	pop	bits
                            572 ;	../fb_rs.c:75: watchdog_start();
   0C8B C0 23               573 	push	bits
   0C8D 12 15 E0            574 	lcall	_watchdog_start
   0C90 D0 23               575 	pop	bits
                            576 ;	../fb_rs.c:77: if(fm){
   0C92 90 1C FA            577 	mov	dptr,#_fm
   0C95 E4                  578 	clr	a
   0C96 93                  579 	movc	a,@a+dptr
   0C97 FF                  580 	mov	r7,a
   0C98 60 11               581 	jz	00108$
                            582 ;	../fb_rs.c:78: filtermode=1;
   0C9A D2 00               583 	setb	_filtermode
                            584 ;	../fb_rs.c:79: rs_send_s("filtered\n");
   0C9C 90 1B A7            585 	mov	dptr,#__str_3
   0C9F 75 F0 80            586 	mov	b,#0x80
   0CA2 C0 23               587 	push	bits
   0CA4 12 15 1A            588 	lcall	_rs_send_s
   0CA7 D0 23               589 	pop	bits
   0CA9 80 02               590 	sjmp	00258$
   0CAB                     591 00108$:
                            592 ;	../fb_rs.c:81: else filtermode=0;
   0CAB C2 00               593 	clr	_filtermode
                            594 ;	../fb_rs.c:83: do  {
   0CAD                     595 00258$:
                            596 ;	../fb_rs.c:84: watchdog_feed();
   0CAD C0 23               597 	push	bits
   0CAF 12 15 D5            598 	lcall	_watchdog_feed
   0CB2 D0 23               599 	pop	bits
                            600 ;	../fb_rs.c:85: ledcount--;
                            601 ;	../fb_rs.c:86: if(!ledcount){
   0CB4 D5 47 18            602 	djnz	_ledcount,00117$
                            603 ;	../fb_rs.c:87: if(!eibledcount)EIBLED=1;
   0CB7 E5 48               604 	mov	a,_eibledcount
   0CB9 70 04               605 	jnz	00111$
   0CBB D2 87               606 	setb	_P0_7
   0CBD 80 04               607 	sjmp	00112$
   0CBF                     608 00111$:
                            609 ;	../fb_rs.c:89: eibledcount--;
   0CBF 15 48               610 	dec	_eibledcount
                            611 ;	../fb_rs.c:90: EIBLED=0;
   0CC1 C2 87               612 	clr	_P0_7
   0CC3                     613 00112$:
                            614 ;	../fb_rs.c:92: if(!rxledcount)RXLED=1;
   0CC3 E5 49               615 	mov	a,_rxledcount
   0CC5 70 04               616 	jnz	00114$
   0CC7 D2 86               617 	setb	_P0_6
   0CC9 80 04               618 	sjmp	00117$
   0CCB                     619 00114$:
                            620 ;	../fb_rs.c:94: rxledcount--;
   0CCB 15 49               621 	dec	_rxledcount
                            622 ;	../fb_rs.c:95: RXLED=0;
   0CCD C2 86               623 	clr	_P0_6
   0CCF                     624 00117$:
                            625 ;	../fb_rs.c:98: if(rsin[rsinpos-1]==0x0A) rsinpos--;	// ggf. LF entfernen
   0CCF E5 42               626 	mov	a,_rsinpos
   0CD1 14                  627 	dec	a
   0CD2 24 24               628 	add	a,#_rsin
   0CD4 F9                  629 	mov	r1,a
   0CD5 87 07               630 	mov	ar7,@r1
   0CD7 BF 0A 02            631 	cjne	r7,#0x0A,00119$
   0CDA 15 42               632 	dec	_rsinpos
   0CDC                     633 00119$:
                            634 ;	../fb_rs.c:99: if(rsinpos>0 && rsin[rsinpos-1]==0x0D&& !busy)	// CR empfangen
   0CDC E5 42               635 	mov	a,_rsinpos
   0CDE 70 03               636 	jnz	00398$
   0CE0 02 12 EE            637 	ljmp	00248$
   0CE3                     638 00398$:
   0CE3 E5 42               639 	mov	a,_rsinpos
   0CE5 14                  640 	dec	a
   0CE6 24 24               641 	add	a,#_rsin
   0CE8 F9                  642 	mov	r1,a
   0CE9 87 07               643 	mov	ar7,@r1
   0CEB BF 0D 02            644 	cjne	r7,#0x0D,00399$
   0CEE 80 03               645 	sjmp	00400$
   0CF0                     646 00399$:
   0CF0 02 12 EE            647 	ljmp	00248$
   0CF3                     648 00400$:
   0CF3 30 18 03            649 	jnb	b0,00401$
   0CF6 02 12 EE            650 	ljmp	00248$
   0CF9                     651 00401$:
                            652 ;	../fb_rs.c:101: rxledcount=0xff;// * RXLED lang einschalten
   0CF9 75 49 FF            653 	mov	_rxledcount,#0xFF
                            654 ;	../fb_rs.c:102: if(echo) rs_send(0x0A);
   0CFC 90 1C FD            655 	mov	dptr,#_echo
   0CFF E4                  656 	clr	a
   0D00 93                  657 	movc	a,@a+dptr
   0D01 FF                  658 	mov	r7,a
   0D02 60 0A               659 	jz	00121$
   0D04 75 82 0A            660 	mov	dpl,#0x0A
   0D07 C0 23               661 	push	bits
   0D09 12 15 BA            662 	lcall	_rs_send
   0D0C D0 23               663 	pop	bits
   0D0E                     664 00121$:
                            665 ;	../fb_rs.c:104: if (rsin[0]=='f' && rsin[1]=='b') {	// Magic-word 'fb' empfangen
   0D0E 74 66               666 	mov	a,#0x66
   0D10 B5 24 02            667 	cjne	a,_rsin,00403$
   0D13 80 03               668 	sjmp	00404$
   0D15                     669 00403$:
   0D15 02 12 D8            670 	ljmp	00243$
   0D18                     671 00404$:
   0D18 74 62               672 	mov	a,#0x62
   0D1A B5 25 02            673 	cjne	a,(_rsin + 0x0001),00405$
   0D1D 80 03               674 	sjmp	00406$
   0D1F                     675 00405$:
   0D1F 02 12 D8            676 	ljmp	00243$
   0D22                     677 00406$:
                            678 ;	../fb_rs.c:105: if(rsin[2]=='s') {		// s=senden oder setzen
   0D22 74 73               679 	mov	a,#0x73
   0D24 B5 26 02            680 	cjne	a,(_rsin + 0x0002),00407$
   0D27 80 03               681 	sjmp	00408$
   0D29                     682 00407$:
   0D29 02 0F 52            683 	ljmp	00181$
   0D2C                     684 00408$:
                            685 ;	../fb_rs.c:107: if(rsin[3]=='0' && rsin[4]=='1' && rsin[rsinpos-3]=='=' && (rsin[rsinpos-2]=='0' || rsin[rsinpos-2]=='1')) {
   0D2C 74 30               686 	mov	a,#0x30
   0D2E B5 27 33            687 	cjne	a,(_rsin + 0x0003),00123$
   0D31 74 31               688 	mov	a,#0x31
   0D33 B5 28 2E            689 	cjne	a,(_rsin + 0x0004),00123$
   0D36 E5 42               690 	mov	a,_rsinpos
   0D38 24 FD               691 	add	a,#0xFD
   0D3A 24 24               692 	add	a,#_rsin
   0D3C F9                  693 	mov	r1,a
   0D3D 87 07               694 	mov	ar7,@r1
   0D3F BF 3D 22            695 	cjne	r7,#0x3D,00123$
   0D42 E5 42               696 	mov	a,_rsinpos
   0D44 24 FE               697 	add	a,#0xFE
   0D46 24 24               698 	add	a,#_rsin
   0D48 F9                  699 	mov	r1,a
   0D49 87 07               700 	mov	ar7,@r1
   0D4B BF 30 02            701 	cjne	r7,#0x30,00415$
   0D4E 80 0C               702 	sjmp	00122$
   0D50                     703 00415$:
   0D50 E5 42               704 	mov	a,_rsinpos
   0D52 24 FE               705 	add	a,#0xFE
   0D54 24 24               706 	add	a,#_rsin
   0D56 F9                  707 	mov	r1,a
   0D57 87 07               708 	mov	ar7,@r1
   0D59 BF 31 08            709 	cjne	r7,#0x31,00123$
   0D5C                     710 00122$:
                            711 ;	../fb_rs.c:108: send_obj_value(1);
   0D5C 75 82 01            712 	mov	dpl,#0x01
   0D5F 12 19 FE            713 	lcall	_send_obj_value
                            714 ;	../fb_rs.c:109: busy=1;
   0D62 D2 18               715 	setb	b0
   0D64                     716 00123$:
                            717 ;	../fb_rs.c:113: if(rsin[3]=='0' && rsin[4]=='2' && rsin[rsinpos-4]=='=') {
   0D64 74 30               718 	mov	a,#0x30
   0D66 B5 27 19            719 	cjne	a,(_rsin + 0x0003),00129$
   0D69 74 32               720 	mov	a,#0x32
   0D6B B5 28 14            721 	cjne	a,(_rsin + 0x0004),00129$
   0D6E E5 42               722 	mov	a,_rsinpos
   0D70 24 FC               723 	add	a,#0xFC
   0D72 24 24               724 	add	a,#_rsin
   0D74 F9                  725 	mov	r1,a
   0D75 87 07               726 	mov	ar7,@r1
   0D77 BF 3D 08            727 	cjne	r7,#0x3D,00129$
                            728 ;	../fb_rs.c:114: send_obj_value(2);
   0D7A 75 82 02            729 	mov	dpl,#0x02
   0D7D 12 19 FE            730 	lcall	_send_obj_value
                            731 ;	../fb_rs.c:115: busy=1;
   0D80 D2 18               732 	setb	b0
   0D82                     733 00129$:
                            734 ;	../fb_rs.c:119: if(rsin[3]=='0' && rsin[4]=='3') {
   0D82 74 30               735 	mov	a,#0x30
   0D84 B5 27 0D            736 	cjne	a,(_rsin + 0x0003),00133$
   0D87 74 33               737 	mov	a,#0x33
   0D89 B5 28 08            738 	cjne	a,(_rsin + 0x0004),00133$
                            739 ;	../fb_rs.c:120: send_obj_value(3);
   0D8C 75 82 03            740 	mov	dpl,#0x03
   0D8F 12 19 FE            741 	lcall	_send_obj_value
                            742 ;	../fb_rs.c:121: busy=1;
   0D92 D2 18               743 	setb	b0
   0D94                     744 00133$:
                            745 ;	../fb_rs.c:124: if(rsin[3]=='0' && rsin[4]=='4') {
   0D94 74 30               746 	mov	a,#0x30
   0D96 B5 27 0D            747 	cjne	a,(_rsin + 0x0003),00136$
   0D99 74 34               748 	mov	a,#0x34
   0D9B B5 28 08            749 	cjne	a,(_rsin + 0x0004),00136$
                            750 ;	../fb_rs.c:125: send_obj_value(4);
   0D9E 75 82 04            751 	mov	dpl,#0x04
   0DA1 12 19 FE            752 	lcall	_send_obj_value
                            753 ;	../fb_rs.c:126: busy=1;
   0DA4 D2 18               754 	setb	b0
   0DA6                     755 00136$:
                            756 ;	../fb_rs.c:129: if(rsin[3]=='0' && rsin[4]=='5') {
   0DA6 74 30               757 	mov	a,#0x30
   0DA8 B5 27 0D            758 	cjne	a,(_rsin + 0x0003),00139$
   0DAB 74 35               759 	mov	a,#0x35
   0DAD B5 28 08            760 	cjne	a,(_rsin + 0x0004),00139$
                            761 ;	../fb_rs.c:130: send_obj_value(5);
   0DB0 75 82 05            762 	mov	dpl,#0x05
   0DB3 12 19 FE            763 	lcall	_send_obj_value
                            764 ;	../fb_rs.c:131: busy=1;
   0DB6 D2 18               765 	setb	b0
   0DB8                     766 00139$:
                            767 ;	../fb_rs.c:135: if(rsin[3]=='0' && rsin[4]=='6') {
   0DB8 74 30               768 	mov	a,#0x30
   0DBA B5 27 0D            769 	cjne	a,(_rsin + 0x0003),00142$
   0DBD 74 36               770 	mov	a,#0x36
   0DBF B5 28 08            771 	cjne	a,(_rsin + 0x0004),00142$
                            772 ;	../fb_rs.c:136: send_obj_value(6);
   0DC2 75 82 06            773 	mov	dpl,#0x06
   0DC5 12 19 FE            774 	lcall	_send_obj_value
                            775 ;	../fb_rs.c:137: busy=1;
   0DC8 D2 18               776 	setb	b0
   0DCA                     777 00142$:
                            778 ;	../fb_rs.c:141: if(rsin[3]=='1' && rsin[4]=='5') {
   0DCA 74 31               779 	mov	a,#0x31
   0DCC B5 27 0D            780 	cjne	a,(_rsin + 0x0003),00145$
   0DCF 74 35               781 	mov	a,#0x35
   0DD1 B5 28 08            782 	cjne	a,(_rsin + 0x0004),00145$
                            783 ;	../fb_rs.c:142: send_obj_value(15);
   0DD4 75 82 0F            784 	mov	dpl,#0x0F
   0DD7 12 19 FE            785 	lcall	_send_obj_value
                            786 ;	../fb_rs.c:143: busy=1;
   0DDA D2 18               787 	setb	b0
   0DDC                     788 00145$:
                            789 ;	../fb_rs.c:146: if(rsin[3]=='f' && rsin[4]=='a'){
   0DDC 74 66               790 	mov	a,#0x66
   0DDE B5 27 29            791 	cjne	a,(_rsin + 0x0003),00148$
   0DE1 74 61               792 	mov	a,#0x61
   0DE3 B5 28 24            793 	cjne	a,(_rsin + 0x0004),00148$
                            794 ;	../fb_rs.c:147: set_filtermode('1');
   0DE6 75 82 31            795 	mov	dpl,#0x31
   0DE9 C0 23               796 	push	bits
   0DEB 12 0B 7B            797 	lcall	_set_filtermode
   0DEE D0 23               798 	pop	bits
                            799 ;	../fb_rs.c:148: save_ga(convert_adr(6),0);
   0DF0 75 82 06            800 	mov	dpl,#0x06
   0DF3 C0 23               801 	push	bits
   0DF5 12 09 EA            802 	lcall	_convert_adr
   0DF8 D0 23               803 	pop	bits
   0DFA C0 23               804 	push	bits
   0DFC E4                  805 	clr	a
   0DFD C0 E0               806 	push	acc
   0DFF C0 E0               807 	push	acc
   0E01 12 09 05            808 	lcall	_save_ga
   0E04 15 81               809 	dec	sp
   0E06 15 81               810 	dec	sp
   0E08 D0 23               811 	pop	bits
                            812 ;	../fb_rs.c:149: send_ok;//rs_send_s("OK\n");
   0E0A                     813 00148$:
                            814 ;	../fb_rs.c:153: if(rsin[3]=='p' && rsin[4]=='a')
   0E0A 74 70               815 	mov	a,#0x70
   0E0C B5 27 3C            816 	cjne	a,(_rsin + 0x0003),00156$
   0E0F 74 61               817 	mov	a,#0x61
   0E11 B5 28 37            818 	cjne	a,(_rsin + 0x0004),00156$
                            819 ;	../fb_rs.c:155: pa_tmp=convert_adr(5);
   0E14 75 82 05            820 	mov	dpl,#0x05
   0E17 C0 23               821 	push	bits
   0E19 12 09 EA            822 	lcall	_convert_adr
   0E1C 85 82 45            823 	mov	_pa_tmp,dpl
   0E1F 85 83 46            824 	mov	(_pa_tmp + 1),dph
   0E22 D0 23               825 	pop	bits
                            826 ;	../fb_rs.c:156: write_ok=0;
   0E24 C2 01               827 	clr	_write_ok
                            828 ;	../fb_rs.c:157: while (!write_ok) {
   0E26                     829 00152$:
   0E26 20 01 1B            830 	jb	_write_ok,00154$
                            831 ;	../fb_rs.c:158: START_WRITECYCLE
   0E29 75 E4 00            832 	mov	_FMCON,#0x00
                            833 ;	../fb_rs.c:159: FMADRH = 0x1C;
   0E2C 75 E7 1C            834 	mov	_FMADRH,#0x1C
                            835 ;	../fb_rs.c:160: FMADRL = 0xFB;
   0E2F 75 E6 FB            836 	mov	_FMADRL,#0xFB
                            837 ;	../fb_rs.c:161: FMDATA = pa_tmp>>8;
   0E32 85 46 E5            838 	mov	_FMDATA,(_pa_tmp + 1)
                            839 ;	../fb_rs.c:162: FMDATA = pa_tmp;
   0E35 85 45 E5            840 	mov	_FMDATA,_pa_tmp
                            841 ;	../fb_rs.c:163: STOP_WRITECYCLE
   0E38 75 E4 68            842 	mov	_FMCON,#0x68
                            843 ;	../fb_rs.c:164: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   0E3B E5 E4               844 	mov	a,_FMCON
   0E3D 20 E0 E6            845 	jb	acc.0,00152$
   0E40 D2 01               846 	setb	_write_ok
   0E42 80 E2               847 	sjmp	00152$
   0E44                     848 00154$:
                            849 ;	../fb_rs.c:166: send_ok();//rs_send_s("OK\n");
   0E44 C0 23               850 	push	bits
   0E46 12 0B 72            851 	lcall	_send_ok
   0E49 D0 23               852 	pop	bits
   0E4B                     853 00156$:
                            854 ;	../fb_rs.c:170: if(rsin[3]=='b' && rsin[4]=='r') {
   0E4B 74 62               855 	mov	a,#0x62
   0E4D B5 27 02            856 	cjne	a,(_rsin + 0x0003),00454$
   0E50 80 03               857 	sjmp	00455$
   0E52                     858 00454$:
   0E52 02 0F 52            859 	ljmp	00181$
   0E55                     860 00455$:
   0E55 74 72               861 	mov	a,#0x72
   0E57 B5 28 02            862 	cjne	a,(_rsin + 0x0004),00456$
   0E5A 80 03               863 	sjmp	00457$
   0E5C                     864 00456$:
   0E5C 02 0F 52            865 	ljmp	00181$
   0E5F                     866 00457$:
                            867 ;	../fb_rs.c:171: baud_tmp=0;
                            868 ;	../fb_rs.c:172: if(rsinpos>9 && rsin[rsinpos-3]=='0' && rsin[rsinpos-2]=='0') {
   0E5F E4                  869 	clr	a
   0E60 FE                  870 	mov	r6,a
   0E61 FF                  871 	mov	r7,a
   0E62 E5 42               872 	mov	a,_rsinpos
   0E64 24 F6               873 	add	a,#0xff - 0x09
   0E66 50 78               874 	jnc	00159$
   0E68 E5 42               875 	mov	a,_rsinpos
   0E6A 24 FD               876 	add	a,#0xFD
   0E6C 24 24               877 	add	a,#_rsin
   0E6E F9                  878 	mov	r1,a
   0E6F 87 05               879 	mov	ar5,@r1
   0E71 BD 30 6C            880 	cjne	r5,#0x30,00159$
   0E74 E5 42               881 	mov	a,_rsinpos
   0E76 24 FE               882 	add	a,#0xFE
   0E78 24 24               883 	add	a,#_rsin
   0E7A F9                  884 	mov	r1,a
   0E7B 87 05               885 	mov	ar5,@r1
   0E7D BD 30 60            886 	cjne	r5,#0x30,00159$
                            887 ;	../fb_rs.c:173: for(n=5;n<rsinpos-3;n++) {
   0E80 7D 05               888 	mov	r5,#0x05
   0E82                     889 00261$:
   0E82 C0 06               890 	push	ar6
   0E84 C0 07               891 	push	ar7
   0E86 AB 42               892 	mov	r3,_rsinpos
   0E88 7C 00               893 	mov	r4,#0x00
   0E8A EB                  894 	mov	a,r3
   0E8B 24 FD               895 	add	a,#0xFD
   0E8D FB                  896 	mov	r3,a
   0E8E EC                  897 	mov	a,r4
   0E8F 34 FF               898 	addc	a,#0xFF
   0E91 FC                  899 	mov	r4,a
   0E92 8D 02               900 	mov	ar2,r5
   0E94 7F 00               901 	mov	r7,#0x00
   0E96 C3                  902 	clr	c
   0E97 EA                  903 	mov	a,r2
   0E98 9B                  904 	subb	a,r3
   0E99 EF                  905 	mov	a,r7
   0E9A 64 80               906 	xrl	a,#0x80
   0E9C 8C F0               907 	mov	b,r4
   0E9E 63 F0 80            908 	xrl	b,#0x80
   0EA1 95 F0               909 	subb	a,b
   0EA3 D0 07               910 	pop	ar7
   0EA5 D0 06               911 	pop	ar6
   0EA7 50 37               912 	jnc	00159$
                            913 ;	../fb_rs.c:174: baud_tmp*=10;
   0EA9 C0 05               914 	push	ar5
   0EAB C0 23               915 	push	bits
   0EAD C0 06               916 	push	ar6
   0EAF C0 07               917 	push	ar7
   0EB1 90 00 0A            918 	mov	dptr,#0x000A
   0EB4 12 1A C7            919 	lcall	__mulint
   0EB7 AB 82               920 	mov	r3,dpl
   0EB9 AC 83               921 	mov	r4,dph
   0EBB 15 81               922 	dec	sp
   0EBD 15 81               923 	dec	sp
   0EBF D0 23               924 	pop	bits
   0EC1 D0 05               925 	pop	ar5
   0EC3 8B 06               926 	mov	ar6,r3
   0EC5 8C 07               927 	mov	ar7,r4
                            928 ;	../fb_rs.c:175: baud_tmp+=rsin[n]-48;
   0EC7 ED                  929 	mov	a,r5
   0EC8 24 24               930 	add	a,#_rsin
   0ECA F9                  931 	mov	r1,a
   0ECB 87 04               932 	mov	ar4,@r1
   0ECD 7B 00               933 	mov	r3,#0x00
   0ECF EC                  934 	mov	a,r4
   0ED0 24 D0               935 	add	a,#0xD0
   0ED2 FC                  936 	mov	r4,a
   0ED3 EB                  937 	mov	a,r3
   0ED4 34 FF               938 	addc	a,#0xFF
   0ED6 FB                  939 	mov	r3,a
   0ED7 EC                  940 	mov	a,r4
   0ED8 2E                  941 	add	a,r6
   0ED9 FE                  942 	mov	r6,a
   0EDA EB                  943 	mov	a,r3
   0EDB 3F                  944 	addc	a,r7
   0EDC FF                  945 	mov	r7,a
                            946 ;	../fb_rs.c:173: for(n=5;n<rsinpos-3;n++) {
   0EDD 0D                  947 	inc	r5
   0EDE 80 A2               948 	sjmp	00261$
   0EE0                     949 00159$:
                            950 ;	../fb_rs.c:178: if (baud_tmp==96 || baud_tmp==192 || baud_tmp==384 || baud_tmp==576 || baud_tmp==1152) {
   0EE0 BE 60 05            951 	cjne	r6,#0x60,00464$
   0EE3 BF 00 02            952 	cjne	r7,#0x00,00464$
   0EE6 80 1E               953 	sjmp	00170$
   0EE8                     954 00464$:
   0EE8 BE C0 05            955 	cjne	r6,#0xC0,00465$
   0EEB BF 00 02            956 	cjne	r7,#0x00,00465$
   0EEE 80 16               957 	sjmp	00170$
   0EF0                     958 00465$:
   0EF0 BE 80 05            959 	cjne	r6,#0x80,00466$
   0EF3 BF 01 02            960 	cjne	r7,#0x01,00466$
   0EF6 80 0E               961 	sjmp	00170$
   0EF8                     962 00466$:
   0EF8 BE 40 05            963 	cjne	r6,#0x40,00467$
   0EFB BF 02 02            964 	cjne	r7,#0x02,00467$
   0EFE 80 06               965 	sjmp	00170$
   0F00                     966 00467$:
   0F00 BE 80 42            967 	cjne	r6,#0x80,00171$
   0F03 BF 04 3F            968 	cjne	r7,#0x04,00171$
   0F06                     969 00170$:
                            970 ;	../fb_rs.c:179: send_ok();//rs_send_s("OK\n");
   0F06 C0 07               971 	push	ar7
   0F08 C0 06               972 	push	ar6
   0F0A C0 23               973 	push	bits
   0F0C 12 0B 72            974 	lcall	_send_ok
   0F0F D0 23               975 	pop	bits
   0F11 D0 06               976 	pop	ar6
   0F13 D0 07               977 	pop	ar7
                            978 ;	../fb_rs.c:180: write_ok=0;
   0F15 C2 01               979 	clr	_write_ok
                            980 ;	../fb_rs.c:181: while (!write_ok) {
   0F17 8F 05               981 	mov	ar5,r7
   0F19                     982 00164$:
   0F19 20 01 19            983 	jb	_write_ok,00167$
                            984 ;	../fb_rs.c:182: START_WRITECYCLE
   0F1C 75 E4 00            985 	mov	_FMCON,#0x00
                            986 ;	../fb_rs.c:183: FMADRH = 0x1C;
   0F1F 75 E7 1C            987 	mov	_FMADRH,#0x1C
                            988 ;	../fb_rs.c:184: FMADRL = 0xFE;
   0F22 75 E6 FE            989 	mov	_FMADRL,#0xFE
                            990 ;	../fb_rs.c:185: FMDATA = baud_tmp;		// LSB
   0F25 8E E5               991 	mov	_FMDATA,r6
                            992 ;	../fb_rs.c:186: FMDATA = baud_tmp>>8;	// MSB
   0F27 8D E5               993 	mov	_FMDATA,r5
                            994 ;	../fb_rs.c:187: STOP_WRITECYCLE
   0F29 75 E4 68            995 	mov	_FMCON,#0x68
                            996 ;	../fb_rs.c:188: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   0F2C E5 E4               997 	mov	a,_FMCON
   0F2E 20 E0 E8            998 	jb	acc.0,00164$
   0F31 D2 01               999 	setb	_write_ok
                           1000 ;	../fb_rs.c:190: while(!TI);
   0F33 80 E4              1001 	sjmp	00164$
   0F35                    1002 00167$:
   0F35 30 99 FD           1003 	jnb	_SCON_1,00167$
                           1004 ;	../fb_rs.c:191: rs_init(baud_tmp);
   0F38 8E 82              1005 	mov	dpl,r6
   0F3A 8F 83              1006 	mov	dph,r7
   0F3C C0 23              1007 	push	bits
   0F3E 12 13 2F           1008 	lcall	_rs_init
   0F41 D0 23              1009 	pop	bits
   0F43 80 0D              1010 	sjmp	00181$
   0F45                    1011 00171$:
                           1012 ;	../fb_rs.c:194: rs_send_s("error: unknown baudrate!\n");
   0F45 90 1B B1           1013 	mov	dptr,#__str_4
   0F48 75 F0 80           1014 	mov	b,#0x80
   0F4B C0 23              1015 	push	bits
   0F4D 12 15 1A           1016 	lcall	_rs_send_s
   0F50 D0 23              1017 	pop	bits
   0F52                    1018 00181$:
                           1019 ;	../fb_rs.c:202: if(rsin[2]=='r') {	// r=read
   0F52 74 72              1020 	mov	a,#0x72
   0F54 B5 26 02           1021 	cjne	a,(_rsin + 0x0002),00473$
   0F57 80 03              1022 	sjmp	00474$
   0F59                    1023 00473$:
   0F59 02 10 50           1024 	ljmp	00197$
   0F5C                    1025 00474$:
                           1026 ;	../fb_rs.c:205: if(rsin[3]=='p' && rsin[4]=='a')
   0F5C 74 70              1027 	mov	a,#0x70
   0F5E B5 27 6C           1028 	cjne	a,(_rsin + 0x0003),00183$
   0F61 74 61              1029 	mov	a,#0x61
   0F63 B5 28 67           1030 	cjne	a,(_rsin + 0x0004),00183$
                           1031 ;	../fb_rs.c:207: rs_send_dec(pa_h>>4);
   0F66 90 1C FB           1032 	mov	dptr,#_pa_h
   0F69 E4                 1033 	clr	a
   0F6A 93                 1034 	movc	a,@a+dptr
   0F6B C4                 1035 	swap	a
   0F6C 54 0F              1036 	anl	a,#0x0F
   0F6E FF                 1037 	mov	r7,a
   0F6F 7E 00              1038 	mov	r6,#0x00
   0F71 8F 82              1039 	mov	dpl,r7
   0F73 8E 83              1040 	mov	dph,r6
   0F75 C0 23              1041 	push	bits
   0F77 12 13 AD           1042 	lcall	_rs_send_dec
   0F7A D0 23              1043 	pop	bits
                           1044 ;	../fb_rs.c:208: rs_send('.');
   0F7C 75 82 2E           1045 	mov	dpl,#0x2E
   0F7F C0 23              1046 	push	bits
   0F81 12 15 BA           1047 	lcall	_rs_send
   0F84 D0 23              1048 	pop	bits
                           1049 ;	../fb_rs.c:209: rs_send_dec(pa_h&0x0F);
   0F86 90 1C FB           1050 	mov	dptr,#_pa_h
   0F89 E4                 1051 	clr	a
   0F8A 93                 1052 	movc	a,@a+dptr
   0F8B FF                 1053 	mov	r7,a
   0F8C 53 07 0F           1054 	anl	ar7,#0x0F
   0F8F 7E 00              1055 	mov	r6,#0x00
   0F91 8F 82              1056 	mov	dpl,r7
   0F93 8E 83              1057 	mov	dph,r6
   0F95 C0 23              1058 	push	bits
   0F97 12 13 AD           1059 	lcall	_rs_send_dec
   0F9A D0 23              1060 	pop	bits
                           1061 ;	../fb_rs.c:210: rs_send('.');
   0F9C 75 82 2E           1062 	mov	dpl,#0x2E
   0F9F C0 23              1063 	push	bits
   0FA1 12 15 BA           1064 	lcall	_rs_send
   0FA4 D0 23              1065 	pop	bits
                           1066 ;	../fb_rs.c:211: rs_send_dec(pa_l);
   0FA6 90 1C FC           1067 	mov	dptr,#_pa_l
   0FA9 E4                 1068 	clr	a
   0FAA 93                 1069 	movc	a,@a+dptr
   0FAB FF                 1070 	mov	r7,a
   0FAC 7E 00              1071 	mov	r6,#0x00
   0FAE 8F 82              1072 	mov	dpl,r7
   0FB0 8E 83              1073 	mov	dph,r6
   0FB2 C0 23              1074 	push	bits
   0FB4 12 13 AD           1075 	lcall	_rs_send_dec
   0FB7 D0 23              1076 	pop	bits
                           1077 ;	../fb_rs.c:212: rs_send(0x0D);
   0FB9 75 82 0D           1078 	mov	dpl,#0x0D
   0FBC C0 23              1079 	push	bits
   0FBE 12 15 BA           1080 	lcall	_rs_send
   0FC1 D0 23              1081 	pop	bits
                           1082 ;	../fb_rs.c:213: rs_send(0x0A);
   0FC3 75 82 0A           1083 	mov	dpl,#0x0A
   0FC6 C0 23              1084 	push	bits
   0FC8 12 15 BA           1085 	lcall	_rs_send
   0FCB D0 23              1086 	pop	bits
   0FCD                    1087 00183$:
                           1088 ;	../fb_rs.c:217: if(rsin[3]=='g' && rsin[4]=='a') {
   0FCD 74 67              1089 	mov	a,#0x67
   0FCF B5 27 6C           1090 	cjne	a,(_rsin + 0x0003),00191$
   0FD2 74 61              1091 	mov	a,#0x61
   0FD4 B5 28 67           1092 	cjne	a,(_rsin + 0x0004),00191$
                           1093 ;	../fb_rs.c:218: groupadr=convert_adr(5);
   0FD7 75 82 05           1094 	mov	dpl,#0x05
   0FDA C0 23              1095 	push	bits
   0FDC 12 09 EA           1096 	lcall	_convert_adr
   0FDF 85 82 43           1097 	mov	_groupadr,dpl
   0FE2 85 83 44           1098 	mov	(_groupadr + 1),dph
   0FE5 D0 23              1099 	pop	bits
                           1100 ;	../fb_rs.c:219: n=0;
   0FE7 7F 00              1101 	mov	r7,#0x00
                           1102 ;	../fb_rs.c:220: value=0xFFFF;
   0FE9 7D FF              1103 	mov	r5,#0xFF
   0FEB 7E FF              1104 	mov	r6,#0xFF
                           1105 ;	../fb_rs.c:221: do {								// Wert der GA aus Flash lesen
   0FED                    1106 00187$:
                           1107 ;	../fb_rs.c:222: if(ga_db[n].ga==groupadr) {
   0FED EF                 1108 	mov	a,r7
   0FEE 2F                 1109 	add	a,r7
   0FEF 25 E0              1110 	add	a,acc
   0FF1 FC                 1111 	mov	r4,a
   0FF2 F5 82              1112 	mov	dpl,a
   0FF4 75 83 1D           1113 	mov	dph,#(_ga_db >> 8)
   0FF7 E4                 1114 	clr	a
   0FF8 93                 1115 	movc	a,@a+dptr
   0FF9 FA                 1116 	mov	r2,a
   0FFA A3                 1117 	inc	dptr
   0FFB E4                 1118 	clr	a
   0FFC 93                 1119 	movc	a,@a+dptr
   0FFD FB                 1120 	mov	r3,a
   0FFE EA                 1121 	mov	a,r2
   0FFF B5 43 19           1122 	cjne	a,_groupadr,00186$
   1002 EB                 1123 	mov	a,r3
   1003 B5 44 15           1124 	cjne	a,(_groupadr + 1),00186$
                           1125 ;	../fb_rs.c:223: value=ga_db[n].val;
   1006 7B 1D              1126 	mov	r3,#(_ga_db >> 8)
   1008 8C 82              1127 	mov	dpl,r4
   100A 8B 83              1128 	mov	dph,r3
   100C A3                 1129 	inc	dptr
   100D A3                 1130 	inc	dptr
   100E E4                 1131 	clr	a
   100F 93                 1132 	movc	a,@a+dptr
   1010 FB                 1133 	mov	r3,a
   1011 A3                 1134 	inc	dptr
   1012 E4                 1135 	clr	a
   1013 93                 1136 	movc	a,@a+dptr
   1014 FC                 1137 	mov	r4,a
   1015 8B 05              1138 	mov	ar5,r3
   1017 8C 06              1139 	mov	ar6,r4
                           1140 ;	../fb_rs.c:224: n=255;
   1019 7F FF              1141 	mov	r7,#0xFF
   101B                    1142 00186$:
                           1143 ;	../fb_rs.c:226: n++;
   101B 0F                 1144 	inc	r7
                           1145 ;	../fb_rs.c:227: }while (n>0);
   101C EF                 1146 	mov	a,r7
   101D 70 CE              1147 	jnz	00187$
                           1148 ;	../fb_rs.c:228: rs_send_dec(value);
   101F 8D 82              1149 	mov	dpl,r5
   1021 8E 83              1150 	mov	dph,r6
   1023 C0 23              1151 	push	bits
   1025 12 13 AD           1152 	lcall	_rs_send_dec
   1028 D0 23              1153 	pop	bits
                           1154 ;	../fb_rs.c:229: rs_send(13);
   102A 75 82 0D           1155 	mov	dpl,#0x0D
   102D C0 23              1156 	push	bits
   102F 12 15 BA           1157 	lcall	_rs_send
   1032 D0 23              1158 	pop	bits
                           1159 ;	../fb_rs.c:230: rs_send(10);
   1034 75 82 0A           1160 	mov	dpl,#0x0A
   1037 C0 23              1161 	push	bits
   1039 12 15 BA           1162 	lcall	_rs_send
   103C D0 23              1163 	pop	bits
   103E                    1164 00191$:
                           1165 ;	../fb_rs.c:234: if(rsin[3]=='v' && rsin[4]=='a') {
   103E 74 76              1166 	mov	a,#0x76
   1040 B5 27 0D           1167 	cjne	a,(_rsin + 0x0003),00197$
   1043 74 61              1168 	mov	a,#0x61
   1045 B5 28 08           1169 	cjne	a,(_rsin + 0x0004),00197$
                           1170 ;	../fb_rs.c:235: send_obj_value(16);
   1048 75 82 10           1171 	mov	dpl,#0x10
   104B 12 19 FE           1172 	lcall	_send_obj_value
                           1173 ;	../fb_rs.c:236: busy=1;
   104E D2 18              1174 	setb	b0
   1050                    1175 00197$:
                           1176 ;	../fb_rs.c:239: if(rsin[2]=='k'&& rsin[3]=='a'){// kill all
   1050 74 6B              1177 	mov	a,#0x6B
   1052 B5 26 48           1178 	cjne	a,(_rsin + 0x0002),00207$
   1055 74 61              1179 	mov	a,#0x61
   1057 B5 27 43           1180 	cjne	a,(_rsin + 0x0003),00207$
                           1181 ;	../fb_rs.c:240: set_filtermode('0');
   105A 75 82 30           1182 	mov	dpl,#0x30
   105D C0 23              1183 	push	bits
   105F 12 0B 7B           1184 	lcall	_set_filtermode
   1062 D0 23              1185 	pop	bits
                           1186 ;	../fb_rs.c:242: do {								// GA Tabelle löschen
   1064 7F 00              1187 	mov	r7,#0x00
   1066                    1188 00203$:
                           1189 ;	../fb_rs.c:243: write_ok=0; 
   1066 C2 01              1190 	clr	_write_ok
                           1191 ;	../fb_rs.c:244: while (!write_ok) {
   1068 EF                 1192 	mov	a,r7
   1069 2F                 1193 	add	a,r7
   106A 25 E0              1194 	add	a,acc
   106C FE                 1195 	mov	r6,a
   106D                    1196 00200$:
   106D 20 01 20           1197 	jb	_write_ok,00202$
                           1198 ;	../fb_rs.c:245: START_WRITECYCLE
   1070 75 E4 00           1199 	mov	_FMCON,#0x00
                           1200 ;	../fb_rs.c:246: FMADRH = 0x1D;//(n >> 6) + 0x1D;
   1073 75 E7 1D           1201 	mov	_FMADRH,#0x1D
                           1202 ;	../fb_rs.c:247: FMADRL = n*4;//((n & 0x3F) * 4);
   1076 8E E6              1203 	mov	_FMADRL,r6
                           1204 ;	../fb_rs.c:248: FMDATA=0xFF;					// High Byte GA schreiben
   1078 75 E5 FF           1205 	mov	_FMDATA,#0xFF
                           1206 ;	../fb_rs.c:249: FMDATA=0xFF;					// Low Byte GA schreiben
   107B 75 E5 FF           1207 	mov	_FMDATA,#0xFF
                           1208 ;	../fb_rs.c:250: FMDATA=0xFF;					// Wert
   107E 75 E5 FF           1209 	mov	_FMDATA,#0xFF
                           1210 ;	../fb_rs.c:251: FMDATA=0xFF;
   1081 75 E5 FF           1211 	mov	_FMDATA,#0xFF
                           1212 ;	../fb_rs.c:252: STOP_WRITECYCLE
   1084 75 E4 68           1213 	mov	_FMCON,#0x68
                           1214 ;	../fb_rs.c:253: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   1087 E5 E4              1215 	mov	a,_FMCON
   1089 20 E0 E1           1216 	jb	acc.0,00200$
   108C D2 01              1217 	setb	_write_ok
   108E 80 DD              1218 	sjmp	00200$
   1090                    1219 00202$:
                           1220 ;	../fb_rs.c:255: n++;
   1090 0F                 1221 	inc	r7
                           1222 ;	../fb_rs.c:256: }while(n<=62);
   1091 EF                 1223 	mov	a,r7
   1092 24 C1              1224 	add	a,#0xff - 0x3E
   1094 50 D0              1225 	jnc	00203$
                           1226 ;	../fb_rs.c:257: send_ok();//rs_send_s("OK\n");
   1096 C0 23              1227 	push	bits
   1098 12 0B 72           1228 	lcall	_send_ok
   109B D0 23              1229 	pop	bits
   109D                    1230 00207$:
                           1231 ;	../fb_rs.c:259: if(rsin[2]=='d' && rsin[3]=='u'  && rsinpos==7) {
   109D 74 64              1232 	mov	a,#0x64
   109F B5 26 02           1233 	cjne	a,(_rsin + 0x0002),00497$
   10A2 80 03              1234 	sjmp	00498$
   10A4                    1235 00497$:
   10A4 02 11 46           1236 	ljmp	00213$
   10A7                    1237 00498$:
   10A7 74 75              1238 	mov	a,#0x75
   10A9 B5 27 02           1239 	cjne	a,(_rsin + 0x0003),00499$
   10AC 80 03              1240 	sjmp	00500$
   10AE                    1241 00499$:
   10AE 02 11 46           1242 	ljmp	00213$
   10B1                    1243 00500$:
   10B1 74 07              1244 	mov	a,#0x07
   10B3 B5 42 02           1245 	cjne	a,_rsinpos,00501$
   10B6 80 03              1246 	sjmp	00502$
   10B8                    1247 00501$:
   10B8 02 11 46           1248 	ljmp	00213$
   10BB                    1249 00502$:
                           1250 ;	../fb_rs.c:261: while(n<=61) {
   10BB 7F 00              1251 	mov	r7,#0x00
   10BD                    1252 00209$:
   10BD EF                 1253 	mov	a,r7
   10BE 24 C2              1254 	add	a,#0xff - 0x3D
   10C0 50 03              1255 	jnc	00503$
   10C2 02 11 46           1256 	ljmp	00213$
   10C5                    1257 00503$:
                           1258 ;	../fb_rs.c:262: rs_send_hex(n);
   10C5 8F 82              1259 	mov	dpl,r7
   10C7 C0 07              1260 	push	ar7
   10C9 C0 23              1261 	push	bits
   10CB 12 15 9B           1262 	lcall	_rs_send_hex
   10CE D0 23              1263 	pop	bits
                           1264 ;	../fb_rs.c:263: rs_send(':');
   10D0 75 82 3A           1265 	mov	dpl,#0x3A
   10D3 C0 23              1266 	push	bits
   10D5 12 15 BA           1267 	lcall	_rs_send
   10D8 D0 23              1268 	pop	bits
                           1269 ;	../fb_rs.c:264: rs_send(' ');
   10DA 75 82 20           1270 	mov	dpl,#0x20
   10DD C0 23              1271 	push	bits
   10DF 12 15 BA           1272 	lcall	_rs_send
   10E2 D0 23              1273 	pop	bits
   10E4 D0 07              1274 	pop	ar7
                           1275 ;	../fb_rs.c:265: rs_send_hex_i(ga_db[n].ga);
   10E6 EF                 1276 	mov	a,r7
   10E7 2F                 1277 	add	a,r7
   10E8 25 E0              1278 	add	a,acc
   10EA FE                 1279 	mov	r6,a
   10EB F5 82              1280 	mov	dpl,a
   10ED 75 83 1D           1281 	mov	dph,#(_ga_db >> 8)
   10F0 E4                 1282 	clr	a
   10F1 93                 1283 	movc	a,@a+dptr
   10F2 FC                 1284 	mov	r4,a
   10F3 A3                 1285 	inc	dptr
   10F4 E4                 1286 	clr	a
   10F5 93                 1287 	movc	a,@a+dptr
   10F6 FD                 1288 	mov	r5,a
   10F7 8C 82              1289 	mov	dpl,r4
   10F9 8D 83              1290 	mov	dph,r5
   10FB C0 07              1291 	push	ar7
   10FD C0 06              1292 	push	ar6
   10FF C0 23              1293 	push	bits
   1101 12 15 85           1294 	lcall	_rs_send_hex_i
   1104 D0 23              1295 	pop	bits
                           1296 ;	../fb_rs.c:266: rs_send(' ');
   1106 75 82 20           1297 	mov	dpl,#0x20
   1109 C0 23              1298 	push	bits
   110B 12 15 BA           1299 	lcall	_rs_send
   110E D0 23              1300 	pop	bits
   1110 D0 06              1301 	pop	ar6
                           1302 ;	../fb_rs.c:267: rs_send_hex_i(ga_db[n].val);
   1112 7D 1D              1303 	mov	r5,#(_ga_db >> 8)
   1114 8E 82              1304 	mov	dpl,r6
   1116 8D 83              1305 	mov	dph,r5
   1118 A3                 1306 	inc	dptr
   1119 A3                 1307 	inc	dptr
   111A E4                 1308 	clr	a
   111B 93                 1309 	movc	a,@a+dptr
   111C FD                 1310 	mov	r5,a
   111D A3                 1311 	inc	dptr
   111E E4                 1312 	clr	a
   111F 93                 1313 	movc	a,@a+dptr
   1120 FE                 1314 	mov	r6,a
   1121 8D 82              1315 	mov	dpl,r5
   1123 8E 83              1316 	mov	dph,r6
   1125 C0 23              1317 	push	bits
   1127 12 15 85           1318 	lcall	_rs_send_hex_i
   112A D0 23              1319 	pop	bits
                           1320 ;	../fb_rs.c:268: rs_send(13);
   112C 75 82 0D           1321 	mov	dpl,#0x0D
   112F C0 23              1322 	push	bits
   1131 12 15 BA           1323 	lcall	_rs_send
   1134 D0 23              1324 	pop	bits
                           1325 ;	../fb_rs.c:269: rs_send(10);
   1136 75 82 0A           1326 	mov	dpl,#0x0A
   1139 C0 23              1327 	push	bits
   113B 12 15 BA           1328 	lcall	_rs_send
   113E D0 23              1329 	pop	bits
   1140 D0 07              1330 	pop	ar7
                           1331 ;	../fb_rs.c:270: n++;
   1142 0F                 1332 	inc	r7
   1143 02 10 BD           1333 	ljmp	00209$
   1146                    1334 00213$:
                           1335 ;	../fb_rs.c:275: if(rsin[2]=='l' && rsin[3]=='i'  && rsinpos==7) {
   1146 74 6C              1336 	mov	a,#0x6C
   1148 B5 26 02           1337 	cjne	a,(_rsin + 0x0002),00504$
   114B 80 03              1338 	sjmp	00505$
   114D                    1339 00504$:
   114D 02 12 71           1340 	ljmp	00221$
   1150                    1341 00505$:
   1150 74 69              1342 	mov	a,#0x69
   1152 B5 27 02           1343 	cjne	a,(_rsin + 0x0003),00506$
   1155 80 03              1344 	sjmp	00507$
   1157                    1345 00506$:
   1157 02 12 71           1346 	ljmp	00221$
   115A                    1347 00507$:
   115A 74 07              1348 	mov	a,#0x07
   115C B5 42 02           1349 	cjne	a,_rsinpos,00508$
   115F 80 03              1350 	sjmp	00509$
   1161                    1351 00508$:
   1161 02 12 71           1352 	ljmp	00221$
   1164                    1353 00509$:
                           1354 ;	../fb_rs.c:277: while(n<=61&& ga_db[n].ga<0xFFFF) {
   1164 7F 00              1355 	mov	r7,#0x00
   1166                    1356 00217$:
   1166 EF                 1357 	mov	a,r7
   1167 24 C2              1358 	add	a,#0xff - 0x3D
   1169 50 03              1359 	jnc	00510$
   116B 02 12 6A           1360 	ljmp	00219$
   116E                    1361 00510$:
   116E EF                 1362 	mov	a,r7
   116F 2F                 1363 	add	a,r7
   1170 25 E0              1364 	add	a,acc
   1172 FE                 1365 	mov	r6,a
   1173 F5 82              1366 	mov	dpl,a
   1175 75 83 1D           1367 	mov	dph,#(_ga_db >> 8)
   1178 E4                 1368 	clr	a
   1179 93                 1369 	movc	a,@a+dptr
   117A FC                 1370 	mov	r4,a
   117B A3                 1371 	inc	dptr
   117C E4                 1372 	clr	a
   117D 93                 1373 	movc	a,@a+dptr
   117E FD                 1374 	mov	r5,a
   117F C3                 1375 	clr	c
   1180 EC                 1376 	mov	a,r4
   1181 94 FF              1377 	subb	a,#0xFF
   1183 ED                 1378 	mov	a,r5
   1184 94 FF              1379 	subb	a,#0xFF
   1186 40 03              1380 	jc	00511$
   1188 02 12 6A           1381 	ljmp	00219$
   118B                    1382 00511$:
                           1383 ;	../fb_rs.c:278: rs_send_dec(((ga_db[n].ga)>>11)&0x0F);
   118B 8E 82              1384 	mov	dpl,r6
   118D 75 83 1D           1385 	mov	dph,#(_ga_db >> 8)
   1190 E4                 1386 	clr	a
   1191 93                 1387 	movc	a,@a+dptr
   1192 A3                 1388 	inc	dptr
   1193 E4                 1389 	clr	a
   1194 93                 1390 	movc	a,@a+dptr
   1195 C4                 1391 	swap	a
   1196 23                 1392 	rl	a
   1197 54 1F              1393 	anl	a,#0x1F
   1199 FC                 1394 	mov	r4,a
   119A 74 0F              1395 	mov	a,#0x0F
   119C 5C                 1396 	anl	a,r4
   119D F5 82              1397 	mov	dpl,a
   119F 75 83 00           1398 	mov	dph,#0x00
   11A2 C0 07              1399 	push	ar7
   11A4 C0 06              1400 	push	ar6
   11A6 C0 23              1401 	push	bits
   11A8 12 13 AD           1402 	lcall	_rs_send_dec
   11AB D0 23              1403 	pop	bits
                           1404 ;	../fb_rs.c:279: rs_send('/');
   11AD 75 82 2F           1405 	mov	dpl,#0x2F
   11B0 C0 23              1406 	push	bits
   11B2 12 15 BA           1407 	lcall	_rs_send
   11B5 D0 23              1408 	pop	bits
   11B7 D0 06              1409 	pop	ar6
                           1410 ;	../fb_rs.c:280: rs_send_dec(((ga_db[n].ga)>>8)&0x07);
   11B9 8E 82              1411 	mov	dpl,r6
   11BB 75 83 1D           1412 	mov	dph,#(_ga_db >> 8)
   11BE E4                 1413 	clr	a
   11BF 93                 1414 	movc	a,@a+dptr
   11C0 A3                 1415 	inc	dptr
   11C1 E4                 1416 	clr	a
   11C2 93                 1417 	movc	a,@a+dptr
   11C3 FC                 1418 	mov	r4,a
   11C4 74 07              1419 	mov	a,#0x07
   11C6 5C                 1420 	anl	a,r4
   11C7 F5 82              1421 	mov	dpl,a
   11C9 75 83 00           1422 	mov	dph,#0x00
   11CC C0 06              1423 	push	ar6
   11CE C0 23              1424 	push	bits
   11D0 12 13 AD           1425 	lcall	_rs_send_dec
   11D3 D0 23              1426 	pop	bits
                           1427 ;	../fb_rs.c:281: rs_send('/');
   11D5 75 82 2F           1428 	mov	dpl,#0x2F
   11D8 C0 23              1429 	push	bits
   11DA 12 15 BA           1430 	lcall	_rs_send
   11DD D0 23              1431 	pop	bits
   11DF D0 06              1432 	pop	ar6
                           1433 ;	../fb_rs.c:282: rs_send_dec((ga_db[n].ga)&0xFF);
   11E1 8E 82              1434 	mov	dpl,r6
   11E3 75 83 1D           1435 	mov	dph,#(_ga_db >> 8)
   11E6 E4                 1436 	clr	a
   11E7 93                 1437 	movc	a,@a+dptr
   11E8 FC                 1438 	mov	r4,a
   11E9 A3                 1439 	inc	dptr
   11EA E4                 1440 	clr	a
   11EB 93                 1441 	movc	a,@a+dptr
   11EC 8C 82              1442 	mov	dpl,r4
   11EE 75 83 00           1443 	mov	dph,#0x00
   11F1 C0 06              1444 	push	ar6
   11F3 C0 23              1445 	push	bits
   11F5 12 13 AD           1446 	lcall	_rs_send_dec
   11F8 D0 23              1447 	pop	bits
                           1448 ;	../fb_rs.c:283: rs_send_s("= hex");
   11FA 90 1B CB           1449 	mov	dptr,#__str_5
   11FD 75 F0 80           1450 	mov	b,#0x80
   1200 C0 23              1451 	push	bits
   1202 12 15 1A           1452 	lcall	_rs_send_s
   1205 D0 23              1453 	pop	bits
   1207 D0 06              1454 	pop	ar6
                           1455 ;	../fb_rs.c:284: rs_send_hex_i(ga_db[n].val);
   1209 8E 04              1456 	mov	ar4,r6
   120B 7D 1D              1457 	mov	r5,#(_ga_db >> 8)
   120D 8C 82              1458 	mov	dpl,r4
   120F 8D 83              1459 	mov	dph,r5
   1211 A3                 1460 	inc	dptr
   1212 A3                 1461 	inc	dptr
   1213 E4                 1462 	clr	a
   1214 93                 1463 	movc	a,@a+dptr
   1215 FC                 1464 	mov	r4,a
   1216 A3                 1465 	inc	dptr
   1217 E4                 1466 	clr	a
   1218 93                 1467 	movc	a,@a+dptr
   1219 FD                 1468 	mov	r5,a
   121A 8C 82              1469 	mov	dpl,r4
   121C 8D 83              1470 	mov	dph,r5
   121E C0 06              1471 	push	ar6
   1220 C0 23              1472 	push	bits
   1222 12 15 85           1473 	lcall	_rs_send_hex_i
   1225 D0 23              1474 	pop	bits
                           1475 ;	../fb_rs.c:285: rs_send_s(" dec ");
   1227 90 1B D1           1476 	mov	dptr,#__str_6
   122A 75 F0 80           1477 	mov	b,#0x80
   122D C0 23              1478 	push	bits
   122F 12 15 1A           1479 	lcall	_rs_send_s
   1232 D0 23              1480 	pop	bits
   1234 D0 06              1481 	pop	ar6
                           1482 ;	../fb_rs.c:286: rs_send_dec(ga_db[n].val);
   1236 7D 1D              1483 	mov	r5,#(_ga_db >> 8)
   1238 8E 82              1484 	mov	dpl,r6
   123A 8D 83              1485 	mov	dph,r5
   123C A3                 1486 	inc	dptr
   123D A3                 1487 	inc	dptr
   123E E4                 1488 	clr	a
   123F 93                 1489 	movc	a,@a+dptr
   1240 FD                 1490 	mov	r5,a
   1241 A3                 1491 	inc	dptr
   1242 E4                 1492 	clr	a
   1243 93                 1493 	movc	a,@a+dptr
   1244 FE                 1494 	mov	r6,a
   1245 8D 82              1495 	mov	dpl,r5
   1247 8E 83              1496 	mov	dph,r6
   1249 C0 23              1497 	push	bits
   124B 12 13 AD           1498 	lcall	_rs_send_dec
   124E D0 23              1499 	pop	bits
                           1500 ;	../fb_rs.c:287: rs_send(13);
   1250 75 82 0D           1501 	mov	dpl,#0x0D
   1253 C0 23              1502 	push	bits
   1255 12 15 BA           1503 	lcall	_rs_send
   1258 D0 23              1504 	pop	bits
                           1505 ;	../fb_rs.c:288: rs_send(10);
   125A 75 82 0A           1506 	mov	dpl,#0x0A
   125D C0 23              1507 	push	bits
   125F 12 15 BA           1508 	lcall	_rs_send
   1262 D0 23              1509 	pop	bits
   1264 D0 07              1510 	pop	ar7
                           1511 ;	../fb_rs.c:289: n++;
   1266 0F                 1512 	inc	r7
   1267 02 11 66           1513 	ljmp	00217$
   126A                    1514 00219$:
                           1515 ;	../fb_rs.c:291: send_ok();//rs_send_s("OK\n");
   126A C0 23              1516 	push	bits
   126C 12 0B 72           1517 	lcall	_send_ok
   126F D0 23              1518 	pop	bits
   1271                    1519 00221$:
                           1520 ;	../fb_rs.c:293: if(rsin[2]=='f'&& rsin[3]=='m'){// filter mode 1/0
   1271 74 66              1521 	mov	a,#0x66
   1273 B5 26 16           1522 	cjne	a,(_rsin + 0x0002),00225$
   1276 74 6D              1523 	mov	a,#0x6D
   1278 B5 27 11           1524 	cjne	a,(_rsin + 0x0003),00225$
                           1525 ;	../fb_rs.c:294: set_filtermode(rsin[5]);
   127B 85 29 82           1526 	mov	dpl,(_rsin + 0x0005)
   127E C0 23              1527 	push	bits
   1280 12 0B 7B           1528 	lcall	_set_filtermode
   1283 D0 23              1529 	pop	bits
                           1530 ;	../fb_rs.c:295: send_ok();//rs_send_s("OK\n");
   1285 C0 23              1531 	push	bits
   1287 12 0B 72           1532 	lcall	_send_ok
   128A D0 23              1533 	pop	bits
   128C                    1534 00225$:
                           1535 ;	../fb_rs.c:298: if(rsin[2]=='e' && rsin[3]=='c' && rsin[4]=='h' && rsin[5]=='o' && rsin[6]=='=' && rsinpos==9) {
   128C 74 65              1536 	mov	a,#0x65
   128E B5 26 47           1537 	cjne	a,(_rsin + 0x0002),00243$
   1291 74 63              1538 	mov	a,#0x63
   1293 B5 27 42           1539 	cjne	a,(_rsin + 0x0003),00243$
   1296 74 68              1540 	mov	a,#0x68
   1298 B5 28 3D           1541 	cjne	a,(_rsin + 0x0004),00243$
   129B 74 6F              1542 	mov	a,#0x6F
   129D B5 29 38           1543 	cjne	a,(_rsin + 0x0005),00243$
   12A0 74 3D              1544 	mov	a,#0x3D
   12A2 B5 2A 33           1545 	cjne	a,(_rsin + 0x0006),00243$
   12A5 74 09              1546 	mov	a,#0x09
   12A7 B5 42 2E           1547 	cjne	a,_rsinpos,00243$
                           1548 ;	../fb_rs.c:299: write_ok=0;
   12AA C2 01              1549 	clr	_write_ok
                           1550 ;	../fb_rs.c:300: while (!write_ok) {
   12AC                    1551 00232$:
   12AC 20 01 22           1552 	jb	_write_ok,00234$
                           1553 ;	../fb_rs.c:301: START_WRITECYCLE
   12AF 75 E4 00           1554 	mov	_FMCON,#0x00
                           1555 ;	../fb_rs.c:302: FMADRH = 0x1C;
   12B2 75 E7 1C           1556 	mov	_FMADRH,#0x1C
                           1557 ;	../fb_rs.c:303: FMADRL = 0xFD;
   12B5 75 E6 FD           1558 	mov	_FMADRL,#0xFD
                           1559 ;	../fb_rs.c:304: if(rsin[7]=='0') FMDATA=0; else FMDATA=1;
   12B8 74 30              1560 	mov	a,#0x30
   12BA B5 2B 05           1561 	cjne	a,(_rsin + 0x0007),00228$
   12BD 75 E5 00           1562 	mov	_FMDATA,#0x00
   12C0 80 03              1563 	sjmp	00229$
   12C2                    1564 00228$:
   12C2 75 E5 01           1565 	mov	_FMDATA,#0x01
   12C5                    1566 00229$:
                           1567 ;	../fb_rs.c:305: STOP_WRITECYCLE
   12C5 75 E4 68           1568 	mov	_FMCON,#0x68
                           1569 ;	../fb_rs.c:306: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   12C8 E5 E4              1570 	mov	a,_FMCON
   12CA 20 E0 DF           1571 	jb	acc.0,00232$
   12CD D2 01              1572 	setb	_write_ok
   12CF 80 DB              1573 	sjmp	00232$
   12D1                    1574 00234$:
                           1575 ;	../fb_rs.c:308: send_ok();
   12D1 C0 23              1576 	push	bits
   12D3 12 0B 72           1577 	lcall	_send_ok
   12D6 D0 23              1578 	pop	bits
   12D8                    1579 00243$:
                           1580 ;	../fb_rs.c:312: if(!busy){// wenn nichts zu senden ist den Empfangspuffer löschen
   12D8 20 18 13           1581 	jb	b0,00248$
                           1582 ;	../fb_rs.c:313: for(n=0;n<30;n++) rsin[n]=0x00;
   12DB 7F 00              1583 	mov	r7,#0x00
   12DD                    1584 00265$:
   12DD BF 1E 00           1585 	cjne	r7,#0x1E,00533$
   12E0                    1586 00533$:
   12E0 50 09              1587 	jnc	00268$
   12E2 EF                 1588 	mov	a,r7
   12E3 24 24              1589 	add	a,#_rsin
   12E5 F8                 1590 	mov	r0,a
   12E6 76 00              1591 	mov	@r0,#0x00
   12E8 0F                 1592 	inc	r7
   12E9 80 F2              1593 	sjmp	00265$
   12EB                    1594 00268$:
                           1595 ;	../fb_rs.c:314: rsinpos=0;
   12EB 75 42 00           1596 	mov	_rsinpos,#0x00
   12EE                    1597 00248$:
                           1598 ;	../fb_rs.c:318: if(tel_sent && fb_state==0 && (TH1<0XC0) && (!wait_for_ack))//wenn tele gesendet ist
   12EE 30 0A 2E           1599 	jnb	_tel_sent,00252$
   12F1 E5 74              1600 	mov	a,_fb_state
   12F3 70 2A              1601 	jnz	00252$
   12F5 74 40              1602 	mov	a,#0x100 - 0xC0
   12F7 25 8D              1603 	add	a,_TH1
   12F9 40 24              1604 	jc	00252$
   12FB 20 0D 21           1605 	jb	_wait_for_ack,00252$
                           1606 ;	../fb_rs.c:320: process_tel();
   12FE 12 1A 31           1607 	lcall	_process_tel
                           1608 ;	../fb_rs.c:321: tel_sent=0;
   1301 C2 0A              1609 	clr	_tel_sent
                           1610 ;	../fb_rs.c:322: for(n=0;n<30;n++) rsin[n]=0x00;
   1303 7F 00              1611 	mov	r7,#0x00
   1305                    1612 00269$:
   1305 BF 1E 00           1613 	cjne	r7,#0x1E,00539$
   1308                    1614 00539$:
   1308 50 09              1615 	jnc	00272$
   130A EF                 1616 	mov	a,r7
   130B 24 24              1617 	add	a,#_rsin
   130D F8                 1618 	mov	r0,a
   130E 76 00              1619 	mov	@r0,#0x00
   1310 0F                 1620 	inc	r7
   1311 80 F2              1621 	sjmp	00269$
   1313                    1622 00272$:
                           1623 ;	../fb_rs.c:323: rsinpos=0;
   1313 75 42 00           1624 	mov	_rsinpos,#0x00
                           1625 ;	../fb_rs.c:324: busy=0;
   1316 C2 18              1626 	clr	b0
                           1627 ;	../fb_rs.c:325: send_ok();//rs_send_s("OK\n");
   1318 C0 23              1628 	push	bits
   131A 12 0B 72           1629 	lcall	_send_ok
   131D D0 23              1630 	pop	bits
   131F                    1631 00252$:
                           1632 ;	../fb_rs.c:327: if (tel_arrived ){//&& fb_state==13 //|| (tel_sent&& (telegramm[0]&0x20))
   131F 20 09 03           1633 	jb	_tel_arrived,00541$
   1322 02 0C AD           1634 	ljmp	00258$
   1325                    1635 00541$:
                           1636 ;	../fb_rs.c:328: process_tel();
   1325 C0 23              1637 	push	bits
   1327 12 1A 31           1638 	lcall	_process_tel
   132A D0 23              1639 	pop	bits
                           1640 ;	../fb_rs.c:330: } while(1);
   132C 02 0C AD           1641 	ljmp	00258$
                           1642 	.area CSEG    (CODE)
                           1643 	.area CONST   (CODE)
   1B7D                    1644 __str_0:
   1B7D 4B 75 62 69 27 73  1645 	.ascii "Kubi's RS-interface V2.01 "
        20 52 53 2D 69 6E
        74 65 72 66 61 63
        65 20 56 32 2E 30
        31 20
   1B97 00                 1646 	.db 0x00
   1B98                    1647 __str_1:
   1B98 31 31 35 32        1648 	.ascii "1152"
   1B9C 00                 1649 	.db 0x00
   1B9D                    1650 __str_2:
   1B9D 30 30 20 42 61 75  1651 	.ascii "00 Baud."
        64 2E
   1BA5 0A                 1652 	.db 0x0A
   1BA6 00                 1653 	.db 0x00
   1BA7                    1654 __str_3:
   1BA7 66 69 6C 74 65 72  1655 	.ascii "filtered"
        65 64
   1BAF 0A                 1656 	.db 0x0A
   1BB0 00                 1657 	.db 0x00
   1BB1                    1658 __str_4:
   1BB1 65 72 72 6F 72 3A  1659 	.ascii "error: unknown baudrate!"
        20 75 6E 6B 6E 6F
        77 6E 20 62 61 75
        64 72 61 74 65 21
   1BC9 0A                 1660 	.db 0x0A
   1BCA 00                 1661 	.db 0x00
   1BCB                    1662 __str_5:
   1BCB 3D 20 68 65 78     1663 	.ascii "= hex"
   1BD0 00                 1664 	.db 0x00
   1BD1                    1665 __str_6:
   1BD1 20 64 65 63 20     1666 	.ascii " dec "
   1BD6 00                 1667 	.db 0x00
                           1668 	.area XINIT   (CODE)
                           1669 	.area CABS    (ABS,CODE)
