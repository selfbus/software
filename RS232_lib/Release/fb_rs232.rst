                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Fri Oct 19 23:08:49 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_rs232
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _hex
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
                            148 	.globl _rs_init
                            149 	.globl _rs_send_dec
                            150 	.globl _rs_send_s
                            151 	.globl _rs_send_hex_l
                            152 	.globl _rs_send_hex_i
                            153 	.globl _rs_send_hex
                            154 	.globl _rs_send
                            155 ;--------------------------------------------------------
                            156 ; special function registers
                            157 ;--------------------------------------------------------
                            158 	.area RSEG    (ABS,DATA)
   0000                     159 	.org 0x0000
                    0080    160 _P0	=	0x0080
                    0090    161 _P1	=	0x0090
                    00B0    162 _P3	=	0x00b0
                    00D0    163 _PSW	=	0x00d0
                    00E0    164 _ACC	=	0x00e0
                    00F0    165 _B	=	0x00f0
                    0081    166 _SP	=	0x0081
                    0082    167 _DPL	=	0x0082
                    0083    168 _DPH	=	0x0083
                    0087    169 _PCON	=	0x0087
                    0088    170 _TCON	=	0x0088
                    0089    171 _TMOD	=	0x0089
                    008A    172 _TL0	=	0x008a
                    008B    173 _TL1	=	0x008b
                    008C    174 _TH0	=	0x008c
                    008D    175 _TH1	=	0x008d
                    00A8    176 _IEN0	=	0x00a8
                    00B8    177 _IP0	=	0x00b8
                    0098    178 _SCON	=	0x0098
                    0099    179 _SBUF	=	0x0099
                    00A2    180 _AUXR1	=	0x00a2
                    00A9    181 _SADDR	=	0x00a9
                    00B9    182 _SADEN	=	0x00b9
                    00BE    183 _BRGR0	=	0x00be
                    00BF    184 _BRGR1	=	0x00bf
                    00BD    185 _BRGCON	=	0x00bd
                    00AC    186 _CMP1	=	0x00ac
                    00AD    187 _CMP2	=	0x00ad
                    0095    188 _DIVM	=	0x0095
                    00E7    189 _FMADRH	=	0x00e7
                    00E6    190 _FMADRL	=	0x00e6
                    00E4    191 _FMCON	=	0x00e4
                    00E5    192 _FMDATA	=	0x00e5
                    00DB    193 _I2ADR	=	0x00db
                    00D8    194 _I2CON	=	0x00d8
                    00DA    195 _I2DAT	=	0x00da
                    00DD    196 _I2SCLH	=	0x00dd
                    00DC    197 _I2SCLL	=	0x00dc
                    00D9    198 _I2STAT	=	0x00d9
                    00F8    199 _IP1	=	0x00f8
                    00F7    200 _IP1H	=	0x00f7
                    0094    201 _KBCON	=	0x0094
                    0086    202 _KBMASK	=	0x0086
                    0093    203 _KBPATN	=	0x0093
                    0084    204 _P0M1	=	0x0084
                    0085    205 _P0M2	=	0x0085
                    0091    206 _P1M1	=	0x0091
                    0092    207 _P1M2	=	0x0092
                    00B1    208 _P3M1	=	0x00b1
                    00B2    209 _P3M2	=	0x00b2
                    00B5    210 _PCONA	=	0x00b5
                    00F6    211 _PT0AD	=	0x00f6
                    00DF    212 _RSTSRC	=	0x00df
                    00D1    213 _RTCCON	=	0x00d1
                    00D2    214 _RTCH	=	0x00d2
                    00D3    215 _RTCL	=	0x00d3
                    00BA    216 _SSTAT	=	0x00ba
                    008F    217 _TAMOD	=	0x008f
                    0096    218 _TRIM	=	0x0096
                    00A7    219 _WDCON	=	0x00a7
                    00C1    220 _WDL	=	0x00c1
                    00C2    221 _WFEED1	=	0x00c2
                    00C3    222 _WFEED2	=	0x00c3
                    00B7    223 _IP0H	=	0x00b7
                    00E8    224 _IEN1	=	0x00e8
                            225 ;--------------------------------------------------------
                            226 ; special function bits
                            227 ;--------------------------------------------------------
                            228 	.area RSEG    (ABS,DATA)
   0000                     229 	.org 0x0000
                    00D0    230 _PSW_0	=	0x00d0
                    00D1    231 _PSW_1	=	0x00d1
                    00D2    232 _PSW_2	=	0x00d2
                    00D3    233 _PSW_3	=	0x00d3
                    00D4    234 _PSW_4	=	0x00d4
                    00D5    235 _PSW_5	=	0x00d5
                    00D6    236 _PSW_6	=	0x00d6
                    00D7    237 _PSW_7	=	0x00d7
                    008F    238 _TCON_7	=	0x008f
                    008E    239 _TCON_6	=	0x008e
                    008D    240 _TCON_5	=	0x008d
                    008C    241 _TCON_4	=	0x008c
                    008B    242 _TCON_3	=	0x008b
                    008A    243 _TCON_2	=	0x008a
                    0089    244 _TCON_1	=	0x0089
                    0088    245 _TCON_0	=	0x0088
                    00AF    246 _IEN0_7	=	0x00af
                    00AE    247 _IEN0_6	=	0x00ae
                    00AD    248 _IEN0_5	=	0x00ad
                    00AC    249 _IEN0_4	=	0x00ac
                    00AB    250 _IEN0_3	=	0x00ab
                    00AA    251 _IEN0_2	=	0x00aa
                    00A9    252 _IEN0_1	=	0x00a9
                    00A8    253 _IEN0_0	=	0x00a8
                    00EA    254 _IEN1_2	=	0x00ea
                    00E9    255 _IEN1_1	=	0x00e9
                    00E8    256 _IEN1_0	=	0x00e8
                    00FE    257 _IP1_6	=	0x00fe
                    00FA    258 _IP1_2	=	0x00fa
                    00F9    259 _IP1_1	=	0x00f9
                    00F8    260 _IP1_0	=	0x00f8
                    00BE    261 _IP0_6	=	0x00be
                    00BD    262 _IP0_5	=	0x00bd
                    00BC    263 _IP0_4	=	0x00bc
                    00BB    264 _IP0_3	=	0x00bb
                    00BA    265 _IP0_2	=	0x00ba
                    00B9    266 _IP0_1	=	0x00b9
                    00B8    267 _IP0_0	=	0x00b8
                    0098    268 _SCON_0	=	0x0098
                    0099    269 _SCON_1	=	0x0099
                    009A    270 _SCON_2	=	0x009a
                    009B    271 _SCON_3	=	0x009b
                    009C    272 _SCON_4	=	0x009c
                    009D    273 _SCON_5	=	0x009d
                    009E    274 _SCON_6	=	0x009e
                    009F    275 _SCON_7	=	0x009f
                    00DE    276 _I2CON_6	=	0x00de
                    00DD    277 _I2CON_5	=	0x00dd
                    00DC    278 _I2CON_4	=	0x00dc
                    00DB    279 _I2CON_3	=	0x00db
                    00DA    280 _I2CON_2	=	0x00da
                    00D8    281 _I2CON_0	=	0x00d8
                    0080    282 _P0_0	=	0x0080
                    0081    283 _P0_1	=	0x0081
                    0082    284 _P0_2	=	0x0082
                    0083    285 _P0_3	=	0x0083
                    0084    286 _P0_4	=	0x0084
                    0085    287 _P0_5	=	0x0085
                    0086    288 _P0_6	=	0x0086
                    0087    289 _P0_7	=	0x0087
                    0090    290 _P1_0	=	0x0090
                    0091    291 _P1_1	=	0x0091
                    0092    292 _P1_2	=	0x0092
                    0093    293 _P1_3	=	0x0093
                    0094    294 _P1_4	=	0x0094
                    0095    295 _P1_5	=	0x0095
                    0096    296 _P1_6	=	0x0096
                    0097    297 _P1_7	=	0x0097
                    00B0    298 _P3_0	=	0x00b0
                    00B1    299 _P3_1	=	0x00b1
                            300 ;--------------------------------------------------------
                            301 ; overlayable register banks
                            302 ;--------------------------------------------------------
                            303 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     304 	.ds 8
                            305 ;--------------------------------------------------------
                            306 ; overlayable bit register bank
                            307 ;--------------------------------------------------------
                            308 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     309 bits:
   0023                     310 	.ds 1
                    8000    311 	b0 = bits[0]
                    8100    312 	b1 = bits[1]
                    8200    313 	b2 = bits[2]
                    8300    314 	b3 = bits[3]
                    8400    315 	b4 = bits[4]
                    8500    316 	b5 = bits[5]
                    8600    317 	b6 = bits[6]
                    8700    318 	b7 = bits[7]
                            319 ;--------------------------------------------------------
                            320 ; internal ram data
                            321 ;--------------------------------------------------------
                            322 	.area DSEG    (DATA)
                            323 ;--------------------------------------------------------
                            324 ; overlayable items in internal ram 
                            325 ;--------------------------------------------------------
                            326 ;--------------------------------------------------------
                            327 ; indirectly addressable internal ram data
                            328 ;--------------------------------------------------------
                            329 	.area ISEG    (DATA)
                            330 ;--------------------------------------------------------
                            331 ; absolute internal ram data
                            332 ;--------------------------------------------------------
                            333 	.area IABS    (ABS,DATA)
                            334 	.area IABS    (ABS,DATA)
                            335 ;--------------------------------------------------------
                            336 ; bit data
                            337 ;--------------------------------------------------------
                            338 	.area BSEG    (BIT)
                            339 ;--------------------------------------------------------
                            340 ; paged external ram data
                            341 ;--------------------------------------------------------
                            342 	.area PSEG    (PAG,XDATA)
                            343 ;--------------------------------------------------------
                            344 ; external ram data
                            345 ;--------------------------------------------------------
                            346 	.area XSEG    (XDATA)
                            347 ;--------------------------------------------------------
                            348 ; absolute external ram data
                            349 ;--------------------------------------------------------
                            350 	.area XABS    (ABS,XDATA)
                            351 ;--------------------------------------------------------
                            352 ; external initialized ram data
                            353 ;--------------------------------------------------------
                            354 	.area XISEG   (XDATA)
                            355 	.area HOME    (CODE)
                            356 	.area GSINIT0 (CODE)
                            357 	.area GSINIT1 (CODE)
                            358 	.area GSINIT2 (CODE)
                            359 	.area GSINIT3 (CODE)
                            360 	.area GSINIT4 (CODE)
                            361 	.area GSINIT5 (CODE)
                            362 	.area GSINIT  (CODE)
                            363 	.area GSFINAL (CODE)
                            364 	.area CSEG    (CODE)
                            365 ;--------------------------------------------------------
                            366 ; global & static initialisations
                            367 ;--------------------------------------------------------
                            368 	.area HOME    (CODE)
                            369 	.area GSINIT  (CODE)
                            370 	.area GSFINAL (CODE)
                            371 	.area GSINIT  (CODE)
                            372 ;--------------------------------------------------------
                            373 ; Home
                            374 ;--------------------------------------------------------
                            375 	.area HOME    (CODE)
                            376 	.area HOME    (CODE)
                            377 ;--------------------------------------------------------
                            378 ; code
                            379 ;--------------------------------------------------------
                            380 	.area CSEG    (CODE)
                            381 ;------------------------------------------------------------
                            382 ;Allocation info for local variables in function 'rs_init'
                            383 ;------------------------------------------------------------
                            384 ;baudrate                  Allocated to registers r6 r7 
                            385 ;brg                       Allocated to registers r4 r5 
                            386 ;------------------------------------------------------------
                            387 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:23: void rs_init(unsigned baudrate)
                            388 ;	-----------------------------------------
                            389 ;	 function rs_init
                            390 ;	-----------------------------------------
   132F                     391 _rs_init:
                    0007    392 	ar7 = 0x07
                    0006    393 	ar6 = 0x06
                    0005    394 	ar5 = 0x05
                    0004    395 	ar4 = 0x04
                    0003    396 	ar3 = 0x03
                    0002    397 	ar2 = 0x02
                    0001    398 	ar1 = 0x01
                    0000    399 	ar0 = 0x00
   132F AE 82               400 	mov	r6,dpl
   1331 AF 83               401 	mov	r7,dph
                            402 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:27: brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
   1333 7C 30               403 	mov	r4,#0x30
   1335 7D 00               404 	mov	r5,#0x00
                            405 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:28: if(baudrate==3)	// 300 Baud
   1337 BE 03 07            406 	cjne	r6,#0x03,00102$
   133A BF 00 04            407 	cjne	r7,#0x00,00102$
                            408 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:29: brg=0x5FF0;
   133D 7C F0               409 	mov	r4,#0xF0
   133F 7D 5F               410 	mov	r5,#0x5F
   1341                     411 00102$:
                            412 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:30: if(baudrate==6)		// 600 Baud
   1341 BE 06 07            413 	cjne	r6,#0x06,00104$
   1344 BF 00 04            414 	cjne	r7,#0x00,00104$
                            415 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:31: brg=0x2FF0;
   1347 7C F0               416 	mov	r4,#0xF0
   1349 7D 2F               417 	mov	r5,#0x2F
   134B                     418 00104$:
                            419 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:32: if(baudrate==12)	// 1200 Baud
   134B BE 0C 07            420 	cjne	r6,#0x0C,00106$
   134E BF 00 04            421 	cjne	r7,#0x00,00106$
                            422 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:33: brg=0x17F0;
   1351 7C F0               423 	mov	r4,#0xF0
   1353 7D 17               424 	mov	r5,#0x17
   1355                     425 00106$:
                            426 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:34: if(baudrate==24)	// 2400 Baud
   1355 BE 18 07            427 	cjne	r6,#0x18,00108$
   1358 BF 00 04            428 	cjne	r7,#0x00,00108$
                            429 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:35: brg=0x2FF0;
   135B 7C F0               430 	mov	r4,#0xF0
   135D 7D 2F               431 	mov	r5,#0x2F
   135F                     432 00108$:
                            433 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:36: if(baudrate==48)	// 4800 Baud
   135F BE 30 07            434 	cjne	r6,#0x30,00110$
   1362 BF 00 04            435 	cjne	r7,#0x00,00110$
                            436 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:37: brg=0x05F0;
   1365 7C F0               437 	mov	r4,#0xF0
   1367 7D 05               438 	mov	r5,#0x05
   1369                     439 00110$:
                            440 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:38: if(baudrate==96)	// 9600 Baud
   1369 BE 60 07            441 	cjne	r6,#0x60,00112$
   136C BF 00 04            442 	cjne	r7,#0x00,00112$
                            443 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:39: brg=0x02F0;
   136F 7C F0               444 	mov	r4,#0xF0
   1371 7D 02               445 	mov	r5,#0x02
   1373                     446 00112$:
                            447 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:40: if(baudrate==192)	// 19200 Baud
   1373 BE C0 07            448 	cjne	r6,#0xC0,00114$
   1376 BF 00 04            449 	cjne	r7,#0x00,00114$
                            450 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:41: brg=0x0170;
   1379 7C 70               451 	mov	r4,#0x70
   137B 7D 01               452 	mov	r5,#0x01
   137D                     453 00114$:
                            454 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:42: if(baudrate==384)	// 38400 Baud
   137D BE 80 07            455 	cjne	r6,#0x80,00116$
   1380 BF 01 04            456 	cjne	r7,#0x01,00116$
                            457 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:43: brg=0x00B0;
   1383 7C B0               458 	mov	r4,#0xB0
   1385 7D 00               459 	mov	r5,#0x00
   1387                     460 00116$:
                            461 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:44: if(baudrate==576)	// 57600 Baud
   1387 BE 40 07            462 	cjne	r6,#0x40,00118$
   138A BF 02 04            463 	cjne	r7,#0x02,00118$
                            464 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:45: brg=0x0070;
   138D 7C 70               465 	mov	r4,#0x70
   138F 7D 00               466 	mov	r5,#0x00
   1391                     467 00118$:
                            468 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:48: BRGCON&=0xFE;	// Baudrate Generator stoppen
   1391 53 BD FE            469 	anl	_BRGCON,#0xFE
                            470 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:49: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   1394 53 91 FC            471 	anl	_P1M1,#0xFC
                            472 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:50: P1M2&=0xFC;
   1397 53 92 FC            473 	anl	_P1M2,#0xFC
                            474 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:51: SCON=0x50;		// Mode 1, receive enable
   139A 75 98 50            475 	mov	_SCON,#0x50
                            476 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:52: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   139D 43 BA E0            477 	orl	_SSTAT,#0xE0
                            478 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:53: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   13A0 43 BD 02            479 	orl	_BRGCON,#0x02
                            480 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:54: BRGR1=brg>>8;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
   13A3 8D BF               481 	mov	_BRGR1,r5
                            482 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:55: BRGR0=brg;
   13A5 8C BE               483 	mov	_BRGR0,r4
                            484 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:56: BRGCON|=0x01;	// Baudrate Generator starten
   13A7 43 BD 01            485 	orl	_BRGCON,#0x01
                            486 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:57: TI=1;
   13AA D2 99               487 	setb	_SCON_1
   13AC 22                  488 	ret
                            489 ;------------------------------------------------------------
                            490 ;Allocation info for local variables in function 'rs_send_dec'
                            491 ;------------------------------------------------------------
                            492 ;wert                      Allocated to stack - _bp +1
                            493 ;n                         Allocated to registers r4 r5 
                            494 ;zero                      Allocated to registers b0 
                            495 ;------------------------------------------------------------
                            496 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:106: void rs_send_dec(unsigned int wert)
                            497 ;	-----------------------------------------
                            498 ;	 function rs_send_dec
                            499 ;	-----------------------------------------
   13AD                     500 _rs_send_dec:
   13AD C0 10               501 	push	_bp
   13AF 85 81 10            502 	mov	_bp,sp
   13B2 C0 82               503 	push	dpl
   13B4 C0 83               504 	push	dph
                            505 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:112: zero=1;
   13B6 D2 18               506 	setb	b0
                            507 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:114: n=0;
   13B8 7C 00               508 	mov	r4,#0x00
   13BA 7D 00               509 	mov	r5,#0x00
                            510 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:115: while(wert>=10000){
   13BC 7A 00               511 	mov	r2,#0x00
   13BE 7B 00               512 	mov	r3,#0x00
   13C0 A8 10               513 	mov	r0,_bp
   13C2 08                  514 	inc	r0
   13C3 86 06               515 	mov	ar6,@r0
   13C5 08                  516 	inc	r0
   13C6 86 07               517 	mov	ar7,@r0
   13C8                     518 00101$:
   13C8 C3                  519 	clr	c
   13C9 EE                  520 	mov	a,r6
   13CA 94 10               521 	subb	a,#0x10
   13CC EF                  522 	mov	a,r7
   13CD 94 27               523 	subb	a,#0x27
   13CF 40 1B               524 	jc	00162$
                            525 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:116: n++;
   13D1 0A                  526 	inc	r2
   13D2 BA 00 01            527 	cjne	r2,#0x00,00188$
   13D5 0B                  528 	inc	r3
   13D6                     529 00188$:
   13D6 8A 04               530 	mov	ar4,r2
   13D8 8B 05               531 	mov	ar5,r3
                            532 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:117: wert-=10000;
   13DA EE                  533 	mov	a,r6
   13DB 24 F0               534 	add	a,#0xF0
   13DD FE                  535 	mov	r6,a
   13DE EF                  536 	mov	a,r7
   13DF 34 D8               537 	addc	a,#0xD8
   13E1 FF                  538 	mov	r7,a
   13E2 A8 10               539 	mov	r0,_bp
   13E4 08                  540 	inc	r0
   13E5 A6 06               541 	mov	@r0,ar6
   13E7 08                  542 	inc	r0
   13E8 A6 07               543 	mov	@r0,ar7
   13EA 80 DC               544 	sjmp	00101$
   13EC                     545 00162$:
   13EC 8A 04               546 	mov	ar4,r2
   13EE 8B 05               547 	mov	ar5,r3
   13F0 A8 10               548 	mov	r0,_bp
   13F2 08                  549 	inc	r0
   13F3 A6 06               550 	mov	@r0,ar6
   13F5 08                  551 	inc	r0
   13F6 A6 07               552 	mov	@r0,ar7
                            553 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:119: if(n>0)
   13F8 EA                  554 	mov	a,r2
   13F9 4B                  555 	orl	a,r3
   13FA 60 0E               556 	jz	00108$
                            557 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:121: while(!TI);
   13FC                     558 00104$:
                            559 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:122: TI=0;
   13FC 10 99 02            560 	jbc	_SCON_1,00190$
   13FF 80 FB               561 	sjmp	00104$
   1401                     562 00190$:
                            563 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:123: SBUF=n+48;
   1401 8C 07               564 	mov	ar7,r4
   1403 74 30               565 	mov	a,#0x30
   1405 2F                  566 	add	a,r7
   1406 F5 99               567 	mov	_SBUF,a
                            568 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:124: zero=0;
   1408 C2 18               569 	clr	b0
   140A                     570 00108$:
                            571 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:127: n=0;
   140A 7C 00               572 	mov	r4,#0x00
   140C 7D 00               573 	mov	r5,#0x00
                            574 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:128: while(wert>=1000){
   140E 7E 00               575 	mov	r6,#0x00
   1410 7F 00               576 	mov	r7,#0x00
   1412 A8 10               577 	mov	r0,_bp
   1414 08                  578 	inc	r0
   1415 86 02               579 	mov	ar2,@r0
   1417 08                  580 	inc	r0
   1418 86 03               581 	mov	ar3,@r0
   141A                     582 00109$:
   141A C3                  583 	clr	c
   141B EA                  584 	mov	a,r2
   141C 94 E8               585 	subb	a,#0xE8
   141E EB                  586 	mov	a,r3
   141F 94 03               587 	subb	a,#0x03
   1421 40 1B               588 	jc	00163$
                            589 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:129: n++;
   1423 0E                  590 	inc	r6
   1424 BE 00 01            591 	cjne	r6,#0x00,00192$
   1427 0F                  592 	inc	r7
   1428                     593 00192$:
   1428 8E 04               594 	mov	ar4,r6
   142A 8F 05               595 	mov	ar5,r7
                            596 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:130: wert-=1000;
   142C EA                  597 	mov	a,r2
   142D 24 18               598 	add	a,#0x18
   142F FA                  599 	mov	r2,a
   1430 EB                  600 	mov	a,r3
   1431 34 FC               601 	addc	a,#0xFC
   1433 FB                  602 	mov	r3,a
   1434 A8 10               603 	mov	r0,_bp
   1436 08                  604 	inc	r0
   1437 A6 02               605 	mov	@r0,ar2
   1439 08                  606 	inc	r0
   143A A6 03               607 	mov	@r0,ar3
   143C 80 DC               608 	sjmp	00109$
   143E                     609 00163$:
   143E 8E 04               610 	mov	ar4,r6
   1440 8F 05               611 	mov	ar5,r7
   1442 A8 10               612 	mov	r0,_bp
   1444 08                  613 	inc	r0
   1445 A6 02               614 	mov	@r0,ar2
   1447 08                  615 	inc	r0
   1448 A6 03               616 	mov	@r0,ar3
                            617 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:132: if(n>0 || !zero)
   144A EE                  618 	mov	a,r6
   144B 4F                  619 	orl	a,r7
   144C 70 03               620 	jnz	00112$
   144E 20 18 0E            621 	jb	b0,00116$
                            622 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:134: while(!TI);
   1451                     623 00112$:
                            624 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:135: TI=0;
   1451 10 99 02            625 	jbc	_SCON_1,00195$
   1454 80 FB               626 	sjmp	00112$
   1456                     627 00195$:
                            628 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:136: SBUF=n+48;
   1456 8C 07               629 	mov	ar7,r4
   1458 74 30               630 	mov	a,#0x30
   145A 2F                  631 	add	a,r7
   145B F5 99               632 	mov	_SBUF,a
                            633 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:137: zero=0;
   145D C2 18               634 	clr	b0
   145F                     635 00116$:
                            636 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:139: n=0;
   145F 7C 00               637 	mov	r4,#0x00
   1461 7D 00               638 	mov	r5,#0x00
                            639 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:140: while(wert>=100){
   1463 7E 00               640 	mov	r6,#0x00
   1465 7F 00               641 	mov	r7,#0x00
   1467 A8 10               642 	mov	r0,_bp
   1469 08                  643 	inc	r0
   146A 86 02               644 	mov	ar2,@r0
   146C 08                  645 	inc	r0
   146D 86 03               646 	mov	ar3,@r0
   146F                     647 00118$:
   146F C3                  648 	clr	c
   1470 EA                  649 	mov	a,r2
   1471 94 64               650 	subb	a,#0x64
   1473 EB                  651 	mov	a,r3
   1474 94 00               652 	subb	a,#0x00
   1476 40 1B               653 	jc	00164$
                            654 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:141: n++;
   1478 0E                  655 	inc	r6
   1479 BE 00 01            656 	cjne	r6,#0x00,00197$
   147C 0F                  657 	inc	r7
   147D                     658 00197$:
   147D 8E 04               659 	mov	ar4,r6
   147F 8F 05               660 	mov	ar5,r7
                            661 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:142: wert-=100;
   1481 EA                  662 	mov	a,r2
   1482 24 9C               663 	add	a,#0x9C
   1484 FA                  664 	mov	r2,a
   1485 EB                  665 	mov	a,r3
   1486 34 FF               666 	addc	a,#0xFF
   1488 FB                  667 	mov	r3,a
   1489 A8 10               668 	mov	r0,_bp
   148B 08                  669 	inc	r0
   148C A6 02               670 	mov	@r0,ar2
   148E 08                  671 	inc	r0
   148F A6 03               672 	mov	@r0,ar3
   1491 80 DC               673 	sjmp	00118$
   1493                     674 00164$:
   1493 8E 04               675 	mov	ar4,r6
   1495 8F 05               676 	mov	ar5,r7
   1497 A8 10               677 	mov	r0,_bp
   1499 08                  678 	inc	r0
   149A A6 02               679 	mov	@r0,ar2
   149C 08                  680 	inc	r0
   149D A6 03               681 	mov	@r0,ar3
                            682 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:144: if(n>0 || !zero)
   149F EE                  683 	mov	a,r6
   14A0 4F                  684 	orl	a,r7
   14A1 70 03               685 	jnz	00121$
   14A3 20 18 0E            686 	jb	b0,00125$
                            687 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:146: while(!TI);
   14A6                     688 00121$:
                            689 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:147: TI=0;
   14A6 10 99 02            690 	jbc	_SCON_1,00200$
   14A9 80 FB               691 	sjmp	00121$
   14AB                     692 00200$:
                            693 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:148: SBUF=n+48;
   14AB 8C 07               694 	mov	ar7,r4
   14AD 74 30               695 	mov	a,#0x30
   14AF 2F                  696 	add	a,r7
   14B0 F5 99               697 	mov	_SBUF,a
                            698 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:149: zero=0;
   14B2 C2 18               699 	clr	b0
   14B4                     700 00125$:
                            701 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:152: n=0;
   14B4 7C 00               702 	mov	r4,#0x00
   14B6 7D 00               703 	mov	r5,#0x00
                            704 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:153: while(wert>=10){
   14B8 7E 00               705 	mov	r6,#0x00
   14BA 7F 00               706 	mov	r7,#0x00
   14BC A8 10               707 	mov	r0,_bp
   14BE 08                  708 	inc	r0
   14BF 86 02               709 	mov	ar2,@r0
   14C1 08                  710 	inc	r0
   14C2 86 03               711 	mov	ar3,@r0
   14C4                     712 00127$:
   14C4 C3                  713 	clr	c
   14C5 EA                  714 	mov	a,r2
   14C6 94 0A               715 	subb	a,#0x0A
   14C8 EB                  716 	mov	a,r3
   14C9 94 00               717 	subb	a,#0x00
   14CB 40 1B               718 	jc	00165$
                            719 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:154: n++;
   14CD 0E                  720 	inc	r6
   14CE BE 00 01            721 	cjne	r6,#0x00,00202$
   14D1 0F                  722 	inc	r7
   14D2                     723 00202$:
   14D2 8E 04               724 	mov	ar4,r6
   14D4 8F 05               725 	mov	ar5,r7
                            726 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:155: wert-=10;
   14D6 EA                  727 	mov	a,r2
   14D7 24 F6               728 	add	a,#0xF6
   14D9 FA                  729 	mov	r2,a
   14DA EB                  730 	mov	a,r3
   14DB 34 FF               731 	addc	a,#0xFF
   14DD FB                  732 	mov	r3,a
   14DE A8 10               733 	mov	r0,_bp
   14E0 08                  734 	inc	r0
   14E1 A6 02               735 	mov	@r0,ar2
   14E3 08                  736 	inc	r0
   14E4 A6 03               737 	mov	@r0,ar3
   14E6 80 DC               738 	sjmp	00127$
   14E8                     739 00165$:
   14E8 8E 04               740 	mov	ar4,r6
   14EA 8F 05               741 	mov	ar5,r7
   14EC A8 10               742 	mov	r0,_bp
   14EE 08                  743 	inc	r0
   14EF A6 02               744 	mov	@r0,ar2
   14F1 08                  745 	inc	r0
   14F2 A6 03               746 	mov	@r0,ar3
                            747 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:157: if(n>0 || !zero)
   14F4 EE                  748 	mov	a,r6
   14F5 4F                  749 	orl	a,r7
   14F6 70 03               750 	jnz	00130$
   14F8 20 18 0A            751 	jb	b0,00136$
                            752 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:159: while(!TI);
   14FB                     753 00130$:
                            754 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:160: TI=0;
   14FB 10 99 02            755 	jbc	_SCON_1,00205$
   14FE 80 FB               756 	sjmp	00130$
   1500                     757 00205$:
                            758 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:161: SBUF=n+48;
   1500 74 30               759 	mov	a,#0x30
   1502 2C                  760 	add	a,r4
   1503 F5 99               761 	mov	_SBUF,a
                            762 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:164: while(!TI);
   1505                     763 00136$:
                            764 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:165: TI=0;
   1505 10 99 02            765 	jbc	_SCON_1,00206$
   1508 80 FB               766 	sjmp	00136$
   150A                     767 00206$:
                            768 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:166: SBUF=wert+48;
   150A A8 10               769 	mov	r0,_bp
   150C 08                  770 	inc	r0
   150D 86 06               771 	mov	ar6,@r0
   150F 74 30               772 	mov	a,#0x30
   1511 2E                  773 	add	a,r6
   1512 F5 99               774 	mov	_SBUF,a
   1514 85 10 81            775 	mov	sp,_bp
   1517 D0 10               776 	pop	_bp
   1519 22                  777 	ret
                            778 ;------------------------------------------------------------
                            779 ;Allocation info for local variables in function 'rs_send_s'
                            780 ;------------------------------------------------------------
                            781 ;s                         Allocated to registers r5 r6 r7 
                            782 ;n                         Allocated to registers r4 
                            783 ;------------------------------------------------------------
                            784 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:180: void rs_send_s(unsigned char *s)
                            785 ;	-----------------------------------------
                            786 ;	 function rs_send_s
                            787 ;	-----------------------------------------
   151A                     788 _rs_send_s:
   151A AD 82               789 	mov	r5,dpl
   151C AE 83               790 	mov	r6,dph
   151E AF F0               791 	mov	r7,b
                            792 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:183: while (s[n]!=0)
   1520 7C 00               793 	mov	r4,#0x00
   1522                     794 00111$:
   1522 EC                  795 	mov	a,r4
   1523 2D                  796 	add	a,r5
   1524 F9                  797 	mov	r1,a
   1525 E4                  798 	clr	a
   1526 3E                  799 	addc	a,r6
   1527 FA                  800 	mov	r2,a
   1528 8F 03               801 	mov	ar3,r7
   152A 89 82               802 	mov	dpl,r1
   152C 8A 83               803 	mov	dph,r2
   152E 8B F0               804 	mov	b,r3
   1530 12 1A E9            805 	lcall	__gptrget
   1533 FB                  806 	mov	r3,a
   1534 60 29               807 	jz	00113$
                            808 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:185: if(s[n]=='\n')
   1536 BB 0A 08            809 	cjne	r3,#0x0A,00106$
                            810 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:187: while(!TI);
   1539                     811 00101$:
                            812 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:188: TI=0;
   1539 10 99 02            813 	jbc	_SCON_1,00133$
   153C 80 FB               814 	sjmp	00101$
   153E                     815 00133$:
                            816 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:189: SBUF=0x0d;
   153E 75 99 0D            817 	mov	_SBUF,#0x0D
                            818 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:191: while(!TI);
   1541                     819 00106$:
                            820 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:192: TI=0;
   1541 10 99 02            821 	jbc	_SCON_1,00134$
   1544 80 FB               822 	sjmp	00106$
   1546                     823 00134$:
                            824 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:193: SBUF=s[n];
   1546 EC                  825 	mov	a,r4
   1547 2D                  826 	add	a,r5
   1548 F9                  827 	mov	r1,a
   1549 E4                  828 	clr	a
   154A 3E                  829 	addc	a,r6
   154B FA                  830 	mov	r2,a
   154C 8F 03               831 	mov	ar3,r7
   154E 89 82               832 	mov	dpl,r1
   1550 8A 83               833 	mov	dph,r2
   1552 8B F0               834 	mov	b,r3
   1554 12 1A E9            835 	lcall	__gptrget
   1557 F5 99               836 	mov	_SBUF,a
                            837 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:194: n++;
   1559 0C                  838 	inc	r4
                            839 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:195: if(n>254)
   155A EC                  840 	mov	a,r4
   155B 24 01               841 	add	a,#0xff - 0xFE
   155D 50 C3               842 	jnc	00111$
                            843 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:196: return;
                            844 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:198: return;
   155F                     845 00113$:
   155F 22                  846 	ret
                            847 ;------------------------------------------------------------
                            848 ;Allocation info for local variables in function 'rs_send_hex_l'
                            849 ;------------------------------------------------------------
                            850 ;wert                      Allocated to registers r4 r5 r6 r7 
                            851 ;------------------------------------------------------------
                            852 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:223: void rs_send_hex_l(unsigned long wert)
                            853 ;	-----------------------------------------
                            854 ;	 function rs_send_hex_l
                            855 ;	-----------------------------------------
   1560                     856 _rs_send_hex_l:
   1560 AC 82               857 	mov	r4,dpl
   1562 AD 83               858 	mov	r5,dph
   1564 AE F0               859 	mov	r6,b
   1566 FF                  860 	mov	r7,a
                            861 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:225: rs_send_hex_i(wert>>16);
   1567 8E 82               862 	mov	dpl,r6
   1569 8F 83               863 	mov	dph,r7
   156B C0 07               864 	push	ar7
   156D C0 06               865 	push	ar6
   156F C0 05               866 	push	ar5
   1571 C0 04               867 	push	ar4
   1573 12 15 85            868 	lcall	_rs_send_hex_i
   1576 D0 04               869 	pop	ar4
   1578 D0 05               870 	pop	ar5
   157A D0 06               871 	pop	ar6
   157C D0 07               872 	pop	ar7
                            873 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:226: rs_send_hex_i(wert&0xFFFF);
   157E 8C 82               874 	mov	dpl,r4
   1580 8D 83               875 	mov	dph,r5
   1582 02 15 85            876 	ljmp	_rs_send_hex_i
                            877 ;------------------------------------------------------------
                            878 ;Allocation info for local variables in function 'rs_send_hex_i'
                            879 ;------------------------------------------------------------
                            880 ;wert                      Allocated to registers r6 r7 
                            881 ;------------------------------------------------------------
                            882 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:249: void rs_send_hex_i(unsigned int wert)
                            883 ;	-----------------------------------------
                            884 ;	 function rs_send_hex_i
                            885 ;	-----------------------------------------
   1585                     886 _rs_send_hex_i:
   1585 AE 82               887 	mov	r6,dpl
   1587 AF 83               888 	mov	r7,dph
                            889 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:251: rs_send_hex(wert>>8);
   1589 8F 82               890 	mov	dpl,r7
   158B C0 07               891 	push	ar7
   158D C0 06               892 	push	ar6
   158F 12 15 9B            893 	lcall	_rs_send_hex
   1592 D0 06               894 	pop	ar6
   1594 D0 07               895 	pop	ar7
                            896 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:252: rs_send_hex(wert&0xFF);
   1596 8E 82               897 	mov	dpl,r6
   1598 02 15 9B            898 	ljmp	_rs_send_hex
                            899 ;------------------------------------------------------------
                            900 ;Allocation info for local variables in function 'rs_send_hex'
                            901 ;------------------------------------------------------------
                            902 ;wert                      Allocated to registers r7 
                            903 ;------------------------------------------------------------
                            904 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:265: void rs_send_hex(unsigned char wert)
                            905 ;	-----------------------------------------
                            906 ;	 function rs_send_hex
                            907 ;	-----------------------------------------
   159B                     908 _rs_send_hex:
                            909 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:269: rs_send(hex[wert>>4]);
   159B E5 82               910 	mov	a,dpl
   159D FF                  911 	mov	r7,a
   159E C4                  912 	swap	a
   159F 54 0F               913 	anl	a,#0x0F
   15A1 90 1B D7            914 	mov	dptr,#_hex
   15A4 93                  915 	movc	a,@a+dptr
   15A5 F5 82               916 	mov	dpl,a
   15A7 C0 07               917 	push	ar7
   15A9 12 15 BA            918 	lcall	_rs_send
   15AC D0 07               919 	pop	ar7
                            920 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:270: rs_send(hex[wert&0x0F]);
   15AE 74 0F               921 	mov	a,#0x0F
   15B0 5F                  922 	anl	a,r7
   15B1 90 1B D7            923 	mov	dptr,#_hex
   15B4 93                  924 	movc	a,@a+dptr
   15B5 F5 82               925 	mov	dpl,a
   15B7 02 15 BA            926 	ljmp	_rs_send
                            927 ;------------------------------------------------------------
                            928 ;Allocation info for local variables in function 'rs_send'
                            929 ;------------------------------------------------------------
                            930 ;z                         Allocated to registers r7 
                            931 ;------------------------------------------------------------
                            932 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:274: void rs_send(unsigned char z)
                            933 ;	-----------------------------------------
                            934 ;	 function rs_send
                            935 ;	-----------------------------------------
   15BA                     936 _rs_send:
   15BA AF 82               937 	mov	r7,dpl
                            938 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:276: while(!TI);
   15BC                     939 00101$:
                            940 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:277: TI=0;
   15BC 10 99 02            941 	jbc	_SCON_1,00110$
   15BF 80 FB               942 	sjmp	00101$
   15C1                     943 00110$:
                            944 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:278: SBUF=z;
   15C1 8F 99               945 	mov	_SBUF,r7
   15C3 22                  946 	ret
                            947 	.area CSEG    (CODE)
                            948 	.area CONST   (CODE)
   1BD7                     949 _hex:
   1BD7 30                  950 	.db #0x30	; 48	'0'
   1BD8 31                  951 	.db #0x31	; 49	'1'
   1BD9 32                  952 	.db #0x32	; 50	'2'
   1BDA 33                  953 	.db #0x33	; 51	'3'
   1BDB 34                  954 	.db #0x34	; 52	'4'
   1BDC 35                  955 	.db #0x35	; 53	'5'
   1BDD 36                  956 	.db #0x36	; 54	'6'
   1BDE 37                  957 	.db #0x37	; 55	'7'
   1BDF 38                  958 	.db #0x38	; 56	'8'
   1BE0 39                  959 	.db #0x39	; 57	'9'
   1BE1 41                  960 	.db #0x41	; 65	'A'
   1BE2 42                  961 	.db #0x42	; 66	'B'
   1BE3 43                  962 	.db #0x43	; 67	'C'
   1BE4 44                  963 	.db #0x44	; 68	'D'
   1BE5 45                  964 	.db #0x45	; 69	'E'
   1BE6 46                  965 	.db #0x46	; 70	'F'
                            966 	.area XINIT   (CODE)
                            967 	.area CABS    (ABS,CODE)
