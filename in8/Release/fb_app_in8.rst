                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Tue Nov 06 16:08:30 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_in8
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
                            151 	.globl _st_Flanke
                            152 	.globl _jobj
                            153 	.globl _objval
                            154 	.globl _schrittzaehler
                            155 	.globl _zaehlervalue
                            156 	.globl _Sperre
                            157 	.globl _objectvalue_h
                            158 	.globl _objectvalue_l
                            159 	.globl _para_value
                            160 	.globl _pinno
                            161 	.globl _para_adr
                            162 	.globl _pinnoX4
                            163 	.globl _timerstate
                            164 	.globl _timercnt
                            165 	.globl _timerbase
                            166 	.globl _timer
                            167 	.globl _timer_state
                            168 	.globl _timer_base
                            169 	.globl _blocked
                            170 	.globl _objstate
                            171 	.globl _p0h
                            172 	.globl _portbuffer
                            173 	.globl _pin_changed
                            174 	.globl _eis5conversion
                            175 	.globl _delay_timer
                            176 	.globl _schalten
                            177 	.globl _debounce
                            178 	.globl _write_value_req
                            179 	.globl _sperren
                            180 	.globl _read_value_req
                            181 	.globl _write_send
                            182 	.globl _bus_return
                            183 	.globl _read_obj_value
                            184 	.globl _write_obj_value
                            185 	.globl _restart_app
                            186 ;--------------------------------------------------------
                            187 ; special function registers
                            188 ;--------------------------------------------------------
                            189 	.area RSEG    (ABS,DATA)
   0000                     190 	.org 0x0000
                    0080    191 _P0	=	0x0080
                    0090    192 _P1	=	0x0090
                    00B0    193 _P3	=	0x00b0
                    00D0    194 _PSW	=	0x00d0
                    00E0    195 _ACC	=	0x00e0
                    00F0    196 _B	=	0x00f0
                    0081    197 _SP	=	0x0081
                    0082    198 _DPL	=	0x0082
                    0083    199 _DPH	=	0x0083
                    0087    200 _PCON	=	0x0087
                    0088    201 _TCON	=	0x0088
                    0089    202 _TMOD	=	0x0089
                    008A    203 _TL0	=	0x008a
                    008B    204 _TL1	=	0x008b
                    008C    205 _TH0	=	0x008c
                    008D    206 _TH1	=	0x008d
                    00A8    207 _IEN0	=	0x00a8
                    00B8    208 _IP0	=	0x00b8
                    0098    209 _SCON	=	0x0098
                    0099    210 _SBUF	=	0x0099
                    00A2    211 _AUXR1	=	0x00a2
                    00A9    212 _SADDR	=	0x00a9
                    00B9    213 _SADEN	=	0x00b9
                    00BE    214 _BRGR0	=	0x00be
                    00BF    215 _BRGR1	=	0x00bf
                    00BD    216 _BRGCON	=	0x00bd
                    00AC    217 _CMP1	=	0x00ac
                    00AD    218 _CMP2	=	0x00ad
                    0095    219 _DIVM	=	0x0095
                    00E7    220 _FMADRH	=	0x00e7
                    00E6    221 _FMADRL	=	0x00e6
                    00E4    222 _FMCON	=	0x00e4
                    00E5    223 _FMDATA	=	0x00e5
                    00DB    224 _I2ADR	=	0x00db
                    00D8    225 _I2CON	=	0x00d8
                    00DA    226 _I2DAT	=	0x00da
                    00DD    227 _I2SCLH	=	0x00dd
                    00DC    228 _I2SCLL	=	0x00dc
                    00D9    229 _I2STAT	=	0x00d9
                    00F8    230 _IP1	=	0x00f8
                    00F7    231 _IP1H	=	0x00f7
                    0094    232 _KBCON	=	0x0094
                    0086    233 _KBMASK	=	0x0086
                    0093    234 _KBPATN	=	0x0093
                    0084    235 _P0M1	=	0x0084
                    0085    236 _P0M2	=	0x0085
                    0091    237 _P1M1	=	0x0091
                    0092    238 _P1M2	=	0x0092
                    00B1    239 _P3M1	=	0x00b1
                    00B2    240 _P3M2	=	0x00b2
                    00B5    241 _PCONA	=	0x00b5
                    00F6    242 _PT0AD	=	0x00f6
                    00DF    243 _RSTSRC	=	0x00df
                    00D1    244 _RTCCON	=	0x00d1
                    00D2    245 _RTCH	=	0x00d2
                    00D3    246 _RTCL	=	0x00d3
                    00BA    247 _SSTAT	=	0x00ba
                    008F    248 _TAMOD	=	0x008f
                    0096    249 _TRIM	=	0x0096
                    00A7    250 _WDCON	=	0x00a7
                    00C1    251 _WDL	=	0x00c1
                    00C2    252 _WFEED1	=	0x00c2
                    00C3    253 _WFEED2	=	0x00c3
                    00B7    254 _IP0H	=	0x00b7
                    00E8    255 _IEN1	=	0x00e8
                            256 ;--------------------------------------------------------
                            257 ; special function bits
                            258 ;--------------------------------------------------------
                            259 	.area RSEG    (ABS,DATA)
   0000                     260 	.org 0x0000
                    00D0    261 _PSW_0	=	0x00d0
                    00D1    262 _PSW_1	=	0x00d1
                    00D2    263 _PSW_2	=	0x00d2
                    00D3    264 _PSW_3	=	0x00d3
                    00D4    265 _PSW_4	=	0x00d4
                    00D5    266 _PSW_5	=	0x00d5
                    00D6    267 _PSW_6	=	0x00d6
                    00D7    268 _PSW_7	=	0x00d7
                    008F    269 _TCON_7	=	0x008f
                    008E    270 _TCON_6	=	0x008e
                    008D    271 _TCON_5	=	0x008d
                    008C    272 _TCON_4	=	0x008c
                    008B    273 _TCON_3	=	0x008b
                    008A    274 _TCON_2	=	0x008a
                    0089    275 _TCON_1	=	0x0089
                    0088    276 _TCON_0	=	0x0088
                    00AF    277 _IEN0_7	=	0x00af
                    00AE    278 _IEN0_6	=	0x00ae
                    00AD    279 _IEN0_5	=	0x00ad
                    00AC    280 _IEN0_4	=	0x00ac
                    00AB    281 _IEN0_3	=	0x00ab
                    00AA    282 _IEN0_2	=	0x00aa
                    00A9    283 _IEN0_1	=	0x00a9
                    00A8    284 _IEN0_0	=	0x00a8
                    00EA    285 _IEN1_2	=	0x00ea
                    00E9    286 _IEN1_1	=	0x00e9
                    00E8    287 _IEN1_0	=	0x00e8
                    00FE    288 _IP1_6	=	0x00fe
                    00FA    289 _IP1_2	=	0x00fa
                    00F9    290 _IP1_1	=	0x00f9
                    00F8    291 _IP1_0	=	0x00f8
                    00BE    292 _IP0_6	=	0x00be
                    00BD    293 _IP0_5	=	0x00bd
                    00BC    294 _IP0_4	=	0x00bc
                    00BB    295 _IP0_3	=	0x00bb
                    00BA    296 _IP0_2	=	0x00ba
                    00B9    297 _IP0_1	=	0x00b9
                    00B8    298 _IP0_0	=	0x00b8
                    0098    299 _SCON_0	=	0x0098
                    0099    300 _SCON_1	=	0x0099
                    009A    301 _SCON_2	=	0x009a
                    009B    302 _SCON_3	=	0x009b
                    009C    303 _SCON_4	=	0x009c
                    009D    304 _SCON_5	=	0x009d
                    009E    305 _SCON_6	=	0x009e
                    009F    306 _SCON_7	=	0x009f
                    00DE    307 _I2CON_6	=	0x00de
                    00DD    308 _I2CON_5	=	0x00dd
                    00DC    309 _I2CON_4	=	0x00dc
                    00DB    310 _I2CON_3	=	0x00db
                    00DA    311 _I2CON_2	=	0x00da
                    00D8    312 _I2CON_0	=	0x00d8
                    0080    313 _P0_0	=	0x0080
                    0081    314 _P0_1	=	0x0081
                    0082    315 _P0_2	=	0x0082
                    0083    316 _P0_3	=	0x0083
                    0084    317 _P0_4	=	0x0084
                    0085    318 _P0_5	=	0x0085
                    0086    319 _P0_6	=	0x0086
                    0087    320 _P0_7	=	0x0087
                    0090    321 _P1_0	=	0x0090
                    0091    322 _P1_1	=	0x0091
                    0092    323 _P1_2	=	0x0092
                    0093    324 _P1_3	=	0x0093
                    0094    325 _P1_4	=	0x0094
                    0095    326 _P1_5	=	0x0095
                    0096    327 _P1_6	=	0x0096
                    0097    328 _P1_7	=	0x0097
                    00B0    329 _P3_0	=	0x00b0
                    00B1    330 _P3_1	=	0x00b1
                            331 ;--------------------------------------------------------
                            332 ; overlayable register banks
                            333 ;--------------------------------------------------------
                            334 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     335 	.ds 8
                            336 ;--------------------------------------------------------
                            337 ; overlayable bit register bank
                            338 ;--------------------------------------------------------
                            339 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     340 bits:
   0023                     341 	.ds 1
                    8000    342 	b0 = bits[0]
                    8100    343 	b1 = bits[1]
                    8200    344 	b2 = bits[2]
                    8300    345 	b3 = bits[3]
                    8400    346 	b4 = bits[4]
                    8500    347 	b5 = bits[5]
                    8600    348 	b6 = bits[6]
                    8700    349 	b7 = bits[7]
                            350 ;--------------------------------------------------------
                            351 ; internal ram data
                            352 ;--------------------------------------------------------
                            353 	.area DSEG    (DATA)
   0024                     354 _portbuffer::
   0024                     355 	.ds 1
   0025                     356 _p0h::
   0025                     357 	.ds 1
   0026                     358 _objstate::
   0026                     359 	.ds 2
   0028                     360 _blocked::
   0028                     361 	.ds 1
   0029                     362 _timer_base::
   0029                     363 	.ds 1
   002A                     364 _timer_state::
   002A                     365 	.ds 1
   002B                     366 _timer::
   002B                     367 	.ds 2
   002D                     368 _timerbase::
   002D                     369 	.ds 9
   0036                     370 _timercnt::
   0036                     371 	.ds 9
   003F                     372 _timerstate::
   003F                     373 	.ds 9
   0048                     374 _pinnoX4::
   0048                     375 	.ds 1
   0049                     376 _para_adr::
   0049                     377 	.ds 1
   004A                     378 _pinno::
   004A                     379 	.ds 1
   004B                     380 _para_value::
   004B                     381 	.ds 1
                    0008    382 _objectvalue_l	=	0x0008
                    0010    383 _objectvalue_h	=	0x0010
                    0018    384 _Sperre	=	0x0018
                    0019    385 _zaehlervalue	=	0x0019
                    001E    386 _schrittzaehler	=	0x001e
                            387 ;--------------------------------------------------------
                            388 ; overlayable items in internal ram 
                            389 ;--------------------------------------------------------
                            390 ;--------------------------------------------------------
                            391 ; indirectly addressable internal ram data
                            392 ;--------------------------------------------------------
                            393 	.area ISEG    (DATA)
                            394 ;--------------------------------------------------------
                            395 ; absolute internal ram data
                            396 ;--------------------------------------------------------
                            397 	.area IABS    (ABS,DATA)
                            398 	.area IABS    (ABS,DATA)
                            399 ;--------------------------------------------------------
                            400 ; bit data
                            401 ;--------------------------------------------------------
                            402 	.area BSEG    (BIT)
   0000                     403 _objval::
   0000                     404 	.ds 1
   0001                     405 _jobj::
   0001                     406 	.ds 1
   0002                     407 _st_Flanke::
   0002                     408 	.ds 1
                            409 ;--------------------------------------------------------
                            410 ; paged external ram data
                            411 ;--------------------------------------------------------
                            412 	.area PSEG    (PAG,XDATA)
                            413 ;--------------------------------------------------------
                            414 ; external ram data
                            415 ;--------------------------------------------------------
                            416 	.area XSEG    (XDATA)
                            417 ;--------------------------------------------------------
                            418 ; absolute external ram data
                            419 ;--------------------------------------------------------
                            420 	.area XABS    (ABS,XDATA)
                            421 ;--------------------------------------------------------
                            422 ; external initialized ram data
                            423 ;--------------------------------------------------------
                            424 	.area XISEG   (XDATA)
                            425 	.area HOME    (CODE)
                            426 	.area GSINIT0 (CODE)
                            427 	.area GSINIT1 (CODE)
                            428 	.area GSINIT2 (CODE)
                            429 	.area GSINIT3 (CODE)
                            430 	.area GSINIT4 (CODE)
                            431 	.area GSINIT5 (CODE)
                            432 	.area GSINIT  (CODE)
                            433 	.area GSFINAL (CODE)
                            434 	.area CSEG    (CODE)
                            435 ;--------------------------------------------------------
                            436 ; global & static initialisations
                            437 ;--------------------------------------------------------
                            438 	.area HOME    (CODE)
                            439 	.area GSINIT  (CODE)
                            440 	.area GSFINAL (CODE)
                            441 	.area GSINIT  (CODE)
                            442 ;	../fb_app_in8.c:45: __bit objval=0,jobj=0;
   007C C2 00               443 	clr	_objval
                            444 ;	../fb_app_in8.c:45: 
   007E C2 01               445 	clr	_jobj
                            446 ;	../fb_app_in8.c:47: __bit st_Flanke=0;
   0080 C2 02               447 	clr	_st_Flanke
                            448 ;--------------------------------------------------------
                            449 ; Home
                            450 ;--------------------------------------------------------
                            451 	.area HOME    (CODE)
                            452 	.area HOME    (CODE)
                            453 ;--------------------------------------------------------
                            454 ; code
                            455 ;--------------------------------------------------------
                            456 	.area CSEG    (CODE)
                            457 ;------------------------------------------------------------
                            458 ;Allocation info for local variables in function 'pin_changed'
                            459 ;------------------------------------------------------------
                            460 ;pin_no                    Allocated to registers 
                            461 ;tmp                       Allocated to registers r2 
                            462 ;objoffset                 Allocated to stack - _bp +1
                            463 ;typ                       Allocated to registers r6 
                            464 ;n                         Allocated to registers r5 
                            465 ;sloc0                     Allocated to stack - _bp +6
                            466 ;------------------------------------------------------------
                            467 ;	../fb_app_in8.c:52: void pin_changed(unsigned char pin_no)
                            468 ;	-----------------------------------------
                            469 ;	 function pin_changed
                            470 ;	-----------------------------------------
   0085                     471 _pin_changed:
                    0007    472 	ar7 = 0x07
                    0006    473 	ar6 = 0x06
                    0005    474 	ar5 = 0x05
                    0004    475 	ar4 = 0x04
                    0003    476 	ar3 = 0x03
                    0002    477 	ar2 = 0x02
                    0001    478 	ar1 = 0x01
                    0000    479 	ar0 = 0x00
   0085 C0 7B               480 	push	_bp
   0087 85 81 7B            481 	mov	_bp,sp
   008A 05 81               482 	inc	sp
   008C 85 82 4A            483 	mov	_pinno,dpl
                            484 ;	../fb_app_in8.c:59: unsigned char objoffset=8;
   008F A8 7B               485 	mov	r0,_bp
   0091 08                  486 	inc	r0
   0092 76 08               487 	mov	@r0,#0x08
                            488 ;	../fb_app_in8.c:60: unsigned char typ=0;
                            489 ;	../fb_app_in8.c:62: timer_base=0;
                            490 ;	../fb_app_in8.c:63: para_value=0;
                            491 ;	../fb_app_in8.c:67: pinnoX4=pinno*4;
   0094 E4                  492 	clr	a
   0095 FE                  493 	mov	r6,a
   0096 F5 29               494 	mov	_timer_base,a
   0098 F5 4B               495 	mov	_para_value,a
   009A E5 4A               496 	mov	a,_pinno
   009C 25 4A               497 	add	a,_pinno
   009E 25 E0               498 	add	a,acc
                            499 ;	../fb_app_in8.c:68: para_adr=0xD5+(pinnoX4);
   00A0 F5 48               500 	mov	_pinnoX4,a
   00A2 24 D5               501 	add	a,#0xD5
   00A4 F5 49               502 	mov	_para_adr,a
                            503 ;	../fb_app_in8.c:70: if (debounce(pinno))			// Entprellzeit abwarten und prüfen
   00A6 85 4A 82            504 	mov	dpl,_pinno
   00A9 C0 06               505 	push	ar6
   00AB 12 07 74            506 	lcall	_debounce
   00AE E5 82               507 	mov	a,dpl
   00B0 D0 06               508 	pop	ar6
   00B2 70 03               509 	jnz	00212$
   00B4 02 04 C5            510 	ljmp	00159$
   00B7                     511 00212$:
                            512 ;	../fb_app_in8.c:72: timer_base=(eeprom[0xF6+((pinno+1)>>1)]>>(4*((pinno&0x01)^0x01)))&0x07  ;
   00B7 AC 4A               513 	mov	r4,_pinno
   00B9 7D 00               514 	mov	r5,#0x00
   00BB 0C                  515 	inc	r4
   00BC BC 00 01            516 	cjne	r4,#0x00,00213$
   00BF 0D                  517 	inc	r5
   00C0                     518 00213$:
   00C0 ED                  519 	mov	a,r5
   00C1 A2 E7               520 	mov	c,acc.7
   00C3 13                  521 	rrc	a
   00C4 CC                  522 	xch	a,r4
   00C5 13                  523 	rrc	a
   00C6 CC                  524 	xch	a,r4
   00C7 74 F6               525 	mov	a,#0xF6
   00C9 2C                  526 	add	a,r4
   00CA 90 1D 00            527 	mov	dptr,#_eeprom
   00CD 93                  528 	movc	a,@a+dptr
   00CE FD                  529 	mov	r5,a
   00CF 74 01               530 	mov	a,#0x01
   00D1 55 4A               531 	anl	a,_pinno
   00D3 64 01               532 	xrl	a,#0x01
   00D5 75 F0 04            533 	mov	b,#0x04
   00D8 A4                  534 	mul	ab
   00D9 F5 F0               535 	mov	b,a
   00DB 05 F0               536 	inc	b
   00DD ED                  537 	mov	a,r5
   00DE 80 02               538 	sjmp	00215$
   00E0                     539 00214$:
   00E0 C3                  540 	clr	c
   00E1 13                  541 	rrc	a
   00E2                     542 00215$:
   00E2 D5 F0 FB            543 	djnz	b,00214$
   00E5 54 07               544 	anl	a,#0x07
   00E7 F5 29               545 	mov	_timer_base,a
                            546 ;	../fb_app_in8.c:73: st_Flanke=(((portbuffer>>pinno)&0x01)==0) && (((p0h>>pinno)&0x01)==1);
   00E9 85 4A F0            547 	mov	b,_pinno
   00EC 05 F0               548 	inc	b
   00EE E5 24               549 	mov	a,_portbuffer
   00F0 80 02               550 	sjmp	00217$
   00F2                     551 00216$:
   00F2 C3                  552 	clr	c
   00F3 13                  553 	rrc	a
   00F4                     554 00217$:
   00F4 D5 F0 FB            555 	djnz	b,00216$
   00F7 54 01               556 	anl	a,#0x01
   00F9 FD                  557 	mov	r5,a
   00FA B4 01 00            558 	cjne	a,#0x01,00218$
   00FD                     559 00218$:
   00FD E4                  560 	clr	a
   00FE 33                  561 	rlc	a
   00FF FD                  562 	mov	r5,a
   0100 60 16               563 	jz	00161$
   0102 85 4A F0            564 	mov	b,_pinno
   0105 05 F0               565 	inc	b
   0107 E5 25               566 	mov	a,_p0h
   0109 80 02               567 	sjmp	00221$
   010B                     568 00220$:
   010B C3                  569 	clr	c
   010C 13                  570 	rrc	a
   010D                     571 00221$:
   010D D5 F0 FB            572 	djnz	b,00220$
   0110 54 01               573 	anl	a,#0x01
   0112 FD                  574 	mov	r5,a
   0113 BD 01 02            575 	cjne	r5,#0x01,00222$
   0116 80 04               576 	sjmp	00162$
   0118                     577 00222$:
   0118                     578 00161$:
   0118 C2 18               579 	clr	b0
   011A 80 02               580 	sjmp	00163$
   011C                     581 00162$:
   011C D2 18               582 	setb	b0
   011E                     583 00163$:
   011E A2 18               584 	mov	c,b0
   0120 92 02               585 	mov	_st_Flanke,c
                            586 ;	../fb_app_in8.c:74: timer_state=timerstate[pinno];
   0122 E5 4A               587 	mov	a,_pinno
   0124 24 3F               588 	add	a,#_timerstate
   0126 F9                  589 	mov	r1,a
   0127 87 2A               590 	mov	_timer_state,@r1
                            591 ;	../fb_app_in8.c:76: switch ((eeprom[0xCE+(pinno>>1)] >> ((pinno & 0x01)*4)) & 0x0F)	// Funktion des Eingangs
   0129 E5 4A               592 	mov	a,_pinno
   012B C3                  593 	clr	c
   012C 13                  594 	rrc	a
   012D 24 CE               595 	add	a,#0xCE
   012F 90 1D 00            596 	mov	dptr,#_eeprom
   0132 93                  597 	movc	a,@a+dptr
   0133 FD                  598 	mov	r5,a
   0134 74 01               599 	mov	a,#0x01
   0136 55 4A               600 	anl	a,_pinno
   0138 75 F0 04            601 	mov	b,#0x04
   013B A4                  602 	mul	ab
   013C F5 F0               603 	mov	b,a
   013E 05 F0               604 	inc	b
   0140 ED                  605 	mov	a,r5
   0141 80 02               606 	sjmp	00224$
   0143                     607 00223$:
   0143 C3                  608 	clr	c
   0144 13                  609 	rrc	a
   0145                     610 00224$:
   0145 D5 F0 FB            611 	djnz	b,00223$
   0148 54 0F               612 	anl	a,#0x0F
   014A FD                  613 	mov  r5,a
   014B 24 F7               614 	add	a,#0xff - 0x08
   014D 50 03               615 	jnc	00225$
   014F 02 04 BE            616 	ljmp	00156$
   0152                     617 00225$:
   0152 ED                  618 	mov	a,r5
   0153 2D                  619 	add	a,r5
   0154 2D                  620 	add	a,r5
   0155 90 01 59            621 	mov	dptr,#00226$
   0158 73                  622 	jmp	@a+dptr
   0159                     623 00226$:
   0159 02 04 BE            624 	ljmp	00156$
   015C 02 01 74            625 	ljmp	00101$
   015F 02 01 94            626 	ljmp	00102$
   0162 02 02 D9            627 	ljmp	00124$
   0165 02 03 B5            628 	ljmp	00138$
   0168 02 04 60            629 	ljmp	00148$
   016B 02 04 BE            630 	ljmp	00156$
   016E 02 03 BF            631 	ljmp	00139$
   0171 02 03 C2            632 	ljmp	00140$
                            633 ;	../fb_app_in8.c:78: case 0x01:				// Funktion Schalten
   0174                     634 00101$:
                            635 ;	../fb_app_in8.c:79: schalten(st_Flanke,pinno);			// Flanke Eingang x.1
   0174 A2 02               636 	mov	c,_st_Flanke
   0176 92 F0               637 	mov	b[0],c
   0178 85 F0 23            638 	mov	bits,b
   017B 85 4A 82            639 	mov	dpl,_pinno
   017E 12 07 1F            640 	lcall	_schalten
                            641 ;	../fb_app_in8.c:82: schalten(st_Flanke,pinno+8);		// Flanke Eingang x.2
   0181 74 08               642 	mov	a,#0x08
   0183 25 4A               643 	add	a,_pinno
   0185 F5 82               644 	mov	dpl,a
   0187 A2 02               645 	mov	c,_st_Flanke
   0189 92 F0               646 	mov	b[0],c
   018B 85 F0 23            647 	mov	bits,b
   018E 12 07 1F            648 	lcall	_schalten
                            649 ;	../fb_app_in8.c:96: break;  
   0191 02 04 BE            650 	ljmp	00156$
                            651 ;	../fb_app_in8.c:97: case 0x02:				// Funktion Dimmen
   0194                     652 00102$:
                            653 ;	../fb_app_in8.c:102: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
   0194 20 02 03            654 	jb	_st_Flanke,00227$
   0197 02 02 1D            655 	ljmp	00122$
   019A                     656 00227$:
                            657 ;	../fb_app_in8.c:103: timercnt[pinno]=0x80+(eeprom[0xD7+(pinnoX4)]&0x7F);	// Faktor/Dauer			
   019A E5 4A               658 	mov	a,_pinno
   019C 24 36               659 	add	a,#_timercnt
   019E F9                  660 	mov	r1,a
   019F 74 D7               661 	mov	a,#0xD7
   01A1 25 48               662 	add	a,_pinnoX4
   01A3 90 1D 00            663 	mov	dptr,#_eeprom
   01A6 93                  664 	movc	a,@a+dptr
   01A7 FD                  665 	mov	r5,a
   01A8 74 7F               666 	mov	a,#0x7F
   01AA 5D                  667 	anl	a,r5
   01AB 24 80               668 	add	a,#0x80
   01AD F7                  669 	mov	@r1,a
                            670 ;	../fb_app_in8.c:104: timerbase[pinno]=timer_base;
   01AE E5 4A               671 	mov	a,_pinno
   01B0 24 2D               672 	add	a,#_timerbase
   01B2 F8                  673 	mov	r0,a
   01B3 A6 29               674 	mov	@r0,_timer_base
                            675 ;	../fb_app_in8.c:106: objval=(read_obj_value(pinno+8)>>3)&0x01;
   01B5 74 08               676 	mov	a,#0x08
   01B7 25 4A               677 	add	a,_pinno
   01B9 F5 82               678 	mov	dpl,a
   01BB 12 0C E0            679 	lcall	_read_obj_value
   01BE AA 82               680 	mov	r2,dpl
   01C0 AB 83               681 	mov	r3,dph
   01C2 AC F0               682 	mov	r4,b
   01C4 EA                  683 	mov	a,r2
   01C5 A2 E3               684 	mov	c,acc[3]
   01C7 E4                  685 	clr	a
   01C8 33                  686 	rlc	a
   01C9 FA                  687 	mov	r2,a
   01CA 24 FF               688 	add	a,#0xff
   01CC 92 00               689 	mov	_objval,c
                            690 ;	../fb_app_in8.c:107: switch (eeprom[para_adr]&0x70) {
   01CE 85 49 82            691 	mov	dpl,_para_adr
   01D1 75 83 1D            692 	mov	dph,#(_eeprom >> 8)
   01D4 E4                  693 	clr	a
   01D5 93                  694 	movc	a,@a+dptr
   01D6 FD                  695 	mov	r5,a
   01D7 53 05 70            696 	anl	ar5,#0x70
   01DA BD 00 02            697 	cjne	r5,#0x00,00228$
   01DD 80 0A               698 	sjmp	00103$
   01DF                     699 00228$:
   01DF BD 10 02            700 	cjne	r5,#0x10,00229$
   01E2 80 09               701 	sjmp	00105$
   01E4                     702 00229$:
                            703 ;	../fb_app_in8.c:108: case 0x00:	// UM Dimmen
   01E4 BD 30 0A            704 	cjne	r5,#0x30,00106$
   01E7 80 04               705 	sjmp	00105$
   01E9                     706 00103$:
                            707 ;	../fb_app_in8.c:109: objval = !objval;	// Dimmrichtung ändern
   01E9 B2 00               708 	cpl	_objval
                            709 ;	../fb_app_in8.c:110: break;
                            710 ;	../fb_app_in8.c:112: case 0x30:
   01EB 80 06               711 	sjmp	00107$
   01ED                     712 00105$:
                            713 ;	../fb_app_in8.c:113: objval=1;
   01ED D2 00               714 	setb	_objval
                            715 ;	../fb_app_in8.c:114: break;
                            716 ;	../fb_app_in8.c:115: default:	
   01EF 80 02               717 	sjmp	00107$
   01F1                     718 00106$:
                            719 ;	../fb_app_in8.c:118: objval=0;
   01F1 C2 00               720 	clr	_objval
                            721 ;	../fb_app_in8.c:119: }
   01F3                     722 00107$:
                            723 ;	../fb_app_in8.c:120: if(objval){	// wenn heller dimmen soll
   01F3 30 00 15            724 	jnb	_objval,00109$
                            725 ;	../fb_app_in8.c:121: timer_state = ((eeprom[para_adr+0x01]&0x38)>>3)+ 0x48;	// dimmen
   01F6 E5 49               726 	mov	a,_para_adr
   01F8 04                  727 	inc	a
   01F9 90 1D 00            728 	mov	dptr,#_eeprom
   01FC 93                  729 	movc	a,@a+dptr
   01FD 54 38               730 	anl	a,#0x38
   01FF C4                  731 	swap	a
   0200 23                  732 	rl	a
   0201 54 1F               733 	anl	a,#0x1F
   0203 FD                  734 	mov	r5,a
   0204 24 48               735 	add	a,#0x48
   0206 F5 2A               736 	mov	_timer_state,a
   0208 02 04 BE            737 	ljmp	00156$
   020B                     738 00109$:
                            739 ;	../fb_app_in8.c:124: timer_state = (eeprom[para_adr+0x01]&0x07)+ 0x40;	// dimmen
   020B E5 49               740 	mov	a,_para_adr
   020D 04                  741 	inc	a
   020E 90 1D 00            742 	mov	dptr,#_eeprom
   0211 93                  743 	movc	a,@a+dptr
   0212 FD                  744 	mov	r5,a
   0213 74 07               745 	mov	a,#0x07
   0215 5D                  746 	anl	a,r5
   0216 24 40               747 	add	a,#0x40
   0218 F5 2A               748 	mov	_timer_state,a
   021A 02 04 BE            749 	ljmp	00156$
   021D                     750 00122$:
                            751 ;	../fb_app_in8.c:128: if ((timer_state & 0x50)== 0x40) {		// wenn delaytimer noch laeuft, dann Schalten, also EIS1 telegramm senden
   021D 74 50               752 	mov	a,#0x50
   021F 55 2A               753 	anl	a,_timer_state
   0221 FD                  754 	mov	r5,a
   0222 BD 40 54            755 	cjne	r5,#0x40,00119$
                            756 ;	../fb_app_in8.c:130: objval = read_obj_value(pinno);
   0225 85 4A 82            757 	mov	dpl,_pinno
   0228 12 0C E0            758 	lcall	_read_obj_value
   022B AA 82               759 	mov	r2,dpl
   022D AB 83               760 	mov	r3,dph
   022F AC F0               761 	mov	r4,b
   0231 FD                  762 	mov	r5,a
   0232 EA                  763 	mov	a,r2
   0233 4B                  764 	orl	a,r3
   0234 4C                  765 	orl	a,r4
   0235 4D                  766 	orl	a,r5
   0236 24 FF               767 	add	a,#0xff
   0238 92 00               768 	mov	_objval,c
                            769 ;	../fb_app_in8.c:131: switch (eeprom[para_adr]&0x70) {//Bedienkonzept angucken
   023A 85 49 82            770 	mov	dpl,_para_adr
   023D 75 83 1D            771 	mov	dph,#(_eeprom >> 8)
   0240 E4                  772 	clr	a
   0241 93                  773 	movc	a,@a+dptr
   0242 FD                  774 	mov	r5,a
   0243 53 05 70            775 	anl	ar5,#0x70
   0246 BD 10 02            776 	cjne	r5,#0x10,00234$
   0249 80 05               777 	sjmp	00111$
   024B                     778 00234$:
                            779 ;	../fb_app_in8.c:132: case 0x10:	// zweiflaechen ein
   024B BD 20 0A            780 	cjne	r5,#0x20,00113$
   024E 80 04               781 	sjmp	00112$
   0250                     782 00111$:
                            783 ;	../fb_app_in8.c:133: objval=1;
   0250 D2 00               784 	setb	_objval
                            785 ;	../fb_app_in8.c:134: break;
                            786 ;	../fb_app_in8.c:135: case 0x20:	// zweiflaechen aus
   0252 80 06               787 	sjmp	00114$
   0254                     788 00112$:
                            789 ;	../fb_app_in8.c:136: objval=0;
   0254 C2 00               790 	clr	_objval
                            791 ;	../fb_app_in8.c:137: break;
                            792 ;	../fb_app_in8.c:138: default:	
   0256 80 02               793 	sjmp	00114$
   0258                     794 00113$:
                            795 ;	../fb_app_in8.c:142: objval = !objval;
   0258 B2 00               796 	cpl	_objval
                            797 ;	../fb_app_in8.c:143: }
   025A                     798 00114$:
                            799 ;	../fb_app_in8.c:144: write_send(pinno,objval);
   025A A2 00               800 	mov	c,_objval
   025C E4                  801 	clr	a
   025D 33                  802 	rlc	a
   025E FC                  803 	mov	r4,a
   025F 7D 00               804 	mov	r5,#0x00
   0261 C0 04               805 	push	ar4
   0263 C0 05               806 	push	ar5
   0265 85 4A 82            807 	mov	dpl,_pinno
   0268 12 0B 70            808 	lcall	_write_send
   026B 15 81               809 	dec	sp
   026D 15 81               810 	dec	sp
                            811 ;	../fb_app_in8.c:145: timercnt[pinno]=0;
   026F E5 4A               812 	mov	a,_pinno
   0271 24 36               813 	add	a,#_timercnt
   0273 F8                  814 	mov	r0,a
   0274 76 00               815 	mov	@r0,#0x00
   0276 02 04 BE            816 	ljmp	00156$
   0279                     817 00119$:
                            818 ;	../fb_app_in8.c:148: tmp=read_obj_value(pinno+8);
   0279 74 08               819 	mov	a,#0x08
   027B 25 4A               820 	add	a,_pinno
   027D F5 82               821 	mov	dpl,a
   027F 12 0C E0            822 	lcall	_read_obj_value
   0282 AA 82               823 	mov	r2,dpl
   0284 AB 83               824 	mov	r3,dph
   0286 AC F0               825 	mov	r4,b
                            826 ;	../fb_app_in8.c:149: if (eeprom[0xD5+(pinnoX4)] & 0x08) {	// ... natuerlich nur wenn parameter dementsprechend 
   0288 74 D5               827 	mov	a,#0xD5
   028A 25 48               828 	add	a,_pinnoX4
   028C 90 1D 00            829 	mov	dptr,#_eeprom
   028F 93                  830 	movc	a,@a+dptr
   0290 FD                  831 	mov	r5,a
   0291 30 E3 19            832 	jnb	acc.3,00116$
                            833 ;	../fb_app_in8.c:150: write_send(pinno+8, tmp & 0x08);		// Stop Telegramm
   0294 74 08               834 	mov	a,#0x08
   0296 5A                  835 	anl	a,r2
   0297 FD                  836 	mov	r5,a
   0298 7C 00               837 	mov	r4,#0x00
   029A 74 08               838 	mov	a,#0x08
   029C 25 4A               839 	add	a,_pinno
   029E F5 82               840 	mov	dpl,a
   02A0 C0 05               841 	push	ar5
   02A2 C0 04               842 	push	ar4
   02A4 12 0B 70            843 	lcall	_write_send
   02A7 15 81               844 	dec	sp
   02A9 15 81               845 	dec	sp
   02AB 80 1F               846 	sjmp	00117$
   02AD                     847 00116$:
                            848 ;	../fb_app_in8.c:152: else write_obj_value(pinno+8,tmp & 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
   02AD 74 08               849 	mov	a,#0x08
   02AF 5A                  850 	anl	a,r2
   02B0 FD                  851 	mov	r5,a
   02B1 E4                  852 	clr	a
   02B2 FF                  853 	mov	r7,a
   02B3 FE                  854 	mov	r6,a
   02B4 FC                  855 	mov	r4,a
   02B5 74 08               856 	mov	a,#0x08
   02B7 25 4A               857 	add	a,_pinno
   02B9 F5 82               858 	mov	dpl,a
   02BB C0 05               859 	push	ar5
   02BD C0 07               860 	push	ar7
   02BF C0 06               861 	push	ar6
   02C1 C0 04               862 	push	ar4
   02C3 12 0D B1            863 	lcall	_write_obj_value
   02C6 E5 81               864 	mov	a,sp
   02C8 24 FC               865 	add	a,#0xfc
   02CA F5 81               866 	mov	sp,a
   02CC                     867 00117$:
                            868 ;	../fb_app_in8.c:153: timer_state=0;
   02CC 75 2A 00            869 	mov	_timer_state,#0x00
                            870 ;	../fb_app_in8.c:154: timercnt[pinno]=0;
   02CF E5 4A               871 	mov	a,_pinno
   02D1 24 36               872 	add	a,#_timercnt
   02D3 F8                  873 	mov	r0,a
   02D4 76 00               874 	mov	@r0,#0x00
                            875 ;	../fb_app_in8.c:159: break;
   02D6 02 04 BE            876 	ljmp	00156$
                            877 ;	../fb_app_in8.c:161: case 0x03:				//Funktion Jalousie
   02D9                     878 00124$:
                            879 ;	../fb_app_in8.c:165: n=0xD8+(pinno*4);
   02D9 E5 4A               880 	mov	a,_pinno
   02DB 25 4A               881 	add	a,_pinno
   02DD 25 E0               882 	add	a,acc
   02DF 24 D8               883 	add	a,#0xD8
                            884 ;	../fb_app_in8.c:166: para_value=(eeprom[n]&0x30)>>4;//Jalofunktion holen
   02E1 FD                  885 	mov	r5,a
   02E2 F5 82               886 	mov	dpl,a
   02E4 75 83 1D            887 	mov	dph,#(_eeprom >> 8)
   02E7 E4                  888 	clr	a
   02E8 93                  889 	movc	a,@a+dptr
   02E9 54 30               890 	anl	a,#0x30
   02EB FC                  891 	mov	r4,a
   02EC C4                  892 	swap	a
   02ED 54 0F               893 	anl	a,#0x0F
   02EF F5 4B               894 	mov	_para_value,a
                            895 ;	../fb_app_in8.c:167: switch (para_value){
   02F1 74 01               896 	mov	a,#0x01
   02F3 B5 4B 02            897 	cjne	a,_para_value,00237$
   02F6 80 0E               898 	sjmp	00125$
   02F8                     899 00237$:
   02F8 74 02               900 	mov	a,#0x02
   02FA B5 4B 02            901 	cjne	a,_para_value,00238$
   02FD 80 0B               902 	sjmp	00126$
   02FF                     903 00238$:
   02FF 74 03               904 	mov	a,#0x03
                            905 ;	../fb_app_in8.c:168: case 1:		//auf
   0301 B5 4B 2D            906 	cjne	a,_para_value,00128$
   0304 80 08               907 	sjmp	00127$
   0306                     908 00125$:
                            909 ;	../fb_app_in8.c:169: jobj=0;
   0306 C2 01               910 	clr	_jobj
                            911 ;	../fb_app_in8.c:170: break;
                            912 ;	../fb_app_in8.c:171: case 2:		//ab
   0308 80 27               913 	sjmp	00128$
   030A                     914 00126$:
                            915 ;	../fb_app_in8.c:172: jobj=1;
   030A D2 01               916 	setb	_jobj
                            917 ;	../fb_app_in8.c:173: break;
                            918 ;	../fb_app_in8.c:174: case 3:		//UM
   030C 80 23               919 	sjmp	00128$
   030E                     920 00127$:
                            921 ;	../fb_app_in8.c:175: jobj=read_obj_value(pinno+8)^0x01;//neues Jaloobj invers zum langzeit
   030E C0 05               922 	push	ar5
   0310 74 08               923 	mov	a,#0x08
   0312 25 4A               924 	add	a,_pinno
   0314 F5 82               925 	mov	dpl,a
   0316 C0 05               926 	push	ar5
   0318 12 0C E0            927 	lcall	_read_obj_value
   031B AF 82               928 	mov	r7,dpl
   031D AE 83               929 	mov	r6,dph
   031F AC F0               930 	mov	r4,b
   0321 FB                  931 	mov	r3,a
   0322 D0 05               932 	pop	ar5
   0324 63 07 01            933 	xrl	ar7,#0x01
   0327 EF                  934 	mov	a,r7
   0328 4E                  935 	orl	a,r6
   0329 4C                  936 	orl	a,r4
   032A 4B                  937 	orl	a,r3
   032B 24 FF               938 	add	a,#0xff
   032D 92 01               939 	mov	_jobj,c
                            940 ;	../fb_app_in8.c:311: timerstate[pinno]=timer_state;
   032F D0 05               941 	pop	ar5
                            942 ;	../fb_app_in8.c:177: }
   0331                     943 00128$:
                            944 ;	../fb_app_in8.c:178: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
   0331 30 02 5A            945 	jnb	_st_Flanke,00136$
                            946 ;	../fb_app_in8.c:179: if(eeprom[n]& 0x08){	//wenn Bedienkonzept lang-kurz ()
   0334 8D 82               947 	mov	dpl,r5
   0336 75 83 1D            948 	mov	dph,#(_eeprom >> 8)
   0339 E4                  949 	clr	a
   033A 93                  950 	movc	a,@a+dptr
   033B FC                  951 	mov	r4,a
   033C 30 E3 13            952 	jnb	acc.3,00130$
                            953 ;	../fb_app_in8.c:181: timer_state = jobj+0x80;
   033F A2 01               954 	mov	c,_jobj
   0341 E4                  955 	clr	a
   0342 33                  956 	rlc	a
   0343 FC                  957 	mov	r4,a
   0344 24 80               958 	add	a,#0x80
   0346 F5 2A               959 	mov	_timer_state,a
                            960 ;	../fb_app_in8.c:182: timercnt[pinno]=0x80;//langzeit in delay_timer SOFORT ausführen
   0348 E5 4A               961 	mov	a,_pinno
   034A 24 36               962 	add	a,#_timercnt
   034C F8                  963 	mov	r0,a
   034D 76 80               964 	mov	@r0,#0x80
   034F 02 04 BE            965 	ljmp	00156$
   0352                     966 00130$:
                            967 ;	../fb_app_in8.c:185: write_send( pinno, jobj);	// Kurzzeit telegramm immer bei Drücken senden
   0352 A2 01               968 	mov	c,_jobj
   0354 E4                  969 	clr	a
   0355 33                  970 	rlc	a
   0356 FB                  971 	mov	r3,a
   0357 7C 00               972 	mov	r4,#0x00
   0359 C0 03               973 	push	ar3
   035B C0 04               974 	push	ar4
   035D 85 4A 82            975 	mov	dpl,_pinno
   0360 12 0B 70            976 	lcall	_write_send
   0363 15 81               977 	dec	sp
   0365 15 81               978 	dec	sp
                            979 ;	../fb_app_in8.c:186: timercnt[pinno]=0x80+eeprom[0xD6+(pinno*4)];//Faktor Dauer )
   0367 E5 4A               980 	mov	a,_pinno
   0369 24 36               981 	add	a,#_timercnt
   036B F9                  982 	mov	r1,a
   036C E5 4A               983 	mov	a,_pinno
   036E 25 4A               984 	add	a,_pinno
   0370 25 E0               985 	add	a,acc
   0372 24 D6               986 	add	a,#0xD6
   0374 90 1D 00            987 	mov	dptr,#_eeprom
   0377 93                  988 	movc	a,@a+dptr
   0378 24 80               989 	add	a,#0x80
   037A F7                  990 	mov	@r1,a
                            991 ;	../fb_app_in8.c:187: timerbase[pinno]=timer_base;
   037B E5 4A               992 	mov	a,_pinno
   037D 24 2D               993 	add	a,#_timerbase
   037F F8                  994 	mov	r0,a
   0380 A6 29               995 	mov	@r0,_timer_base
                            996 ;	../fb_app_in8.c:190: timer_state = jobj+0x80;
   0382 A2 01               997 	mov	c,_jobj
   0384 E4                  998 	clr	a
   0385 33                  999 	rlc	a
   0386 FC                 1000 	mov	r4,a
   0387 24 80              1001 	add	a,#0x80
   0389 F5 2A              1002 	mov	_timer_state,a
   038B 02 04 BE           1003 	ljmp	00156$
   038E                    1004 00136$:
                           1005 ;	../fb_app_in8.c:194: if (timer_state & 0x10) write_send( pinno, jobj);	// wenn delaytimer noch laueft und in T2 ist, dann kurzzeit telegramm senden
   038E E5 2A              1006 	mov	a,_timer_state
   0390 30 E4 18           1007 	jnb	acc.4,00133$
   0393 A2 01              1008 	mov	c,_jobj
   0395 E4                 1009 	clr	a
   0396 33                 1010 	rlc	a
   0397 FB                 1011 	mov	r3,a
   0398 7C 00              1012 	mov	r4,#0x00
   039A C0 03              1013 	push	ar3
   039C C0 04              1014 	push	ar4
   039E 85 4A 82           1015 	mov	dpl,_pinno
   03A1 12 0B 70           1016 	lcall	_write_send
   03A4 15 81              1017 	dec	sp
   03A6 15 81              1018 	dec	sp
   03A8 02 04 BE           1019 	ljmp	00156$
   03AB                    1020 00133$:
                           1021 ;	../fb_app_in8.c:195: else timercnt[pinno]=0;	// T2 bereits abgelaufen
   03AB E5 4A              1022 	mov	a,_pinno
   03AD 24 36              1023 	add	a,#_timercnt
   03AF F8                 1024 	mov	r0,a
   03B0 76 00              1025 	mov	@r0,#0x00
                           1026 ;	../fb_app_in8.c:197: break;
   03B2 02 04 BE           1027 	ljmp	00156$
                           1028 ;	../fb_app_in8.c:204: case 0x04:// Dimmwertgeber
   03B5                    1029 00138$:
                           1030 ;	../fb_app_in8.c:205: para_value=0xFF;
   03B5 75 4B FF           1031 	mov	_para_value,#0xFF
                           1032 ;	../fb_app_in8.c:206: typ=0x01;
   03B8 7E 01              1033 	mov	r6,#0x01
                           1034 ;	../fb_app_in8.c:207: objoffset=0;//läuft absichtlich in den nächsten case
   03BA A8 7B              1035 	mov	r0,_bp
   03BC 08                 1036 	inc	r0
   03BD 76 00              1037 	mov	@r0,#0x00
                           1038 ;	../fb_app_in8.c:208: case 0x07:// Temperaturwertgeber
   03BF                    1039 00139$:
                           1040 ;	../fb_app_in8.c:210: typ=typ|0x02;//kein objoffset zugewiesen,d.h. 8,da mit 8 initialisiert
   03BF 43 06 02           1041 	orl	ar6,#0x02
                           1042 ;	../fb_app_in8.c:211: case 0x08:// Helligkeitswertgeber,
   03C2                    1043 00140$:
                           1044 ;	../fb_app_in8.c:212: para_value=para_value |0x1F;
   03C2 43 4B 1F           1045 	orl	_para_value,#0x1F
                           1046 ;	../fb_app_in8.c:213: typ=typ|0x04;//kein objoffset zugewiesen,d.h. 8,da mit 8 initialisiert
   03C5 43 06 04           1047 	orl	ar6,#0x04
                           1048 ;	../fb_app_in8.c:214: n=0xD5+(pinno*4);
   03C8 E5 4A              1049 	mov	a,_pinno
   03CA 25 4A              1050 	add	a,_pinno
   03CC 25 E0              1051 	add	a,acc
   03CE 24 D5              1052 	add	a,#0xD5
                           1053 ;	../fb_app_in8.c:215: tmp=(((eeprom[n]&0x04)>>2)|(eeprom[n+1]&0x80)>>6);//in tmp steigend fallend reaktion
   03D0 FD                 1054 	mov	r5,a
   03D1 F5 82              1055 	mov	dpl,a
   03D3 75 83 1D           1056 	mov	dph,#(_eeprom >> 8)
   03D6 E4                 1057 	clr	a
   03D7 93                 1058 	movc	a,@a+dptr
   03D8 54 04              1059 	anl	a,#0x04
   03DA 03                 1060 	rr	a
   03DB 03                 1061 	rr	a
   03DC 54 3F              1062 	anl	a,#0x3F
   03DE FC                 1063 	mov	r4,a
   03DF ED                 1064 	mov	a,r5
   03E0 04                 1065 	inc	a
   03E1 90 1D 00           1066 	mov	dptr,#_eeprom
   03E4 93                 1067 	movc	a,@a+dptr
   03E5 54 80              1068 	anl	a,#0x80
   03E7 23                 1069 	rl	a
   03E8 23                 1070 	rl	a
   03E9 54 03              1071 	anl	a,#0x03
   03EB FB                 1072 	mov	r3,a
   03EC 42 04              1073 	orl	ar4,a
   03EE 8C 02              1074 	mov	ar2,r4
                           1075 ;	../fb_app_in8.c:216: if (st_Flanke){// Taster gedrueckt       in tmp bit0 steigend, bit1 fallend
   03F0 30 02 37           1076 	jnb	_st_Flanke,00146$
                           1077 ;	../fb_app_in8.c:218: if(tmp&0x01) write_send( pinno+objoffset, eis5conversion((eeprom[n+2]& para_value),typ));	//wert senden
   03F3 EA                 1078 	mov	a,r2
   03F4 20 E0 03           1079 	jb	acc.0,00244$
   03F7 02 04 BE           1080 	ljmp	00156$
   03FA                    1081 00244$:
   03FA 74 02              1082 	mov	a,#0x02
   03FC 2D                 1083 	add	a,r5
   03FD 90 1D 00           1084 	mov	dptr,#_eeprom
   0400 93                 1085 	movc	a,@a+dptr
   0401 FC                 1086 	mov	r4,a
   0402 E5 4B              1087 	mov	a,_para_value
   0404 52 04              1088 	anl	ar4,a
   0406 C0 06              1089 	push	ar6
   0408 8C 82              1090 	mov	dpl,r4
   040A 12 04 CA           1091 	lcall	_eis5conversion
   040D AB 82              1092 	mov	r3,dpl
   040F AC 83              1093 	mov	r4,dph
   0411 15 81              1094 	dec	sp
   0413 A8 7B              1095 	mov	r0,_bp
   0415 08                 1096 	inc	r0
   0416 E6                 1097 	mov	a,@r0
   0417 25 4A              1098 	add	a,_pinno
   0419 FF                 1099 	mov	r7,a
   041A C0 03              1100 	push	ar3
   041C C0 04              1101 	push	ar4
   041E 8F 82              1102 	mov	dpl,r7
   0420 12 0B 70           1103 	lcall	_write_send
   0423 15 81              1104 	dec	sp
   0425 15 81              1105 	dec	sp
   0427 02 04 BE           1106 	ljmp	00156$
   042A                    1107 00146$:
                           1108 ;	../fb_app_in8.c:221: if (tmp>=0x02) write_send( pinno+objoffset, eis5conversion(eeprom[n+tmp]& para_value,typ));
   042A BA 02 00           1109 	cjne	r2,#0x02,00245$
   042D                    1110 00245$:
   042D 50 03              1111 	jnc	00246$
   042F 02 04 BE           1112 	ljmp	00156$
   0432                    1113 00246$:
   0432 EA                 1114 	mov	a,r2
   0433 2D                 1115 	add	a,r5
   0434 90 1D 00           1116 	mov	dptr,#_eeprom
   0437 93                 1117 	movc	a,@a+dptr
   0438 FF                 1118 	mov	r7,a
   0439 E5 4B              1119 	mov	a,_para_value
   043B 52 07              1120 	anl	ar7,a
   043D C0 06              1121 	push	ar6
   043F 8F 82              1122 	mov	dpl,r7
   0441 12 04 CA           1123 	lcall	_eis5conversion
   0444 AE 82              1124 	mov	r6,dpl
   0446 AF 83              1125 	mov	r7,dph
   0448 15 81              1126 	dec	sp
   044A A8 7B              1127 	mov	r0,_bp
   044C 08                 1128 	inc	r0
   044D E6                 1129 	mov	a,@r0
   044E 25 4A              1130 	add	a,_pinno
   0450 FC                 1131 	mov	r4,a
   0451 C0 06              1132 	push	ar6
   0453 C0 07              1133 	push	ar7
   0455 8C 82              1134 	mov	dpl,r4
   0457 12 0B 70           1135 	lcall	_write_send
   045A 15 81              1136 	dec	sp
   045C 15 81              1137 	dec	sp
                           1138 ;	../fb_app_in8.c:223: break;
                           1139 ;	../fb_app_in8.c:225: case 0x05:
   045E 80 5E              1140 	sjmp	00156$
   0460                    1141 00148$:
                           1142 ;	../fb_app_in8.c:229: n=0xD5+(pinno*4);
   0460 E5 4A              1143 	mov	a,_pinno
   0462 25 4A              1144 	add	a,_pinno
   0464 25 E0              1145 	add	a,acc
   0466 24 D5              1146 	add	a,#0xD5
                           1147 ;	../fb_app_in8.c:230: para_value=eeprom[n] & 0x0C;
   0468 FD                 1148 	mov	r5,a
   0469 F5 82              1149 	mov	dpl,a
   046B 75 83 1D           1150 	mov	dph,#(_eeprom >> 8)
   046E E4                 1151 	clr	a
   046F 93                 1152 	movc	a,@a+dptr
   0470 FF                 1153 	mov	r7,a
   0471 74 0C              1154 	mov	a,#0x0C
   0473 5F                 1155 	anl	a,r7
   0474 F5 4B              1156 	mov	_para_value,a
                           1157 ;	../fb_app_in8.c:232: if (st_Flanke){// Taster gedrueckt 
   0476 30 02 24           1158 	jnb	_st_Flanke,00154$
                           1159 ;	../fb_app_in8.c:233: if(para_value!=0x04) write_send( pinno,eeprom[n+2]&0x7F );	// Lichtszenennummer senden
   0479 74 04              1160 	mov	a,#0x04
   047B B5 4B 02           1161 	cjne	a,_para_value,00248$
   047E 80 3E              1162 	sjmp	00156$
   0480                    1163 00248$:
   0480 74 02              1164 	mov	a,#0x02
   0482 2D                 1165 	add	a,r5
   0483 90 1D 00           1166 	mov	dptr,#_eeprom
   0486 93                 1167 	movc	a,@a+dptr
   0487 FF                 1168 	mov	r7,a
   0488 53 07 7F           1169 	anl	ar7,#0x7F
   048B 7E 00              1170 	mov	r6,#0x00
   048D C0 07              1171 	push	ar7
   048F C0 06              1172 	push	ar6
   0491 85 4A 82           1173 	mov	dpl,_pinno
   0494 12 0B 70           1174 	lcall	_write_send
   0497 15 81              1175 	dec	sp
   0499 15 81              1176 	dec	sp
   049B 80 21              1177 	sjmp	00156$
   049D                    1178 00154$:
                           1179 ;	../fb_app_in8.c:236: if(para_value>=0x04) write_send( pinno,eeprom[n+3]&0x7F );	// Lichtszenennummer senden
   049D 74 FC              1180 	mov	a,#0x100 - 0x04
   049F 25 4B              1181 	add	a,_para_value
   04A1 50 1B              1182 	jnc	00156$
   04A3 74 03              1183 	mov	a,#0x03
   04A5 2D                 1184 	add	a,r5
   04A6 90 1D 00           1185 	mov	dptr,#_eeprom
   04A9 93                 1186 	movc	a,@a+dptr
   04AA FF                 1187 	mov	r7,a
   04AB 53 07 7F           1188 	anl	ar7,#0x7F
   04AE 7E 00              1189 	mov	r6,#0x00
   04B0 C0 07              1190 	push	ar7
   04B2 C0 06              1191 	push	ar6
   04B4 85 4A 82           1192 	mov	dpl,_pinno
   04B7 12 0B 70           1193 	lcall	_write_send
   04BA 15 81              1194 	dec	sp
   04BC 15 81              1195 	dec	sp
                           1196 ;	../fb_app_in8.c:310: }
   04BE                    1197 00156$:
                           1198 ;	../fb_app_in8.c:311: timerstate[pinno]=timer_state;
   04BE E5 4A              1199 	mov	a,_pinno
   04C0 24 3F              1200 	add	a,#_timerstate
   04C2 F8                 1201 	mov	r0,a
   04C3 A6 2A              1202 	mov	@r0,_timer_state
   04C5                    1203 00159$:
   04C5 15 81              1204 	dec	sp
   04C7 D0 7B              1205 	pop	_bp
   04C9 22                 1206 	ret
                           1207 ;------------------------------------------------------------
                           1208 ;Allocation info for local variables in function 'eis5conversion'
                           1209 ;------------------------------------------------------------
                           1210 ;Typ                       Allocated to stack - _bp -3
                           1211 ;zahl                      Allocated to registers r7 
                           1212 ;exp                       Allocated to registers r6 
                           1213 ;wert                      Allocated to registers r4 r5 
                           1214 ;------------------------------------------------------------
                           1215 ;	../fb_app_in8.c:323: int eis5conversion(unsigned char zahl,unsigned char Typ)
                           1216 ;	-----------------------------------------
                           1217 ;	 function eis5conversion
                           1218 ;	-----------------------------------------
   04CA                    1219 _eis5conversion:
   04CA C0 7B              1220 	push	_bp
   04CC 85 81 7B           1221 	mov	_bp,sp
   04CF AF 82              1222 	mov	r7,dpl
                           1223 ;	../fb_app_in8.c:325: unsigned char exp=0;
                           1224 ;	../fb_app_in8.c:326: unsigned int wert=0;
                           1225 ;	../fb_app_in8.c:327: if (Typ==4){// Helligkeitwert
   04D1 E4                 1226 	clr	a
   04D2 FE                 1227 	mov	r6,a
   04D3 FC                 1228 	mov	r4,a
   04D4 FD                 1229 	mov	r5,a
   04D5 E5 7B              1230 	mov	a,_bp
   04D7 24 FD              1231 	add	a,#0xfd
   04D9 F8                 1232 	mov	r0,a
   04DA B6 04 24           1233 	cjne	@r0,#0x04,00102$
                           1234 ;	../fb_app_in8.c:328: exp=3;// Da kleinster wert 50 lux*100=5000 ==> 5000/8 (exp=3) 
   04DD 7E 03              1235 	mov	r6,#0x03
                           1236 ;	../fb_app_in8.c:329: wert=zahl*625;//= 625
   04DF 8F 02              1237 	mov	ar2,r7
   04E1 7B 00              1238 	mov	r3,#0x00
   04E3 C0 07              1239 	push	ar7
   04E5 C0 06              1240 	push	ar6
   04E7 C0 02              1241 	push	ar2
   04E9 C0 03              1242 	push	ar3
   04EB 90 02 71           1243 	mov	dptr,#0x0271
   04EE 12 1B 4A           1244 	lcall	__mulint
   04F1 AA 82              1245 	mov	r2,dpl
   04F3 AB 83              1246 	mov	r3,dph
   04F5 15 81              1247 	dec	sp
   04F7 15 81              1248 	dec	sp
   04F9 D0 06              1249 	pop	ar6
   04FB D0 07              1250 	pop	ar7
   04FD 8A 04              1251 	mov	ar4,r2
   04FF 8B 05              1252 	mov	ar5,r3
   0501                    1253 00102$:
                           1254 ;	../fb_app_in8.c:331: if (Typ==6){// Temperaturwert kleinster wert =1 größter 31
   0501 E5 7B              1255 	mov	a,_bp
   0503 24 FD              1256 	add	a,#0xfd
   0505 F8                 1257 	mov	r0,a
   0506 B6 06 0C           1258 	cjne	@r0,#0x06,00104$
                           1259 ;	../fb_app_in8.c:333: wert=zahl*100;// Hier reicht uns eine 16bit int var
   0509 EF                 1260 	mov	a,r7
   050A 75 F0 64           1261 	mov	b,#0x64
   050D A4                 1262 	mul	ab
   050E FA                 1263 	mov	r2,a
   050F AB F0              1264 	mov	r3,b
   0511 8A 04              1265 	mov	ar4,r2
   0513 8B 05              1266 	mov	ar5,r3
   0515                    1267 00104$:
                           1268 ;	../fb_app_in8.c:335: if (Typ==7){// wenn Dimmwert ( EIS2, also keine Fließkomma)
   0515 E5 7B              1269 	mov	a,_bp
   0517 24 FD              1270 	add	a,#0xfd
   0519 F8                 1271 	mov	r0,a
   051A B6 07 06           1272 	cjne	@r0,#0x07,00117$
                           1273 ;	../fb_app_in8.c:336: wert=zahl;
   051D 8F 04              1274 	mov	ar4,r7
   051F 7D 00              1275 	mov	r5,#0x00
                           1276 ;	../fb_app_in8.c:339: while (wert > 2047){//solange Mantisse größer 11 Bit
   0521 80 13              1277 	sjmp	00110$
   0523                    1278 00117$:
   0523 8E 07              1279 	mov	ar7,r6
   0525                    1280 00105$:
   0525 ED                 1281 	mov	a,r5
   0526 54 F8              1282 	anl	a,#0xF8
   0528 60 0A              1283 	jz	00118$
                           1284 ;	../fb_app_in8.c:340: wert=wert>>1;// Mantisse /2
   052A ED                 1285 	mov	a,r5
   052B C3                 1286 	clr	c
   052C 13                 1287 	rrc	a
   052D CC                 1288 	xch	a,r4
   052E 13                 1289 	rrc	a
   052F CC                 1290 	xch	a,r4
   0530 FD                 1291 	mov	r5,a
                           1292 ;	../fb_app_in8.c:341: exp++;// und exponent um 1 erhöhen (ist ein 2^exp)
   0531 0F                 1293 	inc	r7
   0532 80 F1              1294 	sjmp	00105$
   0534                    1295 00118$:
   0534 8F 06              1296 	mov	ar6,r7
   0536                    1297 00110$:
                           1298 ;	../fb_app_in8.c:344: return (wert+(exp<<11));// exponent dazu, geht auch bei EIS2 da EXP hier 0 ist.
   0536 EE                 1299 	mov	a,r6
   0537 C4                 1300 	swap	a
   0538 03                 1301 	rr	a
   0539 54 F8              1302 	anl	a,#0xF8
   053B FF                 1303 	mov	r7,a
   053C E4                 1304 	clr	a
   053D 2C                 1305 	add	a,r4
   053E FC                 1306 	mov	r4,a
   053F EF                 1307 	mov	a,r7
   0540 3D                 1308 	addc	a,r5
   0541 FD                 1309 	mov	r5,a
   0542 8C 82              1310 	mov	dpl,r4
   0544 8D 83              1311 	mov	dph,r5
   0546 D0 7B              1312 	pop	_bp
   0548 22                 1313 	ret
                           1314 ;------------------------------------------------------------
                           1315 ;Allocation info for local variables in function 'delay_timer'
                           1316 ;------------------------------------------------------------
                           1317 ;m                         Allocated to registers r6 
                           1318 ;objno                     Allocated to registers r7 
                           1319 ;n                         Allocated to registers r5 
                           1320 ;timerflags                Allocated to registers r6 r7 
                           1321 ;jobj                      Allocated to registers b0 
                           1322 ;------------------------------------------------------------
                           1323 ;	../fb_app_in8.c:354: void delay_timer(void)
                           1324 ;	-----------------------------------------
                           1325 ;	 function delay_timer
                           1326 ;	-----------------------------------------
   0549                    1327 _delay_timer:
                           1328 ;	../fb_app_in8.c:364: RTCCON=0x60;		// RTC anhalten und Flag löschen
   0549 75 D1 60           1329 	mov	_RTCCON,#0x60
                           1330 ;	../fb_app_in8.c:365: RTCH=0x0E;			// reload Real Time Clock
   054C 75 D2 0E           1331 	mov	_RTCH,#0x0E
                           1332 ;	../fb_app_in8.c:366: RTCL=0xA0;			// auf 65ms
   054F 75 D3 A0           1333 	mov	_RTCL,#0xA0
                           1334 ;	../fb_app_in8.c:367: RTCCON=0x61;//	START_RTC	// RTC starten
   0552 75 D1 61           1335 	mov	_RTCCON,#0x61
                           1336 ;	../fb_app_in8.c:368: timer++;
   0555 05 2B              1337 	inc	_timer
   0557 E4                 1338 	clr	a
   0558 B5 2B 02           1339 	cjne	a,_timer,00166$
   055B 05 2C              1340 	inc	(_timer + 1)
   055D                    1341 00166$:
                           1342 ;	../fb_app_in8.c:369: timerflags = timer&(~(timer-1));// flanke generieren
   055D E5 2B              1343 	mov	a,_timer
   055F 24 FF              1344 	add	a,#0xFF
   0561 FE                 1345 	mov	r6,a
   0562 E5 2C              1346 	mov	a,(_timer + 1)
   0564 34 FF              1347 	addc	a,#0xFF
   0566 FF                 1348 	mov	r7,a
   0567 EE                 1349 	mov	a,r6
   0568 F4                 1350 	cpl	a
   0569 FE                 1351 	mov	r6,a
   056A EF                 1352 	mov	a,r7
   056B F4                 1353 	cpl	a
   056C FF                 1354 	mov	r7,a
   056D E5 2B              1355 	mov	a,_timer
   056F 52 06              1356 	anl	ar6,a
   0571 E5 2C              1357 	mov	a,(_timer + 1)
   0573 52 07              1358 	anl	ar7,a
                           1359 ;	../fb_app_in8.c:370: for(n=0;n<16;n++){
   0575 7D 00              1360 	mov	r5,#0x00
   0577                    1361 00123$:
   0577 BD 10 00           1362 	cjne	r5,#0x10,00167$
   057A                    1363 00167$:
   057A 50 32              1364 	jnc	00126$
                           1365 ;	../fb_app_in8.c:371: if(timerflags & 0x0001){// positive flags erzeugen und schieben
   057C EE                 1366 	mov	a,r6
   057D 30 E0 24           1367 	jnb	acc.0,00106$
                           1368 ;	../fb_app_in8.c:372: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
   0580 7C 00              1369 	mov	r4,#0x00
   0582                    1370 00119$:
   0582 BC 09 00           1371 	cjne	r4,#0x09,00170$
   0585                    1372 00170$:
   0585 50 1D              1373 	jnc	00106$
                           1374 ;	../fb_app_in8.c:373: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
   0587 EC                 1375 	mov	a,r4
   0588 24 2D              1376 	add	a,#_timerbase
   058A F9                 1377 	mov	r1,a
   058B 87 03              1378 	mov	ar3,@r1
   058D 53 03 0F           1379 	anl	ar3,#0x0F
   0590 EB                 1380 	mov	a,r3
   0591 B5 05 0D           1381 	cjne	a,ar5,00121$
                           1382 ;	../fb_app_in8.c:374: if (timercnt[m]>0x80){// wenn der counter läuft...
   0594 EC                 1383 	mov	a,r4
   0595 24 36              1384 	add	a,#_timercnt
   0597 F9                 1385 	mov	r1,a
   0598 E7                 1386 	mov	a,@r1
   0599 FB                 1387 	mov	r3,a
   059A 24 7F              1388 	add	a,#0xff - 0x80
   059C 50 03              1389 	jnc	00121$
                           1390 ;	../fb_app_in8.c:375: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
   059E EB                 1391 	mov	a,r3
   059F 14                 1392 	dec	a
   05A0 F7                 1393 	mov	@r1,a
   05A1                    1394 00121$:
                           1395 ;	../fb_app_in8.c:372: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
   05A1 0C                 1396 	inc	r4
   05A2 80 DE              1397 	sjmp	00119$
   05A4                    1398 00106$:
                           1399 ;	../fb_app_in8.c:380: timerflags = timerflags>>1;
   05A4 EF                 1400 	mov	a,r7
   05A5 C3                 1401 	clr	c
   05A6 13                 1402 	rrc	a
   05A7 CE                 1403 	xch	a,r6
   05A8 13                 1404 	rrc	a
   05A9 CE                 1405 	xch	a,r6
   05AA FF                 1406 	mov	r7,a
                           1407 ;	../fb_app_in8.c:370: for(n=0;n<16;n++){
   05AB 0D                 1408 	inc	r5
   05AC 80 C9              1409 	sjmp	00123$
   05AE                    1410 00126$:
                           1411 ;	../fb_app_in8.c:398: for(objno=0;objno<8;objno++) {
   05AE 7F 00              1412 	mov	r7,#0x00
   05B0                    1413 00127$:
   05B0 BF 08 00           1414 	cjne	r7,#0x08,00175$
   05B3                    1415 00175$:
   05B3 40 01              1416 	jc	00176$
   05B5 22                 1417 	ret
   05B6                    1418 00176$:
                           1419 ;	../fb_app_in8.c:399: timer_state=timerstate[objno];
   05B6 EF                 1420 	mov	a,r7
   05B7 24 3F              1421 	add	a,#_timerstate
   05B9 F9                 1422 	mov	r1,a
   05BA 87 2A              1423 	mov	_timer_state,@r1
                           1424 ;	../fb_app_in8.c:400: if(timercnt[objno]==0x80) {
   05BC EF                 1425 	mov	a,r7
   05BD 24 36              1426 	add	a,#_timercnt
   05BF F9                 1427 	mov	r1,a
   05C0 87 06              1428 	mov	ar6,@r1
   05C2 BE 80 02           1429 	cjne	r6,#0x80,00177$
   05C5 80 03              1430 	sjmp	00178$
   05C7                    1431 00177$:
   05C7 02 07 1B           1432 	ljmp	00129$
   05CA                    1433 00178$:
                           1434 ;	../fb_app_in8.c:417: if (timer_state & 0x80) { // 0x80, 0x81 für langzeit telegramm senden
   05CA E5 2A              1435 	mov	a,_timer_state
   05CC 20 E7 03           1436 	jb	acc.7,00179$
   05CF 02 06 70           1437 	ljmp	00111$
   05D2                    1438 00179$:
                           1439 ;	../fb_app_in8.c:418: write_send( objno+8, timer_state & 0x01);	// Langzeit Telegramm senden
   05D2 74 01              1440 	mov	a,#0x01
   05D4 55 2A              1441 	anl	a,_timer_state
   05D6 FE                 1442 	mov	r6,a
   05D7 7D 00              1443 	mov	r5,#0x00
   05D9 74 08              1444 	mov	a,#0x08
   05DB 2F                 1445 	add	a,r7
   05DC F5 82              1446 	mov	dpl,a
   05DE C0 07              1447 	push	ar7
   05E0 C0 06              1448 	push	ar6
   05E2 C0 05              1449 	push	ar5
   05E4 12 0B 70           1450 	lcall	_write_send
   05E7 15 81              1451 	dec	sp
   05E9 15 81              1452 	dec	sp
   05EB D0 07              1453 	pop	ar7
                           1454 ;	../fb_app_in8.c:421: m = eeprom[0xD7+(objno*4)];	// Faktor Dauer	Lamelle	T2	
   05ED EF                 1455 	mov	a,r7
   05EE 2F                 1456 	add	a,r7
   05EF 25 E0              1457 	add	a,acc
   05F1 FE                 1458 	mov	r6,a
   05F2 24 D7              1459 	add	a,#0xD7
   05F4 90 1D 00           1460 	mov	dptr,#_eeprom
   05F7 93                 1461 	movc	a,@a+dptr
                           1462 ;	../fb_app_in8.c:422: if (m > 3){// wenn lamellenverstellzeit >3 dann zeit sichern und kurztele zwecks stop
   05F8 FE                 1463 	mov  r6,a
   05F9 24 FC              1464 	add	a,#0xff - 0x03
   05FB 50 6D              1465 	jnc	00108$
                           1466 ;	../fb_app_in8.c:426: timerbase[objno]= ((eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07);
   05FD EF                 1467 	mov	a,r7
   05FE 24 2D              1468 	add	a,#_timerbase
   0600 F9                 1469 	mov	r1,a
   0601 8F 04              1470 	mov	ar4,r7
   0603 7D 00              1471 	mov	r5,#0x00
   0605 0C                 1472 	inc	r4
   0606 BC 00 01           1473 	cjne	r4,#0x00,00181$
   0609 0D                 1474 	inc	r5
   060A                    1475 00181$:
   060A ED                 1476 	mov	a,r5
   060B A2 E7              1477 	mov	c,acc.7
   060D 13                 1478 	rrc	a
   060E CC                 1479 	xch	a,r4
   060F 13                 1480 	rrc	a
   0610 CC                 1481 	xch	a,r4
   0611 74 FA              1482 	mov	a,#0xFA
   0613 2C                 1483 	add	a,r4
   0614 90 1D 00           1484 	mov	dptr,#_eeprom
   0617 93                 1485 	movc	a,@a+dptr
   0618 FD                 1486 	mov	r5,a
   0619 74 01              1487 	mov	a,#0x01
   061B 5F                 1488 	anl	a,r7
   061C 64 01              1489 	xrl	a,#0x01
   061E 75 F0 04           1490 	mov	b,#0x04
   0621 A4                 1491 	mul	ab
   0622 F5 F0              1492 	mov	b,a
   0624 05 F0              1493 	inc	b
   0626 ED                 1494 	mov	a,r5
   0627 80 02              1495 	sjmp	00183$
   0629                    1496 00182$:
   0629 C3                 1497 	clr	c
   062A 13                 1498 	rrc	a
   062B                    1499 00183$:
   062B D5 F0 FB           1500 	djnz	b,00182$
   062E 54 07              1501 	anl	a,#0x07
   0630 F7                 1502 	mov	@r1,a
                           1503 ;	../fb_app_in8.c:427: jobj=read_obj_value((objno&0x07)+8);
   0631 74 07              1504 	mov	a,#0x07
   0633 5F                 1505 	anl	a,r7
   0634 24 08              1506 	add	a,#0x08
   0636 F5 82              1507 	mov	dpl,a
   0638 C0 07              1508 	push	ar7
   063A C0 06              1509 	push	ar6
   063C 12 0C E0           1510 	lcall	_read_obj_value
   063F AA 82              1511 	mov	r2,dpl
   0641 AB 83              1512 	mov	r3,dph
   0643 AC F0              1513 	mov	r4,b
   0645 FD                 1514 	mov	r5,a
   0646 D0 06              1515 	pop	ar6
   0648 D0 07              1516 	pop	ar7
   064A EA                 1517 	mov	a,r2
   064B 4B                 1518 	orl	a,r3
   064C 4C                 1519 	orl	a,r4
   064D 4D                 1520 	orl	a,r5
   064E 24 FF              1521 	add	a,#0xff
   0650 92 18              1522 	mov	b0,c
                           1523 ;	../fb_app_in8.c:428: timerstate[objno]= jobj|0x10; // 0x10,0x11 fuer ende T2 (lamellenvestellzeit)
   0652 EF                 1524 	mov	a,r7
   0653 24 3F              1525 	add	a,#_timerstate
   0655 F9                 1526 	mov	r1,a
   0656 A2 18              1527 	mov	c,b0
   0658 E4                 1528 	clr	a
   0659 33                 1529 	rlc	a
   065A FD                 1530 	mov	r5,a
   065B 43 05 10           1531 	orl	ar5,#0x10
   065E A7 05              1532 	mov	@r1,ar5
                           1533 ;	../fb_app_in8.c:429: timercnt[objno]= m + 0x80;
   0660 EF                 1534 	mov	a,r7
   0661 24 36              1535 	add	a,#_timercnt
   0663 F9                 1536 	mov	r1,a
   0664 74 80              1537 	mov	a,#0x80
   0666 2E                 1538 	add	a,r6
   0667 F7                 1539 	mov	@r1,a
   0668 80 06              1540 	sjmp	00111$
   066A                    1541 00108$:
                           1542 ;	../fb_app_in8.c:431: else timercnt[objno]=0;
   066A EF                 1543 	mov	a,r7
   066B 24 36              1544 	add	a,#_timercnt
   066D F8                 1545 	mov	r0,a
   066E 76 00              1546 	mov	@r0,#0x00
   0670                    1547 00111$:
                           1548 ;	../fb_app_in8.c:434: switch (timer_state & 0x50){		
   0670 74 50              1549 	mov	a,#0x50
   0672 55 2A              1550 	anl	a,_timer_state
   0674 FE                 1551 	mov	r6,a
   0675 BE 10 02           1552 	cjne	r6,#0x10,00184$
   0678 80 0E              1553 	sjmp	00112$
   067A                    1554 00184$:
   067A BE 40 02           1555 	cjne	r6,#0x40,00185$
   067D 80 12              1556 	sjmp	00113$
   067F                    1557 00185$:
   067F BE 50 03           1558 	cjne	r6,#0x50,00186$
   0682 02 06 FC           1559 	ljmp	00114$
   0685                    1560 00186$:
   0685 02 07 1B           1561 	ljmp	00129$
                           1562 ;	../fb_app_in8.c:435: case 0x10:
   0688                    1563 00112$:
                           1564 ;	../fb_app_in8.c:436: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
   0688 EF                 1565 	mov	a,r7
   0689 24 3F              1566 	add	a,#_timerstate
   068B F8                 1567 	mov	r0,a
   068C 76 00              1568 	mov	@r0,#0x00
                           1569 ;	../fb_app_in8.c:437: break;		
   068E 02 07 1B           1570 	ljmp	00129$
                           1571 ;	../fb_app_in8.c:439: case 0x40:
   0691                    1572 00113$:
                           1573 ;	../fb_app_in8.c:441: write_send( objno+8, timer_state );	// Langzeit Telegramm senden
   0691 AD 2A              1574 	mov	r5,_timer_state
   0693 7E 00              1575 	mov	r6,#0x00
   0695 74 08              1576 	mov	a,#0x08
   0697 2F                 1577 	add	a,r7
   0698 F5 82              1578 	mov	dpl,a
   069A C0 07              1579 	push	ar7
   069C C0 05              1580 	push	ar5
   069E C0 06              1581 	push	ar6
   06A0 12 0B 70           1582 	lcall	_write_send
   06A3 15 81              1583 	dec	sp
   06A5 15 81              1584 	dec	sp
   06A7 D0 07              1585 	pop	ar7
                           1586 ;	../fb_app_in8.c:442: timerstate[objno]|=0x10;
   06A9 EF                 1587 	mov	a,r7
   06AA 24 3F              1588 	add	a,#_timerstate
   06AC F9                 1589 	mov	r1,a
   06AD 87 06              1590 	mov	ar6,@r1
   06AF 74 10              1591 	mov	a,#0x10
   06B1 4E                 1592 	orl	a,r6
   06B2 F7                 1593 	mov	@r1,a
                           1594 ;	../fb_app_in8.c:443: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
   06B3 EF                 1595 	mov	a,r7
   06B4 24 36              1596 	add	a,#_timercnt
   06B6 F9                 1597 	mov	r1,a
   06B7 EF                 1598 	mov	a,r7
   06B8 2F                 1599 	add	a,r7
   06B9 25 E0              1600 	add	a,acc
   06BB 24 D8              1601 	add	a,#0xD8
   06BD 90 1D 00           1602 	mov	dptr,#_eeprom
   06C0 93                 1603 	movc	a,@a+dptr
   06C1 FE                 1604 	mov	r6,a
   06C2 74 80              1605 	mov	a,#0x80
   06C4 4E                 1606 	orl	a,r6
   06C5 F7                 1607 	mov	@r1,a
                           1608 ;	../fb_app_in8.c:444: timerbase[objno]=(eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x0F;	//Basis Tele wdg
   06C6 EF                 1609 	mov	a,r7
   06C7 24 2D              1610 	add	a,#_timerbase
   06C9 F9                 1611 	mov	r1,a
   06CA 8F 05              1612 	mov	ar5,r7
   06CC 7E 00              1613 	mov	r6,#0x00
   06CE 0D                 1614 	inc	r5
   06CF BD 00 01           1615 	cjne	r5,#0x00,00187$
   06D2 0E                 1616 	inc	r6
   06D3                    1617 00187$:
   06D3 EE                 1618 	mov	a,r6
   06D4 A2 E7              1619 	mov	c,acc.7
   06D6 13                 1620 	rrc	a
   06D7 CD                 1621 	xch	a,r5
   06D8 13                 1622 	rrc	a
   06D9 CD                 1623 	xch	a,r5
   06DA 74 FA              1624 	mov	a,#0xFA
   06DC 2D                 1625 	add	a,r5
   06DD 90 1D 00           1626 	mov	dptr,#_eeprom
   06E0 93                 1627 	movc	a,@a+dptr
   06E1 FE                 1628 	mov	r6,a
   06E2 74 01              1629 	mov	a,#0x01
   06E4 5F                 1630 	anl	a,r7
   06E5 64 01              1631 	xrl	a,#0x01
   06E7 75 F0 04           1632 	mov	b,#0x04
   06EA A4                 1633 	mul	ab
   06EB F5 F0              1634 	mov	b,a
   06ED 05 F0              1635 	inc	b
   06EF EE                 1636 	mov	a,r6
   06F0 80 02              1637 	sjmp	00189$
   06F2                    1638 00188$:
   06F2 C3                 1639 	clr	c
   06F3 13                 1640 	rrc	a
   06F4                    1641 00189$:
   06F4 D5 F0 FB           1642 	djnz	b,00188$
   06F7 54 0F              1643 	anl	a,#0x0F
   06F9 F7                 1644 	mov	@r1,a
                           1645 ;	../fb_app_in8.c:445: break;
                           1646 ;	../fb_app_in8.c:446: case 0x50: // 0x50 Dimmer telegramm wiederholung
   06FA 80 1F              1647 	sjmp	00129$
   06FC                    1648 00114$:
                           1649 ;	../fb_app_in8.c:447: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
   06FC EF                 1650 	mov	a,r7
   06FD 24 36              1651 	add	a,#_timercnt
   06FF F9                 1652 	mov	r1,a
   0700 EF                 1653 	mov	a,r7
   0701 2F                 1654 	add	a,r7
   0702 25 E0              1655 	add	a,acc
   0704 24 D8              1656 	add	a,#0xD8
   0706 90 1D 00           1657 	mov	dptr,#_eeprom
   0709 93                 1658 	movc	a,@a+dptr
   070A FE                 1659 	mov	r6,a
   070B 74 80              1660 	mov	a,#0x80
   070D 4E                 1661 	orl	a,r6
   070E F7                 1662 	mov	@r1,a
                           1663 ;	../fb_app_in8.c:448: send_obj_value(objno+8);
   070F 74 08              1664 	mov	a,#0x08
   0711 2F                 1665 	add	a,r7
   0712 F5 82              1666 	mov	dpl,a
   0714 C0 07              1667 	push	ar7
   0716 12 18 02           1668 	lcall	_send_obj_value
   0719 D0 07              1669 	pop	ar7
                           1670 ;	../fb_app_in8.c:452: }
   071B                    1671 00129$:
                           1672 ;	../fb_app_in8.c:398: for(objno=0;objno<8;objno++) {
   071B 0F                 1673 	inc	r7
   071C 02 05 B0           1674 	ljmp	00127$
                           1675 ;------------------------------------------------------------
                           1676 ;Allocation info for local variables in function 'schalten'
                           1677 ;------------------------------------------------------------
                           1678 ;pinno                     Allocated to registers r7 
                           1679 ;risefall                  Allocated to registers b0 
                           1680 ;func                      Allocated to registers r6 
                           1681 ;sendval                   Allocated to registers r2 
                           1682 ;------------------------------------------------------------
                           1683 ;	../fb_app_in8.c:466: void schalten(__bit risefall, unsigned char pinno)	// Schaltbefehl senden
                           1684 ;	-----------------------------------------
                           1685 ;	 function schalten
                           1686 ;	-----------------------------------------
   071F                    1687 _schalten:
   071F AF 82              1688 	mov	r7,dpl
                           1689 ;	../fb_app_in8.c:470: func=eeprom[0xD7+(pinno & 0x07)*4]; //0xD7
   0721 74 07              1690 	mov	a,#0x07
   0723 5F                 1691 	anl	a,r7
   0724 25 E0              1692 	add	a,acc
   0726 25 E0              1693 	add	a,acc
   0728 24 D7              1694 	add	a,#0xD7
   072A 90 1D 00           1695 	mov	dptr,#_eeprom
   072D 93                 1696 	movc	a,@a+dptr
   072E FE                 1697 	mov	r6,a
                           1698 ;	../fb_app_in8.c:471: if (pinno>=8)func=func>>4;			// wenn 2. Schaltobjekt dann obere 4 bit
   072F BF 08 00           1699 	cjne	r7,#0x08,00120$
   0732                    1700 00120$:
   0732 40 05              1701 	jc	00102$
   0734 EE                 1702 	mov	a,r6
   0735 C4                 1703 	swap	a
   0736 54 0F              1704 	anl	a,#0x0F
   0738 FE                 1705 	mov	r6,a
   0739                    1706 00102$:
                           1707 ;	../fb_app_in8.c:472: if (risefall) func=(func>>2);		// Funktion bei steigender Flanke obere 2 bit
   0739 30 18 06           1708 	jnb	b0,00104$
   073C EE                 1709 	mov	a,r6
   073D 03                 1710 	rr	a
   073E 03                 1711 	rr	a
   073F 54 3F              1712 	anl	a,#0x3F
   0741 FE                 1713 	mov	r6,a
   0742                    1714 00104$:
                           1715 ;	../fb_app_in8.c:473: func=func&0x03;					// Funktion maskieren
   0742 53 06 03           1716 	anl	ar6,#0x03
                           1717 ;	../fb_app_in8.c:474: if (func!=0)
   0745 EE                 1718 	mov	a,r6
   0746 60 2B              1719 	jz	00110$
                           1720 ;	../fb_app_in8.c:476: if (func==0x03) sendval=read_obj_value(pinno) ^0x01;  //UM
   0748 BE 03 15           1721 	cjne	r6,#0x03,00106$
   074B 8F 82              1722 	mov	dpl,r7
   074D C0 07              1723 	push	ar7
   074F 12 0C E0           1724 	lcall	_read_obj_value
   0752 AA 82              1725 	mov	r2,dpl
   0754 AB 83              1726 	mov	r3,dph
   0756 AC F0              1727 	mov	r4,b
   0758 FD                 1728 	mov	r5,a
   0759 D0 07              1729 	pop	ar7
   075B 63 02 01           1730 	xrl	ar2,#0x01
   075E 80 04              1731 	sjmp	00107$
   0760                    1732 00106$:
                           1733 ;	../fb_app_in8.c:477: else sendval = func & 0x01;	// EIN   AUS
   0760 74 01              1734 	mov	a,#0x01
   0762 5E                 1735 	anl	a,r6
   0763 FA                 1736 	mov	r2,a
   0764                    1737 00107$:
                           1738 ;	../fb_app_in8.c:478: write_send(pinno,sendval);
   0764 7E 00              1739 	mov	r6,#0x00
   0766 C0 02              1740 	push	ar2
   0768 C0 06              1741 	push	ar6
   076A 8F 82              1742 	mov	dpl,r7
   076C 12 0B 70           1743 	lcall	_write_send
   076F 15 81              1744 	dec	sp
   0771 15 81              1745 	dec	sp
   0773                    1746 00110$:
   0773 22                 1747 	ret
                           1748 ;------------------------------------------------------------
                           1749 ;Allocation info for local variables in function 'debounce'
                           1750 ;------------------------------------------------------------
                           1751 ;pinno                     Allocated to registers r7 
                           1752 ;debtime                   Allocated to registers r6 
                           1753 ;n                         Allocated to registers r5 
                           1754 ;w                         Allocated to registers r4 
                           1755 ;------------------------------------------------------------
                           1756 ;	../fb_app_in8.c:487: unsigned char debounce(unsigned char pinno)	// Entprellzeit abwarten und prüfen !!
                           1757 ;	-----------------------------------------
                           1758 ;	 function debounce
                           1759 ;	-----------------------------------------
   0774                    1760 _debounce:
   0774 AF 82              1761 	mov	r7,dpl
                           1762 ;	../fb_app_in8.c:490: debtime=eeprom[DEBTIME];			// Entprellzeit in 0,5ms Schritten
   0776 90 1D D2           1763 	mov	dptr,#(_eeprom + 0x00d2)
   0779 E4                 1764 	clr	a
   077A 93                 1765 	movc	a,@a+dptr
                           1766 ;	../fb_app_in8.c:491: if (debtime>0) {
   077B FE                 1767 	mov	r6,a
   077C 60 12              1768 	jz	00102$
                           1769 ;	../fb_app_in8.c:492: for(n=0;n<debtime;n++){
   077E 7D 00              1770 	mov	r5,#0x00
   0780                    1771 00107$:
   0780 C3                 1772 	clr	c
   0781 ED                 1773 	mov	a,r5
   0782 9E                 1774 	subb	a,r6
   0783 50 0B              1775 	jnc	00102$
                           1776 ;	../fb_app_in8.c:493: for(w=112;w>0;w--); 
   0785 7C 70              1777 	mov	r4,#0x70
   0787                    1778 00103$:
   0787 EC                 1779 	mov	a,r4
   0788 60 03              1780 	jz	00109$
   078A 1C                 1781 	dec	r4
   078B 80 FA              1782 	sjmp	00103$
   078D                    1783 00109$:
                           1784 ;	../fb_app_in8.c:492: for(n=0;n<debtime;n++){
   078D 0D                 1785 	inc	r5
   078E 80 F0              1786 	sjmp	00107$
   0790                    1787 00102$:
                           1788 ;	../fb_app_in8.c:500: return ((~(P0^p0h))& bitmask_1[pinno]);//ret=1;
   0790 E5 25              1789 	mov	a,_p0h
   0792 65 80              1790 	xrl	a,_P0
   0794 F4                 1791 	cpl	a
   0795 FE                 1792 	mov	r6,a
   0796 EF                 1793 	mov	a,r7
   0797 90 1B 70           1794 	mov	dptr,#_bitmask_1
   079A 93                 1795 	movc	a,@a+dptr
   079B 5E                 1796 	anl	a,r6
   079C F5 82              1797 	mov	dpl,a
   079E 22                 1798 	ret
                           1799 ;------------------------------------------------------------
                           1800 ;Allocation info for local variables in function 'write_value_req'
                           1801 ;------------------------------------------------------------
                           1802 ;objno                     Allocated to stack - _bp +1
                           1803 ;objflags                  Allocated to registers r7 
                           1804 ;gapos                     Allocated to stack - _bp +2
                           1805 ;atp                       Allocated to registers r6 
                           1806 ;assno                     Allocated to stack - _bp +3
                           1807 ;n                         Allocated to stack - _bp +4
                           1808 ;gaposh                    Allocated to registers r4 
                           1809 ;para_value                Allocated to registers r7 
                           1810 ;tmp                       Allocated to stack - _bp +5
                           1811 ;objtype                   Allocated to registers 
                           1812 ;sloc0                     Allocated to stack - _bp +6
                           1813 ;sloc1                     Allocated to stack - _bp +7
                           1814 ;------------------------------------------------------------
                           1815 ;	../fb_app_in8.c:514: void write_value_req(void)		// Objekt-Wert setzen gemäß empfangenem EIS Telegramms
                           1816 ;	-----------------------------------------
                           1817 ;	 function write_value_req
                           1818 ;	-----------------------------------------
   079F                    1819 _write_value_req:
   079F C0 7B              1820 	push	_bp
   07A1 E5 81              1821 	mov	a,sp
   07A3 F5 7B              1822 	mov	_bp,a
   07A5 24 0A              1823 	add	a,#0x0A
   07A7 F5 81              1824 	mov	sp,a
                           1825 ;	../fb_app_in8.c:520: gapos=gapos_in_gat(telegramm[3],telegramm[4]);
   07A9 85 56 82           1826 	mov	dpl,(_telegramm + 0x0003)
   07AC C0 57              1827 	push	(_telegramm + 0x0004)
   07AE 12 15 A7           1828 	lcall	_gapos_in_gat
   07B1 AF 82              1829 	mov	r7,dpl
   07B3 15 81              1830 	dec	sp
   07B5 A8 7B              1831 	mov	r0,_bp
   07B7 08                 1832 	inc	r0
   07B8 08                 1833 	inc	r0
   07B9 A6 07              1834 	mov	@r0,ar7
                           1835 ;	../fb_app_in8.c:521: if (gapos!=0xFF)	
   07BB A8 7B              1836 	mov	r0,_bp
   07BD 08                 1837 	inc	r0
   07BE 08                 1838 	inc	r0
   07BF B6 FF 03           1839 	cjne	@r0,#0xFF,00142$
   07C2 02 09 7F           1840 	ljmp	00121$
   07C5                    1841 00142$:
                           1842 ;	../fb_app_in8.c:523: atp=eeprom[ASSOCTABPTR];		// Association Table Pointer
   07C5 90 1D 11           1843 	mov	dptr,#(_eeprom + 0x0011)
   07C8 E4                 1844 	clr	a
   07C9 93                 1845 	movc	a,@a+dptr
                           1846 ;	../fb_app_in8.c:524: assno=eeprom[atp];				// Erster Eintrag = Anzahl Einträge
   07CA FE                 1847 	mov	r6,a
   07CB F5 82              1848 	mov	dpl,a
   07CD 75 83 1D           1849 	mov	dph,#(_eeprom >> 8)
   07D0 E4                 1850 	clr	a
   07D1 93                 1851 	movc	a,@a+dptr
   07D2 FD                 1852 	mov	r5,a
   07D3 E5 7B              1853 	mov	a,_bp
   07D5 24 03              1854 	add	a,#0x03
   07D7 F8                 1855 	mov	r0,a
   07D8 A6 05              1856 	mov	@r0,ar5
                           1857 ;	../fb_app_in8.c:526: for(n=0;n<assno;n++) {				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   07DA 74 02              1858 	mov	a,#0x02
   07DC 2E                 1859 	add	a,r6
   07DD FC                 1860 	mov	r4,a
   07DE E5 7B              1861 	mov	a,_bp
   07E0 24 06              1862 	add	a,#0x06
   07E2 F8                 1863 	mov	r0,a
   07E3 EE                 1864 	mov	a,r6
   07E4 04                 1865 	inc	a
   07E5 F6                 1866 	mov	@r0,a
   07E6 E5 7B              1867 	mov	a,_bp
   07E8 24 04              1868 	add	a,#0x04
   07EA F8                 1869 	mov	r0,a
   07EB 76 00              1870 	mov	@r0,#0x00
   07ED                    1871 00117$:
   07ED E5 7B              1872 	mov	a,_bp
   07EF 24 04              1873 	add	a,#0x04
   07F1 F8                 1874 	mov	r0,a
   07F2 E5 7B              1875 	mov	a,_bp
   07F4 24 03              1876 	add	a,#0x03
   07F6 F9                 1877 	mov	r1,a
   07F7 C3                 1878 	clr	c
   07F8 E6                 1879 	mov	a,@r0
   07F9 97                 1880 	subb	a,@r1
   07FA 40 03              1881 	jc	00143$
   07FC 02 09 7F           1882 	ljmp	00121$
   07FF                    1883 00143$:
                           1884 ;	../fb_app_in8.c:527: gaposh=eeprom[atp+1+(n*2)];
   07FF C0 04              1885 	push	ar4
   0801 E5 7B              1886 	mov	a,_bp
   0803 24 04              1887 	add	a,#0x04
   0805 F8                 1888 	mov	r0,a
   0806 E6                 1889 	mov	a,@r0
   0807 25 E0              1890 	add	a,acc
   0809 FA                 1891 	mov	r2,a
   080A E5 7B              1892 	mov	a,_bp
   080C 24 06              1893 	add	a,#0x06
   080E F8                 1894 	mov	r0,a
   080F EA                 1895 	mov	a,r2
   0810 26                 1896 	add	a,@r0
   0811 90 1D 00           1897 	mov	dptr,#_eeprom
   0814 93                 1898 	movc	a,@a+dptr
   0815 FC                 1899 	mov	r4,a
                           1900 ;	../fb_app_in8.c:528: if(gapos==gaposh) {					// Wenn Positionsnummer übereinstimmt
   0816 A8 7B              1901 	mov	r0,_bp
   0818 08                 1902 	inc	r0
   0819 08                 1903 	inc	r0
   081A E6                 1904 	mov	a,@r0
   081B B5 04 02           1905 	cjne	a,ar4,00144$
   081E 80 05              1906 	sjmp	00145$
   0820                    1907 00144$:
   0820 D0 04              1908 	pop	ar4
   0822 02 09 76           1909 	ljmp	00119$
   0825                    1910 00145$:
   0825 D0 04              1911 	pop	ar4
                           1912 ;	../fb_app_in8.c:529: objno=eeprom[atp+2+(n*2)];			// Objektnummer
   0827 EA                 1913 	mov	a,r2
   0828 2C                 1914 	add	a,r4
   0829 90 1D 00           1915 	mov	dptr,#_eeprom
   082C 93                 1916 	movc	a,@a+dptr
   082D FA                 1917 	mov	r2,a
   082E A8 7B              1918 	mov	r0,_bp
   0830 08                 1919 	inc	r0
   0831 A6 02              1920 	mov	@r0,ar2
                           1921 ;	../fb_app_in8.c:530: objflags=read_objflags(objno);		// Objekt Flags lesen
   0833 A8 7B              1922 	mov	r0,_bp
   0835 08                 1923 	inc	r0
   0836 86 82              1924 	mov	dpl,@r0
   0838 C0 04              1925 	push	ar4
   083A 12 1A 2E           1926 	lcall	_read_objflags
   083D AE 82              1927 	mov	r6,dpl
   083F D0 04              1928 	pop	ar4
   0841 8E 07              1929 	mov	ar7,r6
                           1930 ;	../fb_app_in8.c:532: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
   0843 90 1D 12           1931 	mov	dptr,#(_eeprom + 0x0012)
   0846 E4                 1932 	clr	a
   0847 93                 1933 	movc	a,@a+dptr
   0848 FE                 1934 	mov	r6,a
   0849 A8 7B              1935 	mov	r0,_bp
   084B 08                 1936 	inc	r0
   084C E6                 1937 	mov	a,@r0
   084D 75 F0 03           1938 	mov	b,#0x03
   0850 A4                 1939 	mul	ab
   0851 2E                 1940 	add	a,r6
   0852 24 04              1941 	add	a,#0x04
   0854 90 1D 00           1942 	mov	dptr,#_eeprom
   0857 93                 1943 	movc	a,@a+dptr
                           1944 ;	../fb_app_in8.c:534: if((objflags&0x14)==0x14) {			// Kommunikation zulässig (Bit 2 = communication enable) + Schreiben zulässig (Bit 4 = write enable)
   0858 74 14              1945 	mov	a,#0x14
   085A 5F                 1946 	anl	a,r7
   085B FE                 1947 	mov	r6,a
   085C BE 14 02           1948 	cjne	r6,#0x14,00146$
   085F 80 03              1949 	sjmp	00147$
   0861                    1950 00146$:
   0861 02 09 76           1951 	ljmp	00119$
   0864                    1952 00147$:
                           1953 ;	../fb_app_in8.c:535: if (objno<16) {					// Status der Eingangsobjekte 0-15
   0864 A8 7B              1954 	mov	r0,_bp
   0866 08                 1955 	inc	r0
   0867 B6 10 00           1956 	cjne	@r0,#0x10,00148$
   086A                    1957 00148$:
   086A 50 2C              1958 	jnc	00109$
                           1959 ;	../fb_app_in8.c:543: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
   086C C0 04              1960 	push	ar4
   086E 74 3F              1961 	mov	a,#0x3F
   0870 55 5A              1962 	anl	a,(_telegramm + 0x0007)
   0872 FB                 1963 	mov	r3,a
   0873 7C 00              1964 	mov	r4,#0x00
   0875 7D 00              1965 	mov	r5,#0x00
   0877 7F 00              1966 	mov	r7,#0x00
   0879 C0 04              1967 	push	ar4
   087B C0 03              1968 	push	ar3
   087D C0 04              1969 	push	ar4
   087F C0 05              1970 	push	ar5
   0881 C0 07              1971 	push	ar7
   0883 A8 7B              1972 	mov	r0,_bp
   0885 08                 1973 	inc	r0
   0886 86 82              1974 	mov	dpl,@r0
   0888 12 0D B1           1975 	lcall	_write_obj_value
   088B E5 81              1976 	mov	a,sp
   088D 24 FC              1977 	add	a,#0xfc
   088F F5 81              1978 	mov	sp,a
   0891 D0 04              1979 	pop	ar4
   0893 D0 04              1980 	pop	ar4
   0895 02 09 76           1981 	ljmp	00119$
   0898                    1982 00109$:
                           1983 ;	../fb_app_in8.c:547: tmp=telegramm[7]& 0x01;
   0898 C0 04              1984 	push	ar4
   089A E5 7B              1985 	mov	a,_bp
   089C 24 05              1986 	add	a,#0x05
   089E F8                 1987 	mov	r0,a
   089F 74 01              1988 	mov	a,#0x01
   08A1 55 5A              1989 	anl	a,(_telegramm + 0x0007)
   08A3 F6                 1990 	mov	@r0,a
                           1991 ;	../fb_app_in8.c:548: if (read_obj_value(objno)^tmp) {// nur wenn sich Objekt geändert hat
   08A4 A8 7B              1992 	mov	r0,_bp
   08A6 08                 1993 	inc	r0
   08A7 86 82              1994 	mov	dpl,@r0
   08A9 C0 04              1995 	push	ar4
   08AB 12 0C E0           1996 	lcall	_read_obj_value
   08AE C8                 1997 	xch	a,r0
   08AF E5 7B              1998 	mov	a,_bp
   08B1 24 07              1999 	add	a,#0x07
   08B3 C8                 2000 	xch	a,r0
   08B4 A6 82              2001 	mov	@r0,dpl
   08B6 08                 2002 	inc	r0
   08B7 A6 83              2003 	mov	@r0,dph
   08B9 08                 2004 	inc	r0
   08BA A6 F0              2005 	mov	@r0,b
   08BC 08                 2006 	inc	r0
   08BD F6                 2007 	mov	@r0,a
   08BE D0 04              2008 	pop	ar4
   08C0 E5 7B              2009 	mov	a,_bp
   08C2 24 05              2010 	add	a,#0x05
   08C4 F8                 2011 	mov	r0,a
   08C5 86 02              2012 	mov	ar2,@r0
   08C7 E4                 2013 	clr	a
   08C8 FD                 2014 	mov	r5,a
   08C9 FE                 2015 	mov	r6,a
   08CA FF                 2016 	mov	r7,a
   08CB E5 7B              2017 	mov	a,_bp
   08CD 24 07              2018 	add	a,#0x07
   08CF F8                 2019 	mov	r0,a
   08D0 E6                 2020 	mov	a,@r0
   08D1 62 02              2021 	xrl	ar2,a
   08D3 08                 2022 	inc	r0
   08D4 E6                 2023 	mov	a,@r0
   08D5 62 05              2024 	xrl	ar5,a
   08D7 08                 2025 	inc	r0
   08D8 E6                 2026 	mov	a,@r0
   08D9 62 06              2027 	xrl	ar6,a
   08DB 08                 2028 	inc	r0
   08DC E6                 2029 	mov	a,@r0
   08DD 62 07              2030 	xrl	ar7,a
   08DF D0 04              2031 	pop	ar4
   08E1 EA                 2032 	mov	a,r2
   08E2 4D                 2033 	orl	a,r5
   08E3 4E                 2034 	orl	a,r6
   08E4 4F                 2035 	orl	a,r7
   08E5 70 03              2036 	jnz	00150$
   08E7 02 09 76           2037 	ljmp	00119$
   08EA                    2038 00150$:
                           2039 ;	../fb_app_in8.c:549: write_obj_value(objno,tmp);// objekt sichern
   08EA E5 7B              2040 	mov	a,_bp
   08EC 24 05              2041 	add	a,#0x05
   08EE F8                 2042 	mov	r0,a
   08EF 86 03              2043 	mov	ar3,@r0
   08F1 7D 00              2044 	mov	r5,#0x00
   08F3 7E 00              2045 	mov	r6,#0x00
   08F5 7F 00              2046 	mov	r7,#0x00
   08F7 C0 04              2047 	push	ar4
   08F9 C0 03              2048 	push	ar3
   08FB C0 05              2049 	push	ar5
   08FD C0 06              2050 	push	ar6
   08FF C0 07              2051 	push	ar7
   0901 A8 7B              2052 	mov	r0,_bp
   0903 08                 2053 	inc	r0
   0904 86 82              2054 	mov	dpl,@r0
   0906 12 0D B1           2055 	lcall	_write_obj_value
   0909 E5 81              2056 	mov	a,sp
   090B 24 FC              2057 	add	a,#0xfc
   090D F5 81              2058 	mov	sp,a
   090F D0 04              2059 	pop	ar4
                           2060 ;	../fb_app_in8.c:550: para_value= (eeprom[0xD5+((objno & 0x07)*4)]&0x03);
   0911 A8 7B              2061 	mov	r0,_bp
   0913 08                 2062 	inc	r0
   0914 74 07              2063 	mov	a,#0x07
   0916 56                 2064 	anl	a,@r0
   0917 25 E0              2065 	add	a,acc
   0919 25 E0              2066 	add	a,acc
   091B 24 D5              2067 	add	a,#0xD5
   091D 90 1D 00           2068 	mov	dptr,#_eeprom
   0920 93                 2069 	movc	a,@a+dptr
   0921 FF                 2070 	mov	r7,a
   0922 53 07 03           2071 	anl	ar7,#0x03
                           2072 ;	../fb_app_in8.c:551: tmp = tmp ^ ((para_value) & 0x01);//bei 'nicht invertieren' invertieren,weil wir invertiert abfragen :-(
   0925 74 01              2073 	mov	a,#0x01
   0927 5F                 2074 	anl	a,r7
   0928 FE                 2075 	mov	r6,a
   0929 E5 7B              2076 	mov	a,_bp
   092B 24 05              2077 	add	a,#0x05
   092D F8                 2078 	mov	r0,a
   092E EE                 2079 	mov	a,r6
   092F 66                 2080 	xrl	a,@r0
   0930 F6                 2081 	mov	@r0,a
                           2082 ;	../fb_app_in8.c:552: if (para_value){			// wenn eine sperre aktiviert parametriert ist
   0931 EF                 2083 	mov	a,r7
   0932 60 42              2084 	jz	00119$
                           2085 ;	../fb_app_in8.c:553: if(tmp){		//nicht gesperrt(invertierte Abfrage)
   0934 E5 7B              2086 	mov	a,_bp
   0936 24 05              2087 	add	a,#0x05
   0938 F8                 2088 	mov	r0,a
   0939 E6                 2089 	mov	a,@r0
   093A 60 13              2090 	jz	00102$
                           2091 ;	../fb_app_in8.c:554: blocked=blocked & (0xff-(bitmask_1[objno&0x07]));
   093C A8 7B              2092 	mov	r0,_bp
   093E 08                 2093 	inc	r0
   093F 74 07              2094 	mov	a,#0x07
   0941 56                 2095 	anl	a,@r0
   0942 90 1B 70           2096 	mov	dptr,#_bitmask_1
   0945 93                 2097 	movc	a,@a+dptr
   0946 FF                 2098 	mov	r7,a
   0947 74 FF              2099 	mov	a,#0xFF
   0949 C3                 2100 	clr	c
   094A 9F                 2101 	subb	a,r7
   094B 52 28              2102 	anl	_blocked,a
   094D 80 0D              2103 	sjmp	00103$
   094F                    2104 00102$:
                           2105 ;	../fb_app_in8.c:557: blocked=blocked |bitmask_1[objno&0x07];
   094F A8 7B              2106 	mov	r0,_bp
   0951 08                 2107 	inc	r0
   0952 74 07              2108 	mov	a,#0x07
   0954 56                 2109 	anl	a,@r0
   0955 90 1B 70           2110 	mov	dptr,#_bitmask_1
   0958 93                 2111 	movc	a,@a+dptr
   0959 FF                 2112 	mov	r7,a
   095A 42 28              2113 	orl	_blocked,a
   095C                    2114 00103$:
                           2115 ;	../fb_app_in8.c:559: sperren(objno&0x07,tmp);//temp=1 bedeutet Freigabe
   095C A8 7B              2116 	mov	r0,_bp
   095E 08                 2117 	inc	r0
   095F 74 07              2118 	mov	a,#0x07
   0961 56                 2119 	anl	a,@r0
   0962 FF                 2120 	mov	r7,a
   0963 C0 04              2121 	push	ar4
   0965 E5 7B              2122 	mov	a,_bp
   0967 24 05              2123 	add	a,#0x05
   0969 F8                 2124 	mov	r0,a
   096A E6                 2125 	mov	a,@r0
   096B C0 E0              2126 	push	acc
   096D 8F 82              2127 	mov	dpl,r7
   096F 12 09 85           2128 	lcall	_sperren
   0972 15 81              2129 	dec	sp
   0974 D0 04              2130 	pop	ar4
   0976                    2131 00119$:
                           2132 ;	../fb_app_in8.c:526: for(n=0;n<assno;n++) {				// Schleife über alle Einträge in der Ass-Table, denn es könnten mehrere Objekte (Pins) der gleichen Gruppenadresse zugeordnet sein
   0976 E5 7B              2133 	mov	a,_bp
   0978 24 04              2134 	add	a,#0x04
   097A F8                 2135 	mov	r0,a
   097B 06                 2136 	inc	@r0
   097C 02 07 ED           2137 	ljmp	00117$
   097F                    2138 00121$:
   097F 85 7B 81           2139 	mov	sp,_bp
   0982 D0 7B              2140 	pop	_bp
   0984 22                 2141 	ret
                           2142 ;------------------------------------------------------------
                           2143 ;Allocation info for local variables in function 'sperren'
                           2144 ;------------------------------------------------------------
                           2145 ;freigabe                  Allocated to stack - _bp -3
                           2146 ;obj                       Allocated to registers r7 
                           2147 ;objval                    Allocated to registers b0 
                           2148 ;sendobj                   Allocated to registers r6 
                           2149 ;------------------------------------------------------------
                           2150 ;	../fb_app_in8.c:570: void sperren (unsigned char obj,unsigned char freigabe)
                           2151 ;	-----------------------------------------
                           2152 ;	 function sperren
                           2153 ;	-----------------------------------------
   0985                    2154 _sperren:
   0985 C0 7B              2155 	push	_bp
   0987 85 81 7B           2156 	mov	_bp,sp
   098A AF 82              2157 	mov	r7,dpl
                           2158 ;	../fb_app_in8.c:572: __bit objval=0;
   098C C2 18              2159 	clr	b0
                           2160 ;	../fb_app_in8.c:575: unsigned char sendobj=255;//obj=obj & 0x07;
   098E 7E FF              2161 	mov	r6,#0xFF
                           2162 ;	../fb_app_in8.c:576: switch ((eeprom[0xCE+(obj>>1)] >> ((obj & 0x01)*4)) & 0x0F){// Funtion des zugehörigen Eingangs
   0990 EF                 2163 	mov	a,r7
   0991 C3                 2164 	clr	c
   0992 13                 2165 	rrc	a
   0993 24 CE              2166 	add	a,#0xCE
   0995 90 1D 00           2167 	mov	dptr,#_eeprom
   0998 93                 2168 	movc	a,@a+dptr
   0999 FD                 2169 	mov	r5,a
   099A 74 01              2170 	mov	a,#0x01
   099C 5F                 2171 	anl	a,r7
   099D 75 F0 04           2172 	mov	b,#0x04
   09A0 A4                 2173 	mul	ab
   09A1 F5 F0              2174 	mov	b,a
   09A3 05 F0              2175 	inc	b
   09A5 ED                 2176 	mov	a,r5
   09A6 80 02              2177 	sjmp	00171$
   09A8                    2178 00170$:
   09A8 C3                 2179 	clr	c
   09A9 13                 2180 	rrc	a
   09AA                    2181 00171$:
   09AA D5 F0 FB           2182 	djnz	b,00170$
   09AD 54 0F              2183 	anl	a,#0x0F
   09AF FD                 2184 	mov	r5,a
   09B0 BD 01 02           2185 	cjne	r5,#0x01,00172$
   09B3 80 0F              2186 	sjmp	00101$
   09B5                    2187 00172$:
   09B5 BD 02 03           2188 	cjne	r5,#0x02,00173$
   09B8 02 0A 47           2189 	ljmp	00110$
   09BB                    2190 00173$:
   09BB BD 03 03           2191 	cjne	r5,#0x03,00174$
   09BE 02 0A AE           2192 	ljmp	00122$
   09C1                    2193 00174$:
   09C1 02 0B 11           2194 	ljmp	00128$
                           2195 ;	../fb_app_in8.c:577: case 0x01:// funktion Schalten sperren
   09C4                    2196 00101$:
                           2197 ;	../fb_app_in8.c:578: sendobj=obj;
                           2198 ;	../fb_app_in8.c:579: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
   09C4 EF                 2199 	mov	a,r7
   09C5 FE                 2200 	mov	r6,a
   09C6 25 E0              2201 	add	a,acc
   09C8 25 E0              2202 	add	a,acc
   09CA 24 D5              2203 	add	a,#0xD5
   09CC 90 1D 00           2204 	mov	dptr,#_eeprom
   09CF 93                 2205 	movc	a,@a+dptr
   09D0 FD                 2206 	mov	r5,a
   09D1 E5 7B              2207 	mov	a,_bp
   09D3 24 FD              2208 	add	a,#0xfd
   09D5 F8                 2209 	mov	r0,a
   09D6 74 01              2210 	mov	a,#0x01
   09D8 66                 2211 	xrl	a,@r0
   09D9 75 F0 02           2212 	mov	b,#0x02
   09DC A4                 2213 	mul	ab
   09DD F5 F0              2214 	mov	b,a
   09DF 05 F0              2215 	inc	b
   09E1 ED                 2216 	mov	a,r5
   09E2 80 02              2217 	sjmp	00176$
   09E4                    2218 00175$:
   09E4 C3                 2219 	clr	c
   09E5 13                 2220 	rrc	a
   09E6                    2221 00176$:
   09E6 D5 F0 FB           2222 	djnz	b,00175$
   09E9 54 0C              2223 	anl	a,#0x0C
   09EB FD                 2224 	mov	r5,a
   09EC BD 04 02           2225 	cjne	r5,#0x04,00177$
   09EF 80 0A              2226 	sjmp	00102$
   09F1                    2227 00177$:
   09F1 BD 08 02           2228 	cjne	r5,#0x08,00178$
   09F4 80 0A              2229 	sjmp	00103$
   09F6                    2230 00178$:
                           2231 ;	../fb_app_in8.c:581: case 0x04:		//EIN
   09F6 BD 0C 49           2232 	cjne	r5,#0x0C,00108$
   09F9 80 0A              2233 	sjmp	00104$
   09FB                    2234 00102$:
                           2235 ;	../fb_app_in8.c:582: objval=1;
   09FB D2 18              2236 	setb	b0
                           2237 ;	../fb_app_in8.c:583: break;
   09FD 02 0B 11           2238 	ljmp	00128$
                           2239 ;	../fb_app_in8.c:584: case 0x08:		//AUS
   0A00                    2240 00103$:
                           2241 ;	../fb_app_in8.c:585: objval=0;
   0A00 C2 18              2242 	clr	b0
                           2243 ;	../fb_app_in8.c:586: break;
   0A02 02 0B 11           2244 	ljmp	00128$
                           2245 ;	../fb_app_in8.c:587: case 0x0C:	//UM
   0A05                    2246 00104$:
                           2247 ;	../fb_app_in8.c:588: if (freigabe){ //ende sperre-> aktueller Zustand
   0A05 E5 7B              2248 	mov	a,_bp
   0A07 24 FD              2249 	add	a,#0xfd
   0A09 F8                 2250 	mov	r0,a
   0A0A E6                 2251 	mov	a,@r0
   0A0B 60 17              2252 	jz	00106$
                           2253 ;	../fb_app_in8.c:589: objval= (portbuffer>>obj)& 0x01;
   0A0D 8F F0              2254 	mov	b,r7
   0A0F 05 F0              2255 	inc	b
   0A11 E5 24              2256 	mov	a,_portbuffer
   0A13 80 02              2257 	sjmp	00182$
   0A15                    2258 00181$:
   0A15 C3                 2259 	clr	c
   0A16 13                 2260 	rrc	a
   0A17                    2261 00182$:
   0A17 D5 F0 FB           2262 	djnz	b,00181$
   0A1A 54 01              2263 	anl	a,#0x01
   0A1C FD                 2264 	mov	r5,a
   0A1D 24 FF              2265 	add	a,#0xff
   0A1F 92 18              2266 	mov	b0,c
   0A21 02 0B 11           2267 	ljmp	00128$
   0A24                    2268 00106$:
                           2269 ;	../fb_app_in8.c:592: objval=read_obj_value(obj)^0x01;//Tele invers senden
   0A24 8F 82              2270 	mov	dpl,r7
   0A26 C0 06              2271 	push	ar6
   0A28 12 0C E0           2272 	lcall	_read_obj_value
   0A2B AA 82              2273 	mov	r2,dpl
   0A2D AB 83              2274 	mov	r3,dph
   0A2F AC F0              2275 	mov	r4,b
   0A31 FD                 2276 	mov	r5,a
   0A32 D0 06              2277 	pop	ar6
   0A34 63 02 01           2278 	xrl	ar2,#0x01
   0A37 EA                 2279 	mov	a,r2
   0A38 4B                 2280 	orl	a,r3
   0A39 4C                 2281 	orl	a,r4
   0A3A 4D                 2282 	orl	a,r5
   0A3B 24 FF              2283 	add	a,#0xff
   0A3D 92 18              2284 	mov	b0,c
                           2285 ;	../fb_app_in8.c:594: break;
   0A3F 02 0B 11           2286 	ljmp	00128$
                           2287 ;	../fb_app_in8.c:595: default:
   0A42                    2288 00108$:
                           2289 ;	../fb_app_in8.c:596: sendobj=255;
   0A42 7E FF              2290 	mov	r6,#0xFF
                           2291 ;	../fb_app_in8.c:600: break;	
   0A44 02 0B 11           2292 	ljmp	00128$
                           2293 ;	../fb_app_in8.c:601: case 0x02:// funktion Dimmer-sperren
   0A47                    2294 00110$:
                           2295 ;	../fb_app_in8.c:603: objval = read_obj_value(obj);
   0A47 8F 82              2296 	mov	dpl,r7
   0A49 C0 07              2297 	push	ar7
   0A4B 12 0C E0           2298 	lcall	_read_obj_value
   0A4E AA 82              2299 	mov	r2,dpl
   0A50 AB 83              2300 	mov	r3,dph
   0A52 AC F0              2301 	mov	r4,b
   0A54 FD                 2302 	mov	r5,a
   0A55 D0 07              2303 	pop	ar7
   0A57 EA                 2304 	mov	a,r2
   0A58 4B                 2305 	orl	a,r3
   0A59 4C                 2306 	orl	a,r4
   0A5A 4D                 2307 	orl	a,r5
   0A5B 24 FF              2308 	add	a,#0xff
   0A5D 92 18              2309 	mov	b0,c
                           2310 ;	../fb_app_in8.c:604: sendobj=obj;
   0A5F 8F 06              2311 	mov	ar6,r7
                           2312 ;	../fb_app_in8.c:605: if (freigabe){		// Ende Sperre  
   0A61 E5 7B              2313 	mov	a,_bp
   0A63 24 FD              2314 	add	a,#0xfd
   0A65 F8                 2315 	mov	r0,a
   0A66 E6                 2316 	mov	a,@r0
   0A67 60 18              2317 	jz	00120$
                           2318 ;	../fb_app_in8.c:606: if (eeprom[0xD5+(obj*4)]&0x80) objval=0;
   0A69 EF                 2319 	mov	a,r7
   0A6A 2F                 2320 	add	a,r7
   0A6B 25 E0              2321 	add	a,acc
   0A6D 24 D5              2322 	add	a,#0xD5
   0A6F 90 1D 00           2323 	mov	dptr,#_eeprom
   0A72 93                 2324 	movc	a,@a+dptr
   0A73 FD                 2325 	mov	r5,a
   0A74 30 E7 05           2326 	jnb	acc.7,00112$
   0A77 C2 18              2327 	clr	b0
   0A79 02 0B 11           2328 	ljmp	00128$
   0A7C                    2329 00112$:
                           2330 ;	../fb_app_in8.c:607: else sendobj=255;
   0A7C 7E FF              2331 	mov	r6,#0xFF
   0A7E 02 0B 11           2332 	ljmp	00128$
   0A81                    2333 00120$:
                           2334 ;	../fb_app_in8.c:610: switch (eeprom[0xD5+(obj*4)+1]& 0xC0) {//Bedienkonzept angucken
   0A81 EF                 2335 	mov	a,r7
   0A82 2F                 2336 	add	a,r7
   0A83 25 E0              2337 	add	a,acc
   0A85 24 D6              2338 	add	a,#0xD6
   0A87 90 1D 00           2339 	mov	dptr,#_eeprom
   0A8A 93                 2340 	movc	a,@a+dptr
   0A8B FD                 2341 	mov	r5,a
   0A8C 53 05 C0           2342 	anl	ar5,#0xC0
   0A8F BD 40 02           2343 	cjne	r5,#0x40,00185$
   0A92 80 0A              2344 	sjmp	00114$
   0A94                    2345 00185$:
   0A94 BD 80 02           2346 	cjne	r5,#0x80,00186$
   0A97 80 09              2347 	sjmp	00115$
   0A99                    2348 00186$:
                           2349 ;	../fb_app_in8.c:611: case 0x40:	// zweiflaechen ein
   0A99 BD C0 0E           2350 	cjne	r5,#0xC0,00117$
   0A9C 80 08              2351 	sjmp	00116$
   0A9E                    2352 00114$:
                           2353 ;	../fb_app_in8.c:612: objval=1;
   0A9E D2 18              2354 	setb	b0
                           2355 ;	../fb_app_in8.c:613: break;
                           2356 ;	../fb_app_in8.c:614: case 0x80:	// zweiflaechen aus
   0AA0 80 6F              2357 	sjmp	00128$
   0AA2                    2358 00115$:
                           2359 ;	../fb_app_in8.c:615: objval=0;
   0AA2 C2 18              2360 	clr	b0
                           2361 ;	../fb_app_in8.c:616: break;
                           2362 ;	../fb_app_in8.c:617: case 0xC0:	// UM-heller
   0AA4 80 6B              2363 	sjmp	00128$
   0AA6                    2364 00116$:
                           2365 ;	../fb_app_in8.c:618: objval = !objval;
   0AA6 B2 18              2366 	cpl	b0
                           2367 ;	../fb_app_in8.c:619: break;
                           2368 ;	../fb_app_in8.c:620: default:
   0AA8 80 67              2369 	sjmp	00128$
   0AAA                    2370 00117$:
                           2371 ;	../fb_app_in8.c:621: sendobj=255;
   0AAA 7E FF              2372 	mov	r6,#0xFF
                           2373 ;	../fb_app_in8.c:626: break;
                           2374 ;	../fb_app_in8.c:627: case 0x03:// Funktion Jalousie - Sperren
   0AAC 80 63              2375 	sjmp	00128$
   0AAE                    2376 00122$:
                           2377 ;	../fb_app_in8.c:628: sendobj=obj+8;
   0AAE 74 08              2378 	mov	a,#0x08
   0AB0 2F                 2379 	add	a,r7
   0AB1 FE                 2380 	mov	r6,a
                           2381 ;	../fb_app_in8.c:629: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
   0AB2 EF                 2382 	mov	a,r7
   0AB3 2F                 2383 	add	a,r7
   0AB4 25 E0              2384 	add	a,acc
   0AB6 24 D5              2385 	add	a,#0xD5
   0AB8 90 1D 00           2386 	mov	dptr,#_eeprom
   0ABB 93                 2387 	movc	a,@a+dptr
   0ABC FD                 2388 	mov	r5,a
   0ABD E5 7B              2389 	mov	a,_bp
   0ABF 24 FD              2390 	add	a,#0xfd
   0AC1 F8                 2391 	mov	r0,a
   0AC2 74 01              2392 	mov	a,#0x01
   0AC4 66                 2393 	xrl	a,@r0
   0AC5 75 F0 02           2394 	mov	b,#0x02
   0AC8 A4                 2395 	mul	ab
   0AC9 F5 F0              2396 	mov	b,a
   0ACB 05 F0              2397 	inc	b
   0ACD ED                 2398 	mov	a,r5
   0ACE 80 02              2399 	sjmp	00189$
   0AD0                    2400 00188$:
   0AD0 C3                 2401 	clr	c
   0AD1 13                 2402 	rrc	a
   0AD2                    2403 00189$:
   0AD2 D5 F0 FB           2404 	djnz	b,00188$
   0AD5 54 0C              2405 	anl	a,#0x0C
   0AD7 FD                 2406 	mov	r5,a
   0AD8 BD 04 02           2407 	cjne	r5,#0x04,00190$
   0ADB 80 0A              2408 	sjmp	00123$
   0ADD                    2409 00190$:
   0ADD BD 08 02           2410 	cjne	r5,#0x08,00191$
   0AE0 80 09              2411 	sjmp	00124$
   0AE2                    2412 00191$:
                           2413 ;	../fb_app_in8.c:630: case 0x04:		//ab
   0AE2 BD 0C 2A           2414 	cjne	r5,#0x0C,00126$
   0AE5 80 08              2415 	sjmp	00125$
   0AE7                    2416 00123$:
                           2417 ;	../fb_app_in8.c:631: objval=0;
   0AE7 C2 18              2418 	clr	b0
                           2419 ;	../fb_app_in8.c:632: break;
                           2420 ;	../fb_app_in8.c:633: case 0x08:		//auf
   0AE9 80 26              2421 	sjmp	00128$
   0AEB                    2422 00124$:
                           2423 ;	../fb_app_in8.c:634: objval=1;
   0AEB D2 18              2424 	setb	b0
                           2425 ;	../fb_app_in8.c:635: break;
                           2426 ;	../fb_app_in8.c:636: case 0x0c:	//UM
   0AED 80 22              2427 	sjmp	00128$
   0AEF                    2428 00125$:
                           2429 ;	../fb_app_in8.c:637: objval=read_obj_value(obj+8)^0x01;//neues Jaloobj invers zum langzeit
   0AEF 74 08              2430 	mov	a,#0x08
   0AF1 2F                 2431 	add	a,r7
   0AF2 F5 82              2432 	mov	dpl,a
   0AF4 C0 06              2433 	push	ar6
   0AF6 12 0C E0           2434 	lcall	_read_obj_value
   0AF9 AB 82              2435 	mov	r3,dpl
   0AFB AC 83              2436 	mov	r4,dph
   0AFD AD F0              2437 	mov	r5,b
   0AFF FF                 2438 	mov	r7,a
   0B00 D0 06              2439 	pop	ar6
   0B02 63 03 01           2440 	xrl	ar3,#0x01
   0B05 EB                 2441 	mov	a,r3
   0B06 4C                 2442 	orl	a,r4
   0B07 4D                 2443 	orl	a,r5
   0B08 4F                 2444 	orl	a,r7
   0B09 24 FF              2445 	add	a,#0xff
   0B0B 92 18              2446 	mov	b0,c
                           2447 ;	../fb_app_in8.c:638: break;
                           2448 ;	../fb_app_in8.c:639: default:
   0B0D 80 02              2449 	sjmp	00128$
   0B0F                    2450 00126$:
                           2451 ;	../fb_app_in8.c:640: sendobj=255;	
   0B0F 7E FF              2452 	mov	r6,#0xFF
                           2453 ;	../fb_app_in8.c:644: }// Ende switch funktion
   0B11                    2454 00128$:
                           2455 ;	../fb_app_in8.c:645: if(sendobj<=16){
   0B11 EE                 2456 	mov	a,r6
   0B12 24 EF              2457 	add	a,#0xff - 0x10
   0B14 40 2D              2458 	jc	00134$
                           2459 ;	../fb_app_in8.c:646: write_obj_value(sendobj,objval);
   0B16 A2 18              2460 	mov	c,b0
   0B18 E4                 2461 	clr	a
   0B19 33                 2462 	rlc	a
   0B1A FB                 2463 	mov	r3,a
   0B1B 7C 00              2464 	mov	r4,#0x00
   0B1D 7D 00              2465 	mov	r5,#0x00
   0B1F 7F 00              2466 	mov	r7,#0x00
   0B21 C0 06              2467 	push	ar6
   0B23 C0 03              2468 	push	ar3
   0B25 C0 04              2469 	push	ar4
   0B27 C0 05              2470 	push	ar5
   0B29 C0 07              2471 	push	ar7
   0B2B 8E 82              2472 	mov	dpl,r6
   0B2D 12 0D B1           2473 	lcall	_write_obj_value
   0B30 E5 81              2474 	mov	a,sp
   0B32 24 FC              2475 	add	a,#0xfc
   0B34 F5 81              2476 	mov	sp,a
   0B36 D0 06              2477 	pop	ar6
                           2478 ;	../fb_app_in8.c:647: while(!send_obj_value(sendobj));
   0B38                    2479 00129$:
   0B38 8E 82              2480 	mov	dpl,r6
   0B3A C0 06              2481 	push	ar6
   0B3C 12 18 02           2482 	lcall	_send_obj_value
   0B3F D0 06              2483 	pop	ar6
   0B41 50 F5              2484 	jnc	00129$
   0B43                    2485 00134$:
   0B43 D0 7B              2486 	pop	_bp
   0B45 22                 2487 	ret
                           2488 ;------------------------------------------------------------
                           2489 ;Allocation info for local variables in function 'read_value_req'
                           2490 ;------------------------------------------------------------
                           2491 ;objno                     Allocated to registers r7 
                           2492 ;objflags                  Allocated to registers r6 
                           2493 ;------------------------------------------------------------
                           2494 ;	../fb_app_in8.c:661: void read_value_req(void)
                           2495 ;	-----------------------------------------
                           2496 ;	 function read_value_req
                           2497 ;	-----------------------------------------
   0B46                    2498 _read_value_req:
                           2499 ;	../fb_app_in8.c:665: objno=find_first_objno(telegramm[3],telegramm[4]);	// erste Objektnummer zu empfangener GA finden
   0B46 85 56 82           2500 	mov	dpl,(_telegramm + 0x0003)
   0B49 C0 57              2501 	push	(_telegramm + 0x0004)
   0B4B 12 1A 46           2502 	lcall	_find_first_objno
   0B4E AF 82              2503 	mov	r7,dpl
   0B50 15 81              2504 	dec	sp
                           2505 ;	../fb_app_in8.c:666: if(objno!=0xFF) {	// falls Gruppenadresse nicht gefunden
   0B52 BF FF 01           2506 	cjne	r7,#0xFF,00111$
   0B55 22                 2507 	ret
   0B56                    2508 00111$:
                           2509 ;	../fb_app_in8.c:672: objflags=read_objflags(objno);		// Objekt Flags lesen
   0B56 8F 82              2510 	mov	dpl,r7
   0B58 C0 07              2511 	push	ar7
   0B5A 12 1A 2E           2512 	lcall	_read_objflags
   0B5D AE 82              2513 	mov	r6,dpl
   0B5F D0 07              2514 	pop	ar7
                           2515 ;	../fb_app_in8.c:674: if((objflags&0x0C)==0x0C) send_obj_value(objno+0x40);// 0x40 ist bit für response Telegramm
   0B61 53 06 0C           2516 	anl	ar6,#0x0C
   0B64 BE 0C 08           2517 	cjne	r6,#0x0C,00105$
   0B67 74 40              2518 	mov	a,#0x40
   0B69 2F                 2519 	add	a,r7
   0B6A F5 82              2520 	mov	dpl,a
   0B6C 02 18 02           2521 	ljmp	_send_obj_value
   0B6F                    2522 00105$:
   0B6F 22                 2523 	ret
                           2524 ;------------------------------------------------------------
                           2525 ;Allocation info for local variables in function 'write_send'
                           2526 ;------------------------------------------------------------
                           2527 ;value                     Allocated to stack - _bp -4
                           2528 ;objno                     Allocated to registers r7 
                           2529 ;------------------------------------------------------------
                           2530 ;	../fb_app_in8.c:679: void (write_send)(unsigned char objno,unsigned int value){
                           2531 ;	-----------------------------------------
                           2532 ;	 function write_send
                           2533 ;	-----------------------------------------
   0B70                    2534 _write_send:
   0B70 C0 7B              2535 	push	_bp
   0B72 85 81 7B           2536 	mov	_bp,sp
   0B75 AF 82              2537 	mov	r7,dpl
                           2538 ;	../fb_app_in8.c:681: write_obj_value(objno,value);
   0B77 E5 7B              2539 	mov	a,_bp
   0B79 24 FC              2540 	add	a,#0xfc
   0B7B F8                 2541 	mov	r0,a
   0B7C 86 03              2542 	mov	ar3,@r0
   0B7E 08                 2543 	inc	r0
   0B7F 86 04              2544 	mov	ar4,@r0
   0B81 7D 00              2545 	mov	r5,#0x00
   0B83 7E 00              2546 	mov	r6,#0x00
   0B85 C0 07              2547 	push	ar7
   0B87 C0 03              2548 	push	ar3
   0B89 C0 04              2549 	push	ar4
   0B8B C0 05              2550 	push	ar5
   0B8D C0 06              2551 	push	ar6
   0B8F 8F 82              2552 	mov	dpl,r7
   0B91 12 0D B1           2553 	lcall	_write_obj_value
   0B94 E5 81              2554 	mov	a,sp
   0B96 24 FC              2555 	add	a,#0xfc
   0B98 F5 81              2556 	mov	sp,a
   0B9A D0 07              2557 	pop	ar7
                           2558 ;	../fb_app_in8.c:682: send_obj_value(objno);
   0B9C 8F 82              2559 	mov	dpl,r7
   0B9E 12 18 02           2560 	lcall	_send_obj_value
   0BA1 D0 7B              2561 	pop	_bp
   0BA3 22                 2562 	ret
                           2563 ;------------------------------------------------------------
                           2564 ;Allocation info for local variables in function 'bus_return'
                           2565 ;------------------------------------------------------------
                           2566 ;n                         Allocated to registers r7 
                           2567 ;senden                    Allocated to registers r6 
                           2568 ;objval                    Allocated to registers b0 
                           2569 ;------------------------------------------------------------
                           2570 ;	../fb_app_in8.c:686: void bus_return(void){
                           2571 ;	-----------------------------------------
                           2572 ;	 function bus_return
                           2573 ;	-----------------------------------------
   0BA4                    2574 _bus_return:
                           2575 ;	../fb_app_in8.c:689: __bit objval=0;
   0BA4 C2 18              2576 	clr	b0
                           2577 ;	../fb_app_in8.c:690: Sperre=0;
   0BA6 75 18 00           2578 	mov	_Sperre,#0x00
                           2579 ;	../fb_app_in8.c:692: for (n=0;n<8;n++){
   0BA9 7F 00              2580 	mov	r7,#0x00
   0BAB                    2581 00124$:
   0BAB BF 08 00           2582 	cjne	r7,#0x08,00161$
   0BAE                    2583 00161$:
   0BAE 40 01              2584 	jc	00162$
   0BB0 22                 2585 	ret
   0BB1                    2586 00162$:
                           2587 ;	../fb_app_in8.c:693: senden=0;
   0BB1 7E 00              2588 	mov	r6,#0x00
                           2589 ;	../fb_app_in8.c:694: timercnt[n]=0;// alle timer ausschalten
   0BB3 EF                 2590 	mov	a,r7
   0BB4 24 36              2591 	add	a,#_timercnt
   0BB6 F9                 2592 	mov	r1,a
   0BB7 77 00              2593 	mov	@r1,#0x00
                           2594 ;	../fb_app_in8.c:695: objectvalue_l[n]=0;
   0BB9 EF                 2595 	mov	a,r7
   0BBA 24 08              2596 	add	a,#_objectvalue_l
   0BBC F8                 2597 	mov	r0,a
   0BBD 76 00              2598 	mov	@r0,#0x00
                           2599 ;	../fb_app_in8.c:696: objectvalue_h[n]=0;
   0BBF EF                 2600 	mov	a,r7
   0BC0 24 10              2601 	add	a,#_objectvalue_h
   0BC2 F8                 2602 	mov	r0,a
   0BC3 76 00              2603 	mov	@r0,#0x00
                           2604 ;	../fb_app_in8.c:697: switch ((eeprom[0xCE+(n>>1)] >> ((n & 0x01)*4)) & 0x0F)	// Funktion des objektes
   0BC5 EF                 2605 	mov	a,r7
   0BC6 C3                 2606 	clr	c
   0BC7 13                 2607 	rrc	a
   0BC8 24 CE              2608 	add	a,#0xCE
   0BCA 90 1D 00           2609 	mov	dptr,#_eeprom
   0BCD 93                 2610 	movc	a,@a+dptr
   0BCE FD                 2611 	mov	r5,a
   0BCF 74 01              2612 	mov	a,#0x01
   0BD1 5F                 2613 	anl	a,r7
   0BD2 75 F0 04           2614 	mov	b,#0x04
   0BD5 A4                 2615 	mul	ab
   0BD6 F5 F0              2616 	mov	b,a
   0BD8 05 F0              2617 	inc	b
   0BDA ED                 2618 	mov	a,r5
   0BDB 80 02              2619 	sjmp	00164$
   0BDD                    2620 00163$:
   0BDD C3                 2621 	clr	c
   0BDE 13                 2622 	rrc	a
   0BDF                    2623 00164$:
   0BDF D5 F0 FB           2624 	djnz	b,00163$
   0BE2 54 0F              2625 	anl	a,#0x0F
   0BE4 FD                 2626 	mov	r5,a
   0BE5 BD 01 02           2627 	cjne	r5,#0x01,00165$
   0BE8 80 13              2628 	sjmp	00101$
   0BEA                    2629 00165$:
   0BEA BD 02 02           2630 	cjne	r5,#0x02,00166$
   0BED 80 55              2631 	sjmp	00107$
   0BEF                    2632 00166$:
   0BEF BD 03 02           2633 	cjne	r5,#0x03,00167$
   0BF2 80 0F              2634 	sjmp	00102$
   0BF4                    2635 00167$:
   0BF4 BD 09 03           2636 	cjne	r5,#0x09,00168$
   0BF7 02 0C 68           2637 	ljmp	00112$
   0BFA                    2638 00168$:
   0BFA 02 0C 80           2639 	ljmp	00115$
                           2640 ;	../fb_app_in8.c:699: case 0x01:// schalten
   0BFD                    2641 00101$:
                           2642 ;	../fb_app_in8.c:700: timerstate[n]=0;
   0BFD EF                 2643 	mov	a,r7
   0BFE 24 3F              2644 	add	a,#_timerstate
   0C00 F8                 2645 	mov	r0,a
   0C01 76 00              2646 	mov	@r0,#0x00
                           2647 ;	../fb_app_in8.c:701: case 0x03:// Jalousie
   0C03                    2648 00102$:
                           2649 ;	../fb_app_in8.c:703: switch(eeprom[0xD5+(n*4)]&0xC0){
   0C03 EF                 2650 	mov	a,r7
   0C04 2F                 2651 	add	a,r7
   0C05 25 E0              2652 	add	a,acc
   0C07 24 D5              2653 	add	a,#0xD5
   0C09 90 1D 00           2654 	mov	dptr,#_eeprom
   0C0C 93                 2655 	movc	a,@a+dptr
   0C0D FD                 2656 	mov	r5,a
   0C0E 53 05 C0           2657 	anl	ar5,#0xC0
   0C11 BD 40 02           2658 	cjne	r5,#0x40,00169$
   0C14 80 0A              2659 	sjmp	00103$
   0C16                    2660 00169$:
   0C16 BD 80 02           2661 	cjne	r5,#0x80,00170$
   0C19 80 0B              2662 	sjmp	00104$
   0C1B                    2663 00170$:
                           2664 ;	../fb_app_in8.c:704: case 0x40:
   0C1B BD C0 62           2665 	cjne	r5,#0xC0,00115$
   0C1E 80 0C              2666 	sjmp	00105$
   0C20                    2667 00103$:
                           2668 ;	../fb_app_in8.c:705: objval=1;
   0C20 D2 18              2669 	setb	b0
                           2670 ;	../fb_app_in8.c:706: senden=1;
   0C22 7E 01              2671 	mov	r6,#0x01
                           2672 ;	../fb_app_in8.c:707: break;	
                           2673 ;	../fb_app_in8.c:708: case 0x80:
   0C24 80 5A              2674 	sjmp	00115$
   0C26                    2675 00104$:
                           2676 ;	../fb_app_in8.c:709: objval=0;
   0C26 C2 18              2677 	clr	b0
                           2678 ;	../fb_app_in8.c:710: senden=1;
   0C28 7E 01              2679 	mov	r6,#0x01
                           2680 ;	../fb_app_in8.c:711: break;
                           2681 ;	../fb_app_in8.c:712: case 0xC0:
   0C2A 80 54              2682 	sjmp	00115$
   0C2C                    2683 00105$:
                           2684 ;	../fb_app_in8.c:713: objval=(p0h>>n)& 0x01;
   0C2C 8F F0              2685 	mov	b,r7
   0C2E 05 F0              2686 	inc	b
   0C30 E5 25              2687 	mov	a,_p0h
   0C32 80 02              2688 	sjmp	00173$
   0C34                    2689 00172$:
   0C34 C3                 2690 	clr	c
   0C35 13                 2691 	rrc	a
   0C36                    2692 00173$:
   0C36 D5 F0 FB           2693 	djnz	b,00172$
   0C39 54 01              2694 	anl	a,#0x01
   0C3B FD                 2695 	mov	r5,a
   0C3C 24 FF              2696 	add	a,#0xff
   0C3E 92 18              2697 	mov	b0,c
                           2698 ;	../fb_app_in8.c:714: senden=1;
   0C40 7E 01              2699 	mov	r6,#0x01
                           2700 ;	../fb_app_in8.c:717: break;
                           2701 ;	../fb_app_in8.c:718: case 0x02://dimmen austele
   0C42 80 3C              2702 	sjmp	00115$
   0C44                    2703 00107$:
                           2704 ;	../fb_app_in8.c:719: if(eeprom[0xD7+(n*4)]&0x80){
   0C44 EF                 2705 	mov	a,r7
   0C45 2F                 2706 	add	a,r7
   0C46 25 E0              2707 	add	a,acc
   0C48 FD                 2708 	mov	r5,a
   0C49 24 D7              2709 	add	a,#0xD7
   0C4B 90 1D 00           2710 	mov	dptr,#_eeprom
   0C4E 93                 2711 	movc	a,@a+dptr
   0C4F FC                 2712 	mov	r4,a
   0C50 30 E7 04           2713 	jnb	acc.7,00109$
                           2714 ;	../fb_app_in8.c:720: objval=0;
   0C53 C2 18              2715 	clr	b0
                           2716 ;	../fb_app_in8.c:721: senden=1;
   0C55 7E 01              2717 	mov	r6,#0x01
   0C57                    2718 00109$:
                           2719 ;	../fb_app_in8.c:723: if(eeprom[0xD8+(n*4)]&0x80){
   0C57 74 D8              2720 	mov	a,#0xD8
   0C59 2D                 2721 	add	a,r5
   0C5A 90 1D 00           2722 	mov	dptr,#_eeprom
   0C5D 93                 2723 	movc	a,@a+dptr
   0C5E FD                 2724 	mov	r5,a
   0C5F 30 E7 1E           2725 	jnb	acc.7,00115$
                           2726 ;	../fb_app_in8.c:724: objval=1;
   0C62 D2 18              2727 	setb	b0
                           2728 ;	../fb_app_in8.c:725: senden=1;
   0C64 7E 01              2729 	mov	r6,#0x01
                           2730 ;	../fb_app_in8.c:728: break;
                           2731 ;	../fb_app_in8.c:729: case 0x09:	// timer für impulszähler starten falls kein sync angeschlossen 
   0C66 80 18              2732 	sjmp	00115$
   0C68                    2733 00112$:
                           2734 ;	../fb_app_in8.c:730: if (n<=1){
   0C68 EF                 2735 	mov	a,r7
   0C69 24 FE              2736 	add	a,#0xff - 0x01
   0C6B 40 13              2737 	jc	00115$
                           2738 ;	../fb_app_in8.c:731: timercnt[n]=0x80;
   0C6D 77 80              2739 	mov	@r1,#0x80
                           2740 ;	../fb_app_in8.c:732: timerbase[n]=0x80;
   0C6F EF                 2741 	mov	a,r7
   0C70 24 2D              2742 	add	a,#_timerbase
   0C72 F8                 2743 	mov	r0,a
   0C73 76 80              2744 	mov	@r0,#0x80
                           2745 ;	../fb_app_in8.c:733: zaehlervalue[n]=0;
   0C75 EF                 2746 	mov	a,r7
   0C76 2F                 2747 	add	a,r7
   0C77 FD                 2748 	mov	r5,a
   0C78 24 19              2749 	add	a,#_zaehlervalue
   0C7A F8                 2750 	mov	r0,a
   0C7B 76 00              2751 	mov	@r0,#0x00
   0C7D 08                 2752 	inc	r0
   0C7E 76 00              2753 	mov	@r0,#0x00
                           2754 ;	../fb_app_in8.c:736: }
   0C80                    2755 00115$:
                           2756 ;	../fb_app_in8.c:737: if (senden){
   0C80 EE                 2757 	mov	a,r6
   0C81 60 35              2758 	jz	00120$
                           2759 ;	../fb_app_in8.c:738: write_obj_value(n,objval);// eis1, kein selftele, speichern ja
   0C83 A2 18              2760 	mov	c,b0
   0C85 E4                 2761 	clr	a
   0C86 33                 2762 	rlc	a
   0C87 FB                 2763 	mov	r3,a
   0C88 7C 00              2764 	mov	r4,#0x00
   0C8A 7D 00              2765 	mov	r5,#0x00
   0C8C 7E 00              2766 	mov	r6,#0x00
   0C8E C0 07              2767 	push	ar7
   0C90 C0 23              2768 	push	bits
   0C92 C0 03              2769 	push	ar3
   0C94 C0 04              2770 	push	ar4
   0C96 C0 05              2771 	push	ar5
   0C98 C0 06              2772 	push	ar6
   0C9A 8F 82              2773 	mov	dpl,r7
   0C9C 12 0D B1           2774 	lcall	_write_obj_value
   0C9F E5 81              2775 	mov	a,sp
   0CA1 24 FC              2776 	add	a,#0xfc
   0CA3 F5 81              2777 	mov	sp,a
   0CA5 D0 23              2778 	pop	bits
   0CA7 D0 07              2779 	pop	ar7
                           2780 ;	../fb_app_in8.c:739: while(!send_obj_value(n));
   0CA9                    2781 00116$:
   0CA9 8F 82              2782 	mov	dpl,r7
   0CAB C0 07              2783 	push	ar7
   0CAD C0 23              2784 	push	bits
   0CAF 12 18 02           2785 	lcall	_send_obj_value
   0CB2 D0 23              2786 	pop	bits
   0CB4 D0 07              2787 	pop	ar7
   0CB6 50 F1              2788 	jnc	00116$
   0CB8                    2789 00120$:
                           2790 ;	../fb_app_in8.c:741: if((eeprom[0xD5+(n*4)]& 0x03)==1){
   0CB8 EF                 2791 	mov	a,r7
   0CB9 2F                 2792 	add	a,r7
   0CBA 25 E0              2793 	add	a,acc
   0CBC 24 D5              2794 	add	a,#0xD5
   0CBE 90 1D 00           2795 	mov	dptr,#_eeprom
   0CC1 93                 2796 	movc	a,@a+dptr
   0CC2 FE                 2797 	mov	r6,a
   0CC3 53 06 03           2798 	anl	ar6,#0x03
   0CC6 BE 01 0A           2799 	cjne	r6,#0x01,00122$
                           2800 ;	../fb_app_in8.c:742: blocked |= bitmask_1[n];
   0CC9 EF                 2801 	mov	a,r7
   0CCA 90 1B 70           2802 	mov	dptr,#_bitmask_1
   0CCD 93                 2803 	movc	a,@a+dptr
   0CCE FE                 2804 	mov	r6,a
   0CCF 42 28              2805 	orl	_blocked,a
   0CD1 80 09              2806 	sjmp	00126$
   0CD3                    2807 00122$:
                           2808 ;	../fb_app_in8.c:745: blocked &= (~bitmask_1[n]);
   0CD3 EF                 2809 	mov	a,r7
   0CD4 90 1B 70           2810 	mov	dptr,#_bitmask_1
   0CD7 93                 2811 	movc	a,@a+dptr
   0CD8 F4                 2812 	cpl	a
   0CD9 FE                 2813 	mov	r6,a
   0CDA 52 28              2814 	anl	_blocked,a
   0CDC                    2815 00126$:
                           2816 ;	../fb_app_in8.c:692: for (n=0;n<8;n++){
   0CDC 0F                 2817 	inc	r7
   0CDD 02 0B AB           2818 	ljmp	00124$
                           2819 ;------------------------------------------------------------
                           2820 ;Allocation info for local variables in function 'read_obj_value'
                           2821 ;------------------------------------------------------------
                           2822 ;objno                     Allocated to registers r7 
                           2823 ;objvalue                  Allocated to stack - _bp +1
                           2824 ;objtype                   Allocated to registers r6 
                           2825 ;sloc0                     Allocated to stack - _bp +7
                           2826 ;------------------------------------------------------------
                           2827 ;	../fb_app_in8.c:800: unsigned long read_obj_value(unsigned char objno)
                           2828 ;	-----------------------------------------
                           2829 ;	 function read_obj_value
                           2830 ;	-----------------------------------------
   0CE0                    2831 _read_obj_value:
   0CE0 C0 7B              2832 	push	_bp
   0CE2 E5 81              2833 	mov	a,sp
   0CE4 F5 7B              2834 	mov	_bp,a
   0CE6 24 04              2835 	add	a,#0x04
   0CE8 F5 81              2836 	mov	sp,a
   0CEA AF 82              2837 	mov	r7,dpl
                           2838 ;	../fb_app_in8.c:804: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
   0CEC 90 1D 12           2839 	mov	dptr,#(_eeprom + 0x0012)
   0CEF E4                 2840 	clr	a
   0CF0 93                 2841 	movc	a,@a+dptr
   0CF1 FE                 2842 	mov	r6,a
   0CF2 EF                 2843 	mov	a,r7
   0CF3 75 F0 03           2844 	mov	b,#0x03
   0CF6 A4                 2845 	mul	ab
   0CF7 2E                 2846 	add	a,r6
   0CF8 24 04              2847 	add	a,#0x04
   0CFA 90 1D 00           2848 	mov	dptr,#_eeprom
   0CFD 93                 2849 	movc	a,@a+dptr
   0CFE FE                 2850 	mov	r6,a
                           2851 ;	../fb_app_in8.c:806: if (objno <= 15) {	// wenn objno <= anzahl objekte
   0CFF EF                 2852 	mov	a,r7
   0D00 24 F0              2853 	add	a,#0xff - 0x0F
   0D02 40 72              2854 	jc	00105$
                           2855 ;	../fb_app_in8.c:807: if (objtype>=8){// bei 16bit
   0D04 BE 08 00           2856 	cjne	r6,#0x08,00114$
   0D07                    2857 00114$:
   0D07 40 3D              2858 	jc	00102$
                           2859 ;	../fb_app_in8.c:808: objvalue=objectvalue_h[objno&0x07]<<8;
   0D09 74 07              2860 	mov	a,#0x07
   0D0B 5F                 2861 	anl	a,r7
   0D0C FE                 2862 	mov	r6,a
   0D0D 24 10              2863 	add	a,#_objectvalue_h
   0D0F F9                 2864 	mov	r1,a
   0D10 87 04              2865 	mov	ar4,@r1
   0D12 8C 03              2866 	mov	ar3,r4
   0D14 7C 00              2867 	mov	r4,#0x00
   0D16 A8 7B              2868 	mov	r0,_bp
   0D18 08                 2869 	inc	r0
   0D19 A6 04              2870 	mov	@r0,ar4
   0D1B 08                 2871 	inc	r0
   0D1C A6 03              2872 	mov	@r0,ar3
   0D1E EB                 2873 	mov	a,r3
   0D1F 33                 2874 	rlc	a
   0D20 95 E0              2875 	subb	a,acc
   0D22 08                 2876 	inc	r0
   0D23 F6                 2877 	mov	@r0,a
   0D24 08                 2878 	inc	r0
   0D25 F6                 2879 	mov	@r0,a
                           2880 ;	../fb_app_in8.c:809: objvalue+=(objectvalue_l[objno&0x07]);//objvalue=objvalue<<8;
   0D26 EE                 2881 	mov	a,r6
   0D27 24 08              2882 	add	a,#_objectvalue_l
   0D29 F9                 2883 	mov	r1,a
   0D2A 87 05              2884 	mov	ar5,@r1
   0D2C 7C 00              2885 	mov	r4,#0x00
   0D2E 7B 00              2886 	mov	r3,#0x00
   0D30 7A 00              2887 	mov	r2,#0x00
   0D32 A8 7B              2888 	mov	r0,_bp
   0D34 08                 2889 	inc	r0
   0D35 ED                 2890 	mov	a,r5
   0D36 26                 2891 	add	a,@r0
   0D37 F6                 2892 	mov	@r0,a
   0D38 EC                 2893 	mov	a,r4
   0D39 08                 2894 	inc	r0
   0D3A 36                 2895 	addc	a,@r0
   0D3B F6                 2896 	mov	@r0,a
   0D3C EB                 2897 	mov	a,r3
   0D3D 08                 2898 	inc	r0
   0D3E 36                 2899 	addc	a,@r0
   0D3F F6                 2900 	mov	@r0,a
   0D40 EA                 2901 	mov	a,r2
   0D41 08                 2902 	inc	r0
   0D42 36                 2903 	addc	a,@r0
   0D43 F6                 2904 	mov	@r0,a
   0D44 80 58              2905 	sjmp	00106$
   0D46                    2906 00102$:
                           2907 ;	../fb_app_in8.c:811: else objvalue = objectvalue_l[objno]&(0xFF>>(7-objtype));
   0D46 EF                 2908 	mov	a,r7
   0D47 24 08              2909 	add	a,#_objectvalue_l
   0D49 F9                 2910 	mov	r1,a
   0D4A 87 05              2911 	mov	ar5,@r1
   0D4C 7C 00              2912 	mov	r4,#0x00
   0D4E 74 07              2913 	mov	a,#0x07
   0D50 C3                 2914 	clr	c
   0D51 9E                 2915 	subb	a,r6
   0D52 FE                 2916 	mov	r6,a
   0D53 E4                 2917 	clr	a
   0D54 9C                 2918 	subb	a,r4
   0D55 FC                 2919 	mov	r4,a
   0D56 8E F0              2920 	mov	b,r6
   0D58 05 F0              2921 	inc	b
   0D5A 74 FF              2922 	mov	a,#0xFF
   0D5C 80 02              2923 	sjmp	00117$
   0D5E                    2924 00116$:
   0D5E C3                 2925 	clr	c
   0D5F 13                 2926 	rrc	a
   0D60                    2927 00117$:
   0D60 D5 F0 FB           2928 	djnz	b,00116$
   0D63 FE                 2929 	mov	r6,a
   0D64 52 05              2930 	anl	ar5,a
   0D66 A8 7B              2931 	mov	r0,_bp
   0D68 08                 2932 	inc	r0
   0D69 A6 05              2933 	mov	@r0,ar5
   0D6B 08                 2934 	inc	r0
   0D6C 76 00              2935 	mov	@r0,#0x00
   0D6E 08                 2936 	inc	r0
   0D6F 76 00              2937 	mov	@r0,#0x00
   0D71 08                 2938 	inc	r0
   0D72 76 00              2939 	mov	@r0,#0x00
   0D74 80 28              2940 	sjmp	00106$
   0D76                    2941 00105$:
                           2942 ;	../fb_app_in8.c:814: objvalue=(Sperre>>(objno-16))&0x01;
   0D76 7E 00              2943 	mov	r6,#0x00
   0D78 EF                 2944 	mov	a,r7
   0D79 24 F0              2945 	add	a,#0xF0
   0D7B FF                 2946 	mov	r7,a
   0D7C EE                 2947 	mov	a,r6
   0D7D 34 FF              2948 	addc	a,#0xFF
   0D7F FE                 2949 	mov	r6,a
   0D80 8F F0              2950 	mov	b,r7
   0D82 05 F0              2951 	inc	b
   0D84 E5 18              2952 	mov	a,_Sperre
   0D86 80 02              2953 	sjmp	00119$
   0D88                    2954 00118$:
   0D88 C3                 2955 	clr	c
   0D89 13                 2956 	rrc	a
   0D8A                    2957 00119$:
   0D8A D5 F0 FB           2958 	djnz	b,00118$
   0D8D 54 01              2959 	anl	a,#0x01
   0D8F FF                 2960 	mov	r7,a
   0D90 A8 7B              2961 	mov	r0,_bp
   0D92 08                 2962 	inc	r0
   0D93 A6 07              2963 	mov	@r0,ar7
   0D95 08                 2964 	inc	r0
   0D96 76 00              2965 	mov	@r0,#0x00
   0D98 08                 2966 	inc	r0
   0D99 76 00              2967 	mov	@r0,#0x00
   0D9B 08                 2968 	inc	r0
   0D9C 76 00              2969 	mov	@r0,#0x00
   0D9E                    2970 00106$:
                           2971 ;	../fb_app_in8.c:816: return(objvalue);
   0D9E A8 7B              2972 	mov	r0,_bp
   0DA0 08                 2973 	inc	r0
   0DA1 86 82              2974 	mov	dpl,@r0
   0DA3 08                 2975 	inc	r0
   0DA4 86 83              2976 	mov	dph,@r0
   0DA6 08                 2977 	inc	r0
   0DA7 86 F0              2978 	mov	b,@r0
   0DA9 08                 2979 	inc	r0
   0DAA E6                 2980 	mov	a,@r0
   0DAB 85 7B 81           2981 	mov	sp,_bp
   0DAE D0 7B              2982 	pop	_bp
   0DB0 22                 2983 	ret
                           2984 ;------------------------------------------------------------
                           2985 ;Allocation info for local variables in function 'write_obj_value'
                           2986 ;------------------------------------------------------------
                           2987 ;objvalue                  Allocated to stack - _bp -6
                           2988 ;objno                     Allocated to registers r7 
                           2989 ;objtype                   Allocated to registers r6 
                           2990 ;------------------------------------------------------------
                           2991 ;	../fb_app_in8.c:821: void write_obj_value(unsigned char objno,long objvalue)
                           2992 ;	-----------------------------------------
                           2993 ;	 function write_obj_value
                           2994 ;	-----------------------------------------
   0DB1                    2995 _write_obj_value:
   0DB1 C0 7B              2996 	push	_bp
   0DB3 85 81 7B           2997 	mov	_bp,sp
   0DB6 AF 82              2998 	mov	r7,dpl
                           2999 ;	../fb_app_in8.c:825: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
   0DB8 90 1D 12           3000 	mov	dptr,#(_eeprom + 0x0012)
   0DBB E4                 3001 	clr	a
   0DBC 93                 3002 	movc	a,@a+dptr
   0DBD FE                 3003 	mov	r6,a
   0DBE EF                 3004 	mov	a,r7
   0DBF 75 F0 03           3005 	mov	b,#0x03
   0DC2 A4                 3006 	mul	ab
   0DC3 2E                 3007 	add	a,r6
   0DC4 24 04              3008 	add	a,#0x04
   0DC6 90 1D 00           3009 	mov	dptr,#_eeprom
   0DC9 93                 3010 	movc	a,@a+dptr
   0DCA FE                 3011 	mov	r6,a
                           3012 ;	../fb_app_in8.c:827: if (objno <= 15) {	// wenn objno <= anzahl objekte
   0DCB EF                 3013 	mov	a,r7
   0DCC 24 F0              3014 	add	a,#0xff - 0x0F
   0DCE 40 2D              3015 	jc	00104$
                           3016 ;	../fb_app_in8.c:828: if (objtype>=8){
   0DD0 BE 08 00           3017 	cjne	r6,#0x08,00113$
   0DD3                    3018 00113$:
   0DD3 40 13              3019 	jc	00102$
                           3020 ;	../fb_app_in8.c:829: objectvalue_h[objno&0x07]=objvalue>>8;
   0DD5 74 07              3021 	mov	a,#0x07
   0DD7 5F                 3022 	anl	a,r7
   0DD8 FE                 3023 	mov	r6,a
   0DD9 24 10              3024 	add	a,#_objectvalue_h
   0DDB F9                 3025 	mov	r1,a
   0DDC E5 7B              3026 	mov	a,_bp
   0DDE 24 FA              3027 	add	a,#0xfa
   0DE0 F8                 3028 	mov	r0,a
   0DE1 08                 3029 	inc	r0
   0DE2 86 05              3030 	mov	ar5,@r0
   0DE4 A7 05              3031 	mov	@r1,ar5
                           3032 ;	../fb_app_in8.c:830: objno &= 0x07;
   0DE6 8E 07              3033 	mov	ar7,r6
   0DE8                    3034 00102$:
                           3035 ;	../fb_app_in8.c:832: objectvalue_l[objno]=objvalue & 0xFF;
   0DE8 EF                 3036 	mov	a,r7
   0DE9 24 08              3037 	add	a,#_objectvalue_l
   0DEB F9                 3038 	mov	r1,a
   0DEC E5 7B              3039 	mov	a,_bp
   0DEE 24 FA              3040 	add	a,#0xfa
   0DF0 F8                 3041 	mov	r0,a
   0DF1 86 03              3042 	mov	ar3,@r0
   0DF3 7C 00              3043 	mov	r4,#0x00
   0DF5 7D 00              3044 	mov	r5,#0x00
   0DF7 7E 00              3045 	mov	r6,#0x00
   0DF9 A7 03              3046 	mov	@r1,ar3
   0DFB 80 32              3047 	sjmp	00106$
   0DFD                    3048 00104$:
                           3049 ;	../fb_app_in8.c:836: Sperre &= (0xff-(bitmask_1[objno-16]));
   0DFD EF                 3050 	mov	a,r7
   0DFE 24 F0              3051 	add	a,#0xF0
   0E00 FF                 3052 	mov	r7,a
   0E01 90 1B 70           3053 	mov	dptr,#_bitmask_1
   0E04 93                 3054 	movc	a,@a+dptr
   0E05 FE                 3055 	mov	r6,a
   0E06 74 FF              3056 	mov	a,#0xFF
   0E08 C3                 3057 	clr	c
   0E09 9E                 3058 	subb	a,r6
   0E0A 52 18              3059 	anl	_Sperre,a
                           3060 ;	../fb_app_in8.c:837: Sperre |= ((objvalue&0x01)<<(objno-16));
   0E0C E5 7B              3061 	mov	a,_bp
   0E0E 24 FA              3062 	add	a,#0xfa
   0E10 F8                 3063 	mov	r0,a
   0E11 74 01              3064 	mov	a,#0x01
   0E13 56                 3065 	anl	a,@r0
   0E14 FB                 3066 	mov	r3,a
   0E15 7C 00              3067 	mov	r4,#0x00
   0E17 7D 00              3068 	mov	r5,#0x00
   0E19 7E 00              3069 	mov	r6,#0x00
   0E1B 8F F0              3070 	mov	b,r7
   0E1D 05 F0              3071 	inc	b
   0E1F EB                 3072 	mov	a,r3
   0E20 80 02              3073 	sjmp	00117$
   0E22                    3074 00115$:
   0E22 25 E0              3075 	add	a,acc
   0E24                    3076 00117$:
   0E24 D5 F0 FB           3077 	djnz	b,00115$
   0E27 FF                 3078 	mov	r7,a
   0E28 E5 18              3079 	mov	a,_Sperre
   0E2A FE                 3080 	mov	r6,a
   0E2B 42 07              3081 	orl	ar7,a
   0E2D 8F 18              3082 	mov	_Sperre,r7
   0E2F                    3083 00106$:
   0E2F D0 7B              3084 	pop	_bp
   0E31 22                 3085 	ret
                           3086 ;------------------------------------------------------------
                           3087 ;Allocation info for local variables in function 'restart_app'
                           3088 ;------------------------------------------------------------
                           3089 ;	../fb_app_in8.c:843: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
                           3090 ;	-----------------------------------------
                           3091 ;	 function restart_app
                           3092 ;	-----------------------------------------
   0E32                    3093 _restart_app:
                           3094 ;	../fb_app_in8.c:848: P0M1=0xFF;	//P0 auf input only (high impedance!)
   0E32 75 84 FF           3095 	mov	_P0M1,#0xFF
                           3096 ;	../fb_app_in8.c:849: P0M2=0x00;
   0E35 75 85 00           3097 	mov	_P0M2,#0x00
                           3098 ;	../fb_app_in8.c:850: P0=0xFF;
   0E38 75 80 FF           3099 	mov	_P0,#0xFF
                           3100 ;	../fb_app_in8.c:857: transparency=0;
   0E3B C2 10              3101 	clr	_transparency
                           3102 ;	../fb_app_in8.c:860: timer=0;			// Timer-Variable, wird alle 65ms inkrementiert
   0E3D E4                 3103 	clr	a
   0E3E F5 2B              3104 	mov	_timer,a
   0E40 F5 2C              3105 	mov	(_timer + 1),a
                           3106 ;	../fb_app_in8.c:862: EA=0; 
   0E42 C2 AF              3107 	clr	_IEN0_7
                           3108 ;	../fb_app_in8.c:863: START_WRITECYCLE
   0E44 75 E4 00           3109 	mov	_FMCON,#0x00
                           3110 ;	../fb_app_in8.c:864: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
   0E47 75 E7 1D           3111 	mov	_FMADRH,#0x1D
   0E4A 75 E6 03           3112 	mov	_FMADRL,#0x03
   0E4D 75 E5 00           3113 	mov	_FMDATA,#0x00
                           3114 ;	../fb_app_in8.c:865: WRITE_BYTE(0x01,0x04,0x04)
   0E50 75 E7 1D           3115 	mov	_FMADRH,#0x1D
   0E53 75 E6 04           3116 	mov	_FMADRL,#0x04
   0E56 75 E5 04           3117 	mov	_FMDATA,#0x04
                           3118 ;	../fb_app_in8.c:866: WRITE_BYTE(0x01,0x05,0x70)	// Geräte Typ (2118) 7054h
   0E59 75 E7 1D           3119 	mov	_FMADRH,#0x1D
   0E5C 75 E6 05           3120 	mov	_FMADRL,#0x05
   0E5F 75 E5 70           3121 	mov	_FMDATA,#0x70
                           3122 ;	../fb_app_in8.c:867: WRITE_BYTE(0x01,0x06,0x54)  // 	"	"	"
   0E62 75 E7 1D           3123 	mov	_FMADRH,#0x1D
   0E65 75 E6 06           3124 	mov	_FMADRL,#0x06
   0E68 75 E5 54           3125 	mov	_FMDATA,#0x54
                           3126 ;	../fb_app_in8.c:868: WRITE_BYTE(0x01,0x07,0x02)	// Versionsnummer
   0E6B 75 E7 1D           3127 	mov	_FMADRH,#0x1D
   0E6E 75 E6 07           3128 	mov	_FMADRL,#0x07
   0E71 75 E5 02           3129 	mov	_FMDATA,#0x02
                           3130 ;	../fb_app_in8.c:869: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
   0E74 75 E7 1D           3131 	mov	_FMADRH,#0x1D
   0E77 75 E6 0C           3132 	mov	_FMADRL,#0x0C
   0E7A 75 E5 00           3133 	mov	_FMDATA,#0x00
                           3134 ;	../fb_app_in8.c:870: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
   0E7D 75 E7 1D           3135 	mov	_FMADRH,#0x1D
   0E80 75 E6 0D           3136 	mov	_FMADRL,#0x0D
   0E83 75 E5 FF           3137 	mov	_FMDATA,#0xFF
                           3138 ;	../fb_app_in8.c:871: WRITE_BYTE(0x01,0x12,0x84)	// COMMSTAB Pointer
   0E86 75 E7 1D           3139 	mov	_FMADRH,#0x1D
   0E89 75 E6 12           3140 	mov	_FMADRL,#0x12
   0E8C 75 E5 84           3141 	mov	_FMDATA,#0x84
                           3142 ;	../fb_app_in8.c:872: STOP_WRITECYCLE
   0E8F 75 E4 68           3143 	mov	_FMCON,#0x68
                           3144 ;	../fb_app_in8.c:875: EA=1;
   0E92 D2 AF              3145 	setb	_IEN0_7
   0E94 22                 3146 	ret
                           3147 	.area CSEG    (CODE)
                           3148 	.area CONST   (CODE)
                           3149 	.area XINIT   (CODE)
                           3150 	.area CABS    (ABS,CODE)
