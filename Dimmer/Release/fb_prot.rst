                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
                              4 ; This file was generated Sun Aug 14 13:44:19 2011
                              5 ;--------------------------------------------------------
                              6 	.module fb_prot
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _P3_1
                             13 	.globl _P3_0
                             14 	.globl _P1_7
                             15 	.globl _P1_6
                             16 	.globl _P1_5
                             17 	.globl _P1_4
                             18 	.globl _P1_3
                             19 	.globl _P1_2
                             20 	.globl _P1_1
                             21 	.globl _P1_0
                             22 	.globl _P0_7
                             23 	.globl _P0_6
                             24 	.globl _P0_5
                             25 	.globl _P0_4
                             26 	.globl _P0_3
                             27 	.globl _P0_2
                             28 	.globl _P0_1
                             29 	.globl _P0_0
                             30 	.globl _I2CON_0
                             31 	.globl _I2CON_2
                             32 	.globl _I2CON_3
                             33 	.globl _I2CON_4
                             34 	.globl _I2CON_5
                             35 	.globl _I2CON_6
                             36 	.globl _SCON_7
                             37 	.globl _SCON_6
                             38 	.globl _SCON_5
                             39 	.globl _SCON_4
                             40 	.globl _SCON_3
                             41 	.globl _SCON_2
                             42 	.globl _SCON_1
                             43 	.globl _SCON_0
                             44 	.globl _IP0_0
                             45 	.globl _IP0_1
                             46 	.globl _IP0_2
                             47 	.globl _IP0_3
                             48 	.globl _IP0_4
                             49 	.globl _IP0_5
                             50 	.globl _IP0_6
                             51 	.globl _IP1_0
                             52 	.globl _IP1_1
                             53 	.globl _IP1_2
                             54 	.globl _IP1_6
                             55 	.globl _IEN1_0
                             56 	.globl _IEN1_1
                             57 	.globl _IEN1_2
                             58 	.globl _IEN0_0
                             59 	.globl _IEN0_1
                             60 	.globl _IEN0_2
                             61 	.globl _IEN0_3
                             62 	.globl _IEN0_4
                             63 	.globl _IEN0_5
                             64 	.globl _IEN0_6
                             65 	.globl _IEN0_7
                             66 	.globl _TCON_0
                             67 	.globl _TCON_1
                             68 	.globl _TCON_2
                             69 	.globl _TCON_3
                             70 	.globl _TCON_4
                             71 	.globl _TCON_5
                             72 	.globl _TCON_6
                             73 	.globl _TCON_7
                             74 	.globl _PSW_7
                             75 	.globl _PSW_6
                             76 	.globl _PSW_5
                             77 	.globl _PSW_4
                             78 	.globl _PSW_3
                             79 	.globl _PSW_2
                             80 	.globl _PSW_1
                             81 	.globl _PSW_0
                             82 	.globl _IEN1
                             83 	.globl _IP0H
                             84 	.globl _WFEED2
                             85 	.globl _WFEED1
                             86 	.globl _WDL
                             87 	.globl _WDCON
                             88 	.globl _TRIM
                             89 	.globl _TAMOD
                             90 	.globl _SSTAT
                             91 	.globl _RTCL
                             92 	.globl _RTCH
                             93 	.globl _RTCCON
                             94 	.globl _RSTSRC
                             95 	.globl _PT0AD
                             96 	.globl _PCONA
                             97 	.globl _P3M2
                             98 	.globl _P3M1
                             99 	.globl _P1M2
                            100 	.globl _P1M1
                            101 	.globl _P0M2
                            102 	.globl _P0M1
                            103 	.globl _KBPATN
                            104 	.globl _KBMASK
                            105 	.globl _KBCON
                            106 	.globl _IP1H
                            107 	.globl _IP1
                            108 	.globl _I2STAT
                            109 	.globl _I2SCLL
                            110 	.globl _I2SCLH
                            111 	.globl _I2DAT
                            112 	.globl _I2CON
                            113 	.globl _I2ADR
                            114 	.globl _FMDATA
                            115 	.globl _FMCON
                            116 	.globl _FMADRL
                            117 	.globl _FMADRH
                            118 	.globl _DIVM
                            119 	.globl _CMP2
                            120 	.globl _CMP1
                            121 	.globl _BRGCON
                            122 	.globl _BRGR1
                            123 	.globl _BRGR0
                            124 	.globl _SADEN
                            125 	.globl _SADDR
                            126 	.globl _AUXR1
                            127 	.globl _SBUF
                            128 	.globl _SCON
                            129 	.globl _IP0
                            130 	.globl _IEN0
                            131 	.globl _TH1
                            132 	.globl _TH0
                            133 	.globl _TL1
                            134 	.globl _TL0
                            135 	.globl _TMOD
                            136 	.globl _TCON
                            137 	.globl _PCON
                            138 	.globl _DPH
                            139 	.globl _DPL
                            140 	.globl _SP
                            141 	.globl _B
                            142 	.globl _ACC
                            143 	.globl _PSW
                            144 	.globl _P3
                            145 	.globl _P1
                            146 	.globl _P0
                            147 	.globl _con_timer_refresh
                            148 	.globl _transparency
                            149 	.globl _connected
                            150 	.globl _last_tel
                            151 	.globl _pcount
                            152 	.globl _conl
                            153 	.globl _conh
                            154 	.globl _timer1
                            155 	.globl _get_ack
                            156 	.globl _send_telegramm
                            157 	.globl _send_ack
                            158 	.globl _send_nack
                            159 	.globl _T_Disconnect
                            160 	.globl _ncd_quit
                            161 	.globl _read_masq
                            162 	.globl _read_memory
                            163 	.globl _write_memory
                            164 	.globl _set_pa
                            165 	.globl _read_pa
                            166 	.globl _read_objflags
                            167 	.globl _find_ga
                            168 	.globl _gapos_in_gat
                            169 	.globl _find_first_objno
                            170 	.globl _read_obj_value
                            171 	.globl _read_obj_type
                            172 	.globl _write_obj_value
                            173 	.globl _restart_prot
                            174 ;--------------------------------------------------------
                            175 ; special function registers
                            176 ;--------------------------------------------------------
                            177 	.area RSEG    (DATA)
                    0080    178 _P0	=	0x0080
                    0090    179 _P1	=	0x0090
                    00B0    180 _P3	=	0x00b0
                    00D0    181 _PSW	=	0x00d0
                    00E0    182 _ACC	=	0x00e0
                    00F0    183 _B	=	0x00f0
                    0081    184 _SP	=	0x0081
                    0082    185 _DPL	=	0x0082
                    0083    186 _DPH	=	0x0083
                    0087    187 _PCON	=	0x0087
                    0088    188 _TCON	=	0x0088
                    0089    189 _TMOD	=	0x0089
                    008A    190 _TL0	=	0x008a
                    008B    191 _TL1	=	0x008b
                    008C    192 _TH0	=	0x008c
                    008D    193 _TH1	=	0x008d
                    00A8    194 _IEN0	=	0x00a8
                    00B8    195 _IP0	=	0x00b8
                    0098    196 _SCON	=	0x0098
                    0099    197 _SBUF	=	0x0099
                    00A2    198 _AUXR1	=	0x00a2
                    00A9    199 _SADDR	=	0x00a9
                    00B9    200 _SADEN	=	0x00b9
                    00BE    201 _BRGR0	=	0x00be
                    00BF    202 _BRGR1	=	0x00bf
                    00BD    203 _BRGCON	=	0x00bd
                    00AC    204 _CMP1	=	0x00ac
                    00AD    205 _CMP2	=	0x00ad
                    0095    206 _DIVM	=	0x0095
                    00E7    207 _FMADRH	=	0x00e7
                    00E6    208 _FMADRL	=	0x00e6
                    00E4    209 _FMCON	=	0x00e4
                    00E5    210 _FMDATA	=	0x00e5
                    00DB    211 _I2ADR	=	0x00db
                    00D8    212 _I2CON	=	0x00d8
                    00DA    213 _I2DAT	=	0x00da
                    00DD    214 _I2SCLH	=	0x00dd
                    00DC    215 _I2SCLL	=	0x00dc
                    00D9    216 _I2STAT	=	0x00d9
                    00F8    217 _IP1	=	0x00f8
                    00F7    218 _IP1H	=	0x00f7
                    0094    219 _KBCON	=	0x0094
                    0086    220 _KBMASK	=	0x0086
                    0093    221 _KBPATN	=	0x0093
                    0084    222 _P0M1	=	0x0084
                    0085    223 _P0M2	=	0x0085
                    0091    224 _P1M1	=	0x0091
                    0092    225 _P1M2	=	0x0092
                    00B1    226 _P3M1	=	0x00b1
                    00B2    227 _P3M2	=	0x00b2
                    00B5    228 _PCONA	=	0x00b5
                    00F6    229 _PT0AD	=	0x00f6
                    00DF    230 _RSTSRC	=	0x00df
                    00D1    231 _RTCCON	=	0x00d1
                    00D2    232 _RTCH	=	0x00d2
                    00D3    233 _RTCL	=	0x00d3
                    00BA    234 _SSTAT	=	0x00ba
                    008F    235 _TAMOD	=	0x008f
                    0096    236 _TRIM	=	0x0096
                    00A7    237 _WDCON	=	0x00a7
                    00C1    238 _WDL	=	0x00c1
                    00C2    239 _WFEED1	=	0x00c2
                    00C3    240 _WFEED2	=	0x00c3
                    00B7    241 _IP0H	=	0x00b7
                    00E8    242 _IEN1	=	0x00e8
                            243 ;--------------------------------------------------------
                            244 ; special function bits
                            245 ;--------------------------------------------------------
                            246 	.area RSEG    (DATA)
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
   0021                     326 bits:
   0021                     327 	.ds 1
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
   0011                     340 _conh::
   0011                     341 	.ds 1
   0012                     342 _conl::
   0012                     343 	.ds 1
   0013                     344 _pcount::
   0013                     345 	.ds 1
   0014                     346 _last_tel::
   0014                     347 	.ds 1
                            348 ;--------------------------------------------------------
                            349 ; overlayable items in internal ram 
                            350 ;--------------------------------------------------------
                            351 	.area OSEG    (OVR,DATA)
                            352 ;--------------------------------------------------------
                            353 ; indirectly addressable internal ram data
                            354 ;--------------------------------------------------------
                            355 	.area ISEG    (DATA)
                            356 ;--------------------------------------------------------
                            357 ; absolute internal ram data
                            358 ;--------------------------------------------------------
                            359 	.area IABS    (ABS,DATA)
                            360 	.area IABS    (ABS,DATA)
                            361 ;--------------------------------------------------------
                            362 ; bit data
                            363 ;--------------------------------------------------------
                            364 	.area BSEG    (BIT)
   0003                     365 _connected::
   0003                     366 	.ds 1
   0004                     367 _transparency::
   0004                     368 	.ds 1
   0005                     369 _con_timer_refresh::
   0005                     370 	.ds 1
                            371 ;--------------------------------------------------------
                            372 ; paged external ram data
                            373 ;--------------------------------------------------------
                            374 	.area PSEG    (PAG,XDATA)
                            375 ;--------------------------------------------------------
                            376 ; external ram data
                            377 ;--------------------------------------------------------
                            378 	.area XSEG    (XDATA)
                            379 ;--------------------------------------------------------
                            380 ; absolute external ram data
                            381 ;--------------------------------------------------------
                            382 	.area XABS    (ABS,XDATA)
                            383 ;--------------------------------------------------------
                            384 ; external initialized ram data
                            385 ;--------------------------------------------------------
                            386 	.area XISEG   (XDATA)
                            387 	.area HOME    (CODE)
                            388 	.area GSINIT0 (CODE)
                            389 	.area GSINIT1 (CODE)
                            390 	.area GSINIT2 (CODE)
                            391 	.area GSINIT3 (CODE)
                            392 	.area GSINIT4 (CODE)
                            393 	.area GSINIT5 (CODE)
                            394 	.area GSINIT  (CODE)
                            395 	.area GSFINAL (CODE)
                            396 	.area CSEG    (CODE)
                            397 ;--------------------------------------------------------
                            398 ; global & static initialisations
                            399 ;--------------------------------------------------------
                            400 	.area HOME    (CODE)
                            401 	.area GSINIT  (CODE)
                            402 	.area GSFINAL (CODE)
                            403 	.area GSINIT  (CODE)
                            404 ;--------------------------------------------------------
                            405 ; Home
                            406 ;--------------------------------------------------------
                            407 	.area HOME    (CODE)
                            408 	.area HOME    (CODE)
                            409 ;--------------------------------------------------------
                            410 ; code
                            411 ;--------------------------------------------------------
                            412 	.area CSEG    (CODE)
                            413 ;------------------------------------------------------------
                            414 ;Allocation info for local variables in function 'timer1'
                            415 ;------------------------------------------------------------
                            416 ;tpdu                      Allocated to registers r2 
                            417 ;------------------------------------------------------------
                            418 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:64: void timer1(void) interrupt 3
                            419 ;	-----------------------------------------
                            420 ;	 function timer1
                            421 ;	-----------------------------------------
   0FD8                     422 _timer1:
                    0002    423 	ar2 = 0x02
                    0003    424 	ar3 = 0x03
                    0004    425 	ar4 = 0x04
                    0005    426 	ar5 = 0x05
                    0006    427 	ar6 = 0x06
                    0007    428 	ar7 = 0x07
                    0000    429 	ar0 = 0x00
                    0001    430 	ar1 = 0x01
   0FD8 C0 21               431 	push	bits
   0FDA C0 E0               432 	push	acc
   0FDC C0 F0               433 	push	b
   0FDE C0 82               434 	push	dpl
   0FE0 C0 83               435 	push	dph
   0FE2 C0 02               436 	push	(0+2)
   0FE4 C0 03               437 	push	(0+3)
   0FE6 C0 04               438 	push	(0+4)
   0FE8 C0 05               439 	push	(0+5)
   0FEA C0 06               440 	push	(0+6)
   0FEC C0 07               441 	push	(0+7)
   0FEE C0 00               442 	push	(0+0)
   0FF0 C0 01               443 	push	(0+1)
   0FF2 C0 D0               444 	push	psw
   0FF4 75 D0 00            445 	mov	psw,#0x00
                            446 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:69: EX1=0;					// ext. Interrupt stoppen 
   0FF7 C2 AA               447 	clr	_IEN0_2
                            448 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:70: ET1=0;					// Interrupt von Timer 1 sperren
   0FF9 C2 AB               449 	clr	_IEN0_3
                            450 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:71: set_timer1(4720);		// 4720 und neu starten fuer korrekte Positionierung des ACK Bytes
   0FFB 90 12 70            451 	mov	dptr,#0x1270
   0FFE 12 0E 83            452 	lcall	_set_timer1
                            453 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:77: if(cs==0xff) {			// Checksum des Telegramms ist OK
   1001 74 FF               454 	mov	a,#0xFF
   1003 B5 65 02            455 	cjne	a,_cs,00189$
   1006 80 03               456 	sjmp	00190$
   1008                     457 00189$:
   1008 02 11 19            458 	ljmp	00152$
   100B                     459 00190$:
                            460 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:78: if (transparency) last_tel=telpos;
   100B 30 04 06            461 	jnb	_transparency,00147$
   100E 85 64 14            462 	mov	_last_tel,_telpos
   1011 02 11 22            463 	ljmp	00153$
   1014                     464 00147$:
                            465 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:81: tpdu=telegramm[6]&0xC3;
   1014 74 C3               466 	mov	a,#0xC3
   1016 55 53               467 	anl	a,(_telegramm + 0x0006)
   1018 FA                  468 	mov	r2,a
                            469 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:85: if(telegramm[3]==0 && telegramm[4]==0) {		
   1019 E5 50               470 	mov	a,(_telegramm + 0x0003)
   101B FB                  471 	mov	r3,a
   101C 70 34               472 	jnz	00143$
   101E E5 51               473 	mov	a,(_telegramm + 0x0004)
   1020 70 30               474 	jnz	00143$
                            475 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:87: if(userram[0x60] & 0x01) {		// prog mode
   1022 90 1C 60            476 	mov	dptr,#(_userram + 0x0060)
   1025 E4                  477 	clr	a
   1026 93                  478 	movc	a,@a+dptr
   1027 FC                  479 	mov	r4,a
   1028 20 E0 03            480 	jb	acc.0,00194$
   102B 02 11 22            481 	ljmp	00153$
   102E                     482 00194$:
                            483 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:88: if(tpdu==0x00 && telegramm[7]==0xC0) set_pa();	// set_pa_req
   102E EA                  484 	mov	a,r2
   102F 70 0C               485 	jnz	00102$
   1031 74 C0               486 	mov	a,#0xC0
   1033 B5 54 07            487 	cjne	a,(_telegramm + 0x0007),00102$
   1036 C0 02               488 	push	ar2
   1038 12 13 B2            489 	lcall	_set_pa
   103B D0 02               490 	pop	ar2
   103D                     491 00102$:
                            492 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:89: if(tpdu==0x01 && telegramm[7]==0x00) read_pa();	// read_pa_req
   103D BA 01 02            493 	cjne	r2,#0x01,00198$
   1040 80 03               494 	sjmp	00199$
   1042                     495 00198$:
   1042 02 11 22            496 	ljmp	00153$
   1045                     497 00199$:
   1045 E5 54               498 	mov	a,(_telegramm + 0x0007)
   1047 60 03               499 	jz	00200$
   1049 02 11 22            500 	ljmp	00153$
   104C                     501 00200$:
   104C 12 13 C9            502 	lcall	_read_pa
   104F 02 11 22            503 	ljmp	00153$
   1052                     504 00143$:
                            505 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:96: if((telegramm[5]&0x80)==0x00) {	// Destination Adress Flag = Bit 7, 0=phys. Adr., 1=Gruppenadr.														
   1052 E5 52               506 	mov	a,(_telegramm + 0x0005)
   1054 30 E7 03            507 	jnb	acc.7,00201$
   1057 02 11 02            508 	ljmp	00140$
   105A                     509 00201$:
                            510 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:97: if(telegramm[3]==eeprom[ADDRTAB+1] && telegramm[4]==eeprom[ADDRTAB+2]) {	// nur wenn es die eigene phys. Adr. ist
   105A 90 1D 17            511 	mov	dptr,#(_eeprom + 0x0017)
   105D E4                  512 	clr	a
   105E 93                  513 	movc	a,@a+dptr
   105F FC                  514 	mov	r4,a
   1060 EB                  515 	mov	a,r3
   1061 B5 04 02            516 	cjne	a,ar4,00202$
   1064 80 03               517 	sjmp	00203$
   1066                     518 00202$:
   1066 02 11 22            519 	ljmp	00153$
   1069                     520 00203$:
   1069 90 1D 18            521 	mov	dptr,#(_eeprom + 0x0018)
   106C E4                  522 	clr	a
   106D 93                  523 	movc	a,@a+dptr
   106E FB                  524 	mov	r3,a
   106F B5 51 02            525 	cjne	a,(_telegramm + 0x0004),00204$
   1072 80 03               526 	sjmp	00205$
   1074                     527 00204$:
   1074 02 11 22            528 	ljmp	00153$
   1077                     529 00205$:
                            530 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:101: switch (tpdu) {	// transport layer control field
   1077 BA 42 02            531 	cjne	r2,#0x42,00206$
   107A 80 1E               532 	sjmp	00109$
   107C                     533 00206$:
   107C BA 43 02            534 	cjne	r2,#0x43,00207$
   107F 80 35               535 	sjmp	00114$
   1081                     536 00207$:
   1081 BA 80 02            537 	cjne	r2,#0x80,00208$
   1084 80 49               538 	sjmp	00119$
   1086                     539 00208$:
   1086 BA 81 02            540 	cjne	r2,#0x81,00209$
   1089 80 59               541 	sjmp	00122$
   108B                     542 00209$:
   108B BA C2 03            543 	cjne	r2,#0xC2,00210$
   108E 02 10 F8            544 	ljmp	00127$
   1091                     545 00210$:
   1091 BA C3 03            546 	cjne	r2,#0xC3,00211$
   1094 02 10 FD            547 	ljmp	00128$
   1097                     548 00211$:
   1097 02 11 22            549 	ljmp	00153$
                            550 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:103: case 0x42:	// Data PDU - memory operations
   109A                     551 00109$:
                            552 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:104: con_timer_refresh=1; // connect timeout auffrischen
   109A D2 05               553 	setb	_con_timer_refresh
                            554 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:105: if((telegramm[7]&0xC0)==0x80) write_memory();	// write_memory_request	
   109C 74 C0               555 	mov	a,#0xC0
   109E 55 54               556 	anl	a,(_telegramm + 0x0007)
   10A0 FB                  557 	mov	r3,a
   10A1 BB 80 03            558 	cjne	r3,#0x80,00111$
   10A4 12 13 30            559 	lcall	_write_memory
   10A7                     560 00111$:
                            561 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:106: if((telegramm[7]&0xC0)==0x00) read_memory();	// read_memory_request
   10A7 E5 54               562 	mov	a,(_telegramm + 0x0007)
   10A9 54 C0               563 	anl	a,#0xC0
   10AB 60 03               564 	jz	00215$
   10AD 02 11 22            565 	ljmp	00153$
   10B0                     566 00215$:
   10B0 12 12 D4            567 	lcall	_read_memory
                            568 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:107: break;
   10B3 02 11 22            569 	ljmp	00153$
                            570 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:109: case 0x43:	// Data PDU - misc.
   10B6                     571 00114$:
                            572 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:110: con_timer_refresh=1; // connect timeout auffrischen
   10B6 D2 05               573 	setb	_con_timer_refresh
                            574 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:111: if(telegramm[7]==0x80) {	// restart request
   10B8 74 80               575 	mov	a,#0x80
   10BA B5 54 09            576 	cjne	a,(_telegramm + 0x0007),00116$
                            577 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:112: restart_hw();			// Hardware zuruecksetzen
   10BD 12 0E 9B            578 	lcall	_restart_hw
                            579 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:113: restart_prot();			// Protokoll-relevante Parameter zuruecksetzen
   10C0 12 16 49            580 	lcall	_restart_prot
                            581 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:114: restart_app();			// Anwendungsspezifische Einstellungen zuruecksetzen
   10C3 12 07 4B            582 	lcall	_restart_app
   10C6                     583 00116$:
                            584 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:116: if(telegramm[7]==0x00) read_masq();		// read_mask_version_request
   10C6 E5 54               585 	mov	a,(_telegramm + 0x0007)
   10C8 70 58               586 	jnz	00153$
   10CA 12 12 B9            587 	lcall	_read_masq
                            588 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:117: break;
                            589 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:119: case 0x80:	// UCD Verbindungsaufbau
   10CD 80 53               590 	sjmp	00153$
   10CF                     591 00119$:
                            592 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:120: if(!connected) {		// wenn bereits verbunden: ignorieren
   10CF 20 03 50            593 	jb	_connected,00153$
                            594 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:121: con_timer_refresh=1; // connect timeout auffrischen
   10D2 D2 05               595 	setb	_con_timer_refresh
                            596 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:122: connected=1;
   10D4 D2 03               597 	setb	_connected
                            598 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:123: conh=telegramm[1];	// phys. Adresse des Verbindungspartners
   10D6 85 4E 11            599 	mov	_conh,(_telegramm + 0x0001)
                            600 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:124: conl=telegramm[2];
   10D9 85 4F 12            601 	mov	_conl,(_telegramm + 0x0002)
                            602 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:125: send_ack();			// quittieren
   10DC 12 12 3B            603 	lcall	_send_ack
                            604 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:126: pcount=1;			// Paketzaehler zuruecksetzen
   10DF 75 13 01            605 	mov	_pcount,#0x01
                            606 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:128: break;
                            607 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:130: case 0x81:	// UCD Verbindungsabbau
   10E2 80 3E               608 	sjmp	00153$
   10E4                     609 00122$:
                            610 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:131: if(conh==telegramm[1] && conl==telegramm[2] && connected)	{	// nur abbauen, wenn verbunden und Anforderung vom Verbindungspartner, kein ACK senden
   10E4 E5 4E               611 	mov	a,(_telegramm + 0x0001)
   10E6 B5 11 39            612 	cjne	a,_conh,00153$
   10E9 E5 4F               613 	mov	a,(_telegramm + 0x0002)
   10EB B5 12 34            614 	cjne	a,_conl,00153$
                            615 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:132: connected=0;
   10EE 10 03 02            616 	jbc	_connected,00224$
   10F1 80 2F               617 	sjmp	00153$
   10F3                     618 00224$:
                            619 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:133: pcount=1;			// Paketzaehler zuruecksetzen
   10F3 75 13 01            620 	mov	_pcount,#0x01
                            621 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:135: break;
                            622 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:137: case 0xC2:	// ACK PDU
   10F6 80 2A               623 	sjmp	00153$
   10F8                     624 00127$:
                            625 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:138: send_ack();				// auf NCD_Quittierung mit ACK antworten
   10F8 12 12 3B            626 	lcall	_send_ack
                            627 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:139: break;
                            628 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:141: case 0xC3:	// NACK PDU
   10FB 80 25               629 	sjmp	00153$
   10FD                     630 00128$:
                            631 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:142: send_ack();
   10FD 12 12 3B            632 	lcall	_send_ack
                            633 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:143: }
   1100 80 20               634 	sjmp	00153$
   1102                     635 00140$:
                            636 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:150: if(tpdu==0x00){
   1102 EA                  637 	mov	a,r2
   1103 70 1D               638 	jnz	00153$
                            639 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:151: if((telegramm[7]&0xC0)==0x80) write_value_req();	// Objektwerte schreiben (zB. EISx)
   1105 74 C0               640 	mov	a,#0xC0
   1107 55 54               641 	anl	a,(_telegramm + 0x0007)
   1109 FA                  642 	mov	r2,a
   110A BA 80 03            643 	cjne	r2,#0x80,00134$
   110D 12 01 2C            644 	lcall	_write_value_req
   1110                     645 00134$:
                            646 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:152: if(telegramm[7]==0x00) read_value_req();			// Objektwert lesen und als read_value_response auf Bus senden
   1110 E5 54               647 	mov	a,(_telegramm + 0x0007)
   1112 70 0E               648 	jnz	00153$
   1114 12 06 6A            649 	lcall	_read_value_req
   1117 80 09               650 	sjmp	00153$
   1119                     651 00152$:
                            652 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:161: if(telpos>1) send_nack();	// falls checksum nicht ok war, nack senden
   1119 E5 64               653 	mov	a,_telpos
   111B 24 FE               654 	add	a,#0xff - 0x01
   111D 50 03               655 	jnc	00153$
   111F 12 12 4E            656 	lcall	_send_nack
   1122                     657 00153$:
                            658 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:163: telpos=0;  
   1122 75 64 00            659 	mov	_telpos,#0x00
                            660 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:164: IE1=0;					// IRQ Flag zuruecksetzen
   1125 C2 8B               661 	clr	_TCON_3
                            662 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:165: EX1=1;					// externen Interrupt 0 wieder freigeben
   1127 D2 AA               663 	setb	_IEN0_2
                            664 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:166: if (!transparency) {	// Telegramm abgearbeitet
   1129 20 04 05            665 	jb	_transparency,00156$
                            666 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:167: TR1=0;				// Timer 1 stoppen
   112C C2 8E               667 	clr	_TCON_6
                            668 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:168: cs=0;				// cheksum zurï¿½cksetzen
   112E 75 65 00            669 	mov	_cs,#0x00
   1131                     670 00156$:
   1131 D0 D0               671 	pop	psw
   1133 D0 01               672 	pop	(0+1)
   1135 D0 00               673 	pop	(0+0)
   1137 D0 07               674 	pop	(0+7)
   1139 D0 06               675 	pop	(0+6)
   113B D0 05               676 	pop	(0+5)
   113D D0 04               677 	pop	(0+4)
   113F D0 03               678 	pop	(0+3)
   1141 D0 02               679 	pop	(0+2)
   1143 D0 83               680 	pop	dph
   1145 D0 82               681 	pop	dpl
   1147 D0 F0               682 	pop	b
   1149 D0 E0               683 	pop	acc
   114B D0 21               684 	pop	bits
   114D 32                  685 	reti
                            686 ;------------------------------------------------------------
                            687 ;Allocation info for local variables in function 'get_ack'
                            688 ;------------------------------------------------------------
                            689 ;ret                       Allocated to registers b0 
                            690 ;n                         Allocated to registers r2 r3 
                            691 ;------------------------------------------------------------
                            692 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:180: bit get_ack(void)
                            693 ;	-----------------------------------------
                            694 ;	 function get_ack
                            695 ;	-----------------------------------------
   114E                     696 _get_ack:
                            697 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:185: n=0;
   114E 7A 00               698 	mov	r2,#0x00
   1150 7B 00               699 	mov	r3,#0x00
                            700 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:186: ret=0;
   1152 C2 08               701 	clr	b0
                            702 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:187: do {
   1154                     703 00107$:
                            704 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:188: if(FBINC) n++;
   1154 30 94 07            705 	jnb	_P1_4,00105$
   1157 0A                  706 	inc	r2
   1158 BA 00 20            707 	cjne	r2,#0x00,00108$
   115B 0B                  708 	inc	r3
   115C 80 1D               709 	sjmp	00108$
   115E                     710 00105$:
                            711 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:190: if (get_byte()==0xCC && parity_ok) {
   115E C0 02               712 	push	ar2
   1160 C0 03               713 	push	ar3
   1162 C0 21               714 	push	bits
   1164 12 0C 95            715 	lcall	_get_byte
   1167 AC 82               716 	mov	r4,dpl
   1169 D0 21               717 	pop	bits
   116B D0 03               718 	pop	ar3
   116D D0 02               719 	pop	ar2
   116F BC CC 09            720 	cjne	r4,#0xCC,00108$
   1172 30 01 06            721 	jnb	_parity_ok,00108$
                            722 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:191: ret=1;
   1175 D2 08               723 	setb	b0
                            724 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:192: n=3000;
   1177 7A B8               725 	mov	r2,#0xB8
   1179 7B 0B               726 	mov	r3,#0x0B
   117B                     727 00108$:
                            728 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:195: } while (n<3000);
   117B C3                  729 	clr	c
   117C EA                  730 	mov	a,r2
   117D 94 B8               731 	subb	a,#0xB8
   117F EB                  732 	mov	a,r3
   1180 94 0B               733 	subb	a,#0x0B
   1182 40 D0               734 	jc	00107$
                            735 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:196: return(ret);
   1184 A2 08               736 	mov	c,b0
   1186 22                  737 	ret
                            738 ;------------------------------------------------------------
                            739 ;Allocation info for local variables in function 'send_telegramm'
                            740 ;------------------------------------------------------------
                            741 ;data_laenge               Allocated to stack - offset 1
                            742 ;l                         Allocated to registers r5 
                            743 ;checksum                  Allocated to registers r3 
                            744 ;r                         Allocated to registers r2 
                            745 ;------------------------------------------------------------
                            746 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:207: void send_telegramm(void)
                            747 ;	-----------------------------------------
                            748 ;	 function send_telegramm
                            749 ;	-----------------------------------------
   1187                     750 _send_telegramm:
   1187 C0 15               751 	push	_bp
   1189 85 81 15            752 	mov	_bp,sp
   118C 05 81               753 	inc	sp
                            754 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:210: r=0;
   118E 7A 00               755 	mov	r2,#0x00
                            756 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:211: do
   1190                     757 00108$:
                            758 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:213: checksum=0;
   1190 7B 00               759 	mov	r3,#0x00
                            760 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:214: data_laenge=telegramm[5]&0x0F;	// Telegramm-Laenge = Bit 0 bis 3
   1192 A8 15               761 	mov	r0,_bp
   1194 08                  762 	inc	r0
   1195 74 0F               763 	mov	a,#0x0F
   1197 55 52               764 	anl	a,(_telegramm + 0x0005)
   1199 F6                  765 	mov	@r0,a
                            766 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:216: set_timer1(18780);			// Warten bis Bus frei ist
   119A 90 49 5C            767 	mov	dptr,#0x495C
   119D C0 02               768 	push	ar2
   119F C0 03               769 	push	ar3
   11A1 12 0E 83            770 	lcall	_set_timer1
   11A4 D0 03               771 	pop	ar3
   11A6 D0 02               772 	pop	ar2
                            773 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:217: while(!TF1) {
   11A8                     774 00103$:
   11A8 20 8F 13            775 	jb	_TCON_7,00105$
                            776 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:218: if(!FBINC) set_timer1(18780);
   11AB 20 94 FA            777 	jb	_P1_4,00103$
   11AE 90 49 5C            778 	mov	dptr,#0x495C
   11B1 C0 02               779 	push	ar2
   11B3 C0 03               780 	push	ar3
   11B5 12 0E 83            781 	lcall	_set_timer1
   11B8 D0 03               782 	pop	ar3
   11BA D0 02               783 	pop	ar2
   11BC 80 EA               784 	sjmp	00103$
   11BE                     785 00105$:
                            786 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:220: TR1=0;
   11BE C2 8E               787 	clr	_TCON_6
                            788 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:222: for(l=0;l<=data_laenge+6;l++)
   11C0 7D 00               789 	mov	r5,#0x00
   11C2                     790 00111$:
   11C2 C0 02               791 	push	ar2
   11C4 A8 15               792 	mov	r0,_bp
   11C6 08                  793 	inc	r0
   11C7 86 06               794 	mov	ar6,@r0
   11C9 7F 00               795 	mov	r7,#0x00
   11CB 74 06               796 	mov	a,#0x06
   11CD 2E                  797 	add	a,r6
   11CE FE                  798 	mov	r6,a
   11CF E4                  799 	clr	a
   11D0 3F                  800 	addc	a,r7
   11D1 FF                  801 	mov	r7,a
   11D2 8D 02               802 	mov	ar2,r5
   11D4 7C 00               803 	mov	r4,#0x00
   11D6 C3                  804 	clr	c
   11D7 EE                  805 	mov	a,r6
   11D8 9A                  806 	subb	a,r2
   11D9 EF                  807 	mov	a,r7
   11DA 64 80               808 	xrl	a,#0x80
   11DC 8C F0               809 	mov	b,r4
   11DE 63 F0 80            810 	xrl	b,#0x80
   11E1 95 F0               811 	subb	a,b
   11E3 D0 02               812 	pop	ar2
   11E5 40 2D               813 	jc	00114$
                            814 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:224: sendbyte(telegramm[l]);
   11E7 ED                  815 	mov	a,r5
   11E8 24 4D               816 	add	a,#_telegramm
   11EA F8                  817 	mov	r0,a
   11EB 86 82               818 	mov	dpl,@r0
   11ED C0 02               819 	push	ar2
   11EF C0 03               820 	push	ar3
   11F1 C0 05               821 	push	ar5
   11F3 12 0D B1            822 	lcall	_sendbyte
   11F6 D0 05               823 	pop	ar5
   11F8 D0 03               824 	pop	ar3
                            825 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:225: checksum^=telegramm[l];
   11FA ED                  826 	mov	a,r5
   11FB 24 4D               827 	add	a,#_telegramm
   11FD F8                  828 	mov	r0,a
   11FE E6                  829 	mov	a,@r0
   11FF 62 03               830 	xrl	ar3,a
                            831 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:226: sysdelay(1230);			// Interbyte-Abstand
   1201 90 04 CE            832 	mov	dptr,#0x04CE
   1204 C0 03               833 	push	ar3
   1206 C0 05               834 	push	ar5
   1208 12 0E 4E            835 	lcall	_sysdelay
   120B D0 05               836 	pop	ar5
   120D D0 03               837 	pop	ar3
   120F D0 02               838 	pop	ar2
                            839 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:222: for(l=0;l<=data_laenge+6;l++)
   1211 0D                  840 	inc	r5
   1212 80 AE               841 	sjmp	00111$
   1214                     842 00114$:
                            843 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:228: checksum=~checksum;
   1214 EB                  844 	mov	a,r3
   1215 F4                  845 	cpl	a
                            846 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:229: sendbyte(checksum);
   1216 F5 82               847 	mov	dpl,a
   1218 C0 02               848 	push	ar2
   121A 12 0D B1            849 	lcall	_sendbyte
                            850 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:230: if(get_ack()) r=3;		// wenn ACK empfangen, dann nicht nochmal senden
   121D 12 11 4E            851 	lcall	_get_ack
   1220 D0 02               852 	pop	ar2
   1222 50 02               853 	jnc	00107$
   1224 7A 03               854 	mov	r2,#0x03
   1226                     855 00107$:
                            856 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:231: r++;
   1226 0A                  857 	inc	r2
                            858 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:232: telegramm[0]&=0xDF;			// Bit 5 loeschen = Wiederholung
   1227 74 DF               859 	mov	a,#0xDF
   1229 55 4D               860 	anl	a,_telegramm
   122B F5 4D               861 	mov	_telegramm,a
                            862 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:234: while(r<=3); 				// falls kein ACK max. 3 Mal wiederholen
   122D EA                  863 	mov	a,r2
   122E 24 FC               864 	add	a,#0xff - 0x03
   1230 40 03               865 	jc	00129$
   1232 02 11 90            866 	ljmp	00108$
   1235                     867 00129$:
   1235 85 15 81            868 	mov	sp,_bp
   1238 D0 15               869 	pop	_bp
   123A 22                  870 	ret
                            871 ;------------------------------------------------------------
                            872 ;Allocation info for local variables in function 'send_ack'
                            873 ;------------------------------------------------------------
                            874 ;------------------------------------------------------------
                            875 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:247: void send_ack(void)
                            876 ;	-----------------------------------------
                            877 ;	 function send_ack
                            878 ;	-----------------------------------------
   123B                     879 _send_ack:
                            880 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:249: while(!TF1&&TR1);
   123B                     881 00102$:
   123B 20 8F 03            882 	jb	_TCON_7,00104$
   123E 20 8E FA            883 	jb	_TCON_6,00102$
   1241                     884 00104$:
                            885 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:250: sendbyte(0xCC);
   1241 75 82 CC            886 	mov	dpl,#0xCC
   1244 12 0D B1            887 	lcall	_sendbyte
                            888 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:251: TR1=0;
   1247 C2 8E               889 	clr	_TCON_6
                            890 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:252: TF1=0;
   1249 C2 8F               891 	clr	_TCON_7
                            892 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:253: ET1=0;
   124B C2 AB               893 	clr	_IEN0_3
   124D 22                  894 	ret
                            895 ;------------------------------------------------------------
                            896 ;Allocation info for local variables in function 'send_nack'
                            897 ;------------------------------------------------------------
                            898 ;------------------------------------------------------------
                            899 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:264: void send_nack(void)
                            900 ;	-----------------------------------------
                            901 ;	 function send_nack
                            902 ;	-----------------------------------------
   124E                     903 _send_nack:
                            904 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:266: while(!TF1&&TR1);
   124E                     905 00102$:
   124E 20 8F 03            906 	jb	_TCON_7,00104$
   1251 20 8E FA            907 	jb	_TCON_6,00102$
   1254                     908 00104$:
                            909 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:267: sendbyte(0x0C);
   1254 75 82 0C            910 	mov	dpl,#0x0C
   1257 12 0D B1            911 	lcall	_sendbyte
                            912 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:268: TR1=0;
   125A C2 8E               913 	clr	_TCON_6
                            914 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:269: TF1=0;
   125C C2 8F               915 	clr	_TCON_7
                            916 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:270: ET1=0;
   125E C2 AB               917 	clr	_IEN0_3
   1260 22                  918 	ret
                            919 ;------------------------------------------------------------
                            920 ;Allocation info for local variables in function 'T_Disconnect'
                            921 ;------------------------------------------------------------
                            922 ;------------------------------------------------------------
                            923 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:275: void T_Disconnect(void)
                            924 ;	-----------------------------------------
                            925 ;	 function T_Disconnect
                            926 ;	-----------------------------------------
   1261                     927 _T_Disconnect:
                            928 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:277: EX1=0;
   1261 C2 AA               929 	clr	_IEN0_2
                            930 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:278: telegramm[0]=0xB0;			// Control Byte			
   1263 75 4D B0            931 	mov	_telegramm,#0xB0
                            932 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:279: telegramm[1]=eeprom[ADDRTAB+1];			// Quelladresse ist phys. Adresse
   1266 90 1D 17            933 	mov	dptr,#(_eeprom + 0x0017)
   1269 E4                  934 	clr	a
   126A 93                  935 	movc	a,@a+dptr
   126B FA                  936 	mov	r2,a
   126C 8A 4E               937 	mov	(_telegramm + 0x0001),r2
                            938 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:280: telegramm[2]=eeprom[ADDRTAB+2];
   126E 90 1D 18            939 	mov	dptr,#(_eeprom + 0x0018)
   1271 E4                  940 	clr	a
   1272 93                  941 	movc	a,@a+dptr
   1273 FA                  942 	mov	r2,a
   1274 8A 4F               943 	mov	(_telegramm + 0x0002),r2
                            944 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:281: telegramm[3]=conh;		// Zieladresse ist Quelladresse vom Aufbau
   1276 85 11 50            945 	mov	(_telegramm + 0x0003),_conh
                            946 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:282: telegramm[4]=conl;
   1279 85 12 51            947 	mov	(_telegramm + 0x0004),_conl
                            948 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:283: telegramm[5]=0x60;			// DRL
   127C 75 52 60            949 	mov	(_telegramm + 0x0005),#0x60
                            950 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:284: telegramm[6]=0x81;			// 
   127F 75 53 81            951 	mov	(_telegramm + 0x0006),#0x81
                            952 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:285: send_telegramm();
   1282 12 11 87            953 	lcall	_send_telegramm
                            954 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:286: IE1=0;
   1285 C2 8B               955 	clr	_TCON_3
                            956 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:287: EX1=1;
   1287 D2 AA               957 	setb	_IEN0_2
                            958 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:288: connected=0;
   1289 C2 03               959 	clr	_connected
   128B 22                  960 	ret
                            961 ;------------------------------------------------------------
                            962 ;Allocation info for local variables in function 'ncd_quit'
                            963 ;------------------------------------------------------------
                            964 ;------------------------------------------------------------
                            965 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:297: void ncd_quit(void)
                            966 ;	-----------------------------------------
                            967 ;	 function ncd_quit
                            968 ;	-----------------------------------------
   128C                     969 _ncd_quit:
                            970 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:299: telegramm[0]=0xB0;			// Control Byte			
   128C 75 4D B0            971 	mov	_telegramm,#0xB0
                            972 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:300: telegramm[3]=telegramm[1];		// Zieladresse wird Quelladresse
   128F AA 4E               973 	mov	r2,(_telegramm + 0x0001)
   1291 8A 50               974 	mov	(_telegramm + 0x0003),r2
                            975 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:301: telegramm[4]=telegramm[2];
   1293 AA 4F               976 	mov	r2,(_telegramm + 0x0002)
   1295 8A 51               977 	mov	(_telegramm + 0x0004),r2
                            978 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:302: telegramm[1]=eeprom[ADDRTAB+1];			// Quelladresse ist phys. Adresse
   1297 90 1D 17            979 	mov	dptr,#(_eeprom + 0x0017)
   129A E4                  980 	clr	a
   129B 93                  981 	movc	a,@a+dptr
   129C FA                  982 	mov	r2,a
   129D 8A 4E               983 	mov	(_telegramm + 0x0001),r2
                            984 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:303: telegramm[2]=eeprom[ADDRTAB+2];
   129F 90 1D 18            985 	mov	dptr,#(_eeprom + 0x0018)
   12A2 E4                  986 	clr	a
   12A3 93                  987 	movc	a,@a+dptr
   12A4 FA                  988 	mov	r2,a
   12A5 8A 4F               989 	mov	(_telegramm + 0x0002),r2
                            990 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:304: telegramm[5]=0x60;			// DRL
   12A7 75 52 60            991 	mov	(_telegramm + 0x0005),#0x60
                            992 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:305: telegramm[6]|=0xC0;			// Bit 6 und 7 setzen (TCPI = 11 NCD Quittierung)
   12AA 74 C0               993 	mov	a,#0xC0
   12AC 45 53               994 	orl	a,(_telegramm + 0x0006)
   12AE FA                  995 	mov	r2,a
   12AF 8A 53               996 	mov	(_telegramm + 0x0006),r2
                            997 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:306: telegramm[6]&=0xFE;			// Bit 0 loeschen 
   12B1 74 FE               998 	mov	a,#0xFE
   12B3 5A                  999 	anl	a,r2
   12B4 F5 53              1000 	mov	(_telegramm + 0x0006),a
                           1001 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:307: send_telegramm();
   12B6 02 11 87           1002 	ljmp	_send_telegramm
                           1003 ;------------------------------------------------------------
                           1004 ;Allocation info for local variables in function 'read_masq'
                           1005 ;------------------------------------------------------------
                           1006 ;------------------------------------------------------------
                           1007 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:318: void read_masq(void)
                           1008 ;	-----------------------------------------
                           1009 ;	 function read_masq
                           1010 ;	-----------------------------------------
   12B9                    1011 _read_masq:
                           1012 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:322: send_ack();
   12B9 12 12 3B           1013 	lcall	_send_ack
                           1014 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:323: ncd_quit();				// NCD Quittierung senden
   12BC 12 12 8C           1015 	lcall	_ncd_quit
                           1016 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:325: telegramm[0]=0xB0;			// Control Byte
   12BF 75 4D B0           1017 	mov	_telegramm,#0xB0
                           1018 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:327: telegramm[5]=0x63;			// DRL
   12C2 75 52 63           1019 	mov	(_telegramm + 0x0005),#0x63
                           1020 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:328: telegramm[6]=0x43;
   12C5 75 53 43           1021 	mov	(_telegramm + 0x0006),#0x43
                           1022 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:329: telegramm[7]=0x40;
   12C8 75 54 40           1023 	mov	(_telegramm + 0x0007),#0x40
                           1024 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:330: telegramm[8]=0x00;
   12CB 75 55 00           1025 	mov	(_telegramm + 0x0008),#0x00
                           1026 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:331: telegramm[9]=0x12;			// Maskenversion 1 = BCU1
   12CE 75 56 12           1027 	mov	(_telegramm + 0x0009),#0x12
                           1028 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:332: send_telegramm();
   12D1 02 11 87           1029 	ljmp	_send_telegramm
                           1030 ;------------------------------------------------------------
                           1031 ;Allocation info for local variables in function 'read_memory'
                           1032 ;------------------------------------------------------------
                           1033 ;ab                        Allocated to registers r2 
                           1034 ;n                         Allocated to registers r3 
                           1035 ;------------------------------------------------------------
                           1036 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:345: void read_memory(void)
                           1037 ;	-----------------------------------------
                           1038 ;	 function read_memory
                           1039 ;	-----------------------------------------
   12D4                    1040 _read_memory:
                           1041 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:349: send_ack();					// erstmal ack senden
   12D4 12 12 3B           1042 	lcall	_send_ack
                           1043 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:350: ab=telegramm[7];			// Anzahl Bytes
   12D7 AA 54              1044 	mov	r2,(_telegramm + 0x0007)
                           1045 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:351: ncd_quit();					// quittieren
   12D9 C0 02              1046 	push	ar2
   12DB 12 12 8C           1047 	lcall	_ncd_quit
   12DE D0 02              1048 	pop	ar2
                           1049 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:353: for(n=0;n<ab;n++) {
   12E0 7B 00              1050 	mov	r3,#0x00
   12E2                    1051 00104$:
   12E2 C3                 1052 	clr	c
   12E3 EB                 1053 	mov	a,r3
   12E4 9A                 1054 	subb	a,r2
   12E5 50 27              1055 	jnc	00107$
                           1056 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:354: if (telegramm[8]==0) telegramm[n+10]=userram[telegramm[9]+n];
   12E7 E5 55              1057 	mov	a,(_telegramm + 0x0008)
   12E9 70 11              1058 	jnz	00102$
   12EB 74 0A              1059 	mov	a,#0x0A
   12ED 2B                 1060 	add	a,r3
   12EE 24 4D              1061 	add	a,#_telegramm
   12F0 F8                 1062 	mov	r0,a
   12F1 EB                 1063 	mov	a,r3
   12F2 25 56              1064 	add	a,(_telegramm + 0x0009)
   12F4 90 1C 00           1065 	mov	dptr,#_userram
   12F7 93                 1066 	movc	a,@a+dptr
   12F8 FC                 1067 	mov	r4,a
   12F9 F6                 1068 	mov	@r0,a
   12FA 80 0F              1069 	sjmp	00106$
   12FC                    1070 00102$:
                           1071 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:355: else telegramm[n+10]=eeprom[telegramm[9]+n];    
   12FC 74 0A              1072 	mov	a,#0x0A
   12FE 2B                 1073 	add	a,r3
   12FF 24 4D              1074 	add	a,#_telegramm
   1301 F8                 1075 	mov	r0,a
   1302 EB                 1076 	mov	a,r3
   1303 25 56              1077 	add	a,(_telegramm + 0x0009)
   1305 90 1D 00           1078 	mov	dptr,#_eeprom
   1308 93                 1079 	movc	a,@a+dptr
   1309 FC                 1080 	mov	r4,a
   130A F6                 1081 	mov	@r0,a
   130B                    1082 00106$:
                           1083 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:353: for(n=0;n<ab;n++) {
   130B 0B                 1084 	inc	r3
   130C 80 D4              1085 	sjmp	00104$
   130E                    1086 00107$:
                           1087 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:358: telegramm[0]=0xB0;			// read_memory_res senden
   130E 75 4D B0           1088 	mov	_telegramm,#0xB0
                           1089 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:360: telegramm[5]=ab+0x63;		// DRL (Anzahl Bytes + 3)
   1311 74 63              1090 	mov	a,#0x63
   1313 2A                 1091 	add	a,r2
   1314 F5 52              1092 	mov	(_telegramm + 0x0005),a
                           1093 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:361: telegramm[6]=(pcount<<2)|0x42;	// Paketzaehler, TCPI und ersten beiden Befehlsbits
   1316 E5 13              1094 	mov	a,_pcount
   1318 25 13              1095 	add	a,_pcount
   131A 25 E0              1096 	add	a,acc
   131C FB                 1097 	mov	r3,a
   131D 74 42              1098 	mov	a,#0x42
   131F 4B                 1099 	orl	a,r3
   1320 F5 53              1100 	mov	(_telegramm + 0x0006),a
                           1101 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:362: telegramm[7]=ab|0x40;		// letzten 2 Befehlsbits
   1322 74 40              1102 	mov	a,#0x40
   1324 4A                 1103 	orl	a,r2
   1325 F5 54              1104 	mov	(_telegramm + 0x0007),a
                           1105 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:363: send_telegramm();
   1327 12 11 87           1106 	lcall	_send_telegramm
                           1107 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:365: pcount++;					// Paketzï¿½hler erhoehen
   132A 05 13              1108 	inc	_pcount
                           1109 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:366: pcount&=0x0F;				// max. 15
   132C 53 13 0F           1110 	anl	_pcount,#0x0F
   132F 22                 1111 	ret
                           1112 ;------------------------------------------------------------
                           1113 ;Allocation info for local variables in function 'write_memory'
                           1114 ;------------------------------------------------------------
                           1115 ;ab                        Allocated to registers r2 
                           1116 ;n                         Allocated to registers r5 
                           1117 ;sloc0                     Allocated to stack - offset 1
                           1118 ;------------------------------------------------------------
                           1119 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:377: void write_memory(void)
                           1120 ;	-----------------------------------------
                           1121 ;	 function write_memory
                           1122 ;	-----------------------------------------
   1330                    1123 _write_memory:
   1330 C0 15              1124 	push	_bp
   1332 85 81 15           1125 	mov	_bp,sp
   1335 05 81              1126 	inc	sp
   1337 05 81              1127 	inc	sp
                           1128 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:381: send_ack();
   1339 12 12 3B           1129 	lcall	_send_ack
                           1130 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:382: ab=telegramm[7]&0x0F;		// Anzahl Bytes
   133C 74 0F              1131 	mov	a,#0x0F
   133E 55 54              1132 	anl	a,(_telegramm + 0x0007)
   1340 FA                 1133 	mov	r2,a
                           1134 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:383: ncd_quit();
   1341 C0 02              1135 	push	ar2
   1343 12 12 8C           1136 	lcall	_ncd_quit
   1346 D0 02              1137 	pop	ar2
                           1138 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:385: FMCON=0x00;					// load command, leert das pageregister
   1348 75 E4 00           1139 	mov	_FMCON,#0x00
                           1140 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:386: for(n=0;n<ab;n++) {
   134B 74 01              1141 	mov	a,#0x01
   134D 55 55              1142 	anl	a,(_telegramm + 0x0008)
   134F 24 1C              1143 	add	a,#0x1C
   1351 FB                 1144 	mov	r3,a
   1352 AC 56              1145 	mov	r4,(_telegramm + 0x0009)
   1354 7D 00              1146 	mov	r5,#0x00
   1356                    1147 00104$:
   1356 C3                 1148 	clr	c
   1357 ED                 1149 	mov	a,r5
   1358 9A                 1150 	subb	a,r2
   1359 50 4E              1151 	jnc	00107$
                           1152 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:389: WRITE_BYTE(telegramm[8],telegramm[9]+n,telegramm[n+10])
   135B 8B E7              1153 	mov	_FMADRH,r3
   135D ED                 1154 	mov	a,r5
   135E 2C                 1155 	add	a,r4
   135F F5 E6              1156 	mov	_FMADRL,a
   1361 74 0A              1157 	mov	a,#0x0A
   1363 2D                 1158 	add	a,r5
   1364 24 4D              1159 	add	a,#_telegramm
   1366 F8                 1160 	mov	r0,a
   1367 86 E5              1161 	mov	_FMDATA,@r0
                           1162 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:391: if ((((telegramm[9]+n)&0x3F)==0x3F) && n!=(ab-1)) {		// Ende des 64-Byte Pageregisters, also zwischendurch flashen
   1369 8C 06              1163 	mov	ar6,r4
   136B 7F 00              1164 	mov	r7,#0x00
   136D A8 15              1165 	mov	r0,_bp
   136F 08                 1166 	inc	r0
   1370 A6 05              1167 	mov	@r0,ar5
   1372 08                 1168 	inc	r0
   1373 76 00              1169 	mov	@r0,#0x00
   1375 A8 15              1170 	mov	r0,_bp
   1377 08                 1171 	inc	r0
   1378 E6                 1172 	mov	a,@r0
   1379 2E                 1173 	add	a,r6
   137A FE                 1174 	mov	r6,a
   137B 08                 1175 	inc	r0
   137C E6                 1176 	mov	a,@r0
   137D 3F                 1177 	addc	a,r7
   137E 53 06 3F           1178 	anl	ar6,#0x3F
   1381 7F 00              1179 	mov	r7,#0x00
   1383 BE 3F 20           1180 	cjne	r6,#0x3F,00106$
   1386 BF 00 1D           1181 	cjne	r7,#0x00,00106$
   1389 8A 06              1182 	mov	ar6,r2
   138B 7F 00              1183 	mov	r7,#0x00
   138D 1E                 1184 	dec	r6
   138E BE FF 01           1185 	cjne	r6,#0xff,00118$
   1391 1F                 1186 	dec	r7
   1392                    1187 00118$:
   1392 A8 15              1188 	mov	r0,_bp
   1394 08                 1189 	inc	r0
   1395 E6                 1190 	mov	a,@r0
   1396 B5 06 07           1191 	cjne	a,ar6,00119$
   1399 08                 1192 	inc	r0
   139A E6                 1193 	mov	a,@r0
   139B B5 07 02           1194 	cjne	a,ar7,00119$
   139E 80 06              1195 	sjmp	00106$
   13A0                    1196 00119$:
                           1197 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:392: STOP_WRITECYCLE			// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   13A0 75 E4 68           1198 	mov	_FMCON,#0x68
                           1199 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:393: START_WRITECYCLE		// load command, leert das pageregister
   13A3 75 E4 00           1200 	mov	_FMCON,#0x00
   13A6                    1201 00106$:
                           1202 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:386: for(n=0;n<ab;n++) {
   13A6 0D                 1203 	inc	r5
   13A7 80 AD              1204 	sjmp	00104$
   13A9                    1205 00107$:
                           1206 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:396: FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   13A9 75 E4 68           1207 	mov	_FMCON,#0x68
   13AC 85 15 81           1208 	mov	sp,_bp
   13AF D0 15              1209 	pop	_bp
   13B1 22                 1210 	ret
                           1211 ;------------------------------------------------------------
                           1212 ;Allocation info for local variables in function 'set_pa'
                           1213 ;------------------------------------------------------------
                           1214 ;------------------------------------------------------------
                           1215 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:408: void set_pa(void)
                           1216 ;	-----------------------------------------
                           1217 ;	 function set_pa
                           1218 ;	-----------------------------------------
   13B2                    1219 _set_pa:
                           1220 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:410: EA=0;
   13B2 C2 AF              1221 	clr	_IEN0_7
                           1222 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:411: FMCON=0x00;				// load command, leert das pageregister
   13B4 75 E4 00           1223 	mov	_FMCON,#0x00
                           1224 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:412: FMADRH=EEPROMADDRH;
   13B7 75 E7 1D           1225 	mov	_FMADRH,#0x1D
                           1226 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:413: FMADRL=ADDRTAB+1;
   13BA 75 E6 17           1227 	mov	_FMADRL,#0x17
                           1228 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:414: FMDATA=telegramm[8];
   13BD 85 55 E5           1229 	mov	_FMDATA,(_telegramm + 0x0008)
                           1230 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:415: FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
   13C0 85 56 E5           1231 	mov	_FMDATA,(_telegramm + 0x0009)
                           1232 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:416: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   13C3 75 E4 68           1233 	mov	_FMCON,#0x68
                           1234 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:417: EA=1;
   13C6 D2 AF              1235 	setb	_IEN0_7
   13C8 22                 1236 	ret
                           1237 ;------------------------------------------------------------
                           1238 ;Allocation info for local variables in function 'read_pa'
                           1239 ;------------------------------------------------------------
                           1240 ;------------------------------------------------------------
                           1241 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:428: void read_pa(void)
                           1242 ;	-----------------------------------------
                           1243 ;	 function read_pa
                           1244 ;	-----------------------------------------
   13C9                    1245 _read_pa:
                           1246 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:430: send_ack();
   13C9 12 12 3B           1247 	lcall	_send_ack
                           1248 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:431: telegramm[0]=0xB0;				// read_memory_res senden
   13CC 75 4D B0           1249 	mov	_telegramm,#0xB0
                           1250 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:432: telegramm[1]=eeprom[ADDRTAB+1];	// PA
   13CF 90 1D 17           1251 	mov	dptr,#(_eeprom + 0x0017)
   13D2 E4                 1252 	clr	a
   13D3 93                 1253 	movc	a,@a+dptr
   13D4 FA                 1254 	mov	r2,a
   13D5 8A 4E              1255 	mov	(_telegramm + 0x0001),r2
                           1256 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:433: telegramm[2]=eeprom[ADDRTAB+2];
   13D7 90 1D 18           1257 	mov	dptr,#(_eeprom + 0x0018)
   13DA E4                 1258 	clr	a
   13DB 93                 1259 	movc	a,@a+dptr
   13DC FA                 1260 	mov	r2,a
   13DD 8A 4F              1261 	mov	(_telegramm + 0x0002),r2
                           1262 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:434: telegramm[3]=0x00;
   13DF 75 50 00           1263 	mov	(_telegramm + 0x0003),#0x00
                           1264 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:435: telegramm[4]=0x00;			
   13E2 75 51 00           1265 	mov	(_telegramm + 0x0004),#0x00
                           1266 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:436: telegramm[5]=0xE1;				// DRL
   13E5 75 52 E1           1267 	mov	(_telegramm + 0x0005),#0xE1
                           1268 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:437: telegramm[6]=0x01;		
   13E8 75 53 01           1269 	mov	(_telegramm + 0x0006),#0x01
                           1270 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:438: telegramm[7]=0x40;
   13EB 75 54 40           1271 	mov	(_telegramm + 0x0007),#0x40
                           1272 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:439: send_telegramm();
   13EE 02 11 87           1273 	ljmp	_send_telegramm
                           1274 ;------------------------------------------------------------
                           1275 ;Allocation info for local variables in function 'read_objflags'
                           1276 ;------------------------------------------------------------
                           1277 ;objno                     Allocated to registers r2 
                           1278 ;ctp                       Allocated to registers r3 
                           1279 ;addr                      Allocated to registers 
                           1280 ;flags                     Allocated to registers 
                           1281 ;------------------------------------------------------------
                           1282 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:501: unsigned char read_objflags(unsigned char objno)
                           1283 ;	-----------------------------------------
                           1284 ;	 function read_objflags
                           1285 ;	-----------------------------------------
   13F1                    1286 _read_objflags:
   13F1 AA 82              1287 	mov	r2,dpl
                           1288 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:505: ctp=eeprom[COMMSTABPTR];		// COMMSTAB Pointer
   13F3 90 1D 12           1289 	mov	dptr,#(_eeprom + 0x0012)
   13F6 E4                 1290 	clr	a
   13F7 93                 1291 	movc	a,@a+dptr
   13F8 FB                 1292 	mov	r3,a
                           1293 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:506: addr=ctp+3+3*objno;
   13F9 0B                 1294 	inc	r3
   13FA 0B                 1295 	inc	r3
   13FB 0B                 1296 	inc	r3
   13FC EA                 1297 	mov	a,r2
   13FD 75 F0 03           1298 	mov	b,#0x03
   1400 A4                 1299 	mul	ab
   1401 2B                 1300 	add	a,r3
                           1301 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:507: flags=eeprom[addr];	// Objektflags
   1402 F5 82              1302 	mov	dpl,a
   1404 75 83 1D           1303 	mov	dph,#(_eeprom >> 8)
   1407 E4                 1304 	clr	a
   1408 93                 1305 	movc	a,@a+dptr
                           1306 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:508: return(flags);
   1409 F5 82              1307 	mov	dpl,a
   140B 22                 1308 	ret
                           1309 ;------------------------------------------------------------
                           1310 ;Allocation info for local variables in function 'find_ga'
                           1311 ;------------------------------------------------------------
                           1312 ;objno                     Allocated to registers r2 
                           1313 ;asstab                    Allocated to registers r4 
                           1314 ;gapos                     Allocated to registers r3 
                           1315 ;gah                       Allocated to registers r2 
                           1316 ;gal                       Allocated to registers r3 
                           1317 ;ga                        Allocated to registers r3 r2 
                           1318 ;------------------------------------------------------------
                           1319 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:523: unsigned int find_ga(unsigned char objno)
                           1320 ;	-----------------------------------------
                           1321 ;	 function find_ga
                           1322 ;	-----------------------------------------
   140C                    1323 _find_ga:
   140C AA 82              1324 	mov	r2,dpl
                           1325 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:528: gapos=0xFE;
   140E 7B FE              1326 	mov	r3,#0xFE
                           1327 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:529: asstab=eeprom[ASSOCTABPTR];		// Adresse der Assoziationstabelle
   1410 90 1D 11           1328 	mov	dptr,#(_eeprom + 0x0011)
   1413 E4                 1329 	clr	a
   1414 93                 1330 	movc	a,@a+dptr
                           1331 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:531: if(eeprom[asstab+2+2*objno]==objno) gapos=eeprom[asstab+1+2*objno];
   1415 FC                 1332 	mov	r4,a
   1416 24 02              1333 	add	a,#0x02
   1418 FD                 1334 	mov	r5,a
   1419 EA                 1335 	mov	a,r2
   141A 2A                 1336 	add	a,r2
   141B FE                 1337 	mov	r6,a
   141C 2D                 1338 	add	a,r5
   141D 90 1D 00           1339 	mov	dptr,#_eeprom
   1420 93                 1340 	movc	a,@a+dptr
   1421 FD                 1341 	mov	r5,a
   1422 B5 02 09           1342 	cjne	a,ar2,00102$
   1425 EC                 1343 	mov	a,r4
   1426 04                 1344 	inc	a
   1427 2E                 1345 	add	a,r6
   1428 90 1D 00           1346 	mov	dptr,#_eeprom
   142B 93                 1347 	movc	a,@a+dptr
   142C FA                 1348 	mov	r2,a
   142D FB                 1349 	mov	r3,a
   142E                    1350 00102$:
                           1351 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:534: if(gapos!=0xFE) {
   142E BB FE 02           1352 	cjne	r3,#0xFE,00112$
   1431 80 1F              1353 	sjmp	00104$
   1433                    1354 00112$:
                           1355 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:536: gah=eeprom[ADDRTAB+1+gapos*2];
   1433 EB                 1356 	mov	a,r3
   1434 2B                 1357 	add	a,r3
   1435 FB                 1358 	mov	r3,a
   1436 24 17              1359 	add	a,#0x17
   1438 90 1D 00           1360 	mov	dptr,#_eeprom
   143B 93                 1361 	movc	a,@a+dptr
   143C FA                 1362 	mov	r2,a
                           1363 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:537: gal=eeprom[ADDRTAB+2+gapos*2];
   143D 74 18              1364 	mov	a,#0x18
   143F 2B                 1365 	add	a,r3
   1440 90 1D 00           1366 	mov	dptr,#_eeprom
   1443 93                 1367 	movc	a,@a+dptr
   1444 FB                 1368 	mov	r3,a
                           1369 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:538: ga=gal+256*gah;
   1445 7C 00              1370 	mov	r4,#0x00
   1447 8A 05              1371 	mov	ar5,r2
   1449 E4                 1372 	clr	a
   144A 2B                 1373 	add	a,r3
   144B FB                 1374 	mov	r3,a
   144C ED                 1375 	mov	a,r5
   144D 3C                 1376 	addc	a,r4
   144E FC                 1377 	mov	r4,a
   144F FA                 1378 	mov	r2,a
   1450 80 04              1379 	sjmp	00105$
   1452                    1380 00104$:
                           1381 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:541: else ga=0;
   1452 7B 00              1382 	mov	r3,#0x00
   1454 7A 00              1383 	mov	r2,#0x00
   1456                    1384 00105$:
                           1385 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:543: return(ga);
   1456 8B 82              1386 	mov	dpl,r3
   1458 8A 83              1387 	mov	dph,r2
   145A 22                 1388 	ret
                           1389 ;------------------------------------------------------------
                           1390 ;Allocation info for local variables in function 'gapos_in_gat'
                           1391 ;------------------------------------------------------------
                           1392 ;gal                       Allocated to stack - offset -3
                           1393 ;gah                       Allocated to registers r2 
                           1394 ;ga_position               Allocated to registers r4 
                           1395 ;ga_count                  Allocated to registers r3 
                           1396 ;n                         Allocated to registers 
                           1397 ;------------------------------------------------------------
                           1398 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:559: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
                           1399 ;	-----------------------------------------
                           1400 ;	 function gapos_in_gat
                           1401 ;	-----------------------------------------
   145B                    1402 _gapos_in_gat:
   145B C0 15              1403 	push	_bp
   145D 85 81 15           1404 	mov	_bp,sp
   1460 AA 82              1405 	mov	r2,dpl
                           1406 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:563: ga_count=eeprom[ADDRTAB];		// Anzahl der Adressen in der Adresstabelle
   1462 90 1D 16           1407 	mov	dptr,#(_eeprom + 0x0016)
   1465 E4                 1408 	clr	a
   1466 93                 1409 	movc	a,@a+dptr
                           1410 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:564: ga_position=0xFF; 			// default return Wert 0xFF = nicht gefunden
                           1411 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:565: if (ga_count) {
   1467 FB                 1412 	mov	r3,a
   1468 7C FF              1413 	mov	r4,#0xFF
   146A 60 2B              1414 	jz	00105$
                           1415 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:566: for (n=1;n<=ga_count;n++) {
   146C 7D 01              1416 	mov	r5,#0x01
   146E                    1417 00106$:
   146E C3                 1418 	clr	c
   146F EB                 1419 	mov	a,r3
   1470 9D                 1420 	subb	a,r5
   1471 40 24              1421 	jc	00105$
                           1422 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:567: if (gah==eeprom[ADDRTAB+n*2+1] && gal==eeprom[ADDRTAB+n*2+2]) ga_position=n;	// Berechnung in [] nicht in lokale var !!! 
   1473 ED                 1423 	mov	a,r5
   1474 2D                 1424 	add	a,r5
   1475 FE                 1425 	mov	r6,a
   1476 24 17              1426 	add	a,#0x17
   1478 90 1D 00           1427 	mov	dptr,#_eeprom
   147B 93                 1428 	movc	a,@a+dptr
   147C FF                 1429 	mov	r7,a
   147D EA                 1430 	mov	a,r2
   147E B5 07 13           1431 	cjne	a,ar7,00108$
   1481 74 18              1432 	mov	a,#0x18
   1483 2E                 1433 	add	a,r6
   1484 90 1D 00           1434 	mov	dptr,#_eeprom
   1487 93                 1435 	movc	a,@a+dptr
   1488 FE                 1436 	mov	r6,a
   1489 A8 15              1437 	mov	r0,_bp
   148B 18                 1438 	dec	r0
   148C 18                 1439 	dec	r0
   148D 18                 1440 	dec	r0
   148E E6                 1441 	mov	a,@r0
   148F B5 06 02           1442 	cjne	a,ar6,00108$
   1492 8D 04              1443 	mov	ar4,r5
   1494                    1444 00108$:
                           1445 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:566: for (n=1;n<=ga_count;n++) {
   1494 0D                 1446 	inc	r5
   1495 80 D7              1447 	sjmp	00106$
   1497                    1448 00105$:
                           1449 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:570: return (ga_position);
   1497 8C 82              1450 	mov	dpl,r4
   1499 D0 15              1451 	pop	_bp
   149B 22                 1452 	ret
                           1453 ;------------------------------------------------------------
                           1454 ;Allocation info for local variables in function 'find_first_objno'
                           1455 ;------------------------------------------------------------
                           1456 ;gal                       Allocated to stack - offset -3
                           1457 ;gah                       Allocated to registers r2 
                           1458 ;gapos                     Allocated to registers r2 
                           1459 ;gaposh                    Allocated to registers r6 
                           1460 ;atp                       Allocated to registers r4 
                           1461 ;assmax                    Allocated to stack - offset 1
                           1462 ;n                         Allocated to registers r7 
                           1463 ;objno                     Allocated to registers r3 
                           1464 ;sloc0                     Allocated to stack - offset 8
                           1465 ;------------------------------------------------------------
                           1466 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:584: unsigned char find_first_objno(unsigned char gah, unsigned char gal)
                           1467 ;	-----------------------------------------
                           1468 ;	 function find_first_objno
                           1469 ;	-----------------------------------------
   149C                    1470 _find_first_objno:
   149C C0 15              1471 	push	_bp
   149E 85 81 15           1472 	mov	_bp,sp
   14A1 05 81              1473 	inc	sp
   14A3 AA 82              1474 	mov	r2,dpl
                           1475 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:588: objno=0xFF;
   14A5 7B FF              1476 	mov	r3,#0xFF
                           1477 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:589: gapos=gapos_in_gat(gah,gal);
   14A7 C0 03              1478 	push	ar3
   14A9 A8 15              1479 	mov	r0,_bp
   14AB 18                 1480 	dec	r0
   14AC 18                 1481 	dec	r0
   14AD 18                 1482 	dec	r0
   14AE E6                 1483 	mov	a,@r0
   14AF C0 E0              1484 	push	acc
   14B1 8A 82              1485 	mov	dpl,r2
   14B3 12 14 5B           1486 	lcall	_gapos_in_gat
   14B6 AA 82              1487 	mov	r2,dpl
   14B8 15 81              1488 	dec	sp
   14BA D0 03              1489 	pop	ar3
                           1490 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:591: atp=eeprom[ASSOCTABPTR];
   14BC 90 1D 11           1491 	mov	dptr,#(_eeprom + 0x0011)
   14BF E4                 1492 	clr	a
   14C0 93                 1493 	movc	a,@a+dptr
                           1494 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:592: assmax=eeprom[atp];
   14C1 FC                 1495 	mov	r4,a
   14C2 F5 82              1496 	mov	dpl,a
   14C4 75 83 1D           1497 	mov	dph,#(_eeprom >> 8)
   14C7 E4                 1498 	clr	a
   14C8 93                 1499 	movc	a,@a+dptr
   14C9 FD                 1500 	mov	r5,a
   14CA A8 15              1501 	mov	r0,_bp
   14CC 08                 1502 	inc	r0
   14CD A6 05              1503 	mov	@r0,ar5
                           1504 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:593: if (gapos!=0xFF) {	// falls Gruppenadresse nicht vorhanden
   14CF BA FF 02           1505 	cjne	r2,#0xFF,00117$
   14D2 80 35              1506 	sjmp	00108$
   14D4                    1507 00117$:
                           1508 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:595: while(objno==0xFF && n<assmax) {	// Schleife ueber Assoziationstabelle
   14D4 74 02              1509 	mov	a,#0x02
   14D6 2C                 1510 	add	a,r4
   14D7 FE                 1511 	mov	r6,a
   14D8 0C                 1512 	inc	r4
   14D9 7F 00              1513 	mov	r7,#0x00
   14DB                    1514 00104$:
   14DB BB FF 2B           1515 	cjne	r3,#0xFF,00108$
   14DE A8 15              1516 	mov	r0,_bp
   14E0 08                 1517 	inc	r0
   14E1 C3                 1518 	clr	c
   14E2 EF                 1519 	mov	a,r7
   14E3 96                 1520 	subb	a,@r0
   14E4 50 23              1521 	jnc	00108$
                           1522 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:596: gaposh=eeprom[atp+1+(n*2)];
   14E6 C0 06              1523 	push	ar6
   14E8 EF                 1524 	mov	a,r7
   14E9 2F                 1525 	add	a,r7
   14EA FD                 1526 	mov	r5,a
   14EB 2C                 1527 	add	a,r4
   14EC 90 1D 00           1528 	mov	dptr,#_eeprom
   14EF 93                 1529 	movc	a,@a+dptr
   14F0 FE                 1530 	mov	r6,a
                           1531 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:597: if(gapos==gaposh) objno=eeprom[atp+2+(n*2)];
   14F1 EA                 1532 	mov	a,r2
   14F2 B5 06 04           1533 	cjne	a,ar6,00121$
   14F5 74 01              1534 	mov	a,#0x01
   14F7 80 01              1535 	sjmp	00122$
   14F9                    1536 00121$:
   14F9 E4                 1537 	clr	a
   14FA                    1538 00122$:
   14FA D0 06              1539 	pop	ar6
   14FC 60 08              1540 	jz	00102$
   14FE ED                 1541 	mov	a,r5
   14FF 2E                 1542 	add	a,r6
   1500 90 1D 00           1543 	mov	dptr,#_eeprom
   1503 93                 1544 	movc	a,@a+dptr
   1504 FD                 1545 	mov	r5,a
   1505 FB                 1546 	mov	r3,a
   1506                    1547 00102$:
                           1548 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:598: n++;
   1506 0F                 1549 	inc	r7
   1507 80 D2              1550 	sjmp	00104$
   1509                    1551 00108$:
                           1552 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:601: return (objno);
   1509 8B 82              1553 	mov	dpl,r3
   150B 85 15 81           1554 	mov	sp,_bp
   150E D0 15              1555 	pop	_bp
   1510 22                 1556 	ret
                           1557 ;------------------------------------------------------------
                           1558 ;Allocation info for local variables in function 'read_obj_value'
                           1559 ;------------------------------------------------------------
                           1560 ;objno                     Allocated to registers r2 
                           1561 ;valuepointer              Allocated to registers r2 
                           1562 ;offset                    Allocated to registers r5 
                           1563 ;commstab                  Allocated to registers r6 
                           1564 ;objtype                   Allocated to registers r7 
                           1565 ;objvalue                  Allocated to registers r3 r4 
                           1566 ;------------------------------------------------------------
                           1567 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:613: unsigned int read_obj_value(unsigned char objno)
                           1568 ;	-----------------------------------------
                           1569 ;	 function read_obj_value
                           1570 ;	-----------------------------------------
   1511                    1571 _read_obj_value:
   1511 AA 82              1572 	mov	r2,dpl
                           1573 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:618: objvalue=0xFFFF;
   1513 7B FF              1574 	mov	r3,#0xFF
   1515 7C FF              1575 	mov	r4,#0xFF
                           1576 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:619: offset=objno*3;
   1517 EA                 1577 	mov	a,r2
   1518 75 F0 03           1578 	mov	b,#0x03
   151B A4                 1579 	mul	ab
   151C FD                 1580 	mov	r5,a
                           1581 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:620: commstab=eeprom[COMMSTABPTR];
   151D 90 1D 12           1582 	mov	dptr,#(_eeprom + 0x0012)
   1520 E4                 1583 	clr	a
   1521 93                 1584 	movc	a,@a+dptr
                           1585 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:621: objtype=eeprom[commstab+offset+4];
   1522 FE                 1586 	mov	r6,a
   1523 2D                 1587 	add	a,r5
   1524 24 04              1588 	add	a,#0x04+_eeprom
   1526 F5 82              1589 	mov	dpl,a
   1528 E4                 1590 	clr	a
   1529 34 1D              1591 	addc	a,#(_eeprom >> 8)
   152B F5 83              1592 	mov	dph,a
   152D E4                 1593 	clr	a
   152E 93                 1594 	movc	a,@a+dptr
   152F FF                 1595 	mov	r7,a
                           1596 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:623: if (objno <= commstab) {	// wenn objno <= anzahl objekte
   1530 C3                 1597 	clr	c
   1531 EE                 1598 	mov	a,r6
   1532 9A                 1599 	subb	a,r2
   1533 40 3D              1600 	jc	00106$
                           1601 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:624: valuepointer=eeprom[commstab+offset+2];
   1535 ED                 1602 	mov	a,r5
   1536 2E                 1603 	add	a,r6
   1537 24 02              1604 	add	a,#0x02+_eeprom
   1539 F5 82              1605 	mov	dpl,a
   153B E4                 1606 	clr	a
   153C 34 1D              1607 	addc	a,#(_eeprom >> 8)
   153E F5 83              1608 	mov	dph,a
   1540 E4                 1609 	clr	a
   1541 93                 1610 	movc	a,@a+dptr
   1542 FA                 1611 	mov	r2,a
                           1612 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:625: if (objtype < 8 ) objvalue=userram[valuepointer];
   1543 BF 08 00           1613 	cjne	r7,#0x08,00113$
   1546                    1614 00113$:
   1546 50 0B              1615 	jnc	00102$
   1548 8A 82              1616 	mov	dpl,r2
   154A 75 83 1C           1617 	mov	dph,#(_userram >> 8)
   154D E4                 1618 	clr	a
   154E 93                 1619 	movc	a,@a+dptr
   154F FD                 1620 	mov	r5,a
   1550 FB                 1621 	mov	r3,a
   1551 7C 00              1622 	mov	r4,#0x00
   1553                    1623 00102$:
                           1624 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:626: if (objtype == 8) objvalue=256*userram[valuepointer] + userram[valuepointer+1];
   1553 BF 08 1C           1625 	cjne	r7,#0x08,00106$
   1556 8A 82              1626 	mov	dpl,r2
   1558 75 83 1C           1627 	mov	dph,#(_userram >> 8)
   155B E4                 1628 	clr	a
   155C 93                 1629 	movc	a,@a+dptr
   155D FE                 1630 	mov	r6,a
   155E 7D 00              1631 	mov	r5,#0x00
   1560 EA                 1632 	mov	a,r2
   1561 04                 1633 	inc	a
   1562 90 1C 00           1634 	mov	dptr,#_userram
   1565 93                 1635 	movc	a,@a+dptr
   1566 FA                 1636 	mov	r2,a
   1567 7F 00              1637 	mov	r7,#0x00
   1569 2D                 1638 	add	a,r5
   156A FD                 1639 	mov	r5,a
   156B EF                 1640 	mov	a,r7
   156C 3E                 1641 	addc	a,r6
   156D FE                 1642 	mov	r6,a
   156E 8D 03              1643 	mov	ar3,r5
   1570 8E 04              1644 	mov	ar4,r6
   1572                    1645 00106$:
                           1646 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:628: return(objvalue);
   1572 8B 82              1647 	mov	dpl,r3
   1574 8C 83              1648 	mov	dph,r4
   1576 22                 1649 	ret
                           1650 ;------------------------------------------------------------
                           1651 ;Allocation info for local variables in function 'read_obj_type'
                           1652 ;------------------------------------------------------------
                           1653 ;objno                     Allocated to registers r2 
                           1654 ;commstab                  Allocated to registers r4 
                           1655 ;objtype                   Allocated to registers r3 
                           1656 ;------------------------------------------------------------
                           1657 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:640: unsigned char read_obj_type(unsigned char objno)
                           1658 ;	-----------------------------------------
                           1659 ;	 function read_obj_type
                           1660 ;	-----------------------------------------
   1577                    1661 _read_obj_type:
   1577 AA 82              1662 	mov	r2,dpl
                           1663 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:644: objtype=0xFF;
   1579 7B FF              1664 	mov	r3,#0xFF
                           1665 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:645: commstab=eeprom[COMMSTABPTR];	
   157B 90 1D 12           1666 	mov	dptr,#(_eeprom + 0x0012)
   157E E4                 1667 	clr	a
   157F 93                 1668 	movc	a,@a+dptr
                           1669 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:646: if (objno <= commstab) {	// wenn objno <= anzahl objekte
   1580 FC                 1670 	mov	r4,a
   1581 C3                 1671 	clr	c
   1582 9A                 1672 	subb	a,r2
   1583 40 13              1673 	jc	00102$
                           1674 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:647: objtype=eeprom[commstab+objno*3+4];
   1585 EA                 1675 	mov	a,r2
   1586 75 F0 03           1676 	mov	b,#0x03
   1589 A4                 1677 	mul	ab
   158A 2C                 1678 	add	a,r4
   158B 24 04              1679 	add	a,#0x04+_eeprom
   158D F5 82              1680 	mov	dpl,a
   158F E4                 1681 	clr	a
   1590 34 1D              1682 	addc	a,#(_eeprom >> 8)
   1592 F5 83              1683 	mov	dph,a
   1594 E4                 1684 	clr	a
   1595 93                 1685 	movc	a,@a+dptr
   1596 FA                 1686 	mov	r2,a
   1597 FB                 1687 	mov	r3,a
   1598                    1688 00102$:
                           1689 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:649: return(objtype);
   1598 8B 82              1690 	mov	dpl,r3
   159A 22                 1691 	ret
                           1692 ;------------------------------------------------------------
                           1693 ;Allocation info for local variables in function 'write_obj_value'
                           1694 ;------------------------------------------------------------
                           1695 ;objvalue                  Allocated to stack - offset -4
                           1696 ;objno                     Allocated to registers r2 
                           1697 ;objtype                   Allocated to registers r5 
                           1698 ;valuepointer              Allocated to registers r2 
                           1699 ;offset                    Allocated to registers r3 
                           1700 ;commstab                  Allocated to registers r4 
                           1701 ;write_ok                  Allocated to registers b0 
                           1702 ;------------------------------------------------------------
                           1703 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:663: bit write_obj_value(unsigned char objno,int objvalue)
                           1704 ;	-----------------------------------------
                           1705 ;	 function write_obj_value
                           1706 ;	-----------------------------------------
   159B                    1707 _write_obj_value:
   159B C0 15              1708 	push	_bp
   159D 85 81 15           1709 	mov	_bp,sp
   15A0 AA 82              1710 	mov	r2,dpl
                           1711 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:666: bit write_ok=0;
   15A2 C2 08              1712 	clr	b0
                           1713 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:668: offset=objno*3;
   15A4 EA                 1714 	mov	a,r2
   15A5 75 F0 03           1715 	mov	b,#0x03
   15A8 A4                 1716 	mul	ab
   15A9 FB                 1717 	mov	r3,a
                           1718 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:669: commstab=eeprom[COMMSTABPTR];
   15AA 90 1D 12           1719 	mov	dptr,#(_eeprom + 0x0012)
   15AD E4                 1720 	clr	a
   15AE 93                 1721 	movc	a,@a+dptr
                           1722 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:670: objtype=eeprom[commstab+offset+4];
   15AF FC                 1723 	mov	r4,a
   15B0 2B                 1724 	add	a,r3
   15B1 24 04              1725 	add	a,#0x04+_eeprom
   15B3 F5 82              1726 	mov	dpl,a
   15B5 E4                 1727 	clr	a
   15B6 34 1D              1728 	addc	a,#(_eeprom >> 8)
   15B8 F5 83              1729 	mov	dph,a
   15BA E4                 1730 	clr	a
   15BB 93                 1731 	movc	a,@a+dptr
   15BC FD                 1732 	mov	r5,a
                           1733 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:672: if (objno <= commstab) {	// wenn objno <= anzahl objekte
   15BD C3                 1734 	clr	c
   15BE EC                 1735 	mov	a,r4
   15BF 9A                 1736 	subb	a,r2
   15C0 50 03              1737 	jnc	00126$
   15C2 02 16 44           1738 	ljmp	00116$
   15C5                    1739 00126$:
                           1740 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:673: valuepointer=eeprom[commstab+offset+2];	// Zeiger auf USERRAM, wo der Objekt-Wert gespeichert ist
   15C5 EB                 1741 	mov	a,r3
   15C6 2C                 1742 	add	a,r4
   15C7 24 02              1743 	add	a,#0x02+_eeprom
   15C9 F5 82              1744 	mov	dpl,a
   15CB E4                 1745 	clr	a
   15CC 34 1D              1746 	addc	a,#(_eeprom >> 8)
   15CE F5 83              1747 	mov	dph,a
   15D0 E4                 1748 	clr	a
   15D1 93                 1749 	movc	a,@a+dptr
   15D2 FA                 1750 	mov	r2,a
                           1751 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:676: if (objtype < 8) {	// Typ zwischen 1 und 8 Bit gross
   15D3 BD 08 00           1752 	cjne	r5,#0x08,00127$
   15D6                    1753 00127$:
   15D6 50 41              1754 	jnc	00107$
                           1755 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:677: while (!write_ok) {
   15D8                    1756 00103$:
   15D8 20 08 3E           1757 	jb	b0,00107$
                           1758 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:678: FMCON=0x00;					// load command, leert das pageregister
   15DB 75 E4 00           1759 	mov	_FMCON,#0x00
                           1760 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:681: FMADRH=USERRAMADDRH;
   15DE 75 E7 1C           1761 	mov	_FMADRH,#0x1C
                           1762 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:682: FMADRL=valuepointer;
   15E1 8A E6              1763 	mov	_FMADRL,r2
                           1764 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:683: FMDATA=objvalue & (0xFF>>(7-objtype));
   15E3 8D 03              1765 	mov	ar3,r5
   15E5 7C 00              1766 	mov	r4,#0x00
   15E7 74 07              1767 	mov	a,#0x07
   15E9 C3                 1768 	clr	c
   15EA 9B                 1769 	subb	a,r3
   15EB FB                 1770 	mov	r3,a
   15EC E4                 1771 	clr	a
   15ED 9C                 1772 	subb	a,r4
   15EE FC                 1773 	mov	r4,a
   15EF 8B F0              1774 	mov	b,r3
   15F1 05 F0              1775 	inc	b
   15F3 74 FF              1776 	mov	a,#0xFF
   15F5 80 02              1777 	sjmp	00131$
   15F7                    1778 00130$:
   15F7 C3                 1779 	clr	c
   15F8 13                 1780 	rrc	a
   15F9                    1781 00131$:
   15F9 D5 F0 FB           1782 	djnz	b,00130$
   15FC FB                 1783 	mov	r3,a
   15FD 7C 00              1784 	mov	r4,#0x00
   15FF E5 15              1785 	mov	a,_bp
   1601 24 FC              1786 	add	a,#0xfc
   1603 F8                 1787 	mov	r0,a
   1604 E6                 1788 	mov	a,@r0
   1605 52 03              1789 	anl	ar3,a
   1607 08                 1790 	inc	r0
   1608 E6                 1791 	mov	a,@r0
   1609 52 04              1792 	anl	ar4,a
   160B 8B E5              1793 	mov	_FMDATA,r3
                           1794 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:686: FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   160D 75 E4 68           1795 	mov	_FMCON,#0x68
                           1796 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:687: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   1610 E5 E4              1797 	mov	a,_FMCON
   1612 20 E0 C3           1798 	jb	acc.0,00103$
   1615 D2 08              1799 	setb	b0
   1617 80 BF              1800 	sjmp	00103$
   1619                    1801 00107$:
                           1802 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:690: if (objtype == 8) {	// 2-Byte Wert
   1619 BD 08 28           1803 	cjne	r5,#0x08,00116$
                           1804 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:691: while (!write_ok) {
   161C E5 15              1805 	mov	a,_bp
   161E 24 FC              1806 	add	a,#0xfc
   1620 F8                 1807 	mov	r0,a
   1621 08                 1808 	inc	r0
   1622 86 03              1809 	mov	ar3,@r0
   1624                    1810 00110$:
   1624 20 08 1D           1811 	jb	b0,00116$
                           1812 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:692: FMCON=0x00;				// load command, leert das pageregister
   1627 75 E4 00           1813 	mov	_FMCON,#0x00
                           1814 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:695: FMADRH=USERRAMADDRH;
   162A 75 E7 1C           1815 	mov	_FMADRH,#0x1C
                           1816 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:696: FMADRL=valuepointer;
   162D 8A E6              1817 	mov	_FMADRL,r2
                           1818 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:697: FMDATA=objvalue>>8;
   162F 8B E5              1819 	mov	_FMDATA,r3
                           1820 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:700: FMDATA=objvalue;	// Autoinkrement, nächste Daten
   1631 E5 15              1821 	mov	a,_bp
   1633 24 FC              1822 	add	a,#0xfc
   1635 F8                 1823 	mov	r0,a
   1636 86 E5              1824 	mov	_FMDATA,@r0
                           1825 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:703: FMCON=0x68;					// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   1638 75 E4 68           1826 	mov	_FMCON,#0x68
                           1827 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:704: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   163B E5 E4              1828 	mov	a,_FMCON
   163D 20 E0 E4           1829 	jb	acc.0,00110$
   1640 D2 08              1830 	setb	b0
   1642 80 E0              1831 	sjmp	00110$
   1644                    1832 00116$:
                           1833 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:708: return(write_ok);
   1644 A2 08              1834 	mov	c,b0
   1646 D0 15              1835 	pop	_bp
   1648 22                 1836 	ret
                           1837 ;------------------------------------------------------------
                           1838 ;Allocation info for local variables in function 'restart_prot'
                           1839 ;------------------------------------------------------------
                           1840 ;------------------------------------------------------------
                           1841 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:719: void restart_prot(void)
                           1842 ;	-----------------------------------------
                           1843 ;	 function restart_prot
                           1844 ;	-----------------------------------------
   1649                    1845 _restart_prot:
                           1846 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:724: EA=0;
   1649 C2 AF              1847 	clr	_IEN0_7
                           1848 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:725: START_WRITECYCLE;
   164B 75 E4 00           1849 	mov	_FMCON,#0x00
                           1850 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:726: WRITE_BYTE(0x00,0x60,0x00);
   164E 75 E7 1C           1851 	mov	_FMADRH,#0x1C
   1651 75 E6 60           1852 	mov	_FMADRL,#0x60
   1654 75 E5 00           1853 	mov	_FMDATA,#0x00
                           1854 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:727: STOP_WRITECYCLE;
   1657 75 E4 68           1855 	mov	_FMCON,#0x68
                           1856 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:728: EA=1;
   165A D2 AF              1857 	setb	_IEN0_7
                           1858 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:731: pcount=1;				// Paketzaehler initialisieren
   165C 75 13 01           1859 	mov	_pcount,#0x01
                           1860 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:732: connected=0;			// keine Verbindung
   165F C2 03              1861 	clr	_connected
                           1862 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:734: telpos=0;				// empfangene Bytes an dieser Position im Array telegramm[] ablegen
   1661 75 64 00           1863 	mov	_telpos,#0x00
                           1864 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:735: last_tel=0;
   1664 75 14 00           1865 	mov	_last_tel,#0x00
                           1866 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/com/fb_prot.c:736: transparency=0;
   1667 C2 04              1867 	clr	_transparency
   1669 22                 1868 	ret
                           1869 	.area CSEG    (CODE)
                           1870 	.area CONST   (CODE)
                           1871 	.area XINIT   (CODE)
                           1872 	.area CABS    (ABS,CODE)
