                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Tue Nov 20 22:54:16 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_out
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _find_first_objno
                             13 	.globl _read_objflags
                             14 	.globl _send_obj_value
                             15 	.globl _gapos_in_gat
                             16 	.globl _P3_1
                             17 	.globl _P3_0
                             18 	.globl _P1_7
                             19 	.globl _P1_6
                             20 	.globl _P1_5
                             21 	.globl _P1_4
                             22 	.globl _P1_3
                             23 	.globl _P1_2
                             24 	.globl _P1_1
                             25 	.globl _P1_0
                             26 	.globl _P0_7
                             27 	.globl _P0_6
                             28 	.globl _P0_5
                             29 	.globl _P0_4
                             30 	.globl _P0_3
                             31 	.globl _P0_2
                             32 	.globl _P0_1
                             33 	.globl _P0_0
                             34 	.globl _I2CON_0
                             35 	.globl _I2CON_2
                             36 	.globl _I2CON_3
                             37 	.globl _I2CON_4
                             38 	.globl _I2CON_5
                             39 	.globl _I2CON_6
                             40 	.globl _SCON_7
                             41 	.globl _SCON_6
                             42 	.globl _SCON_5
                             43 	.globl _SCON_4
                             44 	.globl _SCON_3
                             45 	.globl _SCON_2
                             46 	.globl _SCON_1
                             47 	.globl _SCON_0
                             48 	.globl _IP0_0
                             49 	.globl _IP0_1
                             50 	.globl _IP0_2
                             51 	.globl _IP0_3
                             52 	.globl _IP0_4
                             53 	.globl _IP0_5
                             54 	.globl _IP0_6
                             55 	.globl _IP1_0
                             56 	.globl _IP1_1
                             57 	.globl _IP1_2
                             58 	.globl _IP1_6
                             59 	.globl _IEN1_0
                             60 	.globl _IEN1_1
                             61 	.globl _IEN1_2
                             62 	.globl _IEN0_0
                             63 	.globl _IEN0_1
                             64 	.globl _IEN0_2
                             65 	.globl _IEN0_3
                             66 	.globl _IEN0_4
                             67 	.globl _IEN0_5
                             68 	.globl _IEN0_6
                             69 	.globl _IEN0_7
                             70 	.globl _TCON_0
                             71 	.globl _TCON_1
                             72 	.globl _TCON_2
                             73 	.globl _TCON_3
                             74 	.globl _TCON_4
                             75 	.globl _TCON_5
                             76 	.globl _TCON_6
                             77 	.globl _TCON_7
                             78 	.globl _PSW_7
                             79 	.globl _PSW_6
                             80 	.globl _PSW_5
                             81 	.globl _PSW_4
                             82 	.globl _PSW_3
                             83 	.globl _PSW_2
                             84 	.globl _PSW_1
                             85 	.globl _PSW_0
                             86 	.globl _IEN1
                             87 	.globl _IP0H
                             88 	.globl _WFEED2
                             89 	.globl _WFEED1
                             90 	.globl _WDL
                             91 	.globl _WDCON
                             92 	.globl _TRIM
                             93 	.globl _TAMOD
                             94 	.globl _SSTAT
                             95 	.globl _RTCL
                             96 	.globl _RTCH
                             97 	.globl _RTCCON
                             98 	.globl _RSTSRC
                             99 	.globl _PT0AD
                            100 	.globl _PCONA
                            101 	.globl _P3M2
                            102 	.globl _P3M1
                            103 	.globl _P1M2
                            104 	.globl _P1M1
                            105 	.globl _P0M2
                            106 	.globl _P0M1
                            107 	.globl _KBPATN
                            108 	.globl _KBMASK
                            109 	.globl _KBCON
                            110 	.globl _IP1H
                            111 	.globl _IP1
                            112 	.globl _I2STAT
                            113 	.globl _I2SCLL
                            114 	.globl _I2SCLH
                            115 	.globl _I2DAT
                            116 	.globl _I2CON
                            117 	.globl _I2ADR
                            118 	.globl _FMDATA
                            119 	.globl _FMCON
                            120 	.globl _FMADRL
                            121 	.globl _FMADRH
                            122 	.globl _DIVM
                            123 	.globl _CMP2
                            124 	.globl _CMP1
                            125 	.globl _BRGCON
                            126 	.globl _BRGR1
                            127 	.globl _BRGR0
                            128 	.globl _SADEN
                            129 	.globl _SADDR
                            130 	.globl _AUXR1
                            131 	.globl _SBUF
                            132 	.globl _SCON
                            133 	.globl _IP0
                            134 	.globl _IEN0
                            135 	.globl _TH1
                            136 	.globl _TH0
                            137 	.globl _TL1
                            138 	.globl _TL0
                            139 	.globl _TMOD
                            140 	.globl _TCON
                            141 	.globl _PCON
                            142 	.globl _DPH
                            143 	.globl _DPL
                            144 	.globl _SP
                            145 	.globl _B
                            146 	.globl _ACC
                            147 	.globl _PSW
                            148 	.globl _P3
                            149 	.globl _P1
                            150 	.globl _P0
                            151 	.globl _portchanged
                            152 	.globl _delay_toggle
                            153 	.globl _rm_send
                            154 	.globl _logicstate
                            155 	.globl _blocked
                            156 	.globl _oldportbuffer
                            157 	.globl _portbuffer
                            158 	.globl _zf_state
                            159 	.globl _rm_state
                            160 	.globl _out_state
                            161 	.globl _Tval
                            162 	.globl _timer
                            163 	.globl _timercnt
                            164 	.globl _timerbase
                            165 	.globl _write_value_req
                            166 	.globl _read_value_req
                            167 	.globl _read_obj_value
                            168 	.globl _write_obj_value
                            169 	.globl _object_schalten
                            170 	.globl _delay_timer
                            171 	.globl _port_schalten
                            172 	.globl _sort_output
                            173 	.globl _spi_2_out
                            174 	.globl _bus_return
                            175 	.globl _restart_app
                            176 ;--------------------------------------------------------
                            177 ; special function registers
                            178 ;--------------------------------------------------------
                            179 	.area RSEG    (ABS,DATA)
   0000                     180 	.org 0x0000
                    0080    181 _P0	=	0x0080
                    0090    182 _P1	=	0x0090
                    00B0    183 _P3	=	0x00b0
                    00D0    184 _PSW	=	0x00d0
                    00E0    185 _ACC	=	0x00e0
                    00F0    186 _B	=	0x00f0
                    0081    187 _SP	=	0x0081
                    0082    188 _DPL	=	0x0082
                    0083    189 _DPH	=	0x0083
                    0087    190 _PCON	=	0x0087
                    0088    191 _TCON	=	0x0088
                    0089    192 _TMOD	=	0x0089
                    008A    193 _TL0	=	0x008a
                    008B    194 _TL1	=	0x008b
                    008C    195 _TH0	=	0x008c
                    008D    196 _TH1	=	0x008d
                    00A8    197 _IEN0	=	0x00a8
                    00B8    198 _IP0	=	0x00b8
                    0098    199 _SCON	=	0x0098
                    0099    200 _SBUF	=	0x0099
                    00A2    201 _AUXR1	=	0x00a2
                    00A9    202 _SADDR	=	0x00a9
                    00B9    203 _SADEN	=	0x00b9
                    00BE    204 _BRGR0	=	0x00be
                    00BF    205 _BRGR1	=	0x00bf
                    00BD    206 _BRGCON	=	0x00bd
                    00AC    207 _CMP1	=	0x00ac
                    00AD    208 _CMP2	=	0x00ad
                    0095    209 _DIVM	=	0x0095
                    00E7    210 _FMADRH	=	0x00e7
                    00E6    211 _FMADRL	=	0x00e6
                    00E4    212 _FMCON	=	0x00e4
                    00E5    213 _FMDATA	=	0x00e5
                    00DB    214 _I2ADR	=	0x00db
                    00D8    215 _I2CON	=	0x00d8
                    00DA    216 _I2DAT	=	0x00da
                    00DD    217 _I2SCLH	=	0x00dd
                    00DC    218 _I2SCLL	=	0x00dc
                    00D9    219 _I2STAT	=	0x00d9
                    00F8    220 _IP1	=	0x00f8
                    00F7    221 _IP1H	=	0x00f7
                    0094    222 _KBCON	=	0x0094
                    0086    223 _KBMASK	=	0x0086
                    0093    224 _KBPATN	=	0x0093
                    0084    225 _P0M1	=	0x0084
                    0085    226 _P0M2	=	0x0085
                    0091    227 _P1M1	=	0x0091
                    0092    228 _P1M2	=	0x0092
                    00B1    229 _P3M1	=	0x00b1
                    00B2    230 _P3M2	=	0x00b2
                    00B5    231 _PCONA	=	0x00b5
                    00F6    232 _PT0AD	=	0x00f6
                    00DF    233 _RSTSRC	=	0x00df
                    00D1    234 _RTCCON	=	0x00d1
                    00D2    235 _RTCH	=	0x00d2
                    00D3    236 _RTCL	=	0x00d3
                    00BA    237 _SSTAT	=	0x00ba
                    008F    238 _TAMOD	=	0x008f
                    0096    239 _TRIM	=	0x0096
                    00A7    240 _WDCON	=	0x00a7
                    00C1    241 _WDL	=	0x00c1
                    00C2    242 _WFEED1	=	0x00c2
                    00C3    243 _WFEED2	=	0x00c3
                    00B7    244 _IP0H	=	0x00b7
                    00E8    245 _IEN1	=	0x00e8
                            246 ;--------------------------------------------------------
                            247 ; special function bits
                            248 ;--------------------------------------------------------
                            249 	.area RSEG    (ABS,DATA)
   0000                     250 	.org 0x0000
                    00D0    251 _PSW_0	=	0x00d0
                    00D1    252 _PSW_1	=	0x00d1
                    00D2    253 _PSW_2	=	0x00d2
                    00D3    254 _PSW_3	=	0x00d3
                    00D4    255 _PSW_4	=	0x00d4
                    00D5    256 _PSW_5	=	0x00d5
                    00D6    257 _PSW_6	=	0x00d6
                    00D7    258 _PSW_7	=	0x00d7
                    008F    259 _TCON_7	=	0x008f
                    008E    260 _TCON_6	=	0x008e
                    008D    261 _TCON_5	=	0x008d
                    008C    262 _TCON_4	=	0x008c
                    008B    263 _TCON_3	=	0x008b
                    008A    264 _TCON_2	=	0x008a
                    0089    265 _TCON_1	=	0x0089
                    0088    266 _TCON_0	=	0x0088
                    00AF    267 _IEN0_7	=	0x00af
                    00AE    268 _IEN0_6	=	0x00ae
                    00AD    269 _IEN0_5	=	0x00ad
                    00AC    270 _IEN0_4	=	0x00ac
                    00AB    271 _IEN0_3	=	0x00ab
                    00AA    272 _IEN0_2	=	0x00aa
                    00A9    273 _IEN0_1	=	0x00a9
                    00A8    274 _IEN0_0	=	0x00a8
                    00EA    275 _IEN1_2	=	0x00ea
                    00E9    276 _IEN1_1	=	0x00e9
                    00E8    277 _IEN1_0	=	0x00e8
                    00FE    278 _IP1_6	=	0x00fe
                    00FA    279 _IP1_2	=	0x00fa
                    00F9    280 _IP1_1	=	0x00f9
                    00F8    281 _IP1_0	=	0x00f8
                    00BE    282 _IP0_6	=	0x00be
                    00BD    283 _IP0_5	=	0x00bd
                    00BC    284 _IP0_4	=	0x00bc
                    00BB    285 _IP0_3	=	0x00bb
                    00BA    286 _IP0_2	=	0x00ba
                    00B9    287 _IP0_1	=	0x00b9
                    00B8    288 _IP0_0	=	0x00b8
                    0098    289 _SCON_0	=	0x0098
                    0099    290 _SCON_1	=	0x0099
                    009A    291 _SCON_2	=	0x009a
                    009B    292 _SCON_3	=	0x009b
                    009C    293 _SCON_4	=	0x009c
                    009D    294 _SCON_5	=	0x009d
                    009E    295 _SCON_6	=	0x009e
                    009F    296 _SCON_7	=	0x009f
                    00DE    297 _I2CON_6	=	0x00de
                    00DD    298 _I2CON_5	=	0x00dd
                    00DC    299 _I2CON_4	=	0x00dc
                    00DB    300 _I2CON_3	=	0x00db
                    00DA    301 _I2CON_2	=	0x00da
                    00D8    302 _I2CON_0	=	0x00d8
                    0080    303 _P0_0	=	0x0080
                    0081    304 _P0_1	=	0x0081
                    0082    305 _P0_2	=	0x0082
                    0083    306 _P0_3	=	0x0083
                    0084    307 _P0_4	=	0x0084
                    0085    308 _P0_5	=	0x0085
                    0086    309 _P0_6	=	0x0086
                    0087    310 _P0_7	=	0x0087
                    0090    311 _P1_0	=	0x0090
                    0091    312 _P1_1	=	0x0091
                    0092    313 _P1_2	=	0x0092
                    0093    314 _P1_3	=	0x0093
                    0094    315 _P1_4	=	0x0094
                    0095    316 _P1_5	=	0x0095
                    0096    317 _P1_6	=	0x0096
                    0097    318 _P1_7	=	0x0097
                    00B0    319 _P3_0	=	0x00b0
                    00B1    320 _P3_1	=	0x00b1
                            321 ;--------------------------------------------------------
                            322 ; overlayable register banks
                            323 ;--------------------------------------------------------
                            324 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     325 	.ds 8
                            326 ;--------------------------------------------------------
                            327 ; overlayable bit register bank
                            328 ;--------------------------------------------------------
                            329 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     330 bits:
   0023                     331 	.ds 1
                    8000    332 	b0 = bits[0]
                    8100    333 	b1 = bits[1]
                    8200    334 	b2 = bits[2]
                    8300    335 	b3 = bits[3]
                    8400    336 	b4 = bits[4]
                    8500    337 	b5 = bits[5]
                    8600    338 	b6 = bits[6]
                    8700    339 	b7 = bits[7]
                            340 ;--------------------------------------------------------
                            341 ; internal ram data
                            342 ;--------------------------------------------------------
                            343 	.area DSEG    (DATA)
   0024                     344 _timerbase::
   0024                     345 	.ds 8
   002C                     346 _timercnt::
   002C                     347 	.ds 8
   0034                     348 _timer::
   0034                     349 	.ds 2
   0036                     350 _Tval::
   0036                     351 	.ds 1
   0037                     352 _out_state::
   0037                     353 	.ds 1
   0038                     354 _rm_state::
   0038                     355 	.ds 1
   0039                     356 _zf_state::
   0039                     357 	.ds 1
   003A                     358 _portbuffer::
   003A                     359 	.ds 1
   003B                     360 _oldportbuffer::
   003B                     361 	.ds 1
   003C                     362 _blocked::
   003C                     363 	.ds 1
   003D                     364 _logicstate::
   003D                     365 	.ds 1
   003E                     366 _rm_send::
   003E                     367 	.ds 1
                            368 ;--------------------------------------------------------
                            369 ; overlayable items in internal ram 
                            370 ;--------------------------------------------------------
                            371 	.area OSEG    (OVR,DATA)
                            372 ;--------------------------------------------------------
                            373 ; indirectly addressable internal ram data
                            374 ;--------------------------------------------------------
                            375 	.area ISEG    (DATA)
                            376 ;--------------------------------------------------------
                            377 ; absolute internal ram data
                            378 ;--------------------------------------------------------
                            379 	.area IABS    (ABS,DATA)
                            380 	.area IABS    (ABS,DATA)
                            381 ;--------------------------------------------------------
                            382 ; bit data
                            383 ;--------------------------------------------------------
                            384 	.area BSEG    (BIT)
   0000                     385 _delay_toggle::
   0000                     386 	.ds 1
   0001                     387 _portchanged::
   0001                     388 	.ds 1
                            389 ;--------------------------------------------------------
                            390 ; paged external ram data
                            391 ;--------------------------------------------------------
                            392 	.area PSEG    (PAG,XDATA)
                            393 ;--------------------------------------------------------
                            394 ; external ram data
                            395 ;--------------------------------------------------------
                            396 	.area XSEG    (XDATA)
                            397 ;--------------------------------------------------------
                            398 ; absolute external ram data
                            399 ;--------------------------------------------------------
                            400 	.area XABS    (ABS,XDATA)
                            401 ;--------------------------------------------------------
                            402 ; external initialized ram data
                            403 ;--------------------------------------------------------
                            404 	.area XISEG   (XDATA)
                            405 	.area HOME    (CODE)
                            406 	.area GSINIT0 (CODE)
                            407 	.area GSINIT1 (CODE)
                            408 	.area GSINIT2 (CODE)
                            409 	.area GSINIT3 (CODE)
                            410 	.area GSINIT4 (CODE)
                            411 	.area GSINIT5 (CODE)
                            412 	.area GSINIT  (CODE)
                            413 	.area GSFINAL (CODE)
                            414 	.area CSEG    (CODE)
                            415 ;--------------------------------------------------------
                            416 ; global & static initialisations
                            417 ;--------------------------------------------------------
                            418 	.area HOME    (CODE)
                            419 	.area GSINIT  (CODE)
                            420 	.area GSFINAL (CODE)
                            421 	.area GSINIT  (CODE)
                            422 ;--------------------------------------------------------
                            423 ; Home
                            424 ;--------------------------------------------------------
                            425 	.area HOME    (CODE)
                            426 	.area HOME    (CODE)
                            427 ;--------------------------------------------------------
                            428 ; code
                            429 ;--------------------------------------------------------
                            430 	.area CSEG    (CODE)
                            431 ;------------------------------------------------------------
                            432 ;Allocation info for local variables in function 'write_value_req'
                            433 ;------------------------------------------------------------
                            434 ;objno                     Allocated to registers r4 
                            435 ;objflags                  Allocated to registers 
                            436 ;assno                     Allocated to registers r6 
                            437 ;n                         Allocated to stack - _bp +1
                            438 ;gaposh                    Allocated to registers r4 
                            439 ;zfout                     Allocated to stack - _bp +2
                            440 ;zftyp                     Allocated to registers r7 
                            441 ;gapos                     Allocated to stack - _bp +3
                            442 ;blockstart                Allocated to stack - _bp +4
                            443 ;blockend                  Allocated to stack - _bp +5
                            444 ;block_polarity            Allocated to registers r7 
                            445 ;obj_bitpattern            Allocated to registers r3 
                            446 ;zf_bitpattern             Allocated to registers r2 
                            447 ;sloc0                     Allocated to stack - _bp +14
                            448 ;sloc1                     Allocated to stack - _bp +16
                            449 ;------------------------------------------------------------
                            450 ;	../fb_app_out.c:75: void write_value_req(void) 				// Ausgänge schalten gemäß EIS 1 Protokoll (an/aus)
                            451 ;	-----------------------------------------
                            452 ;	 function write_value_req
                            453 ;	-----------------------------------------
   007F                     454 _write_value_req:
                    0007    455 	ar7 = 0x07
                    0006    456 	ar6 = 0x06
                    0005    457 	ar5 = 0x05
                    0004    458 	ar4 = 0x04
                    0003    459 	ar3 = 0x03
                    0002    460 	ar2 = 0x02
                    0001    461 	ar1 = 0x01
                    0000    462 	ar0 = 0x00
   007F C0 08               463 	push	_bp
   0081 E5 81               464 	mov	a,sp
   0083 F5 08               465 	mov	_bp,a
   0085 24 05               466 	add	a,#0x05
   0087 F5 81               467 	mov	sp,a
                            468 ;	../fb_app_out.c:83: gapos=gapos_in_gat(telegramm[3],telegramm[4]);	// Position der Gruppenadresse in der Adresstabelle
   0089 85 49 82            469 	mov	dpl,(_telegramm + 0x0003)
   008C C0 4A               470 	push	(_telegramm + 0x0004)
   008E 12 12 CE            471 	lcall	_gapos_in_gat
   0091 AF 82               472 	mov	r7,dpl
   0093 15 81               473 	dec	sp
   0095 E5 08               474 	mov	a,_bp
   0097 24 03               475 	add	a,#0x03
   0099 F8                  476 	mov	r0,a
   009A A6 07               477 	mov	@r0,ar7
                            478 ;	../fb_app_out.c:84: if (gapos!=0xFF)					// =0xFF falls nicht vorhanden
   009C E5 08               479 	mov	a,_bp
   009E 24 03               480 	add	a,#0x03
   00A0 F8                  481 	mov	r0,a
   00A1 B6 FF 03            482 	cjne	@r0,#0xFF,00178$
   00A4 02 03 A2            483 	ljmp	00149$
   00A7                     484 00178$:
                            485 ;	../fb_app_out.c:87: assno=eeprom[eeprom[ASSOCTABPTR]];				// Erster Eintrag = Anzahl Einträge
   00A7 90 1D 11            486 	mov	dptr,#(_eeprom + 0x0011)
   00AA E4                  487 	clr	a
   00AB 93                  488 	movc	a,@a+dptr
   00AC F5 82               489 	mov	dpl,a
   00AE 75 83 1D            490 	mov	dph,#(_eeprom >> 8)
   00B1 E4                  491 	clr	a
   00B2 93                  492 	movc	a,@a+dptr
   00B3 FE                  493 	mov	r6,a
                            494 ;	../fb_app_out.c:89: for(n=0;n<assno;n++)				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   00B4 A8 08               495 	mov	r0,_bp
   00B6 08                  496 	inc	r0
   00B7 76 00               497 	mov	@r0,#0x00
   00B9                     498 00145$:
   00B9 A8 08               499 	mov	r0,_bp
   00BB 08                  500 	inc	r0
   00BC C3                  501 	clr	c
   00BD E6                  502 	mov	a,@r0
   00BE 9E                  503 	subb	a,r6
   00BF 40 03               504 	jc	00179$
   00C1 02 03 99            505 	ljmp	00148$
   00C4                     506 00179$:
                            507 ;	../fb_app_out.c:91: gaposh=eeprom[eeprom[ASSOCTABPTR]+1+(n*2)];
   00C4 90 1D 11            508 	mov	dptr,#(_eeprom + 0x0011)
   00C7 E4                  509 	clr	a
   00C8 93                  510 	movc	a,@a+dptr
   00C9 FC                  511 	mov	r4,a
   00CA 0C                  512 	inc	r4
   00CB A8 08               513 	mov	r0,_bp
   00CD 08                  514 	inc	r0
   00CE E6                  515 	mov	a,@r0
   00CF 25 E0               516 	add	a,acc
   00D1 FB                  517 	mov	r3,a
   00D2 2C                  518 	add	a,r4
   00D3 90 1D 00            519 	mov	dptr,#_eeprom
   00D6 93                  520 	movc	a,@a+dptr
   00D7 FC                  521 	mov	r4,a
                            522 ;	../fb_app_out.c:92: if(gapos==gaposh)					// Wenn Positionsnummer übereinstimmt
   00D8 E5 08               523 	mov	a,_bp
   00DA 24 03               524 	add	a,#0x03
   00DC F8                  525 	mov	r0,a
   00DD E6                  526 	mov	a,@r0
   00DE B5 04 02            527 	cjne	a,ar4,00180$
   00E1 80 03               528 	sjmp	00181$
   00E3                     529 00180$:
   00E3 02 03 92            530 	ljmp	00147$
   00E6                     531 00181$:
                            532 ;	../fb_app_out.c:94: objno=eeprom[eeprom[ASSOCTABPTR]+2+(n*2)];				// Objektnummer
   00E6 90 1D 11            533 	mov	dptr,#(_eeprom + 0x0011)
   00E9 E4                  534 	clr	a
   00EA 93                  535 	movc	a,@a+dptr
   00EB 24 02               536 	add	a,#0x02
   00ED 2B                  537 	add	a,r3
   00EE 90 1D 00            538 	mov	dptr,#_eeprom
   00F1 93                  539 	movc	a,@a+dptr
                            540 ;	../fb_app_out.c:95: objflags=read_objflags(objno);			// Objekt Flags lesen
   00F2 FC                  541 	mov	r4,a
   00F3 F5 82               542 	mov	dpl,a
   00F5 C0 06               543 	push	ar6
   00F7 C0 04               544 	push	ar4
   00F9 12 17 6C            545 	lcall	_read_objflags
   00FC D0 04               546 	pop	ar4
   00FE D0 06               547 	pop	ar6
                            548 ;	../fb_app_out.c:97: obj_bitpattern=0x01<<(objno-8);
   0100 EC                  549 	mov	a,r4
   0101 24 F8               550 	add	a,#0xF8
   0103 FB                  551 	mov	r3,a
   0104 8B F0               552 	mov	b,r3
   0106 05 F0               553 	inc	b
   0108 74 01               554 	mov	a,#0x01
   010A 80 02               555 	sjmp	00184$
   010C                     556 00182$:
   010C 25 E0               557 	add	a,acc
   010E                     558 00184$:
   010E D5 F0 FB            559 	djnz	b,00182$
   0111 FB                  560 	mov	r3,a
                            561 ;	../fb_app_out.c:99: if (objno<8) object_schalten(objno,telegramm[7]&0x01);	// Objektnummer 0-7 entspricht den Ausgängen 1-8
   0112 BC 08 00            562 	cjne	r4,#0x08,00185$
   0115                     563 00185$:
   0115 50 1E               564 	jnc	00102$
   0117 E5 4D               565 	mov	a,(_telegramm + 0x0007)
   0119 54 01               566 	anl	a,#0x01
   011B 24 FF               567 	add	a,#0xff
   011D 92 18               568 	mov  b0,c
   011F 92 F0               569 	mov	b[0],c
   0121 C0 06               570 	push	ar6
   0123 C0 04               571 	push	ar4
   0125 C0 03               572 	push	ar3
   0127 85 F0 23            573 	mov	bits,b
   012A 8C 82               574 	mov	dpl,r4
   012C 12 05 3E            575 	lcall	_object_schalten
   012F D0 03               576 	pop	ar3
   0131 D0 04               577 	pop	ar4
   0133 D0 06               578 	pop	ar6
   0135                     579 00102$:
                            580 ;	../fb_app_out.c:101: if (objno>7 && objno<12)	// Objektnummer 8-11 entspricht den Zusatzfunktionen 1-4
   0135 EC                  581 	mov	a,r4
   0136 24 F8               582 	add	a,#0xff - 0x07
   0138 40 03               583 	jc	00187$
   013A 02 03 92            584 	ljmp	00147$
   013D                     585 00187$:
   013D BC 0C 00            586 	cjne	r4,#0x0C,00188$
   0140                     587 00188$:
   0140 40 03               588 	jc	00189$
   0142 02 03 92            589 	ljmp	00147$
   0145                     590 00189$:
                            591 ;	../fb_app_out.c:103: write_obj_value(objno, telegramm[7]&0x01);
   0145 C0 03               592 	push	ar3
   0147 74 01               593 	mov	a,#0x01
   0149 55 4D               594 	anl	a,(_telegramm + 0x0007)
   014B FA                  595 	mov	r2,a
   014C 7B 00               596 	mov	r3,#0x00
   014E C0 06               597 	push	ar6
   0150 C0 04               598 	push	ar4
   0152 C0 03               599 	push	ar3
   0154 C0 02               600 	push	ar2
   0156 C0 03               601 	push	ar3
   0158 8C 82               602 	mov	dpl,r4
   015A 12 04 83            603 	lcall	_write_obj_value
   015D 15 81               604 	dec	sp
   015F 15 81               605 	dec	sp
   0161 D0 03               606 	pop	ar3
   0163 D0 04               607 	pop	ar4
   0165 D0 06               608 	pop	ar6
                            609 ;	../fb_app_out.c:104: zfout=0;
   0167 A8 08               610 	mov	r0,_bp
   0169 08                  611 	inc	r0
   016A 08                  612 	inc	r0
   016B 76 00               613 	mov	@r0,#0x00
                            614 ;	../fb_app_out.c:105: blockstart=0;
   016D E5 08               615 	mov	a,_bp
   016F 24 04               616 	add	a,#0x04
   0171 F8                  617 	mov	r0,a
   0172 76 00               618 	mov	@r0,#0x00
                            619 ;	../fb_app_out.c:106: blockend=0;
   0174 E5 08               620 	mov	a,_bp
   0176 24 05               621 	add	a,#0x05
   0178 F8                  622 	mov	r0,a
   0179 76 00               623 	mov	@r0,#0x00
                            624 ;	../fb_app_out.c:107: switch (objno-8)			// Zugeordneten Ausgang zu Zusatzfunktionsnr. in zfout speichern (1-8)
   017B 8C 07               625 	mov	ar7,r4
   017D 7D 00               626 	mov	r5,#0x00
   017F EF                  627 	mov	a,r7
   0180 24 F8               628 	add	a,#0xF8
   0182 FC                  629 	mov	r4,a
   0183 ED                  630 	mov	a,r5
   0184 34 FF               631 	addc	a,#0xFF
   0186 FA                  632 	mov	r2,a
   0187 BC 00 07            633 	cjne	r4,#0x00,00190$
   018A BA 00 04            634 	cjne	r2,#0x00,00190$
   018D D0 03               635 	pop	ar3
   018F 80 1E               636 	sjmp	00103$
   0191                     637 00190$:
   0191 D0 03               638 	pop	ar3
   0193 BC 01 05            639 	cjne	r4,#0x01,00191$
   0196 BA 00 02            640 	cjne	r2,#0x00,00191$
   0199 80 47               641 	sjmp	00104$
   019B                     642 00191$:
   019B BC 02 05            643 	cjne	r4,#0x02,00192$
   019E BA 00 02            644 	cjne	r2,#0x00,00192$
   01A1 80 78               645 	sjmp	00105$
   01A3                     646 00192$:
   01A3 BC 03 06            647 	cjne	r4,#0x03,00193$
   01A6 BA 00 03            648 	cjne	r2,#0x00,00193$
   01A9 02 02 4D            649 	ljmp	00106$
   01AC                     650 00193$:
   01AC 02 02 84            651 	ljmp	00107$
                            652 ;	../fb_app_out.c:109: case 0x00:		
   01AF                     653 00103$:
                            654 ;	../fb_app_out.c:110: zfout=eeprom[FUNCASS]&0x0F;
   01AF 90 1D D8            655 	mov	dptr,#(_eeprom + 0x00d8)
   01B2 E4                  656 	clr	a
   01B3 93                  657 	movc	a,@a+dptr
   01B4 FC                  658 	mov	r4,a
   01B5 A8 08               659 	mov	r0,_bp
   01B7 08                  660 	inc	r0
   01B8 08                  661 	inc	r0
   01B9 74 0F               662 	mov	a,#0x0F
   01BB 5C                  663 	anl	a,r4
   01BC F6                  664 	mov	@r0,a
                            665 ;	../fb_app_out.c:111: blockstart=eeprom[BLOCKACT]&0x03;		// Verhalten bei Beginn der Sperrung
   01BD 90 1D EF            666 	mov	dptr,#(_eeprom + 0x00ef)
   01C0 E4                  667 	clr	a
   01C1 93                  668 	movc	a,@a+dptr
   01C2 FC                  669 	mov	r4,a
   01C3 E5 08               670 	mov	a,_bp
   01C5 24 04               671 	add	a,#0x04
   01C7 F8                  672 	mov	r0,a
   01C8 74 03               673 	mov	a,#0x03
   01CA 5C                  674 	anl	a,r4
   01CB F6                  675 	mov	@r0,a
                            676 ;	../fb_app_out.c:112: blockend=(eeprom[BLOCKACT]>>2)&0x03;	// Verhalten bei Ende der Sperrung
   01CC 90 1D EF            677 	mov	dptr,#(_eeprom + 0x00ef)
   01CF E4                  678 	clr	a
   01D0 93                  679 	movc	a,@a+dptr
   01D1 03                  680 	rr	a
   01D2 03                  681 	rr	a
   01D3 54 3F               682 	anl	a,#0x3F
   01D5 FC                  683 	mov	r4,a
   01D6 E5 08               684 	mov	a,_bp
   01D8 24 05               685 	add	a,#0x05
   01DA F8                  686 	mov	r0,a
   01DB 74 03               687 	mov	a,#0x03
   01DD 5C                  688 	anl	a,r4
   01DE F6                  689 	mov	@r0,a
                            690 ;	../fb_app_out.c:113: break;
   01DF 02 02 84            691 	ljmp	00107$
                            692 ;	../fb_app_out.c:114: case 0x01:
   01E2                     693 00104$:
                            694 ;	../fb_app_out.c:115: zfout=(eeprom[FUNCASS]&0xF0)>>4;
   01E2 90 1D D8            695 	mov	dptr,#(_eeprom + 0x00d8)
   01E5 E4                  696 	clr	a
   01E6 93                  697 	movc	a,@a+dptr
   01E7 FC                  698 	mov	r4,a
   01E8 53 04 F0            699 	anl	ar4,#0xF0
   01EB A8 08               700 	mov	r0,_bp
   01ED 08                  701 	inc	r0
   01EE 08                  702 	inc	r0
   01EF EC                  703 	mov	a,r4
   01F0 C4                  704 	swap	a
   01F1 54 0F               705 	anl	a,#0x0F
   01F3 F6                  706 	mov	@r0,a
                            707 ;	../fb_app_out.c:116: blockstart=(eeprom[BLOCKACT]>>4)&0x03;	// Verhalten bei Beginn der Sperrung
   01F4 90 1D EF            708 	mov	dptr,#(_eeprom + 0x00ef)
   01F7 E4                  709 	clr	a
   01F8 93                  710 	movc	a,@a+dptr
   01F9 C4                  711 	swap	a
   01FA 54 0F               712 	anl	a,#0x0F
   01FC FC                  713 	mov	r4,a
   01FD E5 08               714 	mov	a,_bp
   01FF 24 04               715 	add	a,#0x04
   0201 F8                  716 	mov	r0,a
   0202 74 03               717 	mov	a,#0x03
   0204 5C                  718 	anl	a,r4
   0205 F6                  719 	mov	@r0,a
                            720 ;	../fb_app_out.c:117: blockend=(eeprom[BLOCKACT]>>6)&0x03;	// Verhalten bei Ende der Sperrung
   0206 90 1D EF            721 	mov	dptr,#(_eeprom + 0x00ef)
   0209 E4                  722 	clr	a
   020A 93                  723 	movc	a,@a+dptr
   020B 23                  724 	rl	a
   020C 23                  725 	rl	a
   020D 54 03               726 	anl	a,#0x03
   020F FC                  727 	mov	r4,a
   0210 E5 08               728 	mov	a,_bp
   0212 24 05               729 	add	a,#0x05
   0214 F8                  730 	mov	r0,a
   0215 74 03               731 	mov	a,#0x03
   0217 5C                  732 	anl	a,r4
   0218 F6                  733 	mov	@r0,a
                            734 ;	../fb_app_out.c:118: break;
                            735 ;	../fb_app_out.c:119: case 0x02:
   0219 80 69               736 	sjmp	00107$
   021B                     737 00105$:
                            738 ;	../fb_app_out.c:120: zfout=eeprom[FUNCASS+1]&0x0F;
   021B 90 1D D9            739 	mov	dptr,#(_eeprom + 0x00d9)
   021E E4                  740 	clr	a
   021F 93                  741 	movc	a,@a+dptr
   0220 FC                  742 	mov	r4,a
   0221 A8 08               743 	mov	r0,_bp
   0223 08                  744 	inc	r0
   0224 08                  745 	inc	r0
   0225 74 0F               746 	mov	a,#0x0F
   0227 5C                  747 	anl	a,r4
   0228 F6                  748 	mov	@r0,a
                            749 ;	../fb_app_out.c:121: blockstart=eeprom[BLOCKACT+1]&0x03;		// Verhalten bei Beginn der Sperrung
   0229 90 1D F0            750 	mov	dptr,#(_eeprom + 0x00f0)
   022C E4                  751 	clr	a
   022D 93                  752 	movc	a,@a+dptr
   022E FC                  753 	mov	r4,a
   022F E5 08               754 	mov	a,_bp
   0231 24 04               755 	add	a,#0x04
   0233 F8                  756 	mov	r0,a
   0234 74 03               757 	mov	a,#0x03
   0236 5C                  758 	anl	a,r4
   0237 F6                  759 	mov	@r0,a
                            760 ;	../fb_app_out.c:122: blockend=(eeprom[BLOCKACT+1]>>2)&0x03;	// Verhalten bei Ende der Sperrung
   0238 90 1D F0            761 	mov	dptr,#(_eeprom + 0x00f0)
   023B E4                  762 	clr	a
   023C 93                  763 	movc	a,@a+dptr
   023D 03                  764 	rr	a
   023E 03                  765 	rr	a
   023F 54 3F               766 	anl	a,#0x3F
   0241 FC                  767 	mov	r4,a
   0242 E5 08               768 	mov	a,_bp
   0244 24 05               769 	add	a,#0x05
   0246 F8                  770 	mov	r0,a
   0247 74 03               771 	mov	a,#0x03
   0249 5C                  772 	anl	a,r4
   024A F6                  773 	mov	@r0,a
                            774 ;	../fb_app_out.c:123: break;
                            775 ;	../fb_app_out.c:124: case 0x03:
   024B 80 37               776 	sjmp	00107$
   024D                     777 00106$:
                            778 ;	../fb_app_out.c:125: zfout=(eeprom[FUNCASS+1]&0xF0)>>4;
   024D 90 1D D9            779 	mov	dptr,#(_eeprom + 0x00d9)
   0250 E4                  780 	clr	a
   0251 93                  781 	movc	a,@a+dptr
   0252 FC                  782 	mov	r4,a
   0253 53 04 F0            783 	anl	ar4,#0xF0
   0256 A8 08               784 	mov	r0,_bp
   0258 08                  785 	inc	r0
   0259 08                  786 	inc	r0
   025A EC                  787 	mov	a,r4
   025B C4                  788 	swap	a
   025C 54 0F               789 	anl	a,#0x0F
   025E F6                  790 	mov	@r0,a
                            791 ;	../fb_app_out.c:126: blockstart=(eeprom[BLOCKACT+1]>>4)&0x03;	// Verhalten bei Beginn der Sperrung
   025F 90 1D F0            792 	mov	dptr,#(_eeprom + 0x00f0)
   0262 E4                  793 	clr	a
   0263 93                  794 	movc	a,@a+dptr
   0264 C4                  795 	swap	a
   0265 54 0F               796 	anl	a,#0x0F
   0267 FC                  797 	mov	r4,a
   0268 E5 08               798 	mov	a,_bp
   026A 24 04               799 	add	a,#0x04
   026C F8                  800 	mov	r0,a
   026D 74 03               801 	mov	a,#0x03
   026F 5C                  802 	anl	a,r4
   0270 F6                  803 	mov	@r0,a
                            804 ;	../fb_app_out.c:127: blockend=(eeprom[BLOCKACT+1]>>6)&0x03;		// Verhalten bei Ende der Sperrung
   0271 90 1D F0            805 	mov	dptr,#(_eeprom + 0x00f0)
   0274 E4                  806 	clr	a
   0275 93                  807 	movc	a,@a+dptr
   0276 23                  808 	rl	a
   0277 23                  809 	rl	a
   0278 54 03               810 	anl	a,#0x03
   027A FC                  811 	mov	r4,a
   027B E5 08               812 	mov	a,_bp
   027D 24 05               813 	add	a,#0x05
   027F F8                  814 	mov	r0,a
   0280 74 03               815 	mov	a,#0x03
   0282 5C                  816 	anl	a,r4
   0283 F6                  817 	mov	@r0,a
                            818 ;	../fb_app_out.c:128: }
   0284                     819 00107$:
                            820 ;	../fb_app_out.c:129: zftyp=((eeprom[FUNCTYP])>>((objno-8)*2)) & 0x03;	// Typ der Zusatzfunktion
   0284 C0 03               821 	push	ar3
   0286 90 1D ED            822 	mov	dptr,#(_eeprom + 0x00ed)
   0289 E4                  823 	clr	a
   028A 93                  824 	movc	a,@a+dptr
   028B FC                  825 	mov	r4,a
   028C EF                  826 	mov	a,r7
   028D 24 F8               827 	add	a,#0xF8
   028F FA                  828 	mov	r2,a
   0290 ED                  829 	mov	a,r5
   0291 34 FF               830 	addc	a,#0xFF
   0293 CA                  831 	xch	a,r2
   0294 25 E0               832 	add	a,acc
   0296 CA                  833 	xch	a,r2
   0297 33                  834 	rlc	a
   0298 FB                  835 	mov	r3,a
   0299 8A F0               836 	mov	b,r2
   029B 05 F0               837 	inc	b
   029D EC                  838 	mov	a,r4
   029E 80 02               839 	sjmp	00195$
   02A0                     840 00194$:
   02A0 C3                  841 	clr	c
   02A1 13                  842 	rrc	a
   02A2                     843 00195$:
   02A2 D5 F0 FB            844 	djnz	b,00194$
   02A5 FC                  845 	mov	r4,a
   02A6 74 03               846 	mov	a,#0x03
   02A8 5C                  847 	anl	a,r4
   02A9 FF                  848 	mov	r7,a
                            849 ;	../fb_app_out.c:130: zf_bitpattern=0x01<<(zfout-1);
   02AA A8 08               850 	mov	r0,_bp
   02AC 08                  851 	inc	r0
   02AD 08                  852 	inc	r0
   02AE E6                  853 	mov	a,@r0
   02AF 14                  854 	dec	a
   02B0 FC                  855 	mov	r4,a
   02B1 8C F0               856 	mov	b,r4
   02B3 05 F0               857 	inc	b
   02B5 74 01               858 	mov	a,#0x01
   02B7 80 02               859 	sjmp	00198$
   02B9                     860 00196$:
   02B9 25 E0               861 	add	a,acc
   02BB                     862 00198$:
   02BB D5 F0 FB            863 	djnz	b,00196$
   02BE FA                  864 	mov	r2,a
                            865 ;	../fb_app_out.c:132: switch (zftyp)
   02BF BF 00 04            866 	cjne	r7,#0x00,00199$
   02C2 D0 03               867 	pop	ar3
   02C4 80 0A               868 	sjmp	00108$
   02C6                     869 00199$:
   02C6 D0 03               870 	pop	ar3
   02C8 BF 01 02            871 	cjne	r7,#0x01,00200$
   02CB 80 4D               872 	sjmp	00112$
   02CD                     873 00200$:
   02CD 02 03 92            874 	ljmp	00147$
                            875 ;	../fb_app_out.c:134: case 0x00:			// Verknüpfung
   02D0                     876 00108$:
                            877 ;	../fb_app_out.c:135: switch (telegramm[7])
   02D0 AC 4D               878 	mov	r4,(_telegramm + 0x0007)
   02D2 BC 80 02            879 	cjne	r4,#0x80,00201$
   02D5 80 05               880 	sjmp	00109$
   02D7                     881 00201$:
                            882 ;	../fb_app_out.c:137: case 0x80:
   02D7 BC 81 0D            883 	cjne	r4,#0x81,00111$
   02DA 80 08               884 	sjmp	00110$
   02DC                     885 00109$:
                            886 ;	../fb_app_out.c:138: logicstate=logicstate&(0xFF-zf_bitpattern);
   02DC 74 FF               887 	mov	a,#0xFF
   02DE C3                  888 	clr	c
   02DF 9A                  889 	subb	a,r2
   02E0 52 3D               890 	anl	_logicstate,a
                            891 ;	../fb_app_out.c:139: break;
                            892 ;	../fb_app_out.c:140: case 0x81:
   02E2 80 03               893 	sjmp	00111$
   02E4                     894 00110$:
                            895 ;	../fb_app_out.c:141: logicstate=logicstate|zf_bitpattern;
   02E4 EA                  896 	mov	a,r2
   02E5 42 3D               897 	orl	_logicstate,a
                            898 ;	../fb_app_out.c:142: }
   02E7                     899 00111$:
                            900 ;	../fb_app_out.c:143: object_schalten(zfout-1, read_obj_value(zfout-1));	//telegramm[7]&0x01);
   02E7 C0 06               901 	push	ar6
   02E9 A8 08               902 	mov	r0,_bp
   02EB 08                  903 	inc	r0
   02EC 08                  904 	inc	r0
   02ED E6                  905 	mov	a,@r0
   02EE 14                  906 	dec	a
   02EF FC                  907 	mov	r4,a
   02F0 F5 82               908 	mov	dpl,a
   02F2 C0 04               909 	push	ar4
   02F4 12 03 DB            910 	lcall	_read_obj_value
   02F7 AA 82               911 	mov	r2,dpl
   02F9 AD 83               912 	mov	r5,dph
   02FB AE F0               913 	mov	r6,b
   02FD FF                  914 	mov	r7,a
   02FE D0 04               915 	pop	ar4
   0300 EA                  916 	mov	a,r2
   0301 4D                  917 	orl	a,r5
   0302 4E                  918 	orl	a,r6
   0303 4F                  919 	orl	a,r7
   0304 24 FF               920 	add	a,#0xff
   0306 92 18               921 	mov  b0,c
   0308 92 F0               922 	mov	b[0],c
   030A C0 06               923 	push	ar6
   030C 85 F0 23            924 	mov	bits,b
   030F 8C 82               925 	mov	dpl,r4
   0311 12 05 3E            926 	lcall	_object_schalten
   0314 D0 06               927 	pop	ar6
                            928 ;	../fb_app_out.c:144: break;
   0316 D0 06               929 	pop	ar6
                            930 ;	../fb_app_out.c:145: case 0x01:			// Sperren
   0318 80 78               931 	sjmp	00147$
   031A                     932 00112$:
                            933 ;	../fb_app_out.c:146: block_polarity=eeprom[BLOCKPOL] & obj_bitpattern;
   031A 90 1D F1            934 	mov	dptr,#(_eeprom + 0x00f1)
   031D E4                  935 	clr	a
   031E 93                  936 	movc	a,@a+dptr
   031F 52 03               937 	anl	ar3,a
   0321 8B 07               938 	mov	ar7,r3
                            939 ;	../fb_app_out.c:147: if (((telegramm[7]==0x80) && (block_polarity==0)) ||
   0323 AD 4D               940 	mov	r5,(_telegramm + 0x0007)
   0325 E4                  941 	clr	a
   0326 BD 80 01            942 	cjne	r5,#0x80,00203$
   0329 04                  943 	inc	a
   032A                     944 00203$:
   032A FC                  945 	mov	r4,a
   032B 60 03               946 	jz	00123$
   032D EF                  947 	mov	a,r7
   032E 60 06               948 	jz	00119$
   0330                     949 00123$:
                            950 ;	../fb_app_out.c:148: ((telegramm[7]==0x81) && (block_polarity!=0)))
   0330 BD 81 27            951 	cjne	r5,#0x81,00120$
   0333 EF                  952 	mov	a,r7
   0334 60 24               953 	jz	00120$
   0336                     954 00119$:
                            955 ;	../fb_app_out.c:150: if((blocked & zf_bitpattern)!=0) {	// nur wenn Sperre aktiv war
   0336 EA                  956 	mov	a,r2
   0337 55 3C               957 	anl	a,_blocked
   0339 60 1F               958 	jz	00120$
                            959 ;	../fb_app_out.c:151: blocked=blocked&(0xFF-zf_bitpattern);
   033B 74 FF               960 	mov	a,#0xFF
   033D C3                  961 	clr	c
   033E 9A                  962 	subb	a,r2
   033F 52 3C               963 	anl	_blocked,a
                            964 ;	../fb_app_out.c:152: if (blockend==0x01) portbuffer=portbuffer&(0xFF-zf_bitpattern);	// Bei Ende der Sperrung ausschalten
   0341 E5 08               965 	mov	a,_bp
   0343 24 05               966 	add	a,#0x05
   0345 F8                  967 	mov	r0,a
   0346 B6 01 06            968 	cjne	@r0,#0x01,00114$
   0349 74 FF               969 	mov	a,#0xFF
   034B C3                  970 	clr	c
   034C 9A                  971 	subb	a,r2
   034D 52 3A               972 	anl	_portbuffer,a
   034F                     973 00114$:
                            974 ;	../fb_app_out.c:153: if (blockend==0x02) portbuffer=portbuffer|zf_bitpattern;		// Bei Ende der Sperrung einschalten
   034F E5 08               975 	mov	a,_bp
   0351 24 05               976 	add	a,#0x05
   0353 F8                  977 	mov	r0,a
   0354 B6 02 03            978 	cjne	@r0,#0x02,00120$
   0357 EA                  979 	mov	a,r2
   0358 42 3A               980 	orl	_portbuffer,a
   035A                     981 00120$:
                            982 ;	../fb_app_out.c:157: if (((telegramm[7]==0x81) && (block_polarity==0)) ||
   035A BD 81 03            983 	cjne	r5,#0x81,00134$
   035D EF                  984 	mov	a,r7
   035E 60 06               985 	jz	00130$
   0360                     986 00134$:
                            987 ;	../fb_app_out.c:158: ((telegramm[7]==0x80) && (block_polarity!=0)))
   0360 EC                  988 	mov	a,r4
   0361 60 2F               989 	jz	00147$
   0363 EF                  990 	mov	a,r7
   0364 60 2C               991 	jz	00147$
   0366                     992 00130$:
                            993 ;	../fb_app_out.c:160: if((blocked & zf_bitpattern)==0) {	// nur wenn Sperre inaktiv war
   0366 EA                  994 	mov	a,r2
   0367 55 3C               995 	anl	a,_blocked
   0369 70 27               996 	jnz	00147$
                            997 ;	../fb_app_out.c:161: blocked=blocked|zf_bitpattern;
   036B EA                  998 	mov	a,r2
   036C 42 3C               999 	orl	_blocked,a
                           1000 ;	../fb_app_out.c:162: if (blockstart==0x01) portbuffer=portbuffer&(0xFF-zf_bitpattern);	// Bei Beginn der Sperrung ausschalten
   036E E5 08              1001 	mov	a,_bp
   0370 24 04              1002 	add	a,#0x04
   0372 F8                 1003 	mov	r0,a
   0373 B6 01 06           1004 	cjne	@r0,#0x01,00125$
   0376 74 FF              1005 	mov	a,#0xFF
   0378 C3                 1006 	clr	c
   0379 9A                 1007 	subb	a,r2
   037A 52 3A              1008 	anl	_portbuffer,a
   037C                    1009 00125$:
                           1010 ;	../fb_app_out.c:163: if (blockstart==0x02) portbuffer=portbuffer|zf_bitpattern;		// Bei Beginn der Sperrung einschalten
   037C E5 08              1011 	mov	a,_bp
   037E 24 04              1012 	add	a,#0x04
   0380 F8                 1013 	mov	r0,a
   0381 B6 02 03           1014 	cjne	@r0,#0x02,00127$
   0384 EA                 1015 	mov	a,r2
   0385 42 3A              1016 	orl	_portbuffer,a
   0387                    1017 00127$:
                           1018 ;	../fb_app_out.c:164: timercnt[zfout-1]=0;//delrec[(zfout-1)*4]=0;	// ggf. Eintrag für Schaltverzögerung löschen
   0387 A8 08              1019 	mov	r0,_bp
   0389 08                 1020 	inc	r0
   038A 08                 1021 	inc	r0
   038B E6                 1022 	mov	a,@r0
   038C 14                 1023 	dec	a
   038D 24 2C              1024 	add	a,#_timercnt
   038F F8                 1025 	mov	r0,a
   0390 76 00              1026 	mov	@r0,#0x00
                           1027 ;	../fb_app_out.c:170: }
   0392                    1028 00147$:
                           1029 ;	../fb_app_out.c:89: for(n=0;n<assno;n++)				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   0392 A8 08              1030 	mov	r0,_bp
   0394 08                 1031 	inc	r0
   0395 06                 1032 	inc	@r0
   0396 02 00 B9           1033 	ljmp	00145$
   0399                    1034 00148$:
                           1035 ;	../fb_app_out.c:174: if (portbuffer != oldportbuffer) portchanged=1;//post für port_schalten hinterlegen
   0399 E5 3B              1036 	mov	a,_oldportbuffer
   039B B5 3A 02           1037 	cjne	a,_portbuffer,00225$
   039E 80 02              1038 	sjmp	00149$
   03A0                    1039 00225$:
   03A0 D2 01              1040 	setb	_portchanged
   03A2                    1041 00149$:
   03A2 85 08 81           1042 	mov	sp,_bp
   03A5 D0 08              1043 	pop	_bp
   03A7 22                 1044 	ret
                           1045 ;------------------------------------------------------------
                           1046 ;Allocation info for local variables in function 'read_value_req'
                           1047 ;------------------------------------------------------------
                           1048 ;objno                     Allocated to registers r7 
                           1049 ;objflags                  Allocated to registers r6 
                           1050 ;objvalue                  Allocated to registers 
                           1051 ;------------------------------------------------------------
                           1052 ;	../fb_app_out.c:189: void read_value_req(void)
                           1053 ;	-----------------------------------------
                           1054 ;	 function read_value_req
                           1055 ;	-----------------------------------------
   03A8                    1056 _read_value_req:
                           1057 ;	../fb_app_out.c:194: objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
   03A8 85 49 82           1058 	mov	dpl,(_telegramm + 0x0003)
   03AB C0 4A              1059 	push	(_telegramm + 0x0004)
   03AD 12 17 84           1060 	lcall	_find_first_objno
   03B0 AF 82              1061 	mov	r7,dpl
   03B2 15 81              1062 	dec	sp
                           1063 ;	../fb_app_out.c:195: if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
   03B4 BF FF 01           1064 	cjne	r7,#0xFF,00109$
   03B7 22                 1065 	ret
   03B8                    1066 00109$:
                           1067 ;	../fb_app_out.c:197: objvalue=read_obj_value(objno);		// Objektwert aus USER-RAM lesen (Standard Einstellung)
   03B8 8F 82              1068 	mov	dpl,r7
   03BA C0 07              1069 	push	ar7
   03BC 12 03 DB           1070 	lcall	_read_obj_value
   03BF D0 07              1071 	pop	ar7
                           1072 ;	../fb_app_out.c:199: objflags=read_objflags(objno);		// Objekt Flags lesen
   03C1 8F 82              1073 	mov	dpl,r7
   03C3 C0 07              1074 	push	ar7
   03C5 12 17 6C           1075 	lcall	_read_objflags
   03C8 AE 82              1076 	mov	r6,dpl
   03CA D0 07              1077 	pop	ar7
                           1078 ;	../fb_app_out.c:201: if((objflags&0x0C)==0x0C) send_obj_value(objno+64); //send_value(0,objno,objvalue);
   03CC 53 06 0C           1079 	anl	ar6,#0x0C
   03CF BE 0C 08           1080 	cjne	r6,#0x0C,00105$
   03D2 74 40              1081 	mov	a,#0x40
   03D4 2F                 1082 	add	a,r7
   03D5 F5 82              1083 	mov	dpl,a
   03D7 02 15 29           1084 	ljmp	_send_obj_value
   03DA                    1085 00105$:
   03DA 22                 1086 	ret
                           1087 ;------------------------------------------------------------
                           1088 ;Allocation info for local variables in function 'read_obj_value'
                           1089 ;------------------------------------------------------------
                           1090 ;objno                     Allocated to registers r7 
                           1091 ;ret_val                   Allocated to registers r6 
                           1092 ;------------------------------------------------------------
                           1093 ;	../fb_app_out.c:206: unsigned long read_obj_value(unsigned char objno) 	// gibt den Wert eines Objektes zurueck
                           1094 ;	-----------------------------------------
                           1095 ;	 function read_obj_value
                           1096 ;	-----------------------------------------
   03DB                    1097 _read_obj_value:
   03DB AF 82              1098 	mov	r7,dpl
                           1099 ;	../fb_app_out.c:208: unsigned char ret_val=0;
   03DD 7E 00              1100 	mov	r6,#0x00
                           1101 ;	../fb_app_out.c:210: if(objno<8) {
   03DF BF 08 00           1102 	cjne	r7,#0x08,00123$
   03E2                    1103 00123$:
   03E2 E4                 1104 	clr	a
   03E3 33                 1105 	rlc	a
   03E4 FD                 1106 	mov	r5,a
   03E5 60 27              1107 	jz	00104$
                           1108 ;	../fb_app_out.c:211: if(out_state&(1<<objno)) ret_val=1;
   03E7 C0 06              1109 	push	ar6
   03E9 8F F0              1110 	mov	b,r7
   03EB 05 F0              1111 	inc	b
   03ED 7B 01              1112 	mov	r3,#0x01
   03EF 7C 00              1113 	mov	r4,#0x00
   03F1 80 06              1114 	sjmp	00126$
   03F3                    1115 00125$:
   03F3 EB                 1116 	mov	a,r3
   03F4 2B                 1117 	add	a,r3
   03F5 FB                 1118 	mov	r3,a
   03F6 EC                 1119 	mov	a,r4
   03F7 33                 1120 	rlc	a
   03F8 FC                 1121 	mov	r4,a
   03F9                    1122 00126$:
   03F9 D5 F0 F7           1123 	djnz	b,00125$
   03FC AA 37              1124 	mov	r2,_out_state
   03FE 7E 00              1125 	mov	r6,#0x00
   0400 EA                 1126 	mov	a,r2
   0401 52 03              1127 	anl	ar3,a
   0403 EE                 1128 	mov	a,r6
   0404 52 04              1129 	anl	ar4,a
   0406 D0 06              1130 	pop	ar6
   0408 EB                 1131 	mov	a,r3
   0409 4C                 1132 	orl	a,r4
   040A 60 02              1133 	jz	00104$
   040C 7E 01              1134 	mov	r6,#0x01
   040E                    1135 00104$:
                           1136 ;	../fb_app_out.c:213: if(objno>=8 && objno<12) {
   040E ED                 1137 	mov	a,r5
   040F 70 33              1138 	jnz	00108$
   0411 BF 0C 00           1139 	cjne	r7,#0x0C,00129$
   0414                    1140 00129$:
   0414 50 2E              1141 	jnc	00108$
                           1142 ;	../fb_app_out.c:214: if(zf_state&(1<<(objno-8))) ret_val=1;
   0416 8F 04              1143 	mov	ar4,r7
   0418 7D 00              1144 	mov	r5,#0x00
   041A EC                 1145 	mov	a,r4
   041B 24 F8              1146 	add	a,#0xF8
   041D FC                 1147 	mov	r4,a
   041E ED                 1148 	mov	a,r5
   041F 34 FF              1149 	addc	a,#0xFF
   0421 8C F0              1150 	mov	b,r4
   0423 05 F0              1151 	inc	b
   0425 7C 01              1152 	mov	r4,#0x01
   0427 7D 00              1153 	mov	r5,#0x00
   0429 80 06              1154 	sjmp	00132$
   042B                    1155 00131$:
   042B EC                 1156 	mov	a,r4
   042C 2C                 1157 	add	a,r4
   042D FC                 1158 	mov	r4,a
   042E ED                 1159 	mov	a,r5
   042F 33                 1160 	rlc	a
   0430 FD                 1161 	mov	r5,a
   0431                    1162 00132$:
   0431 D5 F0 F7           1163 	djnz	b,00131$
   0434 AA 39              1164 	mov	r2,_zf_state
   0436 7B 00              1165 	mov	r3,#0x00
   0438 EA                 1166 	mov	a,r2
   0439 52 04              1167 	anl	ar4,a
   043B EB                 1168 	mov	a,r3
   043C 52 05              1169 	anl	ar5,a
   043E EC                 1170 	mov	a,r4
   043F 4D                 1171 	orl	a,r5
   0440 60 02              1172 	jz	00108$
   0442 7E 01              1173 	mov	r6,#0x01
   0444                    1174 00108$:
                           1175 ;	../fb_app_out.c:216: if(objno>=12) {
   0444 BF 0C 00           1176 	cjne	r7,#0x0C,00134$
   0447                    1177 00134$:
   0447 40 2C              1178 	jc	00113$
                           1179 ;	../fb_app_out.c:217: if(rm_state&(1<<(objno-12))) ret_val=1;
   0449 7D 00              1180 	mov	r5,#0x00
   044B EF                 1181 	mov	a,r7
   044C 24 F4              1182 	add	a,#0xF4
   044E FF                 1183 	mov	r7,a
   044F ED                 1184 	mov	a,r5
   0450 34 FF              1185 	addc	a,#0xFF
   0452 8F F0              1186 	mov	b,r7
   0454 05 F0              1187 	inc	b
   0456 7F 01              1188 	mov	r7,#0x01
   0458 7D 00              1189 	mov	r5,#0x00
   045A 80 06              1190 	sjmp	00137$
   045C                    1191 00136$:
   045C EF                 1192 	mov	a,r7
   045D 2F                 1193 	add	a,r7
   045E FF                 1194 	mov	r7,a
   045F ED                 1195 	mov	a,r5
   0460 33                 1196 	rlc	a
   0461 FD                 1197 	mov	r5,a
   0462                    1198 00137$:
   0462 D5 F0 F7           1199 	djnz	b,00136$
   0465 AB 38              1200 	mov	r3,_rm_state
   0467 7C 00              1201 	mov	r4,#0x00
   0469 EB                 1202 	mov	a,r3
   046A 52 07              1203 	anl	ar7,a
   046C EC                 1204 	mov	a,r4
   046D 52 05              1205 	anl	ar5,a
   046F EF                 1206 	mov	a,r7
   0470 4D                 1207 	orl	a,r5
   0471 60 02              1208 	jz	00113$
   0473 7E 01              1209 	mov	r6,#0x01
   0475                    1210 00113$:
                           1211 ;	../fb_app_out.c:219: return(ret_val);
   0475 7F 00              1212 	mov	r7,#0x00
   0477 7D 00              1213 	mov	r5,#0x00
   0479 7C 00              1214 	mov	r4,#0x00
   047B 8E 82              1215 	mov	dpl,r6
   047D 8F 83              1216 	mov	dph,r7
   047F 8D F0              1217 	mov	b,r5
   0481 EC                 1218 	mov	a,r4
   0482 22                 1219 	ret
                           1220 ;------------------------------------------------------------
                           1221 ;Allocation info for local variables in function 'write_obj_value'
                           1222 ;------------------------------------------------------------
                           1223 ;objvalue                  Allocated to stack - _bp -4
                           1224 ;objno                     Allocated to registers r7 
                           1225 ;------------------------------------------------------------
                           1226 ;	../fb_app_out.c:223: void write_obj_value(unsigned char objno,unsigned int objvalue)	// schreibt den aktuellen Wert eines Objektes ins 'USERRAM'
                           1227 ;	-----------------------------------------
                           1228 ;	 function write_obj_value
                           1229 ;	-----------------------------------------
   0483                    1230 _write_obj_value:
   0483 C0 08              1231 	push	_bp
   0485 85 81 08           1232 	mov	_bp,sp
   0488 AF 82              1233 	mov	r7,dpl
                           1234 ;	../fb_app_out.c:225: if(objno<8) {
   048A BF 08 00           1235 	cjne	r7,#0x08,00126$
   048D                    1236 00126$:
   048D E4                 1237 	clr	a
   048E 33                 1238 	rlc	a
   048F FE                 1239 	mov	r6,a
   0490 60 30              1240 	jz	00105$
                           1241 ;	../fb_app_out.c:226: if(objvalue==0) out_state&=0xFF-(1<<objno);
   0492 E5 08              1242 	mov	a,_bp
   0494 24 FC              1243 	add	a,#0xfc
   0496 F8                 1244 	mov	r0,a
   0497 E6                 1245 	mov	a,@r0
   0498 08                 1246 	inc	r0
   0499 46                 1247 	orl	a,@r0
   049A 70 16              1248 	jnz	00102$
   049C 8F F0              1249 	mov	b,r7
   049E 05 F0              1250 	inc	b
   04A0 74 01              1251 	mov	a,#0x01
   04A2 80 02              1252 	sjmp	00131$
   04A4                    1253 00129$:
   04A4 25 E0              1254 	add	a,acc
   04A6                    1255 00131$:
   04A6 D5 F0 FB           1256 	djnz	b,00129$
   04A9 FD                 1257 	mov	r5,a
   04AA 74 FF              1258 	mov	a,#0xFF
   04AC C3                 1259 	clr	c
   04AD 9D                 1260 	subb	a,r5
   04AE 52 37              1261 	anl	_out_state,a
   04B0 80 10              1262 	sjmp	00105$
   04B2                    1263 00102$:
                           1264 ;	../fb_app_out.c:227: else out_state|=1<<objno;
   04B2 8F F0              1265 	mov	b,r7
   04B4 05 F0              1266 	inc	b
   04B6 74 01              1267 	mov	a,#0x01
   04B8 80 02              1268 	sjmp	00134$
   04BA                    1269 00132$:
   04BA 25 E0              1270 	add	a,acc
   04BC                    1271 00134$:
   04BC D5 F0 FB           1272 	djnz	b,00132$
   04BF FD                 1273 	mov	r5,a
   04C0 42 37              1274 	orl	_out_state,a
   04C2                    1275 00105$:
                           1276 ;	../fb_app_out.c:229: if(objno>=8 && objno<12) {
   04C2 EE                 1277 	mov	a,r6
   04C3 70 3B              1278 	jnz	00110$
   04C5 BF 0C 00           1279 	cjne	r7,#0x0C,00136$
   04C8                    1280 00136$:
   04C8 50 36              1281 	jnc	00110$
                           1282 ;	../fb_app_out.c:230: if(objvalue==0) zf_state&=0x0F-(1<<(objno-8));
   04CA E5 08              1283 	mov	a,_bp
   04CC 24 FC              1284 	add	a,#0xfc
   04CE F8                 1285 	mov	r0,a
   04CF E6                 1286 	mov	a,@r0
   04D0 08                 1287 	inc	r0
   04D1 46                 1288 	orl	a,@r0
   04D2 70 19              1289 	jnz	00107$
   04D4 EF                 1290 	mov	a,r7
   04D5 24 F8              1291 	add	a,#0xF8
   04D7 F5 F0              1292 	mov	b,a
   04D9 05 F0              1293 	inc	b
   04DB 74 01              1294 	mov	a,#0x01
   04DD 80 02              1295 	sjmp	00141$
   04DF                    1296 00139$:
   04DF 25 E0              1297 	add	a,acc
   04E1                    1298 00141$:
   04E1 D5 F0 FB           1299 	djnz	b,00139$
   04E4 FE                 1300 	mov	r6,a
   04E5 74 0F              1301 	mov	a,#0x0F
   04E7 C3                 1302 	clr	c
   04E8 9E                 1303 	subb	a,r6
   04E9 52 39              1304 	anl	_zf_state,a
   04EB 80 13              1305 	sjmp	00110$
   04ED                    1306 00107$:
                           1307 ;	../fb_app_out.c:231: else zf_state|=1<<(objno-8);
   04ED EF                 1308 	mov	a,r7
   04EE 24 F8              1309 	add	a,#0xF8
   04F0 F5 F0              1310 	mov	b,a
   04F2 05 F0              1311 	inc	b
   04F4 74 01              1312 	mov	a,#0x01
   04F6 80 02              1313 	sjmp	00144$
   04F8                    1314 00142$:
   04F8 25 E0              1315 	add	a,acc
   04FA                    1316 00144$:
   04FA D5 F0 FB           1317 	djnz	b,00142$
   04FD FE                 1318 	mov	r6,a
   04FE 42 39              1319 	orl	_zf_state,a
   0500                    1320 00110$:
                           1321 ;	../fb_app_out.c:233: if(objno>=12) {
   0500 BF 0C 00           1322 	cjne	r7,#0x0C,00145$
   0503                    1323 00145$:
   0503 40 36              1324 	jc	00117$
                           1325 ;	../fb_app_out.c:234: if(objvalue==0) rm_state&=0xFF-(1<<(objno-12));
   0505 E5 08              1326 	mov	a,_bp
   0507 24 FC              1327 	add	a,#0xfc
   0509 F8                 1328 	mov	r0,a
   050A E6                 1329 	mov	a,@r0
   050B 08                 1330 	inc	r0
   050C 46                 1331 	orl	a,@r0
   050D 70 19              1332 	jnz	00113$
   050F EF                 1333 	mov	a,r7
   0510 24 F4              1334 	add	a,#0xF4
   0512 F5 F0              1335 	mov	b,a
   0514 05 F0              1336 	inc	b
   0516 74 01              1337 	mov	a,#0x01
   0518 80 02              1338 	sjmp	00150$
   051A                    1339 00148$:
   051A 25 E0              1340 	add	a,acc
   051C                    1341 00150$:
   051C D5 F0 FB           1342 	djnz	b,00148$
   051F FE                 1343 	mov	r6,a
   0520 74 FF              1344 	mov	a,#0xFF
   0522 C3                 1345 	clr	c
   0523 9E                 1346 	subb	a,r6
   0524 52 38              1347 	anl	_rm_state,a
   0526 80 13              1348 	sjmp	00117$
   0528                    1349 00113$:
                           1350 ;	../fb_app_out.c:235: else rm_state|=1<<(objno-12);
   0528 EF                 1351 	mov	a,r7
   0529 24 F4              1352 	add	a,#0xF4
   052B F5 F0              1353 	mov	b,a
   052D 05 F0              1354 	inc	b
   052F 74 01              1355 	mov	a,#0x01
   0531 80 02              1356 	sjmp	00153$
   0533                    1357 00151$:
   0533 25 E0              1358 	add	a,acc
   0535                    1359 00153$:
   0535 D5 F0 FB           1360 	djnz	b,00151$
   0538 FF                 1361 	mov	r7,a
   0539 42 38              1362 	orl	_rm_state,a
   053B                    1363 00117$:
   053B D0 08              1364 	pop	_bp
   053D 22                 1365 	ret
                           1366 ;------------------------------------------------------------
                           1367 ;Allocation info for local variables in function 'object_schalten'
                           1368 ;------------------------------------------------------------
                           1369 ;objstate                  Allocated to registers b0 
                           1370 ;objno                     Allocated to registers r7 
                           1371 ;delay_base                Allocated to registers r6 
                           1372 ;delay_state               Allocated to registers r4 
                           1373 ;logicfunc                 Allocated to stack - _bp +1
                           1374 ;zfno                      Allocated to stack - _bp +2
                           1375 ;delay_onoff               Allocated to registers r5 
                           1376 ;off_disable               Allocated to registers b1 
                           1377 ;------------------------------------------------------------
                           1378 ;	../fb_app_out.c:244: void object_schalten(unsigned char objno, __bit objstate)	// Schaltet einen Ausgang gemäß objstate und den zugörigen Parametern
                           1379 ;	-----------------------------------------
                           1380 ;	 function object_schalten
                           1381 ;	-----------------------------------------
   053E                    1382 _object_schalten:
   053E C0 08              1383 	push	_bp
   0540 85 81 08           1384 	mov	_bp,sp
   0543 05 81              1385 	inc	sp
   0545 05 81              1386 	inc	sp
   0547 AF 82              1387 	mov	r7,dpl
                           1388 ;	../fb_app_out.c:253: off_disable=((eeprom[OFFDISABLE]>>objno)&0x01);	// nur ausschalten wenn AUS-Tete nicht ignoriert werden soll
   0549 90 1D EB           1389 	mov	dptr,#(_eeprom + 0x00eb)
   054C E4                 1390 	clr	a
   054D 93                 1391 	movc	a,@a+dptr
   054E FE                 1392 	mov	r6,a
   054F 8F F0              1393 	mov	b,r7
   0551 05 F0              1394 	inc	b
   0553 EE                 1395 	mov	a,r6
   0554 80 02              1396 	sjmp	00189$
   0556                    1397 00188$:
   0556 C3                 1398 	clr	c
   0557 13                 1399 	rrc	a
   0558                    1400 00189$:
   0558 D5 F0 FB           1401 	djnz	b,00188$
   055B 54 01              1402 	anl	a,#0x01
   055D FE                 1403 	mov	r6,a
   055E 24 FF              1404 	add	a,#0xff
   0560 92 19              1405 	mov	b1,c
                           1406 ;	../fb_app_out.c:254: if ((!objstate && !off_disable) || objstate) {
   0562 20 18 03           1407 	jb	b0,00158$
   0565 30 19 06           1408 	jnb	b1,00155$
   0568                    1409 00158$:
   0568 20 18 03           1410 	jb	b0,00192$
   056B 02 08 AF           1411 	ljmp	00159$
   056E                    1412 00192$:
   056E                    1413 00155$:
                           1414 ;	../fb_app_out.c:255: write_obj_value(objno,objstate);		// Objektwert speichern
   056E A2 18              1415 	mov	c,b0
   0570 E4                 1416 	clr	a
   0571 33                 1417 	rlc	a
   0572 FD                 1418 	mov	r5,a
   0573 7E 00              1419 	mov	r6,#0x00
   0575 C0 07              1420 	push	ar7
   0577 C0 23              1421 	push	bits
   0579 C0 05              1422 	push	ar5
   057B C0 06              1423 	push	ar6
   057D 8F 82              1424 	mov	dpl,r7
   057F 12 04 83           1425 	lcall	_write_obj_value
   0582 15 81              1426 	dec	sp
   0584 15 81              1427 	dec	sp
   0586 D0 23              1428 	pop	bits
   0588 D0 07              1429 	pop	ar7
                           1430 ;	../fb_app_out.c:258: zfno=0;
   058A A8 08              1431 	mov	r0,_bp
   058C 08                 1432 	inc	r0
   058D 08                 1433 	inc	r0
   058E 76 00              1434 	mov	@r0,#0x00
                           1435 ;	../fb_app_out.c:259: logicfunc=0;
   0590 A8 08              1436 	mov	r0,_bp
   0592 08                 1437 	inc	r0
   0593 76 00              1438 	mov	@r0,#0x00
                           1439 ;	../fb_app_out.c:260: if((eeprom[FUNCASS]&0x0F)==(objno+1)) zfno=1;
   0595 90 1D D8           1440 	mov	dptr,#(_eeprom + 0x00d8)
   0598 E4                 1441 	clr	a
   0599 93                 1442 	movc	a,@a+dptr
   059A FC                 1443 	mov	r4,a
   059B 53 04 0F           1444 	anl	ar4,#0x0F
   059E 8F 02              1445 	mov	ar2,r7
   05A0 7B 00              1446 	mov	r3,#0x00
   05A2 C0 07              1447 	push	ar7
   05A4 74 01              1448 	mov	a,#0x01
   05A6 2A                 1449 	add	a,r2
   05A7 FE                 1450 	mov	r6,a
   05A8 E4                 1451 	clr	a
   05A9 3B                 1452 	addc	a,r3
   05AA FF                 1453 	mov	r7,a
   05AB 7D 00              1454 	mov	r5,#0x00
   05AD EC                 1455 	mov	a,r4
   05AE B5 06 06           1456 	cjne	a,ar6,00193$
   05B1 ED                 1457 	mov	a,r5
   05B2 B5 07 02           1458 	cjne	a,ar7,00193$
   05B5 80 04              1459 	sjmp	00194$
   05B7                    1460 00193$:
   05B7 D0 07              1461 	pop	ar7
   05B9 80 08              1462 	sjmp	00102$
   05BB                    1463 00194$:
   05BB D0 07              1464 	pop	ar7
   05BD A8 08              1465 	mov	r0,_bp
   05BF 08                 1466 	inc	r0
   05C0 08                 1467 	inc	r0
   05C1 76 01              1468 	mov	@r0,#0x01
   05C3                    1469 00102$:
                           1470 ;	../fb_app_out.c:261: if(((eeprom[FUNCASS]&0xF0)>>4)==(objno+1)) zfno=2;
   05C3 C0 07              1471 	push	ar7
   05C5 90 1D D8           1472 	mov	dptr,#(_eeprom + 0x00d8)
   05C8 E4                 1473 	clr	a
   05C9 93                 1474 	movc	a,@a+dptr
   05CA 54 F0              1475 	anl	a,#0xF0
   05CC C4                 1476 	swap	a
   05CD 54 0F              1477 	anl	a,#0x0F
   05CF FE                 1478 	mov	r6,a
   05D0 74 01              1479 	mov	a,#0x01
   05D2 2A                 1480 	add	a,r2
   05D3 FC                 1481 	mov	r4,a
   05D4 E4                 1482 	clr	a
   05D5 3B                 1483 	addc	a,r3
   05D6 FD                 1484 	mov	r5,a
   05D7 7F 00              1485 	mov	r7,#0x00
   05D9 EE                 1486 	mov	a,r6
   05DA B5 04 06           1487 	cjne	a,ar4,00195$
   05DD EF                 1488 	mov	a,r7
   05DE B5 05 02           1489 	cjne	a,ar5,00195$
   05E1 80 04              1490 	sjmp	00196$
   05E3                    1491 00195$:
   05E3 D0 07              1492 	pop	ar7
   05E5 80 08              1493 	sjmp	00104$
   05E7                    1494 00196$:
   05E7 D0 07              1495 	pop	ar7
   05E9 A8 08              1496 	mov	r0,_bp
   05EB 08                 1497 	inc	r0
   05EC 08                 1498 	inc	r0
   05ED 76 02              1499 	mov	@r0,#0x02
   05EF                    1500 00104$:
                           1501 ;	../fb_app_out.c:262: if((eeprom[FUNCASS+1]&0x0F)==(objno+1)) zfno=3;
   05EF C0 07              1502 	push	ar7
   05F1 90 1D D9           1503 	mov	dptr,#(_eeprom + 0x00d9)
   05F4 E4                 1504 	clr	a
   05F5 93                 1505 	movc	a,@a+dptr
   05F6 FE                 1506 	mov	r6,a
   05F7 53 06 0F           1507 	anl	ar6,#0x0F
   05FA 74 01              1508 	mov	a,#0x01
   05FC 2A                 1509 	add	a,r2
   05FD FC                 1510 	mov	r4,a
   05FE E4                 1511 	clr	a
   05FF 3B                 1512 	addc	a,r3
   0600 FD                 1513 	mov	r5,a
   0601 7F 00              1514 	mov	r7,#0x00
   0603 EE                 1515 	mov	a,r6
   0604 B5 04 06           1516 	cjne	a,ar4,00197$
   0607 EF                 1517 	mov	a,r7
   0608 B5 05 02           1518 	cjne	a,ar5,00197$
   060B 80 04              1519 	sjmp	00198$
   060D                    1520 00197$:
   060D D0 07              1521 	pop	ar7
   060F 80 08              1522 	sjmp	00106$
   0611                    1523 00198$:
   0611 D0 07              1524 	pop	ar7
   0613 A8 08              1525 	mov	r0,_bp
   0615 08                 1526 	inc	r0
   0616 08                 1527 	inc	r0
   0617 76 03              1528 	mov	@r0,#0x03
   0619                    1529 00106$:
                           1530 ;	../fb_app_out.c:263: if(((eeprom[FUNCASS+1]&0xF0)>>4)==(objno+1)) zfno=4;
   0619 C0 07              1531 	push	ar7
   061B 90 1D D9           1532 	mov	dptr,#(_eeprom + 0x00d9)
   061E E4                 1533 	clr	a
   061F 93                 1534 	movc	a,@a+dptr
   0620 54 F0              1535 	anl	a,#0xF0
   0622 C4                 1536 	swap	a
   0623 54 0F              1537 	anl	a,#0x0F
   0625 FE                 1538 	mov	r6,a
   0626 74 01              1539 	mov	a,#0x01
   0628 2A                 1540 	add	a,r2
   0629 FC                 1541 	mov	r4,a
   062A E4                 1542 	clr	a
   062B 3B                 1543 	addc	a,r3
   062C FD                 1544 	mov	r5,a
   062D 7F 00              1545 	mov	r7,#0x00
   062F EE                 1546 	mov	a,r6
   0630 B5 04 06           1547 	cjne	a,ar4,00199$
   0633 EF                 1548 	mov	a,r7
   0634 B5 05 02           1549 	cjne	a,ar5,00199$
   0637 80 04              1550 	sjmp	00200$
   0639                    1551 00199$:
   0639 D0 07              1552 	pop	ar7
   063B 80 08              1553 	sjmp	00108$
   063D                    1554 00200$:
   063D D0 07              1555 	pop	ar7
   063F A8 08              1556 	mov	r0,_bp
   0641 08                 1557 	inc	r0
   0642 08                 1558 	inc	r0
   0643 76 04              1559 	mov	@r0,#0x04
   0645                    1560 00108$:
                           1561 ;	../fb_app_out.c:264: if(zfno) {
   0645 A8 08              1562 	mov	r0,_bp
   0647 08                 1563 	inc	r0
   0648 08                 1564 	inc	r0
   0649 E6                 1565 	mov	a,@r0
   064A 60 5F              1566 	jz	00112$
                           1567 ;	../fb_app_out.c:265: if(((eeprom[FUNCTYP]>>((zfno-1)*2))&0x03)==0x00) logicfunc=((eeprom[LOGICTYP]>>((zfno-1)*2))&0x03);
   064C C0 02              1568 	push	ar2
   064E C0 03              1569 	push	ar3
   0650 90 1D ED           1570 	mov	dptr,#(_eeprom + 0x00ed)
   0653 E4                 1571 	clr	a
   0654 93                 1572 	movc	a,@a+dptr
   0655 FE                 1573 	mov	r6,a
   0656 A8 08              1574 	mov	r0,_bp
   0658 08                 1575 	inc	r0
   0659 08                 1576 	inc	r0
   065A 86 04              1577 	mov	ar4,@r0
   065C 7D 00              1578 	mov	r5,#0x00
   065E EC                 1579 	mov	a,r4
   065F 24 FF              1580 	add	a,#0xFF
   0661 FA                 1581 	mov	r2,a
   0662 ED                 1582 	mov	a,r5
   0663 34 FF              1583 	addc	a,#0xFF
   0665 CA                 1584 	xch	a,r2
   0666 25 E0              1585 	add	a,acc
   0668 CA                 1586 	xch	a,r2
   0669 33                 1587 	rlc	a
   066A FB                 1588 	mov	r3,a
   066B 8A F0              1589 	mov	b,r2
   066D 05 F0              1590 	inc	b
   066F EE                 1591 	mov	a,r6
   0670 80 02              1592 	sjmp	00203$
   0672                    1593 00202$:
   0672 C3                 1594 	clr	c
   0673 13                 1595 	rrc	a
   0674                    1596 00203$:
   0674 D5 F0 FB           1597 	djnz	b,00202$
   0677 54 03              1598 	anl	a,#0x03
   0679 60 06              1599 	jz	00205$
   067B D0 03              1600 	pop	ar3
   067D D0 02              1601 	pop	ar2
   067F 80 2A              1602 	sjmp	00112$
   0681                    1603 00205$:
   0681 D0 03              1604 	pop	ar3
   0683 D0 02              1605 	pop	ar2
   0685 90 1D EE           1606 	mov	dptr,#(_eeprom + 0x00ee)
   0688 E4                 1607 	clr	a
   0689 93                 1608 	movc	a,@a+dptr
   068A FE                 1609 	mov	r6,a
   068B 1C                 1610 	dec	r4
   068C BC FF 01           1611 	cjne	r4,#0xFF,00206$
   068F 1D                 1612 	dec	r5
   0690                    1613 00206$:
   0690 ED                 1614 	mov	a,r5
   0691 CC                 1615 	xch	a,r4
   0692 25 E0              1616 	add	a,acc
   0694 CC                 1617 	xch	a,r4
   0695 33                 1618 	rlc	a
   0696 FD                 1619 	mov	r5,a
   0697 8C F0              1620 	mov	b,r4
   0699 05 F0              1621 	inc	b
   069B EE                 1622 	mov	a,r6
   069C 80 02              1623 	sjmp	00208$
   069E                    1624 00207$:
   069E C3                 1625 	clr	c
   069F 13                 1626 	rrc	a
   06A0                    1627 00208$:
   06A0 D5 F0 FB           1628 	djnz	b,00207$
   06A3 FE                 1629 	mov	r6,a
   06A4 A8 08              1630 	mov	r0,_bp
   06A6 08                 1631 	inc	r0
   06A7 74 03              1632 	mov	a,#0x03
   06A9 5E                 1633 	anl	a,r6
   06AA F6                 1634 	mov	@r0,a
   06AB                    1635 00112$:
                           1636 ;	../fb_app_out.c:268: if(((0x01<<objno) & blocked)==0 && (read_objflags(objno)&0x14)==0x14) {	// Objekt ist nicht gesperrt und Kommunikation zulässig (Bit 2 = communication enable) und Schreiben zulässig (Bit 4 = write enable)
   06AB C0 02              1637 	push	ar2
   06AD C0 03              1638 	push	ar3
   06AF 8F F0              1639 	mov	b,r7
   06B1 05 F0              1640 	inc	b
   06B3 7D 01              1641 	mov	r5,#0x01
   06B5 7E 00              1642 	mov	r6,#0x00
   06B7 80 06              1643 	sjmp	00210$
   06B9                    1644 00209$:
   06B9 ED                 1645 	mov	a,r5
   06BA 2D                 1646 	add	a,r5
   06BB FD                 1647 	mov	r5,a
   06BC EE                 1648 	mov	a,r6
   06BD 33                 1649 	rlc	a
   06BE FE                 1650 	mov	r6,a
   06BF                    1651 00210$:
   06BF D5 F0 F7           1652 	djnz	b,00209$
   06C2 AB 3C              1653 	mov	r3,_blocked
   06C4 7C 00              1654 	mov	r4,#0x00
   06C6 EB                 1655 	mov	a,r3
   06C7 52 05              1656 	anl	ar5,a
   06C9 EC                 1657 	mov	a,r4
   06CA 52 06              1658 	anl	ar6,a
   06CC D0 03              1659 	pop	ar3
   06CE D0 02              1660 	pop	ar2
   06D0 ED                 1661 	mov	a,r5
   06D1 4E                 1662 	orl	a,r6
   06D2 60 03              1663 	jz	00211$
   06D4 02 08 AF           1664 	ljmp	00159$
   06D7                    1665 00211$:
   06D7 8F 82              1666 	mov	dpl,r7
   06D9 C0 07              1667 	push	ar7
   06DB C0 03              1668 	push	ar3
   06DD C0 02              1669 	push	ar2
   06DF C0 23              1670 	push	bits
   06E1 12 17 6C           1671 	lcall	_read_objflags
   06E4 E5 82              1672 	mov	a,dpl
   06E6 D0 23              1673 	pop	bits
   06E8 D0 02              1674 	pop	ar2
   06EA D0 03              1675 	pop	ar3
   06EC D0 07              1676 	pop	ar7
   06EE 54 14              1677 	anl	a,#0x14
   06F0 FE                 1678 	mov	r6,a
   06F1 BE 14 02           1679 	cjne	r6,#0x14,00212$
   06F4 80 03              1680 	sjmp	00213$
   06F6                    1681 00212$:
   06F6 02 08 AF           1682 	ljmp	00159$
   06F9                    1683 00213$:
                           1684 ;	../fb_app_out.c:269: delay_base=eeprom[(((objno+1)>>1)+DELAYTAB)];   
   06F9 0A                 1685 	inc	r2
   06FA BA 00 01           1686 	cjne	r2,#0x00,00214$
   06FD 0B                 1687 	inc	r3
   06FE                    1688 00214$:
   06FE EB                 1689 	mov	a,r3
   06FF A2 E7              1690 	mov	c,acc.7
   0701 13                 1691 	rrc	a
   0702 CA                 1692 	xch	a,r2
   0703 13                 1693 	rrc	a
   0704 CA                 1694 	xch	a,r2
   0705 FB                 1695 	mov	r3,a
   0706 74 F9              1696 	mov	a,#0xF9
   0708 2A                 1697 	add	a,r2
   0709 90 1D 00           1698 	mov	dptr,#_eeprom
   070C 93                 1699 	movc	a,@a+dptr
   070D FE                 1700 	mov	r6,a
                           1701 ;	../fb_app_out.c:270: if((objno&0x01)==0x01) delay_base&=0x0F;
   070E 74 01              1702 	mov	a,#0x01
   0710 5F                 1703 	anl	a,r7
   0711 FD                 1704 	mov	r5,a
   0712 BD 01 05           1705 	cjne	r5,#0x01,00114$
   0715 53 06 0F           1706 	anl	ar6,#0x0F
   0718 80 08              1707 	sjmp	00115$
   071A                    1708 00114$:
                           1709 ;	../fb_app_out.c:271: else delay_base=(delay_base&0xF0)>>4;
   071A 74 F0              1710 	mov	a,#0xF0
   071C 5E                 1711 	anl	a,r6
   071D FD                 1712 	mov	r5,a
   071E C4                 1713 	swap	a
   071F 54 0F              1714 	anl	a,#0x0F
   0721 FE                 1715 	mov	r6,a
   0722                    1716 00115$:
                           1717 ;	../fb_app_out.c:273: delay_onoff=0;
   0722 7D 00              1718 	mov	r5,#0x00
                           1719 ;	../fb_app_out.c:274: delay_state=0;
   0724 7C 00              1720 	mov	r4,#0x00
                           1721 ;	../fb_app_out.c:278: if ( (objstate==0 && (logicfunc==0 || (logicfunc==1 && ((logicstate>>objno)&0x01)==0x00) || logicfunc>=2))
   0726 20 18 24           1722 	jb	b0,00131$
   0729 A8 08              1723 	mov	r0,_bp
   072B 08                 1724 	inc	r0
   072C E6                 1725 	mov	a,@r0
   072D 60 43              1726 	jz	00123$
   072F A8 08              1727 	mov	r0,_bp
   0731 08                 1728 	inc	r0
   0732 B6 01 10           1729 	cjne	@r0,#0x01,00127$
   0735 8F F0              1730 	mov	b,r7
   0737 05 F0              1731 	inc	b
   0739 E5 3D              1732 	mov	a,_logicstate
   073B 80 02              1733 	sjmp	00222$
   073D                    1734 00221$:
   073D C3                 1735 	clr	c
   073E 13                 1736 	rrc	a
   073F                    1737 00222$:
   073F D5 F0 FB           1738 	djnz	b,00221$
   0742 30 E0 2D           1739 	jnb	acc.0,00123$
   0745                    1740 00127$:
   0745 A8 08              1741 	mov	r0,_bp
   0747 08                 1742 	inc	r0
   0748 B6 02 00           1743 	cjne	@r0,#0x02,00224$
   074B                    1744 00224$:
   074B 50 25              1745 	jnc	00123$
   074D                    1746 00131$:
                           1747 ;	../fb_app_out.c:279: || (objstate==1 && (logicfunc>=2 && ((logicstate>>objno)&0x01)==0x00)) )
   074D A2 18              1748 	mov	c,b0
   074F E4                 1749 	clr	a
   0750 33                 1750 	rlc	a
   0751 FB                 1751 	mov	r3,a
   0752 BB 01 02           1752 	cjne	r3,#0x01,00226$
   0755 80 03              1753 	sjmp	00227$
   0757                    1754 00226$:
   0757 02 07 D1           1755 	ljmp	00124$
   075A                    1756 00227$:
   075A A8 08              1757 	mov	r0,_bp
   075C 08                 1758 	inc	r0
   075D B6 02 00           1759 	cjne	@r0,#0x02,00228$
   0760                    1760 00228$:
   0760 40 6F              1761 	jc	00124$
   0762 8F F0              1762 	mov	b,r7
   0764 05 F0              1763 	inc	b
   0766 E5 3D              1764 	mov	a,_logicstate
   0768 80 02              1765 	sjmp	00231$
   076A                    1766 00230$:
   076A C3                 1767 	clr	c
   076B 13                 1768 	rrc	a
   076C                    1769 00231$:
   076C D5 F0 FB           1770 	djnz	b,00230$
   076F 20 E0 5F           1771 	jb	acc.0,00124$
   0772                    1772 00123$:
                           1773 ;	../fb_app_out.c:281: delay_onoff=eeprom[objno+0xE2];
   0772 74 E2              1774 	mov	a,#0xE2
   0774 2F                 1775 	add	a,r7
   0775 90 1D 00           1776 	mov	dptr,#_eeprom
   0778 93                 1777 	movc	a,@a+dptr
   0779 FB                 1778 	mov	r3,a
                           1779 ;	../fb_app_out.c:282: if(delay_onoff==0x00 || ((eeprom[0xEA]>>objno)&0x01)==0x01) {		// sofort ausschalten
   077A FD                 1780 	mov	r5,a
   077B 60 18              1781 	jz	00119$
   077D 90 1D EA           1782 	mov	dptr,#(_eeprom + 0x00ea)
   0780 E4                 1783 	clr	a
   0781 93                 1784 	movc	a,@a+dptr
   0782 FB                 1785 	mov	r3,a
   0783 8F F0              1786 	mov	b,r7
   0785 05 F0              1787 	inc	b
   0787 EB                 1788 	mov	a,r3
   0788 80 02              1789 	sjmp	00235$
   078A                    1790 00234$:
   078A C3                 1791 	clr	c
   078B 13                 1792 	rrc	a
   078C                    1793 00235$:
   078C D5 F0 FB           1794 	djnz	b,00234$
   078F 54 01              1795 	anl	a,#0x01
   0791 FB                 1796 	mov	r3,a
   0792 BB 01 3A           1797 	cjne	r3,#0x01,00120$
   0795                    1798 00119$:
                           1799 ;	../fb_app_out.c:283: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) portbuffer=portbuffer&~(0x01<<objno);	// Schliesserbetrieb
   0795 90 1D F2           1800 	mov	dptr,#(_eeprom + 0x00f2)
   0798 E4                 1801 	clr	a
   0799 93                 1802 	movc	a,@a+dptr
   079A FB                 1803 	mov	r3,a
   079B 8F F0              1804 	mov	b,r7
   079D 05 F0              1805 	inc	b
   079F EB                 1806 	mov	a,r3
   07A0 80 02              1807 	sjmp	00239$
   07A2                    1808 00238$:
   07A2 C3                 1809 	clr	c
   07A3 13                 1810 	rrc	a
   07A4                    1811 00239$:
   07A4 D5 F0 FB           1812 	djnz	b,00238$
   07A7 20 E0 13           1813 	jb	acc.0,00117$
   07AA 8F F0              1814 	mov	b,r7
   07AC 05 F0              1815 	inc	b
   07AE 74 01              1816 	mov	a,#0x01
   07B0 80 02              1817 	sjmp	00243$
   07B2                    1818 00241$:
   07B2 25 E0              1819 	add	a,acc
   07B4                    1820 00243$:
   07B4 D5 F0 FB           1821 	djnz	b,00241$
   07B7 F4                 1822 	cpl	a
   07B8 FB                 1823 	mov	r3,a
   07B9 52 3A              1824 	anl	_portbuffer,a
   07BB 80 14              1825 	sjmp	00124$
   07BD                    1826 00117$:
                           1827 ;	../fb_app_out.c:284: else portbuffer=portbuffer|(0x01<<objno);						// Öffnerbetrieb
   07BD 8F F0              1828 	mov	b,r7
   07BF 05 F0              1829 	inc	b
   07C1 74 01              1830 	mov	a,#0x01
   07C3 80 02              1831 	sjmp	00246$
   07C5                    1832 00244$:
   07C5 25 E0              1833 	add	a,acc
   07C7                    1834 00246$:
   07C7 D5 F0 FB           1835 	djnz	b,00244$
   07CA FB                 1836 	mov	r3,a
   07CB 42 3A              1837 	orl	_portbuffer,a
   07CD 80 02              1838 	sjmp	00124$
   07CF                    1839 00120$:
                           1840 ;	../fb_app_out.c:286: else delay_state=0x01;				// verzögert ausschalten
   07CF 7C 01              1841 	mov	r4,#0x01
   07D1                    1842 00124$:
                           1843 ;	../fb_app_out.c:290: if ( (objstate==1 && (logicfunc==0 || logicfunc==1 || (logicfunc>=2 && ((logicstate>>objno)&0x01)==0x01))) 
   07D1 A2 18              1844 	mov	c,b0
   07D3 E4                 1845 	clr	a
   07D4 33                 1846 	rlc	a
   07D5 FB                 1847 	mov	r3,a
   07D6 BB 01 2B           1848 	cjne	r3,#0x01,00148$
   07D9 A8 08              1849 	mov	r0,_bp
   07DB 08                 1850 	inc	r0
   07DC E6                 1851 	mov	a,@r0
   07DD 60 49              1852 	jz	00140$
   07DF A8 08              1853 	mov	r0,_bp
   07E1 08                 1854 	inc	r0
   07E2 B6 01 02           1855 	cjne	@r0,#0x01,00250$
   07E5 80 41              1856 	sjmp	00140$
   07E7                    1857 00250$:
   07E7 A8 08              1858 	mov	r0,_bp
   07E9 08                 1859 	inc	r0
   07EA B6 02 00           1860 	cjne	@r0,#0x02,00251$
   07ED                    1861 00251$:
   07ED 40 15              1862 	jc	00148$
   07EF 8F F0              1863 	mov	b,r7
   07F1 05 F0              1864 	inc	b
   07F3 E5 3D              1865 	mov	a,_logicstate
   07F5 80 02              1866 	sjmp	00254$
   07F7                    1867 00253$:
   07F7 C3                 1868 	clr	c
   07F8 13                 1869 	rrc	a
   07F9                    1870 00254$:
   07F9 D5 F0 FB           1871 	djnz	b,00253$
   07FC 54 01              1872 	anl	a,#0x01
   07FE FB                 1873 	mov	r3,a
   07FF BB 01 02           1874 	cjne	r3,#0x01,00255$
   0802 80 24              1875 	sjmp	00140$
   0804                    1876 00255$:
   0804                    1877 00148$:
                           1878 ;	../fb_app_out.c:291: || (objstate==0 && (logicfunc==1 && ((logicstate>>objno)&0x01)==0x01)) )
   0804 30 18 03           1879 	jnb	b0,00256$
   0807 02 08 92           1880 	ljmp	00141$
   080A                    1881 00256$:
   080A A8 08              1882 	mov	r0,_bp
   080C 08                 1883 	inc	r0
   080D B6 01 02           1884 	cjne	@r0,#0x01,00257$
   0810 80 03              1885 	sjmp	00258$
   0812                    1886 00257$:
   0812 02 08 92           1887 	ljmp	00141$
   0815                    1888 00258$:
   0815 8F F0              1889 	mov	b,r7
   0817 05 F0              1890 	inc	b
   0819 E5 3D              1891 	mov	a,_logicstate
   081B 80 02              1892 	sjmp	00260$
   081D                    1893 00259$:
   081D C3                 1894 	clr	c
   081E 13                 1895 	rrc	a
   081F                    1896 00260$:
   081F D5 F0 FB           1897 	djnz	b,00259$
   0822 54 01              1898 	anl	a,#0x01
   0824 FB                 1899 	mov	r3,a
   0825 BB 01 6A           1900 	cjne	r3,#0x01,00141$
   0828                    1901 00140$:
                           1902 ;	../fb_app_out.c:293: delay_onoff=eeprom[objno+0xDA];
   0828 74 DA              1903 	mov	a,#0xDA
   082A 2F                 1904 	add	a,r7
   082B 90 1D 00           1905 	mov	dptr,#_eeprom
   082E 93                 1906 	movc	a,@a+dptr
   082F FB                 1907 	mov	r3,a
                           1908 ;	../fb_app_out.c:294: if(delay_onoff==0x00) {
   0830 FD                 1909 	mov	r5,a
   0831 70 5D              1910 	jnz	00138$
                           1911 ;	../fb_app_out.c:297: if(((eeprom[0xEA]>>objno)&0x01)==0x01) { 			// Zeitschaltfunktion
   0833 90 1D EA           1912 	mov	dptr,#(_eeprom + 0x00ea)
   0836 E4                 1913 	clr	a
   0837 93                 1914 	movc	a,@a+dptr
   0838 FB                 1915 	mov	r3,a
   0839 8F F0              1916 	mov	b,r7
   083B 05 F0              1917 	inc	b
   083D EB                 1918 	mov	a,r3
   083E 80 02              1919 	sjmp	00265$
   0840                    1920 00264$:
   0840 C3                 1921 	clr	c
   0841 13                 1922 	rrc	a
   0842                    1923 00265$:
   0842 D5 F0 FB           1924 	djnz	b,00264$
   0845 54 01              1925 	anl	a,#0x01
   0847 FB                 1926 	mov	r3,a
   0848 BB 01 0B           1927 	cjne	r3,#0x01,00133$
                           1928 ;	../fb_app_out.c:298: delay_state=0x80;
   084B 7C 80              1929 	mov	r4,#0x80
                           1930 ;	../fb_app_out.c:299: delay_onoff=eeprom[objno+0xE2];
   084D 74 E2              1931 	mov	a,#0xE2
   084F 2F                 1932 	add	a,r7
   0850 90 1D 00           1933 	mov	dptr,#_eeprom
   0853 93                 1934 	movc	a,@a+dptr
   0854 FB                 1935 	mov	r3,a
   0855 FD                 1936 	mov	r5,a
   0856                    1937 00133$:
                           1938 ;	../fb_app_out.c:301: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) portbuffer=portbuffer|(0x01<<objno);	// sofort einschalten (Schliesserbetrieb)
   0856 90 1D F2           1939 	mov	dptr,#(_eeprom + 0x00f2)
   0859 E4                 1940 	clr	a
   085A 93                 1941 	movc	a,@a+dptr
   085B FB                 1942 	mov	r3,a
   085C 8F F0              1943 	mov	b,r7
   085E 05 F0              1944 	inc	b
   0860 EB                 1945 	mov	a,r3
   0861 80 02              1946 	sjmp	00269$
   0863                    1947 00268$:
   0863 C3                 1948 	clr	c
   0864 13                 1949 	rrc	a
   0865                    1950 00269$:
   0865 D5 F0 FB           1951 	djnz	b,00268$
   0868 20 E0 12           1952 	jb	acc.0,00135$
   086B 8F F0              1953 	mov	b,r7
   086D 05 F0              1954 	inc	b
   086F 74 01              1955 	mov	a,#0x01
   0871 80 02              1956 	sjmp	00273$
   0873                    1957 00271$:
   0873 25 E0              1958 	add	a,acc
   0875                    1959 00273$:
   0875 D5 F0 FB           1960 	djnz	b,00271$
   0878 FB                 1961 	mov	r3,a
   0879 42 3A              1962 	orl	_portbuffer,a
   087B 80 15              1963 	sjmp	00141$
   087D                    1964 00135$:
                           1965 ;	../fb_app_out.c:302: else portbuffer=portbuffer&~(0x01<<objno);					// sofort einschalten (Öffnerbetrieb)
   087D 8F F0              1966 	mov	b,r7
   087F 05 F0              1967 	inc	b
   0881 74 01              1968 	mov	a,#0x01
   0883 80 02              1969 	sjmp	00276$
   0885                    1970 00274$:
   0885 25 E0              1971 	add	a,acc
   0887                    1972 00276$:
   0887 D5 F0 FB           1973 	djnz	b,00274$
   088A F4                 1974 	cpl	a
   088B FB                 1975 	mov	r3,a
   088C 52 3A              1976 	anl	_portbuffer,a
   088E 80 02              1977 	sjmp	00141$
   0890                    1978 00138$:
                           1979 ;	../fb_app_out.c:304: else delay_state=0x11;				// verzögert einschalten
   0890 7C 11              1980 	mov	r4,#0x11
   0892                    1981 00141$:
                           1982 ;	../fb_app_out.c:307: if(delay_state!=0) {				// wenn Verzögerung, dann timer-Wert ins Flash schreiben  
   0892 EC                 1983 	mov	a,r4
   0893 60 14              1984 	jz	00150$
                           1985 ;	../fb_app_out.c:308: timercnt[objno]=delay_onoff|0x80;//delay_target=(delay_onoff<<delay_base)+timer;
   0895 EF                 1986 	mov	a,r7
   0896 24 2C              1987 	add	a,#_timercnt
   0898 F9                 1988 	mov	r1,a
   0899 74 80              1989 	mov	a,#0x80
   089B 4D                 1990 	orl	a,r5
   089C F7                 1991 	mov	@r1,a
                           1992 ;	../fb_app_out.c:309: timerbase[objno]=delay_base|(delay_state & 0xF0);//write_delay_record(objno,delay_state,delay_target);
   089D EF                 1993 	mov	a,r7
   089E 24 24              1994 	add	a,#_timerbase
   08A0 F9                 1995 	mov	r1,a
   08A1 53 04 F0           1996 	anl	ar4,#0xF0
   08A4 EC                 1997 	mov	a,r4
   08A5 4E                 1998 	orl	a,r6
   08A6 F7                 1999 	mov	@r1,a
   08A7 80 06              2000 	sjmp	00159$
   08A9                    2001 00150$:
                           2002 ;	../fb_app_out.c:311: else timercnt[objno]= 0;//clear_delay_record(objno);    
   08A9 EF                 2003 	mov	a,r7
   08AA 24 2C              2004 	add	a,#_timercnt
   08AC F8                 2005 	mov	r0,a
   08AD 76 00              2006 	mov	@r0,#0x00
   08AF                    2007 00159$:
   08AF 85 08 81           2008 	mov	sp,_bp
   08B2 D0 08              2009 	pop	_bp
   08B4 22                 2010 	ret
                           2011 ;------------------------------------------------------------
                           2012 ;Allocation info for local variables in function 'delay_timer'
                           2013 ;------------------------------------------------------------
                           2014 ;objno                     Allocated to registers r7 
                           2015 ;port_pattern              Allocated to registers r6 
                           2016 ;delay_zeit                Allocated to registers r5 
                           2017 ;delay_onoff               Allocated to registers r3 
                           2018 ;delay_base                Allocated to registers r4 
                           2019 ;n                         Allocated to registers r5 
                           2020 ;m                         Allocated to registers r4 
                           2021 ;timerflags                Allocated to registers r6 r7 
                           2022 ;------------------------------------------------------------
                           2023 ;	../fb_app_out.c:318: void delay_timer(void)	// zählt alle 65ms die Variable Timer hoch und prüft Queue
                           2024 ;	-----------------------------------------
                           2025 ;	 function delay_timer
                           2026 ;	-----------------------------------------
   08B5                    2027 _delay_timer:
                           2028 ;	../fb_app_out.c:329: RTCCON=0x60;		// RTC anhalten und Flag löschen
   08B5 75 D1 60           2029 	mov	_RTCCON,#0x60
                           2030 ;	../fb_app_out.c:330: RTCH=0x0E;			// reload Real Time Clock
   08B8 75 D2 0E           2031 	mov	_RTCH,#0x0E
                           2032 ;	../fb_app_out.c:331: RTCL=0xA0;
   08BB 75 D3 A0           2033 	mov	_RTCL,#0xA0
                           2034 ;	../fb_app_out.c:334: timer++;
   08BE 05 34              2035 	inc	_timer
   08C0 E4                 2036 	clr	a
   08C1 B5 34 02           2037 	cjne	a,_timer,00160$
   08C4 05 35              2038 	inc	(_timer + 1)
   08C6                    2039 00160$:
                           2040 ;	../fb_app_out.c:335: timerflags = timer&(~(timer-1));
   08C6 E5 34              2041 	mov	a,_timer
   08C8 24 FF              2042 	add	a,#0xFF
   08CA FE                 2043 	mov	r6,a
   08CB E5 35              2044 	mov	a,(_timer + 1)
   08CD 34 FF              2045 	addc	a,#0xFF
   08CF FF                 2046 	mov	r7,a
   08D0 EE                 2047 	mov	a,r6
   08D1 F4                 2048 	cpl	a
   08D2 FE                 2049 	mov	r6,a
   08D3 EF                 2050 	mov	a,r7
   08D4 F4                 2051 	cpl	a
   08D5 FF                 2052 	mov	r7,a
   08D6 E5 34              2053 	mov	a,_timer
   08D8 52 06              2054 	anl	ar6,a
   08DA E5 35              2055 	mov	a,(_timer + 1)
   08DC 52 07              2056 	anl	ar7,a
                           2057 ;	../fb_app_out.c:336: for(n=0;n<16;n++){
   08DE 7D 00              2058 	mov	r5,#0x00
   08E0                    2059 00130$:
   08E0 BD 10 00           2060 	cjne	r5,#0x10,00161$
   08E3                    2061 00161$:
   08E3 50 32              2062 	jnc	00133$
                           2063 ;	../fb_app_out.c:337: if(timerflags & 0x0001){// positive flags erzeugen und schieben
   08E5 EE                 2064 	mov	a,r6
   08E6 30 E0 24           2065 	jnb	acc.0,00106$
                           2066 ;	../fb_app_out.c:338: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
   08E9 7C 00              2067 	mov	r4,#0x00
   08EB                    2068 00126$:
   08EB BC 08 00           2069 	cjne	r4,#0x08,00164$
   08EE                    2070 00164$:
   08EE 50 1D              2071 	jnc	00106$
                           2072 ;	../fb_app_out.c:339: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
   08F0 EC                 2073 	mov	a,r4
   08F1 24 24              2074 	add	a,#_timerbase
   08F3 F9                 2075 	mov	r1,a
   08F4 87 03              2076 	mov	ar3,@r1
   08F6 53 03 0F           2077 	anl	ar3,#0x0F
   08F9 EB                 2078 	mov	a,r3
   08FA B5 05 0D           2079 	cjne	a,ar5,00128$
                           2080 ;	../fb_app_out.c:340: if (timercnt[m]>0x80){// wenn der counter läuft...
   08FD EC                 2081 	mov	a,r4
   08FE 24 2C              2082 	add	a,#_timercnt
   0900 F9                 2083 	mov	r1,a
   0901 E7                 2084 	mov	a,@r1
   0902 FB                 2085 	mov	r3,a
   0903 24 7F              2086 	add	a,#0xff - 0x80
   0905 50 03              2087 	jnc	00128$
                           2088 ;	../fb_app_out.c:341: timercnt[m]=timercnt[m]-1;// den timer [m]decrementieren
   0907 EB                 2089 	mov	a,r3
   0908 14                 2090 	dec	a
   0909 F7                 2091 	mov	@r1,a
   090A                    2092 00128$:
                           2093 ;	../fb_app_out.c:338: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
   090A 0C                 2094 	inc	r4
   090B 80 DE              2095 	sjmp	00126$
   090D                    2096 00106$:
                           2097 ;	../fb_app_out.c:346: timerflags = timerflags>>1;
   090D EF                 2098 	mov	a,r7
   090E C3                 2099 	clr	c
   090F 13                 2100 	rrc	a
   0910 CE                 2101 	xch	a,r6
   0911 13                 2102 	rrc	a
   0912 CE                 2103 	xch	a,r6
   0913 FF                 2104 	mov	r7,a
                           2105 ;	../fb_app_out.c:336: for(n=0;n<16;n++){
   0914 0D                 2106 	inc	r5
   0915 80 C9              2107 	sjmp	00130$
   0917                    2108 00133$:
                           2109 ;	../fb_app_out.c:351: for(objno=0;objno<=7;objno++) {
   0917 7F 00              2110 	mov	r7,#0x00
   0919                    2111 00134$:
   0919 EF                 2112 	mov	a,r7
   091A 24 F8              2113 	add	a,#0xff - 0x07
   091C 50 03              2114 	jnc	00169$
   091E 02 09 F4           2115 	ljmp	00137$
   0921                    2116 00169$:
                           2117 ;	../fb_app_out.c:357: if(timercnt[objno]==0x80) {			// 0x00 = delay Eintrag ist leer   
   0921 EF                 2118 	mov	a,r7
   0922 24 2C              2119 	add	a,#_timercnt
   0924 F9                 2120 	mov	r1,a
   0925 87 06              2121 	mov	ar6,@r1
   0927 BE 80 02           2122 	cjne	r6,#0x80,00170$
   092A 80 03              2123 	sjmp	00171$
   092C                    2124 00170$:
   092C 02 09 F0           2125 	ljmp	00136$
   092F                    2126 00171$:
                           2127 ;	../fb_app_out.c:359: portchanged=1;
   092F D2 01              2128 	setb	_portchanged
                           2129 ;	../fb_app_out.c:360: port_pattern=0x01<<objno;
   0931 8F F0              2130 	mov	b,r7
   0933 05 F0              2131 	inc	b
   0935 74 01              2132 	mov	a,#0x01
   0937 80 02              2133 	sjmp	00174$
   0939                    2134 00172$:
   0939 25 E0              2135 	add	a,acc
   093B                    2136 00174$:
   093B D5 F0 FB           2137 	djnz	b,00172$
   093E FE                 2138 	mov	r6,a
                           2139 ;	../fb_app_out.c:361: if(timerbase[objno]&0x10) { //if(delay_state==0x81) {	// einschalten
   093F EF                 2140 	mov	a,r7
   0940 24 24              2141 	add	a,#_timerbase
   0942 F9                 2142 	mov	r1,a
   0943 E7                 2143 	mov	a,@r1
   0944 FD                 2144 	mov	r5,a
   0945 20 E4 03           2145 	jb	acc.4,00175$
   0948 02 09 CB           2146 	ljmp	00122$
   094B                    2147 00175$:
                           2148 ;	../fb_app_out.c:362: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) {				
   094B 90 1D F2           2149 	mov	dptr,#(_eeprom + 0x00f2)
   094E E4                 2150 	clr	a
   094F 93                 2151 	movc	a,@a+dptr
   0950 FD                 2152 	mov	r5,a
   0951 8F F0              2153 	mov	b,r7
   0953 05 F0              2154 	inc	b
   0955 ED                 2155 	mov	a,r5
   0956 80 02              2156 	sjmp	00177$
   0958                    2157 00176$:
   0958 C3                 2158 	clr	c
   0959 13                 2159 	rrc	a
   095A                    2160 00177$:
   095A D5 F0 FB           2161 	djnz	b,00176$
   095D 20 E0 05           2162 	jb	acc.0,00108$
                           2163 ;	../fb_app_out.c:363: portbuffer=portbuffer|port_pattern;		// Einschalten (Schliesserbetrieb)
   0960 EE                 2164 	mov	a,r6
   0961 42 3A              2165 	orl	_portbuffer,a
   0963 80 05              2166 	sjmp	00109$
   0965                    2167 00108$:
                           2168 ;	../fb_app_out.c:366: portbuffer=portbuffer&~port_pattern;	// Einschalten (Öffnerbetrieb)
   0965 EE                 2169 	mov	a,r6
   0966 F4                 2170 	cpl	a
   0967 FD                 2171 	mov	r5,a
   0968 52 3A              2172 	anl	_portbuffer,a
   096A                    2173 00109$:
                           2174 ;	../fb_app_out.c:368: timercnt[objno]=0;//delrec[objno*4]=0;
   096A EF                 2175 	mov	a,r7
   096B 24 2C              2176 	add	a,#_timercnt
   096D F8                 2177 	mov	r0,a
   096E 76 00              2178 	mov	@r0,#0x00
                           2179 ;	../fb_app_out.c:370: delay_zeit=eeprom[0xEA];
   0970 90 1D EA           2180 	mov	dptr,#(_eeprom + 0x00ea)
   0973 E4                 2181 	clr	a
   0974 93                 2182 	movc	a,@a+dptr
   0975 FD                 2183 	mov	r5,a
                           2184 ;	../fb_app_out.c:371: delay_zeit=((delay_zeit>>objno)&0x01);
   0976 8F F0              2185 	mov	b,r7
   0978 05 F0              2186 	inc	b
   097A ED                 2187 	mov	a,r5
   097B 80 02              2188 	sjmp	00180$
   097D                    2189 00179$:
   097D C3                 2190 	clr	c
   097E 13                 2191 	rrc	a
   097F                    2192 00180$:
   097F D5 F0 FB           2193 	djnz	b,00179$
   0982 FC                 2194 	mov	r4,a
   0983 74 01              2195 	mov	a,#0x01
   0985 5C                 2196 	anl	a,r4
   0986 FD                 2197 	mov	r5,a
                           2198 ;	../fb_app_out.c:372: if(delay_zeit==0x01) {
   0987 BD 01 66           2199 	cjne	r5,#0x01,00136$
                           2200 ;	../fb_app_out.c:373: delay_base=eeprom[(((objno+1)>>1)+0xF9)];   
   098A 8F 03              2201 	mov	ar3,r7
   098C 7C 00              2202 	mov	r4,#0x00
   098E 0B                 2203 	inc	r3
   098F BB 00 01           2204 	cjne	r3,#0x00,00183$
   0992 0C                 2205 	inc	r4
   0993                    2206 00183$:
   0993 EC                 2207 	mov	a,r4
   0994 A2 E7              2208 	mov	c,acc.7
   0996 13                 2209 	rrc	a
   0997 CB                 2210 	xch	a,r3
   0998 13                 2211 	rrc	a
   0999 CB                 2212 	xch	a,r3
   099A 74 F9              2213 	mov	a,#0xF9
   099C 2B                 2214 	add	a,r3
   099D 90 1D 00           2215 	mov	dptr,#_eeprom
   09A0 93                 2216 	movc	a,@a+dptr
   09A1 FC                 2217 	mov	r4,a
                           2218 ;	../fb_app_out.c:374: if((objno&0x01)==0x01) delay_base&=0x0F;
   09A2 74 01              2219 	mov	a,#0x01
   09A4 5F                 2220 	anl	a,r7
   09A5 FB                 2221 	mov	r3,a
   09A6 BB 01 05           2222 	cjne	r3,#0x01,00111$
   09A9 53 04 0F           2223 	anl	ar4,#0x0F
   09AC 80 08              2224 	sjmp	00112$
   09AE                    2225 00111$:
                           2226 ;	../fb_app_out.c:375: else delay_base=(delay_base&0xF0)>>4;
   09AE 74 F0              2227 	mov	a,#0xF0
   09B0 5C                 2228 	anl	a,r4
   09B1 FB                 2229 	mov	r3,a
   09B2 C4                 2230 	swap	a
   09B3 54 0F              2231 	anl	a,#0x0F
   09B5 FC                 2232 	mov	r4,a
   09B6                    2233 00112$:
                           2234 ;	../fb_app_out.c:376: delay_onoff=eeprom[objno+0xE2];
   09B6 74 E2              2235 	mov	a,#0xE2
   09B8 2F                 2236 	add	a,r7
   09B9 90 1D 00           2237 	mov	dptr,#_eeprom
   09BC 93                 2238 	movc	a,@a+dptr
                           2239 ;	../fb_app_out.c:377: if (delay_onoff!=0x00 && delay_zeit!=0x00) {  
   09BD FB                 2240 	mov	r3,a
   09BE 60 30              2241 	jz	00136$
   09C0 ED                 2242 	mov	a,r5
   09C1 60 2D              2243 	jz	00136$
                           2244 ;	../fb_app_out.c:378: timercnt[objno]=delay_onoff|0x80;//delay_target=(delay_onoff<<delay_base)+timer;
   09C3 74 80              2245 	mov	a,#0x80
   09C5 4B                 2246 	orl	a,r3
   09C6 F6                 2247 	mov	@r0,a
                           2248 ;	../fb_app_out.c:379: timerbase[objno]=delay_base;//write_delay_record(objno,0x80,delay_target);		// Schaltverzögerung in Flash schreiben
   09C7 A7 04              2249 	mov	@r1,ar4
   09C9 80 25              2250 	sjmp	00136$
   09CB                    2251 00122$:
                           2252 ;	../fb_app_out.c:386: if (((eeprom[RELMODE]>>objno)&0x01)==0x00) {
   09CB 90 1D F2           2253 	mov	dptr,#(_eeprom + 0x00f2)
   09CE E4                 2254 	clr	a
   09CF 93                 2255 	movc	a,@a+dptr
   09D0 FD                 2256 	mov	r5,a
   09D1 8F F0              2257 	mov	b,r7
   09D3 05 F0              2258 	inc	b
   09D5 ED                 2259 	mov	a,r5
   09D6 80 02              2260 	sjmp	00189$
   09D8                    2261 00188$:
   09D8 C3                 2262 	clr	c
   09D9 13                 2263 	rrc	a
   09DA                    2264 00189$:
   09DA D5 F0 FB           2265 	djnz	b,00188$
   09DD 20 E0 07           2266 	jb	acc.0,00119$
                           2267 ;	../fb_app_out.c:387: portbuffer=portbuffer&~port_pattern;		// Ausschalten (Schliesserbetrieb)
   09E0 EE                 2268 	mov	a,r6
   09E1 F4                 2269 	cpl	a
   09E2 FD                 2270 	mov	r5,a
   09E3 52 3A              2271 	anl	_portbuffer,a
   09E5 80 03              2272 	sjmp	00120$
   09E7                    2273 00119$:
                           2274 ;	../fb_app_out.c:390: portbuffer=portbuffer|port_pattern;			// Ausschalten (Öffnerbetrieb)
   09E7 EE                 2275 	mov	a,r6
   09E8 42 3A              2276 	orl	_portbuffer,a
   09EA                    2277 00120$:
                           2278 ;	../fb_app_out.c:392: timercnt[objno]=0;//delrec[objno*4]=0;
   09EA EF                 2279 	mov	a,r7
   09EB 24 2C              2280 	add	a,#_timercnt
   09ED F8                 2281 	mov	r0,a
   09EE 76 00              2282 	mov	@r0,#0x00
   09F0                    2283 00136$:
                           2284 ;	../fb_app_out.c:351: for(objno=0;objno<=7;objno++) {
   09F0 0F                 2285 	inc	r7
   09F1 02 09 19           2286 	ljmp	00134$
   09F4                    2287 00137$:
                           2288 ;	../fb_app_out.c:460: RTCCON=0x61;		// RTC starten
   09F4 75 D1 61           2289 	mov	_RTCCON,#0x61
   09F7 22                 2290 	ret
                           2291 ;------------------------------------------------------------
                           2292 ;Allocation info for local variables in function 'port_schalten'
                           2293 ;------------------------------------------------------------
                           2294 ;n                         Allocated to registers r7 
                           2295 ;pattern                   Allocated to registers r6 
                           2296 ;------------------------------------------------------------
                           2297 ;	../fb_app_out.c:524: void port_schalten(void)		// Schaltet die Ports mit PWM, DUTY ist Pulsverhältnis
                           2298 ;	-----------------------------------------
                           2299 ;	 function port_schalten
                           2300 ;	-----------------------------------------
   09F8                    2301 _port_schalten:
                           2302 ;	../fb_app_out.c:570: spi_2_out(sort_output(portbuffer));		// Ports schalten
   09F8 85 3A 82           2303 	mov	dpl,_portbuffer
   09FB 12 0A 57           2304 	lcall	_sort_output
   09FE 12 0A A7           2305 	lcall	_spi_2_out
                           2306 ;	../fb_app_out.c:571: PWM=0;
   0A01 C2 92              2307 	clr	_P1_2
                           2308 ;	../fb_app_out.c:572: TF0=0;			// Timer 0 für Haltezeit Vollstrom verwenden
   0A03 C2 8D              2309 	clr	_TCON_5
                           2310 ;	../fb_app_out.c:573: TH0=0x6f;		// 16ms (10ms=6fff)
   0A05 75 8C 6F           2311 	mov	_TH0,#0x6F
                           2312 ;	../fb_app_out.c:574: TL0=0xff;
   0A08 75 8A FF           2313 	mov	_TL0,#0xFF
                           2314 ;	../fb_app_out.c:575: TMOD=(TMOD & 0xF0) +1;		// Timer 0 als 16-Bit Timer
   0A0B 74 F0              2315 	mov	a,#0xF0
   0A0D 55 89              2316 	anl	a,_TMOD
   0A0F 04                 2317 	inc	a
   0A10 F5 89              2318 	mov	_TMOD,a
                           2319 ;	../fb_app_out.c:576: TAMOD=0x00;
   0A12 75 8F 00           2320 	mov	_TAMOD,#0x00
                           2321 ;	../fb_app_out.c:577: TR0=1;
   0A15 D2 8C              2322 	setb	_TCON_4
                           2323 ;	../fb_app_out.c:579: rm_state=portbuffer ^ eeprom[RMINV];	// Rückmeldeobjekte setzen
   0A17 90 1D F3           2324 	mov	dptr,#(_eeprom + 0x00f3)
   0A1A E4                 2325 	clr	a
   0A1B 93                 2326 	movc	a,@a+dptr
   0A1C 65 3A              2327 	xrl	a,_portbuffer
   0A1E F5 38              2328 	mov	_rm_state,a
                           2329 ;	../fb_app_out.c:580: for (n=0;n<8;n++) {	// Rückmeldung wenn ein Ausgag sich geändert hat
   0A20 7F 00              2330 	mov	r7,#0x00
   0A22                    2331 00103$:
   0A22 BF 08 00           2332 	cjne	r7,#0x08,00113$
   0A25                    2333 00113$:
   0A25 50 2A              2334 	jnc	00106$
                           2335 ;	../fb_app_out.c:581: pattern=1<<n;
   0A27 8F F0              2336 	mov	b,r7
   0A29 05 F0              2337 	inc	b
   0A2B 74 01              2338 	mov	a,#0x01
   0A2D 80 02              2339 	sjmp	00117$
   0A2F                    2340 00115$:
   0A2F 25 E0              2341 	add	a,acc
   0A31                    2342 00117$:
   0A31 D5 F0 FB           2343 	djnz	b,00115$
                           2344 ;	../fb_app_out.c:582: if((portbuffer&pattern)!=(oldportbuffer&pattern)) send_obj_value(n+12);
   0A34 FE                 2345 	mov	r6,a
   0A35 55 3A              2346 	anl	a,_portbuffer
   0A37 FD                 2347 	mov	r5,a
   0A38 E5 3B              2348 	mov	a,_oldportbuffer
   0A3A 52 06              2349 	anl	ar6,a
   0A3C ED                 2350 	mov	a,r5
   0A3D B5 06 02           2351 	cjne	a,ar6,00118$
   0A40 80 0C              2352 	sjmp	00105$
   0A42                    2353 00118$:
   0A42 74 0C              2354 	mov	a,#0x0C
   0A44 2F                 2355 	add	a,r7
   0A45 F5 82              2356 	mov	dpl,a
   0A47 C0 07              2357 	push	ar7
   0A49 12 15 29           2358 	lcall	_send_obj_value
   0A4C D0 07              2359 	pop	ar7
   0A4E                    2360 00105$:
                           2361 ;	../fb_app_out.c:580: for (n=0;n<8;n++) {	// Rückmeldung wenn ein Ausgag sich geändert hat
   0A4E 0F                 2362 	inc	r7
   0A4F 80 D1              2363 	sjmp	00103$
   0A51                    2364 00106$:
                           2365 ;	../fb_app_out.c:585: oldportbuffer=portbuffer;
   0A51 85 3A 3B           2366 	mov	_oldportbuffer,_portbuffer
                           2367 ;	../fb_app_out.c:586: portchanged=0;
   0A54 C2 01              2368 	clr	_portchanged
   0A56 22                 2369 	ret
                           2370 ;------------------------------------------------------------
                           2371 ;Allocation info for local variables in function 'sort_output'
                           2372 ;------------------------------------------------------------
                           2373 ;portbuffer                Allocated to registers r7 
                           2374 ;diff                      Allocated to registers r6 
                           2375 ;result                    Allocated to registers r4 r5 
                           2376 ;------------------------------------------------------------
                           2377 ;	../fb_app_out.c:626: unsigned int sort_output(unsigned char portbuffer){
                           2378 ;	-----------------------------------------
                           2379 ;	 function sort_output
                           2380 ;	-----------------------------------------
   0A57                    2381 _sort_output:
   0A57 AF 82              2382 	mov	r7,dpl
                           2383 ;	../fb_app_out.c:629: diff=portbuffer ^ oldportbuffer;
   0A59 E5 3B              2384 	mov	a,_oldportbuffer
   0A5B 6F                 2385 	xrl	a,r7
   0A5C FE                 2386 	mov	r6,a
                           2387 ;	../fb_app_out.c:630: result=0;
                           2388 ;	../fb_app_out.c:709: if (diff & 0x01){
   0A5D E4                 2389 	clr	a
   0A5E FC                 2390 	mov	r4,a
   0A5F FD                 2391 	mov	r5,a
   0A60 EE                 2392 	mov	a,r6
   0A61 30 E0 0E           2393 	jnb	acc.0,00105$
                           2394 ;	../fb_app_out.c:710: if(portbuffer & 0x02){
   0A64 EF                 2395 	mov	a,r7
   0A65 30 E1 06           2396 	jnb	acc.1,00102$
                           2397 ;	../fb_app_out.c:711: result|=0x0004;
   0A68 7C 04              2398 	mov	r4,#0x04
   0A6A 7D 00              2399 	mov	r5,#0x00
   0A6C 80 04              2400 	sjmp	00105$
   0A6E                    2401 00102$:
                           2402 ;	../fb_app_out.c:714: result|=0x0008;
   0A6E 7C 08              2403 	mov	r4,#0x08
   0A70 7D 00              2404 	mov	r5,#0x00
   0A72                    2405 00105$:
                           2406 ;	../fb_app_out.c:718: if (diff & 0x02){
   0A72 EE                 2407 	mov	a,r6
   0A73 30 E1 0C           2408 	jnb	acc.1,00110$
                           2409 ;	../fb_app_out.c:719: if(portbuffer & 0x08){
   0A76 EF                 2410 	mov	a,r7
   0A77 30 E3 05           2411 	jnb	acc.3,00107$
                           2412 ;	../fb_app_out.c:720: result|=0x0001;
   0A7A 43 04 01           2413 	orl	ar4,#0x01
   0A7D 80 03              2414 	sjmp	00110$
   0A7F                    2415 00107$:
                           2416 ;	../fb_app_out.c:723: result|=0x0002;
   0A7F 43 04 02           2417 	orl	ar4,#0x02
   0A82                    2418 00110$:
                           2419 ;	../fb_app_out.c:728: if (diff & 0x04){
   0A82 EE                 2420 	mov	a,r6
   0A83 30 E2 0C           2421 	jnb	acc.2,00115$
                           2422 ;	../fb_app_out.c:729: if(portbuffer & 0x10){
   0A86 EF                 2423 	mov	a,r7
   0A87 30 E4 05           2424 	jnb	acc.4,00112$
                           2425 ;	../fb_app_out.c:730: result|=0x0040;
   0A8A 43 04 40           2426 	orl	ar4,#0x40
   0A8D 80 03              2427 	sjmp	00115$
   0A8F                    2428 00112$:
                           2429 ;	../fb_app_out.c:733: result|=0x0080;
   0A8F 43 04 80           2430 	orl	ar4,#0x80
   0A92                    2431 00115$:
                           2432 ;	../fb_app_out.c:738: if (diff & 0x08){
   0A92 EE                 2433 	mov	a,r6
   0A93 30 E3 0C           2434 	jnb	acc.3,00120$
                           2435 ;	../fb_app_out.c:739: if(portbuffer & 0x40){
   0A96 EF                 2436 	mov	a,r7
   0A97 30 E6 05           2437 	jnb	acc.6,00117$
                           2438 ;	../fb_app_out.c:740: result|=0x0010;
   0A9A 43 04 10           2439 	orl	ar4,#0x10
   0A9D 80 03              2440 	sjmp	00120$
   0A9F                    2441 00117$:
                           2442 ;	../fb_app_out.c:743: result|=0x0020;
   0A9F 43 04 20           2443 	orl	ar4,#0x20
   0AA2                    2444 00120$:
                           2445 ;	../fb_app_out.c:748: return result;
   0AA2 8C 82              2446 	mov	dpl,r4
   0AA4 8D 83              2447 	mov	dph,r5
   0AA6 22                 2448 	ret
                           2449 ;------------------------------------------------------------
                           2450 ;Allocation info for local variables in function 'spi_2_out'
                           2451 ;------------------------------------------------------------
                           2452 ;daten                     Allocated to registers r6 r7 
                           2453 ;n                         Allocated to registers r6 
                           2454 ;unten                     Allocated to registers r4 
                           2455 ;mitte                     Allocated to registers r7 
                           2456 ;------------------------------------------------------------
                           2457 ;	../fb_app_out.c:753: void spi_2_out(unsigned int daten){
                           2458 ;	-----------------------------------------
                           2459 ;	 function spi_2_out
                           2460 ;	-----------------------------------------
   0AA7                    2461 _spi_2_out:
   0AA7 AE 82              2462 	mov	r6,dpl
   0AA9 AF 83              2463 	mov	r7,dph
                           2464 ;	../fb_app_out.c:757: unten=daten & 0xFF;
   0AAB 8E 04              2465 	mov	ar4,r6
   0AAD 7D 00              2466 	mov	r5,#0x00
                           2467 ;	../fb_app_out.c:758: mitte=daten>>8;
                           2468 ;	../fb_app_out.c:760: WRITE=0;
   0AAF C2 82              2469 	clr	_P0_2
                           2470 ;	../fb_app_out.c:761: CLK=0;
   0AB1 C2 83              2471 	clr	_P0_3
                           2472 ;	../fb_app_out.c:762: for(n=0;n<=7;n++){
   0AB3 7E 00              2473 	mov	r6,#0x00
   0AB5                    2474 00101$:
   0AB5 EE                 2475 	mov	a,r6
   0AB6 24 F8              2476 	add	a,#0xff - 0x07
   0AB8 40 22              2477 	jc	00104$
                           2478 ;	../fb_app_out.c:765: BOT_OUT=(unten & 0x080)>>7;
   0ABA 74 80              2479 	mov	a,#0x80
   0ABC 5C                 2480 	anl	a,r4
   0ABD 23                 2481 	rl	a
   0ABE 54 01              2482 	anl	a,#0x01
   0AC0 24 FF              2483 	add	a,#0xff
   0AC2 92 80              2484 	mov	_P0_0,c
                           2485 ;	../fb_app_out.c:766: unten<<=1;
   0AC4 EC                 2486 	mov	a,r4
   0AC5 2C                 2487 	add	a,r4
   0AC6 FC                 2488 	mov	r4,a
                           2489 ;	../fb_app_out.c:769: MID_OUT=(mitte & 0x080)>>7;
   0AC7 74 80              2490 	mov	a,#0x80
   0AC9 5F                 2491 	anl	a,r7
   0ACA 23                 2492 	rl	a
   0ACB 54 01              2493 	anl	a,#0x01
   0ACD FD                 2494 	mov	r5,a
   0ACE 24 FF              2495 	add	a,#0xff
   0AD0 92 81              2496 	mov	_P0_1,c
                           2497 ;	../fb_app_out.c:770: mitte<<=1;
   0AD2 EF                 2498 	mov	a,r7
   0AD3 2F                 2499 	add	a,r7
   0AD4 FF                 2500 	mov	r7,a
                           2501 ;	../fb_app_out.c:772: CLK=1;
   0AD5 D2 83              2502 	setb	_P0_3
                           2503 ;	../fb_app_out.c:773: CLK=0;
   0AD7 C2 83              2504 	clr	_P0_3
                           2505 ;	../fb_app_out.c:762: for(n=0;n<=7;n++){
   0AD9 0E                 2506 	inc	r6
   0ADA 80 D9              2507 	sjmp	00101$
   0ADC                    2508 00104$:
                           2509 ;	../fb_app_out.c:777: WRITE=1;
   0ADC D2 82              2510 	setb	_P0_2
                           2511 ;	../fb_app_out.c:779: WRITE=0;
   0ADE C2 82              2512 	clr	_P0_2
   0AE0 22                 2513 	ret
                           2514 ;------------------------------------------------------------
                           2515 ;Allocation info for local variables in function 'bus_return'
                           2516 ;------------------------------------------------------------
                           2517 ;n                         Allocated to registers r6 
                           2518 ;bw                        Allocated to registers r7 
                           2519 ;bwh                       Allocated to registers r5 
                           2520 ;------------------------------------------------------------
                           2521 ;	../fb_app_out.c:788: void bus_return(void)		// Aktionen bei Busspannungswiederkehr
                           2522 ;	-----------------------------------------
                           2523 ;	 function bus_return
                           2524 ;	-----------------------------------------
   0AE1                    2525 _bus_return:
                           2526 ;	../fb_app_out.c:792: portbuffer=eeprom[PORTSAVE];	// Verhalten nach Busspannungs-Wiederkehr
   0AE1 90 1D 99           2527 	mov	dptr,#(_eeprom + 0x0099)
   0AE4 E4                 2528 	clr	a
   0AE5 93                 2529 	movc	a,@a+dptr
   0AE6 F5 3A              2530 	mov	_portbuffer,a
                           2531 ;	../fb_app_out.c:794: bw=eeprom[0xF6];
   0AE8 90 1D F6           2532 	mov	dptr,#(_eeprom + 0x00f6)
   0AEB E4                 2533 	clr	a
   0AEC 93                 2534 	movc	a,@a+dptr
   0AED FF                 2535 	mov	r7,a
                           2536 ;	../fb_app_out.c:795: for(n=0;n<=3;n++) {			// Ausgänge 1-4
   0AEE 7E 00              2537 	mov	r6,#0x00
   0AF0                    2538 00109$:
   0AF0 EE                 2539 	mov	a,r6
   0AF1 24 FC              2540 	add	a,#0xff - 0x03
   0AF3 40 46              2541 	jc	00112$
                           2542 ;	../fb_app_out.c:796: bwh=(bw>>(2*n))&0x03;
   0AF5 EE                 2543 	mov	a,r6
   0AF6 75 F0 02           2544 	mov	b,#0x02
   0AF9 A4                 2545 	mul	ab
   0AFA FC                 2546 	mov	r4,a
   0AFB AD F0              2547 	mov	r5,b
   0AFD 8C F0              2548 	mov	b,r4
   0AFF 05 F0              2549 	inc	b
   0B01 EF                 2550 	mov	a,r7
   0B02 80 02              2551 	sjmp	00131$
   0B04                    2552 00130$:
   0B04 C3                 2553 	clr	c
   0B05 13                 2554 	rrc	a
   0B06                    2555 00131$:
   0B06 D5 F0 FB           2556 	djnz	b,00130$
   0B09 FC                 2557 	mov	r4,a
   0B0A 74 03              2558 	mov	a,#0x03
   0B0C 5C                 2559 	anl	a,r4
   0B0D FD                 2560 	mov	r5,a
                           2561 ;	../fb_app_out.c:797: if(bwh==0x01)  portbuffer=portbuffer & (0xFF-(0x01<<n));
   0B0E BD 01 14           2562 	cjne	r5,#0x01,00102$
   0B11 8E F0              2563 	mov	b,r6
   0B13 05 F0              2564 	inc	b
   0B15 74 01              2565 	mov	a,#0x01
   0B17 80 02              2566 	sjmp	00136$
   0B19                    2567 00134$:
   0B19 25 E0              2568 	add	a,acc
   0B1B                    2569 00136$:
   0B1B D5 F0 FB           2570 	djnz	b,00134$
   0B1E FC                 2571 	mov	r4,a
   0B1F 74 FF              2572 	mov	a,#0xFF
   0B21 C3                 2573 	clr	c
   0B22 9C                 2574 	subb	a,r4
   0B23 52 3A              2575 	anl	_portbuffer,a
   0B25                    2576 00102$:
                           2577 ;	../fb_app_out.c:798: if(bwh==0x02)  portbuffer=portbuffer | (0x01<<n);
   0B25 BD 02 10           2578 	cjne	r5,#0x02,00111$
   0B28 8E F0              2579 	mov	b,r6
   0B2A 05 F0              2580 	inc	b
   0B2C 74 01              2581 	mov	a,#0x01
   0B2E 80 02              2582 	sjmp	00141$
   0B30                    2583 00139$:
   0B30 25 E0              2584 	add	a,acc
   0B32                    2585 00141$:
   0B32 D5 F0 FB           2586 	djnz	b,00139$
   0B35 FC                 2587 	mov	r4,a
   0B36 42 3A              2588 	orl	_portbuffer,a
   0B38                    2589 00111$:
                           2590 ;	../fb_app_out.c:795: for(n=0;n<=3;n++) {			// Ausgänge 1-4
   0B38 0E                 2591 	inc	r6
   0B39 80 B5              2592 	sjmp	00109$
   0B3B                    2593 00112$:
                           2594 ;	../fb_app_out.c:802: bw=eeprom[0xF7];
   0B3B 90 1D F7           2595 	mov	dptr,#(_eeprom + 0x00f7)
   0B3E E4                 2596 	clr	a
   0B3F 93                 2597 	movc	a,@a+dptr
   0B40 FF                 2598 	mov	r7,a
                           2599 ;	../fb_app_out.c:803: for(n=0;n<=3;n++) {			// Ausgänge 5-8
   0B41 7E 00              2600 	mov	r6,#0x00
   0B43                    2601 00113$:
   0B43 EE                 2602 	mov	a,r6
   0B44 24 FC              2603 	add	a,#0xff - 0x03
   0B46 40 4C              2604 	jc	00116$
                           2605 ;	../fb_app_out.c:804: bwh=(bw>>(2*n))&0x03;
   0B48 EE                 2606 	mov	a,r6
   0B49 75 F0 02           2607 	mov	b,#0x02
   0B4C A4                 2608 	mul	ab
   0B4D FB                 2609 	mov	r3,a
   0B4E AC F0              2610 	mov	r4,b
   0B50 8B F0              2611 	mov	b,r3
   0B52 05 F0              2612 	inc	b
   0B54 EF                 2613 	mov	a,r7
   0B55 80 02              2614 	sjmp	00144$
   0B57                    2615 00143$:
   0B57 C3                 2616 	clr	c
   0B58 13                 2617 	rrc	a
   0B59                    2618 00144$:
   0B59 D5 F0 FB           2619 	djnz	b,00143$
   0B5C FB                 2620 	mov	r3,a
   0B5D 74 03              2621 	mov	a,#0x03
   0B5F 5B                 2622 	anl	a,r3
   0B60 FD                 2623 	mov	r5,a
                           2624 ;	../fb_app_out.c:805: if(bwh==0x01)  portbuffer=portbuffer & (0xFF-(0x01<<(n+4)));
   0B61 BD 01 17           2625 	cjne	r5,#0x01,00106$
   0B64 74 04              2626 	mov	a,#0x04
   0B66 2E                 2627 	add	a,r6
   0B67 F5 F0              2628 	mov	b,a
   0B69 05 F0              2629 	inc	b
   0B6B 74 01              2630 	mov	a,#0x01
   0B6D 80 02              2631 	sjmp	00149$
   0B6F                    2632 00147$:
   0B6F 25 E0              2633 	add	a,acc
   0B71                    2634 00149$:
   0B71 D5 F0 FB           2635 	djnz	b,00147$
   0B74 FC                 2636 	mov	r4,a
   0B75 74 FF              2637 	mov	a,#0xFF
   0B77 C3                 2638 	clr	c
   0B78 9C                 2639 	subb	a,r4
   0B79 52 3A              2640 	anl	_portbuffer,a
   0B7B                    2641 00106$:
                           2642 ;	../fb_app_out.c:806: if(bwh==0x02)  portbuffer=portbuffer | (0x01<<(n+4));
   0B7B BD 02 13           2643 	cjne	r5,#0x02,00115$
   0B7E 74 04              2644 	mov	a,#0x04
   0B80 2E                 2645 	add	a,r6
   0B81 F5 F0              2646 	mov	b,a
   0B83 05 F0              2647 	inc	b
   0B85 74 01              2648 	mov	a,#0x01
   0B87 80 02              2649 	sjmp	00154$
   0B89                    2650 00152$:
   0B89 25 E0              2651 	add	a,acc
   0B8B                    2652 00154$:
   0B8B D5 F0 FB           2653 	djnz	b,00152$
   0B8E FD                 2654 	mov	r5,a
   0B8F 42 3A              2655 	orl	_portbuffer,a
   0B91                    2656 00115$:
                           2657 ;	../fb_app_out.c:803: for(n=0;n<=3;n++) {			// Ausgänge 5-8
   0B91 0E                 2658 	inc	r6
   0B92 80 AF              2659 	sjmp	00113$
   0B94                    2660 00116$:
                           2661 ;	../fb_app_out.c:810: oldportbuffer=0; 	// auf 0 setzen, da sonst kein Vollstrom aktiviert wird
   0B94 75 3B 00           2662 	mov	_oldportbuffer,#0x00
                           2663 ;	../fb_app_out.c:811: portchanged=1;		// Post hinterlegen damit in delaytimer nach portschalten springt
   0B97 D2 01              2664 	setb	_portchanged
                           2665 ;	../fb_app_out.c:814: rm_state=portbuffer ^ eeprom[RMINV];	// Rückmeldeobjekte setzen
   0B99 90 1D F3           2666 	mov	dptr,#(_eeprom + 0x00f3)
   0B9C E4                 2667 	clr	a
   0B9D 93                 2668 	movc	a,@a+dptr
   0B9E 65 3A              2669 	xrl	a,_portbuffer
   0BA0 F5 38              2670 	mov	_rm_state,a
                           2671 ;	../fb_app_out.c:818: rm_send|=~portbuffer;// Rückmeldung nur für Objekte mit Wert 0, da Wert 1 in normalem port_schalten eh gesendet wird
   0BA2 E5 3A              2672 	mov	a,_portbuffer
   0BA4 F4                 2673 	cpl	a
   0BA5 42 3E              2674 	orl	_rm_send,a
   0BA7 22                 2675 	ret
                           2676 ;------------------------------------------------------------
                           2677 ;Allocation info for local variables in function 'restart_app'
                           2678 ;------------------------------------------------------------
                           2679 ;	../fb_app_out.c:823: void restart_app(void) 		// Alle Applikations-Parameter zurücksetzen
                           2680 ;	-----------------------------------------
                           2681 ;	 function restart_app
                           2682 ;	-----------------------------------------
   0BA8                    2683 _restart_app:
                           2684 ;	../fb_app_out.c:828: P0=0;
   0BA8 75 80 00           2685 	mov	_P0,#0x00
                           2686 ;	../fb_app_out.c:829: P0M1=0x00;		// Port 0 Modus push-pull für Ausgang
   0BAB 75 84 00           2687 	mov	_P0M1,#0x00
                           2688 ;	../fb_app_out.c:831: P0M2=0xFF;
   0BAE 75 85 FF           2689 	mov	_P0M2,#0xFF
                           2690 ;	../fb_app_out.c:839: PWM=1;
   0BB1 D2 92              2691 	setb	_P1_2
                           2692 ;	../fb_app_out.c:850: ET0=0;			// Interrupt für Timer 0 sperren
   0BB3 C2 A9              2693 	clr	_IEN0_1
                           2694 ;	../fb_app_out.c:851: IT0=1;
   0BB5 D2 88              2695 	setb	_TCON_0
                           2696 ;	../fb_app_out.c:852: zf_state=0x00;		// Zustand der Zusatzfunktionen 1-4
   0BB7 75 39 00           2697 	mov	_zf_state,#0x00
                           2698 ;	../fb_app_out.c:853: blocked=0x00;		// Ausgänge nicht gesperrt
                           2699 ;	../fb_app_out.c:854: timer=0;			// Timer-Variable, wird alle 130ms inkrementiert
                           2700 ;	../fb_app_out.c:856: logicstate=0;
   0BBA E4                 2701 	clr	a
   0BBB F5 3C              2702 	mov	_blocked,a
   0BBD F5 34              2703 	mov	_timer,a
   0BBF F5 35              2704 	mov	(_timer + 1),a
   0BC1 F5 3D              2705 	mov	_logicstate,a
                           2706 ;	../fb_app_out.c:857: delay_toggle=0;
   0BC3 C2 00              2707 	clr	_delay_toggle
                           2708 ;	../fb_app_out.c:859: EA=0;						// Interrupts sperren, damit flashen nicht unterbrochen wird
   0BC5 C2 AF              2709 	clr	_IEN0_7
                           2710 ;	../fb_app_out.c:860: START_WRITECYCLE
   0BC7 75 E4 00           2711 	mov	_FMCON,#0x00
                           2712 ;	../fb_app_out.c:861: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
   0BCA 75 E7 1D           2713 	mov	_FMADRH,#0x1D
   0BCD 75 E6 03           2714 	mov	_FMADRL,#0x03
   0BD0 75 E5 00           2715 	mov	_FMDATA,#0x00
                           2716 ;	../fb_app_out.c:862: WRITE_BYTE(0x01,0x04,0x04)
   0BD3 75 E7 1D           2717 	mov	_FMADRH,#0x1D
   0BD6 75 E6 04           2718 	mov	_FMADRL,#0x04
   0BD9 75 E5 04           2719 	mov	_FMDATA,#0x04
                           2720 ;	../fb_app_out.c:864: WRITE_BYTE(0x01,0x05,0x20)	// Devicetype 0x2060 = Jung Aktor 2138.10
   0BDC 75 E7 1D           2721 	mov	_FMADRH,#0x1D
   0BDF 75 E6 05           2722 	mov	_FMADRL,#0x05
   0BE2 75 E5 20           2723 	mov	_FMDATA,#0x20
                           2724 ;	../fb_app_out.c:865: WRITE_BYTE(0x01,0x06,0x60)	
   0BE5 75 E7 1D           2725 	mov	_FMADRH,#0x1D
   0BE8 75 E6 06           2726 	mov	_FMADRL,#0x06
   0BEB 75 E5 60           2727 	mov	_FMDATA,#0x60
                           2728 ;	../fb_app_out.c:871: WRITE_BYTE(0x01,0x07,0x01)	// Versionnumber of application programm
   0BEE 75 E7 1D           2729 	mov	_FMADRH,#0x1D
   0BF1 75 E6 07           2730 	mov	_FMADRL,#0x07
   0BF4 75 E5 01           2731 	mov	_FMDATA,#0x01
                           2732 ;	../fb_app_out.c:872: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
   0BF7 75 E7 1D           2733 	mov	_FMADRH,#0x1D
   0BFA 75 E6 0C           2734 	mov	_FMADRL,#0x0C
   0BFD 75 E5 00           2735 	mov	_FMDATA,#0x00
                           2736 ;	../fb_app_out.c:873: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
   0C00 75 E7 1D           2737 	mov	_FMADRH,#0x1D
   0C03 75 E6 0D           2738 	mov	_FMADRL,#0x0D
   0C06 75 E5 FF           2739 	mov	_FMDATA,#0xFF
                           2740 ;	../fb_app_out.c:874: WRITE_BYTE(0x01,0x12,0x9A)	// COMMSTAB Pointer
   0C09 75 E7 1D           2741 	mov	_FMADRH,#0x1D
   0C0C 75 E6 12           2742 	mov	_FMADRL,#0x12
   0C0F 75 E5 9A           2743 	mov	_FMDATA,#0x9A
                           2744 ;	../fb_app_out.c:875: STOP_WRITECYCLE
   0C12 75 E4 68           2745 	mov	_FMCON,#0x68
                           2746 ;	../fb_app_out.c:876: EA=1;						// Interrupts freigeben
   0C15 D2 AF              2747 	setb	_IEN0_7
   0C17 22                 2748 	ret
                           2749 	.area CSEG    (CODE)
                           2750 	.area CONST   (CODE)
                           2751 	.area XINIT   (CODE)
                           2752 	.area CABS    (ABS,CODE)
