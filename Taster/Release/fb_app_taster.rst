                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Sat May 12 21:23:55 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_taster
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _tele_repeat_value
                             13 	.globl _find_first_objno
                             14 	.globl _read_objflags
                             15 	.globl _send_obj_value
                             16 	.globl _gapos_in_gat
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
                            152 	.globl _delay_toggle
                            153 	.globl _timerstate
                            154 	.globl _timerbase
                            155 	.globl _timercnt
                            156 	.globl _dimmwert
                            157 	.globl _dimmcompare
                            158 	.globl _LEDSTATE
                            159 	.globl _button_buffer
                            160 	.globl _timerflags
                            161 	.globl _timer
                            162 	.globl _port_changed
                            163 	.globl _button_changed
                            164 	.globl _read_obj_value
                            165 	.globl _write_obj_value
                            166 	.globl _write_value_req
                            167 	.globl _read_value_req
                            168 	.globl _switch_led
                            169 	.globl _timer0_int
                            170 	.globl _delay_timer
                            171 	.globl _restart_app
                            172 ;--------------------------------------------------------
                            173 ; special function registers
                            174 ;--------------------------------------------------------
                            175 	.area RSEG    (ABS,DATA)
   0000                     176 	.org 0x0000
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
                            245 	.area RSEG    (ABS,DATA)
   0000                     246 	.org 0x0000
                    00D0    247 _PSW_0	=	0x00d0
                    00D1    248 _PSW_1	=	0x00d1
                    00D2    249 _PSW_2	=	0x00d2
                    00D3    250 _PSW_3	=	0x00d3
                    00D4    251 _PSW_4	=	0x00d4
                    00D5    252 _PSW_5	=	0x00d5
                    00D6    253 _PSW_6	=	0x00d6
                    00D7    254 _PSW_7	=	0x00d7
                    008F    255 _TCON_7	=	0x008f
                    008E    256 _TCON_6	=	0x008e
                    008D    257 _TCON_5	=	0x008d
                    008C    258 _TCON_4	=	0x008c
                    008B    259 _TCON_3	=	0x008b
                    008A    260 _TCON_2	=	0x008a
                    0089    261 _TCON_1	=	0x0089
                    0088    262 _TCON_0	=	0x0088
                    00AF    263 _IEN0_7	=	0x00af
                    00AE    264 _IEN0_6	=	0x00ae
                    00AD    265 _IEN0_5	=	0x00ad
                    00AC    266 _IEN0_4	=	0x00ac
                    00AB    267 _IEN0_3	=	0x00ab
                    00AA    268 _IEN0_2	=	0x00aa
                    00A9    269 _IEN0_1	=	0x00a9
                    00A8    270 _IEN0_0	=	0x00a8
                    00EA    271 _IEN1_2	=	0x00ea
                    00E9    272 _IEN1_1	=	0x00e9
                    00E8    273 _IEN1_0	=	0x00e8
                    00FE    274 _IP1_6	=	0x00fe
                    00FA    275 _IP1_2	=	0x00fa
                    00F9    276 _IP1_1	=	0x00f9
                    00F8    277 _IP1_0	=	0x00f8
                    00BE    278 _IP0_6	=	0x00be
                    00BD    279 _IP0_5	=	0x00bd
                    00BC    280 _IP0_4	=	0x00bc
                    00BB    281 _IP0_3	=	0x00bb
                    00BA    282 _IP0_2	=	0x00ba
                    00B9    283 _IP0_1	=	0x00b9
                    00B8    284 _IP0_0	=	0x00b8
                    0098    285 _SCON_0	=	0x0098
                    0099    286 _SCON_1	=	0x0099
                    009A    287 _SCON_2	=	0x009a
                    009B    288 _SCON_3	=	0x009b
                    009C    289 _SCON_4	=	0x009c
                    009D    290 _SCON_5	=	0x009d
                    009E    291 _SCON_6	=	0x009e
                    009F    292 _SCON_7	=	0x009f
                    00DE    293 _I2CON_6	=	0x00de
                    00DD    294 _I2CON_5	=	0x00dd
                    00DC    295 _I2CON_4	=	0x00dc
                    00DB    296 _I2CON_3	=	0x00db
                    00DA    297 _I2CON_2	=	0x00da
                    00D8    298 _I2CON_0	=	0x00d8
                    0080    299 _P0_0	=	0x0080
                    0081    300 _P0_1	=	0x0081
                    0082    301 _P0_2	=	0x0082
                    0083    302 _P0_3	=	0x0083
                    0084    303 _P0_4	=	0x0084
                    0085    304 _P0_5	=	0x0085
                    0086    305 _P0_6	=	0x0086
                    0087    306 _P0_7	=	0x0087
                    0090    307 _P1_0	=	0x0090
                    0091    308 _P1_1	=	0x0091
                    0092    309 _P1_2	=	0x0092
                    0093    310 _P1_3	=	0x0093
                    0094    311 _P1_4	=	0x0094
                    0095    312 _P1_5	=	0x0095
                    0096    313 _P1_6	=	0x0096
                    0097    314 _P1_7	=	0x0097
                    00B0    315 _P3_0	=	0x00b0
                    00B1    316 _P3_1	=	0x00b1
                            317 ;--------------------------------------------------------
                            318 ; overlayable register banks
                            319 ;--------------------------------------------------------
                            320 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     321 	.ds 8
                            322 ;--------------------------------------------------------
                            323 ; overlayable bit register bank
                            324 ;--------------------------------------------------------
                            325 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     326 bits:
   0023                     327 	.ds 1
                    8000    328 	b0 = bits[0]
                    8100    329 	b1 = bits[1]
                    8200    330 	b2 = bits[2]
                    8300    331 	b3 = bits[3]
                    8400    332 	b4 = bits[4]
                    8500    333 	b5 = bits[5]
                    8600    334 	b6 = bits[6]
                    8700    335 	b7 = bits[7]
                            336 ;--------------------------------------------------------
                            337 ; internal ram data
                            338 ;--------------------------------------------------------
                            339 	.area DSEG    (DATA)
   0024                     340 _timer::
   0024                     341 	.ds 2
   0026                     342 _timerflags::
   0026                     343 	.ds 2
   0028                     344 _button_buffer::
   0028                     345 	.ds 1
   0029                     346 _LEDSTATE::
   0029                     347 	.ds 1
   002A                     348 _dimmcompare::
   002A                     349 	.ds 1
   002B                     350 _dimmwert::
   002B                     351 	.ds 1
   002C                     352 _timercnt::
   002C                     353 	.ds 8
   0034                     354 _timerbase::
   0034                     355 	.ds 8
   003C                     356 _timerstate::
   003C                     357 	.ds 8
                            358 ;--------------------------------------------------------
                            359 ; overlayable items in internal ram 
                            360 ;--------------------------------------------------------
                            361 ;--------------------------------------------------------
                            362 ; indirectly addressable internal ram data
                            363 ;--------------------------------------------------------
                            364 	.area ISEG    (DATA)
                            365 ;--------------------------------------------------------
                            366 ; absolute internal ram data
                            367 ;--------------------------------------------------------
                            368 	.area IABS    (ABS,DATA)
                            369 	.area IABS    (ABS,DATA)
                            370 ;--------------------------------------------------------
                            371 ; bit data
                            372 ;--------------------------------------------------------
                            373 	.area BSEG    (BIT)
   0000                     374 _delay_toggle::
   0000                     375 	.ds 1
                            376 ;--------------------------------------------------------
                            377 ; paged external ram data
                            378 ;--------------------------------------------------------
                            379 	.area PSEG    (PAG,XDATA)
                            380 ;--------------------------------------------------------
                            381 ; external ram data
                            382 ;--------------------------------------------------------
                            383 	.area XSEG    (XDATA)
                            384 ;--------------------------------------------------------
                            385 ; absolute external ram data
                            386 ;--------------------------------------------------------
                            387 	.area XABS    (ABS,XDATA)
                            388 ;--------------------------------------------------------
                            389 ; external initialized ram data
                            390 ;--------------------------------------------------------
                            391 	.area XISEG   (XDATA)
                            392 	.area HOME    (CODE)
                            393 	.area GSINIT0 (CODE)
                            394 	.area GSINIT1 (CODE)
                            395 	.area GSINIT2 (CODE)
                            396 	.area GSINIT3 (CODE)
                            397 	.area GSINIT4 (CODE)
                            398 	.area GSINIT5 (CODE)
                            399 	.area GSINIT  (CODE)
                            400 	.area GSFINAL (CODE)
                            401 	.area CSEG    (CODE)
                            402 ;--------------------------------------------------------
                            403 ; global & static initialisations
                            404 ;--------------------------------------------------------
                            405 	.area HOME    (CODE)
                            406 	.area GSINIT  (CODE)
                            407 	.area GSFINAL (CODE)
                            408 	.area GSINIT  (CODE)
                            409 ;--------------------------------------------------------
                            410 ; Home
                            411 ;--------------------------------------------------------
                            412 	.area HOME    (CODE)
                            413 	.area HOME    (CODE)
                            414 ;--------------------------------------------------------
                            415 ; code
                            416 ;--------------------------------------------------------
                            417 	.area CSEG    (CODE)
                            418 ;------------------------------------------------------------
                            419 ;Allocation info for local variables in function 'port_changed'
                            420 ;------------------------------------------------------------
                            421 ;portval                   Allocated to registers r7 
                            422 ;n                         Allocated to registers r5 
                            423 ;oldvalue                  Allocated to registers r6 
                            424 ;buttonpattern             Allocated to registers r5 
                            425 ;------------------------------------------------------------
                            426 ;	../fb_app_taster.c:47: void port_changed(unsigned char portval)
                            427 ;	-----------------------------------------
                            428 ;	 function port_changed
                            429 ;	-----------------------------------------
   007F                     430 _port_changed:
                    0007    431 	ar7 = 0x07
                    0006    432 	ar6 = 0x06
                    0005    433 	ar5 = 0x05
                    0004    434 	ar4 = 0x04
                    0003    435 	ar3 = 0x03
                    0002    436 	ar2 = 0x02
                    0001    437 	ar1 = 0x01
                    0000    438 	ar0 = 0x00
   007F AF 82               439 	mov	r7,dpl
                            440 ;	../fb_app_taster.c:58: oldvalue=dimmcompare;
   0081 AE 2A               441 	mov	r6,_dimmcompare
                            442 ;	../fb_app_taster.c:59: do{
   0083 7D 00               443 	mov	r5,#0x00
   0085                     444 00103$:
                            445 ;	../fb_app_taster.c:60: if (oldvalue!=dimmcompare)// dimmcompare wird in der ISR T0 erhöht
   0085 EE                  446 	mov	a,r6
   0086 B5 2A 02            447 	cjne	a,_dimmcompare,00142$
   0089 80 03               448 	sjmp	00104$
   008B                     449 00142$:
                            450 ;	../fb_app_taster.c:62: n++;
   008B 0D                  451 	inc	r5
                            452 ;	../fb_app_taster.c:63: oldvalue=dimmcompare;
   008C AE 2A               453 	mov	r6,_dimmcompare
   008E                     454 00104$:
                            455 ;	../fb_app_taster.c:66: while (n<=200);				// warten auf 200 x Timer 0 (0.05ms)= 10ms
   008E ED                  456 	mov	a,r5
   008F 24 37               457 	add	a,#0xff - 0xC8
   0091 50 F2               458 	jnc	00103$
                            459 ;	../fb_app_taster.c:67: if ((PORT & 0x0F) == portval) {
   0093 74 0F               460 	mov	a,#0x0F
   0095 55 80               461 	anl	a,_P0
   0097 FE                  462 	mov	r6,a
   0098 B5 07 53            463 	cjne	a,ar7,00118$
                            464 ;	../fb_app_taster.c:68: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
   009B 7E 00               465 	mov	r6,#0x00
   009D                     466 00114$:
   009D BE 04 00            467 	cjne	r6,#0x04,00146$
   00A0                     468 00146$:
   00A0 50 4A               469 	jnc	00117$
                            470 ;	../fb_app_taster.c:69: buttonpattern=1<<n;
   00A2 8E F0               471 	mov	b,r6
   00A4 05 F0               472 	inc	b
   00A6 74 01               473 	mov	a,#0x01
   00A8 80 02               474 	sjmp	00150$
   00AA                     475 00148$:
   00AA 25 E0               476 	add	a,acc
   00AC                     477 00150$:
   00AC D5 F0 FB            478 	djnz	b,00148$
                            479 ;	../fb_app_taster.c:70: if ((portval & buttonpattern) && !(button_buffer & buttonpattern)) button_changed(n,0);	// Taster losgelassen
   00AF FD                  480 	mov	r5,a
   00B0 5F                  481 	anl	a,r7
   00B1 60 1B               482 	jz	00107$
   00B3 ED                  483 	mov	a,r5
   00B4 55 28               484 	anl	a,_button_buffer
   00B6 70 16               485 	jnz	00107$
   00B8 C2 F0               486 	clr	b[0]
   00BA C0 07               487 	push	ar7
   00BC C0 06               488 	push	ar6
   00BE C0 05               489 	push	ar5
   00C0 85 F0 23            490 	mov	bits,b
   00C3 8E 82               491 	mov	dpl,r6
   00C5 12 00 EF            492 	lcall	_button_changed
   00C8 D0 05               493 	pop	ar5
   00CA D0 06               494 	pop	ar6
   00CC D0 07               495 	pop	ar7
   00CE                     496 00107$:
                            497 ;	../fb_app_taster.c:71: if (!(portval & buttonpattern) && (button_buffer & buttonpattern)) button_changed(n,1);	// Taster gedrueckt
   00CE ED                  498 	mov	a,r5
   00CF 5F                  499 	anl	a,r7
   00D0 70 17               500 	jnz	00116$
   00D2 ED                  501 	mov	a,r5
   00D3 55 28               502 	anl	a,_button_buffer
   00D5 60 12               503 	jz	00116$
   00D7 D2 F0               504 	setb	b[0]
   00D9 C0 07               505 	push	ar7
   00DB C0 06               506 	push	ar6
   00DD 85 F0 23            507 	mov	bits,b
   00E0 8E 82               508 	mov	dpl,r6
   00E2 12 00 EF            509 	lcall	_button_changed
   00E5 D0 06               510 	pop	ar6
   00E7 D0 07               511 	pop	ar7
   00E9                     512 00116$:
                            513 ;	../fb_app_taster.c:68: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
   00E9 0E                  514 	inc	r6
   00EA 80 B1               515 	sjmp	00114$
   00EC                     516 00117$:
                            517 ;	../fb_app_taster.c:73: button_buffer=portval;	// aktuellen port wert in buffer fuer naechsten Vergleich uebernehmen
   00EC 8F 28               518 	mov	_button_buffer,r7
   00EE                     519 00118$:
   00EE 22                  520 	ret
                            521 ;------------------------------------------------------------
                            522 ;Allocation info for local variables in function 'button_changed'
                            523 ;------------------------------------------------------------
                            524 ;buttonval                 Allocated to registers b0 
                            525 ;buttonno                  Allocated to stack - _bp +1
                            526 ;command                   Allocated to registers r6 
                            527 ;bedienung                 Allocated to registers r5 
                            528 ;objval                    Allocated to registers b1 
                            529 ;------------------------------------------------------------
                            530 ;	../fb_app_taster.c:88: void button_changed(unsigned char buttonno, __bit buttonval)
                            531 ;	-----------------------------------------
                            532 ;	 function button_changed
                            533 ;	-----------------------------------------
   00EF                     534 _button_changed:
   00EF C0 14               535 	push	_bp
   00F1 85 81 14            536 	mov	_bp,sp
   00F4 C0 82               537 	push	dpl
                            538 ;	../fb_app_taster.c:91: __bit objval=0;
   00F6 C2 19               539 	clr	b1
                            540 ;	../fb_app_taster.c:93: switch ((eeprom[FUNCTION+(buttonno>>1)] >> ((buttonno & 0x01)*4)) & 0x0F) {		// Funktion des Tasters
   00F8 A8 14               541 	mov	r0,_bp
   00FA 08                  542 	inc	r0
   00FB E6                  543 	mov	a,@r0
   00FC C3                  544 	clr	c
   00FD 13                  545 	rrc	a
   00FE 24 CF               546 	add	a,#0xCF
   0100 90 1D 00            547 	mov	dptr,#_eeprom
   0103 93                  548 	movc	a,@a+dptr
   0104 FE                  549 	mov	r6,a
   0105 A8 14               550 	mov	r0,_bp
   0107 08                  551 	inc	r0
   0108 74 01               552 	mov	a,#0x01
   010A 56                  553 	anl	a,@r0
   010B 75 F0 04            554 	mov	b,#0x04
   010E A4                  555 	mul	ab
   010F F5 F0               556 	mov	b,a
   0111 05 F0               557 	inc	b
   0113 EE                  558 	mov	a,r6
   0114 80 02               559 	sjmp	00252$
   0116                     560 00251$:
   0116 C3                  561 	clr	c
   0117 13                  562 	rrc	a
   0118                     563 00252$:
   0118 D5 F0 FB            564 	djnz	b,00251$
   011B 54 0F               565 	anl	a,#0x0F
   011D FE                  566 	mov	r6,a
   011E BE 01 02            567 	cjne	r6,#0x01,00253$
   0121 80 15               568 	sjmp	00101$
   0123                     569 00253$:
   0123 BE 02 03            570 	cjne	r6,#0x02,00254$
   0126 02 01 DB            571 	ljmp	00111$
   0129                     572 00254$:
   0129 BE 03 03            573 	cjne	r6,#0x03,00255$
   012C 02 03 72            574 	ljmp	00139$
   012F                     575 00255$:
   012F BE 04 03            576 	cjne	r6,#0x04,00256$
   0132 02 04 47            577 	ljmp	00146$
   0135                     578 00256$:
   0135 02 07 07            579 	ljmp	00181$
                            580 ;	../fb_app_taster.c:98: case 1:
   0138                     581 00101$:
                            582 ;	../fb_app_taster.c:99: if (buttonval) command = (((eeprom[COMMAND+(buttonno*4)]) >> 6) & 0x03);	// Befehl beim druecken
   0138 30 18 18            583 	jnb	b0,00103$
   013B A8 14               584 	mov	r0,_bp
   013D 08                  585 	inc	r0
   013E E6                  586 	mov	a,@r0
   013F 25 E0               587 	add	a,acc
   0141 25 E0               588 	add	a,acc
   0143 24 D3               589 	add	a,#0xD3
   0145 90 1D 00            590 	mov	dptr,#_eeprom
   0148 93                  591 	movc	a,@a+dptr
   0149 23                  592 	rl	a
   014A 23                  593 	rl	a
   014B 54 03               594 	anl	a,#0x03
   014D FE                  595 	mov	r6,a
   014E 53 06 03            596 	anl	ar6,#0x03
   0151 80 16               597 	sjmp	00104$
   0153                     598 00103$:
                            599 ;	../fb_app_taster.c:100: else command = (((eeprom[COMMAND+(buttonno*4)]) >> 4) & 0x03);				// Befehl beim loslassen
   0153 A8 14               600 	mov	r0,_bp
   0155 08                  601 	inc	r0
   0156 E6                  602 	mov	a,@r0
   0157 25 E0               603 	add	a,acc
   0159 25 E0               604 	add	a,acc
   015B 24 D3               605 	add	a,#0xD3
   015D 90 1D 00            606 	mov	dptr,#_eeprom
   0160 93                  607 	movc	a,@a+dptr
   0161 C4                  608 	swap	a
   0162 54 0F               609 	anl	a,#0x0F
   0164 FD                  610 	mov	r5,a
   0165 74 03               611 	mov	a,#0x03
   0167 5D                  612 	anl	a,r5
   0168 FE                  613 	mov	r6,a
   0169                     614 00104$:
                            615 ;	../fb_app_taster.c:101: switch (command) {	// Befehl des Tasters bei Schalten
   0169 BE 01 02            616 	cjne	r6,#0x01,00258$
   016C 80 0A               617 	sjmp	00105$
   016E                     618 00258$:
   016E BE 02 02            619 	cjne	r6,#0x02,00259$
   0171 80 09               620 	sjmp	00106$
   0173                     621 00259$:
                            622 ;	../fb_app_taster.c:102: case 1:		// EIN
   0173 BE 03 26            623 	cjne	r6,#0x03,00108$
   0176 80 22               624 	sjmp	00107$
   0178                     625 00105$:
                            626 ;	../fb_app_taster.c:103: objval=1;
   0178 D2 19               627 	setb	b1
                            628 ;	../fb_app_taster.c:104: break;
                            629 ;	../fb_app_taster.c:105: case 2:		// UM
   017A 80 20               630 	sjmp	00108$
   017C                     631 00106$:
                            632 ;	../fb_app_taster.c:106: objval = read_obj_value(buttonno)&0x01;
   017C A8 14               633 	mov	r0,_bp
   017E 08                  634 	inc	r0
   017F 86 82               635 	mov	dpl,@r0
   0181 C0 06               636 	push	ar6
   0183 12 07 0C            637 	lcall	_read_obj_value
   0186 AA 82               638 	mov	r2,dpl
   0188 AB 83               639 	mov	r3,dph
   018A AC F0               640 	mov	r4,b
   018C FD                  641 	mov	r5,a
   018D D0 06               642 	pop	ar6
   018F EA                  643 	mov	a,r2
   0190 54 01               644 	anl	a,#0x01
   0192 FA                  645 	mov	r2,a
   0193 24 FF               646 	add	a,#0xff
                            647 ;	../fb_app_taster.c:107: objval = !objval;
   0195 B3                  648 	cpl	c
   0196 92 19               649 	mov	b1,c
                            650 ;	../fb_app_taster.c:108: break;
                            651 ;	../fb_app_taster.c:109: case 3:		// AUS
   0198 80 02               652 	sjmp	00108$
   019A                     653 00107$:
                            654 ;	../fb_app_taster.c:110: objval=0;
   019A C2 19               655 	clr	b1
                            656 ;	../fb_app_taster.c:112: }
   019C                     657 00108$:
                            658 ;	../fb_app_taster.c:113: if (command) {	// nur wenn EIN, UM oder AUS (0=keine Funktion)
   019C EE                  659 	mov	a,r6
   019D 70 03               660 	jnz	00261$
   019F 02 07 07            661 	ljmp	00181$
   01A2                     662 00261$:
                            663 ;	../fb_app_taster.c:115: write_obj_value(buttonno,objval);
   01A2 A2 19               664 	mov	c,b1
   01A4 E4                  665 	clr	a
   01A5 33                  666 	rlc	a
   01A6 FD                  667 	mov	r5,a
   01A7 7E 00               668 	mov	r6,#0x00
   01A9 C0 23               669 	push	bits
   01AB C0 05               670 	push	ar5
   01AD C0 06               671 	push	ar6
   01AF A8 14               672 	mov	r0,_bp
   01B1 08                  673 	inc	r0
   01B2 86 82               674 	mov	dpl,@r0
   01B4 12 07 4C            675 	lcall	_write_obj_value
   01B7 15 81               676 	dec	sp
   01B9 15 81               677 	dec	sp
   01BB D0 23               678 	pop	bits
                            679 ;	../fb_app_taster.c:116: send_obj_value(buttonno);
   01BD A8 14               680 	mov	r0,_bp
   01BF 08                  681 	inc	r0
   01C0 86 82               682 	mov	dpl,@r0
   01C2 C0 23               683 	push	bits
   01C4 12 18 B9            684 	lcall	_send_obj_value
   01C7 D0 23               685 	pop	bits
                            686 ;	../fb_app_taster.c:118: switch_led(buttonno, objval);		// LED schalten
   01C9 A2 19               687 	mov	c,b1
   01CB 92 F0               688 	mov	b[0],c
   01CD 85 F0 23            689 	mov	bits,b
   01D0 A8 14               690 	mov	r0,_bp
   01D2 08                  691 	inc	r0
   01D3 86 82               692 	mov	dpl,@r0
   01D5 12 09 5B            693 	lcall	_switch_led
                            694 ;	../fb_app_taster.c:120: break;
   01D8 02 07 07            695 	ljmp	00181$
                            696 ;	../fb_app_taster.c:126: case 2:
   01DB                     697 00111$:
                            698 ;	../fb_app_taster.c:127: bedienung=eeprom[COMMAND+(buttonno*4)]&0x30;
   01DB A8 14               699 	mov	r0,_bp
   01DD 08                  700 	inc	r0
   01DE E6                  701 	mov	a,@r0
   01DF 25 E0               702 	add	a,acc
   01E1 25 E0               703 	add	a,acc
   01E3 FE                  704 	mov	r6,a
   01E4 24 D3               705 	add	a,#0xD3
   01E6 90 1D 00            706 	mov	dptr,#_eeprom
   01E9 93                  707 	movc	a,@a+dptr
   01EA FD                  708 	mov	r5,a
   01EB 53 05 30            709 	anl	ar5,#0x30
                            710 ;	../fb_app_taster.c:128: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
   01EE 20 18 03            711 	jb	b0,00262$
   01F1 02 02 99            712 	ljmp	00137$
   01F4                     713 00262$:
                            714 ;	../fb_app_taster.c:129: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
   01F4 74 D3               715 	mov	a,#0xD3
   01F6 2E                  716 	add	a,r6
   01F7 90 1D 00            717 	mov	dptr,#_eeprom
   01FA 93                  718 	movc	a,@a+dptr
   01FB FC                  719 	mov	r4,a
   01FC 30 E2 15            720 	jnb	acc.2,00113$
   01FF C2 F0               721 	clr	b[0]
   0201 C0 06               722 	push	ar6
   0203 C0 05               723 	push	ar5
   0205 85 F0 23            724 	mov	bits,b
   0208 A8 14               725 	mov	r0,_bp
   020A 08                  726 	inc	r0
   020B 86 82               727 	mov	dpl,@r0
   020D 12 09 5B            728 	lcall	_switch_led
   0210 D0 05               729 	pop	ar5
   0212 D0 06               730 	pop	ar6
   0214                     731 00113$:
                            732 ;	../fb_app_taster.c:130: timercnt[buttonno+4]=eeprom[0xD6+(buttonno*4)];	// Faktor Dauer			
   0214 A8 14               733 	mov	r0,_bp
   0216 08                  734 	inc	r0
   0217 74 04               735 	mov	a,#0x04
   0219 26                  736 	add	a,@r0
   021A FC                  737 	mov	r4,a
   021B 24 2C               738 	add	a,#_timercnt
   021D F9                  739 	mov	r1,a
   021E 74 D6               740 	mov	a,#0xD6
   0220 2E                  741 	add	a,r6
   0221 90 1D 00            742 	mov	dptr,#_eeprom
   0224 93                  743 	movc	a,@a+dptr
   0225 FB                  744 	mov	r3,a
   0226 F7                  745 	mov	@r1,a
                            746 ;	../fb_app_taster.c:145: */			timerbase[buttonno+4]=(eeprom[0xD5+(buttonno*4)]&0x70)>>4;// Basis Dauer zwischen kurz und langzeit
   0227 EC                  747 	mov	a,r4
   0228 24 34               748 	add	a,#_timerbase
   022A F9                  749 	mov	r1,a
   022B 74 D5               750 	mov	a,#0xD5
   022D 2E                  751 	add	a,r6
   022E 90 1D 00            752 	mov	dptr,#_eeprom
   0231 93                  753 	movc	a,@a+dptr
   0232 54 70               754 	anl	a,#0x70
   0234 C4                  755 	swap	a
   0235 54 0F               756 	anl	a,#0x0F
   0237 FC                  757 	mov	r4,a
   0238 F7                  758 	mov	@r1,a
                            759 ;	../fb_app_taster.c:146: if (bedienung==0x20) {// umschalten der dimmrichtung...
   0239 BD 20 1F            760 	cjne	r5,#0x20,00118$
                            761 ;	../fb_app_taster.c:147: if(read_obj_value(buttonno+8)&0x08)bedienung=0x30;//wenn heller, dann dunkler
   023C C0 06               762 	push	ar6
   023E A8 14               763 	mov	r0,_bp
   0240 08                  764 	inc	r0
   0241 74 08               765 	mov	a,#0x08
   0243 26                  766 	add	a,@r0
   0244 F5 82               767 	mov	dpl,a
   0246 12 07 0C            768 	lcall	_read_obj_value
   0249 AA 82               769 	mov	r2,dpl
   024B AB 83               770 	mov	r3,dph
   024D AC F0               771 	mov	r4,b
   024F EA                  772 	mov	a,r2
   0250 D0 06               773 	pop	ar6
   0252 30 E3 04            774 	jnb	acc.3,00115$
   0255 7D 30               775 	mov	r5,#0x30
   0257 80 02               776 	sjmp	00118$
   0259                     777 00115$:
                            778 ;	../fb_app_taster.c:148: else bedienung=0x10;//sonst heller
   0259 7D 10               779 	mov	r5,#0x10
   025B                     780 00118$:
                            781 ;	../fb_app_taster.c:150: if (bedienung==0x10){	// heller
   025B BD 10 19            782 	cjne	r5,#0x10,00120$
                            783 ;	../fb_app_taster.c:151: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0xF0)>>4)+0x20;	// dimmen
   025E A8 14               784 	mov	r0,_bp
   0260 08                  785 	inc	r0
   0261 74 04               786 	mov	a,#0x04
   0263 26                  787 	add	a,@r0
   0264 24 3C               788 	add	a,#_timerstate
   0266 F9                  789 	mov	r1,a
   0267 74 D4               790 	mov	a,#0xD4
   0269 2E                  791 	add	a,r6
   026A 90 1D 00            792 	mov	dptr,#_eeprom
   026D 93                  793 	movc	a,@a+dptr
   026E 54 F0               794 	anl	a,#0xF0
   0270 C4                  795 	swap	a
   0271 54 0F               796 	anl	a,#0x0F
   0273 FC                  797 	mov	r4,a
   0274 24 20               798 	add	a,#0x20
   0276 F7                  799 	mov	@r1,a
   0277                     800 00120$:
                            801 ;	../fb_app_taster.c:153: if(bedienung==0x30){	//  dunkler
   0277 BD 30 02            802 	cjne	r5,#0x30,00269$
   027A 80 03               803 	sjmp	00270$
   027C                     804 00269$:
   027C 02 07 07            805 	ljmp	00181$
   027F                     806 00270$:
                            807 ;	../fb_app_taster.c:154: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0x0F))+0x20;	// dimmen
   027F A8 14               808 	mov	r0,_bp
   0281 08                  809 	inc	r0
   0282 74 04               810 	mov	a,#0x04
   0284 26                  811 	add	a,@r0
   0285 24 3C               812 	add	a,#_timerstate
   0287 F9                  813 	mov	r1,a
   0288 74 D4               814 	mov	a,#0xD4
   028A 2E                  815 	add	a,r6
   028B 90 1D 00            816 	mov	dptr,#_eeprom
   028E 93                  817 	movc	a,@a+dptr
   028F FC                  818 	mov	r4,a
   0290 74 0F               819 	mov	a,#0x0F
   0292 5C                  820 	anl	a,r4
   0293 24 20               821 	add	a,#0x20
   0295 F7                  822 	mov	@r1,a
   0296 02 07 07            823 	ljmp	00181$
   0299                     824 00137$:
                            825 ;	../fb_app_taster.c:160: if ((timerstate[buttonno+4]& 0xF0)==0x20) { // wenn delaytimer noch lauft, dann Schalten, also EIS1 telegramm senden
   0299 A8 14               826 	mov	r0,_bp
   029B 08                  827 	inc	r0
   029C 74 04               828 	mov	a,#0x04
   029E 26                  829 	add	a,@r0
   029F 24 3C               830 	add	a,#_timerstate
   02A1 F9                  831 	mov	r1,a
   02A2 87 04               832 	mov	ar4,@r1
   02A4 53 04 F0            833 	anl	ar4,#0xF0
   02A7 BC 20 71            834 	cjne	r4,#0x20,00134$
                            835 ;	../fb_app_taster.c:161: if(bedienung==0x20) { //umschalten des Schaltzustandes
   02AA BD 20 19            836 	cjne	r5,#0x20,00127$
                            837 ;	../fb_app_taster.c:162: if(read_obj_value(buttonno)& 0x01)bedienung=0x30;//wenn ein, dann aus
   02AD A8 14               838 	mov	r0,_bp
   02AF 08                  839 	inc	r0
   02B0 86 82               840 	mov	dpl,@r0
   02B2 12 07 0C            841 	lcall	_read_obj_value
   02B5 AA 82               842 	mov	r2,dpl
   02B7 AB 83               843 	mov	r3,dph
   02B9 AC F0               844 	mov	r4,b
   02BB FF                  845 	mov	r7,a
   02BC EA                  846 	mov	a,r2
   02BD 30 E0 04            847 	jnb	acc.0,00124$
   02C0 7D 30               848 	mov	r5,#0x30
   02C2 80 02               849 	sjmp	00127$
   02C4                     850 00124$:
                            851 ;	../fb_app_taster.c:163: else bedienung=0x10; // sonst ein
   02C4 7D 10               852 	mov	r5,#0x10
   02C6                     853 00127$:
                            854 ;	../fb_app_taster.c:165: if(bedienung== 0x10){	//  ein
   02C6 BD 10 2A            855 	cjne	r5,#0x10,00129$
                            856 ;	../fb_app_taster.c:166: write_obj_value(buttonno,1);
   02C9 74 01               857 	mov	a,#0x01
   02CB C0 E0               858 	push	acc
   02CD E4                  859 	clr	a
   02CE C0 E0               860 	push	acc
   02D0 A8 14               861 	mov	r0,_bp
   02D2 08                  862 	inc	r0
   02D3 86 82               863 	mov	dpl,@r0
   02D5 12 07 4C            864 	lcall	_write_obj_value
   02D8 15 81               865 	dec	sp
   02DA 15 81               866 	dec	sp
                            867 ;	../fb_app_taster.c:167: send_obj_value(buttonno);
   02DC A8 14               868 	mov	r0,_bp
   02DE 08                  869 	inc	r0
   02DF 86 82               870 	mov	dpl,@r0
   02E1 12 18 B9            871 	lcall	_send_obj_value
                            872 ;	../fb_app_taster.c:168: switch_led(buttonno,1);
   02E4 D2 F0               873 	setb	b[0]
   02E6 85 F0 23            874 	mov	bits,b
   02E9 A8 14               875 	mov	r0,_bp
   02EB 08                  876 	inc	r0
   02EC 86 82               877 	mov	dpl,@r0
   02EE 12 09 5B            878 	lcall	_switch_led
   02F1 80 6A               879 	sjmp	00135$
   02F3                     880 00129$:
                            881 ;	../fb_app_taster.c:171: write_obj_value(buttonno,0);
   02F3 E4                  882 	clr	a
   02F4 C0 E0               883 	push	acc
   02F6 C0 E0               884 	push	acc
   02F8 A8 14               885 	mov	r0,_bp
   02FA 08                  886 	inc	r0
   02FB 86 82               887 	mov	dpl,@r0
   02FD 12 07 4C            888 	lcall	_write_obj_value
   0300 15 81               889 	dec	sp
   0302 15 81               890 	dec	sp
                            891 ;	../fb_app_taster.c:172: send_obj_value(buttonno);
   0304 A8 14               892 	mov	r0,_bp
   0306 08                  893 	inc	r0
   0307 86 82               894 	mov	dpl,@r0
   0309 12 18 B9            895 	lcall	_send_obj_value
                            896 ;	../fb_app_taster.c:173: switch_led(buttonno,0);
   030C C2 F0               897 	clr	b[0]
   030E 85 F0 23            898 	mov	bits,b
   0311 A8 14               899 	mov	r0,_bp
   0313 08                  900 	inc	r0
   0314 86 82               901 	mov	dpl,@r0
   0316 12 09 5B            902 	lcall	_switch_led
   0319 80 42               903 	sjmp	00135$
   031B                     904 00134$:
                            905 ;	../fb_app_taster.c:177: write_obj_value(buttonno+8,read_obj_value(buttonno+8)& 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
   031B A8 14               906 	mov	r0,_bp
   031D 08                  907 	inc	r0
   031E 74 08               908 	mov	a,#0x08
   0320 26                  909 	add	a,@r0
   0321 FF                  910 	mov	r7,a
   0322 F5 82               911 	mov	dpl,a
   0324 C0 07               912 	push	ar7
   0326 C0 06               913 	push	ar6
   0328 12 07 0C            914 	lcall	_read_obj_value
   032B AA 82               915 	mov	r2,dpl
   032D D0 06               916 	pop	ar6
   032F D0 07               917 	pop	ar7
   0331 53 02 08            918 	anl	ar2,#0x08
   0334 7B 00               919 	mov	r3,#0x00
   0336 C0 06               920 	push	ar6
   0338 C0 02               921 	push	ar2
   033A C0 03               922 	push	ar3
   033C 8F 82               923 	mov	dpl,r7
   033E 12 07 4C            924 	lcall	_write_obj_value
   0341 15 81               925 	dec	sp
   0343 15 81               926 	dec	sp
   0345 D0 06               927 	pop	ar6
                            928 ;	../fb_app_taster.c:178: if ((eeprom[COMMAND+(buttonno*4)] & 0x40) == 0) {	// ... natuerlich nur wenn parameter dementsprechend (0=senden!!!)
   0347 74 D3               929 	mov	a,#0xD3
   0349 2E                  930 	add	a,r6
   034A 90 1D 00            931 	mov	dptr,#_eeprom
   034D 93                  932 	movc	a,@a+dptr
   034E FF                  933 	mov	r7,a
   034F 20 E6 0B            934 	jb	acc.6,00135$
                            935 ;	../fb_app_taster.c:179: send_obj_value(buttonno+8);// Stop Telegramm senden
   0352 A8 14               936 	mov	r0,_bp
   0354 08                  937 	inc	r0
   0355 74 08               938 	mov	a,#0x08
   0357 26                  939 	add	a,@r0
   0358 F5 82               940 	mov	dpl,a
   035A 12 18 B9            941 	lcall	_send_obj_value
   035D                     942 00135$:
                            943 ;	../fb_app_taster.c:182: timercnt[buttonno+4]=0;
   035D A8 14               944 	mov	r0,_bp
   035F 08                  945 	inc	r0
   0360 74 04               946 	mov	a,#0x04
   0362 26                  947 	add	a,@r0
   0363 FF                  948 	mov	r7,a
   0364 24 2C               949 	add	a,#_timercnt
   0366 F8                  950 	mov	r0,a
   0367 76 00               951 	mov	@r0,#0x00
                            952 ;	../fb_app_taster.c:183: timerstate[buttonno+4]=0;
   0369 EF                  953 	mov	a,r7
   036A 24 3C               954 	add	a,#_timerstate
   036C F8                  955 	mov	r0,a
   036D 76 00               956 	mov	@r0,#0x00
                            957 ;	../fb_app_taster.c:185: break;
   036F 02 07 07            958 	ljmp	00181$
                            959 ;	../fb_app_taster.c:191: case 3:
   0372                     960 00139$:
                            961 ;	../fb_app_taster.c:192: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
   0372 20 18 03            962 	jb	b0,00279$
   0375 02 03 FA            963 	ljmp	00144$
   0378                     964 00279$:
                            965 ;	../fb_app_taster.c:194: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
   0378 A8 14               966 	mov	r0,_bp
   037A 08                  967 	inc	r0
   037B E6                  968 	mov	a,@r0
   037C 25 E0               969 	add	a,acc
   037E 25 E0               970 	add	a,acc
   0380 FF                  971 	mov	r7,a
   0381 24 D3               972 	add	a,#0xD3
   0383 FE                  973 	mov	r6,a
   0384 F5 82               974 	mov	dpl,a
   0386 75 83 1D            975 	mov	dph,#(_eeprom >> 8)
   0389 E4                  976 	clr	a
   038A 93                  977 	movc	a,@a+dptr
   038B 54 10               978 	anl	a,#0x10
   038D C4                  979 	swap	a
   038E 54 0F               980 	anl	a,#0x0F
   0390 FD                  981 	mov	r5,a
   0391 7C 00               982 	mov	r4,#0x00
   0393 C0 07               983 	push	ar7
   0395 C0 06               984 	push	ar6
   0397 C0 05               985 	push	ar5
   0399 C0 04               986 	push	ar4
   039B A8 14               987 	mov	r0,_bp
   039D 08                  988 	inc	r0
   039E 86 82               989 	mov	dpl,@r0
   03A0 12 07 4C            990 	lcall	_write_obj_value
   03A3 15 81               991 	dec	sp
   03A5 15 81               992 	dec	sp
                            993 ;	../fb_app_taster.c:195: send_obj_value(buttonno);
   03A7 A8 14               994 	mov	r0,_bp
   03A9 08                  995 	inc	r0
   03AA 86 82               996 	mov	dpl,@r0
   03AC 12 18 B9            997 	lcall	_send_obj_value
                            998 ;	../fb_app_taster.c:196: switch_led(buttonno,1);	// Status-LED schalten (hier nur nie,immer,betätigung)
   03AF D2 F0               999 	setb	b[0]
   03B1 85 F0 23           1000 	mov	bits,b
   03B4 A8 14              1001 	mov	r0,_bp
   03B6 08                 1002 	inc	r0
   03B7 86 82              1003 	mov	dpl,@r0
   03B9 12 09 5B           1004 	lcall	_switch_led
   03BC D0 06              1005 	pop	ar6
   03BE D0 07              1006 	pop	ar7
                           1007 ;	../fb_app_taster.c:197: timercnt[buttonno+4]=eeprom[0xD5+(buttonno*4)];	// Faktor Dauer			
   03C0 A8 14              1008 	mov	r0,_bp
   03C2 08                 1009 	inc	r0
   03C3 74 04              1010 	mov	a,#0x04
   03C5 26                 1011 	add	a,@r0
   03C6 FD                 1012 	mov	r5,a
   03C7 24 2C              1013 	add	a,#_timercnt
   03C9 F9                 1014 	mov	r1,a
   03CA 74 D5              1015 	mov	a,#0xD5
   03CC 2F                 1016 	add	a,r7
   03CD 90 1D 00           1017 	mov	dptr,#_eeprom
   03D0 93                 1018 	movc	a,@a+dptr
   03D1 FC                 1019 	mov	r4,a
   03D2 F7                 1020 	mov	@r1,a
                           1021 ;	../fb_app_taster.c:212: */			timerbase[buttonno+4]=(eeprom[0xD4+(buttonno*4)]&0x06)*2;// Basis Dauer zwischen kurz und langzeit
   03D3 ED                 1022 	mov	a,r5
   03D4 24 34              1023 	add	a,#_timerbase
   03D6 F9                 1024 	mov	r1,a
   03D7 74 D4              1025 	mov	a,#0xD4
   03D9 2F                 1026 	add	a,r7
   03DA 90 1D 00           1027 	mov	dptr,#_eeprom
   03DD 93                 1028 	movc	a,@a+dptr
   03DE 54 06              1029 	anl	a,#0x06
   03E0 25 E0              1030 	add	a,acc
   03E2 F7                 1031 	mov	@r1,a
                           1032 ;	../fb_app_taster.c:213: timerstate[buttonno+4]=((eeprom[0xD3+(buttonno*4)]&0x10)>>4)+0x30;
   03E3 ED                 1033 	mov	a,r5
   03E4 24 3C              1034 	add	a,#_timerstate
   03E6 F9                 1035 	mov	r1,a
   03E7 8E 82              1036 	mov	dpl,r6
   03E9 75 83 1D           1037 	mov	dph,#(_eeprom >> 8)
   03EC E4                 1038 	clr	a
   03ED 93                 1039 	movc	a,@a+dptr
   03EE 54 10              1040 	anl	a,#0x10
   03F0 C4                 1041 	swap	a
   03F1 54 0F              1042 	anl	a,#0x0F
   03F3 FF                 1043 	mov	r7,a
   03F4 24 30              1044 	add	a,#0x30
   03F6 F7                 1045 	mov	@r1,a
   03F7 02 07 07           1046 	ljmp	00181$
   03FA                    1047 00144$:
                           1048 ;	../fb_app_taster.c:217: if (timerstate[buttonno+4] == 0x40) {//innerhalb T2
   03FA A8 14              1049 	mov	r0,_bp
   03FC 08                 1050 	inc	r0
   03FD 74 04              1051 	mov	a,#0x04
   03FF 26                 1052 	add	a,@r0
   0400 24 3C              1053 	add	a,#_timerstate
   0402 F9                 1054 	mov	r1,a
   0403 87 07              1055 	mov	ar7,@r1
   0405 BF 40 31           1056 	cjne	r7,#0x40,00141$
                           1057 ;	../fb_app_taster.c:218: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
   0408 A8 14              1058 	mov	r0,_bp
   040A 08                 1059 	inc	r0
   040B E6                 1060 	mov	a,@r0
   040C 25 E0              1061 	add	a,acc
   040E 25 E0              1062 	add	a,acc
   0410 24 D3              1063 	add	a,#0xD3
   0412 90 1D 00           1064 	mov	dptr,#_eeprom
   0415 93                 1065 	movc	a,@a+dptr
   0416 54 10              1066 	anl	a,#0x10
   0418 C4                 1067 	swap	a
   0419 54 0F              1068 	anl	a,#0x0F
   041B FF                 1069 	mov	r7,a
   041C 7E 00              1070 	mov	r6,#0x00
   041E C0 07              1071 	push	ar7
   0420 C0 06              1072 	push	ar6
   0422 A8 14              1073 	mov	r0,_bp
   0424 08                 1074 	inc	r0
   0425 86 82              1075 	mov	dpl,@r0
   0427 12 07 4C           1076 	lcall	_write_obj_value
   042A 15 81              1077 	dec	sp
   042C 15 81              1078 	dec	sp
                           1079 ;	../fb_app_taster.c:219: send_obj_value(buttonno);
   042E A8 14              1080 	mov	r0,_bp
   0430 08                 1081 	inc	r0
   0431 86 82              1082 	mov	dpl,@r0
   0433 12 18 B9           1083 	lcall	_send_obj_value
   0436 02 07 07           1084 	ljmp	00181$
   0439                    1085 00141$:
                           1086 ;	../fb_app_taster.c:223: timerstate[buttonno+4]=0;// T2 bereits abgelaufen
   0439 A8 14              1087 	mov	r0,_bp
   043B 08                 1088 	inc	r0
   043C 74 04              1089 	mov	a,#0x04
   043E 26                 1090 	add	a,@r0
   043F 24 3C              1091 	add	a,#_timerstate
   0441 F8                 1092 	mov	r0,a
   0442 76 00              1093 	mov	@r0,#0x00
                           1094 ;	../fb_app_taster.c:226: break;
   0444 02 07 07           1095 	ljmp	00181$
                           1096 ;	../fb_app_taster.c:232: case 4:	// Wertgeber..
   0447                    1097 00146$:
                           1098 ;	../fb_app_taster.c:233: switch ((eeprom[0xD3+(buttonno*4)]>>4)& 0x07){// Art des Wertgebers holen
   0447 A8 14              1099 	mov	r0,_bp
   0449 08                 1100 	inc	r0
   044A E6                 1101 	mov	a,@r0
   044B 25 E0              1102 	add	a,acc
   044D 25 E0              1103 	add	a,acc
   044F FF                 1104 	mov	r7,a
   0450 24 D3              1105 	add	a,#0xD3
   0452 90 1D 00           1106 	mov	dptr,#_eeprom
   0455 93                 1107 	movc	a,@a+dptr
   0456 C4                 1108 	swap	a
   0457 54 07              1109 	anl	a,#(0x0F&0x07)
   0459 FE                 1110 	mov	r6,a
   045A 24 FB              1111 	add	a,#0xff - 0x04
   045C 50 03              1112 	jnc	00282$
   045E 02 07 07           1113 	ljmp	00181$
   0461                    1114 00282$:
   0461 EE                 1115 	mov	a,r6
   0462 2E                 1116 	add	a,r6
   0463 2E                 1117 	add	a,r6
   0464 90 04 68           1118 	mov	dptr,#00283$
   0467 73                 1119 	jmp	@a+dptr
   0468                    1120 00283$:
   0468 02 04 77           1121 	ljmp	00147$
   046B 02 04 D0           1122 	ljmp	00152$
   046E 02 05 68           1123 	ljmp	00159$
   0471 02 05 E8           1124 	ljmp	00165$
   0474 02 06 68           1125 	ljmp	00171$
                           1126 ;	../fb_app_taster.c:234: case 0: // ++++++++ Lichtszenenabruf ohne Speicherfunktion
   0477                    1127 00147$:
                           1128 ;	../fb_app_taster.c:235: if(buttonval){
   0477 20 18 03           1129 	jb	b0,00284$
   047A 02 07 07           1130 	ljmp	00181$
   047D                    1131 00284$:
                           1132 ;	../fb_app_taster.c:236: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
   047D 74 D3              1133 	mov	a,#0xD3
   047F 2F                 1134 	add	a,r7
   0480 90 1D 00           1135 	mov	dptr,#_eeprom
   0483 93                 1136 	movc	a,@a+dptr
   0484 FE                 1137 	mov	r6,a
   0485 30 E2 11           1138 	jnb	acc.2,00149$
   0488 C2 F0              1139 	clr	b[0]
   048A C0 07              1140 	push	ar7
   048C 85 F0 23           1141 	mov	bits,b
   048F A8 14              1142 	mov	r0,_bp
   0491 08                 1143 	inc	r0
   0492 86 82              1144 	mov	dpl,@r0
   0494 12 09 5B           1145 	lcall	_switch_led
   0497 D0 07              1146 	pop	ar7
   0499                    1147 00149$:
                           1148 ;	../fb_app_taster.c:237: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
   0499 74 D5              1149 	mov	a,#0xD5
   049B 2F                 1150 	add	a,r7
   049C 90 1D 00           1151 	mov	dptr,#_eeprom
   049F 93                 1152 	movc	a,@a+dptr
   04A0 FE                 1153 	mov	r6,a
   04A1 7D 00              1154 	mov	r5,#0x00
   04A3 A8 14              1155 	mov	r0,_bp
   04A5 08                 1156 	inc	r0
   04A6 74 08              1157 	mov	a,#0x08
   04A8 26                 1158 	add	a,@r0
   04A9 FC                 1159 	mov	r4,a
   04AA C0 04              1160 	push	ar4
   04AC C0 06              1161 	push	ar6
   04AE C0 05              1162 	push	ar5
   04B0 8C 82              1163 	mov	dpl,r4
   04B2 12 07 4C           1164 	lcall	_write_obj_value
   04B5 15 81              1165 	dec	sp
   04B7 15 81              1166 	dec	sp
   04B9 D0 04              1167 	pop	ar4
                           1168 ;	../fb_app_taster.c:238: send_obj_value(buttonno+8);
   04BB 8C 82              1169 	mov	dpl,r4
   04BD 12 18 B9           1170 	lcall	_send_obj_value
                           1171 ;	../fb_app_taster.c:239: switch_led(buttonno,0);
   04C0 C2 F0              1172 	clr	b[0]
   04C2 85 F0 23           1173 	mov	bits,b
   04C5 A8 14              1174 	mov	r0,_bp
   04C7 08                 1175 	inc	r0
   04C8 86 82              1176 	mov	dpl,@r0
   04CA 12 09 5B           1177 	lcall	_switch_led
                           1178 ;	../fb_app_taster.c:241: break;
   04CD 02 07 07           1179 	ljmp	00181$
                           1180 ;	../fb_app_taster.c:242: case 1:	// ++++++++ Lichtszenenabruf mit Speicherfunktion
   04D0                    1181 00152$:
                           1182 ;	../fb_app_taster.c:243: if(buttonval){// beim drücken
   04D0 30 18 1B           1183 	jnb	b0,00157$
                           1184 ;	../fb_app_taster.c:245: timercnt[buttonno+4]=156;
   04D3 A8 14              1185 	mov	r0,_bp
   04D5 08                 1186 	inc	r0
   04D6 74 04              1187 	mov	a,#0x04
   04D8 26                 1188 	add	a,@r0
   04D9 FE                 1189 	mov	r6,a
   04DA 24 2C              1190 	add	a,#_timercnt
   04DC F8                 1191 	mov	r0,a
   04DD 76 9C              1192 	mov	@r0,#0x9C
                           1193 ;	../fb_app_taster.c:246: timerbase[buttonno+4]=2; //(32ms)
   04DF EE                 1194 	mov	a,r6
   04E0 24 34              1195 	add	a,#_timerbase
   04E2 F8                 1196 	mov	r0,a
   04E3 76 02              1197 	mov	@r0,#0x02
                           1198 ;	../fb_app_taster.c:247: timerstate[buttonno+4]=0x50;// Betätigung länger 5 sekunden bei Lichtszene
   04E5 EE                 1199 	mov	a,r6
   04E6 24 3C              1200 	add	a,#_timerstate
   04E8 F8                 1201 	mov	r0,a
   04E9 76 50              1202 	mov	@r0,#0x50
   04EB 02 07 07           1203 	ljmp	00181$
   04EE                    1204 00157$:
                           1205 ;	../fb_app_taster.c:251: if (timerstate[buttonno+4]==0x50){// wenn 5 sekunden noch nicht erreicht LZ senden
   04EE A8 14              1206 	mov	r0,_bp
   04F0 08                 1207 	inc	r0
   04F1 74 04              1208 	mov	a,#0x04
   04F3 26                 1209 	add	a,@r0
   04F4 24 3C              1210 	add	a,#_timerstate
   04F6 F9                 1211 	mov	r1,a
   04F7 87 06              1212 	mov	ar6,@r1
   04F9 BE 50 2C           1213 	cjne	r6,#0x50,00154$
                           1214 ;	../fb_app_taster.c:252: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
   04FC 74 D5              1215 	mov	a,#0xD5
   04FE 2F                 1216 	add	a,r7
   04FF 90 1D 00           1217 	mov	dptr,#_eeprom
   0502 93                 1218 	movc	a,@a+dptr
   0503 FE                 1219 	mov	r6,a
   0504 7D 00              1220 	mov	r5,#0x00
   0506 A8 14              1221 	mov	r0,_bp
   0508 08                 1222 	inc	r0
   0509 74 08              1223 	mov	a,#0x08
   050B 26                 1224 	add	a,@r0
   050C F5 82              1225 	mov	dpl,a
   050E C0 06              1226 	push	ar6
   0510 C0 05              1227 	push	ar5
   0512 12 07 4C           1228 	lcall	_write_obj_value
   0515 15 81              1229 	dec	sp
   0517 15 81              1230 	dec	sp
                           1231 ;	../fb_app_taster.c:253: switch_led(buttonno,1);
   0519 D2 F0              1232 	setb	b[0]
   051B 85 F0 23           1233 	mov	bits,b
   051E A8 14              1234 	mov	r0,_bp
   0520 08                 1235 	inc	r0
   0521 86 82              1236 	mov	dpl,@r0
   0523 12 09 5B           1237 	lcall	_switch_led
   0526 80 20              1238 	sjmp	00155$
   0528                    1239 00154$:
                           1240 ;	../fb_app_taster.c:256: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]|0x80);
   0528 74 D5              1241 	mov	a,#0xD5
   052A 2F                 1242 	add	a,r7
   052B 90 1D 00           1243 	mov	dptr,#_eeprom
   052E 93                 1244 	movc	a,@a+dptr
   052F FE                 1245 	mov	r6,a
   0530 43 06 80           1246 	orl	ar6,#0x80
   0533 7D 00              1247 	mov	r5,#0x00
   0535 A8 14              1248 	mov	r0,_bp
   0537 08                 1249 	inc	r0
   0538 74 08              1250 	mov	a,#0x08
   053A 26                 1251 	add	a,@r0
   053B F5 82              1252 	mov	dpl,a
   053D C0 06              1253 	push	ar6
   053F C0 05              1254 	push	ar5
   0541 12 07 4C           1255 	lcall	_write_obj_value
   0544 15 81              1256 	dec	sp
   0546 15 81              1257 	dec	sp
   0548                    1258 00155$:
                           1259 ;	../fb_app_taster.c:258: send_obj_value(buttonno+8);
   0548 A8 14              1260 	mov	r0,_bp
   054A 08                 1261 	inc	r0
   054B 74 08              1262 	mov	a,#0x08
   054D 26                 1263 	add	a,@r0
   054E F5 82              1264 	mov	dpl,a
   0550 12 18 B9           1265 	lcall	_send_obj_value
                           1266 ;	../fb_app_taster.c:259: timerstate[buttonno+4]=0;
   0553 A8 14              1267 	mov	r0,_bp
   0555 08                 1268 	inc	r0
   0556 74 04              1269 	mov	a,#0x04
   0558 26                 1270 	add	a,@r0
   0559 FE                 1271 	mov	r6,a
   055A 24 3C              1272 	add	a,#_timerstate
   055C F8                 1273 	mov	r0,a
   055D 76 00              1274 	mov	@r0,#0x00
                           1275 ;	../fb_app_taster.c:260: timercnt[buttonno+4]=0;
   055F EE                 1276 	mov	a,r6
   0560 24 2C              1277 	add	a,#_timercnt
   0562 F8                 1278 	mov	r0,a
   0563 76 00              1279 	mov	@r0,#0x00
                           1280 ;	../fb_app_taster.c:262: break;
   0565 02 07 07           1281 	ljmp	00181$
                           1282 ;	../fb_app_taster.c:263: case 2: // ++++++  Helligkeitswertgeber
   0568                    1283 00159$:
                           1284 ;	../fb_app_taster.c:264: if (buttonval){
   0568 30 18 6F           1285 	jnb	b0,00163$
                           1286 ;	../fb_app_taster.c:265: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
   056B 74 D5              1287 	mov	a,#0xD5
   056D 2F                 1288 	add	a,r7
   056E 90 1D 00           1289 	mov	dptr,#_eeprom
   0571 93                 1290 	movc	a,@a+dptr
   0572 FD                 1291 	mov	r5,a
   0573 7E 00              1292 	mov	r6,#0x00
   0575 74 D6              1293 	mov	a,#0xD6
   0577 2F                 1294 	add	a,r7
   0578 90 1D 00           1295 	mov	dptr,#_eeprom
   057B 93                 1296 	movc	a,@a+dptr
   057C 7B 00              1297 	mov	r3,#0x00
   057E 2E                 1298 	add	a,r6
   057F FE                 1299 	mov	r6,a
   0580 EB                 1300 	mov	a,r3
   0581 3D                 1301 	addc	a,r5
   0582 FD                 1302 	mov	r5,a
   0583 A8 14              1303 	mov	r0,_bp
   0585 08                 1304 	inc	r0
   0586 74 08              1305 	mov	a,#0x08
   0588 26                 1306 	add	a,@r0
   0589 FC                 1307 	mov	r4,a
   058A C0 07              1308 	push	ar7
   058C C0 04              1309 	push	ar4
   058E C0 06              1310 	push	ar6
   0590 C0 05              1311 	push	ar5
   0592 8C 82              1312 	mov	dpl,r4
   0594 12 07 4C           1313 	lcall	_write_obj_value
   0597 15 81              1314 	dec	sp
   0599 15 81              1315 	dec	sp
   059B D0 04              1316 	pop	ar4
                           1317 ;	../fb_app_taster.c:266: send_obj_value(buttonno+8);
   059D 8C 82              1318 	mov	dpl,r4
   059F 12 18 B9           1319 	lcall	_send_obj_value
                           1320 ;	../fb_app_taster.c:267: switch_led(buttonno,1);
   05A2 D2 F0              1321 	setb	b[0]
   05A4 85 F0 23           1322 	mov	bits,b
   05A7 A8 14              1323 	mov	r0,_bp
   05A9 08                 1324 	inc	r0
   05AA 86 82              1325 	mov	dpl,@r0
   05AC 12 09 5B           1326 	lcall	_switch_led
   05AF D0 07              1327 	pop	ar7
                           1328 ;	../fb_app_taster.c:268: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
   05B1 74 D3              1329 	mov	a,#0xD3
   05B3 2F                 1330 	add	a,r7
   05B4 90 1D 00           1331 	mov	dptr,#_eeprom
   05B7 93                 1332 	movc	a,@a+dptr
   05B8 FE                 1333 	mov	r6,a
   05B9 30 E7 03           1334 	jnb	acc.7,00290$
   05BC 02 07 07           1335 	ljmp	00181$
   05BF                    1336 00290$:
                           1337 ;	../fb_app_taster.c:269: timercnt[buttonno+4]=156;
   05BF A8 14              1338 	mov	r0,_bp
   05C1 08                 1339 	inc	r0
   05C2 74 04              1340 	mov	a,#0x04
   05C4 26                 1341 	add	a,@r0
   05C5 FE                 1342 	mov	r6,a
   05C6 24 2C              1343 	add	a,#_timercnt
   05C8 F8                 1344 	mov	r0,a
   05C9 76 9C              1345 	mov	@r0,#0x9C
                           1346 ;	../fb_app_taster.c:270: timerbase[buttonno+4]=2; //(32ms)
   05CB EE                 1347 	mov	a,r6
   05CC 24 34              1348 	add	a,#_timerbase
   05CE F8                 1349 	mov	r0,a
   05CF 76 02              1350 	mov	@r0,#0x02
                           1351 ;	../fb_app_taster.c:271: timerstate[buttonno+4]=0x70;// Betätigung länger 5 sekunden bei Dimmwert
   05D1 EE                 1352 	mov	a,r6
   05D2 24 3C              1353 	add	a,#_timerstate
   05D4 F8                 1354 	mov	r0,a
   05D5 76 70              1355 	mov	@r0,#0x70
   05D7 02 07 07           1356 	ljmp	00181$
   05DA                    1357 00163$:
                           1358 ;	../fb_app_taster.c:278: timerstate[buttonno+4]=0;
   05DA A8 14              1359 	mov	r0,_bp
   05DC 08                 1360 	inc	r0
   05DD 74 04              1361 	mov	a,#0x04
   05DF 26                 1362 	add	a,@r0
   05E0 24 3C              1363 	add	a,#_timerstate
   05E2 F8                 1364 	mov	r0,a
   05E3 76 00              1365 	mov	@r0,#0x00
                           1366 ;	../fb_app_taster.c:280: break;
   05E5 02 07 07           1367 	ljmp	00181$
                           1368 ;	../fb_app_taster.c:281: case 3:	// ++++++  Temperaturwertgeber
   05E8                    1369 00165$:
                           1370 ;	../fb_app_taster.c:282: if (buttonval){
   05E8 30 18 6F           1371 	jnb	b0,00169$
                           1372 ;	../fb_app_taster.c:283: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
   05EB 74 D5              1373 	mov	a,#0xD5
   05ED 2F                 1374 	add	a,r7
   05EE 90 1D 00           1375 	mov	dptr,#_eeprom
   05F1 93                 1376 	movc	a,@a+dptr
   05F2 FD                 1377 	mov	r5,a
   05F3 7E 00              1378 	mov	r6,#0x00
   05F5 74 D6              1379 	mov	a,#0xD6
   05F7 2F                 1380 	add	a,r7
   05F8 90 1D 00           1381 	mov	dptr,#_eeprom
   05FB 93                 1382 	movc	a,@a+dptr
   05FC 7B 00              1383 	mov	r3,#0x00
   05FE 2E                 1384 	add	a,r6
   05FF FE                 1385 	mov	r6,a
   0600 EB                 1386 	mov	a,r3
   0601 3D                 1387 	addc	a,r5
   0602 FD                 1388 	mov	r5,a
   0603 A8 14              1389 	mov	r0,_bp
   0605 08                 1390 	inc	r0
   0606 74 08              1391 	mov	a,#0x08
   0608 26                 1392 	add	a,@r0
   0609 FC                 1393 	mov	r4,a
   060A C0 07              1394 	push	ar7
   060C C0 04              1395 	push	ar4
   060E C0 06              1396 	push	ar6
   0610 C0 05              1397 	push	ar5
   0612 8C 82              1398 	mov	dpl,r4
   0614 12 07 4C           1399 	lcall	_write_obj_value
   0617 15 81              1400 	dec	sp
   0619 15 81              1401 	dec	sp
   061B D0 04              1402 	pop	ar4
                           1403 ;	../fb_app_taster.c:284: send_obj_value(buttonno+8);
   061D 8C 82              1404 	mov	dpl,r4
   061F 12 18 B9           1405 	lcall	_send_obj_value
                           1406 ;	../fb_app_taster.c:285: switch_led(buttonno,1);
   0622 D2 F0              1407 	setb	b[0]
   0624 85 F0 23           1408 	mov	bits,b
   0627 A8 14              1409 	mov	r0,_bp
   0629 08                 1410 	inc	r0
   062A 86 82              1411 	mov	dpl,@r0
   062C 12 09 5B           1412 	lcall	_switch_led
   062F D0 07              1413 	pop	ar7
                           1414 ;	../fb_app_taster.c:286: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
   0631 74 D3              1415 	mov	a,#0xD3
   0633 2F                 1416 	add	a,r7
   0634 90 1D 00           1417 	mov	dptr,#_eeprom
   0637 93                 1418 	movc	a,@a+dptr
   0638 FE                 1419 	mov	r6,a
   0639 30 E7 03           1420 	jnb	acc.7,00292$
   063C 02 07 07           1421 	ljmp	00181$
   063F                    1422 00292$:
                           1423 ;	../fb_app_taster.c:287: timercnt[buttonno+4]=156;
   063F A8 14              1424 	mov	r0,_bp
   0641 08                 1425 	inc	r0
   0642 74 04              1426 	mov	a,#0x04
   0644 26                 1427 	add	a,@r0
   0645 FE                 1428 	mov	r6,a
   0646 24 2C              1429 	add	a,#_timercnt
   0648 F8                 1430 	mov	r0,a
   0649 76 9C              1431 	mov	@r0,#0x9C
                           1432 ;	../fb_app_taster.c:288: timerbase[buttonno+4]=2; //(32ms)
   064B EE                 1433 	mov	a,r6
   064C 24 34              1434 	add	a,#_timerbase
   064E F8                 1435 	mov	r0,a
   064F 76 02              1436 	mov	@r0,#0x02
                           1437 ;	../fb_app_taster.c:289: timerstate[buttonno+4]=0x90;// Betätigung länger 5 sekunden bei Dimmwert
   0651 EE                 1438 	mov	a,r6
   0652 24 3C              1439 	add	a,#_timerstate
   0654 F8                 1440 	mov	r0,a
   0655 76 90              1441 	mov	@r0,#0x90
   0657 02 07 07           1442 	ljmp	00181$
   065A                    1443 00169$:
                           1444 ;	../fb_app_taster.c:297: timerstate[buttonno+4]=0;
   065A A8 14              1445 	mov	r0,_bp
   065C 08                 1446 	inc	r0
   065D 74 04              1447 	mov	a,#0x04
   065F 26                 1448 	add	a,@r0
   0660 24 3C              1449 	add	a,#_timerstate
   0662 F8                 1450 	mov	r0,a
   0663 76 00              1451 	mov	@r0,#0x00
                           1452 ;	../fb_app_taster.c:299: break;
   0665 02 07 07           1453 	ljmp	00181$
                           1454 ;	../fb_app_taster.c:300: case 4: // ++++++   Dimmwertgeber
   0668                    1455 00171$:
                           1456 ;	../fb_app_taster.c:301: if (buttonval){
   0668 30 18 5D           1457 	jnb	b0,00177$
                           1458 ;	../fb_app_taster.c:302: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
   066B 74 D5              1459 	mov	a,#0xD5
   066D 2F                 1460 	add	a,r7
   066E 90 1D 00           1461 	mov	dptr,#_eeprom
   0671 93                 1462 	movc	a,@a+dptr
   0672 FE                 1463 	mov	r6,a
   0673 7D 00              1464 	mov	r5,#0x00
   0675 A8 14              1465 	mov	r0,_bp
   0677 08                 1466 	inc	r0
   0678 74 08              1467 	mov	a,#0x08
   067A 26                 1468 	add	a,@r0
   067B FC                 1469 	mov	r4,a
   067C C0 07              1470 	push	ar7
   067E C0 04              1471 	push	ar4
   0680 C0 06              1472 	push	ar6
   0682 C0 05              1473 	push	ar5
   0684 8C 82              1474 	mov	dpl,r4
   0686 12 07 4C           1475 	lcall	_write_obj_value
   0689 15 81              1476 	dec	sp
   068B 15 81              1477 	dec	sp
   068D D0 04              1478 	pop	ar4
                           1479 ;	../fb_app_taster.c:303: send_obj_value(buttonno+8);
   068F 8C 82              1480 	mov	dpl,r4
   0691 12 18 B9           1481 	lcall	_send_obj_value
                           1482 ;	../fb_app_taster.c:304: switch_led(buttonno,1);
   0694 D2 F0              1483 	setb	b[0]
   0696 85 F0 23           1484 	mov	bits,b
   0699 A8 14              1485 	mov	r0,_bp
   069B 08                 1486 	inc	r0
   069C 86 82              1487 	mov	dpl,@r0
   069E 12 09 5B           1488 	lcall	_switch_led
   06A1 D0 07              1489 	pop	ar7
                           1490 ;	../fb_app_taster.c:305: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
   06A3 74 D3              1491 	mov	a,#0xD3
   06A5 2F                 1492 	add	a,r7
   06A6 90 1D 00           1493 	mov	dptr,#_eeprom
   06A9 93                 1494 	movc	a,@a+dptr
   06AA FE                 1495 	mov	r6,a
   06AB 20 E7 59           1496 	jb	acc.7,00181$
                           1497 ;	../fb_app_taster.c:306: timercnt[buttonno+4]=156;
   06AE A8 14              1498 	mov	r0,_bp
   06B0 08                 1499 	inc	r0
   06B1 74 04              1500 	mov	a,#0x04
   06B3 26                 1501 	add	a,@r0
   06B4 FE                 1502 	mov	r6,a
   06B5 24 2C              1503 	add	a,#_timercnt
   06B7 F8                 1504 	mov	r0,a
   06B8 76 9C              1505 	mov	@r0,#0x9C
                           1506 ;	../fb_app_taster.c:307: timerbase[buttonno+4]=2; //(32ms)
   06BA EE                 1507 	mov	a,r6
   06BB 24 34              1508 	add	a,#_timerbase
   06BD F8                 1509 	mov	r0,a
   06BE 76 02              1510 	mov	@r0,#0x02
                           1511 ;	../fb_app_taster.c:308: timerstate[buttonno+4]=0xB0;// Betätigung länger 5 sekunden bei Dimmwert
   06C0 EE                 1512 	mov	a,r6
   06C1 24 3C              1513 	add	a,#_timerstate
   06C3 F8                 1514 	mov	r0,a
   06C4 76 B0              1515 	mov	@r0,#0xB0
   06C6 80 3F              1516 	sjmp	00181$
   06C8                    1517 00177$:
                           1518 ;	../fb_app_taster.c:312: if (timerstate[buttonno+4]==0xC0){
   06C8 A8 14              1519 	mov	r0,_bp
   06CA 08                 1520 	inc	r0
   06CB 74 04              1521 	mov	a,#0x04
   06CD 26                 1522 	add	a,@r0
   06CE 24 3C              1523 	add	a,#_timerstate
   06D0 F9                 1524 	mov	r1,a
   06D1 87 06              1525 	mov	ar6,@r1
   06D3 BE C0 26           1526 	cjne	r6,#0xC0,00175$
                           1527 ;	../fb_app_taster.c:314: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   06D6 C2 AF              1528 	clr	_IEN0_7
                           1529 ;	../fb_app_taster.c:315: START_WRITECYCLE
   06D8 75 E4 00           1530 	mov	_FMCON,#0x00
                           1531 ;	../fb_app_taster.c:316: WRITE_BYTE(0x01,0xD5+(buttonno*4),read_obj_value(buttonno+8));
   06DB 75 E7 1D           1532 	mov	_FMADRH,#0x1D
   06DE 74 D5              1533 	mov	a,#0xD5
   06E0 2F                 1534 	add	a,r7
   06E1 F5 E6              1535 	mov	_FMADRL,a
   06E3 A8 14              1536 	mov	r0,_bp
   06E5 08                 1537 	inc	r0
   06E6 74 08              1538 	mov	a,#0x08
   06E8 26                 1539 	add	a,@r0
   06E9 F5 82              1540 	mov	dpl,a
   06EB 12 07 0C           1541 	lcall	_read_obj_value
   06EE AC 82              1542 	mov	r4,dpl
   06F0 AD 83              1543 	mov	r5,dph
   06F2 AE F0              1544 	mov	r6,b
   06F4 FF                 1545 	mov	r7,a
   06F5 8C E5              1546 	mov	_FMDATA,r4
                           1547 ;	../fb_app_taster.c:317: STOP_WRITECYCLE // Lichtszene speichern
   06F7 75 E4 68           1548 	mov	_FMCON,#0x68
                           1549 ;	../fb_app_taster.c:318: EA=1;
   06FA D2 AF              1550 	setb	_IEN0_7
   06FC                    1551 00175$:
                           1552 ;	../fb_app_taster.c:321: timerstate[buttonno+4]=0;
   06FC A8 14              1553 	mov	r0,_bp
   06FE 08                 1554 	inc	r0
   06FF 74 04              1555 	mov	a,#0x04
   0701 26                 1556 	add	a,@r0
   0702 24 3C              1557 	add	a,#_timerstate
   0704 F8                 1558 	mov	r0,a
   0705 76 00              1559 	mov	@r0,#0x00
                           1560 ;	../fb_app_taster.c:328: }
   0707                    1561 00181$:
   0707 15 81              1562 	dec	sp
   0709 D0 14              1563 	pop	_bp
   070B 22                 1564 	ret
                           1565 ;------------------------------------------------------------
                           1566 ;Allocation info for local variables in function 'read_obj_value'
                           1567 ;------------------------------------------------------------
                           1568 ;objno                     Allocated to registers r7 
                           1569 ;------------------------------------------------------------
                           1570 ;	../fb_app_taster.c:355: unsigned long read_obj_value(unsigned char objno)
                           1571 ;	-----------------------------------------
                           1572 ;	 function read_obj_value
                           1573 ;	-----------------------------------------
   070C                    1574 _read_obj_value:
   070C AF 82              1575 	mov	r7,dpl
                           1576 ;	../fb_app_taster.c:358: if(objno<4)	return(object_value[objno]);
   070E BF 04 00           1577 	cjne	r7,#0x04,00108$
   0711                    1578 00108$:
   0711 50 14              1579 	jnc	00102$
   0713 EF                 1580 	mov	a,r7
   0714 24 08              1581 	add	a,#_object_value
   0716 F9                 1582 	mov	r1,a
   0717 87 06              1583 	mov	ar6,@r1
   0719 7D 00              1584 	mov	r5,#0x00
   071B 7C 00              1585 	mov	r4,#0x00
   071D 7B 00              1586 	mov	r3,#0x00
   071F 8E 82              1587 	mov	dpl,r6
   0721 8D 83              1588 	mov	dph,r5
   0723 8C F0              1589 	mov	b,r4
   0725 EB                 1590 	mov	a,r3
   0726 22                 1591 	ret
   0727                    1592 00102$:
                           1593 ;	../fb_app_taster.c:359: else return((object_value[objno-4]<<8)+object_value[objno]);
   0727 EF                 1594 	mov	a,r7
   0728 24 FC              1595 	add	a,#0xFC
   072A 24 08              1596 	add	a,#_object_value
   072C F9                 1597 	mov	r1,a
   072D 87 06              1598 	mov	ar6,@r1
   072F 8E 05              1599 	mov	ar5,r6
   0731 7E 00              1600 	mov	r6,#0x00
   0733 EF                 1601 	mov	a,r7
   0734 24 08              1602 	add	a,#_object_value
   0736 F9                 1603 	mov	r1,a
   0737 87 07              1604 	mov	ar7,@r1
   0739 7C 00              1605 	mov	r4,#0x00
   073B EF                 1606 	mov	a,r7
   073C 2E                 1607 	add	a,r6
   073D FE                 1608 	mov	r6,a
   073E EC                 1609 	mov	a,r4
   073F 3D                 1610 	addc	a,r5
   0740 FD                 1611 	mov	r5,a
   0741 33                 1612 	rlc	a
   0742 95 E0              1613 	subb	a,acc
   0744 FF                 1614 	mov	r7,a
   0745 8E 82              1615 	mov	dpl,r6
   0747 8D 83              1616 	mov	dph,r5
   0749 8F F0              1617 	mov	b,r7
   074B 22                 1618 	ret
                           1619 ;------------------------------------------------------------
                           1620 ;Allocation info for local variables in function 'write_obj_value'
                           1621 ;------------------------------------------------------------
                           1622 ;objval                    Allocated to stack - _bp -4
                           1623 ;objno                     Allocated to registers r7 
                           1624 ;------------------------------------------------------------
                           1625 ;	../fb_app_taster.c:363: void write_obj_value(unsigned char objno, unsigned int objval)
                           1626 ;	-----------------------------------------
                           1627 ;	 function write_obj_value
                           1628 ;	-----------------------------------------
   074C                    1629 _write_obj_value:
   074C C0 14              1630 	push	_bp
   074E 85 81 14           1631 	mov	_bp,sp
   0751 AF 82              1632 	mov	r7,dpl
                           1633 ;	../fb_app_taster.c:365: if(objno<4)object_value[objno]=objval;
   0753 BF 04 00           1634 	cjne	r7,#0x04,00108$
   0756                    1635 00108$:
   0756 50 0F              1636 	jnc	00102$
   0758 EF                 1637 	mov	a,r7
   0759 24 08              1638 	add	a,#_object_value
   075B F9                 1639 	mov	r1,a
   075C E5 14              1640 	mov	a,_bp
   075E 24 FC              1641 	add	a,#0xfc
   0760 F8                 1642 	mov	r0,a
   0761 86 06              1643 	mov	ar6,@r0
   0763 A7 06              1644 	mov	@r1,ar6
   0765 80 1F              1645 	sjmp	00104$
   0767                    1646 00102$:
                           1647 ;	../fb_app_taster.c:367: object_value[objno-4]=objval>>8;
   0767 EF                 1648 	mov	a,r7
   0768 24 FC              1649 	add	a,#0xFC
   076A 24 08              1650 	add	a,#_object_value
   076C F9                 1651 	mov	r1,a
   076D E5 14              1652 	mov	a,_bp
   076F 24 FC              1653 	add	a,#0xfc
   0771 F8                 1654 	mov	r0,a
   0772 08                 1655 	inc	r0
   0773 86 06              1656 	mov	ar6,@r0
   0775 A7 06              1657 	mov	@r1,ar6
                           1658 ;	../fb_app_taster.c:368: object_value[objno]=objval&0xFF;
   0777 EF                 1659 	mov	a,r7
   0778 24 08              1660 	add	a,#_object_value
   077A F9                 1661 	mov	r1,a
   077B E5 14              1662 	mov	a,_bp
   077D 24 FC              1663 	add	a,#0xfc
   077F F8                 1664 	mov	r0,a
   0780 86 06              1665 	mov	ar6,@r0
   0782 7F 00              1666 	mov	r7,#0x00
   0784 A7 06              1667 	mov	@r1,ar6
   0786                    1668 00104$:
   0786 D0 14              1669 	pop	_bp
   0788 22                 1670 	ret
                           1671 ;------------------------------------------------------------
                           1672 ;Allocation info for local variables in function 'write_value_req'
                           1673 ;------------------------------------------------------------
                           1674 ;objno                     Allocated to registers r2 
                           1675 ;objflags                  Allocated to registers r6 
                           1676 ;objtype                   Allocated to registers r7 
                           1677 ;gapos                     Allocated to stack - _bp +1
                           1678 ;atp                       Allocated to registers r6 
                           1679 ;assno                     Allocated to stack - _bp +2
                           1680 ;n                         Allocated to stack - _bp +3
                           1681 ;gaposh                    Allocated to registers r4 
                           1682 ;------------------------------------------------------------
                           1683 ;	../fb_app_taster.c:380: void write_value_req(void)
                           1684 ;	-----------------------------------------
                           1685 ;	 function write_value_req
                           1686 ;	-----------------------------------------
   0789                    1687 _write_value_req:
   0789 C0 14              1688 	push	_bp
   078B 85 81 14           1689 	mov	_bp,sp
   078E 05 81              1690 	inc	sp
   0790 05 81              1691 	inc	sp
   0792 05 81              1692 	inc	sp
                           1693 ;	../fb_app_taster.c:384: gapos=gapos_in_gat(telegramm[3],telegramm[4]);
   0794 85 4E 82           1694 	mov	dpl,(_telegramm + 0x0003)
   0797 C0 4F              1695 	push	(_telegramm + 0x0004)
   0799 12 16 5E           1696 	lcall	_gapos_in_gat
   079C AF 82              1697 	mov	r7,dpl
   079E 15 81              1698 	dec	sp
   07A0 A8 14              1699 	mov	r0,_bp
   07A2 08                 1700 	inc	r0
   07A3 A6 07              1701 	mov	@r0,ar7
                           1702 ;	../fb_app_taster.c:385: if (gapos!=0xFF)	
   07A5 A8 14              1703 	mov	r0,_bp
   07A7 08                 1704 	inc	r0
   07A8 B6 FF 03           1705 	cjne	@r0,#0xFF,00147$
   07AB 02 09 05           1706 	ljmp	00122$
   07AE                    1707 00147$:
                           1708 ;	../fb_app_taster.c:387: atp=eeprom[ASSOCTABPTR];			// Association Table Pointer
   07AE 90 1D 11           1709 	mov	dptr,#(_eeprom + 0x0011)
   07B1 E4                 1710 	clr	a
   07B2 93                 1711 	movc	a,@a+dptr
                           1712 ;	../fb_app_taster.c:388: assno=eeprom[atp];					// Erster Eintrag = Anzahl Eintraege
   07B3 FE                 1713 	mov	r6,a
   07B4 F5 82              1714 	mov	dpl,a
   07B6 75 83 1D           1715 	mov	dph,#(_eeprom >> 8)
   07B9 E4                 1716 	clr	a
   07BA 93                 1717 	movc	a,@a+dptr
   07BB FD                 1718 	mov	r5,a
   07BC A8 14              1719 	mov	r0,_bp
   07BE 08                 1720 	inc	r0
   07BF 08                 1721 	inc	r0
   07C0 A6 05              1722 	mov	@r0,ar5
                           1723 ;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   07C2 74 02              1724 	mov	a,#0x02
   07C4 2E                 1725 	add	a,r6
   07C5 FC                 1726 	mov	r4,a
   07C6 0E                 1727 	inc	r6
   07C7 E5 14              1728 	mov	a,_bp
   07C9 24 03              1729 	add	a,#0x03
   07CB F8                 1730 	mov	r0,a
   07CC 76 00              1731 	mov	@r0,#0x00
   07CE                    1732 00118$:
   07CE E5 14              1733 	mov	a,_bp
   07D0 24 03              1734 	add	a,#0x03
   07D2 F8                 1735 	mov	r0,a
   07D3 A9 14              1736 	mov	r1,_bp
   07D5 09                 1737 	inc	r1
   07D6 09                 1738 	inc	r1
   07D7 C3                 1739 	clr	c
   07D8 E6                 1740 	mov	a,@r0
   07D9 97                 1741 	subb	a,@r1
   07DA 40 03              1742 	jc	00148$
   07DC 02 09 05           1743 	ljmp	00122$
   07DF                    1744 00148$:
                           1745 ;	../fb_app_taster.c:391: gaposh=eeprom[atp+1+(n*2)];
   07DF C0 04              1746 	push	ar4
   07E1 E5 14              1747 	mov	a,_bp
   07E3 24 03              1748 	add	a,#0x03
   07E5 F8                 1749 	mov	r0,a
   07E6 E6                 1750 	mov	a,@r0
   07E7 25 E0              1751 	add	a,acc
   07E9 FA                 1752 	mov	r2,a
   07EA 2E                 1753 	add	a,r6
   07EB 90 1D 00           1754 	mov	dptr,#_eeprom
   07EE 93                 1755 	movc	a,@a+dptr
   07EF FC                 1756 	mov	r4,a
                           1757 ;	../fb_app_taster.c:392: if(gapos==gaposh) {					// Wenn Positionsnummer uebereinstimmt
   07F0 A8 14              1758 	mov	r0,_bp
   07F2 08                 1759 	inc	r0
   07F3 E6                 1760 	mov	a,@r0
   07F4 B5 04 02           1761 	cjne	a,ar4,00149$
   07F7 80 05              1762 	sjmp	00150$
   07F9                    1763 00149$:
   07F9 D0 04              1764 	pop	ar4
   07FB 02 08 FC           1765 	ljmp	00120$
   07FE                    1766 00150$:
   07FE D0 04              1767 	pop	ar4
                           1768 ;	../fb_app_taster.c:393: objno=eeprom[atp+2+(n*2)];			// Objektnummer
   0800 C0 06              1769 	push	ar6
   0802 EA                 1770 	mov	a,r2
   0803 2C                 1771 	add	a,r4
   0804 90 1D 00           1772 	mov	dptr,#_eeprom
   0807 93                 1773 	movc	a,@a+dptr
                           1774 ;	../fb_app_taster.c:394: objflags=read_objflags(objno);		// Objekt Flags lesen
   0808 FA                 1775 	mov	r2,a
   0809 F5 82              1776 	mov	dpl,a
   080B C0 04              1777 	push	ar4
   080D C0 02              1778 	push	ar2
   080F 12 1A E5           1779 	lcall	_read_objflags
   0812 AE 82              1780 	mov	r6,dpl
   0814 D0 02              1781 	pop	ar2
   0816 D0 04              1782 	pop	ar4
                           1783 ;	../fb_app_taster.c:395: if((objflags&0x14)==0x14) {			// Kommunikation zulaessig (Bit 2 = communication enable) + Schreiben zulaessig (Bit 4 = write enable)
   0818 53 06 14           1784 	anl	ar6,#0x14
   081B BE 14 02           1785 	cjne	r6,#0x14,00151$
   081E 80 05              1786 	sjmp	00152$
   0820                    1787 00151$:
   0820 D0 06              1788 	pop	ar6
   0822 02 08 FC           1789 	ljmp	00120$
   0825                    1790 00152$:
   0825 D0 06              1791 	pop	ar6
                           1792 ;	../fb_app_taster.c:396: if (objno<12) {					// max 12 objekte (0-11)
   0827 BA 0C 00           1793 	cjne	r2,#0x0C,00153$
   082A                    1794 00153$:
   082A 40 03              1795 	jc	00154$
   082C 02 08 FC           1796 	ljmp	00120$
   082F                    1797 00154$:
                           1798 ;	../fb_app_taster.c:397: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
   082F C0 04              1799 	push	ar4
   0831 90 1D 12           1800 	mov	dptr,#(_eeprom + 0x0012)
   0834 E4                 1801 	clr	a
   0835 93                 1802 	movc	a,@a+dptr
   0836 FC                 1803 	mov	r4,a
   0837 EA                 1804 	mov	a,r2
   0838 75 F0 03           1805 	mov	b,#0x03
   083B A4                 1806 	mul	ab
   083C 2C                 1807 	add	a,r4
   083D 24 04              1808 	add	a,#0x04
   083F 90 1D 00           1809 	mov	dptr,#_eeprom
   0842 93                 1810 	movc	a,@a+dptr
   0843 FF                 1811 	mov	r7,a
                           1812 ;	../fb_app_taster.c:398: if (objtype<=6){
   0844 C3                 1813 	clr	c
   0845 74 06              1814 	mov	a,#0x06
   0847 9F                 1815 	subb	a,r7
   0848 D0 04              1816 	pop	ar4
   084A 40 28              1817 	jc	00102$
                           1818 ;	../fb_app_taster.c:399: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
   084C C0 04              1819 	push	ar4
   084E 74 3F              1820 	mov	a,#0x3F
   0850 55 52              1821 	anl	a,(_telegramm + 0x0007)
   0852 FC                 1822 	mov	r4,a
   0853 7D 00              1823 	mov	r5,#0x00
   0855 C0 07              1824 	push	ar7
   0857 C0 06              1825 	push	ar6
   0859 C0 04              1826 	push	ar4
   085B C0 02              1827 	push	ar2
   085D C0 04              1828 	push	ar4
   085F C0 05              1829 	push	ar5
   0861 8A 82              1830 	mov	dpl,r2
   0863 12 07 4C           1831 	lcall	_write_obj_value
   0866 15 81              1832 	dec	sp
   0868 15 81              1833 	dec	sp
   086A D0 02              1834 	pop	ar2
   086C D0 04              1835 	pop	ar4
   086E D0 06              1836 	pop	ar6
   0870 D0 07              1837 	pop	ar7
                           1838 ;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   0872 D0 04              1839 	pop	ar4
                           1840 ;	../fb_app_taster.c:399: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
   0874                    1841 00102$:
                           1842 ;	../fb_app_taster.c:401: if (objtype==7)write_obj_value(objno,telegramm[8]);
   0874 BF 07 25           1843 	cjne	r7,#0x07,00104$
   0877 C0 04              1844 	push	ar4
   0879 AC 53              1845 	mov	r4,(_telegramm + 0x0008)
   087B 7D 00              1846 	mov	r5,#0x00
   087D C0 07              1847 	push	ar7
   087F C0 06              1848 	push	ar6
   0881 C0 04              1849 	push	ar4
   0883 C0 02              1850 	push	ar2
   0885 C0 04              1851 	push	ar4
   0887 C0 05              1852 	push	ar5
   0889 8A 82              1853 	mov	dpl,r2
   088B 12 07 4C           1854 	lcall	_write_obj_value
   088E 15 81              1855 	dec	sp
   0890 15 81              1856 	dec	sp
   0892 D0 02              1857 	pop	ar2
   0894 D0 04              1858 	pop	ar4
   0896 D0 06              1859 	pop	ar6
   0898 D0 07              1860 	pop	ar7
                           1861 ;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   089A D0 04              1862 	pop	ar4
                           1863 ;	../fb_app_taster.c:401: if (objtype==7)write_obj_value(objno,telegramm[8]);
   089C                    1864 00104$:
                           1865 ;	../fb_app_taster.c:402: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
   089C BF 08 2B           1866 	cjne	r7,#0x08,00106$
   089F C0 04              1867 	push	ar4
   08A1 AC 54              1868 	mov	r4,(_telegramm + 0x0009)
   08A3 7D 00              1869 	mov	r5,#0x00
   08A5 AB 53              1870 	mov	r3,(_telegramm + 0x0008)
   08A7 8B 07              1871 	mov	ar7,r3
   08A9 E4                 1872 	clr	a
   08AA 2C                 1873 	add	a,r4
   08AB FC                 1874 	mov	r4,a
   08AC EF                 1875 	mov	a,r7
   08AD 3D                 1876 	addc	a,r5
   08AE FD                 1877 	mov	r5,a
   08AF C0 06              1878 	push	ar6
   08B1 C0 04              1879 	push	ar4
   08B3 C0 02              1880 	push	ar2
   08B5 C0 04              1881 	push	ar4
   08B7 C0 05              1882 	push	ar5
   08B9 8A 82              1883 	mov	dpl,r2
   08BB 12 07 4C           1884 	lcall	_write_obj_value
   08BE 15 81              1885 	dec	sp
   08C0 15 81              1886 	dec	sp
   08C2 D0 02              1887 	pop	ar2
   08C4 D0 04              1888 	pop	ar4
   08C6 D0 06              1889 	pop	ar6
                           1890 ;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   08C8 D0 04              1891 	pop	ar4
                           1892 ;	../fb_app_taster.c:402: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
   08CA                    1893 00106$:
                           1894 ;	../fb_app_taster.c:403: if ((objno<4) && ((eeprom[COMMAND+(objno*4)]) & 0x07) <4) switch_led(objno,telegramm[7]&0x01);	// LED nur schalten, wenn nicht auf Betï¿½tigungsanzeige parametriert
   08CA BA 04 00           1895 	cjne	r2,#0x04,00160$
   08CD                    1896 00160$:
   08CD 50 2D              1897 	jnc	00120$
   08CF EA                 1898 	mov	a,r2
   08D0 2A                 1899 	add	a,r2
   08D1 25 E0              1900 	add	a,acc
   08D3 24 D3              1901 	add	a,#0xD3
   08D5 90 1D 00           1902 	mov	dptr,#_eeprom
   08D8 93                 1903 	movc	a,@a+dptr
   08D9 FF                 1904 	mov	r7,a
   08DA 53 07 07           1905 	anl	ar7,#0x07
   08DD BF 04 00           1906 	cjne	r7,#0x04,00162$
   08E0                    1907 00162$:
   08E0 50 1A              1908 	jnc	00120$
   08E2 E5 52              1909 	mov	a,(_telegramm + 0x0007)
   08E4 54 01              1910 	anl	a,#0x01
   08E6 24 FF              1911 	add	a,#0xff
   08E8 92 18              1912 	mov  b0,c
   08EA 92 F0              1913 	mov	b[0],c
   08EC C0 06              1914 	push	ar6
   08EE C0 04              1915 	push	ar4
   08F0 85 F0 23           1916 	mov	bits,b
   08F3 8A 82              1917 	mov	dpl,r2
   08F5 12 09 5B           1918 	lcall	_switch_led
   08F8 D0 04              1919 	pop	ar4
   08FA D0 06              1920 	pop	ar6
   08FC                    1921 00120$:
                           1922 ;	../fb_app_taster.c:390: for(n=0;n<assno;n++) {				// Schleife über alle Eintraege in der Ass-Table, denn es koennten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   08FC E5 14              1923 	mov	a,_bp
   08FE 24 03              1924 	add	a,#0x03
   0900 F8                 1925 	mov	r0,a
   0901 06                 1926 	inc	@r0
   0902 02 07 CE           1927 	ljmp	00118$
   0905                    1928 00122$:
   0905 85 14 81           1929 	mov	sp,_bp
   0908 D0 14              1930 	pop	_bp
   090A 22                 1931 	ret
                           1932 ;------------------------------------------------------------
                           1933 ;Allocation info for local variables in function 'read_value_req'
                           1934 ;------------------------------------------------------------
                           1935 ;objno                     Allocated to registers r7 
                           1936 ;objflags                  Allocated to registers r6 
                           1937 ;objvalue                  Allocated to registers r3 r4 
                           1938 ;------------------------------------------------------------
                           1939 ;	../fb_app_taster.c:419: void read_value_req(void)
                           1940 ;	-----------------------------------------
                           1941 ;	 function read_value_req
                           1942 ;	-----------------------------------------
   090B                    1943 _read_value_req:
                           1944 ;	../fb_app_taster.c:424: objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
   090B 85 4E 82           1945 	mov	dpl,(_telegramm + 0x0003)
   090E C0 4F              1946 	push	(_telegramm + 0x0004)
   0910 12 1A FD           1947 	lcall	_find_first_objno
   0913 AF 82              1948 	mov	r7,dpl
   0915 15 81              1949 	dec	sp
                           1950 ;	../fb_app_taster.c:425: if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
   0917 BF FF 01           1951 	cjne	r7,#0xFF,00111$
   091A 22                 1952 	ret
   091B                    1953 00111$:
                           1954 ;	../fb_app_taster.c:428: objvalue=read_obj_value(objno);		// Objektwert aus USER-RAM lesen (Standard Einstellung)
   091B 8F 82              1955 	mov	dpl,r7
   091D C0 07              1956 	push	ar7
   091F 12 07 0C           1957 	lcall	_read_obj_value
   0922 AB 82              1958 	mov	r3,dpl
   0924 AC 83              1959 	mov	r4,dph
   0926 D0 07              1960 	pop	ar7
                           1961 ;	../fb_app_taster.c:430: objflags=read_objflags(objno);		// Objekt Flags lesen
   0928 8F 82              1962 	mov	dpl,r7
   092A C0 07              1963 	push	ar7
   092C C0 04              1964 	push	ar4
   092E C0 03              1965 	push	ar3
   0930 12 1A E5           1966 	lcall	_read_objflags
   0933 AE 82              1967 	mov	r6,dpl
   0935 D0 03              1968 	pop	ar3
   0937 D0 04              1969 	pop	ar4
   0939 D0 07              1970 	pop	ar7
                           1971 ;	../fb_app_taster.c:433: if((objflags&0x0C)==0x0C) {
   093B 53 06 0C           1972 	anl	ar6,#0x0C
   093E BE 0C 19           1973 	cjne	r6,#0x0C,00105$
                           1974 ;	../fb_app_taster.c:434: write_obj_value(objno,objvalue);
   0941 C0 07              1975 	push	ar7
   0943 C0 03              1976 	push	ar3
   0945 C0 04              1977 	push	ar4
   0947 8F 82              1978 	mov	dpl,r7
   0949 12 07 4C           1979 	lcall	_write_obj_value
   094C 15 81              1980 	dec	sp
   094E 15 81              1981 	dec	sp
   0950 D0 07              1982 	pop	ar7
                           1983 ;	../fb_app_taster.c:435: send_obj_value(objno+0x40);
   0952 74 40              1984 	mov	a,#0x40
   0954 2F                 1985 	add	a,r7
   0955 F5 82              1986 	mov	dpl,a
   0957 02 18 B9           1987 	ljmp	_send_obj_value
   095A                    1988 00105$:
   095A 22                 1989 	ret
                           1990 ;------------------------------------------------------------
                           1991 ;Allocation info for local variables in function 'switch_led'
                           1992 ;------------------------------------------------------------
                           1993 ;onoff                     Allocated to registers b0 
                           1994 ;ledno                     Allocated to registers r7 
                           1995 ;command                   Allocated to registers r6 
                           1996 ;ledvar                    Allocated to registers r6 
                           1997 ;------------------------------------------------------------
                           1998 ;	../fb_app_taster.c:450: void switch_led(unsigned char ledno, __bit onoff)
                           1999 ;	-----------------------------------------
                           2000 ;	 function switch_led
                           2001 ;	-----------------------------------------
   095B                    2002 _switch_led:
   095B AF 82              2003 	mov	r7,dpl
                           2004 ;	../fb_app_taster.c:454: if (ledno<4) {
   095D BF 04 00           2005 	cjne	r7,#0x04,00130$
   0960                    2006 00130$:
   0960 40 01              2007 	jc	00131$
   0962 22                 2008 	ret
   0963                    2009 00131$:
                           2010 ;	../fb_app_taster.c:455: command = ((eeprom[COMMAND+(ledno*4)]) & 0x07);	// Befehl der Status LED
   0963 EF                 2011 	mov	a,r7
   0964 2F                 2012 	add	a,r7
   0965 25 E0              2013 	add	a,acc
   0967 24 D3              2014 	add	a,#0xD3
   0969 90 1D 00           2015 	mov	dptr,#_eeprom
   096C 93                 2016 	movc	a,@a+dptr
   096D FE                 2017 	mov	r6,a
   096E 53 06 07           2018 	anl	ar6,#0x07
                           2019 ;	../fb_app_taster.c:456: switch (command) {
   0971 BE 00 02           2020 	cjne	r6,#0x00,00132$
   0974 80 0F              2021 	sjmp	00101$
   0976                    2022 00132$:
   0976 BE 01 02           2023 	cjne	r6,#0x01,00133$
   0979 80 0E              2024 	sjmp	00102$
   097B                    2025 00133$:
   097B BE 03 02           2026 	cjne	r6,#0x03,00134$
   097E 80 0D              2027 	sjmp	00103$
   0980                    2028 00134$:
                           2029 ;	../fb_app_taster.c:457: case 0:		// immer AUS
   0980 BE 04 47           2030 	cjne	r6,#0x04,00109$
   0983 80 0C              2031 	sjmp	00104$
   0985                    2032 00101$:
                           2033 ;	../fb_app_taster.c:458: onoff=0;
   0985 C2 18              2034 	clr	b0
                           2035 ;	../fb_app_taster.c:459: break;
                           2036 ;	../fb_app_taster.c:460: case 1:		// immer an
   0987 80 41              2037 	sjmp	00109$
   0989                    2038 00102$:
                           2039 ;	../fb_app_taster.c:461: onoff=1;
   0989 D2 18              2040 	setb	b0
                           2041 ;	../fb_app_taster.c:462: break;
                           2042 ;	../fb_app_taster.c:464: case 3:		// LED = invertierte Statusanzeige
   098B 80 3D              2043 	sjmp	00109$
   098D                    2044 00103$:
                           2045 ;	../fb_app_taster.c:465: onoff=!onoff;
   098D B2 18              2046 	cpl	b0
                           2047 ;	../fb_app_taster.c:466: break;
                           2048 ;	../fb_app_taster.c:467: case 4:		// LED = Betaetigungsanzeige
   098F 80 39              2049 	sjmp	00109$
   0991                    2050 00104$:
                           2051 ;	../fb_app_taster.c:468: onoff=1;	// erstmal an beim druecken der Taste
   0991 D2 18              2052 	setb	b0
                           2053 ;	../fb_app_taster.c:469: timerstate[ledno]= 0x10;
   0993 EF                 2054 	mov	a,r7
   0994 24 3C              2055 	add	a,#_timerstate
   0996 F8                 2056 	mov	r0,a
   0997 76 10              2057 	mov	@r0,#0x10
                           2058 ;	../fb_app_taster.c:470: timerbase[ledno]=1;
   0999 EF                 2059 	mov	a,r7
   099A 24 34              2060 	add	a,#_timerbase
   099C F8                 2061 	mov	r0,a
   099D 76 01              2062 	mov	@r0,#0x01
                           2063 ;	../fb_app_taster.c:471: switch (eeprom[LED_DURATION]) {		// dann ueber delay-timer aus
   099F 90 1D CE           2064 	mov	dptr,#(_eeprom + 0x00ce)
   09A2 E4                 2065 	clr	a
   09A3 93                 2066 	movc	a,@a+dptr
   09A4 FE                 2067 	mov	r6,a
   09A5 BE 26 02           2068 	cjne	r6,#0x26,00136$
   09A8 80 0A              2069 	sjmp	00105$
   09AA                    2070 00136$:
   09AA BE 76 02           2071 	cjne	r6,#0x76,00137$
   09AD 80 0D              2072 	sjmp	00106$
   09AF                    2073 00137$:
                           2074 ;	../fb_app_taster.c:472: case 38:	// 0,75 sec
   09AF BE 96 18           2075 	cjne	r6,#0x96,00109$
   09B2 80 10              2076 	sjmp	00107$
   09B4                    2077 00105$:
                           2078 ;	../fb_app_taster.c:473: timercnt[ledno]=47;
   09B4 EF                 2079 	mov	a,r7
   09B5 24 2C              2080 	add	a,#_timercnt
   09B7 F8                 2081 	mov	r0,a
   09B8 76 2F              2082 	mov	@r0,#0x2F
                           2083 ;	../fb_app_taster.c:474: break;
                           2084 ;	../fb_app_taster.c:475: case 118:	// 2,25 sec
   09BA 80 0E              2085 	sjmp	00109$
   09BC                    2086 00106$:
                           2087 ;	../fb_app_taster.c:476: timercnt[ledno]=141;
   09BC EF                 2088 	mov	a,r7
   09BD 24 2C              2089 	add	a,#_timercnt
   09BF F8                 2090 	mov	r0,a
   09C0 76 8D              2091 	mov	@r0,#0x8D
                           2092 ;	../fb_app_taster.c:477: break;
                           2093 ;	../fb_app_taster.c:478: case 150:	// 3 sec
   09C2 80 06              2094 	sjmp	00109$
   09C4                    2095 00107$:
                           2096 ;	../fb_app_taster.c:479: timercnt[ledno]=188;
   09C4 EF                 2097 	mov	a,r7
   09C5 24 2C              2098 	add	a,#_timercnt
   09C7 F8                 2099 	mov	r0,a
   09C8 76 BC              2100 	mov	@r0,#0xBC
                           2101 ;	../fb_app_taster.c:482: }
   09CA                    2102 00109$:
                           2103 ;	../fb_app_taster.c:483: ledvar=LEDSTATE;
   09CA AE 29              2104 	mov	r6,_LEDSTATE
                           2105 ;	../fb_app_taster.c:484: ledvar&= ~(1<<(ledno+4));	// LEDs sind an Pin 4-7
   09CC EF                 2106 	mov	a,r7
   09CD 24 04              2107 	add	a,#0x04
   09CF FF                 2108 	mov	r7,a
   09D0 8F F0              2109 	mov	b,r7
   09D2 05 F0              2110 	inc	b
   09D4 74 01              2111 	mov	a,#0x01
   09D6 80 02              2112 	sjmp	00141$
   09D8                    2113 00139$:
   09D8 25 E0              2114 	add	a,acc
   09DA                    2115 00141$:
   09DA D5 F0 FB           2116 	djnz	b,00139$
   09DD F4                 2117 	cpl	a
   09DE 52 06              2118 	anl	ar6,a
                           2119 ;	../fb_app_taster.c:485: ledvar |= ((onoff<<(ledno+4)) | 0x0F);	// unteren 4 bits immer auf 1 lassen !!!
   09E0 A2 18              2120 	mov	c,b0
   09E2 E4                 2121 	clr	a
   09E3 33                 2122 	rlc	a
   09E4 FD                 2123 	mov	r5,a
   09E5 8F F0              2124 	mov	b,r7
   09E7 05 F0              2125 	inc	b
   09E9 ED                 2126 	mov	a,r5
   09EA 80 02              2127 	sjmp	00144$
   09EC                    2128 00142$:
   09EC 25 E0              2129 	add	a,acc
   09EE                    2130 00144$:
   09EE D5 F0 FB           2131 	djnz	b,00142$
   09F1 44 0F              2132 	orl	a,#0x0F
   09F3 4E                 2133 	orl	a,r6
   09F4 F5 29              2134 	mov	_LEDSTATE,a
                           2135 ;	../fb_app_taster.c:486: LEDSTATE=ledvar;
   09F6 22                 2136 	ret
                           2137 ;------------------------------------------------------------
                           2138 ;Allocation info for local variables in function 'timer0_int'
                           2139 ;------------------------------------------------------------
                           2140 ;	../fb_app_taster.c:491: void timer0_int  (void) __interrupt (1) // Interrupt T0 für soft PWM LED
                           2141 ;	-----------------------------------------
                           2142 ;	 function timer0_int
                           2143 ;	-----------------------------------------
   09F7                    2144 _timer0_int:
   09F7 C0 E0              2145 	push	acc
   09F9 C0 D0              2146 	push	psw
                           2147 ;	../fb_app_taster.c:493: dimmcompare++;
   09FB 05 2A              2148 	inc	_dimmcompare
                           2149 ;	../fb_app_taster.c:494: TF0=0;
   09FD C2 8D              2150 	clr	_TCON_5
                           2151 ;	../fb_app_taster.c:495: if((dimmcompare) <= dimmwert) PORT = LEDSTATE | 0x0F;// LEDs ein
   09FF C3                 2152 	clr	c
   0A00 E5 2B              2153 	mov	a,_dimmwert
   0A02 95 2A              2154 	subb	a,_dimmcompare
   0A04 40 08              2155 	jc	00102$
   0A06 74 0F              2156 	mov	a,#0x0F
   0A08 45 29              2157 	orl	a,_LEDSTATE
   0A0A F5 80              2158 	mov	_P0,a
   0A0C 80 03              2159 	sjmp	00104$
   0A0E                    2160 00102$:
                           2161 ;	../fb_app_taster.c:496: else PORT = 0x0F;//LEDs aus
   0A0E 75 80 0F           2162 	mov	_P0,#0x0F
   0A11                    2163 00104$:
   0A11 D0 D0              2164 	pop	psw
   0A13 D0 E0              2165 	pop	acc
   0A15 32                 2166 	reti
                           2167 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           2168 ;	eliminated unneeded push/pop dpl
                           2169 ;	eliminated unneeded push/pop dph
                           2170 ;	eliminated unneeded push/pop b
                           2171 ;------------------------------------------------------------
                           2172 ;Allocation info for local variables in function 'delay_timer'
                           2173 ;------------------------------------------------------------
                           2174 ;objno                     Allocated to stack - _bp +1
                           2175 ;delay_value               Allocated to registers r5 
                           2176 ;ledvar                    Allocated to registers r6 
                           2177 ;tmp                       Allocated to registers r4 
                           2178 ;m                         Allocated to registers r7 
                           2179 ;n                         Allocated to registers r6 
                           2180 ;i_tmp                     Allocated to registers r5 r4 
                           2181 ;sloc0                     Allocated to stack - _bp +9
                           2182 ;sloc1                     Allocated to stack - _bp +2
                           2183 ;------------------------------------------------------------
                           2184 ;	../fb_app_taster.c:509: void delay_timer(void)
                           2185 ;	-----------------------------------------
                           2186 ;	 function delay_timer
                           2187 ;	-----------------------------------------
   0A16                    2188 _delay_timer:
   0A16 C0 14              2189 	push	_bp
   0A18 85 81 14           2190 	mov	_bp,sp
   0A1B 05 81              2191 	inc	sp
   0A1D 05 81              2192 	inc	sp
                           2193 ;	../fb_app_taster.c:515: RTCCON=0x60;
   0A1F 75 D1 60           2194 	mov	_RTCCON,#0x60
                           2195 ;	../fb_app_taster.c:516: RTCH=0x00;//RTCH=0x01; 
   0A22 75 D2 00           2196 	mov	_RTCH,#0x00
                           2197 ;	../fb_app_taster.c:517: RTCL=0xE6;//RTCL=0xCD;	
   0A25 75 D3 E6           2198 	mov	_RTCL,#0xE6
                           2199 ;	../fb_app_taster.c:518: RTCCON=0x61; //	start_rtc(8) RTC neu starten mit 4ms
   0A28 75 D1 61           2200 	mov	_RTCCON,#0x61
                           2201 ;	../fb_app_taster.c:520: timer++;
   0A2B 05 24              2202 	inc	_timer
   0A2D E4                 2203 	clr	a
   0A2E B5 24 02           2204 	cjne	a,_timer,00219$
   0A31 05 25              2205 	inc	(_timer + 1)
   0A33                    2206 00219$:
                           2207 ;	../fb_app_taster.c:521: timerflags = timer&(~(timer-1));// flanke generieren
   0A33 E5 24              2208 	mov	a,_timer
   0A35 24 FF              2209 	add	a,#0xFF
   0A37 FE                 2210 	mov	r6,a
   0A38 E5 25              2211 	mov	a,(_timer + 1)
   0A3A 34 FF              2212 	addc	a,#0xFF
   0A3C FF                 2213 	mov	r7,a
   0A3D EE                 2214 	mov	a,r6
   0A3E F4                 2215 	cpl	a
   0A3F FE                 2216 	mov	r6,a
   0A40 EF                 2217 	mov	a,r7
   0A41 F4                 2218 	cpl	a
   0A42 FF                 2219 	mov	r7,a
   0A43 EE                 2220 	mov	a,r6
   0A44 55 24              2221 	anl	a,_timer
   0A46 F5 26              2222 	mov	_timerflags,a
   0A48 EF                 2223 	mov	a,r7
   0A49 55 25              2224 	anl	a,(_timer + 1)
   0A4B F5 27              2225 	mov	(_timerflags + 1),a
                           2226 ;	../fb_app_taster.c:522: for(n=0;n<16;n++){
   0A4D 7F 00              2227 	mov	r7,#0x00
   0A4F                    2228 00148$:
   0A4F BF 10 00           2229 	cjne	r7,#0x10,00220$
   0A52                    2230 00220$:
   0A52 50 35              2231 	jnc	00151$
                           2232 ;	../fb_app_taster.c:523: if(timerflags & 0x0001){// positive flags erzeugen und schieben
   0A54 E5 26              2233 	mov	a,_timerflags
   0A56 30 E0 22           2234 	jnb	acc.0,00106$
                           2235 ;	../fb_app_taster.c:524: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
   0A59 7E 00              2236 	mov	r6,#0x00
   0A5B                    2237 00144$:
   0A5B BE 08 00           2238 	cjne	r6,#0x08,00223$
   0A5E                    2239 00223$:
   0A5E 50 1B              2240 	jnc	00106$
                           2241 ;	../fb_app_taster.c:525: if( timercnt[m]){
   0A60 EE                 2242 	mov	a,r6
   0A61 24 2C              2243 	add	a,#_timercnt
   0A63 F9                 2244 	mov	r1,a
   0A64 E7                 2245 	mov	a,@r1
   0A65 FD                 2246 	mov	r5,a
   0A66 60 10              2247 	jz	00146$
                           2248 ;	../fb_app_taster.c:526: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
   0A68 EE                 2249 	mov	a,r6
   0A69 24 34              2250 	add	a,#_timerbase
   0A6B F8                 2251 	mov	r0,a
   0A6C 86 04              2252 	mov	ar4,@r0
   0A6E 53 04 0F           2253 	anl	ar4,#0x0F
   0A71 EC                 2254 	mov	a,r4
   0A72 B5 07 03           2255 	cjne	a,ar7,00146$
                           2256 ;	../fb_app_taster.c:527: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
   0A75 ED                 2257 	mov	a,r5
   0A76 14                 2258 	dec	a
   0A77 F7                 2259 	mov	@r1,a
   0A78                    2260 00146$:
                           2261 ;	../fb_app_taster.c:524: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
   0A78 0E                 2262 	inc	r6
   0A79 80 E0              2263 	sjmp	00144$
   0A7B                    2264 00106$:
                           2265 ;	../fb_app_taster.c:532: timerflags = timerflags>>1;
   0A7B E5 27              2266 	mov	a,(_timerflags + 1)
   0A7D C3                 2267 	clr	c
   0A7E 13                 2268 	rrc	a
   0A7F C5 26              2269 	xch	a,_timerflags
   0A81 13                 2270 	rrc	a
   0A82 C5 26              2271 	xch	a,_timerflags
   0A84 F5 27              2272 	mov	(_timerflags + 1),a
                           2273 ;	../fb_app_taster.c:522: for(n=0;n<16;n++){
   0A86 0F                 2274 	inc	r7
   0A87 80 C6              2275 	sjmp	00148$
   0A89                    2276 00151$:
                           2277 ;	../fb_app_taster.c:535: for(objno=0;objno<8;objno++) {
   0A89 A8 14              2278 	mov	r0,_bp
   0A8B 08                 2279 	inc	r0
   0A8C 76 00              2280 	mov	@r0,#0x00
   0A8E                    2281 00152$:
   0A8E A8 14              2282 	mov	r0,_bp
   0A90 08                 2283 	inc	r0
   0A91 B6 08 00           2284 	cjne	@r0,#0x08,00228$
   0A94                    2285 00228$:
   0A94 40 03              2286 	jc	00229$
   0A96 02 0E CA           2287 	ljmp	00156$
   0A99                    2288 00229$:
                           2289 ;	../fb_app_taster.c:536: if(!timercnt[objno]) {	// ... es ist also soweit
   0A99 A8 14              2290 	mov	r0,_bp
   0A9B 08                 2291 	inc	r0
   0A9C E6                 2292 	mov	a,@r0
   0A9D 24 2C              2293 	add	a,#_timercnt
   0A9F F9                 2294 	mov	r1,a
   0AA0 E7                 2295 	mov	a,@r1
   0AA1 60 03              2296 	jz	00230$
   0AA3 02 0E C3           2297 	ljmp	00154$
   0AA6                    2298 00230$:
                           2299 ;	../fb_app_taster.c:537: delay_value=timerstate[objno]& 0x0F;
   0AA6 C0 01              2300 	push	ar1
   0AA8 A9 14              2301 	mov	r1,_bp
   0AAA 09                 2302 	inc	r1
   0AAB E7                 2303 	mov	a,@r1
   0AAC 24 3C              2304 	add	a,#_timerstate
   0AAE F8                 2305 	mov	r0,a
   0AAF D0 01              2306 	pop	ar1
   0AB1 86 06              2307 	mov	ar6,@r0
   0AB3 74 0F              2308 	mov	a,#0x0F
   0AB5 5E                 2309 	anl	a,r6
   0AB6 FD                 2310 	mov	r5,a
                           2311 ;	../fb_app_taster.c:539: switch(timerstate[objno] & 0xF0){
   0AB7 53 06 F0           2312 	anl	ar6,#0xF0
   0ABA BE 10 02           2313 	cjne	r6,#0x10,00231$
   0ABD 80 44              2314 	sjmp	00107$
   0ABF                    2315 00231$:
   0ABF BE 20 02           2316 	cjne	r6,#0x20,00232$
   0AC2 80 62              2317 	sjmp	00108$
   0AC4                    2318 00232$:
   0AC4 BE 30 03           2319 	cjne	r6,#0x30,00233$
   0AC7 02 0B A0           2320 	ljmp	00112$
   0ACA                    2321 00233$:
   0ACA BE 40 03           2322 	cjne	r6,#0x40,00234$
   0ACD 02 0C 30           2323 	ljmp	00116$
   0AD0                    2324 00234$:
   0AD0 BE 50 03           2325 	cjne	r6,#0x50,00235$
   0AD3 02 0C 37           2326 	ljmp	00117$
   0AD6                    2327 00235$:
   0AD6 BE 60 03           2328 	cjne	r6,#0x60,00236$
   0AD9 02 0E C3           2329 	ljmp	00154$
   0ADC                    2330 00236$:
   0ADC BE 70 03           2331 	cjne	r6,#0x70,00237$
   0ADF 02 0C 53           2332 	ljmp	00120$
   0AE2                    2333 00237$:
   0AE2 BE 80 03           2334 	cjne	r6,#0x80,00238$
   0AE5 02 0C 53           2335 	ljmp	00120$
   0AE8                    2336 00238$:
   0AE8 BE 90 03           2337 	cjne	r6,#0x90,00239$
   0AEB 02 0D 46           2338 	ljmp	00128$
   0AEE                    2339 00239$:
   0AEE BE A0 03           2340 	cjne	r6,#0xA0,00240$
   0AF1 02 0D 46           2341 	ljmp	00128$
   0AF4                    2342 00240$:
   0AF4 BE B0 03           2343 	cjne	r6,#0xB0,00241$
   0AF7 02 0E 30           2344 	ljmp	00133$
   0AFA                    2345 00241$:
   0AFA BE C0 03           2346 	cjne	r6,#0xC0,00242$
   0AFD 02 0E 30           2347 	ljmp	00133$
   0B00                    2348 00242$:
   0B00 02 0E C3           2349 	ljmp	00154$
                           2350 ;	../fb_app_taster.c:541: case 0x10:
   0B03                    2351 00107$:
                           2352 ;	../fb_app_taster.c:543: ledvar=LEDSTATE;
   0B03 AE 29              2353 	mov	r6,_LEDSTATE
                           2354 ;	../fb_app_taster.c:544: ledvar &= ~(1<<(objno+4));	// LEDs sind an Pin 4-7
   0B05 A9 14              2355 	mov	r1,_bp
   0B07 09                 2356 	inc	r1
   0B08 74 04              2357 	mov	a,#0x04
   0B0A 27                 2358 	add	a,@r1
   0B0B F5 F0              2359 	mov	b,a
   0B0D 05 F0              2360 	inc	b
   0B0F 74 01              2361 	mov	a,#0x01
   0B11 80 02              2362 	sjmp	00245$
   0B13                    2363 00243$:
   0B13 25 E0              2364 	add	a,acc
   0B15                    2365 00245$:
   0B15 D5 F0 FB           2366 	djnz	b,00243$
   0B18 F4                 2367 	cpl	a
   0B19 FC                 2368 	mov	r4,a
   0B1A 52 06              2369 	anl	ar6,a
                           2370 ;	../fb_app_taster.c:545: ledvar |= 0x0F;				// unbedingt taster pins wieder auf 1
   0B1C 74 0F              2371 	mov	a,#0x0F
   0B1E 4E                 2372 	orl	a,r6
   0B1F F5 29              2373 	mov	_LEDSTATE,a
                           2374 ;	../fb_app_taster.c:547: timerstate[objno]=0;
   0B21 76 00              2375 	mov	@r0,#0x00
                           2376 ;	../fb_app_taster.c:548: break;
   0B23 02 0E C3           2377 	ljmp	00154$
                           2378 ;	../fb_app_taster.c:549: case 0x20:	// Dimmen
   0B26                    2379 00108$:
                           2380 ;	../fb_app_taster.c:550: write_obj_value(objno+4,delay_value);
   0B26 8D 04              2381 	mov	ar4,r5
   0B28 7E 00              2382 	mov	r6,#0x00
   0B2A A8 14              2383 	mov	r0,_bp
   0B2C 08                 2384 	inc	r0
   0B2D 74 04              2385 	mov	a,#0x04
   0B2F 26                 2386 	add	a,@r0
   0B30 FB                 2387 	mov	r3,a
   0B31 C0 03              2388 	push	ar3
   0B33 C0 04              2389 	push	ar4
   0B35 C0 06              2390 	push	ar6
   0B37 8B 82              2391 	mov	dpl,r3
   0B39 12 07 4C           2392 	lcall	_write_obj_value
   0B3C 15 81              2393 	dec	sp
   0B3E 15 81              2394 	dec	sp
   0B40 D0 03              2395 	pop	ar3
                           2396 ;	../fb_app_taster.c:551: send_obj_value(objno+4);		// dimmkommando senden
   0B42 8B 82              2397 	mov	dpl,r3
   0B44 12 18 B9           2398 	lcall	_send_obj_value
                           2399 ;	../fb_app_taster.c:553: if(!(eeprom[0xD5+((objno-4)*4)]& 0x08)){// wenn Telegrammwiederholung eingeschalten
   0B47 A8 14              2400 	mov	r0,_bp
   0B49 08                 2401 	inc	r0
   0B4A E6                 2402 	mov	a,@r0
   0B4B 24 FC              2403 	add	a,#0xFC
   0B4D 25 E0              2404 	add	a,acc
   0B4F 25 E0              2405 	add	a,acc
   0B51 24 D5              2406 	add	a,#0xD5
   0B53 90 1D 00           2407 	mov	dptr,#_eeprom
   0B56 93                 2408 	movc	a,@a+dptr
   0B57 FE                 2409 	mov	r6,a
   0B58 20 E3 30           2410 	jb	acc.3,00110$
                           2411 ;	../fb_app_taster.c:580: */				timercnt[objno]=tele_repeat_value[eeprom[0xD5+((objno-4)*4)]& 0x07];	
   0B5B A8 14              2412 	mov	r0,_bp
   0B5D 08                 2413 	inc	r0
   0B5E E6                 2414 	mov	a,@r0
   0B5F 24 2C              2415 	add	a,#_timercnt
   0B61 FE                 2416 	mov	r6,a
   0B62 A8 14              2417 	mov	r0,_bp
   0B64 08                 2418 	inc	r0
   0B65 E6                 2419 	mov	a,@r0
   0B66 24 FC              2420 	add	a,#0xFC
   0B68 25 E0              2421 	add	a,acc
   0B6A 25 E0              2422 	add	a,acc
   0B6C 24 D5              2423 	add	a,#0xD5
   0B6E 90 1D 00           2424 	mov	dptr,#_eeprom
   0B71 93                 2425 	movc	a,@a+dptr
   0B72 FC                 2426 	mov	r4,a
   0B73 74 07              2427 	mov	a,#0x07
   0B75 5C                 2428 	anl	a,r4
   0B76 90 1C 05           2429 	mov	dptr,#_tele_repeat_value
   0B79 93                 2430 	movc	a,@a+dptr
   0B7A FC                 2431 	mov	r4,a
   0B7B A8 06              2432 	mov	r0,ar6
   0B7D A6 04              2433 	mov	@r0,ar4
                           2434 ;	../fb_app_taster.c:582: timerbase[objno]=0;
   0B7F A8 14              2435 	mov	r0,_bp
   0B81 08                 2436 	inc	r0
   0B82 E6                 2437 	mov	a,@r0
   0B83 24 34              2438 	add	a,#_timerbase
   0B85 F8                 2439 	mov	r0,a
   0B86 76 00              2440 	mov	@r0,#0x00
   0B88 02 0E C3           2441 	ljmp	00154$
   0B8B                    2442 00110$:
                           2443 ;	../fb_app_taster.c:585: timercnt[objno]=0;
   0B8B A8 14              2444 	mov	r0,_bp
   0B8D 08                 2445 	inc	r0
   0B8E E6                 2446 	mov	a,@r0
   0B8F 24 2C              2447 	add	a,#_timercnt
   0B91 F8                 2448 	mov	r0,a
   0B92 76 00              2449 	mov	@r0,#0x00
                           2450 ;	../fb_app_taster.c:586: timerstate[objno]=0;
   0B94 A8 14              2451 	mov	r0,_bp
   0B96 08                 2452 	inc	r0
   0B97 E6                 2453 	mov	a,@r0
   0B98 24 3C              2454 	add	a,#_timerstate
   0B9A F8                 2455 	mov	r0,a
   0B9B 76 00              2456 	mov	@r0,#0x00
                           2457 ;	../fb_app_taster.c:588: break;
   0B9D 02 0E C3           2458 	ljmp	00154$
                           2459 ;	../fb_app_taster.c:591: case 0x30:	// 0x30, 0x31 für langzeit telegramm senden
   0BA0                    2460 00112$:
                           2461 ;	../fb_app_taster.c:592: write_obj_value(objno+4,delay_value & 0x01);
   0BA0 53 05 01           2462 	anl	ar5,#0x01
   0BA3 7E 00              2463 	mov	r6,#0x00
   0BA5 A8 14              2464 	mov	r0,_bp
   0BA7 08                 2465 	inc	r0
   0BA8 74 04              2466 	mov	a,#0x04
   0BAA 26                 2467 	add	a,@r0
   0BAB FC                 2468 	mov	r4,a
   0BAC C0 04              2469 	push	ar4
   0BAE C0 05              2470 	push	ar5
   0BB0 C0 06              2471 	push	ar6
   0BB2 8C 82              2472 	mov	dpl,r4
   0BB4 12 07 4C           2473 	lcall	_write_obj_value
   0BB7 15 81              2474 	dec	sp
   0BB9 15 81              2475 	dec	sp
   0BBB D0 04              2476 	pop	ar4
                           2477 ;	../fb_app_taster.c:593: send_obj_value(objno+4);				// Langzeit Telegramm senden
   0BBD 8C 82              2478 	mov	dpl,r4
   0BBF 12 18 B9           2479 	lcall	_send_obj_value
                           2480 ;	../fb_app_taster.c:596: timercnt[objno]=eeprom[DEL_FACTOR2+((objno-4)*4)];	// Faktor Dauer	T2		
   0BC2 A8 14              2481 	mov	r0,_bp
   0BC4 08                 2482 	inc	r0
   0BC5 E6                 2483 	mov	a,@r0
   0BC6 24 2C              2484 	add	a,#_timercnt
   0BC8 FE                 2485 	mov	r6,a
   0BC9 A8 14              2486 	mov	r0,_bp
   0BCB 08                 2487 	inc	r0
   0BCC E6                 2488 	mov	a,@r0
   0BCD 24 FC              2489 	add	a,#0xFC
   0BCF 25 E0              2490 	add	a,acc
   0BD1 25 E0              2491 	add	a,acc
   0BD3 FD                 2492 	mov	r5,a
   0BD4 24 D6              2493 	add	a,#0xD6
   0BD6 90 1D 00           2494 	mov	dptr,#_eeprom
   0BD9 93                 2495 	movc	a,@a+dptr
   0BDA FC                 2496 	mov	r4,a
   0BDB A8 06              2497 	mov	r0,ar6
   0BDD A6 04              2498 	mov	@r0,ar4
                           2499 ;	../fb_app_taster.c:597: timerbase[objno]=(eeprom[0xD4+((objno-4)*4)]&0x60)>>3;	// Basis Dauer T2
   0BDF A8 14              2500 	mov	r0,_bp
   0BE1 08                 2501 	inc	r0
   0BE2 E6                 2502 	mov	a,@r0
   0BE3 24 34              2503 	add	a,#_timerbase
   0BE5 FB                 2504 	mov	r3,a
   0BE6 74 D4              2505 	mov	a,#0xD4
   0BE8 2D                 2506 	add	a,r5
   0BE9 90 1D 00           2507 	mov	dptr,#_eeprom
   0BEC 93                 2508 	movc	a,@a+dptr
   0BED 54 60              2509 	anl	a,#0x60
   0BEF C4                 2510 	swap	a
   0BF0 23                 2511 	rl	a
   0BF1 54 1F              2512 	anl	a,#0x1F
   0BF3 FD                 2513 	mov	r5,a
   0BF4 A8 03              2514 	mov	r0,ar3
   0BF6 A6 05              2515 	mov	@r0,ar5
                           2516 ;	../fb_app_taster.c:598: if (timercnt[objno]) {	// wenn keine lamellenverstellzeit dann nix tun
   0BF8 EC                 2517 	mov	a,r4
   0BF9 60 25              2518 	jz	00114$
                           2519 ;	../fb_app_taster.c:599: timerstate[objno]=((eeprom[COMMAND+((objno-4)*4)]&0x10)>>4)+0x40; // 0x40,0x41 fuer ende T2 (lamellenvestellzeit)
   0BFB A8 14              2520 	mov	r0,_bp
   0BFD 08                 2521 	inc	r0
   0BFE E6                 2522 	mov	a,@r0
   0BFF 24 3C              2523 	add	a,#_timerstate
   0C01 FD                 2524 	mov	r5,a
   0C02 A8 14              2525 	mov	r0,_bp
   0C04 08                 2526 	inc	r0
   0C05 E6                 2527 	mov	a,@r0
   0C06 24 FC              2528 	add	a,#0xFC
   0C08 25 E0              2529 	add	a,acc
   0C0A 25 E0              2530 	add	a,acc
   0C0C 24 D3              2531 	add	a,#0xD3
   0C0E 90 1D 00           2532 	mov	dptr,#_eeprom
   0C11 93                 2533 	movc	a,@a+dptr
   0C12 54 10              2534 	anl	a,#0x10
   0C14 C4                 2535 	swap	a
   0C15 54 0F              2536 	anl	a,#0x0F
   0C17 FC                 2537 	mov	r4,a
   0C18 24 40              2538 	add	a,#0x40
   0C1A A8 05              2539 	mov	r0,ar5
   0C1C F6                 2540 	mov	@r0,a
   0C1D 02 0E C3           2541 	ljmp	00154$
   0C20                    2542 00114$:
                           2543 ;	../fb_app_taster.c:602: timercnt[objno]=0;
   0C20 A8 06              2544 	mov	r0,ar6
   0C22 76 00              2545 	mov	@r0,#0x00
                           2546 ;	../fb_app_taster.c:603: timerstate[objno]=0;
   0C24 A8 14              2547 	mov	r0,_bp
   0C26 08                 2548 	inc	r0
   0C27 E6                 2549 	mov	a,@r0
   0C28 24 3C              2550 	add	a,#_timerstate
   0C2A F8                 2551 	mov	r0,a
   0C2B 76 00              2552 	mov	@r0,#0x00
                           2553 ;	../fb_app_taster.c:605: break;			
   0C2D 02 0E C3           2554 	ljmp	00154$
                           2555 ;	../fb_app_taster.c:606: case 0x40:
   0C30                    2556 00116$:
                           2557 ;	../fb_app_taster.c:608: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
   0C30 76 00              2558 	mov	@r0,#0x00
                           2559 ;	../fb_app_taster.c:609: timercnt[objno]=0;
   0C32 77 00              2560 	mov	@r1,#0x00
                           2561 ;	../fb_app_taster.c:610: break;
   0C34 02 0E C3           2562 	ljmp	00154$
                           2563 ;	../fb_app_taster.c:611: case 0x50: // Wertgeber Lichtszene lang drücken zum speichern
   0C37                    2564 00117$:
                           2565 ;	../fb_app_taster.c:612: switch_led(objno-4,1);
   0C37 A8 14              2566 	mov	r0,_bp
   0C39 08                 2567 	inc	r0
   0C3A E6                 2568 	mov	a,@r0
   0C3B 24 FC              2569 	add	a,#0xFC
   0C3D F5 82              2570 	mov	dpl,a
   0C3F D2 F0              2571 	setb	b[0]
   0C41 85 F0 23           2572 	mov	bits,b
   0C44 12 09 5B           2573 	lcall	_switch_led
                           2574 ;	../fb_app_taster.c:613: timerstate[objno]=0x60;
   0C47 A8 14              2575 	mov	r0,_bp
   0C49 08                 2576 	inc	r0
   0C4A E6                 2577 	mov	a,@r0
   0C4B 24 3C              2578 	add	a,#_timerstate
   0C4D F8                 2579 	mov	r0,a
   0C4E 76 60              2580 	mov	@r0,#0x60
                           2581 ;	../fb_app_taster.c:614: break;
   0C50 02 0E C3           2582 	ljmp	00154$
                           2583 ;	../fb_app_taster.c:619: case 0x80: // Wertgeber Helligkeit verstellen
   0C53                    2584 00120$:
                           2585 ;	../fb_app_taster.c:620: timerbase[objno]=0;
   0C53 A8 14              2586 	mov	r0,_bp
   0C55 08                 2587 	inc	r0
   0C56 E6                 2588 	mov	a,@r0
   0C57 24 34              2589 	add	a,#_timerbase
   0C59 F8                 2590 	mov	r0,a
   0C5A 76 00              2591 	mov	@r0,#0x00
                           2592 ;	../fb_app_taster.c:621: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
   0C5C A8 14              2593 	mov	r0,_bp
   0C5E 08                 2594 	inc	r0
   0C5F E6                 2595 	mov	a,@r0
   0C60 24 2C              2596 	add	a,#_timercnt
   0C62 F9                 2597 	mov	r1,a
   0C63 A8 14              2598 	mov	r0,_bp
   0C65 08                 2599 	inc	r0
   0C66 E6                 2600 	mov	a,@r0
   0C67 24 FC              2601 	add	a,#0xFC
   0C69 25 E0              2602 	add	a,acc
   0C6B 25 E0              2603 	add	a,acc
   0C6D FE                 2604 	mov	r6,a
   0C6E 24 D4              2605 	add	a,#0xD4
   0C70 90 1D 00           2606 	mov	dptr,#_eeprom
   0C73 93                 2607 	movc	a,@a+dptr
   0C74 54 30              2608 	anl	a,#0x30
   0C76 C4                 2609 	swap	a
   0C77 54 0F              2610 	anl	a,#0x0F
   0C79 90 1C 05           2611 	mov	dptr,#_tele_repeat_value
   0C7C 93                 2612 	movc	a,@a+dptr
   0C7D F7                 2613 	mov	@r1,a
                           2614 ;	../fb_app_taster.c:622: i_tmp=(eeprom[0xD5+4*(objno-4)])<<8;
   0C7E 74 D5              2615 	mov	a,#0xD5
   0C80 2E                 2616 	add	a,r6
   0C81 90 1D 00           2617 	mov	dptr,#_eeprom
   0C84 93                 2618 	movc	a,@a+dptr
   0C85 FC                 2619 	mov	r4,a
   0C86 7D 00              2620 	mov	r5,#0x00
                           2621 ;	../fb_app_taster.c:623: i_tmp +=eeprom[0xD6+4*(objno-4)];
   0C88 74 D6              2622 	mov	a,#0xD6
   0C8A 2E                 2623 	add	a,r6
   0C8B 90 1D 00           2624 	mov	dptr,#_eeprom
   0C8E 93                 2625 	movc	a,@a+dptr
   0C8F FE                 2626 	mov	r6,a
   0C90 7B 00              2627 	mov	r3,#0x00
   0C92 2D                 2628 	add	a,r5
   0C93 FD                 2629 	mov	r5,a
   0C94 EB                 2630 	mov	a,r3
   0C95 3C                 2631 	addc	a,r4
   0C96 FC                 2632 	mov	r4,a
                           2633 ;	../fb_app_taster.c:624: if (i_tmp==0x39FD || i_tmp==0x3828)	//Differenz ausgleichen
   0C97 BD FD 05           2634 	cjne	r5,#0xFD,00248$
   0C9A BC 39 02           2635 	cjne	r4,#0x39,00248$
   0C9D 80 06              2636 	sjmp	00121$
   0C9F                    2637 00248$:
   0C9F BD 28 08           2638 	cjne	r5,#0x28,00122$
   0CA2 BC 38 05           2639 	cjne	r4,#0x38,00122$
   0CA5                    2640 00121$:
                           2641 ;	../fb_app_taster.c:626: i_tmp--;
   0CA5 1D                 2642 	dec	r5
   0CA6 BD FF 01           2643 	cjne	r5,#0xFF,00251$
   0CA9 1C                 2644 	dec	r4
   0CAA                    2645 00251$:
   0CAA                    2646 00122$:
                           2647 ;	../fb_app_taster.c:628: i_tmp -= 0x27;
   0CAA ED                 2648 	mov	a,r5
   0CAB 24 D9              2649 	add	a,#0xD9
   0CAD FD                 2650 	mov	r5,a
   0CAE EC                 2651 	mov	a,r4
   0CAF 34 FF              2652 	addc	a,#0xFF
                           2653 ;	../fb_app_taster.c:630: if(!(i_tmp&0x0800)){
   0CB1 FC                 2654 	mov	r4,a
   0CB2 20 E3 06           2655 	jb	acc.3,00125$
                           2656 ;	../fb_app_taster.c:631: i_tmp=0x03C94;
   0CB5 7D 94              2657 	mov	r5,#0x94
   0CB7 7C 3C              2658 	mov	r4,#0x3C
   0CB9 80 18              2659 	sjmp	00126$
   0CBB                    2660 00125$:
                           2661 ;	../fb_app_taster.c:634: switch_led(objno-4,1);
   0CBB A8 14              2662 	mov	r0,_bp
   0CBD 08                 2663 	inc	r0
   0CBE E6                 2664 	mov	a,@r0
   0CBF 24 FC              2665 	add	a,#0xFC
   0CC1 F5 82              2666 	mov	dpl,a
   0CC3 D2 F0              2667 	setb	b[0]
   0CC5 C0 05              2668 	push	ar5
   0CC7 C0 04              2669 	push	ar4
   0CC9 85 F0 23           2670 	mov	bits,b
   0CCC 12 09 5B           2671 	lcall	_switch_led
   0CCF D0 04              2672 	pop	ar4
   0CD1 D0 05              2673 	pop	ar5
   0CD3                    2674 00126$:
                           2675 ;	../fb_app_taster.c:636: write_obj_value(objno+4,i_tmp);// wir rechnen immer mit exp 2^7
   0CD3 A8 14              2676 	mov	r0,_bp
   0CD5 08                 2677 	inc	r0
   0CD6 A9 14              2678 	mov	r1,_bp
   0CD8 09                 2679 	inc	r1
   0CD9 09                 2680 	inc	r1
   0CDA 74 04              2681 	mov	a,#0x04
   0CDC 26                 2682 	add	a,@r0
   0CDD F7                 2683 	mov	@r1,a
   0CDE C0 05              2684 	push	ar5
   0CE0 C0 04              2685 	push	ar4
   0CE2 A8 14              2686 	mov	r0,_bp
   0CE4 08                 2687 	inc	r0
   0CE5 08                 2688 	inc	r0
   0CE6 86 82              2689 	mov	dpl,@r0
   0CE8 12 07 4C           2690 	lcall	_write_obj_value
   0CEB 15 81              2691 	dec	sp
   0CED 15 81              2692 	dec	sp
                           2693 ;	../fb_app_taster.c:637: timerstate[objno]=0x80;
   0CEF A8 14              2694 	mov	r0,_bp
   0CF1 08                 2695 	inc	r0
   0CF2 E6                 2696 	mov	a,@r0
   0CF3 24 3C              2697 	add	a,#_timerstate
   0CF5 F8                 2698 	mov	r0,a
   0CF6 76 80              2699 	mov	@r0,#0x80
                           2700 ;	../fb_app_taster.c:638: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   0CF8 C2 AF              2701 	clr	_IEN0_7
                           2702 ;	../fb_app_taster.c:639: START_WRITECYCLE
   0CFA 75 E4 00           2703 	mov	_FMCON,#0x00
                           2704 ;	../fb_app_taster.c:640: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
   0CFD 75 E7 1D           2705 	mov	_FMADRH,#0x1D
   0D00 A8 14              2706 	mov	r0,_bp
   0D02 08                 2707 	inc	r0
   0D03 E6                 2708 	mov	a,@r0
   0D04 24 FC              2709 	add	a,#0xFC
   0D06 25 E0              2710 	add	a,acc
   0D08 25 E0              2711 	add	a,acc
   0D0A FD                 2712 	mov	r5,a
   0D0B 24 D5              2713 	add	a,#0xD5
   0D0D F5 E6              2714 	mov	_FMADRL,a
   0D0F A8 14              2715 	mov	r0,_bp
   0D11 08                 2716 	inc	r0
   0D12 08                 2717 	inc	r0
   0D13 86 82              2718 	mov	dpl,@r0
   0D15 C0 05              2719 	push	ar5
   0D17 12 07 0C           2720 	lcall	_read_obj_value
   0D1A AB 83              2721 	mov	r3,dph
   0D1C D0 05              2722 	pop	ar5
   0D1E 8B E5              2723 	mov	_FMDATA,r3
                           2724 ;	../fb_app_taster.c:641: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
   0D20 75 E7 1D           2725 	mov	_FMADRH,#0x1D
   0D23 74 D6              2726 	mov	a,#0xD6
   0D25 2D                 2727 	add	a,r5
   0D26 F5 E6              2728 	mov	_FMADRL,a
   0D28 A8 14              2729 	mov	r0,_bp
   0D2A 08                 2730 	inc	r0
   0D2B 08                 2731 	inc	r0
   0D2C 86 82              2732 	mov	dpl,@r0
   0D2E 12 07 0C           2733 	lcall	_read_obj_value
   0D31 AA 82              2734 	mov	r2,dpl
   0D33 8A E5              2735 	mov	_FMDATA,r2
                           2736 ;	../fb_app_taster.c:642: STOP_WRITECYCLE // Luxwert speichern
   0D35 75 E4 68           2737 	mov	_FMCON,#0x68
                           2738 ;	../fb_app_taster.c:643: EA=1;
   0D38 D2 AF              2739 	setb	_IEN0_7
                           2740 ;	../fb_app_taster.c:644: send_obj_value(objno+4);
   0D3A A8 14              2741 	mov	r0,_bp
   0D3C 08                 2742 	inc	r0
   0D3D 08                 2743 	inc	r0
   0D3E 86 82              2744 	mov	dpl,@r0
   0D40 12 18 B9           2745 	lcall	_send_obj_value
                           2746 ;	../fb_app_taster.c:646: break;
   0D43 02 0E C3           2747 	ljmp	00154$
                           2748 ;	../fb_app_taster.c:649: case 0xA0: // Wertgeber Temperatur verstellen
   0D46                    2749 00128$:
                           2750 ;	../fb_app_taster.c:650: timerbase[objno]=0;
   0D46 A8 14              2751 	mov	r0,_bp
   0D48 08                 2752 	inc	r0
   0D49 E6                 2753 	mov	a,@r0
   0D4A 24 34              2754 	add	a,#_timerbase
   0D4C F8                 2755 	mov	r0,a
   0D4D 76 00              2756 	mov	@r0,#0x00
                           2757 ;	../fb_app_taster.c:651: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
   0D4F A8 14              2758 	mov	r0,_bp
   0D51 08                 2759 	inc	r0
   0D52 E6                 2760 	mov	a,@r0
   0D53 24 2C              2761 	add	a,#_timercnt
   0D55 F9                 2762 	mov	r1,a
   0D56 A8 14              2763 	mov	r0,_bp
   0D58 08                 2764 	inc	r0
   0D59 E6                 2765 	mov	a,@r0
   0D5A 24 FC              2766 	add	a,#0xFC
   0D5C 25 E0              2767 	add	a,acc
   0D5E 25 E0              2768 	add	a,acc
   0D60 FF                 2769 	mov	r7,a
   0D61 24 D4              2770 	add	a,#0xD4
   0D63 90 1D 00           2771 	mov	dptr,#_eeprom
   0D66 93                 2772 	movc	a,@a+dptr
   0D67 54 30              2773 	anl	a,#0x30
   0D69 C4                 2774 	swap	a
   0D6A 54 0F              2775 	anl	a,#0x0F
   0D6C 90 1C 05           2776 	mov	dptr,#_tele_repeat_value
   0D6F 93                 2777 	movc	a,@a+dptr
   0D70 F7                 2778 	mov	@r1,a
                           2779 ;	../fb_app_taster.c:652: i_tmp=(eeprom[0xD5+4*(objno-4)]&0x07)<<8;
   0D71 74 D5              2780 	mov	a,#0xD5
   0D73 2F                 2781 	add	a,r7
   0D74 90 1D 00           2782 	mov	dptr,#_eeprom
   0D77 93                 2783 	movc	a,@a+dptr
   0D78 FE                 2784 	mov	r6,a
   0D79 53 06 07           2785 	anl	ar6,#0x07
   0D7C 8E 03              2786 	mov	ar3,r6
   0D7E 7E 00              2787 	mov	r6,#0x00
   0D80 8E 05              2788 	mov	ar5,r6
   0D82 8B 04              2789 	mov	ar4,r3
                           2790 ;	../fb_app_taster.c:653: i_tmp +=eeprom[0xD6+4*(objno-4)];
   0D84 74 D6              2791 	mov	a,#0xD6
   0D86 2F                 2792 	add	a,r7
   0D87 90 1D 00           2793 	mov	dptr,#_eeprom
   0D8A 93                 2794 	movc	a,@a+dptr
   0D8B FF                 2795 	mov	r7,a
   0D8C 7E 00              2796 	mov	r6,#0x00
   0D8E 2D                 2797 	add	a,r5
   0D8F FD                 2798 	mov	r5,a
   0D90 EE                 2799 	mov	a,r6
   0D91 3C                 2800 	addc	a,r4
   0D92 FC                 2801 	mov	r4,a
                           2802 ;	../fb_app_taster.c:654: if(i_tmp>=0x0032){
   0D93 C3                 2803 	clr	c
   0D94 ED                 2804 	mov	a,r5
   0D95 94 32              2805 	subb	a,#0x32
   0D97 EC                 2806 	mov	a,r4
   0D98 94 00              2807 	subb	a,#0x00
   0D9A 40 22              2808 	jc	00130$
                           2809 ;	../fb_app_taster.c:655: i_tmp -= 0x32;
   0D9C ED                 2810 	mov	a,r5
   0D9D 24 CE              2811 	add	a,#0xCE
   0D9F FD                 2812 	mov	r5,a
   0DA0 EC                 2813 	mov	a,r4
   0DA1 34 FF              2814 	addc	a,#0xFF
   0DA3 FC                 2815 	mov	r4,a
                           2816 ;	../fb_app_taster.c:656: switch_led(objno-4,1);
   0DA4 A8 14              2817 	mov	r0,_bp
   0DA6 08                 2818 	inc	r0
   0DA7 E6                 2819 	mov	a,@r0
   0DA8 24 FC              2820 	add	a,#0xFC
   0DAA F5 82              2821 	mov	dpl,a
   0DAC D2 F0              2822 	setb	b[0]
   0DAE C0 05              2823 	push	ar5
   0DB0 C0 04              2824 	push	ar4
   0DB2 85 F0 23           2825 	mov	bits,b
   0DB5 12 09 5B           2826 	lcall	_switch_led
   0DB8 D0 04              2827 	pop	ar4
   0DBA D0 05              2828 	pop	ar5
   0DBC 80 04              2829 	sjmp	00131$
   0DBE                    2830 00130$:
                           2831 ;	../fb_app_taster.c:659: i_tmp=0x07D0;
   0DBE 7D D0              2832 	mov	r5,#0xD0
   0DC0 7C 07              2833 	mov	r4,#0x07
   0DC2                    2834 00131$:
                           2835 ;	../fb_app_taster.c:661: write_obj_value(objno+4,i_tmp|0x0800);// wir rechnen immer mit exp 2^1
   0DC2 43 04 08           2836 	orl	ar4,#0x08
   0DC5 A8 14              2837 	mov	r0,_bp
   0DC7 08                 2838 	inc	r0
   0DC8 74 04              2839 	mov	a,#0x04
   0DCA 26                 2840 	add	a,@r0
   0DCB FF                 2841 	mov	r7,a
   0DCC C0 07              2842 	push	ar7
   0DCE C0 05              2843 	push	ar5
   0DD0 C0 04              2844 	push	ar4
   0DD2 8F 82              2845 	mov	dpl,r7
   0DD4 12 07 4C           2846 	lcall	_write_obj_value
   0DD7 15 81              2847 	dec	sp
   0DD9 15 81              2848 	dec	sp
   0DDB D0 07              2849 	pop	ar7
                           2850 ;	../fb_app_taster.c:662: timerstate[objno]=0xA0;
   0DDD A8 14              2851 	mov	r0,_bp
   0DDF 08                 2852 	inc	r0
   0DE0 E6                 2853 	mov	a,@r0
   0DE1 24 3C              2854 	add	a,#_timerstate
   0DE3 F8                 2855 	mov	r0,a
   0DE4 76 A0              2856 	mov	@r0,#0xA0
                           2857 ;	../fb_app_taster.c:663: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   0DE6 C2 AF              2858 	clr	_IEN0_7
                           2859 ;	../fb_app_taster.c:664: START_WRITECYCLE
   0DE8 75 E4 00           2860 	mov	_FMCON,#0x00
                           2861 ;	../fb_app_taster.c:665: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
   0DEB 75 E7 1D           2862 	mov	_FMADRH,#0x1D
   0DEE A8 14              2863 	mov	r0,_bp
   0DF0 08                 2864 	inc	r0
   0DF1 E6                 2865 	mov	a,@r0
   0DF2 24 FC              2866 	add	a,#0xFC
   0DF4 25 E0              2867 	add	a,acc
   0DF6 25 E0              2868 	add	a,acc
   0DF8 FE                 2869 	mov	r6,a
   0DF9 24 D5              2870 	add	a,#0xD5
   0DFB F5 E6              2871 	mov	_FMADRL,a
   0DFD 8F 82              2872 	mov	dpl,r7
   0DFF C0 07              2873 	push	ar7
   0E01 C0 06              2874 	push	ar6
   0E03 12 07 0C           2875 	lcall	_read_obj_value
   0E06 AB 83              2876 	mov	r3,dph
   0E08 D0 06              2877 	pop	ar6
   0E0A D0 07              2878 	pop	ar7
   0E0C 8B E5              2879 	mov	_FMDATA,r3
                           2880 ;	../fb_app_taster.c:666: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
   0E0E 75 E7 1D           2881 	mov	_FMADRH,#0x1D
   0E11 74 D6              2882 	mov	a,#0xD6
   0E13 2E                 2883 	add	a,r6
   0E14 F5 E6              2884 	mov	_FMADRL,a
   0E16 8F 82              2885 	mov	dpl,r7
   0E18 C0 07              2886 	push	ar7
   0E1A 12 07 0C           2887 	lcall	_read_obj_value
   0E1D AB 82              2888 	mov	r3,dpl
   0E1F D0 07              2889 	pop	ar7
   0E21 8B E5              2890 	mov	_FMDATA,r3
                           2891 ;	../fb_app_taster.c:667: STOP_WRITECYCLE // Temperaturwert speichern
   0E23 75 E4 68           2892 	mov	_FMCON,#0x68
                           2893 ;	../fb_app_taster.c:668: EA=1;
   0E26 D2 AF              2894 	setb	_IEN0_7
                           2895 ;	../fb_app_taster.c:669: send_obj_value(objno+4);
   0E28 8F 82              2896 	mov	dpl,r7
   0E2A 12 18 B9           2897 	lcall	_send_obj_value
                           2898 ;	../fb_app_taster.c:671: break;
   0E2D 02 0E C3           2899 	ljmp	00154$
                           2900 ;	../fb_app_taster.c:674: case 0xC0: // Wertgeber Dimmer verstellen
   0E30                    2901 00133$:
                           2902 ;	../fb_app_taster.c:675: tmp=read_obj_value(objno+4);//
   0E30 A8 14              2903 	mov	r0,_bp
   0E32 08                 2904 	inc	r0
   0E33 74 04              2905 	mov	a,#0x04
   0E35 26                 2906 	add	a,@r0
   0E36 F5 82              2907 	mov	dpl,a
   0E38 12 07 0C           2908 	lcall	_read_obj_value
   0E3B AC 82              2909 	mov	r4,dpl
   0E3D AD 83              2910 	mov	r5,dph
                           2911 ;	../fb_app_taster.c:676: m=eeprom[0xD4+((objno-4)*4)]& 0x3F;// schrittweite und zeit zw. telegrammen
   0E3F A8 14              2912 	mov	r0,_bp
   0E41 08                 2913 	inc	r0
   0E42 E6                 2914 	mov	a,@r0
   0E43 24 FC              2915 	add	a,#0xFC
   0E45 25 E0              2916 	add	a,acc
   0E47 25 E0              2917 	add	a,acc
   0E49 24 D4              2918 	add	a,#0xD4
   0E4B 90 1D 00           2919 	mov	dptr,#_eeprom
   0E4E 93                 2920 	movc	a,@a+dptr
   0E4F FF                 2921 	mov	r7,a
   0E50 53 07 3F           2922 	anl	ar7,#0x3F
                           2923 ;	../fb_app_taster.c:677: n= m & 0x0F;  // Schrittweite
   0E53 74 0F              2924 	mov	a,#0x0F
   0E55 5F                 2925 	anl	a,r7
   0E56 FE                 2926 	mov	r6,a
                           2927 ;	../fb_app_taster.c:678: m=m>>4;// zeit zwischen telegrammen
   0E57 EF                 2928 	mov	a,r7
   0E58 C4                 2929 	swap	a
   0E59 54 0F              2930 	anl	a,#0x0F
   0E5B FF                 2931 	mov	r7,a
                           2932 ;	../fb_app_taster.c:679: if (!tmp){
   0E5C EC                 2933 	mov	a,r4
   0E5D 70 04              2934 	jnz	00138$
                           2935 ;	../fb_app_taster.c:680: tmp=255;
   0E5F 7C FF              2936 	mov	r4,#0xFF
   0E61 80 0D              2937 	sjmp	00139$
   0E63                    2938 00138$:
                           2939 ;	../fb_app_taster.c:683: if (tmp>=n)tmp-=n;
   0E63 C3                 2940 	clr	c
   0E64 EC                 2941 	mov	a,r4
   0E65 9E                 2942 	subb	a,r6
   0E66 40 06              2943 	jc	00135$
   0E68 EC                 2944 	mov	a,r4
   0E69 C3                 2945 	clr	c
   0E6A 9E                 2946 	subb	a,r6
   0E6B FC                 2947 	mov	r4,a
   0E6C 80 02              2948 	sjmp	00139$
   0E6E                    2949 00135$:
                           2950 ;	../fb_app_taster.c:684: else tmp=0;
   0E6E 7C 00              2951 	mov	r4,#0x00
   0E70                    2952 00139$:
                           2953 ;	../fb_app_taster.c:686: write_obj_value(objno+4,tmp);
   0E70 7E 00              2954 	mov	r6,#0x00
   0E72 A8 14              2955 	mov	r0,_bp
   0E74 08                 2956 	inc	r0
   0E75 74 04              2957 	mov	a,#0x04
   0E77 26                 2958 	add	a,@r0
   0E78 FD                 2959 	mov	r5,a
   0E79 C0 07              2960 	push	ar7
   0E7B C0 05              2961 	push	ar5
   0E7D C0 04              2962 	push	ar4
   0E7F C0 06              2963 	push	ar6
   0E81 8D 82              2964 	mov	dpl,r5
   0E83 12 07 4C           2965 	lcall	_write_obj_value
   0E86 15 81              2966 	dec	sp
   0E88 15 81              2967 	dec	sp
                           2968 ;	../fb_app_taster.c:687: switch_led(objno-4,1);
   0E8A A8 14              2969 	mov	r0,_bp
   0E8C 08                 2970 	inc	r0
   0E8D E6                 2971 	mov	a,@r0
   0E8E 24 FC              2972 	add	a,#0xFC
   0E90 F5 82              2973 	mov	dpl,a
   0E92 D2 F0              2974 	setb	b[0]
   0E94 85 F0 23           2975 	mov	bits,b
   0E97 12 09 5B           2976 	lcall	_switch_led
   0E9A D0 05              2977 	pop	ar5
                           2978 ;	../fb_app_taster.c:688: send_obj_value(objno+4);		// dimmkommando senden
   0E9C 8D 82              2979 	mov	dpl,r5
   0E9E 12 18 B9           2980 	lcall	_send_obj_value
   0EA1 D0 07              2981 	pop	ar7
                           2982 ;	../fb_app_taster.c:689: timerstate[objno]=0xC0;
   0EA3 A8 14              2983 	mov	r0,_bp
   0EA5 08                 2984 	inc	r0
   0EA6 E6                 2985 	mov	a,@r0
   0EA7 24 3C              2986 	add	a,#_timerstate
   0EA9 F8                 2987 	mov	r0,a
   0EAA 76 C0              2988 	mov	@r0,#0xC0
                           2989 ;	../fb_app_taster.c:690: timercnt[objno]=tele_repeat_value[m];// 0,5/1/1,5/2 Sec.
   0EAC A8 14              2990 	mov	r0,_bp
   0EAE 08                 2991 	inc	r0
   0EAF E6                 2992 	mov	a,@r0
   0EB0 24 2C              2993 	add	a,#_timercnt
   0EB2 F9                 2994 	mov	r1,a
   0EB3 EF                 2995 	mov	a,r7
   0EB4 90 1C 05           2996 	mov	dptr,#_tele_repeat_value
   0EB7 93                 2997 	movc	a,@a+dptr
   0EB8 FF                 2998 	mov	r7,a
   0EB9 F7                 2999 	mov	@r1,a
                           3000 ;	../fb_app_taster.c:691: timerbase[objno]=0;
   0EBA A8 14              3001 	mov	r0,_bp
   0EBC 08                 3002 	inc	r0
   0EBD E6                 3003 	mov	a,@r0
   0EBE 24 34              3004 	add	a,#_timerbase
   0EC0 F8                 3005 	mov	r0,a
   0EC1 76 00              3006 	mov	@r0,#0x00
                           3007 ;	../fb_app_taster.c:694: }// ende switch (timerstate...
   0EC3                    3008 00154$:
                           3009 ;	../fb_app_taster.c:535: for(objno=0;objno<8;objno++) {
   0EC3 A8 14              3010 	mov	r0,_bp
   0EC5 08                 3011 	inc	r0
   0EC6 06                 3012 	inc	@r0
   0EC7 02 0A 8E           3013 	ljmp	00152$
   0ECA                    3014 00156$:
   0ECA 85 14 81           3015 	mov	sp,_bp
   0ECD D0 14              3016 	pop	_bp
   0ECF 22                 3017 	ret
                           3018 ;------------------------------------------------------------
                           3019 ;Allocation info for local variables in function 'restart_app'
                           3020 ;------------------------------------------------------------
                           3021 ;n                         Allocated to registers r7 
                           3022 ;write_ok                  Allocated to registers 
                           3023 ;------------------------------------------------------------
                           3024 ;	../fb_app_taster.c:707: void restart_app(void)
                           3025 ;	-----------------------------------------
                           3026 ;	 function restart_app
                           3027 ;	-----------------------------------------
   0ED0                    3028 _restart_app:
                           3029 ;	../fb_app_taster.c:713: for (n=0;n<4;n++) {
   0ED0 7F 00              3030 	mov	r7,#0x00
   0ED2                    3031 00105$:
   0ED2 BF 04 00           3032 	cjne	r7,#0x04,00147$
   0ED5                    3033 00147$:
   0ED5 50 20              3034 	jnc	00108$
                           3035 ;	../fb_app_taster.c:714: SET_PORT_MODE_BIDIRECTIONAL(n)
   0ED7 BF 08 00           3036 	cjne	r7,#0x08,00149$
   0EDA                    3037 00149$:
   0EDA 50 18              3038 	jnc	00107$
   0EDC 8F F0              3039 	mov	b,r7
   0EDE 05 F0              3040 	inc	b
   0EE0 74 01              3041 	mov	a,#0x01
   0EE2 80 02              3042 	sjmp	00153$
   0EE4                    3043 00151$:
   0EE4 25 E0              3044 	add	a,acc
   0EE6                    3045 00153$:
   0EE6 D5 F0 FB           3046 	djnz	b,00151$
   0EE9 FE                 3047 	mov	r6,a
   0EEA 74 FF              3048 	mov	a,#0xFF
   0EEC C3                 3049 	clr	c
   0EED 9E                 3050 	subb	a,r6
   0EEE FE                 3051 	mov	r6,a
   0EEF 52 84              3052 	anl	_P0M1,a
   0EF1 EE                 3053 	mov	a,r6
   0EF2 52 85              3054 	anl	_P0M2,a
   0EF4                    3055 00107$:
                           3056 ;	../fb_app_taster.c:713: for (n=0;n<4;n++) {
   0EF4 0F                 3057 	inc	r7
   0EF5 80 DB              3058 	sjmp	00105$
   0EF7                    3059 00108$:
                           3060 ;	../fb_app_taster.c:718: for (n=4;n<8;n++) {
   0EF7 7F 04              3061 	mov	r7,#0x04
   0EF9                    3062 00109$:
   0EF9 BF 08 00           3063 	cjne	r7,#0x08,00154$
   0EFC                    3064 00154$:
   0EFC E4                 3065 	clr	a
   0EFD 33                 3066 	rlc	a
   0EFE FE                 3067 	mov	r6,a
   0EFF 60 1D              3068 	jz	00112$
                           3069 ;	../fb_app_taster.c:719: SET_PORT_MODE_PUSHPULL(n)
   0F01 EE                 3070 	mov	a,r6
   0F02 60 17              3071 	jz	00111$
   0F04 8F F0              3072 	mov	b,r7
   0F06 05 F0              3073 	inc	b
   0F08 74 01              3074 	mov	a,#0x01
   0F0A 80 02              3075 	sjmp	00159$
   0F0C                    3076 00157$:
   0F0C 25 E0              3077 	add	a,acc
   0F0E                    3078 00159$:
   0F0E D5 F0 FB           3079 	djnz	b,00157$
   0F11 FE                 3080 	mov	r6,a
   0F12 74 FF              3081 	mov	a,#0xFF
   0F14 C3                 3082 	clr	c
   0F15 9E                 3083 	subb	a,r6
   0F16 52 84              3084 	anl	_P0M1,a
   0F18 EE                 3085 	mov	a,r6
   0F19 42 85              3086 	orl	_P0M2,a
   0F1B                    3087 00111$:
                           3088 ;	../fb_app_taster.c:718: for (n=4;n<8;n++) {
   0F1B 0F                 3089 	inc	r7
   0F1C 80 DB              3090 	sjmp	00109$
   0F1E                    3091 00112$:
                           3092 ;	../fb_app_taster.c:722: PORT=0x0F;							// Taster auf high, LEDs zunächst aus
   0F1E 75 80 0F           3093 	mov	_P0,#0x0F
                           3094 ;	../fb_app_taster.c:724: button_buffer=0x0F;	// Variable für letzten abgearbeiteten Taster Status
   0F21 75 28 0F           3095 	mov	_button_buffer,#0x0F
                           3096 ;	../fb_app_taster.c:726: RTCCON=0x60;	//stop_rtc();
   0F24 75 D1 60           3097 	mov	_RTCCON,#0x60
                           3098 ;	../fb_app_taster.c:727: RTCH=0x00;
   0F27 75 D2 00           3099 	mov	_RTCH,#0x00
                           3100 ;	../fb_app_taster.c:728: RTCL=0xE6;	
   0F2A 75 D3 E6           3101 	mov	_RTCL,#0xE6
                           3102 ;	../fb_app_taster.c:729: RTCCON=0x61;	//start_rtc(8);		// RTC neu mit 8ms starten
   0F2D 75 D1 61           3103 	mov	_RTCCON,#0x61
                           3104 ;	../fb_app_taster.c:731: timer=0;			// Timer-Variable, wird alle 8ms inkrementiert
   0F30 E4                 3105 	clr	a
   0F31 F5 24              3106 	mov	_timer,a
   0F33 F5 25              3107 	mov	(_timer + 1),a
                           3108 ;	../fb_app_taster.c:733: EA=0;		// Interrupts sperren
   0F35 C2 AF              3109 	clr	_IEN0_7
                           3110 ;	../fb_app_taster.c:735: START_WRITECYCLE			
   0F37 75 E4 00           3111 	mov	_FMCON,#0x00
                           3112 ;	../fb_app_taster.c:736: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
   0F3A 75 E7 1D           3113 	mov	_FMADRH,#0x1D
   0F3D 75 E6 03           3114 	mov	_FMADRL,#0x03
   0F40 75 E5 00           3115 	mov	_FMDATA,#0x00
                           3116 ;	../fb_app_taster.c:737: WRITE_BYTE(0x01,0x04,0x04)
   0F43 75 E7 1D           3117 	mov	_FMADRH,#0x1D
   0F46 75 E6 04           3118 	mov	_FMADRL,#0x04
   0F49 75 E5 04           3119 	mov	_FMDATA,#0x04
                           3120 ;	../fb_app_taster.c:738: WRITE_BYTE(0x01,0x05,0x10)	// Devicetype 0x1052 = Jung Tastsensor 2092
   0F4C 75 E7 1D           3121 	mov	_FMADRH,#0x1D
   0F4F 75 E6 05           3122 	mov	_FMADRL,#0x05
   0F52 75 E5 10           3123 	mov	_FMDATA,#0x10
                           3124 ;	../fb_app_taster.c:739: WRITE_BYTE(0x01,0x06,0x52)	
   0F55 75 E7 1D           3125 	mov	_FMADRH,#0x1D
   0F58 75 E6 06           3126 	mov	_FMADRL,#0x06
   0F5B 75 E5 52           3127 	mov	_FMDATA,#0x52
                           3128 ;	../fb_app_taster.c:740: WRITE_BYTE(0x01,0x07,0x01)	// Versionsnummer
   0F5E 75 E7 1D           3129 	mov	_FMADRH,#0x1D
   0F61 75 E6 07           3130 	mov	_FMADRL,#0x07
   0F64 75 E5 01           3131 	mov	_FMDATA,#0x01
                           3132 ;	../fb_app_taster.c:741: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
   0F67 75 E7 1D           3133 	mov	_FMADRH,#0x1D
   0F6A 75 E6 0C           3134 	mov	_FMADRL,#0x0C
   0F6D 75 E5 00           3135 	mov	_FMDATA,#0x00
                           3136 ;	../fb_app_taster.c:742: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
   0F70 75 E7 1D           3137 	mov	_FMADRH,#0x1D
   0F73 75 E6 0D           3138 	mov	_FMADRL,#0x0D
   0F76 75 E5 FF           3139 	mov	_FMDATA,#0xFF
                           3140 ;	../fb_app_taster.c:743: WRITE_BYTE(0x01,0x12,0x9A)	// COMMSTAB Pointer
   0F79 75 E7 1D           3141 	mov	_FMADRH,#0x1D
   0F7C 75 E6 12           3142 	mov	_FMADRL,#0x12
   0F7F 75 E5 9A           3143 	mov	_FMDATA,#0x9A
                           3144 ;	../fb_app_taster.c:744: STOP_WRITECYCLE
   0F82 75 E4 68           3145 	mov	_FMCON,#0x68
                           3146 ;	../fb_app_taster.c:749: for (n=0;n<12;n++) write_obj_value(n,0);		// Objektwerte alle auf 0 setzen
   0F85 7F 00              3147 	mov	r7,#0x00
   0F87                    3148 00113$:
   0F87 BF 0C 00           3149 	cjne	r7,#0x0C,00160$
   0F8A                    3150 00160$:
   0F8A 50 15              3151 	jnc	00116$
   0F8C C0 07              3152 	push	ar7
   0F8E E4                 3153 	clr	a
   0F8F C0 E0              3154 	push	acc
   0F91 C0 E0              3155 	push	acc
   0F93 8F 82              3156 	mov	dpl,r7
   0F95 12 07 4C           3157 	lcall	_write_obj_value
   0F98 15 81              3158 	dec	sp
   0F9A 15 81              3159 	dec	sp
   0F9C D0 07              3160 	pop	ar7
   0F9E 0F                 3161 	inc	r7
   0F9F 80 E6              3162 	sjmp	00113$
   0FA1                    3163 00116$:
                           3164 ;	../fb_app_taster.c:751: for (n=0;n<8;n++) timercnt[n]=0;		// delay records loeschen
   0FA1 7F 00              3165 	mov	r7,#0x00
   0FA3                    3166 00117$:
   0FA3 BF 08 00           3167 	cjne	r7,#0x08,00162$
   0FA6                    3168 00162$:
   0FA6 50 09              3169 	jnc	00120$
   0FA8 EF                 3170 	mov	a,r7
   0FA9 24 2C              3171 	add	a,#_timercnt
   0FAB F8                 3172 	mov	r0,a
   0FAC 76 00              3173 	mov	@r0,#0x00
   0FAE 0F                 3174 	inc	r7
   0FAF 80 F2              3175 	sjmp	00117$
   0FB1                    3176 00120$:
                           3177 ;	../fb_app_taster.c:756: TR0=0;
   0FB1 C2 8C              3178 	clr	_TCON_4
                           3179 ;	../fb_app_taster.c:757: TMOD &= 0xF0;
   0FB3 53 89 F0           3180 	anl	_TMOD,#0xF0
                           3181 ;	../fb_app_taster.c:758: TMOD |= 0x02;// T0 autoreload
   0FB6 43 89 02           3182 	orl	_TMOD,#0x02
                           3183 ;	../fb_app_taster.c:759: TH0=0x47;
   0FB9 75 8C 47           3184 	mov	_TH0,#0x47
                           3185 ;	../fb_app_taster.c:760: TL0=0x47;
   0FBC 75 8A 47           3186 	mov	_TL0,#0x47
                           3187 ;	../fb_app_taster.c:761: TR0=1;
   0FBF D2 8C              3188 	setb	_TCON_4
                           3189 ;	../fb_app_taster.c:763: IP0 &= 0xFC; //FC		F6	für flackerfrei bei 1 kanal
   0FC1 53 B8 FC           3190 	anl	_IP0,#0xFC
                           3191 ;	../fb_app_taster.c:764: IP0 |= 0x0C; //0C		06	dto.
   0FC4 43 B8 0C           3192 	orl	_IP0,#0x0C
                           3193 ;	../fb_app_taster.c:765: IP0H &= 0xF4;// 
   0FC7 53 B7 F4           3194 	anl	_IP0H,#0xF4
                           3195 ;	../fb_app_taster.c:766: IP0H |= 0x04;// 		Timer 1 auf Level 2
   0FCA 43 B7 04           3196 	orl	_IP0H,#0x04
                           3197 ;	../fb_app_taster.c:769: TF0=0; //timer0 flag löschen
   0FCD C2 8D              3198 	clr	_TCON_5
                           3199 ;	../fb_app_taster.c:770: ET0=1;// timer 0 interupt freigeben	
   0FCF D2 A9              3200 	setb	_IEN0_1
                           3201 ;	../fb_app_taster.c:771: EA=1;// Interrupts freigeben	
   0FD1 D2 AF              3202 	setb	_IEN0_7
   0FD3 22                 3203 	ret
                           3204 	.area CSEG    (CODE)
                           3205 	.area CONST   (CODE)
   1C05                    3206 _tele_repeat_value:
   1C05 3F                 3207 	.db #0x3F	; 63
   1C06 7D                 3208 	.db #0x7D	; 125
   1C07 BC                 3209 	.db #0xBC	; 188
   1C08 FA                 3210 	.db #0xFA	; 250
   1C09 19                 3211 	.db #0x19	; 25
   1C0A 26                 3212 	.db #0x26	; 38
   1C0B 32                 3213 	.db #0x32	; 50	'2'
   1C0C 5E                 3214 	.db #0x5E	; 94
                           3215 	.area XINIT   (CODE)
                           3216 	.area CABS    (ABS,CODE)
