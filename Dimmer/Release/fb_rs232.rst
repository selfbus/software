                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
                              4 ; This file was generated Thu Feb 23 22:43:21 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_rs232
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
                            147 	.globl _rs_init
                            148 	.globl _rs_send_dec
                            149 	.globl _rs_send_s
                            150 	.globl _rs_send_hex_i
                            151 	.globl _rs_send_hex
                            152 	.globl _rs_send
                            153 ;--------------------------------------------------------
                            154 ; special function registers
                            155 ;--------------------------------------------------------
                            156 	.area RSEG    (DATA)
                    0080    157 _P0	=	0x0080
                    0090    158 _P1	=	0x0090
                    00B0    159 _P3	=	0x00b0
                    00D0    160 _PSW	=	0x00d0
                    00E0    161 _ACC	=	0x00e0
                    00F0    162 _B	=	0x00f0
                    0081    163 _SP	=	0x0081
                    0082    164 _DPL	=	0x0082
                    0083    165 _DPH	=	0x0083
                    0087    166 _PCON	=	0x0087
                    0088    167 _TCON	=	0x0088
                    0089    168 _TMOD	=	0x0089
                    008A    169 _TL0	=	0x008a
                    008B    170 _TL1	=	0x008b
                    008C    171 _TH0	=	0x008c
                    008D    172 _TH1	=	0x008d
                    00A8    173 _IEN0	=	0x00a8
                    00B8    174 _IP0	=	0x00b8
                    0098    175 _SCON	=	0x0098
                    0099    176 _SBUF	=	0x0099
                    00A2    177 _AUXR1	=	0x00a2
                    00A9    178 _SADDR	=	0x00a9
                    00B9    179 _SADEN	=	0x00b9
                    00BE    180 _BRGR0	=	0x00be
                    00BF    181 _BRGR1	=	0x00bf
                    00BD    182 _BRGCON	=	0x00bd
                    00AC    183 _CMP1	=	0x00ac
                    00AD    184 _CMP2	=	0x00ad
                    0095    185 _DIVM	=	0x0095
                    00E7    186 _FMADRH	=	0x00e7
                    00E6    187 _FMADRL	=	0x00e6
                    00E4    188 _FMCON	=	0x00e4
                    00E5    189 _FMDATA	=	0x00e5
                    00DB    190 _I2ADR	=	0x00db
                    00D8    191 _I2CON	=	0x00d8
                    00DA    192 _I2DAT	=	0x00da
                    00DD    193 _I2SCLH	=	0x00dd
                    00DC    194 _I2SCLL	=	0x00dc
                    00D9    195 _I2STAT	=	0x00d9
                    00F8    196 _IP1	=	0x00f8
                    00F7    197 _IP1H	=	0x00f7
                    0094    198 _KBCON	=	0x0094
                    0086    199 _KBMASK	=	0x0086
                    0093    200 _KBPATN	=	0x0093
                    0084    201 _P0M1	=	0x0084
                    0085    202 _P0M2	=	0x0085
                    0091    203 _P1M1	=	0x0091
                    0092    204 _P1M2	=	0x0092
                    00B1    205 _P3M1	=	0x00b1
                    00B2    206 _P3M2	=	0x00b2
                    00B5    207 _PCONA	=	0x00b5
                    00F6    208 _PT0AD	=	0x00f6
                    00DF    209 _RSTSRC	=	0x00df
                    00D1    210 _RTCCON	=	0x00d1
                    00D2    211 _RTCH	=	0x00d2
                    00D3    212 _RTCL	=	0x00d3
                    00BA    213 _SSTAT	=	0x00ba
                    008F    214 _TAMOD	=	0x008f
                    0096    215 _TRIM	=	0x0096
                    00A7    216 _WDCON	=	0x00a7
                    00C1    217 _WDL	=	0x00c1
                    00C2    218 _WFEED1	=	0x00c2
                    00C3    219 _WFEED2	=	0x00c3
                    00B7    220 _IP0H	=	0x00b7
                    00E8    221 _IEN1	=	0x00e8
                            222 ;--------------------------------------------------------
                            223 ; special function bits
                            224 ;--------------------------------------------------------
                            225 	.area RSEG    (DATA)
                    00D0    226 _PSW_0	=	0x00d0
                    00D1    227 _PSW_1	=	0x00d1
                    00D2    228 _PSW_2	=	0x00d2
                    00D3    229 _PSW_3	=	0x00d3
                    00D4    230 _PSW_4	=	0x00d4
                    00D5    231 _PSW_5	=	0x00d5
                    00D6    232 _PSW_6	=	0x00d6
                    00D7    233 _PSW_7	=	0x00d7
                    008F    234 _TCON_7	=	0x008f
                    008E    235 _TCON_6	=	0x008e
                    008D    236 _TCON_5	=	0x008d
                    008C    237 _TCON_4	=	0x008c
                    008B    238 _TCON_3	=	0x008b
                    008A    239 _TCON_2	=	0x008a
                    0089    240 _TCON_1	=	0x0089
                    0088    241 _TCON_0	=	0x0088
                    00AF    242 _IEN0_7	=	0x00af
                    00AE    243 _IEN0_6	=	0x00ae
                    00AD    244 _IEN0_5	=	0x00ad
                    00AC    245 _IEN0_4	=	0x00ac
                    00AB    246 _IEN0_3	=	0x00ab
                    00AA    247 _IEN0_2	=	0x00aa
                    00A9    248 _IEN0_1	=	0x00a9
                    00A8    249 _IEN0_0	=	0x00a8
                    00EA    250 _IEN1_2	=	0x00ea
                    00E9    251 _IEN1_1	=	0x00e9
                    00E8    252 _IEN1_0	=	0x00e8
                    00FE    253 _IP1_6	=	0x00fe
                    00FA    254 _IP1_2	=	0x00fa
                    00F9    255 _IP1_1	=	0x00f9
                    00F8    256 _IP1_0	=	0x00f8
                    00BE    257 _IP0_6	=	0x00be
                    00BD    258 _IP0_5	=	0x00bd
                    00BC    259 _IP0_4	=	0x00bc
                    00BB    260 _IP0_3	=	0x00bb
                    00BA    261 _IP0_2	=	0x00ba
                    00B9    262 _IP0_1	=	0x00b9
                    00B8    263 _IP0_0	=	0x00b8
                    0098    264 _SCON_0	=	0x0098
                    0099    265 _SCON_1	=	0x0099
                    009A    266 _SCON_2	=	0x009a
                    009B    267 _SCON_3	=	0x009b
                    009C    268 _SCON_4	=	0x009c
                    009D    269 _SCON_5	=	0x009d
                    009E    270 _SCON_6	=	0x009e
                    009F    271 _SCON_7	=	0x009f
                    00DE    272 _I2CON_6	=	0x00de
                    00DD    273 _I2CON_5	=	0x00dd
                    00DC    274 _I2CON_4	=	0x00dc
                    00DB    275 _I2CON_3	=	0x00db
                    00DA    276 _I2CON_2	=	0x00da
                    00D8    277 _I2CON_0	=	0x00d8
                    0080    278 _P0_0	=	0x0080
                    0081    279 _P0_1	=	0x0081
                    0082    280 _P0_2	=	0x0082
                    0083    281 _P0_3	=	0x0083
                    0084    282 _P0_4	=	0x0084
                    0085    283 _P0_5	=	0x0085
                    0086    284 _P0_6	=	0x0086
                    0087    285 _P0_7	=	0x0087
                    0090    286 _P1_0	=	0x0090
                    0091    287 _P1_1	=	0x0091
                    0092    288 _P1_2	=	0x0092
                    0093    289 _P1_3	=	0x0093
                    0094    290 _P1_4	=	0x0094
                    0095    291 _P1_5	=	0x0095
                    0096    292 _P1_6	=	0x0096
                    0097    293 _P1_7	=	0x0097
                    00B0    294 _P3_0	=	0x00b0
                    00B1    295 _P3_1	=	0x00b1
                            296 ;--------------------------------------------------------
                            297 ; overlayable register banks
                            298 ;--------------------------------------------------------
                            299 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     300 	.ds 8
                            301 ;--------------------------------------------------------
                            302 ; internal ram data
                            303 ;--------------------------------------------------------
                            304 	.area DSEG    (DATA)
                            305 ;--------------------------------------------------------
                            306 ; overlayable items in internal ram 
                            307 ;--------------------------------------------------------
                            308 	.area OSEG    (OVR,DATA)
                            309 ;--------------------------------------------------------
                            310 ; indirectly addressable internal ram data
                            311 ;--------------------------------------------------------
                            312 	.area ISEG    (DATA)
                            313 ;--------------------------------------------------------
                            314 ; absolute internal ram data
                            315 ;--------------------------------------------------------
                            316 	.area IABS    (ABS,DATA)
                            317 	.area IABS    (ABS,DATA)
                            318 ;--------------------------------------------------------
                            319 ; bit data
                            320 ;--------------------------------------------------------
                            321 	.area BSEG    (BIT)
                            322 ;--------------------------------------------------------
                            323 ; paged external ram data
                            324 ;--------------------------------------------------------
                            325 	.area PSEG    (PAG,XDATA)
                            326 ;--------------------------------------------------------
                            327 ; external ram data
                            328 ;--------------------------------------------------------
                            329 	.area XSEG    (XDATA)
                            330 ;--------------------------------------------------------
                            331 ; absolute external ram data
                            332 ;--------------------------------------------------------
                            333 	.area XABS    (ABS,XDATA)
                            334 ;--------------------------------------------------------
                            335 ; external initialized ram data
                            336 ;--------------------------------------------------------
                            337 	.area XISEG   (XDATA)
                            338 	.area HOME    (CODE)
                            339 	.area GSINIT0 (CODE)
                            340 	.area GSINIT1 (CODE)
                            341 	.area GSINIT2 (CODE)
                            342 	.area GSINIT3 (CODE)
                            343 	.area GSINIT4 (CODE)
                            344 	.area GSINIT5 (CODE)
                            345 	.area GSINIT  (CODE)
                            346 	.area GSFINAL (CODE)
                            347 	.area CSEG    (CODE)
                            348 ;--------------------------------------------------------
                            349 ; global & static initialisations
                            350 ;--------------------------------------------------------
                            351 	.area HOME    (CODE)
                            352 	.area GSINIT  (CODE)
                            353 	.area GSFINAL (CODE)
                            354 	.area GSINIT  (CODE)
                            355 ;--------------------------------------------------------
                            356 ; Home
                            357 ;--------------------------------------------------------
                            358 	.area HOME    (CODE)
                            359 	.area HOME    (CODE)
                            360 ;--------------------------------------------------------
                            361 ; code
                            362 ;--------------------------------------------------------
                            363 	.area CSEG    (CODE)
                            364 ;------------------------------------------------------------
                            365 ;Allocation info for local variables in function 'rs_init'
                            366 ;------------------------------------------------------------
                            367 ;baudrate                  Allocated to registers r2 r3 
                            368 ;brg                       Allocated to registers r4 r5 
                            369 ;------------------------------------------------------------
                            370 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:23: void rs_init(unsigned int baudrate)
                            371 ;	-----------------------------------------
                            372 ;	 function rs_init
                            373 ;	-----------------------------------------
   166A                     374 _rs_init:
                    0002    375 	ar2 = 0x02
                    0003    376 	ar3 = 0x03
                    0004    377 	ar4 = 0x04
                    0005    378 	ar5 = 0x05
                    0006    379 	ar6 = 0x06
                    0007    380 	ar7 = 0x07
                    0000    381 	ar0 = 0x00
                    0001    382 	ar1 = 0x01
   166A AA 82               383 	mov	r2,dpl
   166C AB 83               384 	mov	r3,dph
                            385 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:27: brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
   166E 7C 30               386 	mov	r4,#0x30
   1670 7D 00               387 	mov	r5,#0x00
                            388 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:28: if(baudrate==3)	// 300 Baud
   1672 BA 03 07            389 	cjne	r2,#0x03,00102$
   1675 BB 00 04            390 	cjne	r3,#0x00,00102$
                            391 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:29: brg=0x5FF0;
   1678 7C F0               392 	mov	r4,#0xF0
   167A 7D 5F               393 	mov	r5,#0x5F
   167C                     394 00102$:
                            395 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:30: if(baudrate==6)		// 600 Baud
   167C BA 06 07            396 	cjne	r2,#0x06,00104$
   167F BB 00 04            397 	cjne	r3,#0x00,00104$
                            398 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:31: brg=0x2FF0;
   1682 7C F0               399 	mov	r4,#0xF0
   1684 7D 2F               400 	mov	r5,#0x2F
   1686                     401 00104$:
                            402 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:32: if(baudrate==12)	// 1200 Baud
   1686 BA 0C 07            403 	cjne	r2,#0x0C,00106$
   1689 BB 00 04            404 	cjne	r3,#0x00,00106$
                            405 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:33: brg=0x17F0;
   168C 7C F0               406 	mov	r4,#0xF0
   168E 7D 17               407 	mov	r5,#0x17
   1690                     408 00106$:
                            409 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:34: if(baudrate==24)	// 2400 Baud
   1690 BA 18 07            410 	cjne	r2,#0x18,00108$
   1693 BB 00 04            411 	cjne	r3,#0x00,00108$
                            412 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:35: brg=0x2FF0;
   1696 7C F0               413 	mov	r4,#0xF0
   1698 7D 2F               414 	mov	r5,#0x2F
   169A                     415 00108$:
                            416 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:36: if(baudrate==48)	// 4800 Baud
   169A BA 30 07            417 	cjne	r2,#0x30,00110$
   169D BB 00 04            418 	cjne	r3,#0x00,00110$
                            419 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:37: brg=0x05F0;
   16A0 7C F0               420 	mov	r4,#0xF0
   16A2 7D 05               421 	mov	r5,#0x05
   16A4                     422 00110$:
                            423 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:38: if(baudrate==96)	// 9600 Baud
   16A4 BA 60 07            424 	cjne	r2,#0x60,00112$
   16A7 BB 00 04            425 	cjne	r3,#0x00,00112$
                            426 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:39: brg=0x02F0;
   16AA 7C F0               427 	mov	r4,#0xF0
   16AC 7D 02               428 	mov	r5,#0x02
   16AE                     429 00112$:
                            430 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:40: if(baudrate==192)	// 19200 Baud
   16AE BA C0 07            431 	cjne	r2,#0xC0,00114$
   16B1 BB 00 04            432 	cjne	r3,#0x00,00114$
                            433 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:41: brg=0x0170;
   16B4 7C 70               434 	mov	r4,#0x70
   16B6 7D 01               435 	mov	r5,#0x01
   16B8                     436 00114$:
                            437 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:42: if(baudrate==384)	// 38400 Baud
   16B8 BA 80 07            438 	cjne	r2,#0x80,00116$
   16BB BB 01 04            439 	cjne	r3,#0x01,00116$
                            440 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:43: brg=0x00B0;
   16BE 7C B0               441 	mov	r4,#0xB0
   16C0 7D 00               442 	mov	r5,#0x00
   16C2                     443 00116$:
                            444 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:44: if(baudrate==576)	// 57600 Baud
   16C2 BA 40 07            445 	cjne	r2,#0x40,00118$
   16C5 BB 02 04            446 	cjne	r3,#0x02,00118$
                            447 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:45: brg=0x0070;
   16C8 7C 70               448 	mov	r4,#0x70
   16CA 7D 00               449 	mov	r5,#0x00
   16CC                     450 00118$:
                            451 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:48: BRGCON&=0xFE;	// Baudrate Generator stoppen
   16CC 53 BD FE            452 	anl	_BRGCON,#0xFE
                            453 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:49: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   16CF 53 91 FC            454 	anl	_P1M1,#0xFC
                            455 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:50: P1M2&=0xFC;
   16D2 53 92 FC            456 	anl	_P1M2,#0xFC
                            457 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:51: SCON=0x50;		// Mode 1, receive enable
   16D5 75 98 50            458 	mov	_SCON,#0x50
                            459 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:52: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   16D8 43 BA E0            460 	orl	_SSTAT,#0xE0
                            461 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:53: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   16DB 43 BD 02            462 	orl	_BRGCON,#0x02
                            463 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:54: BRGR1=brg>>8;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
   16DE 8D BF               464 	mov	_BRGR1,r5
                            465 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:55: BRGR0=brg;
   16E0 8C BE               466 	mov	_BRGR0,r4
                            467 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:56: BRGCON|=0x01;	// Baudrate Generator starten
   16E2 43 BD 01            468 	orl	_BRGCON,#0x01
                            469 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:57: TI=1;
   16E5 D2 99               470 	setb	_SCON_1
   16E7 22                  471 	ret
                            472 ;------------------------------------------------------------
                            473 ;Allocation info for local variables in function 'rs_send_dec'
                            474 ;------------------------------------------------------------
                            475 ;wert                      Allocated to registers r2 r3 
                            476 ;------------------------------------------------------------
                            477 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:85: void rs_send_dec(unsigned int wert)
                            478 ;	-----------------------------------------
                            479 ;	 function rs_send_dec
                            480 ;	-----------------------------------------
   16E8                     481 _rs_send_dec:
   16E8 AA 82               482 	mov	r2,dpl
                            483 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:145: TI=0;
   16EA C2 99               484 	clr	_SCON_1
                            485 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:146: SBUF=wert+48;
   16EC 74 30               486 	mov	a,#0x30
   16EE 2A                  487 	add	a,r2
   16EF F5 99               488 	mov	_SBUF,a
   16F1 22                  489 	ret
                            490 ;------------------------------------------------------------
                            491 ;Allocation info for local variables in function 'rs_send_s'
                            492 ;------------------------------------------------------------
                            493 ;s                         Allocated to registers r2 r3 r4 
                            494 ;n                         Allocated to registers r5 
                            495 ;------------------------------------------------------------
                            496 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:160: void rs_send_s(unsigned char *s)
                            497 ;	-----------------------------------------
                            498 ;	 function rs_send_s
                            499 ;	-----------------------------------------
   16F2                     500 _rs_send_s:
   16F2 AA 82               501 	mov	r2,dpl
   16F4 AB 83               502 	mov	r3,dph
   16F6 AC F0               503 	mov	r4,b
                            504 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:163: while (s[n]!=0)
   16F8 7D 00               505 	mov	r5,#0x00
   16FA                     506 00111$:
   16FA ED                  507 	mov	a,r5
   16FB 2A                  508 	add	a,r2
   16FC FE                  509 	mov	r6,a
   16FD E4                  510 	clr	a
   16FE 3B                  511 	addc	a,r3
   16FF FF                  512 	mov	r7,a
   1700 8C 00               513 	mov	ar0,r4
   1702 8E 82               514 	mov	dpl,r6
   1704 8F 83               515 	mov	dph,r7
   1706 88 F0               516 	mov	b,r0
   1708 12 17 44            517 	lcall	__gptrget
   170B FE                  518 	mov	r6,a
   170C 60 29               519 	jz	00113$
                            520 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:165: if(s[n]=='\n')
   170E BE 0A 08            521 	cjne	r6,#0x0A,00106$
                            522 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:167: while(!TI);
   1711                     523 00101$:
                            524 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:168: TI=0;
   1711 10 99 02            525 	jbc	_SCON_1,00126$
   1714 80 FB               526 	sjmp	00101$
   1716                     527 00126$:
                            528 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:169: SBUF=0x0d;
   1716 75 99 0D            529 	mov	_SBUF,#0x0D
                            530 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:171: while(!TI);
   1719                     531 00106$:
                            532 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:172: TI=0;
   1719 10 99 02            533 	jbc	_SCON_1,00127$
   171C 80 FB               534 	sjmp	00106$
   171E                     535 00127$:
                            536 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:173: SBUF=s[n];
   171E ED                  537 	mov	a,r5
   171F 2A                  538 	add	a,r2
   1720 FE                  539 	mov	r6,a
   1721 E4                  540 	clr	a
   1722 3B                  541 	addc	a,r3
   1723 FF                  542 	mov	r7,a
   1724 8C 00               543 	mov	ar0,r4
   1726 8E 82               544 	mov	dpl,r6
   1728 8F 83               545 	mov	dph,r7
   172A 88 F0               546 	mov	b,r0
   172C 12 17 44            547 	lcall	__gptrget
   172F F5 99               548 	mov	_SBUF,a
                            549 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:174: n++;
   1731 0D                  550 	inc	r5
                            551 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:175: if(n>254)
   1732 ED                  552 	mov	a,r5
   1733 24 01               553 	add	a,#0xff - 0xFE
   1735 50 C3               554 	jnc	00111$
                            555 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:176: return;
                            556 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:178: return;
   1737                     557 00113$:
   1737 22                  558 	ret
                            559 ;------------------------------------------------------------
                            560 ;Allocation info for local variables in function 'rs_send_hex_i'
                            561 ;------------------------------------------------------------
                            562 ;wert                      Allocated to registers 
                            563 ;------------------------------------------------------------
                            564 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:230: void rs_send_hex_i(unsigned int wert)
                            565 ;	-----------------------------------------
                            566 ;	 function rs_send_hex_i
                            567 ;	-----------------------------------------
   1738                     568 _rs_send_hex_i:
                            569 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:231: {wert;
   1738 22                  570 	ret
                            571 ;------------------------------------------------------------
                            572 ;Allocation info for local variables in function 'rs_send_hex'
                            573 ;------------------------------------------------------------
                            574 ;wert                      Allocated to registers 
                            575 ;------------------------------------------------------------
                            576 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:243: void rs_send_hex(unsigned char wert)
                            577 ;	-----------------------------------------
                            578 ;	 function rs_send_hex
                            579 ;	-----------------------------------------
   1739                     580 _rs_send_hex:
                            581 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:245: wert;
   1739 22                  582 	ret
                            583 ;------------------------------------------------------------
                            584 ;Allocation info for local variables in function 'rs_send'
                            585 ;------------------------------------------------------------
                            586 ;z                         Allocated to registers r2 
                            587 ;------------------------------------------------------------
                            588 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:254: void rs_send(unsigned char z)
                            589 ;	-----------------------------------------
                            590 ;	 function rs_send
                            591 ;	-----------------------------------------
   173A                     592 _rs_send:
   173A AA 82               593 	mov	r2,dpl
                            594 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:256: while(!TI);
   173C                     595 00101$:
                            596 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:257: TI=0;
   173C 10 99 02            597 	jbc	_SCON_1,00108$
   173F 80 FB               598 	sjmp	00101$
   1741                     599 00108$:
                            600 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:258: SBUF=z;
   1741 8A 99               601 	mov	_SBUF,r2
   1743 22                  602 	ret
                            603 	.area CSEG    (CODE)
                            604 	.area CONST   (CODE)
                            605 	.area XINIT   (CODE)
                            606 	.area CABS    (ABS,CODE)
