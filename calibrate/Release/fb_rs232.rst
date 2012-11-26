                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Mar 23 2008) (MINGW32)
                              4 ; This file was generated Sat Aug 06 07:08:46 2011
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
   00E6                     374 _rs_init:
                    0002    375 	ar2 = 0x02
                    0003    376 	ar3 = 0x03
                    0004    377 	ar4 = 0x04
                    0005    378 	ar5 = 0x05
                    0006    379 	ar6 = 0x06
                    0007    380 	ar7 = 0x07
                    0000    381 	ar0 = 0x00
                    0001    382 	ar1 = 0x01
   00E6 AA 82               383 	mov	r2,dpl
   00E8 AB 83               384 	mov	r3,dph
                            385 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:27: brg=0x0030;			// in allen anderen Fällen 115200 Baud als default
   00EA 7C 30               386 	mov	r4,#0x30
   00EC 7D 00               387 	mov	r5,#0x00
                            388 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:28: if(baudrate==3)	// 300 Baud
   00EE BA 03 07            389 	cjne	r2,#0x03,00102$
   00F1 BB 00 04            390 	cjne	r3,#0x00,00102$
                            391 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:29: brg=0x5FF0;
   00F4 7C F0               392 	mov	r4,#0xF0
   00F6 7D 5F               393 	mov	r5,#0x5F
   00F8                     394 00102$:
                            395 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:30: if(baudrate==6)		// 600 Baud
   00F8 BA 06 07            396 	cjne	r2,#0x06,00104$
   00FB BB 00 04            397 	cjne	r3,#0x00,00104$
                            398 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:31: brg=0x2FF0;
   00FE 7C F0               399 	mov	r4,#0xF0
   0100 7D 2F               400 	mov	r5,#0x2F
   0102                     401 00104$:
                            402 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:32: if(baudrate==12)	// 1200 Baud
   0102 BA 0C 07            403 	cjne	r2,#0x0C,00106$
   0105 BB 00 04            404 	cjne	r3,#0x00,00106$
                            405 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:33: brg=0x17F0;
   0108 7C F0               406 	mov	r4,#0xF0
   010A 7D 17               407 	mov	r5,#0x17
   010C                     408 00106$:
                            409 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:34: if(baudrate==24)	// 2400 Baud
   010C BA 18 07            410 	cjne	r2,#0x18,00108$
   010F BB 00 04            411 	cjne	r3,#0x00,00108$
                            412 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:35: brg=0x2FF0;
   0112 7C F0               413 	mov	r4,#0xF0
   0114 7D 2F               414 	mov	r5,#0x2F
   0116                     415 00108$:
                            416 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:36: if(baudrate==48)	// 4800 Baud
   0116 BA 30 07            417 	cjne	r2,#0x30,00110$
   0119 BB 00 04            418 	cjne	r3,#0x00,00110$
                            419 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:37: brg=0x05F0;
   011C 7C F0               420 	mov	r4,#0xF0
   011E 7D 05               421 	mov	r5,#0x05
   0120                     422 00110$:
                            423 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:38: if(baudrate==96)	// 9600 Baud
   0120 BA 60 07            424 	cjne	r2,#0x60,00112$
   0123 BB 00 04            425 	cjne	r3,#0x00,00112$
                            426 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:39: brg=0x02F0;
   0126 7C F0               427 	mov	r4,#0xF0
   0128 7D 02               428 	mov	r5,#0x02
   012A                     429 00112$:
                            430 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:40: if(baudrate==192)	// 19200 Baud
   012A BA C0 07            431 	cjne	r2,#0xC0,00114$
   012D BB 00 04            432 	cjne	r3,#0x00,00114$
                            433 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:41: brg=0x0170;
   0130 7C 70               434 	mov	r4,#0x70
   0132 7D 01               435 	mov	r5,#0x01
   0134                     436 00114$:
                            437 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:42: if(baudrate==384)	// 38400 Baud
   0134 BA 80 07            438 	cjne	r2,#0x80,00116$
   0137 BB 01 04            439 	cjne	r3,#0x01,00116$
                            440 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:43: brg=0x00B0;
   013A 7C B0               441 	mov	r4,#0xB0
   013C 7D 00               442 	mov	r5,#0x00
   013E                     443 00116$:
                            444 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:44: if(baudrate==576)	// 57600 Baud
   013E BA 40 07            445 	cjne	r2,#0x40,00118$
   0141 BB 02 04            446 	cjne	r3,#0x02,00118$
                            447 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:45: brg=0x0070;
   0144 7C 70               448 	mov	r4,#0x70
   0146 7D 00               449 	mov	r5,#0x00
   0148                     450 00118$:
                            451 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:48: BRGCON&=0xFE;	// Baudrate Generator stoppen
   0148 53 BD FE            452 	anl	_BRGCON,#0xFE
                            453 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:49: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   014B 53 91 FC            454 	anl	_P1M1,#0xFC
                            455 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:50: P1M2&=0xFC;
   014E 53 92 FC            456 	anl	_P1M2,#0xFC
                            457 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:51: SCON=0x50;		// Mode 1, receive enable
   0151 75 98 50            458 	mov	_SCON,#0x50
                            459 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:52: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   0154 43 BA E0            460 	orl	_SSTAT,#0xE0
                            461 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:53: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   0157 43 BD 02            462 	orl	_BRGCON,#0x02
                            463 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:54: BRGR1=brg>>8;	// Baudrate = cclk/((BRGR1,BRGR0)+16)
   015A 8D BF               464 	mov	_BRGR1,r5
                            465 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:55: BRGR0=brg;
   015C 8C BE               466 	mov	_BRGR0,r4
                            467 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:56: BRGCON|=0x01;	// Baudrate Generator starten
   015E 43 BD 01            468 	orl	_BRGCON,#0x01
                            469 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:57: TI=1;
   0161 D2 99               470 	setb	_SCON_1
                            471 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:60: IP0 &= 0xEF;
   0163 53 B8 EF            472 	anl	_IP0,#0xEF
                            473 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:61: IP0H &= 0xEF;
   0166 53 B7 EF            474 	anl	_IP0H,#0xEF
   0169 22                  475 	ret
                            476 ;------------------------------------------------------------
                            477 ;Allocation info for local variables in function 'rs_send_dec'
                            478 ;------------------------------------------------------------
                            479 ;wert                      Allocated to registers r2 r3 
                            480 ;------------------------------------------------------------
                            481 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:85: void rs_send_dec(unsigned int wert)
                            482 ;	-----------------------------------------
                            483 ;	 function rs_send_dec
                            484 ;	-----------------------------------------
   016A                     485 _rs_send_dec:
   016A AA 82               486 	mov	r2,dpl
                            487 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:144: TI=0;
   016C C2 99               488 	clr	_SCON_1
                            489 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:145: SBUF=wert+48;
   016E 74 30               490 	mov	a,#0x30
   0170 2A                  491 	add	a,r2
   0171 F5 99               492 	mov	_SBUF,a
   0173 22                  493 	ret
                            494 ;------------------------------------------------------------
                            495 ;Allocation info for local variables in function 'rs_send_s'
                            496 ;------------------------------------------------------------
                            497 ;s                         Allocated to registers r2 r3 r4 
                            498 ;n                         Allocated to registers r5 
                            499 ;------------------------------------------------------------
                            500 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:159: void rs_send_s(unsigned char *s)
                            501 ;	-----------------------------------------
                            502 ;	 function rs_send_s
                            503 ;	-----------------------------------------
   0174                     504 _rs_send_s:
   0174 AA 82               505 	mov	r2,dpl
   0176 AB 83               506 	mov	r3,dph
   0178 AC F0               507 	mov	r4,b
                            508 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:162: while (s[n]!=0)
   017A 7D 00               509 	mov	r5,#0x00
   017C                     510 00111$:
   017C ED                  511 	mov	a,r5
   017D 2A                  512 	add	a,r2
   017E FE                  513 	mov	r6,a
   017F E4                  514 	clr	a
   0180 3B                  515 	addc	a,r3
   0181 FF                  516 	mov	r7,a
   0182 8C 00               517 	mov	ar0,r4
   0184 8E 82               518 	mov	dpl,r6
   0186 8F 83               519 	mov	dph,r7
   0188 88 F0               520 	mov	b,r0
   018A 12 01 C6            521 	lcall	__gptrget
   018D FE                  522 	mov	r6,a
   018E 60 29               523 	jz	00113$
                            524 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:164: if(s[n]=='\n')
   0190 BE 0A 08            525 	cjne	r6,#0x0A,00106$
                            526 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:166: while(!TI);
   0193                     527 00101$:
                            528 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:167: TI=0;
   0193 10 99 02            529 	jbc	_SCON_1,00126$
   0196 80 FB               530 	sjmp	00101$
   0198                     531 00126$:
                            532 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:168: SBUF=0x0d;
   0198 75 99 0D            533 	mov	_SBUF,#0x0D
                            534 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:170: while(!TI);
   019B                     535 00106$:
                            536 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:171: TI=0;
   019B 10 99 02            537 	jbc	_SCON_1,00127$
   019E 80 FB               538 	sjmp	00106$
   01A0                     539 00127$:
                            540 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:172: SBUF=s[n];
   01A0 ED                  541 	mov	a,r5
   01A1 2A                  542 	add	a,r2
   01A2 FE                  543 	mov	r6,a
   01A3 E4                  544 	clr	a
   01A4 3B                  545 	addc	a,r3
   01A5 FF                  546 	mov	r7,a
   01A6 8C 00               547 	mov	ar0,r4
   01A8 8E 82               548 	mov	dpl,r6
   01AA 8F 83               549 	mov	dph,r7
   01AC 88 F0               550 	mov	b,r0
   01AE 12 01 C6            551 	lcall	__gptrget
   01B1 F5 99               552 	mov	_SBUF,a
                            553 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:173: n++;
   01B3 0D                  554 	inc	r5
                            555 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:174: if(n>254)
   01B4 ED                  556 	mov	a,r5
   01B5 24 01               557 	add	a,#0xff - 0xFE
   01B7 50 C3               558 	jnc	00111$
                            559 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:175: return;
                            560 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:177: return;
   01B9                     561 00113$:
   01B9 22                  562 	ret
                            563 ;------------------------------------------------------------
                            564 ;Allocation info for local variables in function 'rs_send_hex_i'
                            565 ;------------------------------------------------------------
                            566 ;wert                      Allocated to registers 
                            567 ;------------------------------------------------------------
                            568 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:228: void rs_send_hex_i(unsigned int wert)
                            569 ;	-----------------------------------------
                            570 ;	 function rs_send_hex_i
                            571 ;	-----------------------------------------
   01BA                     572 _rs_send_hex_i:
                            573 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:229: {wert;
   01BA 22                  574 	ret
                            575 ;------------------------------------------------------------
                            576 ;Allocation info for local variables in function 'rs_send_hex'
                            577 ;------------------------------------------------------------
                            578 ;wert                      Allocated to registers 
                            579 ;------------------------------------------------------------
                            580 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:242: void rs_send_hex(unsigned char wert)
                            581 ;	-----------------------------------------
                            582 ;	 function rs_send_hex
                            583 ;	-----------------------------------------
   01BB                     584 _rs_send_hex:
                            585 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:244: wert;
   01BB 22                  586 	ret
                            587 ;------------------------------------------------------------
                            588 ;Allocation info for local variables in function 'rs_send'
                            589 ;------------------------------------------------------------
                            590 ;z                         Allocated to registers r2 
                            591 ;------------------------------------------------------------
                            592 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:253: void rs_send(unsigned char z)
                            593 ;	-----------------------------------------
                            594 ;	 function rs_send
                            595 ;	-----------------------------------------
   01BC                     596 _rs_send:
   01BC AA 82               597 	mov	r2,dpl
                            598 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:255: while(!TI);
   01BE                     599 00101$:
                            600 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:256: TI=0;
   01BE 10 99 02            601 	jbc	_SCON_1,00108$
   01C1 80 FB               602 	sjmp	00101$
   01C3                     603 00108$:
                            604 ;	C:/Freebus/C_Programme/oldisprogramm/com/fb_rs232.c:257: SBUF=z;
   01C3 8A 99               605 	mov	_SBUF,r2
   01C5 22                  606 	ret
                            607 	.area CSEG    (CODE)
                            608 	.area CONST   (CODE)
                            609 	.area XINIT   (CODE)
                            610 	.area CABS    (ABS,CODE)
