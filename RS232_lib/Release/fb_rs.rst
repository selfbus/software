                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
                              4 ; This file was generated Tue Aug  5 21:15:16 2014
                              5 ;--------------------------------------------------------
                              6 	.module fb_rs
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _hex
                             13 	.globl _main
                             14 	.globl _convert_adr
                             15 	.globl _save_ga
                             16 	.globl _restart_app
                             17 	.globl _set_filtermode
                             18 	.globl _send_ok
                             19 	.globl _process_tel
                             20 	.globl _restart_hw
                             21 	.globl _send_obj_value
                             22 	.globl _P3_1
                             23 	.globl _P3_0
                             24 	.globl _P1_7
                             25 	.globl _P1_6
                             26 	.globl _P1_5
                             27 	.globl _P1_4
                             28 	.globl _P1_3
                             29 	.globl _P1_2
                             30 	.globl _P1_1
                             31 	.globl _P1_0
                             32 	.globl _P0_7
                             33 	.globl _P0_6
                             34 	.globl _P0_5
                             35 	.globl _P0_4
                             36 	.globl _P0_3
                             37 	.globl _P0_2
                             38 	.globl _P0_1
                             39 	.globl _P0_0
                             40 	.globl _I2CON_0
                             41 	.globl _I2CON_2
                             42 	.globl _I2CON_3
                             43 	.globl _I2CON_4
                             44 	.globl _I2CON_5
                             45 	.globl _I2CON_6
                             46 	.globl _SCON_7
                             47 	.globl _SCON_6
                             48 	.globl _SCON_5
                             49 	.globl _SCON_4
                             50 	.globl _SCON_3
                             51 	.globl _SCON_2
                             52 	.globl _SCON_1
                             53 	.globl _SCON_0
                             54 	.globl _IP0_0
                             55 	.globl _IP0_1
                             56 	.globl _IP0_2
                             57 	.globl _IP0_3
                             58 	.globl _IP0_4
                             59 	.globl _IP0_5
                             60 	.globl _IP0_6
                             61 	.globl _IP1_0
                             62 	.globl _IP1_1
                             63 	.globl _IP1_2
                             64 	.globl _IP1_6
                             65 	.globl _IEN1_0
                             66 	.globl _IEN1_1
                             67 	.globl _IEN1_2
                             68 	.globl _IEN0_0
                             69 	.globl _IEN0_1
                             70 	.globl _IEN0_2
                             71 	.globl _IEN0_3
                             72 	.globl _IEN0_4
                             73 	.globl _IEN0_5
                             74 	.globl _IEN0_6
                             75 	.globl _IEN0_7
                             76 	.globl _TCON_0
                             77 	.globl _TCON_1
                             78 	.globl _TCON_2
                             79 	.globl _TCON_3
                             80 	.globl _TCON_4
                             81 	.globl _TCON_5
                             82 	.globl _TCON_6
                             83 	.globl _TCON_7
                             84 	.globl _PSW_7
                             85 	.globl _PSW_6
                             86 	.globl _PSW_5
                             87 	.globl _PSW_4
                             88 	.globl _PSW_3
                             89 	.globl _PSW_2
                             90 	.globl _PSW_1
                             91 	.globl _PSW_0
                             92 	.globl _IEN1
                             93 	.globl _IP0H
                             94 	.globl _WFEED2
                             95 	.globl _WFEED1
                             96 	.globl _WDL
                             97 	.globl _WDCON
                             98 	.globl _TRIM
                             99 	.globl _TAMOD
                            100 	.globl _SSTAT
                            101 	.globl _RTCL
                            102 	.globl _RTCH
                            103 	.globl _RTCCON
                            104 	.globl _RSTSRC
                            105 	.globl _PT0AD
                            106 	.globl _PCONA
                            107 	.globl _P3M2
                            108 	.globl _P3M1
                            109 	.globl _P1M2
                            110 	.globl _P1M1
                            111 	.globl _P0M2
                            112 	.globl _P0M1
                            113 	.globl _KBPATN
                            114 	.globl _KBMASK
                            115 	.globl _KBCON
                            116 	.globl _IP1H
                            117 	.globl _IP1
                            118 	.globl _I2STAT
                            119 	.globl _I2SCLL
                            120 	.globl _I2SCLH
                            121 	.globl _I2DAT
                            122 	.globl _I2CON
                            123 	.globl _I2ADR
                            124 	.globl _FMDATA
                            125 	.globl _FMCON
                            126 	.globl _FMADRL
                            127 	.globl _FMADRH
                            128 	.globl _DIVM
                            129 	.globl _CMP2
                            130 	.globl _CMP1
                            131 	.globl _BRGCON
                            132 	.globl _BRGR1
                            133 	.globl _BRGR0
                            134 	.globl _SADEN
                            135 	.globl _SADDR
                            136 	.globl _AUXR1
                            137 	.globl _SBUF
                            138 	.globl _SCON
                            139 	.globl _IP0
                            140 	.globl _IEN0
                            141 	.globl _TH1
                            142 	.globl _TH0
                            143 	.globl _TL1
                            144 	.globl _TL0
                            145 	.globl _TMOD
                            146 	.globl _TCON
                            147 	.globl _PCON
                            148 	.globl _DPH
                            149 	.globl _DPL
                            150 	.globl _SP
                            151 	.globl _B
                            152 	.globl _ACC
                            153 	.globl _PSW
                            154 	.globl _P3
                            155 	.globl _P1
                            156 	.globl _P0
                            157 	.globl _rsin_busy
                            158 	.globl _write_ok
                            159 	.globl _filtermode
                            160 	.globl _rs_init
                            161 	.globl _rs_send_dec
                            162 	.globl _rs_send_s
                            163 	.globl _rs_send_hex_l
                            164 	.globl _rs_send_hex_i
                            165 	.globl _rs_send_hex
                            166 	.globl _rs_send
                            167 ;--------------------------------------------------------
                            168 ; special function registers
                            169 ;--------------------------------------------------------
                            170 	.area RSEG    (ABS,DATA)
   0000                     171 	.org 0x0000
                    0080    172 _P0	=	0x0080
                    0090    173 _P1	=	0x0090
                    00B0    174 _P3	=	0x00b0
                    00D0    175 _PSW	=	0x00d0
                    00E0    176 _ACC	=	0x00e0
                    00F0    177 _B	=	0x00f0
                    0081    178 _SP	=	0x0081
                    0082    179 _DPL	=	0x0082
                    0083    180 _DPH	=	0x0083
                    0087    181 _PCON	=	0x0087
                    0088    182 _TCON	=	0x0088
                    0089    183 _TMOD	=	0x0089
                    008A    184 _TL0	=	0x008a
                    008B    185 _TL1	=	0x008b
                    008C    186 _TH0	=	0x008c
                    008D    187 _TH1	=	0x008d
                    00A8    188 _IEN0	=	0x00a8
                    00B8    189 _IP0	=	0x00b8
                    0098    190 _SCON	=	0x0098
                    0099    191 _SBUF	=	0x0099
                    00A2    192 _AUXR1	=	0x00a2
                    00A9    193 _SADDR	=	0x00a9
                    00B9    194 _SADEN	=	0x00b9
                    00BE    195 _BRGR0	=	0x00be
                    00BF    196 _BRGR1	=	0x00bf
                    00BD    197 _BRGCON	=	0x00bd
                    00AC    198 _CMP1	=	0x00ac
                    00AD    199 _CMP2	=	0x00ad
                    0095    200 _DIVM	=	0x0095
                    00E7    201 _FMADRH	=	0x00e7
                    00E6    202 _FMADRL	=	0x00e6
                    00E4    203 _FMCON	=	0x00e4
                    00E5    204 _FMDATA	=	0x00e5
                    00DB    205 _I2ADR	=	0x00db
                    00D8    206 _I2CON	=	0x00d8
                    00DA    207 _I2DAT	=	0x00da
                    00DD    208 _I2SCLH	=	0x00dd
                    00DC    209 _I2SCLL	=	0x00dc
                    00D9    210 _I2STAT	=	0x00d9
                    00F8    211 _IP1	=	0x00f8
                    00F7    212 _IP1H	=	0x00f7
                    0094    213 _KBCON	=	0x0094
                    0086    214 _KBMASK	=	0x0086
                    0093    215 _KBPATN	=	0x0093
                    0084    216 _P0M1	=	0x0084
                    0085    217 _P0M2	=	0x0085
                    0091    218 _P1M1	=	0x0091
                    0092    219 _P1M2	=	0x0092
                    00B1    220 _P3M1	=	0x00b1
                    00B2    221 _P3M2	=	0x00b2
                    00B5    222 _PCONA	=	0x00b5
                    00F6    223 _PT0AD	=	0x00f6
                    00DF    224 _RSTSRC	=	0x00df
                    00D1    225 _RTCCON	=	0x00d1
                    00D2    226 _RTCH	=	0x00d2
                    00D3    227 _RTCL	=	0x00d3
                    00BA    228 _SSTAT	=	0x00ba
                    008F    229 _TAMOD	=	0x008f
                    0096    230 _TRIM	=	0x0096
                    00A7    231 _WDCON	=	0x00a7
                    00C1    232 _WDL	=	0x00c1
                    00C2    233 _WFEED1	=	0x00c2
                    00C3    234 _WFEED2	=	0x00c3
                    00B7    235 _IP0H	=	0x00b7
                    00E8    236 _IEN1	=	0x00e8
                            237 ;--------------------------------------------------------
                            238 ; special function bits
                            239 ;--------------------------------------------------------
                            240 	.area RSEG    (ABS,DATA)
   0000                     241 	.org 0x0000
                    00D0    242 _PSW_0	=	0x00d0
                    00D1    243 _PSW_1	=	0x00d1
                    00D2    244 _PSW_2	=	0x00d2
                    00D3    245 _PSW_3	=	0x00d3
                    00D4    246 _PSW_4	=	0x00d4
                    00D5    247 _PSW_5	=	0x00d5
                    00D6    248 _PSW_6	=	0x00d6
                    00D7    249 _PSW_7	=	0x00d7
                    008F    250 _TCON_7	=	0x008f
                    008E    251 _TCON_6	=	0x008e
                    008D    252 _TCON_5	=	0x008d
                    008C    253 _TCON_4	=	0x008c
                    008B    254 _TCON_3	=	0x008b
                    008A    255 _TCON_2	=	0x008a
                    0089    256 _TCON_1	=	0x0089
                    0088    257 _TCON_0	=	0x0088
                    00AF    258 _IEN0_7	=	0x00af
                    00AE    259 _IEN0_6	=	0x00ae
                    00AD    260 _IEN0_5	=	0x00ad
                    00AC    261 _IEN0_4	=	0x00ac
                    00AB    262 _IEN0_3	=	0x00ab
                    00AA    263 _IEN0_2	=	0x00aa
                    00A9    264 _IEN0_1	=	0x00a9
                    00A8    265 _IEN0_0	=	0x00a8
                    00EA    266 _IEN1_2	=	0x00ea
                    00E9    267 _IEN1_1	=	0x00e9
                    00E8    268 _IEN1_0	=	0x00e8
                    00FE    269 _IP1_6	=	0x00fe
                    00FA    270 _IP1_2	=	0x00fa
                    00F9    271 _IP1_1	=	0x00f9
                    00F8    272 _IP1_0	=	0x00f8
                    00BE    273 _IP0_6	=	0x00be
                    00BD    274 _IP0_5	=	0x00bd
                    00BC    275 _IP0_4	=	0x00bc
                    00BB    276 _IP0_3	=	0x00bb
                    00BA    277 _IP0_2	=	0x00ba
                    00B9    278 _IP0_1	=	0x00b9
                    00B8    279 _IP0_0	=	0x00b8
                    0098    280 _SCON_0	=	0x0098
                    0099    281 _SCON_1	=	0x0099
                    009A    282 _SCON_2	=	0x009a
                    009B    283 _SCON_3	=	0x009b
                    009C    284 _SCON_4	=	0x009c
                    009D    285 _SCON_5	=	0x009d
                    009E    286 _SCON_6	=	0x009e
                    009F    287 _SCON_7	=	0x009f
                    00DE    288 _I2CON_6	=	0x00de
                    00DD    289 _I2CON_5	=	0x00dd
                    00DC    290 _I2CON_4	=	0x00dc
                    00DB    291 _I2CON_3	=	0x00db
                    00DA    292 _I2CON_2	=	0x00da
                    00D8    293 _I2CON_0	=	0x00d8
                    0080    294 _P0_0	=	0x0080
                    0081    295 _P0_1	=	0x0081
                    0082    296 _P0_2	=	0x0082
                    0083    297 _P0_3	=	0x0083
                    0084    298 _P0_4	=	0x0084
                    0085    299 _P0_5	=	0x0085
                    0086    300 _P0_6	=	0x0086
                    0087    301 _P0_7	=	0x0087
                    0090    302 _P1_0	=	0x0090
                    0091    303 _P1_1	=	0x0091
                    0092    304 _P1_2	=	0x0092
                    0093    305 _P1_3	=	0x0093
                    0094    306 _P1_4	=	0x0094
                    0095    307 _P1_5	=	0x0095
                    0096    308 _P1_6	=	0x0096
                    0097    309 _P1_7	=	0x0097
                    00B0    310 _P3_0	=	0x00b0
                    00B1    311 _P3_1	=	0x00b1
                            312 ;--------------------------------------------------------
                            313 ; overlayable register banks
                            314 ;--------------------------------------------------------
                            315 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     316 	.ds 8
                            317 ;--------------------------------------------------------
                            318 ; overlayable bit register bank
                            319 ;--------------------------------------------------------
                            320 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     321 bits:
   0023                     322 	.ds 1
                    8000    323 	b0 = bits[0]
                    8100    324 	b1 = bits[1]
                    8200    325 	b2 = bits[2]
                    8300    326 	b3 = bits[3]
                    8400    327 	b4 = bits[4]
                    8500    328 	b5 = bits[5]
                    8600    329 	b6 = bits[6]
                    8700    330 	b7 = bits[7]
                            331 ;--------------------------------------------------------
                            332 ; internal ram data
                            333 ;--------------------------------------------------------
                            334 	.area DSEG    (DATA)
                            335 ;--------------------------------------------------------
                            336 ; overlayable items in internal ram 
                            337 ;--------------------------------------------------------
                            338 	.area OSEG    (OVR,DATA)
                            339 ;--------------------------------------------------------
                            340 ; Stack segment in internal ram 
                            341 ;--------------------------------------------------------
                            342 	.area	SSEG	(DATA)
   0079                     343 __start__stack:
   0079                     344 	.ds	1
                            345 
                            346 ;--------------------------------------------------------
                            347 ; indirectly addressable internal ram data
                            348 ;--------------------------------------------------------
                            349 	.area ISEG    (DATA)
                            350 ;--------------------------------------------------------
                            351 ; absolute internal ram data
                            352 ;--------------------------------------------------------
                            353 	.area IABS    (ABS,DATA)
                            354 	.area IABS    (ABS,DATA)
                            355 ;--------------------------------------------------------
                            356 ; bit data
                            357 ;--------------------------------------------------------
                            358 	.area BSEG    (BIT)
   0000                     359 _filtermode::
   0000                     360 	.ds 1
   0001                     361 _write_ok::
   0001                     362 	.ds 1
   0002                     363 _rsin_busy::
   0002                     364 	.ds 1
                            365 ;--------------------------------------------------------
                            366 ; paged external ram data
                            367 ;--------------------------------------------------------
                            368 	.area PSEG    (PAG,XDATA)
                            369 ;--------------------------------------------------------
                            370 ; external ram data
                            371 ;--------------------------------------------------------
                            372 	.area XSEG    (XDATA)
                            373 ;--------------------------------------------------------
                            374 ; absolute external ram data
                            375 ;--------------------------------------------------------
                            376 	.area XABS    (ABS,XDATA)
                            377 ;--------------------------------------------------------
                            378 ; external initialized ram data
                            379 ;--------------------------------------------------------
                            380 	.area XISEG   (XDATA)
                            381 	.area HOME    (CODE)
                            382 	.area GSINIT0 (CODE)
                            383 	.area GSINIT1 (CODE)
                            384 	.area GSINIT2 (CODE)
                            385 	.area GSINIT3 (CODE)
                            386 	.area GSINIT4 (CODE)
                            387 	.area GSINIT5 (CODE)
                            388 	.area GSINIT  (CODE)
                            389 	.area GSFINAL (CODE)
                            390 	.area CSEG    (CODE)
                            391 ;--------------------------------------------------------
                            392 ; interrupt vector 
                            393 ;--------------------------------------------------------
                            394 	.area HOME    (CODE)
   0000                     395 __interrupt_vect:
   0000 02 00 2B            396 	ljmp	__sdcc_gsinit_startup
   0003 32                  397 	reti
   0004                     398 	.ds	7
   000B 32                  399 	reti
   000C                     400 	.ds	7
   0013 02 16 67            401 	ljmp	_X1_int
   0016                     402 	.ds	5
   001B 02 16 97            403 	ljmp	_T1_int
   001E                     404 	.ds	5
   0023 02 0A 8C            405 	ljmp	_serial_int
                            406 ;--------------------------------------------------------
                            407 ; global & static initialisations
                            408 ;--------------------------------------------------------
                            409 	.area HOME    (CODE)
                            410 	.area GSINIT  (CODE)
                            411 	.area GSFINAL (CODE)
                            412 	.area GSINIT  (CODE)
                            413 	.globl __sdcc_gsinit_startup
                            414 	.globl __sdcc_program_startup
                            415 	.globl __start__stack
                            416 	.globl __mcs51_genXINIT
                            417 	.globl __mcs51_genXRAMCLEAR
                            418 	.globl __mcs51_genRAMCLEAR
                            419 	.area GSFINAL (CODE)
   0089 02 00 26            420 	ljmp	__sdcc_program_startup
                            421 ;--------------------------------------------------------
                            422 ; Home
                            423 ;--------------------------------------------------------
                            424 	.area HOME    (CODE)
                            425 	.area HOME    (CODE)
   0026                     426 __sdcc_program_startup:
   0026 12 0D C5            427 	lcall	_main
                            428 ;	return from main will lock up
   0029 80 FE               429 	sjmp .
                            430 ;--------------------------------------------------------
                            431 ; code
                            432 ;--------------------------------------------------------
                            433 	.area CSEG    (CODE)
                            434 ;------------------------------------------------------------
                            435 ;Allocation info for local variables in function 'rs_init'
                            436 ;------------------------------------------------------------
                            437 ;baudrate                  Allocated to registers r6 r7 
                            438 ;brg                       Allocated to registers r4 r5 
                            439 ;------------------------------------------------------------
                            440 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:23: void rs_init(unsigned baudrate)
                            441 ;	-----------------------------------------
                            442 ;	 function rs_init
                            443 ;	-----------------------------------------
   0B30                     444 _rs_init:
                    0007    445 	ar7 = 0x07
                    0006    446 	ar6 = 0x06
                    0005    447 	ar5 = 0x05
                    0004    448 	ar4 = 0x04
                    0003    449 	ar3 = 0x03
                    0002    450 	ar2 = 0x02
                    0001    451 	ar1 = 0x01
                    0000    452 	ar0 = 0x00
   0B30 AE 82               453 	mov	r6,dpl
   0B32 AF 83               454 	mov	r7,dph
                            455 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:27: brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
   0B34 7C 30               456 	mov	r4,#0x30
   0B36 7D 00               457 	mov	r5,#0x00
                            458 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:28: if(baudrate==3)	// 300 Baud
   0B38 BE 03 07            459 	cjne	r6,#0x03,00102$
   0B3B BF 00 04            460 	cjne	r7,#0x00,00102$
                            461 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:29: brg=0x5FF0;
   0B3E 7C F0               462 	mov	r4,#0xF0
   0B40 7D 5F               463 	mov	r5,#0x5F
   0B42                     464 00102$:
                            465 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:30: if(baudrate==6)		// 600 Baud
   0B42 BE 06 07            466 	cjne	r6,#0x06,00104$
   0B45 BF 00 04            467 	cjne	r7,#0x00,00104$
                            468 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:31: brg=0x2FF0;
   0B48 7C F0               469 	mov	r4,#0xF0
   0B4A 7D 2F               470 	mov	r5,#0x2F
   0B4C                     471 00104$:
                            472 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:32: if(baudrate==12)	// 1200 Baud
   0B4C BE 0C 07            473 	cjne	r6,#0x0C,00106$
   0B4F BF 00 04            474 	cjne	r7,#0x00,00106$
                            475 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:33: brg=0x17F0;
   0B52 7C F0               476 	mov	r4,#0xF0
   0B54 7D 17               477 	mov	r5,#0x17
   0B56                     478 00106$:
                            479 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:34: if(baudrate==24)	// 2400 Baud
   0B56 BE 18 07            480 	cjne	r6,#0x18,00108$
   0B59 BF 00 04            481 	cjne	r7,#0x00,00108$
                            482 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:35: brg=0x2FF0;
   0B5C 7C F0               483 	mov	r4,#0xF0
   0B5E 7D 2F               484 	mov	r5,#0x2F
   0B60                     485 00108$:
                            486 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:36: if(baudrate==48)	// 4800 Baud
   0B60 BE 30 07            487 	cjne	r6,#0x30,00110$
   0B63 BF 00 04            488 	cjne	r7,#0x00,00110$
                            489 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:37: brg=0x05F0;
   0B66 7C F0               490 	mov	r4,#0xF0
   0B68 7D 05               491 	mov	r5,#0x05
   0B6A                     492 00110$:
                            493 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:38: if(baudrate==96)	// 9600 Baud
   0B6A BE 60 07            494 	cjne	r6,#0x60,00112$
   0B6D BF 00 04            495 	cjne	r7,#0x00,00112$
                            496 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:39: brg=0x02F0;
   0B70 7C F0               497 	mov	r4,#0xF0
   0B72 7D 02               498 	mov	r5,#0x02
   0B74                     499 00112$:
                            500 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:40: if(baudrate==192)	// 19200 Baud
   0B74 BE C0 07            501 	cjne	r6,#0xC0,00114$
   0B77 BF 00 04            502 	cjne	r7,#0x00,00114$
                            503 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:41: brg=0x0170;
   0B7A 7C 70               504 	mov	r4,#0x70
   0B7C 7D 01               505 	mov	r5,#0x01
   0B7E                     506 00114$:
                            507 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:42: if(baudrate==384)	// 38400 Baud
   0B7E BE 80 07            508 	cjne	r6,#0x80,00116$
   0B81 BF 01 04            509 	cjne	r7,#0x01,00116$
                            510 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:43: brg=0x00B0;
   0B84 7C B0               511 	mov	r4,#0xB0
   0B86 7D 00               512 	mov	r5,#0x00
   0B88                     513 00116$:
                            514 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:44: if(baudrate==576)	// 57600 Baud
   0B88 BE 40 07            515 	cjne	r6,#0x40,00118$
   0B8B BF 02 04            516 	cjne	r7,#0x02,00118$
                            517 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:45: brg=0x0070;
   0B8E 7C 70               518 	mov	r4,#0x70
   0B90 7D 00               519 	mov	r5,#0x00
   0B92                     520 00118$:
                            521 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:48: BRGCON&=0xFE;	// Baudrate Generator stoppen
   0B92 53 BD FE            522 	anl	_BRGCON,#0xFE
                            523 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:49: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   0B95 53 91 FC            524 	anl	_P1M1,#0xFC
                            525 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:50: P1M2&=0xFC;
   0B98 53 92 FC            526 	anl	_P1M2,#0xFC
                            527 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:51: SCON=0x50;		// Mode 1, receive enable
   0B9B 75 98 50            528 	mov	_SCON,#0x50
                            529 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:52: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   0B9E 43 BA E0            530 	orl	_SSTAT,#0xE0
                            531 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:53: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   0BA1 43 BD 02            532 	orl	_BRGCON,#0x02
                            533 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:54: BRGR1=brg>>8;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
   0BA4 8D BF               534 	mov	_BRGR1,r5
                            535 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:55: BRGR0=brg;
   0BA6 8C BE               536 	mov	_BRGR0,r4
                            537 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:56: BRGCON|=0x01;	// Baudrate Generator starten
   0BA8 43 BD 01            538 	orl	_BRGCON,#0x01
                            539 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:57: TI=1;
   0BAB D2 99               540 	setb	_SCON_1
   0BAD 22                  541 	ret
                            542 ;------------------------------------------------------------
                            543 ;Allocation info for local variables in function 'rs_send_dec'
                            544 ;------------------------------------------------------------
                            545 ;wert                      Allocated to stack - _bp +1
                            546 ;n                         Allocated to registers r4 r5 
                            547 ;zero                      Allocated to registers b0 
                            548 ;------------------------------------------------------------
                            549 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:106: void rs_send_dec(unsigned int wert)
                            550 ;	-----------------------------------------
                            551 ;	 function rs_send_dec
                            552 ;	-----------------------------------------
   0BAE                     553 _rs_send_dec:
   0BAE C0 10               554 	push	_bp
   0BB0 85 81 10            555 	mov	_bp,sp
   0BB3 C0 82               556 	push	dpl
   0BB5 C0 83               557 	push	dph
                            558 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:112: zero=1;
   0BB7 D2 18               559 	setb	b0
                            560 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:114: n=0;
   0BB9 7C 00               561 	mov	r4,#0x00
   0BBB 7D 00               562 	mov	r5,#0x00
                            563 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:115: while(wert>=10000){
   0BBD 7A 00               564 	mov	r2,#0x00
   0BBF 7B 00               565 	mov	r3,#0x00
   0BC1 A8 10               566 	mov	r0,_bp
   0BC3 08                  567 	inc	r0
   0BC4 86 06               568 	mov	ar6,@r0
   0BC6 08                  569 	inc	r0
   0BC7 86 07               570 	mov	ar7,@r0
   0BC9                     571 00101$:
   0BC9 C3                  572 	clr	c
   0BCA EE                  573 	mov	a,r6
   0BCB 94 10               574 	subb	a,#0x10
   0BCD EF                  575 	mov	a,r7
   0BCE 94 27               576 	subb	a,#0x27
   0BD0 40 1B               577 	jc	00162$
                            578 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:116: n++;
   0BD2 0A                  579 	inc	r2
   0BD3 BA 00 01            580 	cjne	r2,#0x00,00167$
   0BD6 0B                  581 	inc	r3
   0BD7                     582 00167$:
   0BD7 8A 04               583 	mov	ar4,r2
   0BD9 8B 05               584 	mov	ar5,r3
                            585 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:117: wert-=10000;
   0BDB EE                  586 	mov	a,r6
   0BDC 24 F0               587 	add	a,#0xF0
   0BDE FE                  588 	mov	r6,a
   0BDF EF                  589 	mov	a,r7
   0BE0 34 D8               590 	addc	a,#0xD8
   0BE2 FF                  591 	mov	r7,a
   0BE3 A8 10               592 	mov	r0,_bp
   0BE5 08                  593 	inc	r0
   0BE6 A6 06               594 	mov	@r0,ar6
   0BE8 08                  595 	inc	r0
   0BE9 A6 07               596 	mov	@r0,ar7
   0BEB 80 DC               597 	sjmp	00101$
   0BED                     598 00162$:
   0BED 8A 04               599 	mov	ar4,r2
   0BEF 8B 05               600 	mov	ar5,r3
   0BF1 A8 10               601 	mov	r0,_bp
   0BF3 08                  602 	inc	r0
   0BF4 A6 06               603 	mov	@r0,ar6
   0BF6 08                  604 	inc	r0
   0BF7 A6 07               605 	mov	@r0,ar7
                            606 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:119: if(n>0)
   0BF9 EA                  607 	mov	a,r2
   0BFA 4B                  608 	orl	a,r3
   0BFB 60 0E               609 	jz	00108$
                            610 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:121: while(!TI);
   0BFD                     611 00104$:
                            612 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:122: TI=0;
   0BFD 10 99 02            613 	jbc	_SCON_1,00169$
   0C00 80 FB               614 	sjmp	00104$
   0C02                     615 00169$:
                            616 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:123: SBUF=n+48;
   0C02 8C 07               617 	mov	ar7,r4
   0C04 74 30               618 	mov	a,#0x30
   0C06 2F                  619 	add	a,r7
   0C07 F5 99               620 	mov	_SBUF,a
                            621 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:124: zero=0;
   0C09 C2 18               622 	clr	b0
   0C0B                     623 00108$:
                            624 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:127: n=0;
   0C0B 7C 00               625 	mov	r4,#0x00
   0C0D 7D 00               626 	mov	r5,#0x00
                            627 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:128: while(wert>=1000){
   0C0F 7E 00               628 	mov	r6,#0x00
   0C11 7F 00               629 	mov	r7,#0x00
   0C13 A8 10               630 	mov	r0,_bp
   0C15 08                  631 	inc	r0
   0C16 86 02               632 	mov	ar2,@r0
   0C18 08                  633 	inc	r0
   0C19 86 03               634 	mov	ar3,@r0
   0C1B                     635 00109$:
   0C1B C3                  636 	clr	c
   0C1C EA                  637 	mov	a,r2
   0C1D 94 E8               638 	subb	a,#0xE8
   0C1F EB                  639 	mov	a,r3
   0C20 94 03               640 	subb	a,#0x03
   0C22 40 1B               641 	jc	00163$
                            642 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:129: n++;
   0C24 0E                  643 	inc	r6
   0C25 BE 00 01            644 	cjne	r6,#0x00,00171$
   0C28 0F                  645 	inc	r7
   0C29                     646 00171$:
   0C29 8E 04               647 	mov	ar4,r6
   0C2B 8F 05               648 	mov	ar5,r7
                            649 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:130: wert-=1000;
   0C2D EA                  650 	mov	a,r2
   0C2E 24 18               651 	add	a,#0x18
   0C30 FA                  652 	mov	r2,a
   0C31 EB                  653 	mov	a,r3
   0C32 34 FC               654 	addc	a,#0xFC
   0C34 FB                  655 	mov	r3,a
   0C35 A8 10               656 	mov	r0,_bp
   0C37 08                  657 	inc	r0
   0C38 A6 02               658 	mov	@r0,ar2
   0C3A 08                  659 	inc	r0
   0C3B A6 03               660 	mov	@r0,ar3
   0C3D 80 DC               661 	sjmp	00109$
   0C3F                     662 00163$:
   0C3F 8E 04               663 	mov	ar4,r6
   0C41 8F 05               664 	mov	ar5,r7
   0C43 A8 10               665 	mov	r0,_bp
   0C45 08                  666 	inc	r0
   0C46 A6 02               667 	mov	@r0,ar2
   0C48 08                  668 	inc	r0
   0C49 A6 03               669 	mov	@r0,ar3
                            670 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:132: if(n>0 || !zero)
   0C4B EE                  671 	mov	a,r6
   0C4C 4F                  672 	orl	a,r7
   0C4D 70 03               673 	jnz	00112$
   0C4F 20 18 0E            674 	jb	b0,00116$
                            675 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:134: while(!TI);
   0C52                     676 00112$:
                            677 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:135: TI=0;
   0C52 10 99 02            678 	jbc	_SCON_1,00174$
   0C55 80 FB               679 	sjmp	00112$
   0C57                     680 00174$:
                            681 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:136: SBUF=n+48;
   0C57 8C 07               682 	mov	ar7,r4
   0C59 74 30               683 	mov	a,#0x30
   0C5B 2F                  684 	add	a,r7
   0C5C F5 99               685 	mov	_SBUF,a
                            686 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:137: zero=0;
   0C5E C2 18               687 	clr	b0
   0C60                     688 00116$:
                            689 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:139: n=0;
   0C60 7C 00               690 	mov	r4,#0x00
   0C62 7D 00               691 	mov	r5,#0x00
                            692 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:140: while(wert>=100){
   0C64 7E 00               693 	mov	r6,#0x00
   0C66 7F 00               694 	mov	r7,#0x00
   0C68 A8 10               695 	mov	r0,_bp
   0C6A 08                  696 	inc	r0
   0C6B 86 02               697 	mov	ar2,@r0
   0C6D 08                  698 	inc	r0
   0C6E 86 03               699 	mov	ar3,@r0
   0C70                     700 00118$:
   0C70 C3                  701 	clr	c
   0C71 EA                  702 	mov	a,r2
   0C72 94 64               703 	subb	a,#0x64
   0C74 EB                  704 	mov	a,r3
   0C75 94 00               705 	subb	a,#0x00
   0C77 40 1B               706 	jc	00164$
                            707 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:141: n++;
   0C79 0E                  708 	inc	r6
   0C7A BE 00 01            709 	cjne	r6,#0x00,00176$
   0C7D 0F                  710 	inc	r7
   0C7E                     711 00176$:
   0C7E 8E 04               712 	mov	ar4,r6
   0C80 8F 05               713 	mov	ar5,r7
                            714 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:142: wert-=100;
   0C82 EA                  715 	mov	a,r2
   0C83 24 9C               716 	add	a,#0x9C
   0C85 FA                  717 	mov	r2,a
   0C86 EB                  718 	mov	a,r3
   0C87 34 FF               719 	addc	a,#0xFF
   0C89 FB                  720 	mov	r3,a
   0C8A A8 10               721 	mov	r0,_bp
   0C8C 08                  722 	inc	r0
   0C8D A6 02               723 	mov	@r0,ar2
   0C8F 08                  724 	inc	r0
   0C90 A6 03               725 	mov	@r0,ar3
   0C92 80 DC               726 	sjmp	00118$
   0C94                     727 00164$:
   0C94 8E 04               728 	mov	ar4,r6
   0C96 8F 05               729 	mov	ar5,r7
   0C98 A8 10               730 	mov	r0,_bp
   0C9A 08                  731 	inc	r0
   0C9B A6 02               732 	mov	@r0,ar2
   0C9D 08                  733 	inc	r0
   0C9E A6 03               734 	mov	@r0,ar3
                            735 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:144: if(n>0 || !zero)
   0CA0 EE                  736 	mov	a,r6
   0CA1 4F                  737 	orl	a,r7
   0CA2 70 03               738 	jnz	00121$
   0CA4 20 18 0E            739 	jb	b0,00125$
                            740 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:146: while(!TI);
   0CA7                     741 00121$:
                            742 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:147: TI=0;
   0CA7 10 99 02            743 	jbc	_SCON_1,00179$
   0CAA 80 FB               744 	sjmp	00121$
   0CAC                     745 00179$:
                            746 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:148: SBUF=n+48;
   0CAC 8C 07               747 	mov	ar7,r4
   0CAE 74 30               748 	mov	a,#0x30
   0CB0 2F                  749 	add	a,r7
   0CB1 F5 99               750 	mov	_SBUF,a
                            751 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:149: zero=0;
   0CB3 C2 18               752 	clr	b0
   0CB5                     753 00125$:
                            754 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:152: n=0;
   0CB5 7C 00               755 	mov	r4,#0x00
   0CB7 7D 00               756 	mov	r5,#0x00
                            757 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:153: while(wert>=10){
   0CB9 7E 00               758 	mov	r6,#0x00
   0CBB 7F 00               759 	mov	r7,#0x00
   0CBD A8 10               760 	mov	r0,_bp
   0CBF 08                  761 	inc	r0
   0CC0 86 02               762 	mov	ar2,@r0
   0CC2 08                  763 	inc	r0
   0CC3 86 03               764 	mov	ar3,@r0
   0CC5                     765 00127$:
   0CC5 C3                  766 	clr	c
   0CC6 EA                  767 	mov	a,r2
   0CC7 94 0A               768 	subb	a,#0x0A
   0CC9 EB                  769 	mov	a,r3
   0CCA 94 00               770 	subb	a,#0x00
   0CCC 40 1B               771 	jc	00165$
                            772 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:154: n++;
   0CCE 0E                  773 	inc	r6
   0CCF BE 00 01            774 	cjne	r6,#0x00,00181$
   0CD2 0F                  775 	inc	r7
   0CD3                     776 00181$:
   0CD3 8E 04               777 	mov	ar4,r6
   0CD5 8F 05               778 	mov	ar5,r7
                            779 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:155: wert-=10;
   0CD7 EA                  780 	mov	a,r2
   0CD8 24 F6               781 	add	a,#0xF6
   0CDA FA                  782 	mov	r2,a
   0CDB EB                  783 	mov	a,r3
   0CDC 34 FF               784 	addc	a,#0xFF
   0CDE FB                  785 	mov	r3,a
   0CDF A8 10               786 	mov	r0,_bp
   0CE1 08                  787 	inc	r0
   0CE2 A6 02               788 	mov	@r0,ar2
   0CE4 08                  789 	inc	r0
   0CE5 A6 03               790 	mov	@r0,ar3
   0CE7 80 DC               791 	sjmp	00127$
   0CE9                     792 00165$:
   0CE9 8E 04               793 	mov	ar4,r6
   0CEB 8F 05               794 	mov	ar5,r7
   0CED A8 10               795 	mov	r0,_bp
   0CEF 08                  796 	inc	r0
   0CF0 A6 02               797 	mov	@r0,ar2
   0CF2 08                  798 	inc	r0
   0CF3 A6 03               799 	mov	@r0,ar3
                            800 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:157: if(n>0 || !zero)
   0CF5 EE                  801 	mov	a,r6
   0CF6 4F                  802 	orl	a,r7
   0CF7 70 03               803 	jnz	00130$
   0CF9 20 18 0A            804 	jb	b0,00136$
                            805 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:159: while(!TI);
   0CFC                     806 00130$:
                            807 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:160: TI=0;
   0CFC 10 99 02            808 	jbc	_SCON_1,00184$
   0CFF 80 FB               809 	sjmp	00130$
   0D01                     810 00184$:
                            811 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:161: SBUF=n+48;
   0D01 74 30               812 	mov	a,#0x30
   0D03 2C                  813 	add	a,r4
   0D04 F5 99               814 	mov	_SBUF,a
                            815 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:164: while(!TI);
   0D06                     816 00136$:
                            817 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:165: TI=0;
   0D06 10 99 02            818 	jbc	_SCON_1,00185$
   0D09 80 FB               819 	sjmp	00136$
   0D0B                     820 00185$:
                            821 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:166: SBUF=wert+48;
   0D0B A8 10               822 	mov	r0,_bp
   0D0D 08                  823 	inc	r0
   0D0E 86 06               824 	mov	ar6,@r0
   0D10 74 30               825 	mov	a,#0x30
   0D12 2E                  826 	add	a,r6
   0D13 F5 99               827 	mov	_SBUF,a
   0D15 85 10 81            828 	mov	sp,_bp
   0D18 D0 10               829 	pop	_bp
   0D1A 22                  830 	ret
                            831 ;------------------------------------------------------------
                            832 ;Allocation info for local variables in function 'rs_send_s'
                            833 ;------------------------------------------------------------
                            834 ;s                         Allocated to registers r5 r6 r7 
                            835 ;n                         Allocated to registers r4 
                            836 ;------------------------------------------------------------
                            837 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:180: void rs_send_s(unsigned char *s)
                            838 ;	-----------------------------------------
                            839 ;	 function rs_send_s
                            840 ;	-----------------------------------------
   0D1B                     841 _rs_send_s:
   0D1B AD 82               842 	mov	r5,dpl
   0D1D AE 83               843 	mov	r6,dph
   0D1F AF F0               844 	mov	r7,b
                            845 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:183: while (s[n]!=0)
   0D21 7C 00               846 	mov	r4,#0x00
   0D23                     847 00111$:
   0D23 EC                  848 	mov	a,r4
   0D24 2D                  849 	add	a,r5
   0D25 F9                  850 	mov	r1,a
   0D26 E4                  851 	clr	a
   0D27 3E                  852 	addc	a,r6
   0D28 FA                  853 	mov	r2,a
   0D29 8F 03               854 	mov	ar3,r7
   0D2B 89 82               855 	mov	dpl,r1
   0D2D 8A 83               856 	mov	dph,r2
   0D2F 8B F0               857 	mov	b,r3
   0D31 12 1B 73            858 	lcall	__gptrget
   0D34 FB                  859 	mov	r3,a
   0D35 60 29               860 	jz	00113$
                            861 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:185: if(s[n]=='\n')
   0D37 BB 0A 08            862 	cjne	r3,#0x0A,00106$
                            863 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:187: while(!TI);
   0D3A                     864 00101$:
                            865 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:188: TI=0;
   0D3A 10 99 02            866 	jbc	_SCON_1,00126$
   0D3D 80 FB               867 	sjmp	00101$
   0D3F                     868 00126$:
                            869 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:189: SBUF=0x0d;
   0D3F 75 99 0D            870 	mov	_SBUF,#0x0D
                            871 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:191: while(!TI);
   0D42                     872 00106$:
                            873 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:192: TI=0;
   0D42 10 99 02            874 	jbc	_SCON_1,00127$
   0D45 80 FB               875 	sjmp	00106$
   0D47                     876 00127$:
                            877 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:193: SBUF=s[n];
   0D47 EC                  878 	mov	a,r4
   0D48 2D                  879 	add	a,r5
   0D49 F9                  880 	mov	r1,a
   0D4A E4                  881 	clr	a
   0D4B 3E                  882 	addc	a,r6
   0D4C FA                  883 	mov	r2,a
   0D4D 8F 03               884 	mov	ar3,r7
   0D4F 89 82               885 	mov	dpl,r1
   0D51 8A 83               886 	mov	dph,r2
   0D53 8B F0               887 	mov	b,r3
   0D55 12 1B 73            888 	lcall	__gptrget
   0D58 F5 99               889 	mov	_SBUF,a
                            890 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:194: n++;
   0D5A 0C                  891 	inc	r4
                            892 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:195: if(n>254)
   0D5B EC                  893 	mov	a,r4
   0D5C 24 01               894 	add	a,#0xff - 0xFE
   0D5E 50 C3               895 	jnc	00111$
                            896 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:196: return;
                            897 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:198: return;
   0D60                     898 00113$:
   0D60 22                  899 	ret
                            900 ;------------------------------------------------------------
                            901 ;Allocation info for local variables in function 'rs_send_hex_l'
                            902 ;------------------------------------------------------------
                            903 ;wert                      Allocated to registers r4 r5 r6 r7 
                            904 ;------------------------------------------------------------
                            905 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:223: void rs_send_hex_l(unsigned long wert)
                            906 ;	-----------------------------------------
                            907 ;	 function rs_send_hex_l
                            908 ;	-----------------------------------------
   0D61                     909 _rs_send_hex_l:
   0D61 AC 82               910 	mov	r4,dpl
   0D63 AD 83               911 	mov	r5,dph
   0D65 AE F0               912 	mov	r6,b
   0D67 FF                  913 	mov	r7,a
                            914 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:225: rs_send_hex_i(wert>>16);
   0D68 8E 82               915 	mov	dpl,r6
   0D6A 8F 83               916 	mov	dph,r7
   0D6C C0 07               917 	push	ar7
   0D6E C0 06               918 	push	ar6
   0D70 C0 05               919 	push	ar5
   0D72 C0 04               920 	push	ar4
   0D74 12 0D 86            921 	lcall	_rs_send_hex_i
   0D77 D0 04               922 	pop	ar4
   0D79 D0 05               923 	pop	ar5
   0D7B D0 06               924 	pop	ar6
   0D7D D0 07               925 	pop	ar7
                            926 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:226: rs_send_hex_i(wert&0xFFFF);
   0D7F 8C 82               927 	mov	dpl,r4
   0D81 8D 83               928 	mov	dph,r5
   0D83 02 0D 86            929 	ljmp	_rs_send_hex_i
                            930 ;------------------------------------------------------------
                            931 ;Allocation info for local variables in function 'rs_send_hex_i'
                            932 ;------------------------------------------------------------
                            933 ;wert                      Allocated to registers r6 r7 
                            934 ;------------------------------------------------------------
                            935 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:249: void rs_send_hex_i(unsigned int wert)
                            936 ;	-----------------------------------------
                            937 ;	 function rs_send_hex_i
                            938 ;	-----------------------------------------
   0D86                     939 _rs_send_hex_i:
   0D86 AE 82               940 	mov	r6,dpl
   0D88 AF 83               941 	mov	r7,dph
                            942 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:251: rs_send_hex(wert>>8);
   0D8A 8F 82               943 	mov	dpl,r7
   0D8C C0 07               944 	push	ar7
   0D8E C0 06               945 	push	ar6
   0D90 12 0D 9C            946 	lcall	_rs_send_hex
   0D93 D0 06               947 	pop	ar6
   0D95 D0 07               948 	pop	ar7
                            949 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:252: rs_send_hex(wert&0xFF);
   0D97 8E 82               950 	mov	dpl,r6
   0D99 02 0D 9C            951 	ljmp	_rs_send_hex
                            952 ;------------------------------------------------------------
                            953 ;Allocation info for local variables in function 'rs_send_hex'
                            954 ;------------------------------------------------------------
                            955 ;wert                      Allocated to registers r7 
                            956 ;------------------------------------------------------------
                            957 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:265: void rs_send_hex(unsigned char wert)
                            958 ;	-----------------------------------------
                            959 ;	 function rs_send_hex
                            960 ;	-----------------------------------------
   0D9C                     961 _rs_send_hex:
                            962 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:269: rs_send(hex[wert>>4]);
   0D9C E5 82               963 	mov	a,dpl
   0D9E FF                  964 	mov	r7,a
   0D9F C4                  965 	swap	a
   0DA0 54 0F               966 	anl	a,#0x0F
   0DA2 90 1C 09            967 	mov	dptr,#_hex
   0DA5 93                  968 	movc	a,@a+dptr
   0DA6 F5 82               969 	mov	dpl,a
   0DA8 C0 07               970 	push	ar7
   0DAA 12 0D BB            971 	lcall	_rs_send
   0DAD D0 07               972 	pop	ar7
                            973 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:270: rs_send(hex[wert&0x0F]);
   0DAF 74 0F               974 	mov	a,#0x0F
   0DB1 5F                  975 	anl	a,r7
   0DB2 90 1C 09            976 	mov	dptr,#_hex
   0DB5 93                  977 	movc	a,@a+dptr
   0DB6 F5 82               978 	mov	dpl,a
   0DB8 02 0D BB            979 	ljmp	_rs_send
                            980 ;------------------------------------------------------------
                            981 ;Allocation info for local variables in function 'rs_send'
                            982 ;------------------------------------------------------------
                            983 ;z                         Allocated to registers r7 
                            984 ;------------------------------------------------------------
                            985 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:274: void rs_send(unsigned char z)
                            986 ;	-----------------------------------------
                            987 ;	 function rs_send
                            988 ;	-----------------------------------------
   0DBB                     989 _rs_send:
   0DBB AF 82               990 	mov	r7,dpl
                            991 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:276: while(!TI);
   0DBD                     992 00101$:
                            993 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:277: TI=0;
   0DBD 10 99 02            994 	jbc	_SCON_1,00108$
   0DC0 80 FB               995 	sjmp	00101$
   0DC2                     996 00108$:
                            997 ;	/home/stefan/Projekte/Selfbus/Workspace.lpc/software/com/fb_rs232.c:278: SBUF=z;
   0DC2 8F 99               998 	mov	_SBUF,r7
   0DC4 22                  999 	ret
                           1000 ;------------------------------------------------------------
                           1001 ;Allocation info for local variables in function 'main'
                           1002 ;------------------------------------------------------------
                           1003 ;n                         Allocated to stack - _bp +1
                           1004 ;busy                      Allocated to registers b0 
                           1005 ;value                     Allocated to registers r4 r5 
                           1006 ;baud_tmp                  Allocated to registers r5 r6 
                           1007 ;esc                       Allocated to registers r7 
                           1008 ;------------------------------------------------------------
                           1009 ;	../fb_rs.c:44: void main(void)
                           1010 ;	-----------------------------------------
                           1011 ;	 function main
                           1012 ;	-----------------------------------------
   0DC5                    1013 _main:
   0DC5 C0 10              1014 	push	_bp
   0DC7 85 81 10           1015 	mov	_bp,sp
   0DCA 05 81              1016 	inc	sp
                           1017 ;	../fb_rs.c:47: __bit busy=0;
   0DCC C2 18              1018 	clr	b0
                           1019 ;	../fb_rs.c:50: unsigned char esc=esc_char;
   0DCE 90 1C F7           1020 	mov	dptr,#_esc_char
   0DD1 E4                 1021 	clr	a
   0DD2 93                 1022 	movc	a,@a+dptr
   0DD3 FF                 1023 	mov	r7,a
                           1024 ;	../fb_rs.c:52: restart_hw();			// Hardware zurücksetzen
   0DD4 C0 07              1025 	push	ar7
   0DD6 C0 23              1026 	push	bits
   0DD8 12 1A F2           1027 	lcall	_restart_hw
   0DDB D0 23              1028 	pop	bits
                           1029 ;	../fb_rs.c:53: rs_init(baud);			// serielle Schnittstelle initialisieren, muss hier sein
   0DDD 90 1C FE           1030 	mov	dptr,#_baud
   0DE0 E4                 1031 	clr	a
   0DE1 93                 1032 	movc	a,@a+dptr
   0DE2 FD                 1033 	mov	r5,a
   0DE3 74 01              1034 	mov	a,#0x01
   0DE5 93                 1035 	movc	a,@a+dptr
   0DE6 FE                 1036 	mov	r6,a
   0DE7 8D 82              1037 	mov	dpl,r5
   0DE9 8E 83              1038 	mov	dph,r6
   0DEB C0 23              1039 	push	bits
   0DED 12 0B 30           1040 	lcall	_rs_init
   0DF0 D0 23              1041 	pop	bits
                           1042 ;	../fb_rs.c:56: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
   0DF2 C0 23              1043 	push	bits
   0DF4 12 0B 16           1044 	lcall	_restart_app
   0DF7 D0 23              1045 	pop	bits
                           1046 ;	../fb_rs.c:58: RXLED=1;
   0DF9 D2 86              1047 	setb	_P0_6
                           1048 ;	../fb_rs.c:59: EIBLED=1;
   0DFB D2 87              1049 	setb	_P0_7
                           1050 ;	../fb_rs.c:60: ledcount=0xff;
   0DFD 75 47 FF           1051 	mov	_ledcount,#0xFF
                           1052 ;	../fb_rs.c:61: eibledcount=0;
   0E00 75 48 00           1053 	mov	_eibledcount,#0x00
                           1054 ;	../fb_rs.c:62: rxledcount=0;
   0E03 75 49 00           1055 	mov	_rxledcount,#0x00
                           1056 ;	../fb_rs.c:63: rsinpos=0;
   0E06 75 42 00           1057 	mov	_rsinpos,#0x00
                           1058 ;	../fb_rs.c:65: rs_send_s("Kubi's RS-interface V3.00 ");
   0E09 90 1C 19           1059 	mov	dptr,#__str_0
   0E0C 75 F0 80           1060 	mov	b,#0x80
   0E0F C0 23              1061 	push	bits
   0E11 12 0D 1B           1062 	lcall	_rs_send_s
   0E14 D0 23              1063 	pop	bits
   0E16 D0 07              1064 	pop	ar7
                           1065 ;	../fb_rs.c:66: if (baud==96 || baud==192 || baud==384 || baud==576) rs_send_dec(baud);
   0E18 90 1C FE           1066 	mov	dptr,#_baud
   0E1B E4                 1067 	clr	a
   0E1C 93                 1068 	movc	a,@a+dptr
   0E1D FD                 1069 	mov	r5,a
   0E1E 74 01              1070 	mov	a,#0x01
   0E20 93                 1071 	movc	a,@a+dptr
   0E21 FE                 1072 	mov	r6,a
   0E22 BD 60 05           1073 	cjne	r5,#0x60,00412$
   0E25 BE 00 02           1074 	cjne	r6,#0x00,00412$
   0E28 80 34              1075 	sjmp	00101$
   0E2A                    1076 00412$:
   0E2A 90 1C FE           1077 	mov	dptr,#_baud
   0E2D E4                 1078 	clr	a
   0E2E 93                 1079 	movc	a,@a+dptr
   0E2F FD                 1080 	mov	r5,a
   0E30 74 01              1081 	mov	a,#0x01
   0E32 93                 1082 	movc	a,@a+dptr
   0E33 FE                 1083 	mov	r6,a
   0E34 BD C0 05           1084 	cjne	r5,#0xC0,00413$
   0E37 BE 00 02           1085 	cjne	r6,#0x00,00413$
   0E3A 80 22              1086 	sjmp	00101$
   0E3C                    1087 00413$:
   0E3C 90 1C FE           1088 	mov	dptr,#_baud
   0E3F E4                 1089 	clr	a
   0E40 93                 1090 	movc	a,@a+dptr
   0E41 FD                 1091 	mov	r5,a
   0E42 74 01              1092 	mov	a,#0x01
   0E44 93                 1093 	movc	a,@a+dptr
   0E45 FE                 1094 	mov	r6,a
   0E46 BD 80 05           1095 	cjne	r5,#0x80,00414$
   0E49 BE 01 02           1096 	cjne	r6,#0x01,00414$
   0E4C 80 10              1097 	sjmp	00101$
   0E4E                    1098 00414$:
   0E4E 90 1C FE           1099 	mov	dptr,#_baud
   0E51 E4                 1100 	clr	a
   0E52 93                 1101 	movc	a,@a+dptr
   0E53 FD                 1102 	mov	r5,a
   0E54 74 01              1103 	mov	a,#0x01
   0E56 93                 1104 	movc	a,@a+dptr
   0E57 FE                 1105 	mov	r6,a
   0E58 BD 40 1E           1106 	cjne	r5,#0x40,00102$
   0E5B BE 02 1B           1107 	cjne	r6,#0x02,00102$
   0E5E                    1108 00101$:
   0E5E 90 1C FE           1109 	mov	dptr,#_baud
   0E61 E4                 1110 	clr	a
   0E62 93                 1111 	movc	a,@a+dptr
   0E63 FD                 1112 	mov	r5,a
   0E64 74 01              1113 	mov	a,#0x01
   0E66 93                 1114 	movc	a,@a+dptr
   0E67 FE                 1115 	mov	r6,a
   0E68 8D 82              1116 	mov	dpl,r5
   0E6A 8E 83              1117 	mov	dph,r6
   0E6C C0 07              1118 	push	ar7
   0E6E C0 23              1119 	push	bits
   0E70 12 0B AE           1120 	lcall	_rs_send_dec
   0E73 D0 23              1121 	pop	bits
   0E75 D0 07              1122 	pop	ar7
   0E77 80 11              1123 	sjmp	00103$
   0E79                    1124 00102$:
                           1125 ;	../fb_rs.c:67: else rs_send_s("1152");
   0E79 90 1C 34           1126 	mov	dptr,#__str_1
   0E7C 75 F0 80           1127 	mov	b,#0x80
   0E7F C0 07              1128 	push	ar7
   0E81 C0 23              1129 	push	bits
   0E83 12 0D 1B           1130 	lcall	_rs_send_s
   0E86 D0 23              1131 	pop	bits
   0E88 D0 07              1132 	pop	ar7
   0E8A                    1133 00103$:
                           1134 ;	../fb_rs.c:68: rs_send_s("00 Baud. ");
   0E8A 90 1C 39           1135 	mov	dptr,#__str_2
   0E8D 75 F0 80           1136 	mov	b,#0x80
   0E90 C0 07              1137 	push	ar7
   0E92 C0 23              1138 	push	bits
   0E94 12 0D 1B           1139 	lcall	_rs_send_s
   0E97 D0 23              1140 	pop	bits
                           1141 ;	../fb_rs.c:69: rs_send_s("Esc=");
   0E99 90 1C 43           1142 	mov	dptr,#__str_3
   0E9C 75 F0 80           1143 	mov	b,#0x80
   0E9F C0 23              1144 	push	bits
   0EA1 12 0D 1B           1145 	lcall	_rs_send_s
   0EA4 D0 23              1146 	pop	bits
   0EA6 D0 07              1147 	pop	ar7
                           1148 ;	../fb_rs.c:70: rs_send(esc);
   0EA8 8F 82              1149 	mov	dpl,r7
   0EAA C0 07              1150 	push	ar7
   0EAC C0 23              1151 	push	bits
   0EAE 12 0D BB           1152 	lcall	_rs_send
   0EB1 D0 23              1153 	pop	bits
                           1154 ;	../fb_rs.c:71: rs_send_s("\n");
   0EB3 90 1C 48           1155 	mov	dptr,#__str_4
   0EB6 75 F0 80           1156 	mov	b,#0x80
   0EB9 C0 23              1157 	push	bits
   0EBB 12 0D 1B           1158 	lcall	_rs_send_s
   0EBE D0 23              1159 	pop	bits
   0EC0 D0 07              1160 	pop	ar7
                           1161 ;	../fb_rs.c:72: WATCHDOG_INIT 
   0EC2 75 C1 FF           1162 	mov	_WDL,#0xFF
   0EC5 C2 AF              1163 	clr	_IEN0_7
   0EC7 75 A7 E5           1164 	mov	_WDCON,#0xE5
   0ECA 75 C2 A5           1165 	mov	_WFEED1,#0xA5
   0ECD 75 C3 5A           1166 	mov	_WFEED2,#0x5A
   0ED0 D2 AF              1167 	setb	_IEN0_7
                           1168 ;	../fb_rs.c:73: WATCHDOG_START
   0ED2 C2 AF              1169 	clr	_IEN0_7
   0ED4 43 A7 04           1170 	orl	_WDCON,#0x04
   0ED7 75 C2 A5           1171 	mov	_WFEED1,#0xA5
   0EDA 75 C3 5A           1172 	mov	_WFEED2,#0x5A
   0EDD D2 AF              1173 	setb	_IEN0_7
                           1174 ;	../fb_rs.c:75: if(fm){
   0EDF 90 1C FA           1175 	mov	dptr,#_fm
   0EE2 E4                 1176 	clr	a
   0EE3 93                 1177 	movc	a,@a+dptr
   0EE4 FE                 1178 	mov	r6,a
   0EE5 60 15              1179 	jz	00108$
                           1180 ;	../fb_rs.c:76: filtermode=1;
   0EE7 D2 00              1181 	setb	_filtermode
                           1182 ;	../fb_rs.c:77: rs_send_s("filtered\n");
   0EE9 90 1C 4A           1183 	mov	dptr,#__str_5
   0EEC 75 F0 80           1184 	mov	b,#0x80
   0EEF C0 07              1185 	push	ar7
   0EF1 C0 23              1186 	push	bits
   0EF3 12 0D 1B           1187 	lcall	_rs_send_s
   0EF6 D0 23              1188 	pop	bits
   0EF8 D0 07              1189 	pop	ar7
   0EFA 80 02              1190 	sjmp	00275$
   0EFC                    1191 00108$:
                           1192 ;	../fb_rs.c:79: else filtermode=0;
   0EFC C2 00              1193 	clr	_filtermode
                           1194 ;	../fb_rs.c:81: do  {
   0EFE                    1195 00275$:
                           1196 ;	../fb_rs.c:82: WATCHDOG_FEED
   0EFE C2 AF              1197 	clr	_IEN0_7
   0F00 75 C2 A5           1198 	mov	_WFEED1,#0xA5
   0F03 75 C3 5A           1199 	mov	_WFEED2,#0x5A
   0F06 D2 AF              1200 	setb	_IEN0_7
                           1201 ;	../fb_rs.c:83: ledcount--;
                           1202 ;	../fb_rs.c:84: if(!ledcount){
   0F08 D5 47 18           1203 	djnz	_ledcount,00117$
                           1204 ;	../fb_rs.c:85: if(!eibledcount)EIBLED=1;
   0F0B E5 48              1205 	mov	a,_eibledcount
   0F0D 70 04              1206 	jnz	00111$
   0F0F D2 87              1207 	setb	_P0_7
   0F11 80 04              1208 	sjmp	00112$
   0F13                    1209 00111$:
                           1210 ;	../fb_rs.c:87: eibledcount--;
   0F13 15 48              1211 	dec	_eibledcount
                           1212 ;	../fb_rs.c:88: EIBLED=0;
   0F15 C2 87              1213 	clr	_P0_7
   0F17                    1214 00112$:
                           1215 ;	../fb_rs.c:90: if(!rxledcount)RXLED=1;
   0F17 E5 49              1216 	mov	a,_rxledcount
   0F19 70 04              1217 	jnz	00114$
   0F1B D2 86              1218 	setb	_P0_6
   0F1D 80 04              1219 	sjmp	00117$
   0F1F                    1220 00114$:
                           1221 ;	../fb_rs.c:92: rxledcount--;
   0F1F 15 49              1222 	dec	_rxledcount
                           1223 ;	../fb_rs.c:93: RXLED=0;
   0F21 C2 86              1224 	clr	_P0_6
   0F23                    1225 00117$:
                           1226 ;	../fb_rs.c:96: if(rsin[rsinpos-1]==0x0A) rsinpos--;	// ggf. LF entfernen
   0F23 E5 42              1227 	mov	a,_rsinpos
   0F25 14                 1228 	dec	a
   0F26 24 24              1229 	add	a,#_rsin
   0F28 F9                 1230 	mov	r1,a
   0F29 87 06              1231 	mov	ar6,@r1
   0F2B BE 0A 02           1232 	cjne	r6,#0x0A,00119$
   0F2E 15 42              1233 	dec	_rsinpos
   0F30                    1234 00119$:
                           1235 ;	../fb_rs.c:97: if(rsinpos>0 && rsin[rsinpos-1]==0x0D&& !busy)	// CR empfangen
   0F30 E5 42              1236 	mov	a,_rsinpos
   0F32 70 03              1237 	jnz	00423$
   0F34 02 15 F5           1238 	ljmp	00260$
   0F37                    1239 00423$:
   0F37 E5 42              1240 	mov	a,_rsinpos
   0F39 14                 1241 	dec	a
   0F3A 24 24              1242 	add	a,#_rsin
   0F3C F9                 1243 	mov	r1,a
   0F3D 87 06              1244 	mov	ar6,@r1
   0F3F BE 0D 02           1245 	cjne	r6,#0x0D,00424$
   0F42 80 03              1246 	sjmp	00425$
   0F44                    1247 00424$:
   0F44 02 15 F5           1248 	ljmp	00260$
   0F47                    1249 00425$:
   0F47 30 18 03           1250 	jnb	b0,00426$
   0F4A 02 15 F5           1251 	ljmp	00260$
   0F4D                    1252 00426$:
                           1253 ;	../fb_rs.c:99: rxledcount=0xff;// * RXLED lang einschalten
   0F4D 75 49 FF           1254 	mov	_rxledcount,#0xFF
                           1255 ;	../fb_rs.c:100: if(echo) rs_send(0x0A);
   0F50 90 1C FD           1256 	mov	dptr,#_echo
   0F53 E4                 1257 	clr	a
   0F54 93                 1258 	movc	a,@a+dptr
   0F55 FE                 1259 	mov	r6,a
   0F56 60 0E              1260 	jz	00121$
   0F58 75 82 0A           1261 	mov	dpl,#0x0A
   0F5B C0 07              1262 	push	ar7
   0F5D C0 23              1263 	push	bits
   0F5F 12 0D BB           1264 	lcall	_rs_send
   0F62 D0 23              1265 	pop	bits
   0F64 D0 07              1266 	pop	ar7
   0F66                    1267 00121$:
                           1268 ;	../fb_rs.c:104: if (rsin[0]==esc && rsin[1]=='b') {	// Magic-word 'esc b' empfangen
   0F66 EF                 1269 	mov	a,r7
   0F67 B5 24 02           1270 	cjne	a,_rsin,00428$
   0F6A 80 03              1271 	sjmp	00429$
   0F6C                    1272 00428$:
   0F6C 02 15 CE           1273 	ljmp	00254$
   0F6F                    1274 00429$:
   0F6F 74 62              1275 	mov	a,#0x62
   0F71 B5 25 02           1276 	cjne	a,(_rsin + 0x0001),00430$
   0F74 80 03              1277 	sjmp	00431$
   0F76                    1278 00430$:
   0F76 02 15 CE           1279 	ljmp	00254$
   0F79                    1280 00431$:
                           1281 ;	../fb_rs.c:106: if(rsin[2]=='s') {		// s=senden oder setzen
   0F79 74 73              1282 	mov	a,#0x73
   0F7B B5 26 02           1283 	cjne	a,(_rsin + 0x0002),00432$
   0F7E 80 03              1284 	sjmp	00433$
   0F80                    1285 00432$:
   0F80 02 12 2C           1286 	ljmp	00190$
   0F83                    1287 00433$:
                           1288 ;	../fb_rs.c:108: if(rsin[3]=='0')
   0F83 74 30              1289 	mov	a,#0x30
   0F85 B5 27 72           1290 	cjne	a,(_rsin + 0x0003),00136$
                           1291 ;	../fb_rs.c:110: if( rsin[4]=='1' && rsin[rsinpos-3]=='=' && (rsin[rsinpos-2]=='0' || rsin[rsinpos-2]=='1')) {
   0F88 74 31              1292 	mov	a,#0x31
   0F8A B5 28 34           1293 	cjne	a,(_rsin + 0x0004),00130$
   0F8D E5 42              1294 	mov	a,_rsinpos
   0F8F 24 FD              1295 	add	a,#0xFD
   0F91 24 24              1296 	add	a,#_rsin
   0F93 F9                 1297 	mov	r1,a
   0F94 87 06              1298 	mov	ar6,@r1
   0F96 BE 3D 28           1299 	cjne	r6,#0x3D,00130$
   0F99 E5 42              1300 	mov	a,_rsinpos
   0F9B 24 FE              1301 	add	a,#0xFE
   0F9D 24 24              1302 	add	a,#_rsin
   0F9F F9                 1303 	mov	r1,a
   0FA0 87 06              1304 	mov	ar6,@r1
   0FA2 BE 30 02           1305 	cjne	r6,#0x30,00440$
   0FA5 80 0C              1306 	sjmp	00129$
   0FA7                    1307 00440$:
   0FA7 E5 42              1308 	mov	a,_rsinpos
   0FA9 24 FE              1309 	add	a,#0xFE
   0FAB 24 24              1310 	add	a,#_rsin
   0FAD F9                 1311 	mov	r1,a
   0FAE 87 06              1312 	mov	ar6,@r1
   0FB0 BE 31 0E           1313 	cjne	r6,#0x31,00130$
   0FB3                    1314 00129$:
                           1315 ;	../fb_rs.c:111: send_obj_value(1);
   0FB3 75 82 01           1316 	mov	dpl,#0x01
   0FB6 C0 07              1317 	push	ar7
   0FB8 12 1A 88           1318 	lcall	_send_obj_value
   0FBB D0 07              1319 	pop	ar7
                           1320 ;	../fb_rs.c:112: busy=1;
   0FBD D2 18              1321 	setb	b0
   0FBF 80 39              1322 	sjmp	00136$
   0FC1                    1323 00130$:
                           1324 ;	../fb_rs.c:115: else if(  rsin[4]=='2' && rsin[rsinpos-4]=='=') {
   0FC1 74 32              1325 	mov	a,#0x32
   0FC3 B5 28 1A           1326 	cjne	a,(_rsin + 0x0004),00126$
   0FC6 E5 42              1327 	mov	a,_rsinpos
   0FC8 24 FC              1328 	add	a,#0xFC
   0FCA 24 24              1329 	add	a,#_rsin
   0FCC F9                 1330 	mov	r1,a
   0FCD 87 06              1331 	mov	ar6,@r1
   0FCF BE 3D 0E           1332 	cjne	r6,#0x3D,00126$
                           1333 ;	../fb_rs.c:116: send_obj_value(2);
   0FD2 75 82 02           1334 	mov	dpl,#0x02
   0FD5 C0 07              1335 	push	ar7
   0FD7 12 1A 88           1336 	lcall	_send_obj_value
   0FDA D0 07              1337 	pop	ar7
                           1338 ;	../fb_rs.c:117: busy=1;
   0FDC D2 18              1339 	setb	b0
   0FDE 80 1A              1340 	sjmp	00136$
   0FE0                    1341 00126$:
                           1342 ;	../fb_rs.c:124: else if( rsin[4]>='3'&& rsin[4]<='6') {
   0FE0 AE 28              1343 	mov	r6,(_rsin + 0x0004)
   0FE2 BE 33 00           1344 	cjne	r6,#0x33,00447$
   0FE5                    1345 00447$:
   0FE5 40 13              1346 	jc	00136$
   0FE7 EE                 1347 	mov	a,r6
   0FE8 24 C9              1348 	add	a,#0xff - 0x36
   0FEA 40 0E              1349 	jc	00136$
                           1350 ;	../fb_rs.c:125: send_obj_value(rsin[4]-'0');
   0FEC EE                 1351 	mov	a,r6
   0FED 24 D0              1352 	add	a,#0xD0
   0FEF F5 82              1353 	mov	dpl,a
   0FF1 C0 07              1354 	push	ar7
   0FF3 12 1A 88           1355 	lcall	_send_obj_value
   0FF6 D0 07              1356 	pop	ar7
                           1357 ;	../fb_rs.c:126: busy=1;
   0FF8 D2 18              1358 	setb	b0
   0FFA                    1359 00136$:
                           1360 ;	../fb_rs.c:147: if(rsin[3]=='1' && rsin[4]=='5') {
   0FFA 74 31              1361 	mov	a,#0x31
   0FFC B5 27 11           1362 	cjne	a,(_rsin + 0x0003),00138$
   0FFF 74 35              1363 	mov	a,#0x35
   1001 B5 28 0C           1364 	cjne	a,(_rsin + 0x0004),00138$
                           1365 ;	../fb_rs.c:148: send_obj_value(15);
   1004 75 82 0F           1366 	mov	dpl,#0x0F
   1007 C0 07              1367 	push	ar7
   1009 12 1A 88           1368 	lcall	_send_obj_value
   100C D0 07              1369 	pop	ar7
                           1370 ;	../fb_rs.c:149: busy=1;
   100E D2 18              1371 	setb	b0
   1010                    1372 00138$:
                           1373 ;	../fb_rs.c:152: if(rsin[3]=='f' && rsin[4]=='a'){
   1010 74 66              1374 	mov	a,#0x66
   1012 B5 27 34           1375 	cjne	a,(_rsin + 0x0003),00141$
   1015 74 61              1376 	mov	a,#0x61
   1017 B5 28 2F           1377 	cjne	a,(_rsin + 0x0004),00141$
                           1378 ;	../fb_rs.c:153: set_filtermode('1');
   101A 75 82 31           1379 	mov	dpl,#0x31
   101D C0 07              1380 	push	ar7
   101F C0 23              1381 	push	bits
   1021 12 0A E0           1382 	lcall	_set_filtermode
   1024 D0 23              1383 	pop	bits
                           1384 ;	../fb_rs.c:154: save_ga(convert_adr(6),0);
   1026 75 82 06           1385 	mov	dpl,#0x06
   1029 C0 23              1386 	push	bits
   102B 12 09 4A           1387 	lcall	_convert_adr
   102E D0 23              1388 	pop	bits
   1030 C0 23              1389 	push	bits
   1032 E4                 1390 	clr	a
   1033 C0 E0              1391 	push	acc
   1035 C0 E0              1392 	push	acc
   1037 12 08 65           1393 	lcall	_save_ga
   103A 15 81              1394 	dec	sp
   103C 15 81              1395 	dec	sp
   103E D0 23              1396 	pop	bits
                           1397 ;	../fb_rs.c:155: send_ok();//rs_send_s("OK\n");
   1040 C0 23              1398 	push	bits
   1042 12 0A D7           1399 	lcall	_send_ok
   1045 D0 23              1400 	pop	bits
   1047 D0 07              1401 	pop	ar7
   1049                    1402 00141$:
                           1403 ;	../fb_rs.c:159: if(rsin[3]=='p' && rsin[4]=='a')
   1049 74 70              1404 	mov	a,#0x70
   104B B5 27 44           1405 	cjne	a,(_rsin + 0x0003),00149$
   104E 74 61              1406 	mov	a,#0x61
   1050 B5 28 3F           1407 	cjne	a,(_rsin + 0x0004),00149$
                           1408 ;	../fb_rs.c:161: pa_tmp=convert_adr(5);
   1053 75 82 05           1409 	mov	dpl,#0x05
   1056 C0 07              1410 	push	ar7
   1058 C0 23              1411 	push	bits
   105A 12 09 4A           1412 	lcall	_convert_adr
   105D 85 82 45           1413 	mov	_pa_tmp,dpl
   1060 85 83 46           1414 	mov	(_pa_tmp + 1),dph
   1063 D0 23              1415 	pop	bits
   1065 D0 07              1416 	pop	ar7
                           1417 ;	../fb_rs.c:162: write_ok=0;
   1067 C2 01              1418 	clr	_write_ok
                           1419 ;	../fb_rs.c:163: while (!write_ok) {
   1069                    1420 00145$:
   1069 20 01 1B           1421 	jb	_write_ok,00147$
                           1422 ;	../fb_rs.c:164: START_WRITECYCLE
   106C 75 E4 00           1423 	mov	_FMCON,#0x00
                           1424 ;	../fb_rs.c:165: FMADRH = 0x1C;
   106F 75 E7 1C           1425 	mov	_FMADRH,#0x1C
                           1426 ;	../fb_rs.c:166: FMADRL = 0xFB;
   1072 75 E6 FB           1427 	mov	_FMADRL,#0xFB
                           1428 ;	../fb_rs.c:167: FMDATA = pa_tmp>>8;
   1075 85 46 E5           1429 	mov	_FMDATA,(_pa_tmp + 1)
                           1430 ;	../fb_rs.c:168: FMDATA = pa_tmp;
   1078 85 45 E5           1431 	mov	_FMDATA,_pa_tmp
                           1432 ;	../fb_rs.c:169: STOP_WRITECYCLE
   107B 75 E4 68           1433 	mov	_FMCON,#0x68
                           1434 ;	../fb_rs.c:170: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   107E E5 E4              1435 	mov	a,_FMCON
   1080 20 E0 E6           1436 	jb	acc.0,00145$
   1083 D2 01              1437 	setb	_write_ok
   1085 80 E2              1438 	sjmp	00145$
   1087                    1439 00147$:
                           1440 ;	../fb_rs.c:172: send_ok();//rs_send_s("OK\n");
   1087 C0 07              1441 	push	ar7
   1089 C0 23              1442 	push	bits
   108B 12 0A D7           1443 	lcall	_send_ok
   108E D0 23              1444 	pop	bits
   1090 D0 07              1445 	pop	ar7
   1092                    1446 00149$:
                           1447 ;	../fb_rs.c:175: if(rsin[3]=='g' && rsin[4]=='a')
   1092 74 67              1448 	mov	a,#0x67
   1094 B5 27 44           1449 	cjne	a,(_rsin + 0x0003),00157$
   1097 74 61              1450 	mov	a,#0x61
   1099 B5 28 3F           1451 	cjne	a,(_rsin + 0x0004),00157$
                           1452 ;	../fb_rs.c:177: pa_tmp=convert_adr(5);
   109C 75 82 05           1453 	mov	dpl,#0x05
   109F C0 07              1454 	push	ar7
   10A1 C0 23              1455 	push	bits
   10A3 12 09 4A           1456 	lcall	_convert_adr
   10A6 85 82 45           1457 	mov	_pa_tmp,dpl
   10A9 85 83 46           1458 	mov	(_pa_tmp + 1),dph
   10AC D0 23              1459 	pop	bits
   10AE D0 07              1460 	pop	ar7
                           1461 ;	../fb_rs.c:178: write_ok=0;
   10B0 C2 01              1462 	clr	_write_ok
                           1463 ;	../fb_rs.c:179: while (!write_ok) {
   10B2                    1464 00153$:
   10B2 20 01 1B           1465 	jb	_write_ok,00155$
                           1466 ;	../fb_rs.c:180: START_WRITECYCLE
   10B5 75 E4 00           1467 	mov	_FMCON,#0x00
                           1468 ;	../fb_rs.c:181: FMADRH = 0x1C;
   10B8 75 E7 1C           1469 	mov	_FMADRH,#0x1C
                           1470 ;	../fb_rs.c:182: FMADRL = 0xF8;
   10BB 75 E6 F8           1471 	mov	_FMADRL,#0xF8
                           1472 ;	../fb_rs.c:183: FMDATA = pa_tmp>>8;
   10BE 85 46 E5           1473 	mov	_FMDATA,(_pa_tmp + 1)
                           1474 ;	../fb_rs.c:184: FMDATA = pa_tmp;
   10C1 85 45 E5           1475 	mov	_FMDATA,_pa_tmp
                           1476 ;	../fb_rs.c:185: STOP_WRITECYCLE
   10C4 75 E4 68           1477 	mov	_FMCON,#0x68
                           1478 ;	../fb_rs.c:186: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   10C7 E5 E4              1479 	mov	a,_FMCON
   10C9 20 E0 E6           1480 	jb	acc.0,00153$
   10CC D2 01              1481 	setb	_write_ok
   10CE 80 E2              1482 	sjmp	00153$
   10D0                    1483 00155$:
                           1484 ;	../fb_rs.c:188: send_ok();//rs_send_s("OK\n");
   10D0 C0 07              1485 	push	ar7
   10D2 C0 23              1486 	push	bits
   10D4 12 0A D7           1487 	lcall	_send_ok
   10D7 D0 23              1488 	pop	bits
   10D9 D0 07              1489 	pop	ar7
   10DB                    1490 00157$:
                           1491 ;	../fb_rs.c:190: if(rsin[3]=='e' && rsin[4]=='c')
   10DB 74 65              1492 	mov	a,#0x65
   10DD B5 27 2E           1493 	cjne	a,(_rsin + 0x0003),00165$
   10E0 74 63              1494 	mov	a,#0x63
   10E2 B5 28 29           1495 	cjne	a,(_rsin + 0x0004),00165$
                           1496 ;	../fb_rs.c:192: write_ok=0;
   10E5 C2 01              1497 	clr	_write_ok
                           1498 ;	../fb_rs.c:193: esc=rsin[5];
   10E7 AF 29              1499 	mov	r7,(_rsin + 0x0005)
                           1500 ;	../fb_rs.c:194: while (!write_ok) {
   10E9                    1501 00161$:
   10E9 20 01 17           1502 	jb	_write_ok,00163$
                           1503 ;	../fb_rs.c:195: START_WRITECYCLE
   10EC 75 E4 00           1504 	mov	_FMCON,#0x00
                           1505 ;	../fb_rs.c:196: FMADRH = 0x1C;
   10EF 75 E7 1C           1506 	mov	_FMADRH,#0x1C
                           1507 ;	../fb_rs.c:197: FMADRL = 0xF7;
   10F2 75 E6 F7           1508 	mov	_FMADRL,#0xF7
                           1509 ;	../fb_rs.c:198: FMDATA = esc;
   10F5 8F E5              1510 	mov	_FMDATA,r7
                           1511 ;	../fb_rs.c:199: STOP_WRITECYCLE
   10F7 75 E4 68           1512 	mov	_FMCON,#0x68
                           1513 ;	../fb_rs.c:200: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   10FA E5 E4              1514 	mov	a,_FMCON
   10FC 20 E0 EA           1515 	jb	acc.0,00161$
   10FF D2 01              1516 	setb	_write_ok
   1101 80 E6              1517 	sjmp	00161$
   1103                    1518 00163$:
                           1519 ;	../fb_rs.c:202: send_ok();//rs_send_s("OK\n");
   1103 C0 07              1520 	push	ar7
   1105 C0 23              1521 	push	bits
   1107 12 0A D7           1522 	lcall	_send_ok
   110A D0 23              1523 	pop	bits
   110C D0 07              1524 	pop	ar7
   110E                    1525 00165$:
                           1526 ;	../fb_rs.c:207: if(rsin[3]=='b' && rsin[4]=='r') {
   110E 74 62              1527 	mov	a,#0x62
   1110 B5 27 02           1528 	cjne	a,(_rsin + 0x0003),00476$
   1113 80 03              1529 	sjmp	00477$
   1115                    1530 00476$:
   1115 02 12 2C           1531 	ljmp	00190$
   1118                    1532 00477$:
   1118 74 72              1533 	mov	a,#0x72
   111A B5 28 02           1534 	cjne	a,(_rsin + 0x0004),00478$
   111D 80 03              1535 	sjmp	00479$
   111F                    1536 00478$:
   111F 02 12 2C           1537 	ljmp	00190$
   1122                    1538 00479$:
                           1539 ;	../fb_rs.c:208: baud_tmp=0;
                           1540 ;	../fb_rs.c:209: if(rsinpos>9 && rsin[rsinpos-3]=='0' && rsin[rsinpos-2]=='0') {
   1122 E4                 1541 	clr	a
   1123 FD                 1542 	mov	r5,a
   1124 FE                 1543 	mov	r6,a
   1125 E5 42              1544 	mov	a,_rsinpos
   1127 24 F6              1545 	add	a,#0xff - 0x09
   1129 40 03              1546 	jc	00480$
   112B 02 11 AE           1547 	ljmp	00168$
   112E                    1548 00480$:
   112E E5 42              1549 	mov	a,_rsinpos
   1130 24 FD              1550 	add	a,#0xFD
   1132 24 24              1551 	add	a,#_rsin
   1134 F9                 1552 	mov	r1,a
   1135 87 04              1553 	mov	ar4,@r1
   1137 BC 30 74           1554 	cjne	r4,#0x30,00168$
   113A E5 42              1555 	mov	a,_rsinpos
   113C 24 FE              1556 	add	a,#0xFE
   113E 24 24              1557 	add	a,#_rsin
   1140 F9                 1558 	mov	r1,a
   1141 87 04              1559 	mov	ar4,@r1
   1143 BC 30 68           1560 	cjne	r4,#0x30,00168$
                           1561 ;	../fb_rs.c:210: for(n=5;n<rsinpos-3;n++) {
   1146 A8 10              1562 	mov	r0,_bp
   1148 08                 1563 	inc	r0
   1149 76 05              1564 	mov	@r0,#0x05
   114B                    1565 00278$:
   114B C0 07              1566 	push	ar7
   114D AA 42              1567 	mov	r2,_rsinpos
   114F 7B 00              1568 	mov	r3,#0x00
   1151 EA                 1569 	mov	a,r2
   1152 24 FD              1570 	add	a,#0xFD
   1154 FA                 1571 	mov	r2,a
   1155 EB                 1572 	mov	a,r3
   1156 34 FF              1573 	addc	a,#0xFF
   1158 FB                 1574 	mov	r3,a
   1159 A8 10              1575 	mov	r0,_bp
   115B 08                 1576 	inc	r0
   115C 86 04              1577 	mov	ar4,@r0
   115E 7F 00              1578 	mov	r7,#0x00
   1160 C3                 1579 	clr	c
   1161 EC                 1580 	mov	a,r4
   1162 9A                 1581 	subb	a,r2
   1163 EF                 1582 	mov	a,r7
   1164 64 80              1583 	xrl	a,#0x80
   1166 8B F0              1584 	mov	b,r3
   1168 63 F0 80           1585 	xrl	b,#0x80
   116B 95 F0              1586 	subb	a,b
   116D D0 07              1587 	pop	ar7
   116F 50 3D              1588 	jnc	00168$
                           1589 ;	../fb_rs.c:211: baud_tmp*=10;
   1171 C0 07              1590 	push	ar7
   1173 C0 23              1591 	push	bits
   1175 C0 05              1592 	push	ar5
   1177 C0 06              1593 	push	ar6
   1179 90 00 0A           1594 	mov	dptr,#0x000A
   117C 12 1B 51           1595 	lcall	__mulint
   117F AB 82              1596 	mov	r3,dpl
   1181 AC 83              1597 	mov	r4,dph
   1183 15 81              1598 	dec	sp
   1185 15 81              1599 	dec	sp
   1187 D0 23              1600 	pop	bits
   1189 D0 07              1601 	pop	ar7
   118B 8B 05              1602 	mov	ar5,r3
   118D 8C 06              1603 	mov	ar6,r4
                           1604 ;	../fb_rs.c:212: baud_tmp+=rsin[n]-48;
   118F A8 10              1605 	mov	r0,_bp
   1191 08                 1606 	inc	r0
   1192 E6                 1607 	mov	a,@r0
   1193 24 24              1608 	add	a,#_rsin
   1195 F9                 1609 	mov	r1,a
   1196 87 04              1610 	mov	ar4,@r1
   1198 7B 00              1611 	mov	r3,#0x00
   119A EC                 1612 	mov	a,r4
   119B 24 D0              1613 	add	a,#0xD0
   119D FC                 1614 	mov	r4,a
   119E EB                 1615 	mov	a,r3
   119F 34 FF              1616 	addc	a,#0xFF
   11A1 FB                 1617 	mov	r3,a
   11A2 EC                 1618 	mov	a,r4
   11A3 2D                 1619 	add	a,r5
   11A4 FD                 1620 	mov	r5,a
   11A5 EB                 1621 	mov	a,r3
   11A6 3E                 1622 	addc	a,r6
   11A7 FE                 1623 	mov	r6,a
                           1624 ;	../fb_rs.c:210: for(n=5;n<rsinpos-3;n++) {
   11A8 A8 10              1625 	mov	r0,_bp
   11AA 08                 1626 	inc	r0
   11AB 06                 1627 	inc	@r0
   11AC 80 9D              1628 	sjmp	00278$
   11AE                    1629 00168$:
                           1630 ;	../fb_rs.c:215: if (baud_tmp==96 || baud_tmp==192 || baud_tmp==384 || baud_tmp==576 || baud_tmp==1152) {
   11AE BD 60 05           1631 	cjne	r5,#0x60,00486$
   11B1 BE 00 02           1632 	cjne	r6,#0x00,00486$
   11B4 80 1E              1633 	sjmp	00179$
   11B6                    1634 00486$:
   11B6 BD C0 05           1635 	cjne	r5,#0xC0,00487$
   11B9 BE 00 02           1636 	cjne	r6,#0x00,00487$
   11BC 80 16              1637 	sjmp	00179$
   11BE                    1638 00487$:
   11BE BD 80 05           1639 	cjne	r5,#0x80,00488$
   11C1 BE 01 02           1640 	cjne	r6,#0x01,00488$
   11C4 80 0E              1641 	sjmp	00179$
   11C6                    1642 00488$:
   11C6 BD 40 05           1643 	cjne	r5,#0x40,00489$
   11C9 BE 02 02           1644 	cjne	r6,#0x02,00489$
   11CC 80 06              1645 	sjmp	00179$
   11CE                    1646 00489$:
   11CE BD 80 4A           1647 	cjne	r5,#0x80,00180$
   11D1 BE 04 47           1648 	cjne	r6,#0x04,00180$
   11D4                    1649 00179$:
                           1650 ;	../fb_rs.c:216: send_ok();//rs_send_s("OK\n");
   11D4 C0 07              1651 	push	ar7
   11D6 C0 06              1652 	push	ar6
   11D8 C0 05              1653 	push	ar5
   11DA C0 23              1654 	push	bits
   11DC 12 0A D7           1655 	lcall	_send_ok
   11DF D0 23              1656 	pop	bits
   11E1 D0 05              1657 	pop	ar5
   11E3 D0 06              1658 	pop	ar6
   11E5 D0 07              1659 	pop	ar7
                           1660 ;	../fb_rs.c:217: write_ok=0;
   11E7 C2 01              1661 	clr	_write_ok
                           1662 ;	../fb_rs.c:218: while (!write_ok) {
   11E9 8E 04              1663 	mov	ar4,r6
   11EB                    1664 00173$:
   11EB 20 01 19           1665 	jb	_write_ok,00176$
                           1666 ;	../fb_rs.c:219: START_WRITECYCLE
   11EE 75 E4 00           1667 	mov	_FMCON,#0x00
                           1668 ;	../fb_rs.c:220: FMADRH = 0x1C;
   11F1 75 E7 1C           1669 	mov	_FMADRH,#0x1C
                           1670 ;	../fb_rs.c:221: FMADRL = 0xFE;
   11F4 75 E6 FE           1671 	mov	_FMADRL,#0xFE
                           1672 ;	../fb_rs.c:222: FMDATA = baud_tmp;		// LSB
   11F7 8D E5              1673 	mov	_FMDATA,r5
                           1674 ;	../fb_rs.c:223: FMDATA = baud_tmp>>8;	// MSB
   11F9 8C E5              1675 	mov	_FMDATA,r4
                           1676 ;	../fb_rs.c:224: STOP_WRITECYCLE
   11FB 75 E4 68           1677 	mov	_FMCON,#0x68
                           1678 ;	../fb_rs.c:225: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   11FE E5 E4              1679 	mov	a,_FMCON
   1200 20 E0 E8           1680 	jb	acc.0,00173$
   1203 D2 01              1681 	setb	_write_ok
                           1682 ;	../fb_rs.c:227: while(!TI);
   1205 80 E4              1683 	sjmp	00173$
   1207                    1684 00176$:
   1207 30 99 FD           1685 	jnb	_SCON_1,00176$
                           1686 ;	../fb_rs.c:228: rs_init(baud_tmp);
   120A 8D 82              1687 	mov	dpl,r5
   120C 8E 83              1688 	mov	dph,r6
   120E C0 07              1689 	push	ar7
   1210 C0 23              1690 	push	bits
   1212 12 0B 30           1691 	lcall	_rs_init
   1215 D0 23              1692 	pop	bits
   1217 D0 07              1693 	pop	ar7
   1219 80 11              1694 	sjmp	00190$
   121B                    1695 00180$:
                           1696 ;	../fb_rs.c:231: rs_send_s("error: unknown baudrate!\n");
   121B 90 1C 54           1697 	mov	dptr,#__str_6
   121E 75 F0 80           1698 	mov	b,#0x80
   1221 C0 07              1699 	push	ar7
   1223 C0 23              1700 	push	bits
   1225 12 0D 1B           1701 	lcall	_rs_send_s
   1228 D0 23              1702 	pop	bits
   122A D0 07              1703 	pop	ar7
   122C                    1704 00190$:
                           1705 ;	../fb_rs.c:239: if(rsin[2]=='r') {	// r=read
   122C 74 72              1706 	mov	a,#0x72
   122E B5 26 02           1707 	cjne	a,(_rsin + 0x0002),00495$
   1231 80 03              1708 	sjmp	00496$
   1233                    1709 00495$:
   1233 02 13 41           1710 	ljmp	00206$
   1236                    1711 00496$:
                           1712 ;	../fb_rs.c:242: if(rsin[3]=='p' && rsin[4]=='a')
   1236 74 70              1713 	mov	a,#0x70
   1238 B5 27 69           1714 	cjne	a,(_rsin + 0x0003),00192$
   123B 74 61              1715 	mov	a,#0x61
   123D B5 28 64           1716 	cjne	a,(_rsin + 0x0004),00192$
                           1717 ;	../fb_rs.c:244: rs_send_dec(pa_h>>4);
   1240 90 1C FB           1718 	mov	dptr,#_pa_h
   1243 E4                 1719 	clr	a
   1244 93                 1720 	movc	a,@a+dptr
   1245 C4                 1721 	swap	a
   1246 54 0F              1722 	anl	a,#0x0F
   1248 FE                 1723 	mov	r6,a
   1249 7D 00              1724 	mov	r5,#0x00
   124B 8E 82              1725 	mov	dpl,r6
   124D 8D 83              1726 	mov	dph,r5
   124F C0 07              1727 	push	ar7
   1251 C0 23              1728 	push	bits
   1253 12 0B AE           1729 	lcall	_rs_send_dec
   1256 D0 23              1730 	pop	bits
                           1731 ;	../fb_rs.c:245: rs_send('.');
   1258 75 82 2E           1732 	mov	dpl,#0x2E
   125B C0 23              1733 	push	bits
   125D 12 0D BB           1734 	lcall	_rs_send
   1260 D0 23              1735 	pop	bits
                           1736 ;	../fb_rs.c:246: rs_send_dec(pa_h&0x0F);
   1262 90 1C FB           1737 	mov	dptr,#_pa_h
   1265 E4                 1738 	clr	a
   1266 93                 1739 	movc	a,@a+dptr
   1267 FE                 1740 	mov	r6,a
   1268 53 06 0F           1741 	anl	ar6,#0x0F
   126B 7D 00              1742 	mov	r5,#0x00
   126D 8E 82              1743 	mov	dpl,r6
   126F 8D 83              1744 	mov	dph,r5
   1271 C0 23              1745 	push	bits
   1273 12 0B AE           1746 	lcall	_rs_send_dec
   1276 D0 23              1747 	pop	bits
                           1748 ;	../fb_rs.c:247: rs_send('.');
   1278 75 82 2E           1749 	mov	dpl,#0x2E
   127B C0 23              1750 	push	bits
   127D 12 0D BB           1751 	lcall	_rs_send
   1280 D0 23              1752 	pop	bits
                           1753 ;	../fb_rs.c:248: rs_send_dec(pa_l);
   1282 90 1C FC           1754 	mov	dptr,#_pa_l
   1285 E4                 1755 	clr	a
   1286 93                 1756 	movc	a,@a+dptr
   1287 FE                 1757 	mov	r6,a
   1288 7D 00              1758 	mov	r5,#0x00
   128A 8E 82              1759 	mov	dpl,r6
   128C 8D 83              1760 	mov	dph,r5
   128E C0 23              1761 	push	bits
   1290 12 0B AE           1762 	lcall	_rs_send_dec
   1293 D0 23              1763 	pop	bits
                           1764 ;	../fb_rs.c:249: rs_send_s("\n");
   1295 90 1C 48           1765 	mov	dptr,#__str_4
   1298 75 F0 80           1766 	mov	b,#0x80
   129B C0 23              1767 	push	bits
   129D 12 0D 1B           1768 	lcall	_rs_send_s
   12A0 D0 23              1769 	pop	bits
   12A2 D0 07              1770 	pop	ar7
   12A4                    1771 00192$:
                           1772 ;	../fb_rs.c:254: if(rsin[3]=='g' && rsin[4]=='a') {
   12A4 74 67              1773 	mov	a,#0x67
   12A6 B5 27 02           1774 	cjne	a,(_rsin + 0x0003),00501$
   12A9 80 03              1775 	sjmp	00502$
   12AB                    1776 00501$:
   12AB 02 13 2B           1777 	ljmp	00200$
   12AE                    1778 00502$:
   12AE 74 61              1779 	mov	a,#0x61
   12B0 B5 28 78           1780 	cjne	a,(_rsin + 0x0004),00200$
                           1781 ;	../fb_rs.c:255: groupadr=convert_adr(5);
   12B3 75 82 05           1782 	mov	dpl,#0x05
   12B6 C0 07              1783 	push	ar7
   12B8 C0 23              1784 	push	bits
   12BA 12 09 4A           1785 	lcall	_convert_adr
   12BD 85 82 43           1786 	mov	_groupadr,dpl
   12C0 85 83 44           1787 	mov	(_groupadr + 1),dph
   12C3 D0 23              1788 	pop	bits
   12C5 D0 07              1789 	pop	ar7
                           1790 ;	../fb_rs.c:256: n=0;
   12C7 7E 00              1791 	mov	r6,#0x00
                           1792 ;	../fb_rs.c:257: value=0xFFFF;
   12C9 7C FF              1793 	mov	r4,#0xFF
   12CB 7D FF              1794 	mov	r5,#0xFF
                           1795 ;	../fb_rs.c:258: do {								// Wert der GA aus Flash lesen
   12CD                    1796 00196$:
                           1797 ;	../fb_rs.c:259: if(ga_db[n].ga==groupadr) {
   12CD C0 04              1798 	push	ar4
   12CF C0 05              1799 	push	ar5
   12D1 EE                 1800 	mov	a,r6
   12D2 2E                 1801 	add	a,r6
   12D3 25 E0              1802 	add	a,acc
   12D5 FB                 1803 	mov	r3,a
   12D6 F5 82              1804 	mov	dpl,a
   12D8 75 83 1D           1805 	mov	dph,#(_ga_db >> 8)
   12DB E4                 1806 	clr	a
   12DC 93                 1807 	movc	a,@a+dptr
   12DD FA                 1808 	mov	r2,a
   12DE A3                 1809 	inc	dptr
   12DF E4                 1810 	clr	a
   12E0 93                 1811 	movc	a,@a+dptr
   12E1 FD                 1812 	mov	r5,a
   12E2 EA                 1813 	mov	a,r2
   12E3 B5 43 06           1814 	cjne	a,_groupadr,00505$
   12E6 ED                 1815 	mov	a,r5
   12E7 B5 44 02           1816 	cjne	a,(_groupadr + 1),00505$
   12EA 80 06              1817 	sjmp	00506$
   12EC                    1818 00505$:
   12EC D0 05              1819 	pop	ar5
   12EE D0 04              1820 	pop	ar4
   12F0 80 19              1821 	sjmp	00195$
   12F2                    1822 00506$:
   12F2 D0 05              1823 	pop	ar5
   12F4 D0 04              1824 	pop	ar4
                           1825 ;	../fb_rs.c:260: value=ga_db[n].val;
   12F6 7A 1D              1826 	mov	r2,#(_ga_db >> 8)
   12F8 8B 82              1827 	mov	dpl,r3
   12FA 8A 83              1828 	mov	dph,r2
   12FC A3                 1829 	inc	dptr
   12FD A3                 1830 	inc	dptr
   12FE E4                 1831 	clr	a
   12FF 93                 1832 	movc	a,@a+dptr
   1300 FA                 1833 	mov	r2,a
   1301 A3                 1834 	inc	dptr
   1302 E4                 1835 	clr	a
   1303 93                 1836 	movc	a,@a+dptr
   1304 FB                 1837 	mov	r3,a
   1305 8A 04              1838 	mov	ar4,r2
   1307 8B 05              1839 	mov	ar5,r3
                           1840 ;	../fb_rs.c:261: n=255;
   1309 7E FF              1841 	mov	r6,#0xFF
   130B                    1842 00195$:
                           1843 ;	../fb_rs.c:263: n++;
   130B 0E                 1844 	inc	r6
                           1845 ;	../fb_rs.c:264: }while (n>0);
   130C EE                 1846 	mov	a,r6
   130D 70 BE              1847 	jnz	00196$
                           1848 ;	../fb_rs.c:265: rs_send_dec(value);
   130F 8C 82              1849 	mov	dpl,r4
   1311 8D 83              1850 	mov	dph,r5
   1313 C0 07              1851 	push	ar7
   1315 C0 23              1852 	push	bits
   1317 12 0B AE           1853 	lcall	_rs_send_dec
   131A D0 23              1854 	pop	bits
                           1855 ;	../fb_rs.c:266: rs_send_s("\n");// cr schiebt die funktion dazwischen
   131C 90 1C 48           1856 	mov	dptr,#__str_4
   131F 75 F0 80           1857 	mov	b,#0x80
   1322 C0 23              1858 	push	bits
   1324 12 0D 1B           1859 	lcall	_rs_send_s
   1327 D0 23              1860 	pop	bits
   1329 D0 07              1861 	pop	ar7
   132B                    1862 00200$:
                           1863 ;	../fb_rs.c:271: if(rsin[3]=='v' && rsin[4]=='a') {
   132B 74 76              1864 	mov	a,#0x76
   132D B5 27 11           1865 	cjne	a,(_rsin + 0x0003),00206$
   1330 74 61              1866 	mov	a,#0x61
   1332 B5 28 0C           1867 	cjne	a,(_rsin + 0x0004),00206$
                           1868 ;	../fb_rs.c:272: send_obj_value(16);
   1335 75 82 10           1869 	mov	dpl,#0x10
   1338 C0 07              1870 	push	ar7
   133A 12 1A 88           1871 	lcall	_send_obj_value
   133D D0 07              1872 	pop	ar7
                           1873 ;	../fb_rs.c:273: busy=1;
   133F D2 18              1874 	setb	b0
   1341                    1875 00206$:
                           1876 ;	../fb_rs.c:276: if(rsin[2]=='k'&& rsin[3]=='a'){// kill all
   1341 74 6B              1877 	mov	a,#0x6B
   1343 B5 26 50           1878 	cjne	a,(_rsin + 0x0002),00216$
   1346 74 61              1879 	mov	a,#0x61
   1348 B5 27 4B           1880 	cjne	a,(_rsin + 0x0003),00216$
                           1881 ;	../fb_rs.c:277: set_filtermode('0');
   134B 75 82 30           1882 	mov	dpl,#0x30
   134E C0 07              1883 	push	ar7
   1350 C0 23              1884 	push	bits
   1352 12 0A E0           1885 	lcall	_set_filtermode
   1355 D0 23              1886 	pop	bits
   1357 D0 07              1887 	pop	ar7
                           1888 ;	../fb_rs.c:279: do {								// GA Tabelle löschen
   1359 7E 00              1889 	mov	r6,#0x00
   135B                    1890 00212$:
                           1891 ;	../fb_rs.c:280: write_ok=0; 
   135B C2 01              1892 	clr	_write_ok
                           1893 ;	../fb_rs.c:281: while (!write_ok) {
   135D EE                 1894 	mov	a,r6
   135E 2E                 1895 	add	a,r6
   135F 25 E0              1896 	add	a,acc
   1361 FD                 1897 	mov	r5,a
   1362                    1898 00209$:
   1362 20 01 20           1899 	jb	_write_ok,00211$
                           1900 ;	../fb_rs.c:282: START_WRITECYCLE
   1365 75 E4 00           1901 	mov	_FMCON,#0x00
                           1902 ;	../fb_rs.c:283: FMADRH = 0x1D;//(n >> 6) + 0x1D;
   1368 75 E7 1D           1903 	mov	_FMADRH,#0x1D
                           1904 ;	../fb_rs.c:284: FMADRL = n*4;//((n & 0x3F) * 4);
   136B 8D E6              1905 	mov	_FMADRL,r5
                           1906 ;	../fb_rs.c:285: FMDATA=0xFF;					// High Byte GA schreiben
   136D 75 E5 FF           1907 	mov	_FMDATA,#0xFF
                           1908 ;	../fb_rs.c:286: FMDATA=0xFF;					// Low Byte GA schreiben
   1370 75 E5 FF           1909 	mov	_FMDATA,#0xFF
                           1910 ;	../fb_rs.c:287: FMDATA=0xFF;					// Wert
   1373 75 E5 FF           1911 	mov	_FMDATA,#0xFF
                           1912 ;	../fb_rs.c:288: FMDATA=0xFF;
   1376 75 E5 FF           1913 	mov	_FMDATA,#0xFF
                           1914 ;	../fb_rs.c:289: STOP_WRITECYCLE
   1379 75 E4 68           1915 	mov	_FMCON,#0x68
                           1916 ;	../fb_rs.c:290: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   137C E5 E4              1917 	mov	a,_FMCON
   137E 20 E0 E1           1918 	jb	acc.0,00209$
   1381 D2 01              1919 	setb	_write_ok
   1383 80 DD              1920 	sjmp	00209$
   1385                    1921 00211$:
                           1922 ;	../fb_rs.c:292: n++;
   1385 0E                 1923 	inc	r6
                           1924 ;	../fb_rs.c:293: }while(n<=62);
   1386 EE                 1925 	mov	a,r6
   1387 24 C1              1926 	add	a,#0xff - 0x3E
   1389 50 D0              1927 	jnc	00212$
                           1928 ;	../fb_rs.c:294: send_ok();//rs_send_s("OK\n");
   138B C0 07              1929 	push	ar7
   138D C0 23              1930 	push	bits
   138F 12 0A D7           1931 	lcall	_send_ok
   1392 D0 23              1932 	pop	bits
   1394 D0 07              1933 	pop	ar7
   1396                    1934 00216$:
                           1935 ;	../fb_rs.c:296: if(rsin[2]=='d' && rsin[3]=='u'  && rsinpos==7) {
   1396 74 64              1936 	mov	a,#0x64
   1398 B5 26 02           1937 	cjne	a,(_rsin + 0x0002),00519$
   139B 80 03              1938 	sjmp	00520$
   139D                    1939 00519$:
   139D 02 14 31           1940 	ljmp	00222$
   13A0                    1941 00520$:
   13A0 74 75              1942 	mov	a,#0x75
   13A2 B5 27 02           1943 	cjne	a,(_rsin + 0x0003),00521$
   13A5 80 03              1944 	sjmp	00522$
   13A7                    1945 00521$:
   13A7 02 14 31           1946 	ljmp	00222$
   13AA                    1947 00522$:
   13AA 74 07              1948 	mov	a,#0x07
   13AC B5 42 02           1949 	cjne	a,_rsinpos,00523$
   13AF 80 03              1950 	sjmp	00524$
   13B1                    1951 00523$:
   13B1 02 14 31           1952 	ljmp	00222$
   13B4                    1953 00524$:
                           1954 ;	../fb_rs.c:298: while(n<=61) {
   13B4 7E 00              1955 	mov	r6,#0x00
   13B6                    1956 00218$:
   13B6 EE                 1957 	mov	a,r6
   13B7 24 C2              1958 	add	a,#0xff - 0x3D
   13B9 40 76              1959 	jc	00222$
                           1960 ;	../fb_rs.c:299: rs_send_hex(n);
   13BB 8E 82              1961 	mov	dpl,r6
   13BD C0 07              1962 	push	ar7
   13BF C0 06              1963 	push	ar6
   13C1 C0 23              1964 	push	bits
   13C3 12 0D 9C           1965 	lcall	_rs_send_hex
   13C6 D0 23              1966 	pop	bits
                           1967 ;	../fb_rs.c:300: rs_send_s(": ");
   13C8 90 1C 6E           1968 	mov	dptr,#__str_7
   13CB 75 F0 80           1969 	mov	b,#0x80
   13CE C0 23              1970 	push	bits
   13D0 12 0D 1B           1971 	lcall	_rs_send_s
   13D3 D0 23              1972 	pop	bits
   13D5 D0 06              1973 	pop	ar6
                           1974 ;	../fb_rs.c:302: rs_send_hex_i(ga_db[n].ga);
   13D7 EE                 1975 	mov	a,r6
   13D8 2E                 1976 	add	a,r6
   13D9 25 E0              1977 	add	a,acc
   13DB FD                 1978 	mov	r5,a
   13DC F5 82              1979 	mov	dpl,a
   13DE 75 83 1D           1980 	mov	dph,#(_ga_db >> 8)
   13E1 E4                 1981 	clr	a
   13E2 93                 1982 	movc	a,@a+dptr
   13E3 FB                 1983 	mov	r3,a
   13E4 A3                 1984 	inc	dptr
   13E5 E4                 1985 	clr	a
   13E6 93                 1986 	movc	a,@a+dptr
   13E7 FC                 1987 	mov	r4,a
   13E8 8B 82              1988 	mov	dpl,r3
   13EA 8C 83              1989 	mov	dph,r4
   13EC C0 06              1990 	push	ar6
   13EE C0 05              1991 	push	ar5
   13F0 C0 23              1992 	push	bits
   13F2 12 0D 86           1993 	lcall	_rs_send_hex_i
   13F5 D0 23              1994 	pop	bits
                           1995 ;	../fb_rs.c:303: rs_send(' ');
   13F7 75 82 20           1996 	mov	dpl,#0x20
   13FA C0 23              1997 	push	bits
   13FC 12 0D BB           1998 	lcall	_rs_send
   13FF D0 23              1999 	pop	bits
   1401 D0 05              2000 	pop	ar5
                           2001 ;	../fb_rs.c:304: rs_send_hex_i(ga_db[n].val);
   1403 7C 1D              2002 	mov	r4,#(_ga_db >> 8)
   1405 8D 82              2003 	mov	dpl,r5
   1407 8C 83              2004 	mov	dph,r4
   1409 A3                 2005 	inc	dptr
   140A A3                 2006 	inc	dptr
   140B E4                 2007 	clr	a
   140C 93                 2008 	movc	a,@a+dptr
   140D FC                 2009 	mov	r4,a
   140E A3                 2010 	inc	dptr
   140F E4                 2011 	clr	a
   1410 93                 2012 	movc	a,@a+dptr
   1411 FD                 2013 	mov	r5,a
   1412 8C 82              2014 	mov	dpl,r4
   1414 8D 83              2015 	mov	dph,r5
   1416 C0 23              2016 	push	bits
   1418 12 0D 86           2017 	lcall	_rs_send_hex_i
   141B D0 23              2018 	pop	bits
                           2019 ;	../fb_rs.c:305: rs_send_s("\n");
   141D 90 1C 48           2020 	mov	dptr,#__str_4
   1420 75 F0 80           2021 	mov	b,#0x80
   1423 C0 23              2022 	push	bits
   1425 12 0D 1B           2023 	lcall	_rs_send_s
   1428 D0 23              2024 	pop	bits
   142A D0 06              2025 	pop	ar6
   142C D0 07              2026 	pop	ar7
                           2027 ;	../fb_rs.c:307: n++;
   142E 0E                 2028 	inc	r6
   142F 80 85              2029 	sjmp	00218$
   1431                    2030 00222$:
                           2031 ;	../fb_rs.c:312: if(rsin[2]=='l' && rsin[3]=='i'  && rsinpos==7) {
   1431 74 6C              2032 	mov	a,#0x6C
   1433 B5 26 02           2033 	cjne	a,(_rsin + 0x0002),00526$
   1436 80 03              2034 	sjmp	00527$
   1438                    2035 00526$:
   1438 02 15 5D           2036 	ljmp	00230$
   143B                    2037 00527$:
   143B 74 69              2038 	mov	a,#0x69
   143D B5 27 02           2039 	cjne	a,(_rsin + 0x0003),00528$
   1440 80 03              2040 	sjmp	00529$
   1442                    2041 00528$:
   1442 02 15 5D           2042 	ljmp	00230$
   1445                    2043 00529$:
   1445 74 07              2044 	mov	a,#0x07
   1447 B5 42 02           2045 	cjne	a,_rsinpos,00530$
   144A 80 03              2046 	sjmp	00531$
   144C                    2047 00530$:
   144C 02 15 5D           2048 	ljmp	00230$
   144F                    2049 00531$:
                           2050 ;	../fb_rs.c:314: while(n<=61&& ga_db[n].ga<0xFFFF) {
   144F 7E 00              2051 	mov	r6,#0x00
   1451                    2052 00226$:
   1451 EE                 2053 	mov	a,r6
   1452 24 C2              2054 	add	a,#0xff - 0x3D
   1454 50 03              2055 	jnc	00532$
   1456 02 15 52           2056 	ljmp	00228$
   1459                    2057 00532$:
   1459 EE                 2058 	mov	a,r6
   145A 2E                 2059 	add	a,r6
   145B 25 E0              2060 	add	a,acc
   145D FD                 2061 	mov	r5,a
   145E F5 82              2062 	mov	dpl,a
   1460 75 83 1D           2063 	mov	dph,#(_ga_db >> 8)
   1463 E4                 2064 	clr	a
   1464 93                 2065 	movc	a,@a+dptr
   1465 FB                 2066 	mov	r3,a
   1466 A3                 2067 	inc	dptr
   1467 E4                 2068 	clr	a
   1468 93                 2069 	movc	a,@a+dptr
   1469 FC                 2070 	mov	r4,a
   146A C3                 2071 	clr	c
   146B EB                 2072 	mov	a,r3
   146C 94 FF              2073 	subb	a,#0xFF
   146E EC                 2074 	mov	a,r4
   146F 94 FF              2075 	subb	a,#0xFF
   1471 40 03              2076 	jc	00533$
   1473 02 15 52           2077 	ljmp	00228$
   1476                    2078 00533$:
                           2079 ;	../fb_rs.c:315: rs_send_dec(((ga_db[n].ga)>>11)&0x0F);
   1476 8D 82              2080 	mov	dpl,r5
   1478 75 83 1D           2081 	mov	dph,#(_ga_db >> 8)
   147B E4                 2082 	clr	a
   147C 93                 2083 	movc	a,@a+dptr
   147D A3                 2084 	inc	dptr
   147E E4                 2085 	clr	a
   147F 93                 2086 	movc	a,@a+dptr
   1480 C4                 2087 	swap	a
   1481 23                 2088 	rl	a
   1482 54 1F              2089 	anl	a,#0x1F
   1484 FB                 2090 	mov	r3,a
   1485 74 0F              2091 	mov	a,#0x0F
   1487 5B                 2092 	anl	a,r3
   1488 F5 82              2093 	mov	dpl,a
   148A 75 83 00           2094 	mov	dph,#0x00
   148D C0 07              2095 	push	ar7
   148F C0 06              2096 	push	ar6
   1491 C0 05              2097 	push	ar5
   1493 C0 23              2098 	push	bits
   1495 12 0B AE           2099 	lcall	_rs_send_dec
   1498 D0 23              2100 	pop	bits
                           2101 ;	../fb_rs.c:316: rs_send('/');
   149A 75 82 2F           2102 	mov	dpl,#0x2F
   149D C0 23              2103 	push	bits
   149F 12 0D BB           2104 	lcall	_rs_send
   14A2 D0 23              2105 	pop	bits
   14A4 D0 05              2106 	pop	ar5
                           2107 ;	../fb_rs.c:317: rs_send_dec(((ga_db[n].ga)>>8)&0x07);
   14A6 8D 82              2108 	mov	dpl,r5
   14A8 75 83 1D           2109 	mov	dph,#(_ga_db >> 8)
   14AB E4                 2110 	clr	a
   14AC 93                 2111 	movc	a,@a+dptr
   14AD A3                 2112 	inc	dptr
   14AE E4                 2113 	clr	a
   14AF 93                 2114 	movc	a,@a+dptr
   14B0 FB                 2115 	mov	r3,a
   14B1 74 07              2116 	mov	a,#0x07
   14B3 5B                 2117 	anl	a,r3
   14B4 F5 82              2118 	mov	dpl,a
   14B6 75 83 00           2119 	mov	dph,#0x00
   14B9 C0 05              2120 	push	ar5
   14BB C0 23              2121 	push	bits
   14BD 12 0B AE           2122 	lcall	_rs_send_dec
   14C0 D0 23              2123 	pop	bits
                           2124 ;	../fb_rs.c:318: rs_send('/');
   14C2 75 82 2F           2125 	mov	dpl,#0x2F
   14C5 C0 23              2126 	push	bits
   14C7 12 0D BB           2127 	lcall	_rs_send
   14CA D0 23              2128 	pop	bits
   14CC D0 05              2129 	pop	ar5
                           2130 ;	../fb_rs.c:319: rs_send_dec((ga_db[n].ga)&0xFF);
   14CE 8D 82              2131 	mov	dpl,r5
   14D0 75 83 1D           2132 	mov	dph,#(_ga_db >> 8)
   14D3 E4                 2133 	clr	a
   14D4 93                 2134 	movc	a,@a+dptr
   14D5 FB                 2135 	mov	r3,a
   14D6 A3                 2136 	inc	dptr
   14D7 E4                 2137 	clr	a
   14D8 93                 2138 	movc	a,@a+dptr
   14D9 8B 82              2139 	mov	dpl,r3
   14DB 75 83 00           2140 	mov	dph,#0x00
   14DE C0 05              2141 	push	ar5
   14E0 C0 23              2142 	push	bits
   14E2 12 0B AE           2143 	lcall	_rs_send_dec
   14E5 D0 23              2144 	pop	bits
                           2145 ;	../fb_rs.c:320: rs_send_s("= hex");
   14E7 90 1C 71           2146 	mov	dptr,#__str_8
   14EA 75 F0 80           2147 	mov	b,#0x80
   14ED C0 23              2148 	push	bits
   14EF 12 0D 1B           2149 	lcall	_rs_send_s
   14F2 D0 23              2150 	pop	bits
   14F4 D0 05              2151 	pop	ar5
                           2152 ;	../fb_rs.c:321: rs_send_hex_i(ga_db[n].val);
   14F6 8D 03              2153 	mov	ar3,r5
   14F8 7C 1D              2154 	mov	r4,#(_ga_db >> 8)
   14FA 8B 82              2155 	mov	dpl,r3
   14FC 8C 83              2156 	mov	dph,r4
   14FE A3                 2157 	inc	dptr
   14FF A3                 2158 	inc	dptr
   1500 E4                 2159 	clr	a
   1501 93                 2160 	movc	a,@a+dptr
   1502 FB                 2161 	mov	r3,a
   1503 A3                 2162 	inc	dptr
   1504 E4                 2163 	clr	a
   1505 93                 2164 	movc	a,@a+dptr
   1506 FC                 2165 	mov	r4,a
   1507 8B 82              2166 	mov	dpl,r3
   1509 8C 83              2167 	mov	dph,r4
   150B C0 05              2168 	push	ar5
   150D C0 23              2169 	push	bits
   150F 12 0D 86           2170 	lcall	_rs_send_hex_i
   1512 D0 23              2171 	pop	bits
                           2172 ;	../fb_rs.c:322: rs_send_s(" dec ");
   1514 90 1C 77           2173 	mov	dptr,#__str_9
   1517 75 F0 80           2174 	mov	b,#0x80
   151A C0 23              2175 	push	bits
   151C 12 0D 1B           2176 	lcall	_rs_send_s
   151F D0 23              2177 	pop	bits
   1521 D0 05              2178 	pop	ar5
                           2179 ;	../fb_rs.c:323: rs_send_dec(ga_db[n].val);
   1523 7C 1D              2180 	mov	r4,#(_ga_db >> 8)
   1525 8D 82              2181 	mov	dpl,r5
   1527 8C 83              2182 	mov	dph,r4
   1529 A3                 2183 	inc	dptr
   152A A3                 2184 	inc	dptr
   152B E4                 2185 	clr	a
   152C 93                 2186 	movc	a,@a+dptr
   152D FC                 2187 	mov	r4,a
   152E A3                 2188 	inc	dptr
   152F E4                 2189 	clr	a
   1530 93                 2190 	movc	a,@a+dptr
   1531 FD                 2191 	mov	r5,a
   1532 8C 82              2192 	mov	dpl,r4
   1534 8D 83              2193 	mov	dph,r5
   1536 C0 23              2194 	push	bits
   1538 12 0B AE           2195 	lcall	_rs_send_dec
   153B D0 23              2196 	pop	bits
                           2197 ;	../fb_rs.c:326: rs_send_s("\n");
   153D 90 1C 48           2198 	mov	dptr,#__str_4
   1540 75 F0 80           2199 	mov	b,#0x80
   1543 C0 23              2200 	push	bits
   1545 12 0D 1B           2201 	lcall	_rs_send_s
   1548 D0 23              2202 	pop	bits
   154A D0 06              2203 	pop	ar6
   154C D0 07              2204 	pop	ar7
                           2205 ;	../fb_rs.c:327: n++;
   154E 0E                 2206 	inc	r6
   154F 02 14 51           2207 	ljmp	00226$
   1552                    2208 00228$:
                           2209 ;	../fb_rs.c:329: send_ok();//rs_send_s("OK\n");
   1552 C0 07              2210 	push	ar7
   1554 C0 23              2211 	push	bits
   1556 12 0A D7           2212 	lcall	_send_ok
   1559 D0 23              2213 	pop	bits
   155B D0 07              2214 	pop	ar7
   155D                    2215 00230$:
                           2216 ;	../fb_rs.c:331: if(rsin[2]=='f'&& rsin[3]=='m'){// filter mode 1/0
   155D 74 66              2217 	mov	a,#0x66
   155F B5 26 1A           2218 	cjne	a,(_rsin + 0x0002),00234$
   1562 74 6D              2219 	mov	a,#0x6D
   1564 B5 27 15           2220 	cjne	a,(_rsin + 0x0003),00234$
                           2221 ;	../fb_rs.c:332: set_filtermode(rsin[5]);
   1567 85 29 82           2222 	mov	dpl,(_rsin + 0x0005)
   156A C0 07              2223 	push	ar7
   156C C0 23              2224 	push	bits
   156E 12 0A E0           2225 	lcall	_set_filtermode
   1571 D0 23              2226 	pop	bits
                           2227 ;	../fb_rs.c:333: send_ok();//rs_send_s("OK\n");
   1573 C0 23              2228 	push	bits
   1575 12 0A D7           2229 	lcall	_send_ok
   1578 D0 23              2230 	pop	bits
   157A D0 07              2231 	pop	ar7
   157C                    2232 00234$:
                           2233 ;	../fb_rs.c:336: if(rsin[2]=='e' && rsin[3]=='c' && rsin[4]=='h' && rsin[5]=='o' && rsin[6]=='=' && rsinpos==9) {
   157C 74 65              2234 	mov	a,#0x65
   157E B5 26 5E           2235 	cjne	a,(_rsin + 0x0002),00255$
   1581 74 63              2236 	mov	a,#0x63
   1583 B5 27 59           2237 	cjne	a,(_rsin + 0x0003),00255$
   1586 74 68              2238 	mov	a,#0x68
   1588 B5 28 54           2239 	cjne	a,(_rsin + 0x0004),00255$
   158B 74 6F              2240 	mov	a,#0x6F
   158D B5 29 4F           2241 	cjne	a,(_rsin + 0x0005),00255$
   1590 74 3D              2242 	mov	a,#0x3D
   1592 B5 2A 4A           2243 	cjne	a,(_rsin + 0x0006),00255$
   1595 74 09              2244 	mov	a,#0x09
   1597 B5 42 45           2245 	cjne	a,_rsinpos,00255$
                           2246 ;	../fb_rs.c:337: write_ok=0;
   159A C2 01              2247 	clr	_write_ok
                           2248 ;	../fb_rs.c:338: while (!write_ok) {
   159C                    2249 00241$:
   159C 20 01 22           2250 	jb	_write_ok,00243$
                           2251 ;	../fb_rs.c:339: START_WRITECYCLE
   159F 75 E4 00           2252 	mov	_FMCON,#0x00
                           2253 ;	../fb_rs.c:340: FMADRH = 0x1C;
   15A2 75 E7 1C           2254 	mov	_FMADRH,#0x1C
                           2255 ;	../fb_rs.c:341: FMADRL = 0xFD;
   15A5 75 E6 FD           2256 	mov	_FMADRL,#0xFD
                           2257 ;	../fb_rs.c:342: if(rsin[7]=='0') FMDATA=0; else FMDATA=1;
   15A8 74 30              2258 	mov	a,#0x30
   15AA B5 2B 05           2259 	cjne	a,(_rsin + 0x0007),00237$
   15AD 75 E5 00           2260 	mov	_FMDATA,#0x00
   15B0 80 03              2261 	sjmp	00238$
   15B2                    2262 00237$:
   15B2 75 E5 01           2263 	mov	_FMDATA,#0x01
   15B5                    2264 00238$:
                           2265 ;	../fb_rs.c:343: STOP_WRITECYCLE
   15B5 75 E4 68           2266 	mov	_FMCON,#0x68
                           2267 ;	../fb_rs.c:344: if(!(FMCON & 0x01)) write_ok=1;	// pruefen, ob erfolgreich geflasht
   15B8 E5 E4              2268 	mov	a,_FMCON
   15BA 20 E0 DF           2269 	jb	acc.0,00241$
   15BD D2 01              2270 	setb	_write_ok
   15BF 80 DB              2271 	sjmp	00241$
   15C1                    2272 00243$:
                           2273 ;	../fb_rs.c:346: send_ok();
   15C1 C0 07              2274 	push	ar7
   15C3 C0 23              2275 	push	bits
   15C5 12 0A D7           2276 	lcall	_send_ok
   15C8 D0 23              2277 	pop	bits
   15CA D0 07              2278 	pop	ar7
   15CC 80 11              2279 	sjmp	00255$
   15CE                    2280 00254$:
                           2281 ;	../fb_rs.c:351: else if(esc!='f')// also kein ESC und esc nicht 'f'--> normaler Text mit CR am Ende
   15CE BF 66 02           2282 	cjne	r7,#0x66,00554$
   15D1 80 0C              2283 	sjmp	00255$
   15D3                    2284 00554$:
                           2285 ;	../fb_rs.c:353: send_obj_value(14);
   15D3 75 82 0E           2286 	mov	dpl,#0x0E
   15D6 C0 07              2287 	push	ar7
   15D8 12 1A 88           2288 	lcall	_send_obj_value
   15DB D0 07              2289 	pop	ar7
                           2290 ;	../fb_rs.c:354: busy=1;
   15DD D2 18              2291 	setb	b0
   15DF                    2292 00255$:
                           2293 ;	../fb_rs.c:357: if(!busy){// wenn nichts zu senden ist den Empfangspuffer löschen
   15DF 20 18 13           2294 	jb	b0,00260$
                           2295 ;	../fb_rs.c:358: for(n=0;n<30;n++) rsin[n]=0x00;
   15E2 7E 00              2296 	mov	r6,#0x00
   15E4                    2297 00282$:
   15E4 BE 1E 00           2298 	cjne	r6,#0x1E,00556$
   15E7                    2299 00556$:
   15E7 50 09              2300 	jnc	00285$
   15E9 EE                 2301 	mov	a,r6
   15EA 24 24              2302 	add	a,#_rsin
   15EC F8                 2303 	mov	r0,a
   15ED 76 00              2304 	mov	@r0,#0x00
   15EF 0E                 2305 	inc	r6
   15F0 80 F2              2306 	sjmp	00282$
   15F2                    2307 00285$:
                           2308 ;	../fb_rs.c:359: rsinpos=0;
   15F2 75 42 00           2309 	mov	_rsinpos,#0x00
   15F5                    2310 00260$:
                           2311 ;	../fb_rs.c:364: if(rsin[0]!=esc && esc!='f' && rsinpos>=14 && !busy)	// 
   15F5 EF                 2312 	mov	a,r7
   15F6 B5 24 02           2313 	cjne	a,_rsin,00558$
   15F9 80 1A              2314 	sjmp	00264$
   15FB                    2315 00558$:
   15FB BF 66 02           2316 	cjne	r7,#0x66,00559$
   15FE 80 15              2317 	sjmp	00264$
   1600                    2318 00559$:
   1600 74 F2              2319 	mov	a,#0x100 - 0x0E
   1602 25 42              2320 	add	a,_rsinpos
   1604 50 0F              2321 	jnc	00264$
   1606 20 18 0C           2322 	jb	b0,00264$
                           2323 ;	../fb_rs.c:366: send_obj_value(14);
   1609 75 82 0E           2324 	mov	dpl,#0x0E
   160C C0 07              2325 	push	ar7
   160E 12 1A 88           2326 	lcall	_send_obj_value
   1611 D0 07              2327 	pop	ar7
                           2328 ;	../fb_rs.c:367: busy=1;
   1613 D2 18              2329 	setb	b0
   1615                    2330 00264$:
                           2331 ;	../fb_rs.c:372: if(tel_sent && fb_state==0 && (TH1<0XC0) && (!wait_for_ack))//wenn tele gesendet ist
   1615 30 0A 36           2332 	jnb	_tel_sent,00269$
   1618 E5 74              2333 	mov	a,_fb_state
   161A 70 32              2334 	jnz	00269$
   161C 74 40              2335 	mov	a,#0x100 - 0xC0
   161E 25 8D              2336 	add	a,_TH1
   1620 40 2C              2337 	jc	00269$
   1622 20 0D 29           2338 	jb	_wait_for_ack,00269$
                           2339 ;	../fb_rs.c:374: process_tel();
   1625 C0 07              2340 	push	ar7
   1627 12 1A BB           2341 	lcall	_process_tel
   162A D0 07              2342 	pop	ar7
                           2343 ;	../fb_rs.c:375: tel_sent=0;
   162C C2 0A              2344 	clr	_tel_sent
                           2345 ;	../fb_rs.c:376: for(n=0;n<30;n++) rsin[n]=0x00;
   162E 7E 00              2346 	mov	r6,#0x00
   1630                    2347 00286$:
   1630 BE 1E 00           2348 	cjne	r6,#0x1E,00566$
   1633                    2349 00566$:
   1633 50 09              2350 	jnc	00289$
   1635 EE                 2351 	mov	a,r6
   1636 24 24              2352 	add	a,#_rsin
   1638 F8                 2353 	mov	r0,a
   1639 76 00              2354 	mov	@r0,#0x00
   163B 0E                 2355 	inc	r6
   163C 80 F2              2356 	sjmp	00286$
   163E                    2357 00289$:
                           2358 ;	../fb_rs.c:377: rsinpos=0;
   163E 75 42 00           2359 	mov	_rsinpos,#0x00
                           2360 ;	../fb_rs.c:378: busy=0;
   1641 C2 18              2361 	clr	b0
                           2362 ;	../fb_rs.c:379: send_ok();//rs_send_s("OK\n");
   1643 C0 07              2363 	push	ar7
   1645 C0 23              2364 	push	bits
   1647 12 0A D7           2365 	lcall	_send_ok
   164A D0 23              2366 	pop	bits
   164C D0 07              2367 	pop	ar7
   164E                    2368 00269$:
                           2369 ;	../fb_rs.c:381: if (tel_arrived ){//&& fb_state==13 //|| (tel_sent&& (telegramm[0]&0x20))
   164E 20 09 03           2370 	jb	_tel_arrived,00568$
   1651 02 0E FE           2371 	ljmp	00275$
   1654                    2372 00568$:
                           2373 ;	../fb_rs.c:382: process_tel();
   1654 C0 07              2374 	push	ar7
   1656 C0 23              2375 	push	bits
   1658 12 1A BB           2376 	lcall	_process_tel
   165B D0 23              2377 	pop	bits
   165D D0 07              2378 	pop	ar7
                           2379 ;	../fb_rs.c:384: } while(1);
   165F 02 0E FE           2380 	ljmp	00275$
   1662 15 81              2381 	dec	sp
   1664 D0 10              2382 	pop	_bp
   1666 22                 2383 	ret
                           2384 	.area CSEG    (CODE)
                           2385 	.area CONST   (CODE)
   1C09                    2386 _hex:
   1C09 30                 2387 	.db #0x30	; 48	'0'
   1C0A 31                 2388 	.db #0x31	; 49	'1'
   1C0B 32                 2389 	.db #0x32	; 50	'2'
   1C0C 33                 2390 	.db #0x33	; 51	'3'
   1C0D 34                 2391 	.db #0x34	; 52	'4'
   1C0E 35                 2392 	.db #0x35	; 53	'5'
   1C0F 36                 2393 	.db #0x36	; 54	'6'
   1C10 37                 2394 	.db #0x37	; 55	'7'
   1C11 38                 2395 	.db #0x38	; 56	'8'
   1C12 39                 2396 	.db #0x39	; 57	'9'
   1C13 41                 2397 	.db #0x41	; 65	'A'
   1C14 42                 2398 	.db #0x42	; 66	'B'
   1C15 43                 2399 	.db #0x43	; 67	'C'
   1C16 44                 2400 	.db #0x44	; 68	'D'
   1C17 45                 2401 	.db #0x45	; 69	'E'
   1C18 46                 2402 	.db #0x46	; 70	'F'
   1C19                    2403 __str_0:
   1C19 4B 75 62 69 27 73  2404 	.ascii "Kubi's RS-interface V3.00 "
        20 52 53 2D 69 6E
        74 65 72 66 61 63
        65 20 56 33 2E 30
        30 20
   1C33 00                 2405 	.db 0x00
   1C34                    2406 __str_1:
   1C34 31 31 35 32        2407 	.ascii "1152"
   1C38 00                 2408 	.db 0x00
   1C39                    2409 __str_2:
   1C39 30 30 20 42 61 75  2410 	.ascii "00 Baud. "
        64 2E 20
   1C42 00                 2411 	.db 0x00
   1C43                    2412 __str_3:
   1C43 45 73 63 3D        2413 	.ascii "Esc="
   1C47 00                 2414 	.db 0x00
   1C48                    2415 __str_4:
   1C48 0A                 2416 	.db 0x0A
   1C49 00                 2417 	.db 0x00
   1C4A                    2418 __str_5:
   1C4A 66 69 6C 74 65 72  2419 	.ascii "filtered"
        65 64
   1C52 0A                 2420 	.db 0x0A
   1C53 00                 2421 	.db 0x00
   1C54                    2422 __str_6:
   1C54 65 72 72 6F 72 3A  2423 	.ascii "error: unknown baudrate!"
        20 75 6E 6B 6E 6F
        77 6E 20 62 61 75
        64 72 61 74 65 21
   1C6C 0A                 2424 	.db 0x0A
   1C6D 00                 2425 	.db 0x00
   1C6E                    2426 __str_7:
   1C6E 3A 20              2427 	.ascii ": "
   1C70 00                 2428 	.db 0x00
   1C71                    2429 __str_8:
   1C71 3D 20 68 65 78     2430 	.ascii "= hex"
   1C76 00                 2431 	.db 0x00
   1C77                    2432 __str_9:
   1C77 20 64 65 63 20     2433 	.ascii " dec "
   1C7C 00                 2434 	.db 0x00
                           2435 	.area XINIT   (CODE)
                           2436 	.area CABS    (ABS,CODE)
