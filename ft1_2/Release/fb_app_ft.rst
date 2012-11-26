                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Fri Oct 26 20:36:29 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_ft
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _send_obj_value
                             13 	.globl _P3_1
                             14 	.globl _P3_0
                             15 	.globl _P1_7
                             16 	.globl _P1_6
                             17 	.globl _P1_5
                             18 	.globl _P1_4
                             19 	.globl _P1_3
                             20 	.globl _P1_2
                             21 	.globl _P1_1
                             22 	.globl _P1_0
                             23 	.globl _P0_7
                             24 	.globl _P0_6
                             25 	.globl _P0_5
                             26 	.globl _P0_4
                             27 	.globl _P0_3
                             28 	.globl _P0_2
                             29 	.globl _P0_1
                             30 	.globl _P0_0
                             31 	.globl _I2CON_0
                             32 	.globl _I2CON_2
                             33 	.globl _I2CON_3
                             34 	.globl _I2CON_4
                             35 	.globl _I2CON_5
                             36 	.globl _I2CON_6
                             37 	.globl _SCON_7
                             38 	.globl _SCON_6
                             39 	.globl _SCON_5
                             40 	.globl _SCON_4
                             41 	.globl _SCON_3
                             42 	.globl _SCON_2
                             43 	.globl _SCON_1
                             44 	.globl _SCON_0
                             45 	.globl _IP0_0
                             46 	.globl _IP0_1
                             47 	.globl _IP0_2
                             48 	.globl _IP0_3
                             49 	.globl _IP0_4
                             50 	.globl _IP0_5
                             51 	.globl _IP0_6
                             52 	.globl _IP1_0
                             53 	.globl _IP1_1
                             54 	.globl _IP1_2
                             55 	.globl _IP1_6
                             56 	.globl _IEN1_0
                             57 	.globl _IEN1_1
                             58 	.globl _IEN1_2
                             59 	.globl _IEN0_0
                             60 	.globl _IEN0_1
                             61 	.globl _IEN0_2
                             62 	.globl _IEN0_3
                             63 	.globl _IEN0_4
                             64 	.globl _IEN0_5
                             65 	.globl _IEN0_6
                             66 	.globl _IEN0_7
                             67 	.globl _TCON_0
                             68 	.globl _TCON_1
                             69 	.globl _TCON_2
                             70 	.globl _TCON_3
                             71 	.globl _TCON_4
                             72 	.globl _TCON_5
                             73 	.globl _TCON_6
                             74 	.globl _TCON_7
                             75 	.globl _PSW_7
                             76 	.globl _PSW_6
                             77 	.globl _PSW_5
                             78 	.globl _PSW_4
                             79 	.globl _PSW_3
                             80 	.globl _PSW_2
                             81 	.globl _PSW_1
                             82 	.globl _PSW_0
                             83 	.globl _IEN1
                             84 	.globl _IP0H
                             85 	.globl _WFEED2
                             86 	.globl _WFEED1
                             87 	.globl _WDL
                             88 	.globl _WDCON
                             89 	.globl _TRIM
                             90 	.globl _TAMOD
                             91 	.globl _SSTAT
                             92 	.globl _RTCL
                             93 	.globl _RTCH
                             94 	.globl _RTCCON
                             95 	.globl _RSTSRC
                             96 	.globl _PT0AD
                             97 	.globl _PCONA
                             98 	.globl _P3M2
                             99 	.globl _P3M1
                            100 	.globl _P1M2
                            101 	.globl _P1M1
                            102 	.globl _P0M2
                            103 	.globl _P0M1
                            104 	.globl _KBPATN
                            105 	.globl _KBMASK
                            106 	.globl _KBCON
                            107 	.globl _IP1H
                            108 	.globl _IP1
                            109 	.globl _I2STAT
                            110 	.globl _I2SCLL
                            111 	.globl _I2SCLH
                            112 	.globl _I2DAT
                            113 	.globl _I2CON
                            114 	.globl _I2ADR
                            115 	.globl _FMDATA
                            116 	.globl _FMCON
                            117 	.globl _FMADRL
                            118 	.globl _FMADRH
                            119 	.globl _DIVM
                            120 	.globl _CMP2
                            121 	.globl _CMP1
                            122 	.globl _BRGCON
                            123 	.globl _BRGR1
                            124 	.globl _BRGR0
                            125 	.globl _SADEN
                            126 	.globl _SADDR
                            127 	.globl _AUXR1
                            128 	.globl _SBUF
                            129 	.globl _SCON
                            130 	.globl _IP0
                            131 	.globl _IEN0
                            132 	.globl _TH1
                            133 	.globl _TH0
                            134 	.globl _TL1
                            135 	.globl _TL0
                            136 	.globl _TMOD
                            137 	.globl _TCON
                            138 	.globl _PCON
                            139 	.globl _DPH
                            140 	.globl _DPL
                            141 	.globl _SP
                            142 	.globl _B
                            143 	.globl _ACC
                            144 	.globl _PSW
                            145 	.globl _P3
                            146 	.globl _P1
                            147 	.globl _P0
                            148 	.globl _ft_ack
                            149 	.globl _tel_was_acked
                            150 	.globl _fcb
                            151 	.globl _property_5
                            152 	.globl _rsin_stat
                            153 	.globl _switch_mode
                            154 	.globl _rsinpos
                            155 	.globl _rsin
                            156 	.globl _ft_process_var_frame
                            157 	.globl _ft_process_fix_frame
                            158 	.globl _ft_send_Read_Memory_Res
                            159 	.globl _ft_process_telegram
                            160 	.globl _ft_send_frame
                            161 	.globl _ft_send_fixed_frame
                            162 	.globl _PEI_identify_req
                            163 	.globl _ft_rs_init
                            164 	.globl _serial_int
                            165 	.globl _build_tel
                            166 	.globl _gapos_in_gat
                            167 	.globl _set_pa
                            168 	.globl _write_value_req
                            169 	.globl _read_value_req
                            170 	.globl _read_obj_value
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
                            322 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     323 	.ds 8
                            324 ;--------------------------------------------------------
                            325 ; overlayable bit register bank
                            326 ;--------------------------------------------------------
                            327 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     328 bits:
   0023                     329 	.ds 1
                    8000    330 	b0 = bits[0]
                    8100    331 	b1 = bits[1]
                    8200    332 	b2 = bits[2]
                    8300    333 	b3 = bits[3]
                    8400    334 	b4 = bits[4]
                    8500    335 	b5 = bits[5]
                    8600    336 	b6 = bits[6]
                    8700    337 	b7 = bits[7]
                            338 ;--------------------------------------------------------
                            339 ; internal ram data
                            340 ;--------------------------------------------------------
                            341 	.area DSEG    (DATA)
   0024                     342 _rsin::
   0024                     343 	.ds 32
   0044                     344 _rsinpos::
   0044                     345 	.ds 1
   0045                     346 _switch_mode::
   0045                     347 	.ds 1
   0046                     348 _rsin_stat::
   0046                     349 	.ds 1
   0047                     350 _property_5::
   0047                     351 	.ds 1
                            352 ;--------------------------------------------------------
                            353 ; overlayable items in internal ram 
                            354 ;--------------------------------------------------------
                            355 ;--------------------------------------------------------
                            356 ; indirectly addressable internal ram data
                            357 ;--------------------------------------------------------
                            358 	.area ISEG    (DATA)
                            359 ;--------------------------------------------------------
                            360 ; absolute internal ram data
                            361 ;--------------------------------------------------------
                            362 	.area IABS    (ABS,DATA)
                            363 	.area IABS    (ABS,DATA)
                            364 ;--------------------------------------------------------
                            365 ; bit data
                            366 ;--------------------------------------------------------
                            367 	.area BSEG    (BIT)
   0000                     368 _fcb::
   0000                     369 	.ds 1
   0001                     370 _tel_was_acked::
   0001                     371 	.ds 1
   0002                     372 _ft_ack::
   0002                     373 	.ds 1
                            374 ;--------------------------------------------------------
                            375 ; paged external ram data
                            376 ;--------------------------------------------------------
                            377 	.area PSEG    (PAG,XDATA)
                            378 ;--------------------------------------------------------
                            379 ; external ram data
                            380 ;--------------------------------------------------------
                            381 	.area XSEG    (XDATA)
                            382 ;--------------------------------------------------------
                            383 ; absolute external ram data
                            384 ;--------------------------------------------------------
                            385 	.area XABS    (ABS,XDATA)
                            386 ;--------------------------------------------------------
                            387 ; external initialized ram data
                            388 ;--------------------------------------------------------
                            389 	.area XISEG   (XDATA)
                            390 	.area HOME    (CODE)
                            391 	.area GSINIT0 (CODE)
                            392 	.area GSINIT1 (CODE)
                            393 	.area GSINIT2 (CODE)
                            394 	.area GSINIT3 (CODE)
                            395 	.area GSINIT4 (CODE)
                            396 	.area GSINIT5 (CODE)
                            397 	.area GSINIT  (CODE)
                            398 	.area GSFINAL (CODE)
                            399 	.area CSEG    (CODE)
                            400 ;--------------------------------------------------------
                            401 ; global & static initialisations
                            402 ;--------------------------------------------------------
                            403 	.area HOME    (CODE)
                            404 	.area GSINIT  (CODE)
                            405 	.area GSFINAL (CODE)
                            406 	.area GSINIT  (CODE)
                            407 ;--------------------------------------------------------
                            408 ; Home
                            409 ;--------------------------------------------------------
                            410 	.area HOME    (CODE)
                            411 	.area HOME    (CODE)
                            412 ;--------------------------------------------------------
                            413 ; code
                            414 ;--------------------------------------------------------
                            415 	.area CSEG    (CODE)
                            416 ;------------------------------------------------------------
                            417 ;Allocation info for local variables in function 'ft_process_var_frame'
                            418 ;------------------------------------------------------------
                            419 ;n                         Allocated to registers r6 
                            420 ;write_ok                  Allocated to registers b0 
                            421 ;------------------------------------------------------------
                            422 ;	../fb_app_ft.c:75: void ft_process_var_frame(void)
                            423 ;	-----------------------------------------
                            424 ;	 function ft_process_var_frame
                            425 ;	-----------------------------------------
   0087                     426 _ft_process_var_frame:
                    0007    427 	ar7 = 0x07
                    0006    428 	ar6 = 0x06
                    0005    429 	ar5 = 0x05
                    0004    430 	ar4 = 0x04
                    0003    431 	ar3 = 0x03
                    0002    432 	ar2 = 0x02
                    0001    433 	ar1 = 0x01
                    0000    434 	ar0 = 0x00
                            435 ;	../fb_app_ft.c:79: if (rsin[0]==0x68 && rsin[3]==0x68 && rsin[1]==rsin[2]) {	// Multi Byte
   0087 74 68               436 	mov	a,#0x68
   0089 B5 24 02            437 	cjne	a,_rsin,00413$
   008C 80 01               438 	sjmp	00414$
   008E                     439 00413$:
   008E 22                  440 	ret
   008F                     441 00414$:
   008F 74 68               442 	mov	a,#0x68
   0091 B5 27 02            443 	cjne	a,(_rsin + 0x0003),00415$
   0094 80 01               444 	sjmp	00416$
   0096                     445 00415$:
   0096 22                  446 	ret
   0097                     447 00416$:
   0097 E5 25               448 	mov	a,(_rsin + 0x0001)
   0099 FF                  449 	mov	r7,a
   009A B5 26 02            450 	cjne	a,(_rsin + 0x0002),00417$
   009D 80 01               451 	sjmp	00418$
   009F                     452 00417$:
   009F 22                  453 	ret
   00A0                     454 00418$:
                            455 ;	../fb_app_ft.c:80: if ((rsin[4]&0xDF)==0x53) {		// send_Udat
   00A0 74 DF               456 	mov	a,#0xDF
   00A2 55 28               457 	anl	a,(_rsin + 0x0004)
   00A4 FE                  458 	mov	r6,a
   00A5 BE 53 02            459 	cjne	r6,#0x53,00419$
   00A8 80 01               460 	sjmp	00420$
   00AA                     461 00419$:
   00AA 22                  462 	ret
   00AB                     463 00420$:
                            464 ;	../fb_app_ft.c:81: switch (rsin[5])		// PEI10 message code
   00AB AE 29               465 	mov	r6,(_rsin + 0x0005)
   00AD BE 11 02            466 	cjne	r6,#0x11,00421$
   00B0 80 1E               467 	sjmp	00101$
   00B2                     468 00421$:
   00B2 BE 41 03            469 	cjne	r6,#0x41,00422$
   00B5 02 02 7A            470 	ljmp	00167$
   00B8                     471 00422$:
   00B8 BE 43 03            472 	cjne	r6,#0x43,00423$
   00BB 02 01 E3            473 	ljmp	00151$
   00BE                     474 00423$:
   00BE BE 44 03            475 	cjne	r6,#0x44,00424$
   00C1 02 02 37            476 	ljmp	00159$
   00C4                     477 00424$:
   00C4 BE A7 03            478 	cjne	r6,#0xA7,00425$
   00C7 02 04 E0            479 	ljmp	00204$
   00CA                     480 00425$:
   00CA BE A9 02            481 	cjne	r6,#0xA9,00426$
   00CD 80 5F               482 	sjmp	00110$
   00CF                     483 00426$:
   00CF 22                  484 	ret
                            485 ;	../fb_app_ft.c:83: case 0x11:		// send a telegram on the bus
   00D0                     486 00101$:
                            487 ;	../fb_app_ft.c:84: FT_SEND_CHAR(0xE5)
   00D0 75 99 E5            488 	mov	_SBUF,#0xE5
   00D3 C2 9B               489 	clr	_SCON_3
   00D5 7E 01               490 	mov	r6,#0x01
   00D7                     491 00212$:
   00D7 BE 00 02            492 	cjne	r6,#0x00,00427$
   00DA 80 0C               493 	sjmp	00104$
   00DC                     494 00427$:
   00DC EE                  495 	mov	a,r6
   00DD 54 E5               496 	anl	a,#0xE5
   00DF 60 02               497 	jz	00214$
   00E1 B2 9B               498 	cpl	_SCON_3
   00E3                     499 00214$:
   00E3 EE                  500 	mov	a,r6
   00E4 2E                  501 	add	a,r6
   00E5 FE                  502 	mov	r6,a
   00E6 80 EF               503 	sjmp	00212$
   00E8                     504 00104$:
   00E8 10 99 02            505 	jbc	_SCON_1,00429$
   00EB 80 FB               506 	sjmp	00104$
   00ED                     507 00429$:
                            508 ;	../fb_app_ft.c:86: while(fb_state!=0);
   00ED                     509 00107$:
   00ED E5 72               510 	mov	a,_fb_state
                            511 ;	../fb_app_ft.c:87: send_obj_value(0);
   00EF 70 FC               512 	jnz	00107$
   00F1 F5 82               513 	mov	dpl,a
   00F3 12 0E 49            514 	lcall	_send_obj_value
                            515 ;	../fb_app_ft.c:92: FT_SEND_L_DATA_CONF				// send confirmation frame
   00F6 75 24 68            516 	mov	_rsin,#0x68
   00F9 AD 25               517 	mov	r5,(_rsin + 0x0001)
   00FB 8D 25               518 	mov	(_rsin + 0x0001),r5
   00FD 8D 26               519 	mov	(_rsin + 0x0002),r5
   00FF 75 27 68            520 	mov	(_rsin + 0x0003),#0x68
   0102 B2 00               521 	cpl	_fcb
   0104 A2 00               522 	mov	c,_fcb
   0106 E4                  523 	clr	a
   0107 33                  524 	rlc	a
   0108 C4                  525 	swap	a
   0109 23                  526 	rl	a
   010A 54 E0               527 	anl	a,#0xE0
   010C 24 D3               528 	add	a,#0xD3
   010E F5 28               529 	mov	(_rsin + 0x0004),a
   0110 75 29 2E            530 	mov	(_rsin + 0x0005),#0x2E
   0113 74 0F               531 	mov	a,#0x0F
   0115 55 2A               532 	anl	a,(_rsin + 0x0006)
   0117 24 B0               533 	add	a,#0xB0
   0119 F5 2A               534 	mov	(_rsin + 0x0006),a
   011B 90 1D 17            535 	mov	dptr,#(_eeprom + 0x0017)
   011E E4                  536 	clr	a
   011F 93                  537 	movc	a,@a+dptr
   0120 FD                  538 	mov	r5,a
   0121 8D 2B               539 	mov	(_rsin + 0x0007),r5
   0123 90 1D 18            540 	mov	dptr,#(_eeprom + 0x0018)
   0126 E4                  541 	clr	a
   0127 93                  542 	movc	a,@a+dptr
   0128 FD                  543 	mov	r5,a
   0129 8D 2C               544 	mov	(_rsin + 0x0008),r5
                            545 ;	../fb_app_ft.c:97: break;
   012B 02 07 08            546 	ljmp	_ft_send_frame
                            547 ;	../fb_app_ft.c:99: case 0xA9:		// PEI_switch_request	
   012E                     548 00110$:
                            549 ;	../fb_app_ft.c:100: FT_SEND_CHAR(0xE5)
   012E 75 99 E5            550 	mov	_SBUF,#0xE5
   0131 C2 9B               551 	clr	_SCON_3
   0133 7E 01               552 	mov	r6,#0x01
   0135                     553 00216$:
   0135 BE 00 02            554 	cjne	r6,#0x00,00431$
   0138 80 0C               555 	sjmp	00113$
   013A                     556 00431$:
   013A EE                  557 	mov	a,r6
   013B 54 E5               558 	anl	a,#0xE5
   013D 60 02               559 	jz	00218$
   013F B2 9B               560 	cpl	_SCON_3
   0141                     561 00218$:
   0141 EE                  562 	mov	a,r6
   0142 2E                  563 	add	a,r6
   0143 FE                  564 	mov	r6,a
   0144 80 EF               565 	sjmp	00216$
   0146                     566 00113$:
   0146 10 99 02            567 	jbc	_SCON_1,00433$
   0149 80 FB               568 	sjmp	00113$
   014B                     569 00433$:
                            570 ;	../fb_app_ft.c:101: if (rsin[6]==0x00 && rsin[8]==0x34) {
   014B E5 2A               571 	mov	a,(_rsin + 0x0006)
   014D FD                  572 	mov	r5,a
   014E 60 03               573 	jz	00434$
   0150 02 01 BE            574 	ljmp	00141$
   0153                     575 00434$:
   0153 74 34               576 	mov	a,#0x34
   0155 B5 2C 02            577 	cjne	a,(_rsin + 0x0008),00435$
   0158 80 03               578 	sjmp	00436$
   015A                     579 00435$:
   015A 02 01 BE            580 	ljmp	00141$
   015D                     581 00436$:
                            582 ;	../fb_app_ft.c:102: if  (rsin[7]==0x12) {
   015D AC 2B               583 	mov	r4,(_rsin + 0x0007)
   015F BC 12 47            584 	cjne	r4,#0x12,00133$
                            585 ;	../fb_app_ft.c:103: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x9A) switch_mode=0x00; // normal mode
   0162 AB 2D               586 	mov	r3,(_rsin + 0x0009)
   0164 E4                  587 	clr	a
   0165 BB 56 01            588 	cjne	r3,#0x56,00439$
   0168 04                  589 	inc	a
   0169                     590 00439$:
   0169 FA                  591 	mov	r2,a
   016A 60 0D               592 	jz	00117$
   016C 74 78               593 	mov	a,#0x78
   016E B5 2E 08            594 	cjne	a,(_rsin + 0x000a),00117$
   0171 74 9A               595 	mov	a,#0x9A
   0173 B5 2F 03            596 	cjne	a,(_rsin + 0x000b),00117$
   0176 75 45 00            597 	mov	_switch_mode,#0x00
   0179                     598 00117$:
                            599 ;	../fb_app_ft.c:104: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x8A) switch_mode=0x01; // application layer
   0179 EA                  600 	mov	a,r2
   017A 60 0D               601 	jz	00121$
   017C 74 78               602 	mov	a,#0x78
   017E B5 2E 08            603 	cjne	a,(_rsin + 0x000a),00121$
   0181 74 8A               604 	mov	a,#0x8A
   0183 B5 2F 03            605 	cjne	a,(_rsin + 0x000b),00121$
   0186 75 45 01            606 	mov	_switch_mode,#0x01
   0189                     607 00121$:
                            608 ;	../fb_app_ft.c:105: if (rsin[9]==0x48 && rsin[10]==0x88 && rsin[11]==0x0A) switch_mode=0x02; // transport layer remote
   0189 BB 48 0D            609 	cjne	r3,#0x48,00125$
   018C 74 88               610 	mov	a,#0x88
   018E B5 2E 08            611 	cjne	a,(_rsin + 0x000a),00125$
   0191 74 0A               612 	mov	a,#0x0A
   0193 B5 2F 03            613 	cjne	a,(_rsin + 0x000b),00125$
   0196 75 45 02            614 	mov	_switch_mode,#0x02
   0199                     615 00125$:
                            616 ;	../fb_app_ft.c:106: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x0A) switch_mode=0x03; // transport layer local
   0199 EA                  617 	mov	a,r2
   019A 60 0D               618 	jz	00133$
   019C 74 78               619 	mov	a,#0x78
   019E B5 2E 08            620 	cjne	a,(_rsin + 0x000a),00133$
   01A1 74 0A               621 	mov	a,#0x0A
   01A3 B5 2F 03            622 	cjne	a,(_rsin + 0x000b),00133$
   01A6 75 45 03            623 	mov	_switch_mode,#0x03
   01A9                     624 00133$:
                            625 ;	../fb_app_ft.c:108: if (rsin[7]==0x18) {
   01A9 BC 18 12            626 	cjne	r4,#0x18,00141$
                            627 ;	../fb_app_ft.c:109: if (rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x0A) switch_mode=0x04; // link layer
   01AC 74 56               628 	mov	a,#0x56
   01AE B5 2D 0D            629 	cjne	a,(_rsin + 0x0009),00141$
   01B1 74 78               630 	mov	a,#0x78
   01B3 B5 2E 08            631 	cjne	a,(_rsin + 0x000a),00141$
   01B6 74 0A               632 	mov	a,#0x0A
   01B8 B5 2F 03            633 	cjne	a,(_rsin + 0x000b),00141$
   01BB 75 45 04            634 	mov	_switch_mode,#0x04
   01BE                     635 00141$:
                            636 ;	../fb_app_ft.c:112: if (rsin[6]==0x90 && rsin[7]==0x18 && rsin[8]==0x34 && rsin[9]==0x56 && rsin[10]==0x78 && rsin[11]==0x0A) {
   01BE BD 90 1F            637 	cjne	r5,#0x90,00144$
   01C1 74 18               638 	mov	a,#0x18
   01C3 B5 2B 1A            639 	cjne	a,(_rsin + 0x0007),00144$
   01C6 74 34               640 	mov	a,#0x34
   01C8 B5 2C 15            641 	cjne	a,(_rsin + 0x0008),00144$
   01CB 74 56               642 	mov	a,#0x56
   01CD B5 2D 10            643 	cjne	a,(_rsin + 0x0009),00144$
   01D0 74 78               644 	mov	a,#0x78
   01D2 B5 2E 0B            645 	cjne	a,(_rsin + 0x000a),00144$
   01D5 74 0A               646 	mov	a,#0x0A
   01D7 B5 2F 06            647 	cjne	a,(_rsin + 0x000b),00144$
                            648 ;	../fb_app_ft.c:113: switch_mode=0x05; // busmonitor mode
   01DA 75 45 05            649 	mov	_switch_mode,#0x05
                            650 ;	../fb_app_ft.c:114: auto_ack=0;
   01DD C2 0B               651 	clr	_auto_ack
   01DF 22                  652 	ret
   01E0                     653 00144$:
                            654 ;	../fb_app_ft.c:116: else auto_ack=1;
   01E0 D2 0B               655 	setb	_auto_ack
                            656 ;	../fb_app_ft.c:117: break;
   01E2 22                  657 	ret
                            658 ;	../fb_app_ft.c:119: case 0x43:		// T_connect_request
   01E3                     659 00151$:
                            660 ;	../fb_app_ft.c:120: FT_SEND_CHAR(0xE5)
   01E3 75 99 E5            661 	mov	_SBUF,#0xE5
   01E6 C2 9B               662 	clr	_SCON_3
   01E8 7E 01               663 	mov	r6,#0x01
   01EA                     664 00220$:
   01EA BE 00 02            665 	cjne	r6,#0x00,00482$
   01ED 80 0C               666 	sjmp	00154$
   01EF                     667 00482$:
   01EF EE                  668 	mov	a,r6
   01F0 54 E5               669 	anl	a,#0xE5
   01F2 60 02               670 	jz	00222$
   01F4 B2 9B               671 	cpl	_SCON_3
   01F6                     672 00222$:
   01F6 EE                  673 	mov	a,r6
   01F7 2E                  674 	add	a,r6
   01F8 FE                  675 	mov	r6,a
   01F9 80 EF               676 	sjmp	00220$
   01FB                     677 00154$:
   01FB 10 99 02            678 	jbc	_SCON_1,00484$
   01FE 80 FB               679 	sjmp	00154$
   0200                     680 00484$:
                            681 ;	../fb_app_ft.c:121: if (switch_mode==0x03) {
   0200 74 03               682 	mov	a,#0x03
   0202 B5 45 02            683 	cjne	a,_switch_mode,00485$
   0205 80 01               684 	sjmp	00486$
   0207                     685 00485$:
   0207 22                  686 	ret
   0208                     687 00486$:
                            688 ;	../fb_app_ft.c:122: FT_SET_HEADER(0x07,0x86)
   0208 75 24 68            689 	mov	_rsin,#0x68
   020B 75 25 07            690 	mov	(_rsin + 0x0001),#0x07
   020E 75 26 07            691 	mov	(_rsin + 0x0002),#0x07
   0211 75 27 68            692 	mov	(_rsin + 0x0003),#0x68
   0214 B2 00               693 	cpl	_fcb
   0216 A2 00               694 	mov	c,_fcb
   0218 E4                  695 	clr	a
   0219 33                  696 	rlc	a
   021A C4                  697 	swap	a
   021B 23                  698 	rl	a
   021C 54 E0               699 	anl	a,#0xE0
   021E 24 D3               700 	add	a,#0xD3
   0220 F5 28               701 	mov	(_rsin + 0x0004),a
   0222 75 29 86            702 	mov	(_rsin + 0x0005),#0x86
                            703 ;	../fb_app_ft.c:123: rsin[6]=(0x00);
   0225 75 2A 00            704 	mov	(_rsin + 0x0006),#0x00
                            705 ;	../fb_app_ft.c:124: rsin[7]=(0x00);
   0228 75 2B 00            706 	mov	(_rsin + 0x0007),#0x00
                            707 ;	../fb_app_ft.c:125: rsin[8]=(0x00);
   022B 75 2C 00            708 	mov	(_rsin + 0x0008),#0x00
                            709 ;	../fb_app_ft.c:126: rsin[9]=(0x00);
   022E 75 2D 00            710 	mov	(_rsin + 0x0009),#0x00
                            711 ;	../fb_app_ft.c:127: rsin[10]=(0x00);
   0231 75 2E 00            712 	mov	(_rsin + 0x000a),#0x00
                            713 ;	../fb_app_ft.c:128: ft_send_frame();
                            714 ;	../fb_app_ft.c:130: break;
   0234 02 07 08            715 	ljmp	_ft_send_frame
                            716 ;	../fb_app_ft.c:132: case 0x44:	// T_Disconcect.req
   0237                     717 00159$:
                            718 ;	../fb_app_ft.c:133: FT_SEND_CHAR(0xE5)
   0237 75 99 E5            719 	mov	_SBUF,#0xE5
   023A C2 9B               720 	clr	_SCON_3
   023C 7E 01               721 	mov	r6,#0x01
   023E                     722 00224$:
   023E BE 00 02            723 	cjne	r6,#0x00,00487$
   0241 80 0C               724 	sjmp	00162$
   0243                     725 00487$:
   0243 EE                  726 	mov	a,r6
   0244 54 E5               727 	anl	a,#0xE5
   0246 60 02               728 	jz	00226$
   0248 B2 9B               729 	cpl	_SCON_3
   024A                     730 00226$:
   024A EE                  731 	mov	a,r6
   024B 2E                  732 	add	a,r6
   024C FE                  733 	mov	r6,a
   024D 80 EF               734 	sjmp	00224$
   024F                     735 00162$:
   024F 10 99 02            736 	jbc	_SCON_1,00489$
   0252 80 FB               737 	sjmp	00162$
   0254                     738 00489$:
                            739 ;	../fb_app_ft.c:134: if (switch_mode==0x03) {
   0254 74 03               740 	mov	a,#0x03
   0256 B5 45 02            741 	cjne	a,_switch_mode,00490$
   0259 80 01               742 	sjmp	00491$
   025B                     743 00490$:
   025B 22                  744 	ret
   025C                     745 00491$:
                            746 ;	../fb_app_ft.c:135: FT_SET_HEADER(rsin[1],0x88)
   025C 75 24 68            747 	mov	_rsin,#0x68
   025F 8F 25               748 	mov	(_rsin + 0x0001),r7
   0261 8F 26               749 	mov	(_rsin + 0x0002),r7
   0263 75 27 68            750 	mov	(_rsin + 0x0003),#0x68
   0266 B2 00               751 	cpl	_fcb
   0268 A2 00               752 	mov	c,_fcb
   026A E4                  753 	clr	a
   026B 33                  754 	rlc	a
   026C C4                  755 	swap	a
   026D 23                  756 	rl	a
   026E 54 E0               757 	anl	a,#0xE0
   0270 24 D3               758 	add	a,#0xD3
   0272 F5 28               759 	mov	(_rsin + 0x0004),a
   0274 75 29 88            760 	mov	(_rsin + 0x0005),#0x88
                            761 ;	../fb_app_ft.c:136: ft_send_frame();
                            762 ;	../fb_app_ft.c:138: break;				
   0277 02 07 08            763 	ljmp	_ft_send_frame
                            764 ;	../fb_app_ft.c:140: case 0x41:		// T_dataConnected.request
   027A                     765 00167$:
                            766 ;	../fb_app_ft.c:141: FT_SEND_CHAR(0xE5)
   027A 75 99 E5            767 	mov	_SBUF,#0xE5
   027D C2 9B               768 	clr	_SCON_3
   027F 7E 01               769 	mov	r6,#0x01
   0281                     770 00228$:
   0281 BE 00 02            771 	cjne	r6,#0x00,00492$
   0284 80 0C               772 	sjmp	00170$
   0286                     773 00492$:
   0286 EE                  774 	mov	a,r6
   0287 54 E5               775 	anl	a,#0xE5
   0289 60 02               776 	jz	00230$
   028B B2 9B               777 	cpl	_SCON_3
   028D                     778 00230$:
   028D EE                  779 	mov	a,r6
   028E 2E                  780 	add	a,r6
   028F FE                  781 	mov	r6,a
   0290 80 EF               782 	sjmp	00228$
   0292                     783 00170$:
   0292 10 99 02            784 	jbc	_SCON_1,00494$
   0295 80 FB               785 	sjmp	00170$
   0297                     786 00494$:
                            787 ;	../fb_app_ft.c:142: if (switch_mode==TLlocal) { 	// Transport Layer local															
   0297 74 03               788 	mov	a,#0x03
   0299 B5 45 02            789 	cjne	a,_switch_mode,00495$
   029C 80 01               790 	sjmp	00496$
   029E                     791 00495$:
   029E 22                  792 	ret
   029F                     793 00496$:
                            794 ;	../fb_app_ft.c:143: switch (rsin[12]) {
   029F AE 30               795 	mov	r6,(_rsin + 0x000c)
   02A1 BE 02 03            796 	cjne	r6,#0x02,00497$
   02A4 02 04 47            797 	ljmp	00192$
   02A7                     798 00497$:
   02A7 BE 03 02            799 	cjne	r6,#0x03,00498$
   02AA 80 01               800 	sjmp	00499$
   02AC                     801 00498$:
   02AC 22                  802 	ret
   02AD                     803 00499$:
                            804 ;	../fb_app_ft.c:145: switch (rsin[13]) {
   02AD AE 31               805 	mov	r6,(_rsin + 0x000d)
   02AF BE 00 02            806 	cjne	r6,#0x00,00500$
   02B2 80 12               807 	sjmp	00174$
   02B4                     808 00500$:
   02B4 BE D1 03            809 	cjne	r6,#0xD1,00501$
   02B7 02 03 FD            810 	ljmp	00190$
   02BA                     811 00501$:
   02BA BE D5 02            812 	cjne	r6,#0xD5,00502$
   02BD 80 63               813 	sjmp	00175$
   02BF                     814 00502$:
   02BF BE D7 03            815 	cjne	r6,#0xD7,00503$
   02C2 02 03 89            816 	ljmp	00181$
   02C5                     817 00503$:
   02C5 22                  818 	ret
                            819 ;	../fb_app_ft.c:146: case 0x00:		// Read_Mask_Version_Req	  
   02C6                     820 00174$:
                            821 ;	../fb_app_ft.c:147: FT_SEND_T_DATACONNECTED_CONF		
   02C6 75 24 68            822 	mov	_rsin,#0x68
   02C9 8F 25               823 	mov	(_rsin + 0x0001),r7
   02CB 8F 26               824 	mov	(_rsin + 0x0002),r7
   02CD 75 27 68            825 	mov	(_rsin + 0x0003),#0x68
   02D0 B2 00               826 	cpl	_fcb
   02D2 A2 00               827 	mov	c,_fcb
   02D4 E4                  828 	clr	a
   02D5 33                  829 	rlc	a
   02D6 C4                  830 	swap	a
   02D7 23                  831 	rl	a
   02D8 54 E0               832 	anl	a,#0xE0
   02DA 24 D3               833 	add	a,#0xD3
   02DC F5 28               834 	mov	(_rsin + 0x0004),a
   02DE 75 29 8E            835 	mov	(_rsin + 0x0005),#0x8E
   02E1 12 07 08            836 	lcall	_ft_send_frame
                            837 ;	../fb_app_ft.c:148: FT_SET_HEADER(0x0C,0x89)
   02E4 75 24 68            838 	mov	_rsin,#0x68
   02E7 75 25 0C            839 	mov	(_rsin + 0x0001),#0x0C
   02EA 75 26 0C            840 	mov	(_rsin + 0x0002),#0x0C
   02ED 75 27 68            841 	mov	(_rsin + 0x0003),#0x68
   02F0 B2 00               842 	cpl	_fcb
   02F2 A2 00               843 	mov	c,_fcb
   02F4 E4                  844 	clr	a
   02F5 33                  845 	rlc	a
   02F6 C4                  846 	swap	a
   02F7 23                  847 	rl	a
   02F8 54 E0               848 	anl	a,#0xE0
   02FA 24 D3               849 	add	a,#0xD3
   02FC F5 28               850 	mov	(_rsin + 0x0004),a
   02FE 75 29 89            851 	mov	(_rsin + 0x0005),#0x89
                            852 ;	../fb_app_ft.c:149: rsin[6]=(0x00);
   0301 75 2A 00            853 	mov	(_rsin + 0x0006),#0x00
                            854 ;	../fb_app_ft.c:150: rsin[7]=(0x00);
   0304 75 2B 00            855 	mov	(_rsin + 0x0007),#0x00
                            856 ;	../fb_app_ft.c:151: rsin[8]=(0x00);
   0307 75 2C 00            857 	mov	(_rsin + 0x0008),#0x00
                            858 ;	../fb_app_ft.c:152: rsin[9]=(0x00);
   030A 75 2D 00            859 	mov	(_rsin + 0x0009),#0x00
                            860 ;	../fb_app_ft.c:153: rsin[10]=(0x00);
   030D 75 2E 00            861 	mov	(_rsin + 0x000a),#0x00
                            862 ;	../fb_app_ft.c:154: rsin[11]=(0x63);	// DRL Länge 3 Bytes
   0310 75 2F 63            863 	mov	(_rsin + 0x000b),#0x63
                            864 ;	../fb_app_ft.c:155: rsin[12]=(0x03);	// 03 40 = Read_Mask_Version_res
   0313 75 30 03            865 	mov	(_rsin + 0x000c),#0x03
                            866 ;	../fb_app_ft.c:156: rsin[13]=(0x40);	//
   0316 75 31 40            867 	mov	(_rsin + 0x000d),#0x40
                            868 ;	../fb_app_ft.c:157: rsin[14]=(0x00);	// Maskenversion 00 21
   0319 75 32 00            869 	mov	(_rsin + 0x000e),#0x00
                            870 ;	../fb_app_ft.c:158: rsin[15]=(0x21);
   031C 75 33 21            871 	mov	(_rsin + 0x000f),#0x21
                            872 ;	../fb_app_ft.c:159: ft_send_frame();
                            873 ;	../fb_app_ft.c:160: break;
   031F 02 07 08            874 	ljmp	_ft_send_frame
                            875 ;	../fb_app_ft.c:161: case 0xD5:	// Read_Property_Value_Req
   0322                     876 00175$:
                            877 ;	../fb_app_ft.c:162: if (rsin[14]==0x01 && rsin[15]==0x05 && rsin[16]==0x10 && rsin[17]==0x01)
   0322 74 01               878 	mov	a,#0x01
   0324 B5 32 02            879 	cjne	a,(_rsin + 0x000e),00504$
   0327 80 01               880 	sjmp	00505$
   0329                     881 00504$:
   0329 22                  882 	ret
   032A                     883 00505$:
   032A 74 05               884 	mov	a,#0x05
   032C B5 33 02            885 	cjne	a,(_rsin + 0x000f),00506$
   032F 80 01               886 	sjmp	00507$
   0331                     887 00506$:
   0331 22                  888 	ret
   0332                     889 00507$:
   0332 74 10               890 	mov	a,#0x10
   0334 B5 34 02            891 	cjne	a,(_rsin + 0x0010),00508$
   0337 80 01               892 	sjmp	00509$
   0339                     893 00508$:
   0339 22                  894 	ret
   033A                     895 00509$:
   033A 74 01               896 	mov	a,#0x01
   033C B5 35 02            897 	cjne	a,(_rsin + 0x0011),00510$
   033F 80 01               898 	sjmp	00511$
   0341                     899 00510$:
   0341 22                  900 	ret
   0342                     901 00511$:
                            902 ;	../fb_app_ft.c:164: FT_SEND_T_DATACONNECTED_CONF
   0342 75 24 68            903 	mov	_rsin,#0x68
   0345 8F 25               904 	mov	(_rsin + 0x0001),r7
   0347 8F 26               905 	mov	(_rsin + 0x0002),r7
   0349 75 27 68            906 	mov	(_rsin + 0x0003),#0x68
   034C B2 00               907 	cpl	_fcb
   034E A2 00               908 	mov	c,_fcb
   0350 E4                  909 	clr	a
   0351 33                  910 	rlc	a
   0352 C4                  911 	swap	a
   0353 23                  912 	rl	a
   0354 54 E0               913 	anl	a,#0xE0
   0356 24 D3               914 	add	a,#0xD3
   0358 F5 28               915 	mov	(_rsin + 0x0004),a
   035A 75 29 8E            916 	mov	(_rsin + 0x0005),#0x8E
   035D 12 07 08            917 	lcall	_ft_send_frame
                            918 ;	../fb_app_ft.c:165: FT_SET_HEADER(0x0F,0x89)
   0360 75 24 68            919 	mov	_rsin,#0x68
   0363 75 25 0F            920 	mov	(_rsin + 0x0001),#0x0F
   0366 75 26 0F            921 	mov	(_rsin + 0x0002),#0x0F
   0369 75 27 68            922 	mov	(_rsin + 0x0003),#0x68
   036C B2 00               923 	cpl	_fcb
   036E A2 00               924 	mov	c,_fcb
   0370 E4                  925 	clr	a
   0371 33                  926 	rlc	a
   0372 C4                  927 	swap	a
   0373 23                  928 	rl	a
   0374 54 E0               929 	anl	a,#0xE0
   0376 24 D3               930 	add	a,#0xD3
   0378 F5 28               931 	mov	(_rsin + 0x0004),a
   037A 75 29 89            932 	mov	(_rsin + 0x0005),#0x89
                            933 ;	../fb_app_ft.c:166: rsin[11]=0x66;
   037D 75 2F 66            934 	mov	(_rsin + 0x000b),#0x66
                            935 ;	../fb_app_ft.c:167: rsin[13]=0xD6;
   0380 75 31 D6            936 	mov	(_rsin + 0x000d),#0xD6
                            937 ;	../fb_app_ft.c:168: rsin[18]=property_5;
   0383 85 47 36            938 	mov	(_rsin + 0x0012),_property_5
                            939 ;	../fb_app_ft.c:169: ft_send_frame();
                            940 ;	../fb_app_ft.c:171: break;
   0386 02 07 08            941 	ljmp	_ft_send_frame
                            942 ;	../fb_app_ft.c:172: case 0xD7:	// Write_Property_Value_Req
   0389                     943 00181$:
                            944 ;	../fb_app_ft.c:173: if (rsin[14]==0x01 && rsin[15]==0x05 && rsin[16]==0x10 && rsin[17]==0x01)
   0389 74 01               945 	mov	a,#0x01
   038B B5 32 02            946 	cjne	a,(_rsin + 0x000e),00512$
   038E 80 01               947 	sjmp	00513$
   0390                     948 00512$:
   0390 22                  949 	ret
   0391                     950 00513$:
   0391 74 05               951 	mov	a,#0x05
   0393 B5 33 02            952 	cjne	a,(_rsin + 0x000f),00514$
   0396 80 01               953 	sjmp	00515$
   0398                     954 00514$:
   0398 22                  955 	ret
   0399                     956 00515$:
   0399 74 10               957 	mov	a,#0x10
   039B B5 34 02            958 	cjne	a,(_rsin + 0x0010),00516$
   039E 80 01               959 	sjmp	00517$
   03A0                     960 00516$:
   03A0 22                  961 	ret
   03A1                     962 00517$:
   03A1 74 01               963 	mov	a,#0x01
   03A3 B5 35 02            964 	cjne	a,(_rsin + 0x0011),00518$
   03A6 80 01               965 	sjmp	00519$
   03A8                     966 00518$:
   03A8 22                  967 	ret
   03A9                     968 00519$:
                            969 ;	../fb_app_ft.c:175: FT_SEND_T_DATACONNECTED_CONF
   03A9 75 24 68            970 	mov	_rsin,#0x68
   03AC 8F 25               971 	mov	(_rsin + 0x0001),r7
   03AE 8F 26               972 	mov	(_rsin + 0x0002),r7
   03B0 75 27 68            973 	mov	(_rsin + 0x0003),#0x68
   03B3 B2 00               974 	cpl	_fcb
   03B5 A2 00               975 	mov	c,_fcb
   03B7 E4                  976 	clr	a
   03B8 33                  977 	rlc	a
   03B9 C4                  978 	swap	a
   03BA 23                  979 	rl	a
   03BB 54 E0               980 	anl	a,#0xE0
   03BD 24 D3               981 	add	a,#0xD3
   03BF F5 28               982 	mov	(_rsin + 0x0004),a
   03C1 75 29 8E            983 	mov	(_rsin + 0x0005),#0x8E
   03C4 12 07 08            984 	lcall	_ft_send_frame
                            985 ;	../fb_app_ft.c:176: if (rsin[18]==0x01) property_5=0x02; else property_5=0x01;
   03C7 74 01               986 	mov	a,#0x01
   03C9 B5 36 05            987 	cjne	a,(_rsin + 0x0012),00183$
   03CC 75 47 02            988 	mov	_property_5,#0x02
   03CF 80 03               989 	sjmp	00184$
   03D1                     990 00183$:
   03D1 75 47 01            991 	mov	_property_5,#0x01
   03D4                     992 00184$:
                            993 ;	../fb_app_ft.c:177: FT_SET_HEADER(0x0F,0x89)
   03D4 75 24 68            994 	mov	_rsin,#0x68
   03D7 75 25 0F            995 	mov	(_rsin + 0x0001),#0x0F
   03DA 75 26 0F            996 	mov	(_rsin + 0x0002),#0x0F
   03DD 75 27 68            997 	mov	(_rsin + 0x0003),#0x68
   03E0 B2 00               998 	cpl	_fcb
   03E2 A2 00               999 	mov	c,_fcb
   03E4 E4                 1000 	clr	a
   03E5 33                 1001 	rlc	a
   03E6 C4                 1002 	swap	a
   03E7 23                 1003 	rl	a
   03E8 54 E0              1004 	anl	a,#0xE0
   03EA 24 D3              1005 	add	a,#0xD3
   03EC F5 28              1006 	mov	(_rsin + 0x0004),a
   03EE 75 29 89           1007 	mov	(_rsin + 0x0005),#0x89
                           1008 ;	../fb_app_ft.c:178: rsin[11]=0x66;
   03F1 75 2F 66           1009 	mov	(_rsin + 0x000b),#0x66
                           1010 ;	../fb_app_ft.c:179: rsin[13]=0xD6;
   03F4 75 31 D6           1011 	mov	(_rsin + 0x000d),#0xD6
                           1012 ;	../fb_app_ft.c:180: rsin[18]=property_5;
   03F7 85 47 36           1013 	mov	(_rsin + 0x0012),_property_5
                           1014 ;	../fb_app_ft.c:181: ft_send_frame();
                           1015 ;	../fb_app_ft.c:183: break;
   03FA 02 07 08           1016 	ljmp	_ft_send_frame
                           1017 ;	../fb_app_ft.c:185: case  0xD1:		// Authorize_Req
   03FD                    1018 00190$:
                           1019 ;	../fb_app_ft.c:186: FT_SEND_T_DATACONNECTED_CONF
   03FD 75 24 68           1020 	mov	_rsin,#0x68
   0400 8F 25              1021 	mov	(_rsin + 0x0001),r7
   0402 8F 26              1022 	mov	(_rsin + 0x0002),r7
   0404 75 27 68           1023 	mov	(_rsin + 0x0003),#0x68
   0407 B2 00              1024 	cpl	_fcb
   0409 A2 00              1025 	mov	c,_fcb
   040B E4                 1026 	clr	a
   040C 33                 1027 	rlc	a
   040D C4                 1028 	swap	a
   040E 23                 1029 	rl	a
   040F 54 E0              1030 	anl	a,#0xE0
   0411 24 D3              1031 	add	a,#0xD3
   0413 F5 28              1032 	mov	(_rsin + 0x0004),a
   0415 75 29 8E           1033 	mov	(_rsin + 0x0005),#0x8E
   0418 12 07 08           1034 	lcall	_ft_send_frame
                           1035 ;	../fb_app_ft.c:187: rsin[4]|=0x80;		// DIR=1 BAU to external device
   041B 74 80              1036 	mov	a,#0x80
   041D 45 28              1037 	orl	a,(_rsin + 0x0004)
   041F F5 28              1038 	mov	(_rsin + 0x0004),a
                           1039 ;	../fb_app_ft.c:190: FT_SET_HEADER(0x0B,0x89)
   0421 75 24 68           1040 	mov	_rsin,#0x68
   0424 75 25 0B           1041 	mov	(_rsin + 0x0001),#0x0B
   0427 75 26 0B           1042 	mov	(_rsin + 0x0002),#0x0B
   042A 75 27 68           1043 	mov	(_rsin + 0x0003),#0x68
   042D B2 00              1044 	cpl	_fcb
   042F A2 00              1045 	mov	c,_fcb
   0431 E4                 1046 	clr	a
   0432 33                 1047 	rlc	a
   0433 C4                 1048 	swap	a
   0434 23                 1049 	rl	a
   0435 54 E0              1050 	anl	a,#0xE0
   0437 24 D3              1051 	add	a,#0xD3
   0439 F5 28              1052 	mov	(_rsin + 0x0004),a
   043B 75 29 89           1053 	mov	(_rsin + 0x0005),#0x89
                           1054 ;	../fb_app_ft.c:191: rsin[11]=0x62;// 66
   043E 75 2F 62           1055 	mov	(_rsin + 0x000b),#0x62
                           1056 ;	../fb_app_ft.c:192: rsin[13]=0xD2;	
   0441 75 31 D2           1057 	mov	(_rsin + 0x000d),#0xD2
                           1058 ;	../fb_app_ft.c:193: ft_send_frame();
                           1059 ;	../fb_app_ft.c:196: break;
   0444 02 07 08           1060 	ljmp	_ft_send_frame
                           1061 ;	../fb_app_ft.c:198: case 0x02:
   0447                    1062 00192$:
                           1063 ;	../fb_app_ft.c:199: switch (rsin[13]&0xF0) {
   0447 AE 31              1064 	mov	r6,(_rsin + 0x000d)
   0449 74 F0              1065 	mov	a,#0xF0
   044B 5E                 1066 	anl	a,r6
   044C FD                 1067 	mov	r5,a
   044D 60 06              1068 	jz	00193$
   044F BD 80 02           1069 	cjne	r5,#0x80,00523$
   0452 80 31              1070 	sjmp	00194$
   0454                    1071 00523$:
   0454 22                 1072 	ret
                           1073 ;	../fb_app_ft.c:200: case 0x00:	// Read_Memory_Req
   0455                    1074 00193$:
                           1075 ;	../fb_app_ft.c:201: FT_SEND_T_DATACONNECTED_CONF
   0455 75 24 68           1076 	mov	_rsin,#0x68
   0458 8F 25              1077 	mov	(_rsin + 0x0001),r7
   045A 8F 26              1078 	mov	(_rsin + 0x0002),r7
   045C 75 27 68           1079 	mov	(_rsin + 0x0003),#0x68
   045F B2 00              1080 	cpl	_fcb
   0461 A2 00              1081 	mov	c,_fcb
   0463 E4                 1082 	clr	a
   0464 33                 1083 	rlc	a
   0465 C4                 1084 	swap	a
   0466 23                 1085 	rl	a
   0467 54 E0              1086 	anl	a,#0xE0
   0469 24 D3              1087 	add	a,#0xD3
   046B F5 28              1088 	mov	(_rsin + 0x0004),a
   046D 75 29 8E           1089 	mov	(_rsin + 0x0005),#0x8E
   0470 12 07 08           1090 	lcall	_ft_send_frame
                           1091 ;	../fb_app_ft.c:202: ft_send_Read_Memory_Res((rsin[13]&0x0F),rsin[14],rsin[15]);
   0473 74 0F              1092 	mov	a,#0x0F
   0475 55 31              1093 	anl	a,(_rsin + 0x000d)
   0477 F5 82              1094 	mov	dpl,a
   0479 C0 33              1095 	push	(_rsin + 0x000f)
   047B C0 32              1096 	push	(_rsin + 0x000e)
   047D 12 05 9F           1097 	lcall	_ft_send_Read_Memory_Res
   0480 15 81              1098 	dec	sp
   0482 15 81              1099 	dec	sp
                           1100 ;	../fb_app_ft.c:203: break;
                           1101 ;	../fb_app_ft.c:205: case 0x80:	// Write_Memory_Req
   0484 22                 1102 	ret
   0485                    1103 00194$:
                           1104 ;	../fb_app_ft.c:207: EA=0;
   0485 C2 AF              1105 	clr	_IEN0_7
                           1106 ;	../fb_app_ft.c:209: write_ok=0;
   0487 C2 18              1107 	clr	b0
                           1108 ;	../fb_app_ft.c:210: while (!write_ok) {
   0489 53 06 0F           1109 	anl	ar6,#0x0F
   048C                    1110 00197$:
   048C 20 18 31           1111 	jb	b0,00199$
                           1112 ;	../fb_app_ft.c:211: START_WRITECYCLE;
   048F 75 E4 00           1113 	mov	_FMCON,#0x00
                           1114 ;	../fb_app_ft.c:212: for (n=0;n<(rsin[13]&0x0F);n++) {
   0492 7D 00              1115 	mov	r5,#0x00
   0494                    1116 00232$:
   0494 C3                 1117 	clr	c
   0495 ED                 1118 	mov	a,r5
   0496 9E                 1119 	subb	a,r6
   0497 50 18              1120 	jnc	00235$
                           1121 ;	../fb_app_ft.c:213: WRITE_BYTE(rsin[14],rsin[15]+n,rsin[16+n]);
   0499 74 01              1122 	mov	a,#0x01
   049B 55 32              1123 	anl	a,(_rsin + 0x000e)
   049D 24 1C              1124 	add	a,#0x1C
   049F F5 E7              1125 	mov	_FMADRH,a
   04A1 ED                 1126 	mov	a,r5
   04A2 25 33              1127 	add	a,(_rsin + 0x000f)
   04A4 F5 E6              1128 	mov	_FMADRL,a
   04A6 74 10              1129 	mov	a,#0x10
   04A8 2D                 1130 	add	a,r5
   04A9 24 24              1131 	add	a,#_rsin
   04AB F9                 1132 	mov	r1,a
   04AC 87 E5              1133 	mov	_FMDATA,@r1
                           1134 ;	../fb_app_ft.c:212: for (n=0;n<(rsin[13]&0x0F);n++) {
   04AE 0D                 1135 	inc	r5
   04AF 80 E3              1136 	sjmp	00232$
   04B1                    1137 00235$:
                           1138 ;	../fb_app_ft.c:215: STOP_WRITECYCLE;
   04B1 75 E4 68           1139 	mov	_FMCON,#0x68
                           1140 ;	../fb_app_ft.c:216: if(!(FMCON & 0x0F)) write_ok=1;	// prüfen, ob erfolgreich geflasht
   04B4 E5 E4              1141 	mov	a,_FMCON
   04B6 54 0F              1142 	anl	a,#0x0F
   04B8 60 02              1143 	jz	00527$
   04BA 80 D0              1144 	sjmp	00197$
   04BC                    1145 00527$:
   04BC D2 18              1146 	setb	b0
   04BE 80 CC              1147 	sjmp	00197$
   04C0                    1148 00199$:
                           1149 ;	../fb_app_ft.c:218: EA=1;
   04C0 D2 AF              1150 	setb	_IEN0_7
                           1151 ;	../fb_app_ft.c:221: FT_SEND_T_DATACONNECTED_CONF
   04C2 75 24 68           1152 	mov	_rsin,#0x68
   04C5 8F 25              1153 	mov	(_rsin + 0x0001),r7
   04C7 8F 26              1154 	mov	(_rsin + 0x0002),r7
   04C9 75 27 68           1155 	mov	(_rsin + 0x0003),#0x68
   04CC B2 00              1156 	cpl	_fcb
   04CE A2 00              1157 	mov	c,_fcb
   04D0 E4                 1158 	clr	a
   04D1 33                 1159 	rlc	a
   04D2 C4                 1160 	swap	a
   04D3 23                 1161 	rl	a
   04D4 54 E0              1162 	anl	a,#0xE0
   04D6 24 D3              1163 	add	a,#0xD3
   04D8 F5 28              1164 	mov	(_rsin + 0x0004),a
   04DA 75 29 8E           1165 	mov	(_rsin + 0x0005),#0x8E
                           1166 ;	../fb_app_ft.c:227: break;
                           1167 ;	../fb_app_ft.c:231: case 0xA7:		// PEI_identify_request
   04DD 02 07 08           1168 	ljmp	_ft_send_frame
   04E0                    1169 00204$:
                           1170 ;	../fb_app_ft.c:232: PEI_identify_req();
                           1171 ;	../fb_app_ft.c:234: }
   04E0 02 08 1D           1172 	ljmp	_PEI_identify_req
                           1173 ;------------------------------------------------------------
                           1174 ;Allocation info for local variables in function 'ft_process_fix_frame'
                           1175 ;------------------------------------------------------------
                           1176 ;n                         Allocated to registers r7 
                           1177 ;------------------------------------------------------------
                           1178 ;	../fb_app_ft.c:241: void ft_process_fix_frame(void)		// frame with fixed length received
                           1179 ;	-----------------------------------------
                           1180 ;	 function ft_process_fix_frame
                           1181 ;	-----------------------------------------
   04E3                    1182 _ft_process_fix_frame:
                           1183 ;	../fb_app_ft.c:245: if (rsin[0]==0x10 && rsin[3]==0x16 && rsin[1]==rsin[2]) {	// Single Byte
   04E3 74 10              1184 	mov	a,#0x10
   04E5 B5 24 02           1185 	cjne	a,_rsin,00216$
   04E8 80 01              1186 	sjmp	00217$
   04EA                    1187 00216$:
   04EA 22                 1188 	ret
   04EB                    1189 00217$:
   04EB 74 16              1190 	mov	a,#0x16
   04ED B5 27 02           1191 	cjne	a,(_rsin + 0x0003),00218$
   04F0 80 01              1192 	sjmp	00219$
   04F2                    1193 00218$:
   04F2 22                 1194 	ret
   04F3                    1195 00219$:
   04F3 E5 25              1196 	mov	a,(_rsin + 0x0001)
   04F5 FF                 1197 	mov	r7,a
   04F6 B5 26 02           1198 	cjne	a,(_rsin + 0x0002),00220$
   04F9 80 01              1199 	sjmp	00221$
   04FB                    1200 00220$:
   04FB 22                 1201 	ret
   04FC                    1202 00221$:
                           1203 ;	../fb_app_ft.c:246: if ((rsin[1]&0x0F)==0x00) {	//send_reset received
   04FC EF                 1204 	mov	a,r7
   04FD 54 0F              1205 	anl	a,#0x0F
   04FF 60 02              1206 	jz	00223$
   0501 80 20              1207 	sjmp	00107$
   0503                    1208 00223$:
                           1209 ;	../fb_app_ft.c:247: FT_SEND_CHAR(0xE5)		// send an ack
   0503 75 99 E5           1210 	mov	_SBUF,#0xE5
   0506 C2 9B              1211 	clr	_SCON_3
   0508 7F 01              1212 	mov	r7,#0x01
   050A                    1213 00134$:
   050A BF 00 02           1214 	cjne	r7,#0x00,00224$
   050D 80 0C              1215 	sjmp	00103$
   050F                    1216 00224$:
   050F EF                 1217 	mov	a,r7
   0510 54 E5              1218 	anl	a,#0xE5
   0512 60 02              1219 	jz	00136$
   0514 B2 9B              1220 	cpl	_SCON_3
   0516                    1221 00136$:
   0516 EF                 1222 	mov	a,r7
   0517 2F                 1223 	add	a,r7
   0518 FF                 1224 	mov	r7,a
   0519 80 EF              1225 	sjmp	00134$
   051B                    1226 00103$:
   051B 10 99 02           1227 	jbc	_SCON_1,00226$
   051E 80 FB              1228 	sjmp	00103$
   0520                    1229 00226$:
                           1230 ;	../fb_app_ft.c:248: restart_app();
   0520 12 09 90           1231 	lcall	_restart_app
   0523                    1232 00107$:
                           1233 ;	../fb_app_ft.c:250: if (rsin[1]==0x49) {		// N_DataConnected.ind received
   0523 74 49              1234 	mov	a,#0x49
   0525 B5 25 02           1235 	cjne	a,(_rsin + 0x0001),00227$
   0528 80 01              1236 	sjmp	00228$
   052A                    1237 00227$:
   052A 22                 1238 	ret
   052B                    1239 00228$:
                           1240 ;	../fb_app_ft.c:251: FT_SEND_CHAR(0x10)
   052B 75 99 10           1241 	mov	_SBUF,#0x10
   052E C2 9B              1242 	clr	_SCON_3
   0530 7F 01              1243 	mov	r7,#0x01
   0532                    1244 00138$:
   0532 BF 00 02           1245 	cjne	r7,#0x00,00229$
   0535 80 0B              1246 	sjmp	00110$
   0537                    1247 00229$:
   0537 EF                 1248 	mov	a,r7
   0538 30 E4 02           1249 	jnb	acc.4,00140$
   053B B2 9B              1250 	cpl	_SCON_3
   053D                    1251 00140$:
   053D EF                 1252 	mov	a,r7
   053E 2F                 1253 	add	a,r7
   053F FF                 1254 	mov	r7,a
   0540 80 F0              1255 	sjmp	00138$
   0542                    1256 00110$:
   0542 10 99 02           1257 	jbc	_SCON_1,00231$
   0545 80 FB              1258 	sjmp	00110$
   0547                    1259 00231$:
                           1260 ;	../fb_app_ft.c:252: FT_SEND_CHAR(0x8B)
   0547 75 99 8B           1261 	mov	_SBUF,#0x8B
   054A C2 9B              1262 	clr	_SCON_3
   054C 7F 01              1263 	mov	r7,#0x01
   054E                    1264 00142$:
   054E BF 00 02           1265 	cjne	r7,#0x00,00232$
   0551 80 0C              1266 	sjmp	00115$
   0553                    1267 00232$:
   0553 EF                 1268 	mov	a,r7
   0554 54 8B              1269 	anl	a,#0x8B
   0556 60 02              1270 	jz	00144$
   0558 B2 9B              1271 	cpl	_SCON_3
   055A                    1272 00144$:
   055A EF                 1273 	mov	a,r7
   055B 2F                 1274 	add	a,r7
   055C FF                 1275 	mov	r7,a
   055D 80 EF              1276 	sjmp	00142$
   055F                    1277 00115$:
   055F 10 99 02           1278 	jbc	_SCON_1,00234$
   0562 80 FB              1279 	sjmp	00115$
   0564                    1280 00234$:
                           1281 ;	../fb_app_ft.c:253: FT_SEND_CHAR(0x8B)
   0564 75 99 8B           1282 	mov	_SBUF,#0x8B
   0567 C2 9B              1283 	clr	_SCON_3
   0569 7F 01              1284 	mov	r7,#0x01
   056B                    1285 00146$:
   056B BF 00 02           1286 	cjne	r7,#0x00,00235$
   056E 80 0C              1287 	sjmp	00120$
   0570                    1288 00235$:
   0570 EF                 1289 	mov	a,r7
   0571 54 8B              1290 	anl	a,#0x8B
   0573 60 02              1291 	jz	00148$
   0575 B2 9B              1292 	cpl	_SCON_3
   0577                    1293 00148$:
   0577 EF                 1294 	mov	a,r7
   0578 2F                 1295 	add	a,r7
   0579 FF                 1296 	mov	r7,a
   057A 80 EF              1297 	sjmp	00146$
   057C                    1298 00120$:
   057C 10 99 02           1299 	jbc	_SCON_1,00237$
   057F 80 FB              1300 	sjmp	00120$
   0581                    1301 00237$:
                           1302 ;	../fb_app_ft.c:254: FT_SEND_CHAR(0x16)
   0581 75 99 16           1303 	mov	_SBUF,#0x16
   0584 C2 9B              1304 	clr	_SCON_3
   0586 7F 01              1305 	mov	r7,#0x01
   0588                    1306 00150$:
   0588 BF 00 02           1307 	cjne	r7,#0x00,00238$
   058B 80 0C              1308 	sjmp	00125$
   058D                    1309 00238$:
   058D EF                 1310 	mov	a,r7
   058E 54 16              1311 	anl	a,#0x16
   0590 60 02              1312 	jz	00152$
   0592 B2 9B              1313 	cpl	_SCON_3
   0594                    1314 00152$:
   0594 EF                 1315 	mov	a,r7
   0595 2F                 1316 	add	a,r7
   0596 FF                 1317 	mov	r7,a
   0597 80 EF              1318 	sjmp	00150$
   0599                    1319 00125$:
   0599 10 99 02           1320 	jbc	_SCON_1,00240$
   059C 80 FB              1321 	sjmp	00125$
   059E                    1322 00240$:
   059E 22                 1323 	ret
                           1324 ;------------------------------------------------------------
                           1325 ;Allocation info for local variables in function 'ft_send_Read_Memory_Res'
                           1326 ;------------------------------------------------------------
                           1327 ;adrh                      Allocated to stack - _bp -3
                           1328 ;adrl                      Allocated to stack - _bp -4
                           1329 ;bytecount                 Allocated to registers r7 
                           1330 ;n                         Allocated to registers r6 
                           1331 ;------------------------------------------------------------
                           1332 ;	../fb_app_ft.c:261: void ft_send_Read_Memory_Res(unsigned char bytecount, unsigned char adrh, unsigned char adrl)
                           1333 ;	-----------------------------------------
                           1334 ;	 function ft_send_Read_Memory_Res
                           1335 ;	-----------------------------------------
   059F                    1336 _ft_send_Read_Memory_Res:
   059F C0 08              1337 	push	_bp
   05A1 85 81 08           1338 	mov	_bp,sp
   05A4 AF 82              1339 	mov	r7,dpl
                           1340 ;	../fb_app_ft.c:265: FT_SET_HEADER(bytecount+12,0x89)
   05A6 75 24 68           1341 	mov	_rsin,#0x68
   05A9 74 0C              1342 	mov	a,#0x0C
   05AB 2F                 1343 	add	a,r7
   05AC FE                 1344 	mov	r6,a
   05AD 8E 25              1345 	mov	(_rsin + 0x0001),r6
   05AF 8E 26              1346 	mov	(_rsin + 0x0002),r6
   05B1 75 27 68           1347 	mov	(_rsin + 0x0003),#0x68
   05B4 B2 00              1348 	cpl	_fcb
   05B6 A2 00              1349 	mov	c,_fcb
   05B8 E4                 1350 	clr	a
   05B9 33                 1351 	rlc	a
   05BA C4                 1352 	swap	a
   05BB 23                 1353 	rl	a
   05BC 54 E0              1354 	anl	a,#0xE0
   05BE FE                 1355 	mov	r6,a
   05BF 24 D3              1356 	add	a,#0xD3
   05C1 F5 28              1357 	mov	(_rsin + 0x0004),a
   05C3 75 29 89           1358 	mov	(_rsin + 0x0005),#0x89
                           1359 ;	../fb_app_ft.c:267: rsin[6]=0x0C;
   05C6 75 2A 0C           1360 	mov	(_rsin + 0x0006),#0x0C
                           1361 ;	../fb_app_ft.c:268: rsin[7]=0x00;
   05C9 75 2B 00           1362 	mov	(_rsin + 0x0007),#0x00
                           1363 ;	../fb_app_ft.c:269: rsin[8]=0x00;
                           1364 ;	../fb_app_ft.c:270: rsin[9]=0x00;
                           1365 ;	../fb_app_ft.c:271: rsin[10]=0x00;
                           1366 ;	../fb_app_ft.c:272: rsin[11]=bytecount+3;
   05CC E4                 1367 	clr	a
   05CD F5 2C              1368 	mov	(_rsin + 0x0008),a
   05CF F5 2D              1369 	mov	(_rsin + 0x0009),a
   05D1 F5 2E              1370 	mov	(_rsin + 0x000a),a
   05D3 74 03              1371 	mov	a,#0x03
   05D5 2F                 1372 	add	a,r7
   05D6 F5 2F              1373 	mov	(_rsin + 0x000b),a
                           1374 ;	../fb_app_ft.c:273: rsin[12]=0x02;
   05D8 75 30 02           1375 	mov	(_rsin + 0x000c),#0x02
                           1376 ;	../fb_app_ft.c:274: rsin[13]=0x40+bytecount;
   05DB 74 40              1377 	mov	a,#0x40
   05DD 2F                 1378 	add	a,r7
   05DE F5 31              1379 	mov	(_rsin + 0x000d),a
                           1380 ;	../fb_app_ft.c:275: rsin[14]=adrh;
   05E0 E5 08              1381 	mov	a,_bp
   05E2 24 FD              1382 	add	a,#0xfd
   05E4 F8                 1383 	mov	r0,a
   05E5 86 32              1384 	mov	(_rsin + 0x000e),@r0
                           1385 ;	../fb_app_ft.c:276: rsin[15]=adrl;
   05E7 E5 08              1386 	mov	a,_bp
   05E9 24 FC              1387 	add	a,#0xfc
   05EB F8                 1388 	mov	r0,a
   05EC 86 33              1389 	mov	(_rsin + 0x000f),@r0
                           1390 ;	../fb_app_ft.c:277: if (switch_mode==0x03) for (n=0;n<bytecount;n++) rsin[n+16]=eeprom[adrl+n];
   05EE 74 03              1391 	mov	a,#0x03
   05F0 B5 45 1D           1392 	cjne	a,_switch_mode,00102$
   05F3 7E 00              1393 	mov	r6,#0x00
   05F5                    1394 00103$:
   05F5 C3                 1395 	clr	c
   05F6 EE                 1396 	mov	a,r6
   05F7 9F                 1397 	subb	a,r7
   05F8 50 16              1398 	jnc	00102$
   05FA 74 10              1399 	mov	a,#0x10
   05FC 2E                 1400 	add	a,r6
   05FD 24 24              1401 	add	a,#_rsin
   05FF F9                 1402 	mov	r1,a
   0600 E5 08              1403 	mov	a,_bp
   0602 24 FC              1404 	add	a,#0xfc
   0604 F8                 1405 	mov	r0,a
   0605 EE                 1406 	mov	a,r6
   0606 26                 1407 	add	a,@r0
   0607 90 1D 00           1408 	mov	dptr,#_eeprom
   060A 93                 1409 	movc	a,@a+dptr
   060B FD                 1410 	mov	r5,a
   060C F7                 1411 	mov	@r1,a
   060D 0E                 1412 	inc	r6
   060E 80 E5              1413 	sjmp	00103$
   0610                    1414 00102$:
                           1415 ;	../fb_app_ft.c:278: ft_send_frame();
   0610 12 07 08           1416 	lcall	_ft_send_frame
   0613 D0 08              1417 	pop	_bp
   0615 22                 1418 	ret
                           1419 ;------------------------------------------------------------
                           1420 ;Allocation info for local variables in function 'ft_process_telegram'
                           1421 ;------------------------------------------------------------
                           1422 ;n                         Allocated to registers r7 
                           1423 ;------------------------------------------------------------
                           1424 ;	../fb_app_ft.c:284: void ft_process_telegram(void)		// EIB telegram received
                           1425 ;	-----------------------------------------
                           1426 ;	 function ft_process_telegram
                           1427 ;	-----------------------------------------
   0616                    1428 _ft_process_telegram:
                           1429 ;	../fb_app_ft.c:289: tel_arrived=0;
   0616 C2 09              1430 	clr	_tel_arrived
                           1431 ;	../fb_app_ft.c:290: tel_was_acked=0;
   0618 C2 01              1432 	clr	_tel_was_acked
                           1433 ;	../fb_app_ft.c:292: if (switch_mode==0x05)		// busmonitor
   061A 74 05              1434 	mov	a,#0x05
   061C B5 45 02           1435 	cjne	a,_switch_mode,00130$
   061F 80 03              1436 	sjmp	00131$
   0621                    1437 00130$:
   0621 02 06 B4           1438 	ljmp	00104$
   0624                    1439 00131$:
                           1440 ;	../fb_app_ft.c:294: FT_SET_HEADER((telegramm[5]&0x0F)+13,0x2B)
   0624 75 24 68           1441 	mov	_rsin,#0x68
   0627 74 0F              1442 	mov	a,#0x0F
   0629 55 54              1443 	anl	a,(_telegramm + 0x0005)
   062B 24 0D              1444 	add	a,#0x0D
   062D FF                 1445 	mov	r7,a
   062E 8F 25              1446 	mov	(_rsin + 0x0001),r7
   0630 8F 26              1447 	mov	(_rsin + 0x0002),r7
   0632 75 27 68           1448 	mov	(_rsin + 0x0003),#0x68
   0635 B2 00              1449 	cpl	_fcb
   0637 A2 00              1450 	mov	c,_fcb
   0639 E4                 1451 	clr	a
   063A 33                 1452 	rlc	a
   063B C4                 1453 	swap	a
   063C 23                 1454 	rl	a
   063D 54 E0              1455 	anl	a,#0xE0
   063F 24 D3              1456 	add	a,#0xD3
   0641 F5 28              1457 	mov	(_rsin + 0x0004),a
   0643 75 29 2B           1458 	mov	(_rsin + 0x0005),#0x2B
                           1459 ;	../fb_app_ft.c:295: rsin[6]=0x01;	// status
   0646 75 2A 01           1460 	mov	(_rsin + 0x0006),#0x01
                           1461 ;	../fb_app_ft.c:296: rsin[7]=0x22;	// timestamp
   0649 75 2B 22           1462 	mov	(_rsin + 0x0007),#0x22
                           1463 ;	../fb_app_ft.c:297: rsin[8]=0x33;	// timestamp
   064C 75 2C 33           1464 	mov	(_rsin + 0x0008),#0x33
                           1465 ;	../fb_app_ft.c:298: for (n=0;n<(rsin[1]-4);n++) rsin[n+9]=telegramm[n];	// -1
   064F 7F 00              1466 	mov	r7,#0x00
   0651                    1467 00106$:
   0651 AD 25              1468 	mov	r5,(_rsin + 0x0001)
   0653 7E 00              1469 	mov	r6,#0x00
   0655 ED                 1470 	mov	a,r5
   0656 24 FC              1471 	add	a,#0xFC
   0658 FD                 1472 	mov	r5,a
   0659 EE                 1473 	mov	a,r6
   065A 34 FF              1474 	addc	a,#0xFF
   065C FE                 1475 	mov	r6,a
   065D 8F 03              1476 	mov	ar3,r7
   065F 7C 00              1477 	mov	r4,#0x00
   0661 C3                 1478 	clr	c
   0662 EB                 1479 	mov	a,r3
   0663 9D                 1480 	subb	a,r5
   0664 EC                 1481 	mov	a,r4
   0665 64 80              1482 	xrl	a,#0x80
   0667 8E F0              1483 	mov	b,r6
   0669 63 F0 80           1484 	xrl	b,#0x80
   066C 95 F0              1485 	subb	a,b
   066E 50 11              1486 	jnc	00109$
   0670 74 09              1487 	mov	a,#0x09
   0672 2F                 1488 	add	a,r7
   0673 24 24              1489 	add	a,#_rsin
   0675 F9                 1490 	mov	r1,a
   0676 EF                 1491 	mov	a,r7
   0677 24 4F              1492 	add	a,#_telegramm
   0679 F8                 1493 	mov	r0,a
   067A 86 06              1494 	mov	ar6,@r0
   067C A7 06              1495 	mov	@r1,ar6
   067E 0F                 1496 	inc	r7
   067F 80 D0              1497 	sjmp	00106$
   0681                    1498 00109$:
                           1499 ;	../fb_app_ft.c:299: ft_send_frame();
   0681 12 07 08           1500 	lcall	_ft_send_frame
                           1501 ;	../fb_app_ft.c:301: if (tel_was_acked) {
   0684 20 01 01           1502 	jb	_tel_was_acked,00133$
   0687 22                 1503 	ret
   0688                    1504 00133$:
                           1505 ;	../fb_app_ft.c:302: FT_SET_HEADER(0x06,0x2B)
   0688 75 24 68           1506 	mov	_rsin,#0x68
   068B 75 25 06           1507 	mov	(_rsin + 0x0001),#0x06
   068E 75 26 06           1508 	mov	(_rsin + 0x0002),#0x06
   0691 75 27 68           1509 	mov	(_rsin + 0x0003),#0x68
   0694 B2 00              1510 	cpl	_fcb
   0696 A2 00              1511 	mov	c,_fcb
   0698 E4                 1512 	clr	a
   0699 33                 1513 	rlc	a
   069A C4                 1514 	swap	a
   069B 23                 1515 	rl	a
   069C 54 E0              1516 	anl	a,#0xE0
   069E 24 D3              1517 	add	a,#0xD3
   06A0 F5 28              1518 	mov	(_rsin + 0x0004),a
   06A2 75 29 2B           1519 	mov	(_rsin + 0x0005),#0x2B
                           1520 ;	../fb_app_ft.c:303: rsin[6]=0x01;
   06A5 75 2A 01           1521 	mov	(_rsin + 0x0006),#0x01
                           1522 ;	../fb_app_ft.c:304: rsin[7]=0x33;	// timestamp
   06A8 75 2B 33           1523 	mov	(_rsin + 0x0007),#0x33
                           1524 ;	../fb_app_ft.c:305: rsin[8]=0x44;	// timestamp
   06AB 75 2C 44           1525 	mov	(_rsin + 0x0008),#0x44
                           1526 ;	../fb_app_ft.c:306: rsin[9]=0xCC;
   06AE 75 2D CC           1527 	mov	(_rsin + 0x0009),#0xCC
                           1528 ;	../fb_app_ft.c:307: ft_send_frame();
   06B1 02 07 08           1529 	ljmp	_ft_send_frame
   06B4                    1530 00104$:
                           1531 ;	../fb_app_ft.c:311: FT_SET_HEADER((telegramm[5]&0x0F)+9,0x29)	// +9
   06B4 75 24 68           1532 	mov	_rsin,#0x68
   06B7 74 0F              1533 	mov	a,#0x0F
   06B9 55 54              1534 	anl	a,(_telegramm + 0x0005)
   06BB 24 09              1535 	add	a,#0x09
   06BD FF                 1536 	mov	r7,a
   06BE 8F 25              1537 	mov	(_rsin + 0x0001),r7
   06C0 8F 26              1538 	mov	(_rsin + 0x0002),r7
   06C2 75 27 68           1539 	mov	(_rsin + 0x0003),#0x68
   06C5 B2 00              1540 	cpl	_fcb
   06C7 A2 00              1541 	mov	c,_fcb
   06C9 E4                 1542 	clr	a
   06CA 33                 1543 	rlc	a
   06CB C4                 1544 	swap	a
   06CC 23                 1545 	rl	a
   06CD 54 E0              1546 	anl	a,#0xE0
   06CF 24 D3              1547 	add	a,#0xD3
   06D1 F5 28              1548 	mov	(_rsin + 0x0004),a
   06D3 75 29 29           1549 	mov	(_rsin + 0x0005),#0x29
                           1550 ;	../fb_app_ft.c:312: for (n=0;n<(rsin[1]-1);n++) rsin[n+6]=telegramm[n];	// -1
   06D6 7F 00              1551 	mov	r7,#0x00
   06D8                    1552 00110$:
   06D8 AD 25              1553 	mov	r5,(_rsin + 0x0001)
   06DA 7E 00              1554 	mov	r6,#0x00
   06DC 1D                 1555 	dec	r5
   06DD BD FF 01           1556 	cjne	r5,#0xFF,00134$
   06E0 1E                 1557 	dec	r6
   06E1                    1558 00134$:
   06E1 8F 03              1559 	mov	ar3,r7
   06E3 7C 00              1560 	mov	r4,#0x00
   06E5 C3                 1561 	clr	c
   06E6 EB                 1562 	mov	a,r3
   06E7 9D                 1563 	subb	a,r5
   06E8 EC                 1564 	mov	a,r4
   06E9 64 80              1565 	xrl	a,#0x80
   06EB 8E F0              1566 	mov	b,r6
   06ED 63 F0 80           1567 	xrl	b,#0x80
   06F0 95 F0              1568 	subb	a,b
   06F2 50 11              1569 	jnc	00113$
   06F4 74 06              1570 	mov	a,#0x06
   06F6 2F                 1571 	add	a,r7
   06F7 24 24              1572 	add	a,#_rsin
   06F9 F9                 1573 	mov	r1,a
   06FA EF                 1574 	mov	a,r7
   06FB 24 4F              1575 	add	a,#_telegramm
   06FD F8                 1576 	mov	r0,a
   06FE 86 06              1577 	mov	ar6,@r0
   0700 A7 06              1578 	mov	@r1,ar6
   0702 0F                 1579 	inc	r7
   0703 80 D3              1580 	sjmp	00110$
   0705                    1581 00113$:
                           1582 ;	../fb_app_ft.c:313: ft_send_frame();
   0705 02 07 08           1583 	ljmp	_ft_send_frame
                           1584 ;------------------------------------------------------------
                           1585 ;Allocation info for local variables in function 'ft_send_frame'
                           1586 ;------------------------------------------------------------
                           1587 ;b                         Allocated to registers r4 
                           1588 ;n                         Allocated to stack - _bp +1
                           1589 ;repeat                    Allocated to registers r7 
                           1590 ;frame_length              Allocated to registers r6 
                           1591 ;send_char                 Allocated to registers r5 
                           1592 ;timeout                   Allocated to registers r5 r6 
                           1593 ;------------------------------------------------------------
                           1594 ;	../fb_app_ft.c:319: void ft_send_frame(void)	// send a frame with variable length that is stored in rsin
                           1595 ;	-----------------------------------------
                           1596 ;	 function ft_send_frame
                           1597 ;	-----------------------------------------
   0708                    1598 _ft_send_frame:
   0708 C0 08              1599 	push	_bp
   070A 85 81 08           1600 	mov	_bp,sp
   070D 05 81              1601 	inc	sp
                           1602 ;	../fb_app_ft.c:324: repeat=4;
   070F 7F 04              1603 	mov	r7,#0x04
                           1604 ;	../fb_app_ft.c:325: while (repeat--) {		// repeat sending frame up to 3 times if not achnowleged
   0711                    1605 00113$:
   0711 8F 06              1606 	mov	ar6,r7
   0713 1F                 1607 	dec	r7
   0714 EE                 1608 	mov	a,r6
   0715 70 03              1609 	jnz	00162$
   0717 02 07 D2           1610 	ljmp	00128$
   071A                    1611 00162$:
                           1612 ;	../fb_app_ft.c:326: rsin[rsin[1]+4]=0;
   071A AE 25              1613 	mov	r6,(_rsin + 0x0001)
   071C 74 04              1614 	mov	a,#0x04
   071E 2E                 1615 	add	a,r6
   071F 24 24              1616 	add	a,#_rsin
   0721 F8                 1617 	mov	r0,a
   0722 76 00              1618 	mov	@r0,#0x00
                           1619 ;	../fb_app_ft.c:327: for (n=4;n<(rsin[1]+4);n++) rsin[rsin[1]+4]+=rsin[n];	// checksum berechnen
   0724 74 04              1620 	mov	a,#0x04
   0726 2E                 1621 	add	a,r6
   0727 FD                 1622 	mov	r5,a
   0728 A8 08              1623 	mov	r0,_bp
   072A 08                 1624 	inc	r0
   072B 76 04              1625 	mov	@r0,#0x04
   072D                    1626 00116$:
   072D C0 07              1627 	push	ar7
   072F 8E 02              1628 	mov	ar2,r6
   0731 7B 00              1629 	mov	r3,#0x00
   0733 74 04              1630 	mov	a,#0x04
   0735 2A                 1631 	add	a,r2
   0736 FA                 1632 	mov	r2,a
   0737 E4                 1633 	clr	a
   0738 3B                 1634 	addc	a,r3
   0739 FB                 1635 	mov	r3,a
   073A A8 08              1636 	mov	r0,_bp
   073C 08                 1637 	inc	r0
   073D 86 04              1638 	mov	ar4,@r0
   073F 7F 00              1639 	mov	r7,#0x00
   0741 C3                 1640 	clr	c
   0742 EC                 1641 	mov	a,r4
   0743 9A                 1642 	subb	a,r2
   0744 EF                 1643 	mov	a,r7
   0745 64 80              1644 	xrl	a,#0x80
   0747 8B F0              1645 	mov	b,r3
   0749 63 F0 80           1646 	xrl	b,#0x80
   074C 95 F0              1647 	subb	a,b
   074E D0 07              1648 	pop	ar7
   0750 50 1B              1649 	jnc	00119$
   0752 ED                 1650 	mov	a,r5
   0753 24 24              1651 	add	a,#_rsin
   0755 F9                 1652 	mov	r1,a
   0756 87 04              1653 	mov	ar4,@r1
   0758 C0 01              1654 	push	ar1
   075A A9 08              1655 	mov	r1,_bp
   075C 09                 1656 	inc	r1
   075D E7                 1657 	mov	a,@r1
   075E 24 24              1658 	add	a,#_rsin
   0760 F8                 1659 	mov	r0,a
   0761 D0 01              1660 	pop	ar1
   0763 E6                 1661 	mov	a,@r0
   0764 FB                 1662 	mov	r3,a
   0765 2C                 1663 	add	a,r4
   0766 F7                 1664 	mov	@r1,a
   0767 A8 08              1665 	mov	r0,_bp
   0769 08                 1666 	inc	r0
   076A 06                 1667 	inc	@r0
   076B 80 C0              1668 	sjmp	00116$
   076D                    1669 00119$:
                           1670 ;	../fb_app_ft.c:328: rsin[rsin[1]+5]=0x16;
   076D 74 05              1671 	mov	a,#0x05
   076F 2E                 1672 	add	a,r6
   0770 24 24              1673 	add	a,#_rsin
   0772 F8                 1674 	mov	r0,a
   0773 76 16              1675 	mov	@r0,#0x16
                           1676 ;	../fb_app_ft.c:330: frame_length=rsin[1]+6;
   0775 74 06              1677 	mov	a,#0x06
   0777 2E                 1678 	add	a,r6
   0778 FE                 1679 	mov	r6,a
                           1680 ;	../fb_app_ft.c:331: send_char=rsin[0];
   0779 AD 24              1681 	mov	r5,_rsin
                           1682 ;	../fb_app_ft.c:332: for (b=0;b<frame_length;b++) {
   077B 7C 00              1683 	mov	r4,#0x00
   077D                    1684 00124$:
   077D C3                 1685 	clr	c
   077E EC                 1686 	mov	a,r4
   077F 9E                 1687 	subb	a,r6
   0780 50 32              1688 	jnc	00127$
                           1689 ;	../fb_app_ft.c:333: SBUF=send_char; \
   0782 8D 99              1690 	mov	_SBUF,r5
   0784 C2 9B              1691 	clr	_SCON_3
                           1692 ;	../fb_app_ft.c:335: for(n=1;n!=0;n=n<<1) {
   0786 7B 01              1693 	mov	r3,#0x01
   0788 EC                 1694 	mov	a,r4
   0789 24 24              1695 	add	a,#_rsin
   078B F9                 1696 	mov	r1,a
   078C                    1697 00120$:
   078C BB 00 02           1698 	cjne	r3,#0x00,00165$
   078F 80 0D              1699 	sjmp	00123$
   0791                    1700 00165$:
                           1701 ;	../fb_app_ft.c:336: if (rsin[b] & n) TB8=!TB8;
   0791 87 02              1702 	mov	ar2,@r1
   0793 EB                 1703 	mov	a,r3
   0794 5A                 1704 	anl	a,r2
   0795 60 02              1705 	jz	00122$
   0797 B2 9B              1706 	cpl	_SCON_3
   0799                    1707 00122$:
                           1708 ;	../fb_app_ft.c:335: for(n=1;n!=0;n=n<<1) {
   0799 EB                 1709 	mov	a,r3
   079A 2B                 1710 	add	a,r3
   079B FB                 1711 	mov	r3,a
   079C 80 EE              1712 	sjmp	00120$
   079E                    1713 00123$:
                           1714 ;	../fb_app_ft.c:338: if(ack) tel_was_acked=1;	// fals während dem seriellen Senden ein ACK am bus kam
   079E 30 06 02           1715 	jnb	_ack,00104$
   07A1 D2 01              1716 	setb	_tel_was_acked
   07A3                    1717 00104$:
                           1718 ;	../fb_app_ft.c:339: send_char=rsin[b+1];
   07A3 EC                 1719 	mov	a,r4
   07A4 04                 1720 	inc	a
   07A5 24 24              1721 	add	a,#_rsin
   07A7 F9                 1722 	mov	r1,a
   07A8 87 03              1723 	mov	ar3,@r1
   07AA 8B 05              1724 	mov	ar5,r3
                           1725 ;	../fb_app_ft.c:340: while(!TI);
   07AC                    1726 00105$:
                           1727 ;	../fb_app_ft.c:341: TI=0;
   07AC 10 99 02           1728 	jbc	_SCON_1,00168$
   07AF 80 FB              1729 	sjmp	00105$
   07B1                    1730 00168$:
                           1731 ;	../fb_app_ft.c:332: for (b=0;b<frame_length;b++) {
   07B1 0C                 1732 	inc	r4
   07B2 80 C9              1733 	sjmp	00124$
   07B4                    1734 00127$:
                           1735 ;	../fb_app_ft.c:346: while (timeout--) {		// give enough time to receive an ack
   07B4 7D 10              1736 	mov	r5,#0x10
   07B6 7E 27              1737 	mov	r6,#0x27
   07B8                    1738 00110$:
   07B8 8D 03              1739 	mov	ar3,r5
   07BA 8E 04              1740 	mov	ar4,r6
   07BC 1D                 1741 	dec	r5
   07BD BD FF 01           1742 	cjne	r5,#0xFF,00169$
   07C0 1E                 1743 	dec	r6
   07C1                    1744 00169$:
   07C1 EB                 1745 	mov	a,r3
   07C2 4C                 1746 	orl	a,r4
   07C3 70 03              1747 	jnz	00170$
   07C5 02 07 11           1748 	ljmp	00113$
   07C8                    1749 00170$:
                           1750 ;	../fb_app_ft.c:347: if (ft_ack) {			
   07C8 30 02 ED           1751 	jnb	_ft_ack,00110$
                           1752 ;	../fb_app_ft.c:348: repeat=0;
   07CB 7F 00              1753 	mov	r7,#0x00
                           1754 ;	../fb_app_ft.c:349: ft_ack=0;
   07CD C2 02              1755 	clr	_ft_ack
                           1756 ;	../fb_app_ft.c:350: break;
   07CF 02 07 11           1757 	ljmp	00113$
   07D2                    1758 00128$:
   07D2 15 81              1759 	dec	sp
   07D4 D0 08              1760 	pop	_bp
   07D6 22                 1761 	ret
                           1762 ;------------------------------------------------------------
                           1763 ;Allocation info for local variables in function 'ft_send_fixed_frame'
                           1764 ;------------------------------------------------------------
                           1765 ;controlfield              Allocated to registers r7 
                           1766 ;n                         Allocated to registers r5 
                           1767 ;r                         Allocated to registers r6 
                           1768 ;------------------------------------------------------------
                           1769 ;	../fb_app_ft.c:357: void ft_send_fixed_frame(unsigned char controlfield)	// send a frame with fixed length (single byte)
                           1770 ;	-----------------------------------------
                           1771 ;	 function ft_send_fixed_frame
                           1772 ;	-----------------------------------------
   07D7                    1773 _ft_send_fixed_frame:
   07D7 AF 82              1774 	mov	r7,dpl
                           1775 ;	../fb_app_ft.c:363: while (r<4) {
   07D9 7E 00              1776 	mov	r6,#0x00
   07DB                    1777 00106$:
   07DB BE 04 00           1778 	cjne	r6,#0x04,00138$
   07DE                    1779 00138$:
   07DE 50 3C              1780 	jnc	00117$
                           1781 ;	../fb_app_ft.c:364: rsin[0]=0x10;
   07E0 75 24 10           1782 	mov	_rsin,#0x10
                           1783 ;	../fb_app_ft.c:365: rsin[1]=controlfield;
   07E3 8F 25              1784 	mov	(_rsin + 0x0001),r7
                           1785 ;	../fb_app_ft.c:366: rsin[2]=controlfield;
   07E5 8F 26              1786 	mov	(_rsin + 0x0002),r7
                           1787 ;	../fb_app_ft.c:367: rsin[3]=0x16;
   07E7 75 27 16           1788 	mov	(_rsin + 0x0003),#0x16
                           1789 ;	../fb_app_ft.c:369: for (n=0;n<4;n++) {
   07EA 7D 00              1790 	mov	r5,#0x00
   07EC                    1791 00113$:
   07EC BD 04 00           1792 	cjne	r5,#0x04,00140$
   07EF                    1793 00140$:
   07EF 50 28              1794 	jnc	00116$
                           1795 ;	../fb_app_ft.c:370: FT_SEND_CHAR(rsin[n])
   07F1 ED                 1796 	mov	a,r5
   07F2 24 24              1797 	add	a,#_rsin
   07F4 F9                 1798 	mov	r1,a
   07F5 87 99              1799 	mov	_SBUF,@r1
   07F7 C2 9B              1800 	clr	_SCON_3
   07F9 7D 01              1801 	mov	r5,#0x01
   07FB                    1802 00109$:
   07FB BD 00 02           1803 	cjne	r5,#0x00,00142$
   07FE 80 11              1804 	sjmp	00103$
   0800                    1805 00142$:
   0800 ED                 1806 	mov	a,r5
   0801 24 24              1807 	add	a,#_rsin
   0803 F9                 1808 	mov	r1,a
   0804 87 04              1809 	mov	ar4,@r1
   0806 ED                 1810 	mov	a,r5
   0807 5C                 1811 	anl	a,r4
   0808 60 02              1812 	jz	00111$
   080A B2 9B              1813 	cpl	_SCON_3
   080C                    1814 00111$:
   080C ED                 1815 	mov	a,r5
   080D 2D                 1816 	add	a,r5
   080E FD                 1817 	mov	r5,a
   080F 80 EA              1818 	sjmp	00109$
   0811                    1819 00103$:
   0811 10 99 02           1820 	jbc	_SCON_1,00144$
   0814 80 FB              1821 	sjmp	00103$
   0816                    1822 00144$:
                           1823 ;	../fb_app_ft.c:369: for (n=0;n<4;n++) {
   0816 0D                 1824 	inc	r5
   0817 80 D3              1825 	sjmp	00113$
   0819                    1826 00116$:
                           1827 ;	../fb_app_ft.c:374: r++;
   0819 0E                 1828 	inc	r6
   081A 80 BF              1829 	sjmp	00106$
   081C                    1830 00117$:
   081C 22                 1831 	ret
                           1832 ;------------------------------------------------------------
                           1833 ;Allocation info for local variables in function 'PEI_identify_req'
                           1834 ;------------------------------------------------------------
                           1835 ;n                         Allocated to registers r7 
                           1836 ;------------------------------------------------------------
                           1837 ;	../fb_app_ft.c:380: void PEI_identify_req(void)
                           1838 ;	-----------------------------------------
                           1839 ;	 function PEI_identify_req
                           1840 ;	-----------------------------------------
   081D                    1841 _PEI_identify_req:
                           1842 ;	../fb_app_ft.c:384: FT_SEND_CHAR(0xE5)
   081D 75 99 E5           1843 	mov	_SBUF,#0xE5
   0820 C2 9B              1844 	clr	_SCON_3
   0822 7F 01              1845 	mov	r7,#0x01
   0824                    1846 00106$:
   0824 BF 00 02           1847 	cjne	r7,#0x00,00122$
   0827 80 0C              1848 	sjmp	00103$
   0829                    1849 00122$:
   0829 EF                 1850 	mov	a,r7
   082A 54 E5              1851 	anl	a,#0xE5
   082C 60 02              1852 	jz	00108$
   082E B2 9B              1853 	cpl	_SCON_3
   0830                    1854 00108$:
   0830 EF                 1855 	mov	a,r7
   0831 2F                 1856 	add	a,r7
   0832 FF                 1857 	mov	r7,a
   0833 80 EF              1858 	sjmp	00106$
   0835                    1859 00103$:
   0835 10 99 02           1860 	jbc	_SCON_1,00124$
   0838 80 FB              1861 	sjmp	00103$
   083A                    1862 00124$:
                           1863 ;	../fb_app_ft.c:386: FT_SET_HEADER(0x0A,0xA8)
   083A 75 24 68           1864 	mov	_rsin,#0x68
   083D 75 25 0A           1865 	mov	(_rsin + 0x0001),#0x0A
   0840 75 26 0A           1866 	mov	(_rsin + 0x0002),#0x0A
   0843 75 27 68           1867 	mov	(_rsin + 0x0003),#0x68
   0846 B2 00              1868 	cpl	_fcb
   0848 A2 00              1869 	mov	c,_fcb
   084A E4                 1870 	clr	a
   084B 33                 1871 	rlc	a
   084C C4                 1872 	swap	a
   084D 23                 1873 	rl	a
   084E 54 E0              1874 	anl	a,#0xE0
   0850 24 D3              1875 	add	a,#0xD3
   0852 F5 28              1876 	mov	(_rsin + 0x0004),a
   0854 75 29 A8           1877 	mov	(_rsin + 0x0005),#0xA8
                           1878 ;	../fb_app_ft.c:388: rsin[6]=eeprom[ADDRTAB+1];
   0857 90 1D 17           1879 	mov	dptr,#(_eeprom + 0x0017)
   085A E4                 1880 	clr	a
   085B 93                 1881 	movc	a,@a+dptr
   085C FF                 1882 	mov	r7,a
   085D 8F 2A              1883 	mov	(_rsin + 0x0006),r7
                           1884 ;	../fb_app_ft.c:389: rsin[7]=eeprom[ADDRTAB+2];
   085F 90 1D 18           1885 	mov	dptr,#(_eeprom + 0x0018)
   0862 E4                 1886 	clr	a
   0863 93                 1887 	movc	a,@a+dptr
   0864 FF                 1888 	mov	r7,a
   0865 8F 2B              1889 	mov	(_rsin + 0x0007),r7
                           1890 ;	../fb_app_ft.c:390: rsin[8]=0x00;
   0867 75 2C 00           1891 	mov	(_rsin + 0x0008),#0x00
                           1892 ;	../fb_app_ft.c:391: rsin[9]=0x01;	
   086A 75 2D 01           1893 	mov	(_rsin + 0x0009),#0x01
                           1894 ;	../fb_app_ft.c:392: rsin[10]=0x00;	
   086D 75 2E 00           1895 	mov	(_rsin + 0x000a),#0x00
                           1896 ;	../fb_app_ft.c:393: rsin[11]=0x00;	
   0870 75 2F 00           1897 	mov	(_rsin + 0x000b),#0x00
                           1898 ;	../fb_app_ft.c:394: rsin[12]=0xE4;
   0873 75 30 E4           1899 	mov	(_rsin + 0x000c),#0xE4
                           1900 ;	../fb_app_ft.c:395: rsin[13]=0x5A;
   0876 75 31 5A           1901 	mov	(_rsin + 0x000d),#0x5A
                           1902 ;	../fb_app_ft.c:396: rsin[14]=0;
   0879 75 32 00           1903 	mov	(_rsin + 0x000e),#0x00
                           1904 ;	../fb_app_ft.c:397: ft_send_frame();
   087C 02 07 08           1905 	ljmp	_ft_send_frame
                           1906 ;------------------------------------------------------------
                           1907 ;Allocation info for local variables in function 'ft_rs_init'
                           1908 ;------------------------------------------------------------
                           1909 ;	../fb_app_ft.c:403: void ft_rs_init(void)
                           1910 ;	-----------------------------------------
                           1911 ;	 function ft_rs_init
                           1912 ;	-----------------------------------------
   087F                    1913 _ft_rs_init:
                           1914 ;	../fb_app_ft.c:405: SSTAT|=0x40;	// TI wird am Ende des Stopbits gesetzt
   087F 43 BA 40           1915 	orl	_SSTAT,#0x40
                           1916 ;	../fb_app_ft.c:406: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   0882 43 BD 02           1917 	orl	_BRGCON,#0x02
                           1918 ;	../fb_app_ft.c:412: SCON=0xD0;	// Mode 3, receive enable für even parity
   0885 75 98 D0           1919 	mov	_SCON,#0xD0
                           1920 ;	../fb_app_ft.c:413: BRGR1=0x01;	// Baudrate = cclk/((BRGR1,BRGR0)+16) = 19200 = 01 70
   0888 75 BF 01           1921 	mov	_BRGR1,#0x01
                           1922 ;	../fb_app_ft.c:414: BRGR0=0x70;	// 115200 =  00 30
   088B 75 BE 70           1923 	mov	_BRGR0,#0x70
                           1924 ;	../fb_app_ft.c:421: BRGCON|=0x01;	// Baudrate Generator starten
   088E 43 BD 01           1925 	orl	_BRGCON,#0x01
   0891 22                 1926 	ret
                           1927 ;------------------------------------------------------------
                           1928 ;Allocation info for local variables in function 'serial_int'
                           1929 ;------------------------------------------------------------
                           1930 ;rxc                       Allocated to registers r7 
                           1931 ;------------------------------------------------------------
                           1932 ;	../fb_app_ft.c:425: void serial_int(void) __interrupt (4) __using (2)   // Interrupt on received char from serial port
                           1933 ;	-----------------------------------------
                           1934 ;	 function serial_int
                           1935 ;	-----------------------------------------
   0892                    1936 _serial_int:
                    0017   1937 	ar7 = 0x17
                    0016   1938 	ar6 = 0x16
                    0015   1939 	ar5 = 0x15
                    0014   1940 	ar4 = 0x14
                    0013   1941 	ar3 = 0x13
                    0012   1942 	ar2 = 0x12
                    0011   1943 	ar1 = 0x11
                    0010   1944 	ar0 = 0x10
   0892 C0 E0              1945 	push	acc
   0894 C0 D0              1946 	push	psw
   0896 75 D0 10           1947 	mov	psw,#0x10
                           1948 ;	../fb_app_ft.c:428: ES=0; /*????*/
   0899 C2 AC              1949 	clr	_IEN0_4
                           1950 ;	../fb_app_ft.c:429: if (RI) {
                           1951 ;	../fb_app_ft.c:430: RI=0;
   089B 10 98 03           1952 	jbc	_SCON_0,00142$
   089E 02 09 02           1953 	ljmp	00119$
   08A1                    1954 00142$:
                           1955 ;	../fb_app_ft.c:431: if (TF0) {      // time between 2 bytes was too long, discard previous frame.
   08A1 30 8D 03           1956 	jnb	_TCON_5,00102$
                           1957 ;	../fb_app_ft.c:432: rsinpos=0;
   08A4 75 44 00           1958 	mov	_rsinpos,#0x00
   08A7                    1959 00102$:
                           1960 ;	../fb_app_ft.c:434: rxc=SBUF;     // store byte in rsbuf
   08A7 AF 99              1961 	mov	r7,_SBUF
                           1962 ;	../fb_app_ft.c:436: if (rsinpos==0 && rxc==0xE5) {  // in case of ack, set the ft_ack bit
   08A9 E5 44              1963 	mov	a,_rsinpos
   08AB 70 07              1964 	jnz	00115$
   08AD BF E5 04           1965 	cjne	r7,#0xE5,00115$
                           1966 ;	../fb_app_ft.c:437: ft_ack=1;
   08B0 D2 02              1967 	setb	_ft_ack
   08B2 80 42              1968 	sjmp	00116$
   08B4                    1969 00115$:
                           1970 ;	../fb_app_ft.c:440: rsin[rsinpos]=rxc;
   08B4 E5 44              1971 	mov	a,_rsinpos
   08B6 24 24              1972 	add	a,#_rsin
   08B8 F8                 1973 	mov	r0,a
   08B9 A6 17              1974 	mov	@r0,ar7
                           1975 ;	../fb_app_ft.c:442: if (rxc==0x16 && rsinpos==(rsin[1]+5)) rsin_stat = RSIN_VARFRAME;
   08BB BF 16 1A           1976 	cjne	r7,#0x16,00104$
   08BE AE 25              1977 	mov	r6,(_rsin + 0x0001)
   08C0 7F 00              1978 	mov	r7,#0x00
   08C2 74 05              1979 	mov	a,#0x05
   08C4 2E                 1980 	add	a,r6
   08C5 FE                 1981 	mov	r6,a
   08C6 E4                 1982 	clr	a
   08C7 3F                 1983 	addc	a,r7
   08C8 FF                 1984 	mov	r7,a
   08C9 AC 44              1985 	mov	r4,_rsinpos
   08CB 7D 00              1986 	mov	r5,#0x00
   08CD EC                 1987 	mov	a,r4
   08CE B5 16 07           1988 	cjne	a,ar6,00104$
   08D1 ED                 1989 	mov	a,r5
   08D2 B5 17 03           1990 	cjne	a,ar7,00104$
   08D5 75 46 01           1991 	mov	_rsin_stat,#0x01
   08D8                    1992 00104$:
                           1993 ;	../fb_app_ft.c:443: if (rsin[0]      ==0x10 && rsinpos==3) rsin_stat = RSIN_FIXFRAME;
   08D8 74 10              1994 	mov	a,#0x10
   08DA B5 24 08           1995 	cjne	a,_rsin,00107$
   08DD 74 03              1996 	mov	a,#0x03
   08DF B5 44 03           1997 	cjne	a,_rsinpos,00107$
   08E2 75 46 02           1998 	mov	_rsin_stat,#0x02
   08E5                    1999 00107$:
                           2000 ;	../fb_app_ft.c:444: if (rsin_stat    != RSIN_NONE) {
   08E5 E5 46              2001 	mov	a,_rsin_stat
   08E7 60 05              2002 	jz	00112$
                           2003 ;	../fb_app_ft.c:446: rsinpos = 0;   // ready to receive next frame.
   08E9 75 44 00           2004 	mov	_rsinpos,#0x00
   08EC 80 08              2005 	sjmp	00116$
   08EE                    2006 00112$:
                           2007 ;	../fb_app_ft.c:449: if (rsinpos < sizeof(rsin)-1){
   08EE 74 E1              2008 	mov	a,#0x100 - 0x1F
   08F0 25 44              2009 	add	a,_rsinpos
   08F2 40 02              2010 	jc	00116$
                           2011 ;	../fb_app_ft.c:450: rsinpos++;
   08F4 05 44              2012 	inc	_rsinpos
   08F6                    2013 00116$:
                           2014 ;	../fb_app_ft.c:454: TR0=0;
   08F6 C2 8C              2015 	clr	_TCON_4
                           2016 ;	../fb_app_ft.c:461: TH0=0x39;
   08F8 75 8C 39           2017 	mov	_TH0,#0x39
                           2018 ;	../fb_app_ft.c:463: TL0=0xFF;
   08FB 75 8A FF           2019 	mov	_TL0,#0xFF
                           2020 ;	../fb_app_ft.c:464: TF0=0;
   08FE C2 8D              2021 	clr	_TCON_5
                           2022 ;	../fb_app_ft.c:465: TR0=1;
   0900 D2 8C              2023 	setb	_TCON_4
   0902                    2024 00119$:
                           2025 ;	../fb_app_ft.c:467: ES=1;  /*????*/
   0902 D2 AC              2026 	setb	_IEN0_4
   0904 D0 D0              2027 	pop	psw
   0906 D0 E0              2028 	pop	acc
   0908 32                 2029 	reti
                           2030 ;	eliminated unneeded push/pop dpl
                           2031 ;	eliminated unneeded push/pop dph
                           2032 ;	eliminated unneeded push/pop b
                           2033 ;------------------------------------------------------------
                           2034 ;Allocation info for local variables in function 'build_tel'
                           2035 ;------------------------------------------------------------
                           2036 ;objno                     Allocated to registers r7 
                           2037 ;build_ok                  Allocated to registers b0 
                           2038 ;n                         Allocated to registers r7 
                           2039 ;repeatflag                Allocated to registers b0 
                           2040 ;------------------------------------------------------------
                           2041 ;	../fb_app_ft.c:469: __bit build_tel(unsigned char objno)
                           2042 ;	-----------------------------------------
                           2043 ;	 function build_tel
                           2044 ;	-----------------------------------------
   0909                    2045 _build_tel:
                    0007   2046 	ar7 = 0x07
                    0006   2047 	ar6 = 0x06
                    0005   2048 	ar5 = 0x05
                    0004   2049 	ar4 = 0x04
                    0003   2050 	ar3 = 0x03
                    0002   2051 	ar2 = 0x02
                    0001   2052 	ar1 = 0x01
                    0000   2053 	ar0 = 0x00
                           2054 ;	../fb_app_ft.c:479: repeatflag=objno&0x20;
   0909 E5 82              2055 	mov	a,dpl
   090B A2 E5              2056 	mov	c,acc[5]
   090D E4                 2057 	clr	a
   090E 33                 2058 	rlc	a
   090F 24 FF              2059 	add	a,#0xff
                           2060 ;	../fb_app_ft.c:480: build_ok = !repeatflag;
   0911 B3                 2061 	cpl	c
   0912 92 18              2062 	mov	b0,c
                           2063 ;	../fb_app_ft.c:481: for (n=3;n<(rsin[1]-2);n++) telegramm[n]=rsin[n+6];
   0914 7F 03              2064 	mov	r7,#0x03
   0916                    2065 00101$:
   0916 AD 25              2066 	mov	r5,(_rsin + 0x0001)
   0918 7E 00              2067 	mov	r6,#0x00
   091A ED                 2068 	mov	a,r5
   091B 24 FE              2069 	add	a,#0xFE
   091D FD                 2070 	mov	r5,a
   091E EE                 2071 	mov	a,r6
   091F 34 FF              2072 	addc	a,#0xFF
   0921 FE                 2073 	mov	r6,a
   0922 8F 03              2074 	mov	ar3,r7
   0924 7C 00              2075 	mov	r4,#0x00
   0926 C3                 2076 	clr	c
   0927 EB                 2077 	mov	a,r3
   0928 9D                 2078 	subb	a,r5
   0929 EC                 2079 	mov	a,r4
   092A 64 80              2080 	xrl	a,#0x80
   092C 8E F0              2081 	mov	b,r6
   092E 63 F0 80           2082 	xrl	b,#0x80
   0931 95 F0              2083 	subb	a,b
   0933 50 11              2084 	jnc	00104$
   0935 EF                 2085 	mov	a,r7
   0936 24 4F              2086 	add	a,#_telegramm
   0938 F9                 2087 	mov	r1,a
   0939 74 06              2088 	mov	a,#0x06
   093B 2F                 2089 	add	a,r7
   093C 24 24              2090 	add	a,#_rsin
   093E F8                 2091 	mov	r0,a
   093F 86 06              2092 	mov	ar6,@r0
   0941 A7 06              2093 	mov	@r1,ar6
   0943 0F                 2094 	inc	r7
   0944 80 D0              2095 	sjmp	00101$
   0946                    2096 00104$:
                           2097 ;	../fb_app_ft.c:482: telegramm[0]=0xB0 + (rsin[6] & 0x0F);
   0946 74 0F              2098 	mov	a,#0x0F
   0948 55 2A              2099 	anl	a,(_rsin + 0x0006)
   094A 24 B0              2100 	add	a,#0xB0
   094C F5 4F              2101 	mov	_telegramm,a
                           2102 ;	../fb_app_ft.c:483: telegramm[1]=eeprom[ADDRTAB+1];	// PA high
   094E 90 1D 17           2103 	mov	dptr,#(_eeprom + 0x0017)
   0951 E4                 2104 	clr	a
   0952 93                 2105 	movc	a,@a+dptr
   0953 FF                 2106 	mov	r7,a
   0954 8F 50              2107 	mov	(_telegramm + 0x0001),r7
                           2108 ;	../fb_app_ft.c:484: telegramm[2]=eeprom[ADDRTAB+2];	// PA low	
   0956 90 1D 18           2109 	mov	dptr,#(_eeprom + 0x0018)
   0959 E4                 2110 	clr	a
   095A 93                 2111 	movc	a,@a+dptr
   095B FF                 2112 	mov	r7,a
   095C 8F 51              2113 	mov	(_telegramm + 0x0002),r7
                           2114 ;	../fb_app_ft.c:570: */	return(build_ok);
   095E A2 18              2115 	mov	c,b0
   0960 22                 2116 	ret
                           2117 ;------------------------------------------------------------
                           2118 ;Allocation info for local variables in function 'gapos_in_gat'
                           2119 ;------------------------------------------------------------
                           2120 ;gal                       Allocated to stack - _bp -3
                           2121 ;gah                       Allocated to registers 
                           2122 ;------------------------------------------------------------
                           2123 ;	../fb_app_ft.c:575: unsigned char gapos_in_gat(unsigned char gah, unsigned char gal)
                           2124 ;	-----------------------------------------
                           2125 ;	 function gapos_in_gat
                           2126 ;	-----------------------------------------
   0961                    2127 _gapos_in_gat:
   0961 C0 08              2128 	push	_bp
   0963 85 81 08           2129 	mov	_bp,sp
                           2130 ;	../fb_app_ft.c:578: return (1);						//GA wird immer wird geackt
   0966 75 82 01           2131 	mov	dpl,#0x01
   0969 D0 08              2132 	pop	_bp
   096B 22                 2133 	ret
                           2134 ;------------------------------------------------------------
                           2135 ;Allocation info for local variables in function 'set_pa'
                           2136 ;------------------------------------------------------------
                           2137 ;	../fb_app_ft.c:582: void set_pa(void)
                           2138 ;	-----------------------------------------
                           2139 ;	 function set_pa
                           2140 ;	-----------------------------------------
   096C                    2141 _set_pa:
                           2142 ;	../fb_app_ft.c:584: while(fb_state!=0);		// warten falls noch gesendet wird
   096C                    2143 00101$:
   096C E5 72              2144 	mov	a,_fb_state
   096E 70 FC              2145 	jnz	00101$
                           2146 ;	../fb_app_ft.c:585: EA=0;
   0970 C2 AF              2147 	clr	_IEN0_7
                           2148 ;	../fb_app_ft.c:586: FMCON=0x00;				// load command, leert das pageregister
   0972 75 E4 00           2149 	mov	_FMCON,#0x00
                           2150 ;	../fb_app_ft.c:587: FMADRH=0x1D;
   0975 75 E7 1D           2151 	mov	_FMADRH,#0x1D
                           2152 ;	../fb_app_ft.c:588: FMADRL=ADDRTAB+1;
   0978 75 E6 17           2153 	mov	_FMADRL,#0x17
                           2154 ;	../fb_app_ft.c:589: FMDATA=telegramm[8];
   097B 85 57 E5           2155 	mov	_FMDATA,(_telegramm + 0x0008)
                           2156 ;	../fb_app_ft.c:590: FMDATA=telegramm[9];	// nächstes Byte, da autoinkrement
   097E 85 58 E5           2157 	mov	_FMDATA,(_telegramm + 0x0009)
                           2158 ;	../fb_app_ft.c:591: FMCON=0x68;				// write command, schreibt pageregister ins flash und versetzt CPU in idle fuer 4ms
   0981 75 E4 68           2159 	mov	_FMCON,#0x68
                           2160 ;	../fb_app_ft.c:592: EA=1;
   0984 D2 AF              2161 	setb	_IEN0_7
   0986 22                 2162 	ret
                           2163 ;------------------------------------------------------------
                           2164 ;Allocation info for local variables in function 'write_value_req'
                           2165 ;------------------------------------------------------------
                           2166 ;	../fb_app_ft.c:595: void write_value_req(void)
                           2167 ;	-----------------------------------------
                           2168 ;	 function write_value_req
                           2169 ;	-----------------------------------------
   0987                    2170 _write_value_req:
                           2171 ;	../fb_app_ft.c:598: }
   0987 22                 2172 	ret
                           2173 ;------------------------------------------------------------
                           2174 ;Allocation info for local variables in function 'read_value_req'
                           2175 ;------------------------------------------------------------
                           2176 ;	../fb_app_ft.c:602: void read_value_req(void)
                           2177 ;	-----------------------------------------
                           2178 ;	 function read_value_req
                           2179 ;	-----------------------------------------
   0988                    2180 _read_value_req:
                           2181 ;	../fb_app_ft.c:605: }
   0988 22                 2182 	ret
                           2183 ;------------------------------------------------------------
                           2184 ;Allocation info for local variables in function 'read_obj_value'
                           2185 ;------------------------------------------------------------
                           2186 ;objno                     Allocated to registers 
                           2187 ;------------------------------------------------------------
                           2188 ;	../fb_app_ft.c:608: unsigned long read_obj_value(unsigned char objno)
                           2189 ;	-----------------------------------------
                           2190 ;	 function read_obj_value
                           2191 ;	-----------------------------------------
   0989                    2192 _read_obj_value:
                           2193 ;	../fb_app_ft.c:611: return(0);
   0989 90 00 00           2194 	mov	dptr,#(0x00&0x00ff)
   098C E4                 2195 	clr	a
   098D F5 F0              2196 	mov	b,a
   098F 22                 2197 	ret
                           2198 ;------------------------------------------------------------
                           2199 ;Allocation info for local variables in function 'restart_app'
                           2200 ;------------------------------------------------------------
                           2201 ;	../fb_app_ft.c:615: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
                           2202 ;	-----------------------------------------
                           2203 ;	 function restart_app
                           2204 ;	-----------------------------------------
   0990                    2205 _restart_app:
                           2206 ;	../fb_app_ft.c:617: P0M1=0;
   0990 75 84 00           2207 	mov	_P0M1,#0x00
                           2208 ;	../fb_app_ft.c:618: P0M2=0;
   0993 75 85 00           2209 	mov	_P0M2,#0x00
                           2210 ;	../fb_app_ft.c:620: if(eeprom[ADDRTAB+1]==0 && eeprom[ADDRTAB+2]==0) {
   0996 90 1D 17           2211 	mov	dptr,#(_eeprom + 0x0017)
   0999 E4                 2212 	clr	a
   099A 93                 2213 	movc	a,@a+dptr
   099B 70 10              2214 	jnz	00102$
   099D 90 1D 18           2215 	mov	dptr,#(_eeprom + 0x0018)
   09A0 E4                 2216 	clr	a
   09A1 93                 2217 	movc	a,@a+dptr
   09A2 70 09              2218 	jnz	00102$
                           2219 ;	../fb_app_ft.c:621: telegramm[8]=0x11;
   09A4 75 57 11           2220 	mov	(_telegramm + 0x0008),#0x11
                           2221 ;	../fb_app_ft.c:622: telegramm[9]=0xFF;
   09A7 75 58 FF           2222 	mov	(_telegramm + 0x0009),#0xFF
                           2223 ;	../fb_app_ft.c:623: set_pa();
   09AA 12 09 6C           2224 	lcall	_set_pa
   09AD                    2225 00102$:
                           2226 ;	../fb_app_ft.c:627: ft_rs_init();			// serielle Schnittstelle initialisieren für FT1.2
   09AD 12 08 7F           2227 	lcall	_ft_rs_init
                           2228 ;	../fb_app_ft.c:628: rsinpos=0;
   09B0 75 44 00           2229 	mov	_rsinpos,#0x00
                           2230 ;	../fb_app_ft.c:629: ES=1;					// enable serial interrupt
   09B3 D2 AC              2231 	setb	_IEN0_4
                           2232 ;	../fb_app_ft.c:632: switch_mode=0x00;		// normal mode
   09B5 75 45 00           2233 	mov	_switch_mode,#0x00
                           2234 ;	../fb_app_ft.c:633: fcb=0;
   09B8 C2 00              2235 	clr	_fcb
                           2236 ;	../fb_app_ft.c:634: property_5=0x01;
   09BA 75 47 01           2237 	mov	_property_5,#0x01
                           2238 ;	../fb_app_ft.c:635: transparency=1;	// auch fremde Gruppentelegramme werden verarbeitet
   09BD D2 10              2239 	setb	_transparency
   09BF 22                 2240 	ret
                           2241 	.area CSEG    (CODE)
                           2242 	.area CONST   (CODE)
                           2243 	.area XINIT   (CODE)
                           2244 	.area CABS    (ABS,CODE)
