                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
                              4 ; This file was generated Tue Aug  5 21:17:44 2014
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_rs
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _baud
                             13 	.globl _esc_char
                             14 	.globl _echo
                             15 	.globl _ga_db
                             16 	.globl _sga_l
                             17 	.globl _sga_h
                             18 	.globl _pa_l
                             19 	.globl _pa_h
                             20 	.globl _fm
                             21 	.globl _rs_send_s
                             22 	.globl _rs_send
                             23 	.globl _rs_send_dec
                             24 	.globl _P3_1
                             25 	.globl _P3_0
                             26 	.globl _P1_7
                             27 	.globl _P1_6
                             28 	.globl _P1_5
                             29 	.globl _P1_4
                             30 	.globl _P1_3
                             31 	.globl _P1_2
                             32 	.globl _P1_1
                             33 	.globl _P1_0
                             34 	.globl _P0_7
                             35 	.globl _P0_6
                             36 	.globl _P0_5
                             37 	.globl _P0_4
                             38 	.globl _P0_3
                             39 	.globl _P0_2
                             40 	.globl _P0_1
                             41 	.globl _P0_0
                             42 	.globl _I2CON_0
                             43 	.globl _I2CON_2
                             44 	.globl _I2CON_3
                             45 	.globl _I2CON_4
                             46 	.globl _I2CON_5
                             47 	.globl _I2CON_6
                             48 	.globl _SCON_7
                             49 	.globl _SCON_6
                             50 	.globl _SCON_5
                             51 	.globl _SCON_4
                             52 	.globl _SCON_3
                             53 	.globl _SCON_2
                             54 	.globl _SCON_1
                             55 	.globl _SCON_0
                             56 	.globl _IP0_0
                             57 	.globl _IP0_1
                             58 	.globl _IP0_2
                             59 	.globl _IP0_3
                             60 	.globl _IP0_4
                             61 	.globl _IP0_5
                             62 	.globl _IP0_6
                             63 	.globl _IP1_0
                             64 	.globl _IP1_1
                             65 	.globl _IP1_2
                             66 	.globl _IP1_6
                             67 	.globl _IEN1_0
                             68 	.globl _IEN1_1
                             69 	.globl _IEN1_2
                             70 	.globl _IEN0_0
                             71 	.globl _IEN0_1
                             72 	.globl _IEN0_2
                             73 	.globl _IEN0_3
                             74 	.globl _IEN0_4
                             75 	.globl _IEN0_5
                             76 	.globl _IEN0_6
                             77 	.globl _IEN0_7
                             78 	.globl _TCON_0
                             79 	.globl _TCON_1
                             80 	.globl _TCON_2
                             81 	.globl _TCON_3
                             82 	.globl _TCON_4
                             83 	.globl _TCON_5
                             84 	.globl _TCON_6
                             85 	.globl _TCON_7
                             86 	.globl _PSW_7
                             87 	.globl _PSW_6
                             88 	.globl _PSW_5
                             89 	.globl _PSW_4
                             90 	.globl _PSW_3
                             91 	.globl _PSW_2
                             92 	.globl _PSW_1
                             93 	.globl _PSW_0
                             94 	.globl _IEN1
                             95 	.globl _IP0H
                             96 	.globl _WFEED2
                             97 	.globl _WFEED1
                             98 	.globl _WDL
                             99 	.globl _WDCON
                            100 	.globl _TRIM
                            101 	.globl _TAMOD
                            102 	.globl _SSTAT
                            103 	.globl _RTCL
                            104 	.globl _RTCH
                            105 	.globl _RTCCON
                            106 	.globl _RSTSRC
                            107 	.globl _PT0AD
                            108 	.globl _PCONA
                            109 	.globl _P3M2
                            110 	.globl _P3M1
                            111 	.globl _P1M2
                            112 	.globl _P1M1
                            113 	.globl _P0M2
                            114 	.globl _P0M1
                            115 	.globl _KBPATN
                            116 	.globl _KBMASK
                            117 	.globl _KBCON
                            118 	.globl _IP1H
                            119 	.globl _IP1
                            120 	.globl _I2STAT
                            121 	.globl _I2SCLL
                            122 	.globl _I2SCLH
                            123 	.globl _I2DAT
                            124 	.globl _I2CON
                            125 	.globl _I2ADR
                            126 	.globl _FMDATA
                            127 	.globl _FMCON
                            128 	.globl _FMADRL
                            129 	.globl _FMADRH
                            130 	.globl _DIVM
                            131 	.globl _CMP2
                            132 	.globl _CMP1
                            133 	.globl _BRGCON
                            134 	.globl _BRGR1
                            135 	.globl _BRGR0
                            136 	.globl _SADEN
                            137 	.globl _SADDR
                            138 	.globl _AUXR1
                            139 	.globl _SBUF
                            140 	.globl _SCON
                            141 	.globl _IP0
                            142 	.globl _IEN0
                            143 	.globl _TH1
                            144 	.globl _TH0
                            145 	.globl _TL1
                            146 	.globl _TL0
                            147 	.globl _TMOD
                            148 	.globl _TCON
                            149 	.globl _PCON
                            150 	.globl _DPH
                            151 	.globl _DPL
                            152 	.globl _SP
                            153 	.globl _B
                            154 	.globl _ACC
                            155 	.globl _PSW
                            156 	.globl _P3
                            157 	.globl _P1
                            158 	.globl _P0
                            159 	.globl _rxledcount
                            160 	.globl _eibledcount
                            161 	.globl _ledcount
                            162 	.globl _pa_tmp
                            163 	.globl _groupadr
                            164 	.globl _rsinpos
                            165 	.globl _rsin
                            166 	.globl _build_tel
                            167 	.globl _gapos_in_gat
                            168 	.globl _send_obj_done
                            169 	.globl _write_value_req
                            170 	.globl _read_value_req
                            171 	.globl _save_ga
                            172 	.globl _tel_header
                            173 	.globl _convert_adr
                            174 	.globl _equal_pos
                            175 	.globl _serial_int
                            176 	.globl _send_ok
                            177 	.globl _set_filtermode
                            178 	.globl _restart_app
                            179 ;--------------------------------------------------------
                            180 ; special function registers
                            181 ;--------------------------------------------------------
                            182 	.area RSEG    (ABS,DATA)
   0000                     183 	.org 0x0000
                    0080    184 _P0	=	0x0080
                    0090    185 _P1	=	0x0090
                    00B0    186 _P3	=	0x00b0
                    00D0    187 _PSW	=	0x00d0
                    00E0    188 _ACC	=	0x00e0
                    00F0    189 _B	=	0x00f0
                    0081    190 _SP	=	0x0081
                    0082    191 _DPL	=	0x0082
                    0083    192 _DPH	=	0x0083
                    0087    193 _PCON	=	0x0087
                    0088    194 _TCON	=	0x0088
                    0089    195 _TMOD	=	0x0089
                    008A    196 _TL0	=	0x008a
                    008B    197 _TL1	=	0x008b
                    008C    198 _TH0	=	0x008c
                    008D    199 _TH1	=	0x008d
                    00A8    200 _IEN0	=	0x00a8
                    00B8    201 _IP0	=	0x00b8
                    0098    202 _SCON	=	0x0098
                    0099    203 _SBUF	=	0x0099
                    00A2    204 _AUXR1	=	0x00a2
                    00A9    205 _SADDR	=	0x00a9
                    00B9    206 _SADEN	=	0x00b9
                    00BE    207 _BRGR0	=	0x00be
                    00BF    208 _BRGR1	=	0x00bf
                    00BD    209 _BRGCON	=	0x00bd
                    00AC    210 _CMP1	=	0x00ac
                    00AD    211 _CMP2	=	0x00ad
                    0095    212 _DIVM	=	0x0095
                    00E7    213 _FMADRH	=	0x00e7
                    00E6    214 _FMADRL	=	0x00e6
                    00E4    215 _FMCON	=	0x00e4
                    00E5    216 _FMDATA	=	0x00e5
                    00DB    217 _I2ADR	=	0x00db
                    00D8    218 _I2CON	=	0x00d8
                    00DA    219 _I2DAT	=	0x00da
                    00DD    220 _I2SCLH	=	0x00dd
                    00DC    221 _I2SCLL	=	0x00dc
                    00D9    222 _I2STAT	=	0x00d9
                    00F8    223 _IP1	=	0x00f8
                    00F7    224 _IP1H	=	0x00f7
                    0094    225 _KBCON	=	0x0094
                    0086    226 _KBMASK	=	0x0086
                    0093    227 _KBPATN	=	0x0093
                    0084    228 _P0M1	=	0x0084
                    0085    229 _P0M2	=	0x0085
                    0091    230 _P1M1	=	0x0091
                    0092    231 _P1M2	=	0x0092
                    00B1    232 _P3M1	=	0x00b1
                    00B2    233 _P3M2	=	0x00b2
                    00B5    234 _PCONA	=	0x00b5
                    00F6    235 _PT0AD	=	0x00f6
                    00DF    236 _RSTSRC	=	0x00df
                    00D1    237 _RTCCON	=	0x00d1
                    00D2    238 _RTCH	=	0x00d2
                    00D3    239 _RTCL	=	0x00d3
                    00BA    240 _SSTAT	=	0x00ba
                    008F    241 _TAMOD	=	0x008f
                    0096    242 _TRIM	=	0x0096
                    00A7    243 _WDCON	=	0x00a7
                    00C1    244 _WDL	=	0x00c1
                    00C2    245 _WFEED1	=	0x00c2
                    00C3    246 _WFEED2	=	0x00c3
                    00B7    247 _IP0H	=	0x00b7
                    00E8    248 _IEN1	=	0x00e8
                            249 ;--------------------------------------------------------
                            250 ; special function bits
                            251 ;--------------------------------------------------------
                            252 	.area RSEG    (ABS,DATA)
   0000                     253 	.org 0x0000
                    00D0    254 _PSW_0	=	0x00d0
                    00D1    255 _PSW_1	=	0x00d1
                    00D2    256 _PSW_2	=	0x00d2
                    00D3    257 _PSW_3	=	0x00d3
                    00D4    258 _PSW_4	=	0x00d4
                    00D5    259 _PSW_5	=	0x00d5
                    00D6    260 _PSW_6	=	0x00d6
                    00D7    261 _PSW_7	=	0x00d7
                    008F    262 _TCON_7	=	0x008f
                    008E    263 _TCON_6	=	0x008e
                    008D    264 _TCON_5	=	0x008d
                    008C    265 _TCON_4	=	0x008c
                    008B    266 _TCON_3	=	0x008b
                    008A    267 _TCON_2	=	0x008a
                    0089    268 _TCON_1	=	0x0089
                    0088    269 _TCON_0	=	0x0088
                    00AF    270 _IEN0_7	=	0x00af
                    00AE    271 _IEN0_6	=	0x00ae
                    00AD    272 _IEN0_5	=	0x00ad
                    00AC    273 _IEN0_4	=	0x00ac
                    00AB    274 _IEN0_3	=	0x00ab
                    00AA    275 _IEN0_2	=	0x00aa
                    00A9    276 _IEN0_1	=	0x00a9
                    00A8    277 _IEN0_0	=	0x00a8
                    00EA    278 _IEN1_2	=	0x00ea
                    00E9    279 _IEN1_1	=	0x00e9
                    00E8    280 _IEN1_0	=	0x00e8
                    00FE    281 _IP1_6	=	0x00fe
                    00FA    282 _IP1_2	=	0x00fa
                    00F9    283 _IP1_1	=	0x00f9
                    00F8    284 _IP1_0	=	0x00f8
                    00BE    285 _IP0_6	=	0x00be
                    00BD    286 _IP0_5	=	0x00bd
                    00BC    287 _IP0_4	=	0x00bc
                    00BB    288 _IP0_3	=	0x00bb
                    00BA    289 _IP0_2	=	0x00ba
                    00B9    290 _IP0_1	=	0x00b9
                    00B8    291 _IP0_0	=	0x00b8
                    0098    292 _SCON_0	=	0x0098
                    0099    293 _SCON_1	=	0x0099
                    009A    294 _SCON_2	=	0x009a
                    009B    295 _SCON_3	=	0x009b
                    009C    296 _SCON_4	=	0x009c
                    009D    297 _SCON_5	=	0x009d
                    009E    298 _SCON_6	=	0x009e
                    009F    299 _SCON_7	=	0x009f
                    00DE    300 _I2CON_6	=	0x00de
                    00DD    301 _I2CON_5	=	0x00dd
                    00DC    302 _I2CON_4	=	0x00dc
                    00DB    303 _I2CON_3	=	0x00db
                    00DA    304 _I2CON_2	=	0x00da
                    00D8    305 _I2CON_0	=	0x00d8
                    0080    306 _P0_0	=	0x0080
                    0081    307 _P0_1	=	0x0081
                    0082    308 _P0_2	=	0x0082
                    0083    309 _P0_3	=	0x0083
                    0084    310 _P0_4	=	0x0084
                    0085    311 _P0_5	=	0x0085
                    0086    312 _P0_6	=	0x0086
                    0087    313 _P0_7	=	0x0087
                    0090    314 _P1_0	=	0x0090
                    0091    315 _P1_1	=	0x0091
                    0092    316 _P1_2	=	0x0092
                    0093    317 _P1_3	=	0x0093
                    0094    318 _P1_4	=	0x0094
                    0095    319 _P1_5	=	0x0095
                    0096    320 _P1_6	=	0x0096
                    0097    321 _P1_7	=	0x0097
                    00B0    322 _P3_0	=	0x00b0
                    00B1    323 _P3_1	=	0x00b1
                            324 ;--------------------------------------------------------
                            325 ; overlayable register banks
                            326 ;--------------------------------------------------------
                            327 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     328 	.ds 8
                            329 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     330 	.ds 8
                            331 ;--------------------------------------------------------
                            332 ; overlayable bit register bank
                            333 ;--------------------------------------------------------
                            334 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     335 bits:
   0023                     336 	.ds 1
                    8000    337 	b0 = bits[0]
                    8100    338 	b1 = bits[1]
                    8200    339 	b2 = bits[2]
                    8300    340 	b3 = bits[3]
                    8400    341 	b4 = bits[4]
                    8500    342 	b5 = bits[5]
                    8600    343 	b6 = bits[6]
                    8700    344 	b7 = bits[7]
                            345 ;--------------------------------------------------------
                            346 ; internal ram data
                            347 ;--------------------------------------------------------
                            348 	.area DSEG    (DATA)
   0024                     349 _rsin::
   0024                     350 	.ds 30
   0042                     351 _rsinpos::
   0042                     352 	.ds 1
   0043                     353 _groupadr::
   0043                     354 	.ds 2
   0045                     355 _pa_tmp::
   0045                     356 	.ds 2
   0047                     357 _ledcount::
   0047                     358 	.ds 1
   0048                     359 _eibledcount::
   0048                     360 	.ds 1
   0049                     361 _rxledcount::
   0049                     362 	.ds 1
                            363 ;--------------------------------------------------------
                            364 ; overlayable items in internal ram 
                            365 ;--------------------------------------------------------
                            366 	.area OSEG    (OVR,DATA)
                            367 ;--------------------------------------------------------
                            368 ; indirectly addressable internal ram data
                            369 ;--------------------------------------------------------
                            370 	.area ISEG    (DATA)
                            371 ;--------------------------------------------------------
                            372 ; absolute internal ram data
                            373 ;--------------------------------------------------------
                            374 	.area IABS    (ABS,DATA)
                            375 	.area IABS    (ABS,DATA)
                            376 ;--------------------------------------------------------
                            377 ; bit data
                            378 ;--------------------------------------------------------
                            379 	.area BSEG    (BIT)
                            380 ;--------------------------------------------------------
                            381 ; paged external ram data
                            382 ;--------------------------------------------------------
                            383 	.area PSEG    (PAG,XDATA)
                            384 ;--------------------------------------------------------
                            385 ; external ram data
                            386 ;--------------------------------------------------------
                            387 	.area XSEG    (XDATA)
                            388 ;--------------------------------------------------------
                            389 ; absolute external ram data
                            390 ;--------------------------------------------------------
                            391 	.area XABS    (ABS,XDATA)
                            392 ;--------------------------------------------------------
                            393 ; external initialized ram data
                            394 ;--------------------------------------------------------
                            395 	.area XISEG   (XDATA)
                            396 	.area HOME    (CODE)
                            397 	.area GSINIT0 (CODE)
                            398 	.area GSINIT1 (CODE)
                            399 	.area GSINIT2 (CODE)
                            400 	.area GSINIT3 (CODE)
                            401 	.area GSINIT4 (CODE)
                            402 	.area GSINIT5 (CODE)
                            403 	.area GSINIT  (CODE)
                            404 	.area GSFINAL (CODE)
                            405 	.area CSEG    (CODE)
                            406 ;--------------------------------------------------------
                            407 ; global & static initialisations
                            408 ;--------------------------------------------------------
                            409 	.area HOME    (CODE)
                            410 	.area GSINIT  (CODE)
                            411 	.area GSFINAL (CODE)
                            412 	.area GSINIT  (CODE)
                            413 ;	../fb_app_rs.c:26: unsigned int groupadr=0,pa_tmp;
   0084 E4                  414 	clr	a
   0085 F5 43               415 	mov	_groupadr,a
   0087 F5 44               416 	mov	(_groupadr + 1),a
                            417 ;--------------------------------------------------------
                            418 ; Home
                            419 ;--------------------------------------------------------
                            420 	.area HOME    (CODE)
                            421 	.area HOME    (CODE)
                            422 ;--------------------------------------------------------
                            423 ; code
                            424 ;--------------------------------------------------------
                            425 	.area CSEG    (CODE)
                            426 ;------------------------------------------------------------
                            427 ;Allocation info for local variables in function 'build_tel'
                            428 ;------------------------------------------------------------
                            429 ;objno                     Allocated to registers r7 
                            430 ;build_ok                  Allocated to registers 
                            431 ;value                     Allocated to registers r4 r7 
                            432 ;eis5temp                  Allocated to registers r7 r5 
                            433 ;exp                       Allocated to registers r6 r5 
                            434 ;temp                      Allocated to stack - _bp +1
                            435 ;d                         Allocated to registers r4 
                            436 ;value_pos                 Allocated to registers r5 
                            437 ;day                       Allocated to registers r6 
                            438 ;repeatflag                Allocated to registers b0 
                            439 ;sloc0                     Allocated to stack - _bp +17
                            440 ;sloc1                     Allocated to stack - _bp +5
                            441 ;sloc2                     Allocated to stack - _bp +20
                            442 ;sloc3                     Allocated to stack - _bp +7
                            443 ;sloc4                     Allocated to stack - _bp +23
                            444 ;------------------------------------------------------------
                            445 ;	../fb_app_rs.c:55: __bit build_tel(unsigned char objno)
                            446 ;	-----------------------------------------
                            447 ;	 function build_tel
                            448 ;	-----------------------------------------
   008C                     449 _build_tel:
                    0007    450 	ar7 = 0x07
                    0006    451 	ar6 = 0x06
                    0005    452 	ar5 = 0x05
                    0004    453 	ar4 = 0x04
                    0003    454 	ar3 = 0x03
                    0002    455 	ar2 = 0x02
                    0001    456 	ar1 = 0x01
                    0000    457 	ar0 = 0x00
   008C C0 10               458 	push	_bp
   008E E5 81               459 	mov	a,sp
   0090 F5 10               460 	mov	_bp,a
   0092 24 07               461 	add	a,#0x07
   0094 F5 81               462 	mov	sp,a
   0096 AF 82               463 	mov	r7,dpl
                            464 ;	../fb_app_rs.c:64: unsigned char day=0;//, length;
   0098 7E 00               465 	mov	r6,#0x00
                            466 ;	../fb_app_rs.c:68: repeatflag=objno&0x20;
   009A EF                  467 	mov	a,r7
   009B A2 E5               468 	mov	c,acc[5]
   009D E4                  469 	clr	a
   009E 33                  470 	rlc	a
   009F 24 FF               471 	add	a,#0xff
   00A1 92 18               472 	mov	b0,c
                            473 ;	../fb_app_rs.c:69: groupadr=convert_adr(6);
   00A3 75 82 06            474 	mov	dpl,#0x06
   00A6 C0 07               475 	push	ar7
   00A8 C0 06               476 	push	ar6
   00AA C0 23               477 	push	bits
   00AC 12 09 4A            478 	lcall	_convert_adr
   00AF 85 82 43            479 	mov	_groupadr,dpl
   00B2 85 83 44            480 	mov	(_groupadr + 1),dph
   00B5 D0 23               481 	pop	bits
                            482 ;	../fb_app_rs.c:70: value_pos=equal_pos()+1;
   00B7 C0 23               483 	push	bits
   00B9 12 0A 57            484 	lcall	_equal_pos
   00BC AD 82               485 	mov	r5,dpl
   00BE D0 23               486 	pop	bits
   00C0 D0 06               487 	pop	ar6
   00C2 D0 07               488 	pop	ar7
   00C4 0D                  489 	inc	r5
                            490 ;	../fb_app_rs.c:71: switch (objno)// entspricht in der rs soft dem eis type.
   00C5 EF                  491 	mov	a,r7
   00C6 24 EF               492 	add	a,#0xff - 0x10
   00C8 50 03               493 	jnc	00173$
   00CA 02 05 CE            494 	ljmp	00141$
   00CD                     495 00173$:
   00CD EF                  496 	mov	a,r7
   00CE 24 09               497 	add	a,#(00174$-3-.)
   00D0 83                  498 	movc	a,@a+pc
   00D1 C0 E0               499 	push	acc
   00D3 EF                  500 	mov	a,r7
   00D4 24 14               501 	add	a,#(00175$-3-.)
   00D6 83                  502 	movc	a,@a+pc
   00D7 C0 E0               503 	push	acc
   00D9 22                  504 	ret
   00DA                     505 00174$:
   00DA CE                  506 	.db	00141$
   00DB FC                  507 	.db	00101$
   00DC 2F                  508 	.db	00105$
   00DD 7A                  509 	.db	00109$
   00DE 89                  510 	.db	00110$
   00DF F8                  511 	.db	00111$
   00E0 A6                  512 	.db	00131$
   00E1 CE                  513 	.db	00141$
   00E2 CE                  514 	.db	00141$
   00E3 CE                  515 	.db	00141$
   00E4 CE                  516 	.db	00141$
   00E5 CE                  517 	.db	00141$
   00E6 CE                  518 	.db	00141$
   00E7 CE                  519 	.db	00141$
   00E8 26                  520 	.db	00135$
   00E9 3F                  521 	.db	00136$
   00EA A8                  522 	.db	00140$
   00EB                     523 00175$:
   00EB 05                  524 	.db	00141$>>8
   00EC 00                  525 	.db	00101$>>8
   00ED 01                  526 	.db	00105$>>8
   00EE 01                  527 	.db	00109$>>8
   00EF 01                  528 	.db	00110$>>8
   00F0 01                  529 	.db	00111$>>8
   00F1 04                  530 	.db	00131$>>8
   00F2 05                  531 	.db	00141$>>8
   00F3 05                  532 	.db	00141$>>8
   00F4 05                  533 	.db	00141$>>8
   00F5 05                  534 	.db	00141$>>8
   00F6 05                  535 	.db	00141$>>8
   00F7 05                  536 	.db	00141$>>8
   00F8 05                  537 	.db	00141$>>8
   00F9 05                  538 	.db	00135$>>8
   00FA 05                  539 	.db	00136$>>8
   00FB 05                  540 	.db	00140$>>8
                            541 ;	../fb_app_rs.c:76: case 1:// EIS1
   00FC                     542 00101$:
                            543 ;	../fb_app_rs.c:77: tel_header(groupadr, 1);
   00FC C0 23               544 	push	bits
   00FE 74 01               545 	mov	a,#0x01
   0100 C0 E0               546 	push	acc
   0102 85 43 82            547 	mov	dpl,_groupadr
   0105 85 44 83            548 	mov	dph,(_groupadr + 1)
   0108 12 09 18            549 	lcall	_tel_header
   010B 15 81               550 	dec	sp
   010D D0 23               551 	pop	bits
                            552 ;	../fb_app_rs.c:78: if (rsin[rsinpos-2]=='1') value=1;
   010F E5 42               553 	mov	a,_rsinpos
   0111 24 FE               554 	add	a,#0xFE
   0113 24 24               555 	add	a,#_rsin
   0115 F9                  556 	mov	r1,a
   0116 87 07               557 	mov	ar7,@r1
   0118 BF 31 06            558 	cjne	r7,#0x31,00103$
   011B 7C 01               559 	mov	r4,#0x01
   011D 7F 00               560 	mov	r7,#0x00
   011F 80 04               561 	sjmp	00104$
   0121                     562 00103$:
                            563 ;	../fb_app_rs.c:79: else value=0;
   0121 7C 00               564 	mov	r4,#0x00
   0123 7F 00               565 	mov	r7,#0x00
   0125                     566 00104$:
                            567 ;	../fb_app_rs.c:80: telegramm[7]=0x80+value;
   0125 8C 03               568 	mov	ar3,r4
   0127 74 80               569 	mov	a,#0x80
   0129 2B                  570 	add	a,r3
   012A F5 58               571 	mov	(_telegramm + 0x0007),a
                            572 ;	../fb_app_rs.c:82: break;	
   012C 02 05 CE            573 	ljmp	00141$
                            574 ;	../fb_app_rs.c:83: case 2:// EIS2
   012F                     575 00105$:
                            576 ;	../fb_app_rs.c:84: tel_header(groupadr, 1);
   012F C0 23               577 	push	bits
   0131 74 01               578 	mov	a,#0x01
   0133 C0 E0               579 	push	acc
   0135 85 43 82            580 	mov	dpl,_groupadr
   0138 85 44 83            581 	mov	dph,(_groupadr + 1)
   013B 12 09 18            582 	lcall	_tel_header
   013E 15 81               583 	dec	sp
   0140 D0 23               584 	pop	bits
                            585 ;	../fb_app_rs.c:85: if (rsin[rsinpos-3]=='u') value=0x88;
   0142 E5 42               586 	mov	a,_rsinpos
   0144 24 FD               587 	add	a,#0xFD
   0146 24 24               588 	add	a,#_rsin
   0148 F9                  589 	mov	r1,a
   0149 87 03               590 	mov	ar3,@r1
   014B BB 75 06            591 	cjne	r3,#0x75,00107$
   014E 7C 88               592 	mov	r4,#0x88
   0150 7F 00               593 	mov	r7,#0x00
   0152 80 04               594 	sjmp	00108$
   0154                     595 00107$:
                            596 ;	../fb_app_rs.c:86: else value=0x80;
   0154 7C 80               597 	mov	r4,#0x80
   0156 7F 00               598 	mov	r7,#0x00
   0158                     599 00108$:
                            600 ;	../fb_app_rs.c:87: value+=((rsin[rsinpos-2]-48));
   0158 E5 42               601 	mov	a,_rsinpos
   015A 24 FE               602 	add	a,#0xFE
   015C 24 24               603 	add	a,#_rsin
   015E F9                  604 	mov	r1,a
   015F 87 03               605 	mov	ar3,@r1
   0161 7A 00               606 	mov	r2,#0x00
   0163 EB                  607 	mov	a,r3
   0164 24 D0               608 	add	a,#0xD0
   0166 FB                  609 	mov	r3,a
   0167 EA                  610 	mov	a,r2
   0168 34 FF               611 	addc	a,#0xFF
   016A FA                  612 	mov	r2,a
   016B EB                  613 	mov	a,r3
   016C 2C                  614 	add	a,r4
   016D FC                  615 	mov	r4,a
   016E EA                  616 	mov	a,r2
   016F 3F                  617 	addc	a,r7
   0170 FF                  618 	mov	r7,a
                            619 ;	../fb_app_rs.c:88: telegramm[7]=value&0xFF;
   0171 8C 02               620 	mov	ar2,r4
   0173 7B 00               621 	mov	r3,#0x00
   0175 8A 58               622 	mov	(_telegramm + 0x0007),r2
                            623 ;	../fb_app_rs.c:89: break;	
   0177 02 05 CE            624 	ljmp	00141$
                            625 ;	../fb_app_rs.c:90: case 3:// EIS3
   017A                     626 00109$:
                            627 ;	../fb_app_rs.c:91: day=(rsin[value_pos]-48)<<5;
   017A ED                  628 	mov	a,r5
   017B 24 24               629 	add	a,#_rsin
   017D F9                  630 	mov	r1,a
   017E E7                  631 	mov	a,@r1
   017F 24 D0               632 	add	a,#0xD0
   0181 FB                  633 	mov	r3,a
   0182 C4                  634 	swap	a
   0183 23                  635 	rl	a
   0184 54 E0               636 	anl	a,#0xE0
   0186 FE                  637 	mov	r6,a
                            638 ;	../fb_app_rs.c:92: value_pos+=2;
   0187 0D                  639 	inc	r5
   0188 0D                  640 	inc	r5
                            641 ;	../fb_app_rs.c:93: case 4:// EIS4	
   0189                     642 00110$:
                            643 ;	../fb_app_rs.c:94: tel_header(groupadr, 4);
   0189 C0 06               644 	push	ar6
   018B C0 05               645 	push	ar5
   018D C0 23               646 	push	bits
   018F 74 04               647 	mov	a,#0x04
   0191 C0 E0               648 	push	acc
   0193 85 43 82            649 	mov	dpl,_groupadr
   0196 85 44 83            650 	mov	dph,(_groupadr + 1)
   0199 12 09 18            651 	lcall	_tel_header
   019C 15 81               652 	dec	sp
   019E D0 23               653 	pop	bits
   01A0 D0 05               654 	pop	ar5
   01A2 D0 06               655 	pop	ar6
                            656 ;	../fb_app_rs.c:95: telegramm[7]=0x80;
   01A4 75 58 80            657 	mov	(_telegramm + 0x0007),#0x80
                            658 ;	../fb_app_rs.c:96: telegramm[8]=((rsin[value_pos]-48)*10)+(rsin[value_pos+1]-48)+day;
   01A7 ED                  659 	mov	a,r5
   01A8 24 24               660 	add	a,#_rsin
   01AA F9                  661 	mov	r1,a
   01AB E7                  662 	mov	a,@r1
   01AC 24 D0               663 	add	a,#0xD0
   01AE 75 F0 0A            664 	mov	b,#0x0A
   01B1 A4                  665 	mul	ab
   01B2 FB                  666 	mov	r3,a
   01B3 ED                  667 	mov	a,r5
   01B4 04                  668 	inc	a
   01B5 24 24               669 	add	a,#_rsin
   01B7 F9                  670 	mov	r1,a
   01B8 E7                  671 	mov	a,@r1
   01B9 FA                  672 	mov	r2,a
   01BA 24 D0               673 	add	a,#0xD0
   01BC 2B                  674 	add	a,r3
   01BD 2E                  675 	add	a,r6
   01BE F5 59               676 	mov	(_telegramm + 0x0008),a
                            677 ;	../fb_app_rs.c:97: telegramm[9]=((rsin[value_pos+3]-48)*10)+(rsin[value_pos+4]-48);
   01C0 74 03               678 	mov	a,#0x03
   01C2 2D                  679 	add	a,r5
   01C3 24 24               680 	add	a,#_rsin
   01C5 F9                  681 	mov	r1,a
   01C6 E7                  682 	mov	a,@r1
   01C7 24 D0               683 	add	a,#0xD0
   01C9 75 F0 0A            684 	mov	b,#0x0A
   01CC A4                  685 	mul	ab
   01CD FE                  686 	mov	r6,a
   01CE 74 04               687 	mov	a,#0x04
   01D0 2D                  688 	add	a,r5
   01D1 24 24               689 	add	a,#_rsin
   01D3 F9                  690 	mov	r1,a
   01D4 E7                  691 	mov	a,@r1
   01D5 24 D0               692 	add	a,#0xD0
   01D7 2E                  693 	add	a,r6
   01D8 F5 5A               694 	mov	(_telegramm + 0x0009),a
                            695 ;	../fb_app_rs.c:98: telegramm[10]=((rsin[value_pos+6]-48)*10)+(rsin[value_pos+7]-48);
   01DA 74 06               696 	mov	a,#0x06
   01DC 2D                  697 	add	a,r5
   01DD 24 24               698 	add	a,#_rsin
   01DF F9                  699 	mov	r1,a
   01E0 E7                  700 	mov	a,@r1
   01E1 24 D0               701 	add	a,#0xD0
   01E3 75 F0 0A            702 	mov	b,#0x0A
   01E6 A4                  703 	mul	ab
   01E7 FE                  704 	mov	r6,a
   01E8 74 07               705 	mov	a,#0x07
   01EA 2D                  706 	add	a,r5
   01EB 24 24               707 	add	a,#_rsin
   01ED F9                  708 	mov	r1,a
   01EE E7                  709 	mov	a,@r1
   01EF FB                  710 	mov	r3,a
   01F0 24 D0               711 	add	a,#0xD0
   01F2 2E                  712 	add	a,r6
   01F3 F5 5B               713 	mov	(_telegramm + 0x000a),a
                            714 ;	../fb_app_rs.c:99: break;
   01F5 02 05 CE            715 	ljmp	00141$
                            716 ;	../fb_app_rs.c:107: */	case 5://
   01F8                     717 00111$:
                            718 ;	../fb_app_rs.c:108: tel_header(groupadr, 3);
   01F8 C0 05               719 	push	ar5
   01FA C0 23               720 	push	bits
   01FC 74 03               721 	mov	a,#0x03
   01FE C0 E0               722 	push	acc
   0200 85 43 82            723 	mov	dpl,_groupadr
   0203 85 44 83            724 	mov	dph,(_groupadr + 1)
   0206 12 09 18            725 	lcall	_tel_header
   0209 15 81               726 	dec	sp
   020B D0 23               727 	pop	bits
   020D D0 05               728 	pop	ar5
                            729 ;	../fb_app_rs.c:109: telegramm[7]=0x80;
   020F 75 58 80            730 	mov	(_telegramm + 0x0007),#0x80
                            731 ;	../fb_app_rs.c:111: if(rsin[value_pos]<48 || rsin[value_pos]>57) d=value_pos+1; else d=value_pos;	// falls Vorzeichen
   0212 ED                  732 	mov	a,r5
   0213 24 24               733 	add	a,#_rsin
   0215 F9                  734 	mov	r1,a
   0216 87 07               735 	mov	ar7,@r1
   0218 BF 30 00            736 	cjne	r7,#0x30,00180$
   021B                     737 00180$:
   021B 40 05               738 	jc	00112$
   021D EF                  739 	mov	a,r7
   021E 24 C6               740 	add	a,#0xff - 0x39
   0220 50 05               741 	jnc	00113$
   0222                     742 00112$:
   0222 ED                  743 	mov	a,r5
   0223 04                  744 	inc	a
   0224 FC                  745 	mov	r4,a
   0225 80 02               746 	sjmp	00114$
   0227                     747 00113$:
   0227 8D 04               748 	mov	ar4,r5
   0229                     749 00114$:
                            750 ;	../fb_app_rs.c:114: temp=0;
   0229 A8 10               751 	mov	r0,_bp
   022B 08                  752 	inc	r0
   022C E4                  753 	clr	a
   022D F6                  754 	mov	@r0,a
   022E 08                  755 	inc	r0
   022F F6                  756 	mov	@r0,a
   0230 08                  757 	inc	r0
   0231 F6                  758 	mov	@r0,a
   0232 08                  759 	inc	r0
   0233 F6                  760 	mov	@r0,a
                            761 ;	../fb_app_rs.c:115: while (d<(rsinpos-1) && rsin[d]!=0x2E && rsin[d]!=0x2C) {
   0234 E5 10               762 	mov	a,_bp
   0236 24 07               763 	add	a,#0x07
   0238 F8                  764 	mov	r0,a
   0239 A6 04               765 	mov	@r0,ar4
   023B                     766 00118$:
   023B E5 10               767 	mov	a,_bp
   023D 24 05               768 	add	a,#0x05
   023F F8                  769 	mov	r0,a
   0240 A6 42               770 	mov	@r0,_rsinpos
   0242 08                  771 	inc	r0
   0243 76 00               772 	mov	@r0,#0x00
   0245 E5 10               773 	mov	a,_bp
   0247 24 05               774 	add	a,#0x05
   0249 F8                  775 	mov	r0,a
   024A E6                  776 	mov	a,@r0
   024B 24 FF               777 	add	a,#0xFF
   024D FE                  778 	mov	r6,a
   024E 08                  779 	inc	r0
   024F E6                  780 	mov	a,@r0
   0250 34 FF               781 	addc	a,#0xFF
   0252 FD                  782 	mov	r5,a
   0253 E5 10               783 	mov	a,_bp
   0255 24 07               784 	add	a,#0x07
   0257 F8                  785 	mov	r0,a
   0258 86 02               786 	mov	ar2,@r0
   025A 7B 00               787 	mov	r3,#0x00
   025C C3                  788 	clr	c
   025D EA                  789 	mov	a,r2
   025E 9E                  790 	subb	a,r6
   025F EB                  791 	mov	a,r3
   0260 64 80               792 	xrl	a,#0x80
   0262 8D F0               793 	mov	b,r5
   0264 63 F0 80            794 	xrl	b,#0x80
   0267 95 F0               795 	subb	a,b
   0269 40 03               796 	jc	00183$
   026B 02 02 F1            797 	ljmp	00120$
   026E                     798 00183$:
   026E E5 10               799 	mov	a,_bp
   0270 24 07               800 	add	a,#0x07
   0272 F8                  801 	mov	r0,a
   0273 E6                  802 	mov	a,@r0
   0274 24 24               803 	add	a,#_rsin
   0276 F9                  804 	mov	r1,a
   0277 87 06               805 	mov	ar6,@r1
   0279 BE 2E 02            806 	cjne	r6,#0x2E,00184$
   027C 80 73               807 	sjmp	00120$
   027E                     808 00184$:
   027E BE 2C 02            809 	cjne	r6,#0x2C,00185$
   0281 80 6E               810 	sjmp	00120$
   0283                     811 00185$:
                            812 ;	../fb_app_rs.c:116: temp=temp*10;
   0283 C0 07               813 	push	ar7
   0285 C0 06               814 	push	ar6
   0287 C0 23               815 	push	bits
   0289 A8 10               816 	mov	r0,_bp
   028B 08                  817 	inc	r0
   028C E6                  818 	mov	a,@r0
   028D C0 E0               819 	push	acc
   028F 08                  820 	inc	r0
   0290 E6                  821 	mov	a,@r0
   0291 C0 E0               822 	push	acc
   0293 08                  823 	inc	r0
   0294 E6                  824 	mov	a,@r0
   0295 C0 E0               825 	push	acc
   0297 08                  826 	inc	r0
   0298 E6                  827 	mov	a,@r0
   0299 C0 E0               828 	push	acc
   029B 90 00 0A            829 	mov	dptr,#(0x0A&0x00ff)
   029E E4                  830 	clr	a
   029F F5 F0               831 	mov	b,a
   02A1 12 1B 8F            832 	lcall	__mullong
   02A4 AD 82               833 	mov	r5,dpl
   02A6 AC 83               834 	mov	r4,dph
   02A8 AB F0               835 	mov	r3,b
   02AA FA                  836 	mov	r2,a
   02AB E5 81               837 	mov	a,sp
   02AD 24 FC               838 	add	a,#0xfc
   02AF F5 81               839 	mov	sp,a
   02B1 D0 23               840 	pop	bits
   02B3 D0 06               841 	pop	ar6
   02B5 D0 07               842 	pop	ar7
   02B7 A8 10               843 	mov	r0,_bp
   02B9 08                  844 	inc	r0
   02BA A6 05               845 	mov	@r0,ar5
   02BC 08                  846 	inc	r0
   02BD A6 04               847 	mov	@r0,ar4
   02BF 08                  848 	inc	r0
   02C0 A6 03               849 	mov	@r0,ar3
   02C2 08                  850 	inc	r0
   02C3 A6 02               851 	mov	@r0,ar2
                            852 ;	../fb_app_rs.c:117: temp=temp+(rsin[d]-48);
   02C5 8E 03               853 	mov	ar3,r6
   02C7 7E 00               854 	mov	r6,#0x00
   02C9 EB                  855 	mov	a,r3
   02CA 24 D0               856 	add	a,#0xD0
   02CC FB                  857 	mov	r3,a
   02CD EE                  858 	mov	a,r6
   02CE 34 FF               859 	addc	a,#0xFF
   02D0 FE                  860 	mov	r6,a
   02D1 33                  861 	rlc	a
   02D2 95 E0               862 	subb	a,acc
   02D4 FD                  863 	mov	r5,a
   02D5 FC                  864 	mov	r4,a
   02D6 A8 10               865 	mov	r0,_bp
   02D8 08                  866 	inc	r0
   02D9 EB                  867 	mov	a,r3
   02DA 26                  868 	add	a,@r0
   02DB F6                  869 	mov	@r0,a
   02DC EE                  870 	mov	a,r6
   02DD 08                  871 	inc	r0
   02DE 36                  872 	addc	a,@r0
   02DF F6                  873 	mov	@r0,a
   02E0 ED                  874 	mov	a,r5
   02E1 08                  875 	inc	r0
   02E2 36                  876 	addc	a,@r0
   02E3 F6                  877 	mov	@r0,a
   02E4 EC                  878 	mov	a,r4
   02E5 08                  879 	inc	r0
   02E6 36                  880 	addc	a,@r0
   02E7 F6                  881 	mov	@r0,a
                            882 ;	../fb_app_rs.c:118: d++;
   02E8 E5 10               883 	mov	a,_bp
   02EA 24 07               884 	add	a,#0x07
   02EC F8                  885 	mov	r0,a
   02ED 06                  886 	inc	@r0
   02EE 02 02 3B            887 	ljmp	00118$
   02F1                     888 00120$:
                            889 ;	../fb_app_rs.c:120: d++;
   02F1 E5 10               890 	mov	a,_bp
   02F3 24 07               891 	add	a,#0x07
   02F5 F8                  892 	mov	r0,a
   02F6 E6                  893 	mov	a,@r0
   02F7 04                  894 	inc	a
   02F8 FC                  895 	mov	r4,a
                            896 ;	../fb_app_rs.c:121: temp=temp*10;
   02F9 C0 07               897 	push	ar7
   02FB C0 04               898 	push	ar4
   02FD C0 23               899 	push	bits
   02FF A8 10               900 	mov	r0,_bp
   0301 08                  901 	inc	r0
   0302 E6                  902 	mov	a,@r0
   0303 C0 E0               903 	push	acc
   0305 08                  904 	inc	r0
   0306 E6                  905 	mov	a,@r0
   0307 C0 E0               906 	push	acc
   0309 08                  907 	inc	r0
   030A E6                  908 	mov	a,@r0
   030B C0 E0               909 	push	acc
   030D 08                  910 	inc	r0
   030E E6                  911 	mov	a,@r0
   030F C0 E0               912 	push	acc
   0311 90 00 0A            913 	mov	dptr,#(0x0A&0x00ff)
   0314 E4                  914 	clr	a
   0315 F5 F0               915 	mov	b,a
   0317 12 1B 8F            916 	lcall	__mullong
   031A AE 82               917 	mov	r6,dpl
   031C AD 83               918 	mov	r5,dph
   031E AB F0               919 	mov	r3,b
   0320 FA                  920 	mov	r2,a
   0321 E5 81               921 	mov	a,sp
   0323 24 FC               922 	add	a,#0xfc
   0325 F5 81               923 	mov	sp,a
   0327 D0 23               924 	pop	bits
   0329 D0 04               925 	pop	ar4
   032B D0 07               926 	pop	ar7
   032D A8 10               927 	mov	r0,_bp
   032F 08                  928 	inc	r0
   0330 A6 06               929 	mov	@r0,ar6
   0332 08                  930 	inc	r0
   0333 A6 05               931 	mov	@r0,ar5
   0335 08                  932 	inc	r0
   0336 A6 03               933 	mov	@r0,ar3
   0338 08                  934 	inc	r0
   0339 A6 02               935 	mov	@r0,ar2
                            936 ;	../fb_app_rs.c:122: if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//erste Stelle nach dem Komma
   033B E5 10               937 	mov	a,_bp
   033D 24 05               938 	add	a,#0x05
   033F F8                  939 	mov	r0,a
   0340 E6                  940 	mov	a,@r0
   0341 24 FF               941 	add	a,#0xFF
   0343 FD                  942 	mov	r5,a
   0344 08                  943 	inc	r0
   0345 E6                  944 	mov	a,@r0
   0346 34 FF               945 	addc	a,#0xFF
   0348 FB                  946 	mov	r3,a
   0349 8C 02               947 	mov	ar2,r4
   034B 7E 00               948 	mov	r6,#0x00
   034D C3                  949 	clr	c
   034E EA                  950 	mov	a,r2
   034F 9D                  951 	subb	a,r5
   0350 EE                  952 	mov	a,r6
   0351 64 80               953 	xrl	a,#0x80
   0353 8B F0               954 	mov	b,r3
   0355 63 F0 80            955 	xrl	b,#0x80
   0358 95 F0               956 	subb	a,b
   035A 50 27               957 	jnc	00122$
   035C EC                  958 	mov	a,r4
   035D 24 24               959 	add	a,#_rsin
   035F F9                  960 	mov	r1,a
   0360 87 06               961 	mov	ar6,@r1
   0362 7B 00               962 	mov	r3,#0x00
   0364 EE                  963 	mov	a,r6
   0365 24 D0               964 	add	a,#0xD0
   0367 FE                  965 	mov	r6,a
   0368 EB                  966 	mov	a,r3
   0369 34 FF               967 	addc	a,#0xFF
   036B FB                  968 	mov	r3,a
   036C 33                  969 	rlc	a
   036D 95 E0               970 	subb	a,acc
   036F FD                  971 	mov	r5,a
   0370 FA                  972 	mov	r2,a
   0371 A8 10               973 	mov	r0,_bp
   0373 08                  974 	inc	r0
   0374 EE                  975 	mov	a,r6
   0375 26                  976 	add	a,@r0
   0376 F6                  977 	mov	@r0,a
   0377 EB                  978 	mov	a,r3
   0378 08                  979 	inc	r0
   0379 36                  980 	addc	a,@r0
   037A F6                  981 	mov	@r0,a
   037B ED                  982 	mov	a,r5
   037C 08                  983 	inc	r0
   037D 36                  984 	addc	a,@r0
   037E F6                  985 	mov	@r0,a
   037F EA                  986 	mov	a,r2
   0380 08                  987 	inc	r0
   0381 36                  988 	addc	a,@r0
   0382 F6                  989 	mov	@r0,a
   0383                     990 00122$:
                            991 ;	../fb_app_rs.c:123: d++;
   0383 0C                  992 	inc	r4
                            993 ;	../fb_app_rs.c:124: temp=temp*10;
   0384 C0 07               994 	push	ar7
   0386 C0 04               995 	push	ar4
   0388 C0 23               996 	push	bits
   038A A8 10               997 	mov	r0,_bp
   038C 08                  998 	inc	r0
   038D E6                  999 	mov	a,@r0
   038E C0 E0              1000 	push	acc
   0390 08                 1001 	inc	r0
   0391 E6                 1002 	mov	a,@r0
   0392 C0 E0              1003 	push	acc
   0394 08                 1004 	inc	r0
   0395 E6                 1005 	mov	a,@r0
   0396 C0 E0              1006 	push	acc
   0398 08                 1007 	inc	r0
   0399 E6                 1008 	mov	a,@r0
   039A C0 E0              1009 	push	acc
   039C 90 00 0A           1010 	mov	dptr,#(0x0A&0x00ff)
   039F E4                 1011 	clr	a
   03A0 F5 F0              1012 	mov	b,a
   03A2 12 1B 8F           1013 	lcall	__mullong
   03A5 AE 82              1014 	mov	r6,dpl
   03A7 AD 83              1015 	mov	r5,dph
   03A9 AB F0              1016 	mov	r3,b
   03AB FA                 1017 	mov	r2,a
   03AC E5 81              1018 	mov	a,sp
   03AE 24 FC              1019 	add	a,#0xfc
   03B0 F5 81              1020 	mov	sp,a
   03B2 D0 23              1021 	pop	bits
   03B4 D0 04              1022 	pop	ar4
   03B6 D0 07              1023 	pop	ar7
   03B8 A8 10              1024 	mov	r0,_bp
   03BA 08                 1025 	inc	r0
   03BB A6 06              1026 	mov	@r0,ar6
   03BD 08                 1027 	inc	r0
   03BE A6 05              1028 	mov	@r0,ar5
   03C0 08                 1029 	inc	r0
   03C1 A6 03              1030 	mov	@r0,ar3
   03C3 08                 1031 	inc	r0
   03C4 A6 02              1032 	mov	@r0,ar2
                           1033 ;	../fb_app_rs.c:125: if(d<(rsinpos-1))temp=temp+(rsin[d]-48);//zweite Stelle nach dem Komma gen
   03C6 E5 10              1034 	mov	a,_bp
   03C8 24 05              1035 	add	a,#0x05
   03CA F8                 1036 	mov	r0,a
   03CB E6                 1037 	mov	a,@r0
   03CC 24 FF              1038 	add	a,#0xFF
   03CE FD                 1039 	mov	r5,a
   03CF 08                 1040 	inc	r0
   03D0 E6                 1041 	mov	a,@r0
   03D1 34 FF              1042 	addc	a,#0xFF
   03D3 FB                 1043 	mov	r3,a
   03D4 8C 02              1044 	mov	ar2,r4
   03D6 7E 00              1045 	mov	r6,#0x00
   03D8 C3                 1046 	clr	c
   03D9 EA                 1047 	mov	a,r2
   03DA 9D                 1048 	subb	a,r5
   03DB EE                 1049 	mov	a,r6
   03DC 64 80              1050 	xrl	a,#0x80
   03DE 8B F0              1051 	mov	b,r3
   03E0 63 F0 80           1052 	xrl	b,#0x80
   03E3 95 F0              1053 	subb	a,b
   03E5 50 27              1054 	jnc	00161$
   03E7 EC                 1055 	mov	a,r4
   03E8 24 24              1056 	add	a,#_rsin
   03EA F9                 1057 	mov	r1,a
   03EB 87 06              1058 	mov	ar6,@r1
   03ED 7B 00              1059 	mov	r3,#0x00
   03EF EE                 1060 	mov	a,r6
   03F0 24 D0              1061 	add	a,#0xD0
   03F2 FE                 1062 	mov	r6,a
   03F3 EB                 1063 	mov	a,r3
   03F4 34 FF              1064 	addc	a,#0xFF
   03F6 FB                 1065 	mov	r3,a
   03F7 33                 1066 	rlc	a
   03F8 95 E0              1067 	subb	a,acc
   03FA FD                 1068 	mov	r5,a
   03FB FC                 1069 	mov	r4,a
   03FC A8 10              1070 	mov	r0,_bp
   03FE 08                 1071 	inc	r0
   03FF EE                 1072 	mov	a,r6
   0400 26                 1073 	add	a,@r0
   0401 F6                 1074 	mov	@r0,a
   0402 EB                 1075 	mov	a,r3
   0403 08                 1076 	inc	r0
   0404 36                 1077 	addc	a,@r0
   0405 F6                 1078 	mov	@r0,a
   0406 ED                 1079 	mov	a,r5
   0407 08                 1080 	inc	r0
   0408 36                 1081 	addc	a,@r0
   0409 F6                 1082 	mov	@r0,a
   040A EC                 1083 	mov	a,r4
   040B 08                 1084 	inc	r0
   040C 36                 1085 	addc	a,@r0
   040D F6                 1086 	mov	@r0,a
                           1087 ;	../fb_app_rs.c:128: while(temp > 0x07FF) {
   040E                    1088 00161$:
   040E 7E 00              1089 	mov	r6,#0x00
   0410 7D 00              1090 	mov	r5,#0x00
   0412                    1091 00125$:
   0412 A8 10              1092 	mov	r0,_bp
   0414 08                 1093 	inc	r0
   0415 08                 1094 	inc	r0
   0416 E6                 1095 	mov	a,@r0
   0417 54 F8              1096 	anl	a,#0xF8
   0419 70 08              1097 	jnz	00188$
   041B 08                 1098 	inc	r0
   041C E6                 1099 	mov	a,@r0
   041D 70 04              1100 	jnz	00188$
   041F 08                 1101 	inc	r0
   0420 E6                 1102 	mov	a,@r0
   0421 60 1C              1103 	jz	00127$
   0423                    1104 00188$:
                           1105 ;	../fb_app_rs.c:129: temp=temp>>1;
   0423 A8 10              1106 	mov	r0,_bp
   0425 08                 1107 	inc	r0
   0426 08                 1108 	inc	r0
   0427 08                 1109 	inc	r0
   0428 08                 1110 	inc	r0
   0429 E6                 1111 	mov	a,@r0
   042A C3                 1112 	clr	c
   042B 13                 1113 	rrc	a
   042C F6                 1114 	mov	@r0,a
   042D 18                 1115 	dec	r0
   042E E6                 1116 	mov	a,@r0
   042F 13                 1117 	rrc	a
   0430 F6                 1118 	mov	@r0,a
   0431 18                 1119 	dec	r0
   0432 E6                 1120 	mov	a,@r0
   0433 13                 1121 	rrc	a
   0434 F6                 1122 	mov	@r0,a
   0435 18                 1123 	dec	r0
   0436 E6                 1124 	mov	a,@r0
   0437 13                 1125 	rrc	a
   0438 F6                 1126 	mov	@r0,a
                           1127 ;	../fb_app_rs.c:130: exp=exp + (0x800);
   0439 74 08              1128 	mov	a,#0x08
   043B 2D                 1129 	add	a,r5
   043C FD                 1130 	mov	r5,a
   043D 80 D3              1131 	sjmp	00125$
   043F                    1132 00127$:
                           1133 ;	../fb_app_rs.c:132: if (rsin[value_pos]=='-') {
   043F BF 2D 3D           1134 	cjne	r7,#0x2D,00129$
                           1135 ;	../fb_app_rs.c:133: temp=(0x7FF-temp)+1;
   0442 A8 10              1136 	mov	r0,_bp
   0444 08                 1137 	inc	r0
   0445 E4                 1138 	clr	a
   0446 C3                 1139 	clr	c
   0447 96                 1140 	subb	a,@r0
   0448 F6                 1141 	mov	@r0,a
   0449 74 08              1142 	mov	a,#0x08
   044B 08                 1143 	inc	r0
   044C 96                 1144 	subb	a,@r0
   044D F6                 1145 	mov	@r0,a
   044E E4                 1146 	clr	a
   044F 08                 1147 	inc	r0
   0450 96                 1148 	subb	a,@r0
   0451 F6                 1149 	mov	@r0,a
   0452 E4                 1150 	clr	a
   0453 08                 1151 	inc	r0
   0454 96                 1152 	subb	a,@r0
   0455 F6                 1153 	mov	@r0,a
                           1154 ;	../fb_app_rs.c:134: eis5temp=temp+exp;
   0456 8E 07              1155 	mov	ar7,r6
   0458 ED                 1156 	mov	a,r5
   0459 FC                 1157 	mov	r4,a
   045A 33                 1158 	rlc	a
   045B 95 E0              1159 	subb	a,acc
   045D FB                 1160 	mov	r3,a
   045E FA                 1161 	mov	r2,a
   045F A8 10              1162 	mov	r0,_bp
   0461 08                 1163 	inc	r0
   0462 EF                 1164 	mov	a,r7
   0463 26                 1165 	add	a,@r0
   0464 FF                 1166 	mov	r7,a
   0465 EC                 1167 	mov	a,r4
   0466 08                 1168 	inc	r0
   0467 36                 1169 	addc	a,@r0
   0468 FC                 1170 	mov	r4,a
   0469 EB                 1171 	mov	a,r3
   046A 08                 1172 	inc	r0
   046B 36                 1173 	addc	a,@r0
   046C EA                 1174 	mov	a,r2
   046D 08                 1175 	inc	r0
   046E 36                 1176 	addc	a,@r0
   046F 8C 05              1177 	mov	ar5,r4
                           1178 ;	../fb_app_rs.c:135: eis5temp+=0x8000;
   0471 8F 02              1179 	mov	ar2,r7
   0473 8D 06              1180 	mov	ar6,r5
   0475 74 80              1181 	mov	a,#0x80
   0477 2E                 1182 	add	a,r6
   0478 FE                 1183 	mov	r6,a
   0479 8A 07              1184 	mov	ar7,r2
   047B 8E 05              1185 	mov	ar5,r6
   047D 80 1C              1186 	sjmp	00130$
   047F                    1187 00129$:
                           1188 ;	../fb_app_rs.c:137: else eis5temp=temp+exp;
   047F ED                 1189 	mov	a,r5
   0480 33                 1190 	rlc	a
   0481 95 E0              1191 	subb	a,acc
   0483 FF                 1192 	mov	r7,a
   0484 FC                 1193 	mov	r4,a
   0485 A8 10              1194 	mov	r0,_bp
   0487 08                 1195 	inc	r0
   0488 EE                 1196 	mov	a,r6
   0489 26                 1197 	add	a,@r0
   048A FE                 1198 	mov	r6,a
   048B ED                 1199 	mov	a,r5
   048C 08                 1200 	inc	r0
   048D 36                 1201 	addc	a,@r0
   048E FA                 1202 	mov	r2,a
   048F EF                 1203 	mov	a,r7
   0490 08                 1204 	inc	r0
   0491 36                 1205 	addc	a,@r0
   0492 FB                 1206 	mov	r3,a
   0493 EC                 1207 	mov	a,r4
   0494 08                 1208 	inc	r0
   0495 36                 1209 	addc	a,@r0
   0496 FC                 1210 	mov	r4,a
   0497 8E 07              1211 	mov	ar7,r6
   0499 8A 05              1212 	mov	ar5,r2
   049B                    1213 00130$:
                           1214 ;	../fb_app_rs.c:138: telegramm[8]=eis5temp>>8;
   049B 8D 06              1215 	mov	ar6,r5
   049D 8E 59              1216 	mov	(_telegramm + 0x0008),r6
                           1217 ;	../fb_app_rs.c:139: telegramm[9]=eis5temp;		
   049F 8F 03              1218 	mov	ar3,r7
   04A1 8B 5A              1219 	mov	(_telegramm + 0x0009),r3
                           1220 ;	../fb_app_rs.c:140: break;
   04A3 02 05 CE           1221 	ljmp	00141$
                           1222 ;	../fb_app_rs.c:141: case 6:// EIS 6
   04A6                    1223 00131$:
                           1224 ;	../fb_app_rs.c:142: tel_header(groupadr, 2);
   04A6 C0 05              1225 	push	ar5
   04A8 C0 23              1226 	push	bits
   04AA 74 02              1227 	mov	a,#0x02
   04AC C0 E0              1228 	push	acc
   04AE 85 43 82           1229 	mov	dpl,_groupadr
   04B1 85 44 83           1230 	mov	dph,(_groupadr + 1)
   04B4 12 09 18           1231 	lcall	_tel_header
   04B7 15 81              1232 	dec	sp
   04B9 D0 23              1233 	pop	bits
   04BB D0 05              1234 	pop	ar5
                           1235 ;	../fb_app_rs.c:143: telegramm[7]=0x80;
   04BD 75 58 80           1236 	mov	(_telegramm + 0x0007),#0x80
                           1237 ;	../fb_app_rs.c:145: value=0;
   04C0 7C 00              1238 	mov	r4,#0x00
   04C2 7F 00              1239 	mov	r7,#0x00
                           1240 ;	../fb_app_rs.c:147: while(d<(rsinpos-1)) {
   04C4 8D 06              1241 	mov	ar6,r5
   04C6                    1242 00132$:
   04C6 C0 04              1243 	push	ar4
   04C8 C0 07              1244 	push	ar7
   04CA AA 42              1245 	mov	r2,_rsinpos
   04CC 7B 00              1246 	mov	r3,#0x00
   04CE 1A                 1247 	dec	r2
   04CF BA FF 01           1248 	cjne	r2,#0xFF,00191$
   04D2 1B                 1249 	dec	r3
   04D3                    1250 00191$:
   04D3 8E 04              1251 	mov	ar4,r6
   04D5 7F 00              1252 	mov	r7,#0x00
   04D7 C3                 1253 	clr	c
   04D8 EC                 1254 	mov	a,r4
   04D9 9A                 1255 	subb	a,r2
   04DA EF                 1256 	mov	a,r7
   04DB 64 80              1257 	xrl	a,#0x80
   04DD 8B F0              1258 	mov	b,r3
   04DF 63 F0 80           1259 	xrl	b,#0x80
   04E2 95 F0              1260 	subb	a,b
   04E4 D0 07              1261 	pop	ar7
   04E6 D0 04              1262 	pop	ar4
   04E8 50 37              1263 	jnc	00134$
                           1264 ;	../fb_app_rs.c:148: value*=10;
   04EA C0 06              1265 	push	ar6
   04EC C0 23              1266 	push	bits
   04EE C0 04              1267 	push	ar4
   04F0 C0 07              1268 	push	ar7
   04F2 90 00 0A           1269 	mov	dptr,#0x000A
   04F5 12 1B 51           1270 	lcall	__mulint
   04F8 AA 82              1271 	mov	r2,dpl
   04FA AB 83              1272 	mov	r3,dph
   04FC 15 81              1273 	dec	sp
   04FE 15 81              1274 	dec	sp
   0500 D0 23              1275 	pop	bits
   0502 D0 06              1276 	pop	ar6
   0504 8A 04              1277 	mov	ar4,r2
   0506 8B 07              1278 	mov	ar7,r3
                           1279 ;	../fb_app_rs.c:149: value+=rsin[d]-48;
   0508 EE                 1280 	mov	a,r6
   0509 24 24              1281 	add	a,#_rsin
   050B F9                 1282 	mov	r1,a
   050C 87 03              1283 	mov	ar3,@r1
   050E 7A 00              1284 	mov	r2,#0x00
   0510 EB                 1285 	mov	a,r3
   0511 24 D0              1286 	add	a,#0xD0
   0513 FB                 1287 	mov	r3,a
   0514 EA                 1288 	mov	a,r2
   0515 34 FF              1289 	addc	a,#0xFF
   0517 FA                 1290 	mov	r2,a
   0518 EB                 1291 	mov	a,r3
   0519 2C                 1292 	add	a,r4
   051A FC                 1293 	mov	r4,a
   051B EA                 1294 	mov	a,r2
   051C 3F                 1295 	addc	a,r7
   051D FF                 1296 	mov	r7,a
                           1297 ;	../fb_app_rs.c:150: d++;
   051E 0E                 1298 	inc	r6
   051F 80 A5              1299 	sjmp	00132$
   0521                    1300 00134$:
                           1301 ;	../fb_app_rs.c:153: telegramm[8]=value;
   0521 8C 59              1302 	mov	(_telegramm + 0x0008),r4
                           1303 ;	../fb_app_rs.c:154: break;
   0523 02 05 CE           1304 	ljmp	00141$
                           1305 ;	../fb_app_rs.c:156: case 14: // EIS 15 auf voreingestellter GA
   0526                    1306 00135$:
                           1307 ;	../fb_app_rs.c:157: groupadr=((unsigned int)sga_h<<8)+sga_l; //
   0526 90 1C F8           1308 	mov	dptr,#_sga_h
   0529 E4                 1309 	clr	a
   052A 93                 1310 	movc	a,@a+dptr
   052B FE                 1311 	mov	r6,a
   052C 7F 00              1312 	mov	r7,#0x00
   052E 90 1C F9           1313 	mov	dptr,#_sga_l
   0531 E4                 1314 	clr	a
   0532 93                 1315 	movc	a,@a+dptr
   0533 FC                 1316 	mov	r4,a
   0534 7B 00              1317 	mov	r3,#0x00
   0536 2F                 1318 	add	a,r7
   0537 F5 43              1319 	mov	_groupadr,a
   0539 EB                 1320 	mov	a,r3
   053A 3E                 1321 	addc	a,r6
   053B F5 44              1322 	mov	(_groupadr + 1),a
                           1323 ;	../fb_app_rs.c:158: value_pos=0;
   053D 7D 00              1324 	mov	r5,#0x00
                           1325 ;	../fb_app_rs.c:161: case 15: // EIS 15
   053F                    1326 00136$:
                           1327 ;	../fb_app_rs.c:162: tel_header(groupadr,15); //15
   053F C0 05              1328 	push	ar5
   0541 C0 23              1329 	push	bits
   0543 74 0F              1330 	mov	a,#0x0F
   0545 C0 E0              1331 	push	acc
   0547 85 43 82           1332 	mov	dpl,_groupadr
   054A 85 44 83           1333 	mov	dph,(_groupadr + 1)
   054D 12 09 18           1334 	lcall	_tel_header
   0550 15 81              1335 	dec	sp
   0552 D0 23              1336 	pop	bits
   0554 D0 05              1337 	pop	ar5
                           1338 ;	../fb_app_rs.c:163: telegramm[7]=0x80;
   0556 75 58 80           1339 	mov	(_telegramm + 0x0007),#0x80
                           1340 ;	../fb_app_rs.c:164: for(d=8;d<22;d++){
   0559 7F 08              1341 	mov	r7,#0x08
   055B                    1342 00144$:
   055B BF 16 00           1343 	cjne	r7,#0x16,00193$
   055E                    1344 00193$:
   055E 50 6E              1345 	jnc	00141$
                           1346 ;	../fb_app_rs.c:165: if((value_pos+d-8)>=(rsinpos-1)) telegramm[d]=0x00;
   0560 8D 04              1347 	mov	ar4,r5
   0562 7E 00              1348 	mov	r6,#0x00
   0564 8F 02              1349 	mov	ar2,r7
   0566 7B 00              1350 	mov	r3,#0x00
   0568 EA                 1351 	mov	a,r2
   0569 2C                 1352 	add	a,r4
   056A FC                 1353 	mov	r4,a
   056B EB                 1354 	mov	a,r3
   056C 3E                 1355 	addc	a,r6
   056D FE                 1356 	mov	r6,a
   056E EC                 1357 	mov	a,r4
   056F 24 F8              1358 	add	a,#0xF8
   0571 FC                 1359 	mov	r4,a
   0572 EE                 1360 	mov	a,r6
   0573 34 FF              1361 	addc	a,#0xFF
   0575 FE                 1362 	mov	r6,a
   0576 AA 42              1363 	mov	r2,_rsinpos
   0578 7B 00              1364 	mov	r3,#0x00
   057A 1A                 1365 	dec	r2
   057B BA FF 01           1366 	cjne	r2,#0xFF,00195$
   057E 1B                 1367 	dec	r3
   057F                    1368 00195$:
   057F C3                 1369 	clr	c
   0580 EC                 1370 	mov	a,r4
   0581 9A                 1371 	subb	a,r2
   0582 EE                 1372 	mov	a,r6
   0583 64 80              1373 	xrl	a,#0x80
   0585 8B F0              1374 	mov	b,r3
   0587 63 F0 80           1375 	xrl	b,#0x80
   058A 95 F0              1376 	subb	a,b
   058C 40 08              1377 	jc	00138$
   058E EF                 1378 	mov	a,r7
   058F 24 51              1379 	add	a,#_telegramm
   0591 F8                 1380 	mov	r0,a
   0592 76 00              1381 	mov	@r0,#0x00
   0594 80 0F              1382 	sjmp	00146$
   0596                    1383 00138$:
                           1384 ;	../fb_app_rs.c:166: else telegramm[d]=rsin[(value_pos+d-8)];
   0596 EF                 1385 	mov	a,r7
   0597 24 51              1386 	add	a,#_telegramm
   0599 F9                 1387 	mov	r1,a
   059A EF                 1388 	mov	a,r7
   059B 2D                 1389 	add	a,r5
   059C 24 F8              1390 	add	a,#0xF8
   059E 24 24              1391 	add	a,#_rsin
   05A0 F8                 1392 	mov	r0,a
   05A1 86 06              1393 	mov	ar6,@r0
   05A3 A7 06              1394 	mov	@r1,ar6
   05A5                    1395 00146$:
                           1396 ;	../fb_app_rs.c:164: for(d=8;d<22;d++){
   05A5 0F                 1397 	inc	r7
                           1398 ;	../fb_app_rs.c:169: case 16:
   05A6 80 B3              1399 	sjmp	00144$
   05A8                    1400 00140$:
                           1401 ;	../fb_app_rs.c:170: groupadr=convert_adr(5);
   05A8 75 82 05           1402 	mov	dpl,#0x05
   05AB C0 23              1403 	push	bits
   05AD 12 09 4A           1404 	lcall	_convert_adr
   05B0 85 82 43           1405 	mov	_groupadr,dpl
   05B3 85 83 44           1406 	mov	(_groupadr + 1),dph
   05B6 D0 23              1407 	pop	bits
                           1408 ;	../fb_app_rs.c:171: tel_header(groupadr, 1);
   05B8 C0 23              1409 	push	bits
   05BA 74 01              1410 	mov	a,#0x01
   05BC C0 E0              1411 	push	acc
   05BE 85 43 82           1412 	mov	dpl,_groupadr
   05C1 85 44 83           1413 	mov	dph,(_groupadr + 1)
   05C4 12 09 18           1414 	lcall	_tel_header
   05C7 15 81              1415 	dec	sp
   05C9 D0 23              1416 	pop	bits
                           1417 ;	../fb_app_rs.c:172: telegramm[7]=0x00;
   05CB 75 58 00           1418 	mov	(_telegramm + 0x0007),#0x00
                           1419 ;	../fb_app_rs.c:174: }
   05CE                    1420 00141$:
                           1421 ;	../fb_app_rs.c:175: if(repeatflag) telegramm[0]&=0xDF;		// Wiederholungsbit löschen für Wiederholtelegramm
   05CE 30 18 06           1422 	jnb	b0,00143$
   05D1 74 DF              1423 	mov	a,#0xDF
   05D3 55 51              1424 	anl	a,_telegramm
   05D5 F5 51              1425 	mov	_telegramm,a
   05D7                    1426 00143$:
                           1427 ;	../fb_app_rs.c:176: return(build_ok);
   05D7 D3                 1428 	setb	c
   05D8 85 10 81           1429 	mov	sp,_bp
   05DB D0 10              1430 	pop	_bp
   05DD 22                 1431 	ret
                           1432 ;------------------------------------------------------------
                           1433 ;Allocation info for local variables in function 'gapos_in_gat'
                           1434 ;------------------------------------------------------------
                           1435 ;gal                       Allocated to stack - _bp -3
                           1436 ;gah                       Allocated to stack - _bp +1
                           1437 ;ga_position               Allocated to registers r6 
                           1438 ;n                         Allocated to stack - _bp +2
                           1439 ;------------------------------------------------------------
                           1440 ;	../fb_app_rs.c:181: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
                           1441 ;	-----------------------------------------
                           1442 ;	 function gapos_in_gat
                           1443 ;	-----------------------------------------
   05DE                    1444 _gapos_in_gat:
   05DE C0 10              1445 	push	_bp
   05E0 85 81 10           1446 	mov	_bp,sp
   05E3 C0 82              1447 	push	dpl
   05E5 05 81              1448 	inc	sp
                           1449 ;	../fb_app_rs.c:185: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
   05E7 7E FF              1450 	mov	r6,#0xFF
                           1451 ;	../fb_app_rs.c:187: while(ga_db[n].ga==((gah<<8)+gal) && n<=62){
   05E9 A8 10              1452 	mov	r0,_bp
   05EB 08                 1453 	inc	r0
   05EC 08                 1454 	inc	r0
   05ED 76 00              1455 	mov	@r0,#0x00
   05EF                    1456 00102$:
   05EF C0 06              1457 	push	ar6
   05F1 A8 10              1458 	mov	r0,_bp
   05F3 08                 1459 	inc	r0
   05F4 08                 1460 	inc	r0
   05F5 E6                 1461 	mov	a,@r0
   05F6 25 E0              1462 	add	a,acc
   05F8 25 E0              1463 	add	a,acc
   05FA F5 82              1464 	mov	dpl,a
   05FC 75 83 1D           1465 	mov	dph,#(_ga_db >> 8)
   05FF E4                 1466 	clr	a
   0600 93                 1467 	movc	a,@a+dptr
   0601 FB                 1468 	mov	r3,a
   0602 A3                 1469 	inc	dptr
   0603 E4                 1470 	clr	a
   0604 93                 1471 	movc	a,@a+dptr
   0605 FC                 1472 	mov	r4,a
   0606 A8 10              1473 	mov	r0,_bp
   0608 08                 1474 	inc	r0
   0609 86 02              1475 	mov	ar2,@r0
   060B 8A 06              1476 	mov	ar6,r2
   060D 7A 00              1477 	mov	r2,#0x00
   060F E5 10              1478 	mov	a,_bp
   0611 24 FD              1479 	add	a,#0xfd
   0613 F8                 1480 	mov	r0,a
   0614 86 05              1481 	mov	ar5,@r0
   0616 7F 00              1482 	mov	r7,#0x00
   0618 ED                 1483 	mov	a,r5
   0619 2A                 1484 	add	a,r2
   061A FA                 1485 	mov	r2,a
   061B EF                 1486 	mov	a,r7
   061C 3E                 1487 	addc	a,r6
   061D FE                 1488 	mov	r6,a
   061E EB                 1489 	mov	a,r3
   061F B5 02 06           1490 	cjne	a,ar2,00115$
   0622 EC                 1491 	mov	a,r4
   0623 B5 06 02           1492 	cjne	a,ar6,00115$
   0626 80 04              1493 	sjmp	00116$
   0628                    1494 00115$:
   0628 D0 06              1495 	pop	ar6
   062A 80 12              1496 	sjmp	00114$
   062C                    1497 00116$:
   062C D0 06              1498 	pop	ar6
   062E A8 10              1499 	mov	r0,_bp
   0630 08                 1500 	inc	r0
   0631 08                 1501 	inc	r0
   0632 E6                 1502 	mov	a,@r0
   0633 24 C1              1503 	add	a,#0xff - 0x3E
   0635 40 07              1504 	jc	00114$
                           1505 ;	../fb_app_rs.c:188: n++;
   0637 A8 10              1506 	mov	r0,_bp
   0639 08                 1507 	inc	r0
   063A 08                 1508 	inc	r0
   063B 06                 1509 	inc	@r0
   063C 80 B1              1510 	sjmp	00102$
   063E                    1511 00114$:
   063E A8 10              1512 	mov	r0,_bp
   0640 08                 1513 	inc	r0
   0641 08                 1514 	inc	r0
   0642 86 07              1515 	mov	ar7,@r0
                           1516 ;	../fb_app_rs.c:190: if(n<62|| !filtermode)ga_position=n;// wenn GA gefunden oder kein filtermode aktiv ist...
   0644 A8 10              1517 	mov	r0,_bp
   0646 08                 1518 	inc	r0
   0647 08                 1519 	inc	r0
   0648 B6 3E 00           1520 	cjne	@r0,#0x3E,00118$
   064B                    1521 00118$:
   064B 40 03              1522 	jc	00105$
   064D 20 00 02           1523 	jb	_filtermode,00106$
   0650                    1524 00105$:
   0650 8F 06              1525 	mov	ar6,r7
   0652                    1526 00106$:
                           1527 ;	../fb_app_rs.c:191: return (ga_position);						// wird geackt
   0652 8E 82              1528 	mov	dpl,r6
   0654 85 10 81           1529 	mov	sp,_bp
   0657 D0 10              1530 	pop	_bp
   0659 22                 1531 	ret
                           1532 ;------------------------------------------------------------
                           1533 ;Allocation info for local variables in function 'send_obj_done'
                           1534 ;------------------------------------------------------------
                           1535 ;success                   Allocated to registers 
                           1536 ;objno                     Allocated to registers 
                           1537 ;------------------------------------------------------------
                           1538 ;	../fb_app_rs.c:194: void send_obj_done(unsigned char objno, __bit success)
                           1539 ;	-----------------------------------------
                           1540 ;	 function send_obj_done
                           1541 ;	-----------------------------------------
   065A                    1542 _send_obj_done:
                           1543 ;	../fb_app_rs.c:197: success;
   065A 22                 1544 	ret
                           1545 ;------------------------------------------------------------
                           1546 ;Allocation info for local variables in function 'write_value_req'
                           1547 ;------------------------------------------------------------
                           1548 ;length                    Allocated to registers r4 
                           1549 ;n                         Allocated to stack - _bp +1
                           1550 ;ga                        Allocated to stack - _bp +2
                           1551 ;val                       Allocated to registers r5 r6 
                           1552 ;------------------------------------------------------------
                           1553 ;	../fb_app_rs.c:201: void write_value_req(void)
                           1554 ;	-----------------------------------------
                           1555 ;	 function write_value_req
                           1556 ;	-----------------------------------------
   065B                    1557 _write_value_req:
   065B C0 10              1558 	push	_bp
   065D 85 81 10           1559 	mov	_bp,sp
   0660 05 81              1560 	inc	sp
   0662 05 81              1561 	inc	sp
   0664 05 81              1562 	inc	sp
                           1563 ;	../fb_app_rs.c:203: unsigned char length,n=0;
   0666 A8 10              1564 	mov	r0,_bp
   0668 08                 1565 	inc	r0
   0669 76 00              1566 	mov	@r0,#0x00
                           1567 ;	../fb_app_rs.c:205: unsigned int val=0;
   066B 7D 00              1568 	mov	r5,#0x00
   066D 7E 00              1569 	mov	r6,#0x00
                           1570 ;	../fb_app_rs.c:207: eibledcount=0xff;// EIBLED lang einschalten
   066F 75 48 FF           1571 	mov	_eibledcount,#0xFF
                           1572 ;	../fb_app_rs.c:208: length=telegramm[5]&0x0F;
   0672 74 0F              1573 	mov	a,#0x0F
   0674 55 56              1574 	anl	a,(_telegramm + 0x0005)
                           1575 ;	../fb_app_rs.c:209: if (length<=15 )	{// wenn ein Telegramm reinkommt..
   0676 FC                 1576 	mov  r4,a
   0677 24 F0              1577 	add	a,#0xff - 0x0F
   0679 50 03              1578 	jnc	00153$
   067B 02 08 5E           1579 	ljmp	00134$
   067E                    1580 00153$:
                           1581 ;	../fb_app_rs.c:210: if(length==1)val=telegramm[7] & 0x3F;
   067E BC 01 08           1582 	cjne	r4,#0x01,00102$
   0681 74 3F              1583 	mov	a,#0x3F
   0683 55 58              1584 	anl	a,(_telegramm + 0x0007)
   0685 FB                 1585 	mov	r3,a
   0686 FD                 1586 	mov	r5,a
   0687 7E 00              1587 	mov	r6,#0x00
   0689                    1588 00102$:
                           1589 ;	../fb_app_rs.c:211: if(length==2)val=telegramm[8] ;
   0689 BC 02 04           1590 	cjne	r4,#0x02,00104$
   068C AD 59              1591 	mov	r5,(_telegramm + 0x0008)
   068E 7E 00              1592 	mov	r6,#0x00
   0690                    1593 00104$:
                           1594 ;	../fb_app_rs.c:212: if(length==3)val=256*telegramm[8]+telegramm[9];
   0690 BC 03 16           1595 	cjne	r4,#0x03,00106$
   0693 C0 04              1596 	push	ar4
   0695 AB 59              1597 	mov	r3,(_telegramm + 0x0008)
   0697 7A 00              1598 	mov	r2,#0x00
   0699 AC 5A              1599 	mov	r4,(_telegramm + 0x0009)
   069B 7F 00              1600 	mov	r7,#0x00
   069D EC                 1601 	mov	a,r4
   069E 2A                 1602 	add	a,r2
   069F FA                 1603 	mov	r2,a
   06A0 EF                 1604 	mov	a,r7
   06A1 3B                 1605 	addc	a,r3
   06A2 FB                 1606 	mov	r3,a
   06A3 8A 05              1607 	mov	ar5,r2
   06A5 8B 06              1608 	mov	ar6,r3
                           1609 ;	../fb_app_rs.c:251: save_ga(ga,val);						// GA mit Wert speichern
   06A7 D0 04              1610 	pop	ar4
                           1611 ;	../fb_app_rs.c:212: if(length==3)val=256*telegramm[8]+telegramm[9];
   06A9                    1612 00106$:
                           1613 ;	../fb_app_rs.c:213: ga=256*telegramm[3]+telegramm[4];
   06A9 C0 05              1614 	push	ar5
   06AB C0 06              1615 	push	ar6
   06AD AF 54              1616 	mov	r7,(_telegramm + 0x0003)
   06AF 8F 02              1617 	mov	ar2,r7
   06B1 8A 03              1618 	mov	ar3,r2
   06B3 7A 00              1619 	mov	r2,#0x00
   06B5 AD 55              1620 	mov	r5,(_telegramm + 0x0004)
   06B7 7E 00              1621 	mov	r6,#0x00
   06B9 ED                 1622 	mov	a,r5
   06BA 2A                 1623 	add	a,r2
   06BB FA                 1624 	mov	r2,a
   06BC EE                 1625 	mov	a,r6
   06BD 3B                 1626 	addc	a,r3
   06BE FB                 1627 	mov	r3,a
   06BF A8 10              1628 	mov	r0,_bp
   06C1 08                 1629 	inc	r0
   06C2 08                 1630 	inc	r0
   06C3 A6 02              1631 	mov	@r0,ar2
   06C5 08                 1632 	inc	r0
   06C6 A6 03              1633 	mov	@r0,ar3
                           1634 ;	../fb_app_rs.c:214: if(filtermode){
   06C8 D0 06              1635 	pop	ar6
   06CA D0 05              1636 	pop	ar5
   06CC 30 00 3D           1637 	jnb	_filtermode,00110$
                           1638 ;	../fb_app_rs.c:215: for(n=0;n<=61;n++) {						// Wert der GA aus Flash lesen
   06CF A8 10              1639 	mov	r0,_bp
   06D1 08                 1640 	inc	r0
   06D2 76 00              1641 	mov	@r0,#0x00
   06D4                    1642 00126$:
   06D4 A8 10              1643 	mov	r0,_bp
   06D6 08                 1644 	inc	r0
   06D7 E6                 1645 	mov	a,@r0
   06D8 24 C2              1646 	add	a,#0xff - 0x3D
   06DA 40 30              1647 	jc	00110$
                           1648 ;	../fb_app_rs.c:216: if(ga_db[n].ga==ga) {
   06DC A8 10              1649 	mov	r0,_bp
   06DE 08                 1650 	inc	r0
   06DF E6                 1651 	mov	a,@r0
   06E0 25 E0              1652 	add	a,acc
   06E2 25 E0              1653 	add	a,acc
   06E4 F5 82              1654 	mov	dpl,a
   06E6 75 83 1D           1655 	mov	dph,#(_ga_db >> 8)
   06E9 E4                 1656 	clr	a
   06EA 93                 1657 	movc	a,@a+dptr
   06EB FA                 1658 	mov	r2,a
   06EC A3                 1659 	inc	dptr
   06ED E4                 1660 	clr	a
   06EE 93                 1661 	movc	a,@a+dptr
   06EF FB                 1662 	mov	r3,a
   06F0 A8 10              1663 	mov	r0,_bp
   06F2 08                 1664 	inc	r0
   06F3 08                 1665 	inc	r0
   06F4 E6                 1666 	mov	a,@r0
   06F5 B5 02 07           1667 	cjne	a,ar2,00162$
   06F8 08                 1668 	inc	r0
   06F9 E6                 1669 	mov	a,@r0
   06FA B5 03 02           1670 	cjne	a,ar3,00162$
   06FD 80 02              1671 	sjmp	00163$
   06FF                    1672 00162$:
   06FF 80 05              1673 	sjmp	00128$
   0701                    1674 00163$:
                           1675 ;	../fb_app_rs.c:217: n=63;
   0701 A8 10              1676 	mov	r0,_bp
   0703 08                 1677 	inc	r0
   0704 76 3F              1678 	mov	@r0,#0x3F
   0706                    1679 00128$:
                           1680 ;	../fb_app_rs.c:215: for(n=0;n<=61;n++) {						// Wert der GA aus Flash lesen
   0706 A8 10              1681 	mov	r0,_bp
   0708 08                 1682 	inc	r0
   0709 06                 1683 	inc	@r0
   070A 80 C8              1684 	sjmp	00126$
   070C                    1685 00110$:
                           1686 ;	../fb_app_rs.c:221: if ((n>=63 || !filtermode)) {
   070C A8 10              1687 	mov	r0,_bp
   070E 08                 1688 	inc	r0
   070F B6 3F 00           1689 	cjne	@r0,#0x3F,00164$
   0712                    1690 00164$:
   0712 50 06              1691 	jnc	00121$
   0714 30 00 03           1692 	jnb	_filtermode,00166$
   0717 02 08 5E           1693 	ljmp	00134$
   071A                    1694 00166$:
   071A                    1695 00121$:
                           1696 ;	../fb_app_rs.c:222: if(!tel_sent){
   071A 30 0A 03           1697 	jnb	_tel_sent,00167$
   071D 02 08 4A           1698 	ljmp	00120$
   0720                    1699 00167$:
                           1700 ;	../fb_app_rs.c:223: rs_send_dec(telegramm[3]>>3);			// GA senden
   0720 EF                 1701 	mov	a,r7
   0721 C4                 1702 	swap	a
   0722 23                 1703 	rl	a
   0723 54 1F              1704 	anl	a,#0x1F
   0725 FF                 1705 	mov	r7,a
   0726 7B 00              1706 	mov	r3,#0x00
   0728 8F 82              1707 	mov	dpl,r7
   072A 8B 83              1708 	mov	dph,r3
   072C C0 06              1709 	push	ar6
   072E C0 05              1710 	push	ar5
   0730 C0 04              1711 	push	ar4
   0732 12 0B AE           1712 	lcall	_rs_send_dec
                           1713 ;	../fb_app_rs.c:224: rs_send('/');
   0735 75 82 2F           1714 	mov	dpl,#0x2F
   0738 12 0D BB           1715 	lcall	_rs_send
                           1716 ;	../fb_app_rs.c:225: rs_send_dec(telegramm[3] & 0x07);
   073B 74 07              1717 	mov	a,#0x07
   073D 55 54              1718 	anl	a,(_telegramm + 0x0003)
   073F FF                 1719 	mov	r7,a
   0740 7B 00              1720 	mov	r3,#0x00
   0742 8F 82              1721 	mov	dpl,r7
   0744 8B 83              1722 	mov	dph,r3
   0746 12 0B AE           1723 	lcall	_rs_send_dec
                           1724 ;	../fb_app_rs.c:226: rs_send('/');
   0749 75 82 2F           1725 	mov	dpl,#0x2F
   074C 12 0D BB           1726 	lcall	_rs_send
                           1727 ;	../fb_app_rs.c:227: rs_send_dec(telegramm[4]);
   074F AB 55              1728 	mov	r3,(_telegramm + 0x0004)
   0751 7F 00              1729 	mov	r7,#0x00
   0753 8B 82              1730 	mov	dpl,r3
   0755 8F 83              1731 	mov	dph,r7
   0757 12 0B AE           1732 	lcall	_rs_send_dec
                           1733 ;	../fb_app_rs.c:228: rs_send('=');
   075A 75 82 3D           1734 	mov	dpl,#0x3D
   075D 12 0D BB           1735 	lcall	_rs_send
   0760 D0 04              1736 	pop	ar4
   0762 D0 05              1737 	pop	ar5
   0764 D0 06              1738 	pop	ar6
                           1739 ;	../fb_app_rs.c:229: if (length<=3)	rs_send_dec(val);		// Value senden
   0766 EC                 1740 	mov	a,r4
   0767 24 FC              1741 	add	a,#0xff - 0x03
   0769 40 13              1742 	jc	00112$
   076B 8D 82              1743 	mov	dpl,r5
   076D 8E 83              1744 	mov	dph,r6
   076F C0 06              1745 	push	ar6
   0771 C0 05              1746 	push	ar5
   0773 C0 04              1747 	push	ar4
   0775 12 0B AE           1748 	lcall	_rs_send_dec
   0778 D0 04              1749 	pop	ar4
   077A D0 05              1750 	pop	ar5
   077C D0 06              1751 	pop	ar6
   077E                    1752 00112$:
                           1753 ;	../fb_app_rs.c:230: if(length==4){
   077E BC 04 6F           1754 	cjne	r4,#0x04,00116$
                           1755 ;	../fb_app_rs.c:231: n='.';  
   0781 A8 10              1756 	mov	r0,_bp
   0783 08                 1757 	inc	r0
   0784 76 2E              1758 	mov	@r0,#0x2E
                           1759 ;	../fb_app_rs.c:232: if(telegramm[8]>31){// time
   0786 E5 59              1760 	mov	a,(_telegramm + 0x0008)
   0788 FF                 1761 	mov	r7,a
   0789 24 E0              1762 	add	a,#0xff - 0x1F
   078B 50 23              1763 	jnc	00114$
                           1764 ;	../fb_app_rs.c:233: rs_send((telegramm[8]>>5)+'0');
   078D EF                 1765 	mov	a,r7
   078E C4                 1766 	swap	a
   078F 03                 1767 	rr	a
   0790 54 07              1768 	anl	a,#0x07
   0792 24 30              1769 	add	a,#0x30
   0794 F5 82              1770 	mov	dpl,a
   0796 C0 06              1771 	push	ar6
   0798 C0 05              1772 	push	ar5
   079A C0 04              1773 	push	ar4
   079C 12 0D BB           1774 	lcall	_rs_send
                           1775 ;	../fb_app_rs.c:234: rs_send(',');
   079F 75 82 2C           1776 	mov	dpl,#0x2C
   07A2 12 0D BB           1777 	lcall	_rs_send
   07A5 D0 04              1778 	pop	ar4
   07A7 D0 05              1779 	pop	ar5
   07A9 D0 06              1780 	pop	ar6
                           1781 ;	../fb_app_rs.c:235: n=':';
   07AB A8 10              1782 	mov	r0,_bp
   07AD 08                 1783 	inc	r0
   07AE 76 3A              1784 	mov	@r0,#0x3A
   07B0                    1785 00114$:
                           1786 ;	../fb_app_rs.c:237: rs_send_dec(telegramm[8]&0x1F);
   07B0 74 1F              1787 	mov	a,#0x1F
   07B2 55 59              1788 	anl	a,(_telegramm + 0x0008)
   07B4 FF                 1789 	mov	r7,a
   07B5 7B 00              1790 	mov	r3,#0x00
   07B7 8F 82              1791 	mov	dpl,r7
   07B9 8B 83              1792 	mov	dph,r3
   07BB C0 06              1793 	push	ar6
   07BD C0 05              1794 	push	ar5
   07BF C0 04              1795 	push	ar4
   07C1 12 0B AE           1796 	lcall	_rs_send_dec
                           1797 ;	../fb_app_rs.c:238: rs_send(n);
   07C4 A8 10              1798 	mov	r0,_bp
   07C6 08                 1799 	inc	r0
   07C7 86 82              1800 	mov	dpl,@r0
   07C9 12 0D BB           1801 	lcall	_rs_send
                           1802 ;	../fb_app_rs.c:239: rs_send_dec(telegramm[9]);
   07CC AB 5A              1803 	mov	r3,(_telegramm + 0x0009)
   07CE 7F 00              1804 	mov	r7,#0x00
   07D0 8B 82              1805 	mov	dpl,r3
   07D2 8F 83              1806 	mov	dph,r7
   07D4 12 0B AE           1807 	lcall	_rs_send_dec
                           1808 ;	../fb_app_rs.c:240: rs_send(n);
   07D7 A8 10              1809 	mov	r0,_bp
   07D9 08                 1810 	inc	r0
   07DA 86 82              1811 	mov	dpl,@r0
   07DC 12 0D BB           1812 	lcall	_rs_send
                           1813 ;	../fb_app_rs.c:241: rs_send_dec(telegramm[10]);
   07DF AB 5B              1814 	mov	r3,(_telegramm + 0x000a)
   07E1 7F 00              1815 	mov	r7,#0x00
   07E3 8B 82              1816 	mov	dpl,r3
   07E5 8F 83              1817 	mov	dph,r7
   07E7 12 0B AE           1818 	lcall	_rs_send_dec
   07EA D0 04              1819 	pop	ar4
   07EC D0 05              1820 	pop	ar5
   07EE D0 06              1821 	pop	ar6
   07F0                    1822 00116$:
                           1823 ;	../fb_app_rs.c:243: if(length>4){
   07F0 EC                 1824 	mov	a,r4
   07F1 24 FB              1825 	add	a,#0xff - 0x04
   07F3 50 44              1826 	jnc	00118$
                           1827 ;	../fb_app_rs.c:244: for(n=8;n <= length+6;n++){
   07F5 7F 08              1828 	mov	r7,#0x08
   07F7                    1829 00130$:
   07F7 C0 05              1830 	push	ar5
   07F9 C0 06              1831 	push	ar6
   07FB 8C 02              1832 	mov	ar2,r4
   07FD 7B 00              1833 	mov	r3,#0x00
   07FF 74 06              1834 	mov	a,#0x06
   0801 2A                 1835 	add	a,r2
   0802 FA                 1836 	mov	r2,a
   0803 E4                 1837 	clr	a
   0804 3B                 1838 	addc	a,r3
   0805 FB                 1839 	mov	r3,a
   0806 8F 05              1840 	mov	ar5,r7
   0808 7E 00              1841 	mov	r6,#0x00
   080A C3                 1842 	clr	c
   080B EA                 1843 	mov	a,r2
   080C 9D                 1844 	subb	a,r5
   080D EB                 1845 	mov	a,r3
   080E 64 80              1846 	xrl	a,#0x80
   0810 8E F0              1847 	mov	b,r6
   0812 63 F0 80           1848 	xrl	b,#0x80
   0815 95 F0              1849 	subb	a,b
   0817 D0 06              1850 	pop	ar6
   0819 D0 05              1851 	pop	ar5
   081B 40 1C              1852 	jc	00118$
                           1853 ;	../fb_app_rs.c:245: rs_send(telegramm[n]);
   081D EF                 1854 	mov	a,r7
   081E 24 51              1855 	add	a,#_telegramm
   0820 F9                 1856 	mov	r1,a
   0821 87 82              1857 	mov	dpl,@r1
   0823 C0 07              1858 	push	ar7
   0825 C0 06              1859 	push	ar6
   0827 C0 05              1860 	push	ar5
   0829 C0 04              1861 	push	ar4
   082B 12 0D BB           1862 	lcall	_rs_send
   082E D0 04              1863 	pop	ar4
   0830 D0 05              1864 	pop	ar5
   0832 D0 06              1865 	pop	ar6
   0834 D0 07              1866 	pop	ar7
                           1867 ;	../fb_app_rs.c:244: for(n=8;n <= length+6;n++){
   0836 0F                 1868 	inc	r7
   0837 80 BE              1869 	sjmp	00130$
   0839                    1870 00118$:
                           1871 ;	../fb_app_rs.c:248: rs_send_s("\n");							// CR LF
   0839 90 1C 03           1872 	mov	dptr,#__str_0
   083C 75 F0 80           1873 	mov	b,#0x80
   083F C0 06              1874 	push	ar6
   0841 C0 05              1875 	push	ar5
   0843 12 0D 1B           1876 	lcall	_rs_send_s
   0846 D0 05              1877 	pop	ar5
   0848 D0 06              1878 	pop	ar6
   084A                    1879 00120$:
                           1880 ;	../fb_app_rs.c:251: save_ga(ga,val);						// GA mit Wert speichern
   084A C0 05              1881 	push	ar5
   084C C0 06              1882 	push	ar6
   084E A8 10              1883 	mov	r0,_bp
   0850 08                 1884 	inc	r0
   0851 08                 1885 	inc	r0
   0852 86 82              1886 	mov	dpl,@r0
   0854 08                 1887 	inc	r0
   0855 86 83              1888 	mov	dph,@r0
   0857 12 08 65           1889 	lcall	_save_ga
   085A 15 81              1890 	dec	sp
   085C 15 81              1891 	dec	sp
   085E                    1892 00134$:
   085E 85 10 81           1893 	mov	sp,_bp
   0861 D0 10              1894 	pop	_bp
   0863 22                 1895 	ret
                           1896 ;------------------------------------------------------------
                           1897 ;Allocation info for local variables in function 'read_value_req'
                           1898 ;------------------------------------------------------------
                           1899 ;	../fb_app_rs.c:260: void read_value_req(void)
                           1900 ;	-----------------------------------------
                           1901 ;	 function read_value_req
                           1902 ;	-----------------------------------------
   0864                    1903 _read_value_req:
                           1904 ;	../fb_app_rs.c:263: }
   0864 22                 1905 	ret
                           1906 ;------------------------------------------------------------
                           1907 ;Allocation info for local variables in function 'save_ga'
                           1908 ;------------------------------------------------------------
                           1909 ;val                       Allocated to stack - _bp -4
                           1910 ;ga                        Allocated to stack - _bp +1
                           1911 ;n                         Allocated to registers r5 
                           1912 ;write_ok                  Allocated to registers b0 
                           1913 ;------------------------------------------------------------
                           1914 ;	../fb_app_rs.c:270: void save_ga(unsigned int ga, unsigned int val)
                           1915 ;	-----------------------------------------
                           1916 ;	 function save_ga
                           1917 ;	-----------------------------------------
   0865                    1918 _save_ga:
   0865 C0 10              1919 	push	_bp
   0867 85 81 10           1920 	mov	_bp,sp
   086A C0 82              1921 	push	dpl
   086C C0 83              1922 	push	dph
                           1923 ;	../fb_app_rs.c:275: n=0;
   086E 7D 00              1924 	mov	r5,#0x00
                           1925 ;	../fb_app_rs.c:276: do {								// Wert der GA in Flash schreiben
   0870 A8 10              1926 	mov	r0,_bp
   0872 08                 1927 	inc	r0
   0873 08                 1928 	inc	r0
   0874 86 04              1929 	mov	ar4,@r0
   0876 E5 10              1930 	mov	a,_bp
   0878 24 FC              1931 	add	a,#0xfc
   087A F8                 1932 	mov	r0,a
   087B 08                 1933 	inc	r0
   087C 86 03              1934 	mov	ar3,@r0
   087E                    1935 00111$:
                           1936 ;	../fb_app_rs.c:277: if(ga_db[n].ga==ga || ga_db[n].ga==0xFFFF) {
   087E C0 03              1937 	push	ar3
   0880 ED                 1938 	mov	a,r5
   0881 2D                 1939 	add	a,r5
   0882 25 E0              1940 	add	a,acc
   0884 FA                 1941 	mov	r2,a
   0885 F5 82              1942 	mov	dpl,a
   0887 75 83 1D           1943 	mov	dph,#(_ga_db >> 8)
   088A E4                 1944 	clr	a
   088B 93                 1945 	movc	a,@a+dptr
   088C FB                 1946 	mov	r3,a
   088D A3                 1947 	inc	dptr
   088E E4                 1948 	clr	a
   088F 93                 1949 	movc	a,@a+dptr
   0890 FF                 1950 	mov	r7,a
   0891 A8 10              1951 	mov	r0,_bp
   0893 08                 1952 	inc	r0
   0894 E6                 1953 	mov	a,@r0
   0895 B5 03 09           1954 	cjne	a,ar3,00122$
   0898 08                 1955 	inc	r0
   0899 E6                 1956 	mov	a,@r0
   089A B5 07 04           1957 	cjne	a,ar7,00122$
   089D D0 03              1958 	pop	ar3
   089F 80 14              1959 	sjmp	00108$
   08A1                    1960 00122$:
   08A1 D0 03              1961 	pop	ar3
   08A3 8A 82              1962 	mov	dpl,r2
   08A5 75 83 1D           1963 	mov	dph,#(_ga_db >> 8)
   08A8 E4                 1964 	clr	a
   08A9 93                 1965 	movc	a,@a+dptr
   08AA FE                 1966 	mov	r6,a
   08AB A3                 1967 	inc	dptr
   08AC E4                 1968 	clr	a
   08AD 93                 1969 	movc	a,@a+dptr
   08AE FF                 1970 	mov	r7,a
   08AF BE FF 57           1971 	cjne	r6,#0xFF,00109$
   08B2 BF FF 54           1972 	cjne	r7,#0xFF,00109$
   08B5                    1973 00108$:
                           1974 ;	../fb_app_rs.c:278: write_ok=0;
   08B5 C2 18              1975 	clr	b0
                           1976 ;	../fb_app_rs.c:279: while (!write_ok) {
   08B7 ED                 1977 	mov	a,r5
   08B8 2D                 1978 	add	a,r5
   08B9 25 E0              1979 	add	a,acc
   08BB FF                 1980 	mov	r7,a
   08BC 24 02              1981 	add	a,#0x02
   08BE FE                 1982 	mov	r6,a
   08BF                    1983 00105$:
   08BF 20 18 45           1984 	jb	b0,00107$
                           1985 ;	../fb_app_rs.c:280: START_WRITECYCLE
   08C2 C0 03              1986 	push	ar3
   08C4 75 E4 00           1987 	mov	_FMCON,#0x00
                           1988 ;	../fb_app_rs.c:281: if(ga_db[n].ga==0xFFFF) {			// GA noch nicht gespeichert
   08C7 8F 82              1989 	mov	dpl,r7
   08C9 75 83 1D           1990 	mov	dph,#(_ga_db >> 8)
   08CC E4                 1991 	clr	a
   08CD 93                 1992 	movc	a,@a+dptr
   08CE FA                 1993 	mov	r2,a
   08CF A3                 1994 	inc	dptr
   08D0 E4                 1995 	clr	a
   08D1 93                 1996 	movc	a,@a+dptr
   08D2 FB                 1997 	mov	r3,a
   08D3 BA FF 05           1998 	cjne	r2,#0xFF,00126$
   08D6 BB FF 02           1999 	cjne	r3,#0xFF,00126$
   08D9 80 04              2000 	sjmp	00127$
   08DB                    2001 00126$:
   08DB D0 03              2002 	pop	ar3
   08DD 80 0E              2003 	sjmp	00102$
   08DF                    2004 00127$:
   08DF D0 03              2005 	pop	ar3
                           2006 ;	../fb_app_rs.c:282: FMADRH = 0x1D;//(n >> 6) + 0x1D;		// GA schreiben
   08E1 75 E7 1D           2007 	mov	_FMADRH,#0x1D
                           2008 ;	../fb_app_rs.c:283: FMADRL = n*4;//((n & 0x3F) * 4);		// (int wird LSB first abgelegt)
   08E4 8F E6              2009 	mov	_FMADRL,r7
                           2010 ;	../fb_app_rs.c:284: FMDATA=ga;
   08E6 A8 10              2011 	mov	r0,_bp
   08E8 08                 2012 	inc	r0
   08E9 86 E5              2013 	mov	_FMDATA,@r0
                           2014 ;	../fb_app_rs.c:285: FMDATA=ga>>8;
   08EB 8C E5              2015 	mov	_FMDATA,r4
   08ED                    2016 00102$:
                           2017 ;	../fb_app_rs.c:287: FMADRH = 0x1D;//(n >> 6) + 0x1D;		// Value schreiben
   08ED 75 E7 1D           2018 	mov	_FMADRH,#0x1D
                           2019 ;	../fb_app_rs.c:288: FMADRL = (n*4) +2;//((n & 0x3F) * 4) + 2;
   08F0 8E E6              2020 	mov	_FMADRL,r6
                           2021 ;	../fb_app_rs.c:289: FMDATA=val;
   08F2 E5 10              2022 	mov	a,_bp
   08F4 24 FC              2023 	add	a,#0xfc
   08F6 F8                 2024 	mov	r0,a
   08F7 86 E5              2025 	mov	_FMDATA,@r0
                           2026 ;	../fb_app_rs.c:290: FMDATA=val>>8;					// High Byte schreiben
   08F9 8B E5              2027 	mov	_FMDATA,r3
                           2028 ;	../fb_app_rs.c:291: STOP_WRITECYCLE
   08FB 75 E4 68           2029 	mov	_FMCON,#0x68
                           2030 ;	../fb_app_rs.c:292: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   08FE E5 E4              2031 	mov	a,_FMCON
   0900 20 E0 BC           2032 	jb	acc.0,00105$
   0903 D2 18              2033 	setb	b0
   0905 80 B8              2034 	sjmp	00105$
   0907                    2035 00107$:
                           2036 ;	../fb_app_rs.c:294: n=62;	// Schleife abbrechen
   0907 7D 3E              2037 	mov	r5,#0x3E
   0909                    2038 00109$:
                           2039 ;	../fb_app_rs.c:296: n++;
   0909 0D                 2040 	inc	r5
                           2041 ;	../fb_app_rs.c:297: }while (n<62);
   090A BD 3E 00           2042 	cjne	r5,#0x3E,00129$
   090D                    2043 00129$:
   090D 50 03              2044 	jnc	00130$
   090F 02 08 7E           2045 	ljmp	00111$
   0912                    2046 00130$:
   0912 85 10 81           2047 	mov	sp,_bp
   0915 D0 10              2048 	pop	_bp
   0917 22                 2049 	ret
                           2050 ;------------------------------------------------------------
                           2051 ;Allocation info for local variables in function 'tel_header'
                           2052 ;------------------------------------------------------------
                           2053 ;length                    Allocated to stack - _bp -3
                           2054 ;ga                        Allocated to registers r6 r7 
                           2055 ;------------------------------------------------------------
                           2056 ;	../fb_app_rs.c:303: void tel_header(unsigned int ga, unsigned char length)
                           2057 ;	-----------------------------------------
                           2058 ;	 function tel_header
                           2059 ;	-----------------------------------------
   0918                    2060 _tel_header:
   0918 C0 10              2061 	push	_bp
   091A 85 81 10           2062 	mov	_bp,sp
   091D AE 82              2063 	mov	r6,dpl
   091F AF 83              2064 	mov	r7,dph
                           2065 ;	../fb_app_rs.c:305: telegramm[0]=0xBC;
   0921 75 51 BC           2066 	mov	_telegramm,#0xBC
                           2067 ;	../fb_app_rs.c:306: telegramm[1]=pa_h;
   0924 90 1C FB           2068 	mov	dptr,#_pa_h
   0927 E4                 2069 	clr	a
   0928 93                 2070 	movc	a,@a+dptr
   0929 FD                 2071 	mov	r5,a
   092A 8D 52              2072 	mov	(_telegramm + 0x0001),r5
                           2073 ;	../fb_app_rs.c:307: telegramm[2]=pa_l;
   092C 90 1C FC           2074 	mov	dptr,#_pa_l
   092F E4                 2075 	clr	a
   0930 93                 2076 	movc	a,@a+dptr
   0931 FD                 2077 	mov	r5,a
   0932 8D 53              2078 	mov	(_telegramm + 0x0002),r5
                           2079 ;	../fb_app_rs.c:308: telegramm[3]=ga>>8;
   0934 8F 05              2080 	mov	ar5,r7
   0936 8D 54              2081 	mov	(_telegramm + 0x0003),r5
                           2082 ;	../fb_app_rs.c:309: telegramm[4]=ga;
   0938 8E 55              2083 	mov	(_telegramm + 0x0004),r6
                           2084 ;	../fb_app_rs.c:310: telegramm[5]=0xE0 + length;
   093A E5 10              2085 	mov	a,_bp
   093C 24 FD              2086 	add	a,#0xfd
   093E F8                 2087 	mov	r0,a
   093F 74 E0              2088 	mov	a,#0xE0
   0941 26                 2089 	add	a,@r0
   0942 F5 56              2090 	mov	(_telegramm + 0x0005),a
                           2091 ;	../fb_app_rs.c:311: telegramm[6]=0x00;
   0944 75 57 00           2092 	mov	(_telegramm + 0x0006),#0x00
   0947 D0 10              2093 	pop	_bp
   0949 22                 2094 	ret
                           2095 ;------------------------------------------------------------
                           2096 ;Allocation info for local variables in function 'convert_adr'
                           2097 ;------------------------------------------------------------
                           2098 ;pos                       Allocated to registers r7 
                           2099 ;adr                       Allocated to stack - _bp +1
                           2100 ;sepcount                  Allocated to registers r3 
                           2101 ;n                         Allocated to stack - _bp +3
                           2102 ;adr_tmp                   Allocated to registers r5 
                           2103 ;firstrun                  Allocated to registers b0 
                           2104 ;------------------------------------------------------------
                           2105 ;	../fb_app_rs.c:316: unsigned int convert_adr(unsigned char pos)
                           2106 ;	-----------------------------------------
                           2107 ;	 function convert_adr
                           2108 ;	-----------------------------------------
   094A                    2109 _convert_adr:
   094A C0 10              2110 	push	_bp
   094C 85 81 10           2111 	mov	_bp,sp
   094F 05 81              2112 	inc	sp
   0951 05 81              2113 	inc	sp
   0953 05 81              2114 	inc	sp
   0955 AF 82              2115 	mov	r7,dpl
                           2116 ;	../fb_app_rs.c:322: firstrun=1;
   0957 D2 18              2117 	setb	b0
                           2118 ;	../fb_app_rs.c:325: adr=0;
   0959 A8 10              2119 	mov	r0,_bp
   095B 08                 2120 	inc	r0
   095C E4                 2121 	clr	a
   095D F6                 2122 	mov	@r0,a
   095E 08                 2123 	inc	r0
   095F F6                 2124 	mov	@r0,a
                           2125 ;	../fb_app_rs.c:326: adr_tmp=0;
                           2126 ;	../fb_app_rs.c:327: while(rsin[n]!='=' && n<(rsinpos-1)) {
   0960 E4                 2127 	clr	a
   0961 FD                 2128 	mov	r5,a
   0962 FB                 2129 	mov	r3,a
   0963 E5 10              2130 	mov	a,_bp
   0965 24 03              2131 	add	a,#0x03
   0967 F8                 2132 	mov	r0,a
   0968 A6 07              2133 	mov	@r0,ar7
   096A                    2134 00117$:
   096A E5 10              2135 	mov	a,_bp
   096C 24 03              2136 	add	a,#0x03
   096E F8                 2137 	mov	r0,a
   096F E6                 2138 	mov	a,@r0
   0970 24 24              2139 	add	a,#_rsin
   0972 F9                 2140 	mov	r1,a
   0973 87 02              2141 	mov	ar2,@r1
   0975 BA 3D 03           2142 	cjne	r2,#0x3D,00132$
   0978 02 0A 3B           2143 	ljmp	00119$
   097B                    2144 00132$:
   097B C0 03              2145 	push	ar3
   097D AB 42              2146 	mov	r3,_rsinpos
   097F 7C 00              2147 	mov	r4,#0x00
   0981 1B                 2148 	dec	r3
   0982 BB FF 01           2149 	cjne	r3,#0xFF,00133$
   0985 1C                 2150 	dec	r4
   0986                    2151 00133$:
   0986 E5 10              2152 	mov	a,_bp
   0988 24 03              2153 	add	a,#0x03
   098A F8                 2154 	mov	r0,a
   098B 86 06              2155 	mov	ar6,@r0
   098D 7F 00              2156 	mov	r7,#0x00
   098F C3                 2157 	clr	c
   0990 EE                 2158 	mov	a,r6
   0991 9B                 2159 	subb	a,r3
   0992 EF                 2160 	mov	a,r7
   0993 64 80              2161 	xrl	a,#0x80
   0995 8C F0              2162 	mov	b,r4
   0997 63 F0 80           2163 	xrl	b,#0x80
   099A 95 F0              2164 	subb	a,b
   099C D0 03              2165 	pop	ar3
   099E 40 03              2166 	jc	00134$
   09A0 02 0A 3B           2167 	ljmp	00119$
   09A3                    2168 00134$:
                           2169 ;	../fb_app_rs.c:328: if(rsin[n]!='/' && rsin[n]!='.') {
   09A3 BA 2F 02           2170 	cjne	r2,#0x2F,00135$
   09A6 80 21              2171 	sjmp	00113$
   09A8                    2172 00135$:
   09A8 BA 2E 02           2173 	cjne	r2,#0x2E,00136$
   09AB 80 1C              2174 	sjmp	00113$
   09AD                    2175 00136$:
                           2176 ;	../fb_app_rs.c:329: if(!firstrun) adr_tmp*=10;
   09AD 20 18 06           2177 	jb	b0,00102$
   09B0 ED                 2178 	mov	a,r5
   09B1 75 F0 0A           2179 	mov	b,#0x0A
   09B4 A4                 2180 	mul	ab
   09B5 FD                 2181 	mov	r5,a
   09B6                    2182 00102$:
                           2183 ;	../fb_app_rs.c:330: adr_tmp+=rsin[n]-48;
   09B6 E5 10              2184 	mov	a,_bp
   09B8 24 03              2185 	add	a,#0x03
   09BA F8                 2186 	mov	r0,a
   09BB E6                 2187 	mov	a,@r0
   09BC 24 24              2188 	add	a,#_rsin
   09BE F9                 2189 	mov	r1,a
   09BF E7                 2190 	mov	a,@r1
   09C0 24 D0              2191 	add	a,#0xD0
   09C2 FF                 2192 	mov	r7,a
   09C3 2D                 2193 	add	a,r5
   09C4 FD                 2194 	mov	r5,a
                           2195 ;	../fb_app_rs.c:331: firstrun=0;
   09C5 C2 18              2196 	clr	b0
   09C7 80 69              2197 	sjmp	00114$
   09C9                    2198 00113$:
                           2199 ;	../fb_app_rs.c:334: sepcount++;
   09C9 0B                 2200 	inc	r3
                           2201 ;	../fb_app_rs.c:335: firstrun=1;
   09CA D2 18              2202 	setb	b0
                           2203 ;	../fb_app_rs.c:336: adr+=adr_tmp;
   09CC 8D 04              2204 	mov	ar4,r5
   09CE 7F 00              2205 	mov	r7,#0x00
   09D0 A8 10              2206 	mov	r0,_bp
   09D2 08                 2207 	inc	r0
   09D3 EC                 2208 	mov	a,r4
   09D4 26                 2209 	add	a,@r0
   09D5 F6                 2210 	mov	@r0,a
   09D6 EF                 2211 	mov	a,r7
   09D7 08                 2212 	inc	r0
   09D8 36                 2213 	addc	a,@r0
   09D9 F6                 2214 	mov	@r0,a
                           2215 ;	../fb_app_rs.c:337: if (rsin[n]=='/') {		// für GA
   09DA E5 10              2216 	mov	a,_bp
   09DC 24 03              2217 	add	a,#0x03
   09DE F8                 2218 	mov	r0,a
   09DF E6                 2219 	mov	a,@r0
   09E0 24 24              2220 	add	a,#_rsin
   09E2 F9                 2221 	mov	r1,a
   09E3 87 07              2222 	mov	ar7,@r1
   09E5 BF 2F 26           2223 	cjne	r7,#0x2F,00110$
                           2224 ;	../fb_app_rs.c:338: if (sepcount==1) adr=adr<<3; else adr=adr<<8;
   09E8 BB 01 18           2225 	cjne	r3,#0x01,00104$
   09EB A8 10              2226 	mov	r0,_bp
   09ED 08                 2227 	inc	r0
   09EE 08                 2228 	inc	r0
   09EF E6                 2229 	mov	a,@r0
   09F0 18                 2230 	dec	r0
   09F1 C4                 2231 	swap	a
   09F2 03                 2232 	rr	a
   09F3 54 F8              2233 	anl	a,#0xF8
   09F5 C6                 2234 	xch	a,@r0
   09F6 C4                 2235 	swap	a
   09F7 03                 2236 	rr	a
   09F8 C6                 2237 	xch	a,@r0
   09F9 66                 2238 	xrl	a,@r0
   09FA C6                 2239 	xch	a,@r0
   09FB 54 F8              2240 	anl	a,#0xF8
   09FD C6                 2241 	xch	a,@r0
   09FE 66                 2242 	xrl	a,@r0
   09FF 08                 2243 	inc	r0
   0A00 F6                 2244 	mov	@r0,a
   0A01 80 2D              2245 	sjmp	00111$
   0A03                    2246 00104$:
   0A03 A8 10              2247 	mov	r0,_bp
   0A05 08                 2248 	inc	r0
   0A06 E6                 2249 	mov	a,@r0
   0A07 08                 2250 	inc	r0
   0A08 F6                 2251 	mov	@r0,a
   0A09 18                 2252 	dec	r0
   0A0A 76 00              2253 	mov	@r0,#0x00
   0A0C 80 22              2254 	sjmp	00111$
   0A0E                    2255 00110$:
                           2256 ;	../fb_app_rs.c:341: if (sepcount==1) adr=adr<<4; else adr=adr<<8;
   0A0E BB 01 16           2257 	cjne	r3,#0x01,00107$
   0A11 A8 10              2258 	mov	r0,_bp
   0A13 08                 2259 	inc	r0
   0A14 08                 2260 	inc	r0
   0A15 E6                 2261 	mov	a,@r0
   0A16 18                 2262 	dec	r0
   0A17 C4                 2263 	swap	a
   0A18 54 F0              2264 	anl	a,#0xF0
   0A1A C6                 2265 	xch	a,@r0
   0A1B C4                 2266 	swap	a
   0A1C C6                 2267 	xch	a,@r0
   0A1D 66                 2268 	xrl	a,@r0
   0A1E C6                 2269 	xch	a,@r0
   0A1F 54 F0              2270 	anl	a,#0xF0
   0A21 C6                 2271 	xch	a,@r0
   0A22 66                 2272 	xrl	a,@r0
   0A23 08                 2273 	inc	r0
   0A24 F6                 2274 	mov	@r0,a
   0A25 80 09              2275 	sjmp	00111$
   0A27                    2276 00107$:
   0A27 A8 10              2277 	mov	r0,_bp
   0A29 08                 2278 	inc	r0
   0A2A E6                 2279 	mov	a,@r0
   0A2B 08                 2280 	inc	r0
   0A2C F6                 2281 	mov	@r0,a
   0A2D 18                 2282 	dec	r0
   0A2E 76 00              2283 	mov	@r0,#0x00
   0A30                    2284 00111$:
                           2285 ;	../fb_app_rs.c:343: adr_tmp=0;
   0A30 7D 00              2286 	mov	r5,#0x00
   0A32                    2287 00114$:
                           2288 ;	../fb_app_rs.c:345: n++;
   0A32 E5 10              2289 	mov	a,_bp
   0A34 24 03              2290 	add	a,#0x03
   0A36 F8                 2291 	mov	r0,a
   0A37 06                 2292 	inc	@r0
   0A38 02 09 6A           2293 	ljmp	00117$
   0A3B                    2294 00119$:
                           2295 ;	../fb_app_rs.c:347: adr+=adr_tmp;
   0A3B 8D 04              2296 	mov	ar4,r5
   0A3D 7F 00              2297 	mov	r7,#0x00
   0A3F A8 10              2298 	mov	r0,_bp
   0A41 08                 2299 	inc	r0
   0A42 EC                 2300 	mov	a,r4
   0A43 26                 2301 	add	a,@r0
   0A44 F6                 2302 	mov	@r0,a
   0A45 EF                 2303 	mov	a,r7
   0A46 08                 2304 	inc	r0
   0A47 36                 2305 	addc	a,@r0
   0A48 F6                 2306 	mov	@r0,a
                           2307 ;	../fb_app_rs.c:348: return(adr);
   0A49 A8 10              2308 	mov	r0,_bp
   0A4B 08                 2309 	inc	r0
   0A4C 86 82              2310 	mov	dpl,@r0
   0A4E 08                 2311 	inc	r0
   0A4F 86 83              2312 	mov	dph,@r0
   0A51 85 10 81           2313 	mov	sp,_bp
   0A54 D0 10              2314 	pop	_bp
   0A56 22                 2315 	ret
                           2316 ;------------------------------------------------------------
                           2317 ;Allocation info for local variables in function 'equal_pos'
                           2318 ;------------------------------------------------------------
                           2319 ;n                         Allocated to registers r7 
                           2320 ;------------------------------------------------------------
                           2321 ;	../fb_app_rs.c:354: unsigned char equal_pos(void)
                           2322 ;	-----------------------------------------
                           2323 ;	 function equal_pos
                           2324 ;	-----------------------------------------
   0A57                    2325 _equal_pos:
                           2326 ;	../fb_app_rs.c:358: n=0;
   0A57 7F 00              2327 	mov	r7,#0x00
                           2328 ;	../fb_app_rs.c:360: while(n<(rsinpos-1))
   0A59 7E 00              2329 	mov	r6,#0x00
   0A5B                    2330 00103$:
   0A5B AC 42              2331 	mov	r4,_rsinpos
   0A5D 7D 00              2332 	mov	r5,#0x00
   0A5F 1C                 2333 	dec	r4
   0A60 BC FF 01           2334 	cjne	r4,#0xFF,00111$
   0A63 1D                 2335 	dec	r5
   0A64                    2336 00111$:
   0A64 8E 02              2337 	mov	ar2,r6
   0A66 7B 00              2338 	mov	r3,#0x00
   0A68 C3                 2339 	clr	c
   0A69 EA                 2340 	mov	a,r2
   0A6A 9C                 2341 	subb	a,r4
   0A6B EB                 2342 	mov	a,r3
   0A6C 64 80              2343 	xrl	a,#0x80
   0A6E 8D F0              2344 	mov	b,r5
   0A70 63 F0 80           2345 	xrl	b,#0x80
   0A73 95 F0              2346 	subb	a,b
   0A75 50 11              2347 	jnc	00105$
                           2348 ;	../fb_app_rs.c:362: if(rsin[n]=='=')return(n);
   0A77 EE                 2349 	mov	a,r6
   0A78 24 24              2350 	add	a,#_rsin
   0A7A F9                 2351 	mov	r1,a
   0A7B 87 05              2352 	mov	ar5,@r1
   0A7D BD 3D 03           2353 	cjne	r5,#0x3D,00102$
   0A80 8F 82              2354 	mov	dpl,r7
   0A82 22                 2355 	ret
   0A83                    2356 00102$:
                           2357 ;	../fb_app_rs.c:363: n++;
   0A83 0E                 2358 	inc	r6
   0A84 8E 07              2359 	mov	ar7,r6
   0A86 80 D3              2360 	sjmp	00103$
   0A88                    2361 00105$:
                           2362 ;	../fb_app_rs.c:365: return(0xFF);
   0A88 75 82 FF           2363 	mov	dpl,#0xFF
   0A8B 22                 2364 	ret
                           2365 ;------------------------------------------------------------
                           2366 ;Allocation info for local variables in function 'serial_int'
                           2367 ;------------------------------------------------------------
                           2368 ;	../fb_app_rs.c:369: void serial_int(void) __interrupt (4) __using (1)	// Interrupt on received char from serial port
                           2369 ;	-----------------------------------------
                           2370 ;	 function serial_int
                           2371 ;	-----------------------------------------
   0A8C                    2372 _serial_int:
                    000F   2373 	ar7 = 0x0F
                    000E   2374 	ar6 = 0x0E
                    000D   2375 	ar5 = 0x0D
                    000C   2376 	ar4 = 0x0C
                    000B   2377 	ar3 = 0x0B
                    000A   2378 	ar2 = 0x0A
                    0009   2379 	ar1 = 0x09
                    0008   2380 	ar0 = 0x08
   0A8C C0 E0              2381 	push	acc
   0A8E C0 82              2382 	push	dpl
   0A90 C0 83              2383 	push	dph
   0A92 C0 D0              2384 	push	psw
   0A94 75 D0 08           2385 	mov	psw,#0x08
                           2386 ;	../fb_app_rs.c:371: ES=0;
   0A97 C2 AC              2387 	clr	_IEN0_4
                           2388 ;	../fb_app_rs.c:372: if (RI){
   0A99 30 98 30           2389 	jnb	_SCON_0,00112$
                           2390 ;	../fb_app_rs.c:373: if (rsinpos<30) {
   0A9C 74 E2              2391 	mov	a,#0x100 - 0x1E
   0A9E 25 42              2392 	add	a,_rsinpos
   0AA0 40 25              2393 	jc	00109$
                           2394 ;	../fb_app_rs.c:374: rxledcount=0x40;// * RXLED kurz eischalten
   0AA2 75 49 40           2395 	mov	_rxledcount,#0x40
                           2396 ;	../fb_app_rs.c:375: if(SBUF!=0x0A) {
   0AA5 74 0A              2397 	mov	a,#0x0A
   0AA7 B5 99 02           2398 	cjne	a,_SBUF,00122$
   0AAA 80 1E              2399 	sjmp	00110$
   0AAC                    2400 00122$:
                           2401 ;	../fb_app_rs.c:376: rsin[rsinpos]=SBUF;		// store byte in rsin
   0AAC E5 42              2402 	mov	a,_rsinpos
   0AAE 24 24              2403 	add	a,#_rsin
   0AB0 F8                 2404 	mov	r0,a
   0AB1 A6 99              2405 	mov	@r0,_SBUF
                           2406 ;	../fb_app_rs.c:377: rsinpos++;
   0AB3 05 42              2407 	inc	_rsinpos
                           2408 ;	../fb_app_rs.c:378: if (echo) {
   0AB5 90 1C FD           2409 	mov	dptr,#_echo
   0AB8 E4                 2410 	clr	a
   0AB9 93                 2411 	movc	a,@a+dptr
   0ABA FF                 2412 	mov	r7,a
   0ABB 60 0D              2413 	jz	00110$
                           2414 ;	../fb_app_rs.c:379: while(!TI);
   0ABD                    2415 00101$:
                           2416 ;	../fb_app_rs.c:380: TI=0;
   0ABD 10 99 02           2417 	jbc	_SCON_1,00124$
   0AC0 80 FB              2418 	sjmp	00101$
   0AC2                    2419 00124$:
                           2420 ;	../fb_app_rs.c:381: SBUF=SBUF;
   0AC2 85 99 99           2421 	mov	_SBUF,_SBUF
   0AC5 80 03              2422 	sjmp	00110$
   0AC7                    2423 00109$:
                           2424 ;	../fb_app_rs.c:385: else rsinpos=0;
   0AC7 75 42 00           2425 	mov	_rsinpos,#0x00
   0ACA                    2426 00110$:
                           2427 ;	../fb_app_rs.c:386: RI=0;	
   0ACA C2 98              2428 	clr	_SCON_0
   0ACC                    2429 00112$:
                           2430 ;	../fb_app_rs.c:388: ES=1;
   0ACC D2 AC              2431 	setb	_IEN0_4
   0ACE D0 D0              2432 	pop	psw
   0AD0 D0 83              2433 	pop	dph
   0AD2 D0 82              2434 	pop	dpl
   0AD4 D0 E0              2435 	pop	acc
   0AD6 32                 2436 	reti
                           2437 ;	eliminated unneeded push/pop b
                           2438 ;------------------------------------------------------------
                           2439 ;Allocation info for local variables in function 'send_ok'
                           2440 ;------------------------------------------------------------
                           2441 ;	../fb_app_rs.c:391: void send_ok(void)
                           2442 ;	-----------------------------------------
                           2443 ;	 function send_ok
                           2444 ;	-----------------------------------------
   0AD7                    2445 _send_ok:
                    0007   2446 	ar7 = 0x07
                    0006   2447 	ar6 = 0x06
                    0005   2448 	ar5 = 0x05
                    0004   2449 	ar4 = 0x04
                    0003   2450 	ar3 = 0x03
                    0002   2451 	ar2 = 0x02
                    0001   2452 	ar1 = 0x01
                    0000   2453 	ar0 = 0x00
                           2454 ;	../fb_app_rs.c:393: rs_send_s("OK\n");
   0AD7 90 1C 05           2455 	mov	dptr,#__str_1
   0ADA 75 F0 80           2456 	mov	b,#0x80
   0ADD 02 0D 1B           2457 	ljmp	_rs_send_s
                           2458 ;------------------------------------------------------------
                           2459 ;Allocation info for local variables in function 'set_filtermode'
                           2460 ;------------------------------------------------------------
                           2461 ;mode                      Allocated to registers r7 
                           2462 ;------------------------------------------------------------
                           2463 ;	../fb_app_rs.c:396: void set_filtermode(unsigned char mode)
                           2464 ;	-----------------------------------------
                           2465 ;	 function set_filtermode
                           2466 ;	-----------------------------------------
   0AE0                    2467 _set_filtermode:
   0AE0 AF 82              2468 	mov	r7,dpl
                           2469 ;	../fb_app_rs.c:398: write_ok=0;
   0AE2 C2 01              2470 	clr	_write_ok
                           2471 ;	../fb_app_rs.c:399: while (!write_ok) {
   0AE4 E4                 2472 	clr	a
   0AE5 BF 31 01           2473 	cjne	r7,#0x31,00115$
   0AE8 04                 2474 	inc	a
   0AE9                    2475 00115$:
   0AE9 FF                 2476 	mov	r7,a
   0AEA                    2477 00106$:
   0AEA 20 01 28           2478 	jb	_write_ok,00109$
                           2479 ;	../fb_app_rs.c:400: START_WRITECYCLE
   0AED 75 E4 00           2480 	mov	_FMCON,#0x00
                           2481 ;	../fb_app_rs.c:401: FMADRH = 0x1C;
   0AF0 75 E7 1C           2482 	mov	_FMADRH,#0x1C
                           2483 ;	../fb_app_rs.c:402: FMADRL = 0xFA;
   0AF3 75 E6 FA           2484 	mov	_FMADRL,#0xFA
                           2485 ;	../fb_app_rs.c:403: if(mode =='1'){
   0AF6 EF                 2486 	mov	a,r7
   0AF7 60 09              2487 	jz	00102$
                           2488 ;	../fb_app_rs.c:404: filtermode=1;
   0AF9 D2 00              2489 	setb	_filtermode
                           2490 ;	../fb_app_rs.c:405: transparency=0;
   0AFB C2 10              2491 	clr	_transparency
                           2492 ;	../fb_app_rs.c:406: FMDATA = 1;		// LSB
   0AFD 75 E5 01           2493 	mov	_FMDATA,#0x01
   0B00 80 07              2494 	sjmp	00103$
   0B02                    2495 00102$:
                           2496 ;	../fb_app_rs.c:409: filtermode=0;
   0B02 C2 00              2497 	clr	_filtermode
                           2498 ;	../fb_app_rs.c:410: transparency=1;
   0B04 D2 10              2499 	setb	_transparency
                           2500 ;	../fb_app_rs.c:411: FMDATA=0;
   0B06 75 E5 00           2501 	mov	_FMDATA,#0x00
   0B09                    2502 00103$:
                           2503 ;	../fb_app_rs.c:413: STOP_WRITECYCLE
   0B09 75 E4 68           2504 	mov	_FMCON,#0x68
                           2505 ;	../fb_app_rs.c:414: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   0B0C E5 E4              2506 	mov	a,_FMCON
   0B0E 20 E0 D9           2507 	jb	acc.0,00106$
   0B11 D2 01              2508 	setb	_write_ok
   0B13 80 D5              2509 	sjmp	00106$
   0B15                    2510 00109$:
   0B15 22                 2511 	ret
                           2512 ;------------------------------------------------------------
                           2513 ;Allocation info for local variables in function 'restart_app'
                           2514 ;------------------------------------------------------------
                           2515 ;n                         Allocated to registers r7 
                           2516 ;------------------------------------------------------------
                           2517 ;	../fb_app_rs.c:419: void restart_app(void)
                           2518 ;	-----------------------------------------
                           2519 ;	 function restart_app
                           2520 ;	-----------------------------------------
   0B16                    2521 _restart_app:
                           2522 ;	../fb_app_rs.c:424: P0M1=0x00;
   0B16 75 84 00           2523 	mov	_P0M1,#0x00
                           2524 ;	../fb_app_rs.c:425: P0M2=0xC0;
   0B19 75 85 C0           2525 	mov	_P0M2,#0xC0
                           2526 ;	../fb_app_rs.c:426: P0=0xC0;
   0B1C 75 80 C0           2527 	mov	_P0,#0xC0
                           2528 ;	../fb_app_rs.c:428: for (n=0;n<255;n++) ;	// Warten bis Bus stabil
   0B1F 7F FF              2529 	mov	r7,#0xFF
   0B21                    2530 00103$:
   0B21 8F 06              2531 	mov	ar6,r7
   0B23 1E                 2532 	dec	r6
   0B24 8E 07              2533 	mov	ar7,r6
   0B26 EF                 2534 	mov	a,r7
   0B27 70 F8              2535 	jnz	00103$
                           2536 ;	../fb_app_rs.c:433: RI=0;
   0B29 C2 98              2537 	clr	_SCON_0
                           2538 ;	../fb_app_rs.c:434: TI=1;
   0B2B D2 99              2539 	setb	_SCON_1
                           2540 ;	../fb_app_rs.c:435: ES=1;
   0B2D D2 AC              2541 	setb	_IEN0_4
   0B2F 22                 2542 	ret
                           2543 	.area CSEG    (CODE)
                           2544 	.area CONST   (CODE)
                    1CFA   2545 _fm	=	0x1cfa
                    1CFB   2546 _pa_h	=	0x1cfb
                    1CFC   2547 _pa_l	=	0x1cfc
                    1CF8   2548 _sga_h	=	0x1cf8
                    1CF9   2549 _sga_l	=	0x1cf9
                    1D00   2550 _ga_db	=	0x1d00
                    1CFD   2551 _echo	=	0x1cfd
   1C03                    2552 __str_0:
   1C03 0A                 2553 	.db 0x0A
   1C04 00                 2554 	.db 0x00
   1C05                    2555 __str_1:
   1C05 4F 4B              2556 	.ascii "OK"
   1C07 0A                 2557 	.db 0x0A
   1C08 00                 2558 	.db 0x00
                           2559 	.area XINIT   (CODE)
                           2560 	.area CABS    (ABS,CODE)
   1CF7                    2561 	.org 0x1CF7
   1CF7                    2562 _esc_char:
   1CF7 66                 2563 	.db #0x66	; 102	'f'
   1CFE                    2564 	.org 0x1CFE
   1CFE                    2565 _baud:
   1CFE C0 00              2566 	.byte #0xC0,#0x00	; 192
