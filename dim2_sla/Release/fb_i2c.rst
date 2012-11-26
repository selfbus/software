                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Thu Apr 19 21:17:26 2012
                              5 ;--------------------------------------------------------
                              6 	.module fb_i2c
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
                            147 	.globl _i2c_sla_init
                            148 	.globl _i2c_ma_init
                            149 	.globl _i2c_wait
                            150 	.globl _i2c_send_daten
                            151 ;--------------------------------------------------------
                            152 ; special function registers
                            153 ;--------------------------------------------------------
                            154 	.area RSEG    (ABS,DATA)
   0000                     155 	.org 0x0000
                    0080    156 _P0	=	0x0080
                    0090    157 _P1	=	0x0090
                    00B0    158 _P3	=	0x00b0
                    00D0    159 _PSW	=	0x00d0
                    00E0    160 _ACC	=	0x00e0
                    00F0    161 _B	=	0x00f0
                    0081    162 _SP	=	0x0081
                    0082    163 _DPL	=	0x0082
                    0083    164 _DPH	=	0x0083
                    0087    165 _PCON	=	0x0087
                    0088    166 _TCON	=	0x0088
                    0089    167 _TMOD	=	0x0089
                    008A    168 _TL0	=	0x008a
                    008B    169 _TL1	=	0x008b
                    008C    170 _TH0	=	0x008c
                    008D    171 _TH1	=	0x008d
                    00A8    172 _IEN0	=	0x00a8
                    00B8    173 _IP0	=	0x00b8
                    0098    174 _SCON	=	0x0098
                    0099    175 _SBUF	=	0x0099
                    00A2    176 _AUXR1	=	0x00a2
                    00A9    177 _SADDR	=	0x00a9
                    00B9    178 _SADEN	=	0x00b9
                    00BE    179 _BRGR0	=	0x00be
                    00BF    180 _BRGR1	=	0x00bf
                    00BD    181 _BRGCON	=	0x00bd
                    00AC    182 _CMP1	=	0x00ac
                    00AD    183 _CMP2	=	0x00ad
                    0095    184 _DIVM	=	0x0095
                    00E7    185 _FMADRH	=	0x00e7
                    00E6    186 _FMADRL	=	0x00e6
                    00E4    187 _FMCON	=	0x00e4
                    00E5    188 _FMDATA	=	0x00e5
                    00DB    189 _I2ADR	=	0x00db
                    00D8    190 _I2CON	=	0x00d8
                    00DA    191 _I2DAT	=	0x00da
                    00DD    192 _I2SCLH	=	0x00dd
                    00DC    193 _I2SCLL	=	0x00dc
                    00D9    194 _I2STAT	=	0x00d9
                    00F8    195 _IP1	=	0x00f8
                    00F7    196 _IP1H	=	0x00f7
                    0094    197 _KBCON	=	0x0094
                    0086    198 _KBMASK	=	0x0086
                    0093    199 _KBPATN	=	0x0093
                    0084    200 _P0M1	=	0x0084
                    0085    201 _P0M2	=	0x0085
                    0091    202 _P1M1	=	0x0091
                    0092    203 _P1M2	=	0x0092
                    00B1    204 _P3M1	=	0x00b1
                    00B2    205 _P3M2	=	0x00b2
                    00B5    206 _PCONA	=	0x00b5
                    00F6    207 _PT0AD	=	0x00f6
                    00DF    208 _RSTSRC	=	0x00df
                    00D1    209 _RTCCON	=	0x00d1
                    00D2    210 _RTCH	=	0x00d2
                    00D3    211 _RTCL	=	0x00d3
                    00BA    212 _SSTAT	=	0x00ba
                    008F    213 _TAMOD	=	0x008f
                    0096    214 _TRIM	=	0x0096
                    00A7    215 _WDCON	=	0x00a7
                    00C1    216 _WDL	=	0x00c1
                    00C2    217 _WFEED1	=	0x00c2
                    00C3    218 _WFEED2	=	0x00c3
                    00B7    219 _IP0H	=	0x00b7
                    00E8    220 _IEN1	=	0x00e8
                            221 ;--------------------------------------------------------
                            222 ; special function bits
                            223 ;--------------------------------------------------------
                            224 	.area RSEG    (ABS,DATA)
   0000                     225 	.org 0x0000
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
                            308 ;--------------------------------------------------------
                            309 ; indirectly addressable internal ram data
                            310 ;--------------------------------------------------------
                            311 	.area ISEG    (DATA)
                            312 ;--------------------------------------------------------
                            313 ; absolute internal ram data
                            314 ;--------------------------------------------------------
                            315 	.area IABS    (ABS,DATA)
                            316 	.area IABS    (ABS,DATA)
                            317 ;--------------------------------------------------------
                            318 ; bit data
                            319 ;--------------------------------------------------------
                            320 	.area BSEG    (BIT)
                            321 ;--------------------------------------------------------
                            322 ; paged external ram data
                            323 ;--------------------------------------------------------
                            324 	.area PSEG    (PAG,XDATA)
                            325 ;--------------------------------------------------------
                            326 ; external ram data
                            327 ;--------------------------------------------------------
                            328 	.area XSEG    (XDATA)
                            329 ;--------------------------------------------------------
                            330 ; absolute external ram data
                            331 ;--------------------------------------------------------
                            332 	.area XABS    (ABS,XDATA)
                            333 ;--------------------------------------------------------
                            334 ; external initialized ram data
                            335 ;--------------------------------------------------------
                            336 	.area XISEG   (XDATA)
                            337 	.area HOME    (CODE)
                            338 	.area GSINIT0 (CODE)
                            339 	.area GSINIT1 (CODE)
                            340 	.area GSINIT2 (CODE)
                            341 	.area GSINIT3 (CODE)
                            342 	.area GSINIT4 (CODE)
                            343 	.area GSINIT5 (CODE)
                            344 	.area GSINIT  (CODE)
                            345 	.area GSFINAL (CODE)
                            346 	.area CSEG    (CODE)
                            347 ;--------------------------------------------------------
                            348 ; global & static initialisations
                            349 ;--------------------------------------------------------
                            350 	.area HOME    (CODE)
                            351 	.area GSINIT  (CODE)
                            352 	.area GSFINAL (CODE)
                            353 	.area GSINIT  (CODE)
                            354 ;--------------------------------------------------------
                            355 ; Home
                            356 ;--------------------------------------------------------
                            357 	.area HOME    (CODE)
                            358 	.area HOME    (CODE)
                            359 ;--------------------------------------------------------
                            360 ; code
                            361 ;--------------------------------------------------------
                            362 	.area CSEG    (CODE)
                            363 ;------------------------------------------------------------
                            364 ;Allocation info for local variables in function 'i2c_sla_init'
                            365 ;------------------------------------------------------------
                            366 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:13: void i2c_sla_init(void)
                            367 ;	-----------------------------------------
                            368 ;	 function i2c_sla_init
                            369 ;	-----------------------------------------
   0249                     370 _i2c_sla_init:
                    0007    371 	ar7 = 0x07
                    0006    372 	ar6 = 0x06
                    0005    373 	ar5 = 0x05
                    0004    374 	ar4 = 0x04
                    0003    375 	ar3 = 0x03
                    0002    376 	ar2 = 0x02
                    0001    377 	ar1 = 0x01
                    0000    378 	ar0 = 0x00
                            379 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:15: P1M1 |= 0x0c;//(1<<2)+(1<<3);
   0249 43 91 0C            380 	orl	_P1M1,#0x0C
                            381 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:16: P1M2 &= ~0x0c;
   024C AF 92               382 	mov	r7,_P1M2
   024E 53 07 F3            383 	anl	ar7,#0xF3
   0251 8F 92               384 	mov	_P1M2,r7
                            385 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:17: I2ADR = 0xa0; // default slave address
   0253 75 DB A0            386 	mov	_I2ADR,#0xA0
                            387 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:18: I2CON = 0x44;
   0256 75 D8 44            388 	mov	_I2CON,#0x44
                            389 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:19: I2SCLH=0; //I2C takt
   0259 75 DD 00            390 	mov	_I2SCLH,#0x00
                            391 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:20: I2SCLL=0; //I2C takt
   025C 75 DC 00            392 	mov	_I2SCLL,#0x00
                            393 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:21: SDA=1;
   025F D2 93               394 	setb	_P1_3
                            395 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:22: SCL=1;
   0261 D2 92               396 	setb	_P1_2
                            397 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:23: EI2C=1;
   0263 D2 E8               398 	setb	_IEN1_0
                            399 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:24: EA=1;
   0265 D2 AF               400 	setb	_IEN0_7
                            401 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:25: return;
   0267 22                  402 	ret
                            403 ;------------------------------------------------------------
                            404 ;Allocation info for local variables in function 'i2c_ma_init'
                            405 ;------------------------------------------------------------
                            406 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:28: void i2c_ma_init(void)
                            407 ;	-----------------------------------------
                            408 ;	 function i2c_ma_init
                            409 ;	-----------------------------------------
   0268                     410 _i2c_ma_init:
                            411 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:30: P1M1 |= 0x0c;//(1<<2)+(1<<3);
   0268 43 91 0C            412 	orl	_P1M1,#0x0C
                            413 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:31: P1M2 |= 0x0c;//((1<<2)+(1<<3));
   026B 43 92 0C            414 	orl	_P1M2,#0x0C
                            415 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:32: I2ADR = 0xa0; // default slave address
   026E 75 DB A0            416 	mov	_I2ADR,#0xA0
                            417 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:33: I2CON = 0x44;
   0271 75 D8 44            418 	mov	_I2CON,#0x44
                            419 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:34: I2SCLH=17; //I2C takt
   0274 75 DD 11            420 	mov	_I2SCLH,#0x11
                            421 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:35: I2SCLL=17; //I2C takt
   0277 75 DC 11            422 	mov	_I2SCLL,#0x11
                            423 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:36: SDA=1;
   027A D2 93               424 	setb	_P1_3
                            425 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:37: SCL=1;
   027C D2 92               426 	setb	_P1_2
                            427 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:38: return;
   027E 22                  428 	ret
                            429 ;------------------------------------------------------------
                            430 ;Allocation info for local variables in function 'i2c_wait'
                            431 ;------------------------------------------------------------
                            432 ;timeueberlauf             Allocated to registers r6 r7 
                            433 ;------------------------------------------------------------
                            434 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:40: unsigned char i2c_wait(void)
                            435 ;	-----------------------------------------
                            436 ;	 function i2c_wait
                            437 ;	-----------------------------------------
   027F                     438 _i2c_wait:
                            439 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:44: while (SI==0)
   027F 7E 00               440 	mov	r6,#0x00
   0281 7F 00               441 	mov	r7,#0x00
   0283                     442 00103$:
   0283 20 DB 14            443 	jb	_I2CON_3,00105$
                            444 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:47: timeueberlauf++;
   0286 0E                  445 	inc	r6
   0287 BE 00 01            446 	cjne	r6,#0x00,00115$
   028A 0F                  447 	inc	r7
   028B                     448 00115$:
                            449 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:48: if(timeueberlauf>MAX_I2C_ZEIT)
   028B C3                  450 	clr	c
   028C 74 B8               451 	mov	a,#0xB8
   028E 9E                  452 	subb	a,r6
   028F 74 0B               453 	mov	a,#0x0B
   0291 9F                  454 	subb	a,r7
   0292 50 EF               455 	jnc	00103$
                            456 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:51: SI=0;
   0294 C2 DB               457 	clr	_I2CON_3
                            458 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:52: return 0xFF;
   0296 75 82 FF            459 	mov	dpl,#0xFF
   0299 22                  460 	ret
   029A                     461 00105$:
                            462 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:57: SI=0;
   029A C2 DB               463 	clr	_I2CON_3
                            464 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:58: return 0;
   029C 75 82 00            465 	mov	dpl,#0x00
   029F 22                  466 	ret
                            467 ;------------------------------------------------------------
                            468 ;Allocation info for local variables in function 'i2c_send_daten'
                            469 ;------------------------------------------------------------
                            470 ;K2                        Allocated to stack - _bp -3
                            471 ;K1                        Allocated to registers r7 
                            472 ;m1                        Allocated to registers r6 
                            473 ;m2                        Allocated to registers r5 
                            474 ;------------------------------------------------------------
                            475 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:62: unsigned char i2c_send_daten(unsigned char K1,unsigned char K2)
                            476 ;	-----------------------------------------
                            477 ;	 function i2c_send_daten
                            478 ;	-----------------------------------------
   02A0                     479 _i2c_send_daten:
   02A0 C0 17               480 	push	_bp
   02A2 85 81 17            481 	mov	_bp,sp
   02A5 AF 82               482 	mov	r7,dpl
                            483 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:64: unsigned char m1=P0M1;      //wert sichern
   02A7 AE 84               484 	mov	r6,_P0M1
                            485 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:65: unsigned char m2=P0M2;      //wert sichern
   02A9 AD 85               486 	mov	r5,_P0M2
                            487 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:66: P0M1=0xFF;  //eingänge umschalten wegen Tastererweiterung
   02AB 75 84 FF            488 	mov	_P0M1,#0xFF
                            489 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:67: P0M2=0x00;  //eingänge umschalten wegen Tastererweiterung
   02AE 75 85 00            490 	mov	_P0M2,#0x00
                            491 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:68: I2SCLH=17;
   02B1 75 DD 11            492 	mov	_I2SCLH,#0x11
                            493 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:69: I2SCLL=17;
   02B4 75 DC 11            494 	mov	_I2SCLL,#0x11
                            495 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:70: I2CON=0;
   02B7 75 D8 00            496 	mov	_I2CON,#0x00
                            497 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:71: I2EN=1;         //Master Transmit mode
   02BA D2 DE               498 	setb	_I2CON_6
                            499 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:72: CRSEL=0;        //CRSEL=0
   02BC C2 D8               500 	clr	_I2CON_0
                            501 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:73: STA=1;           //send Start MASTER
   02BE D2 DD               502 	setb	_I2CON_5
                            503 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:74: if(i2c_wait()!=0)
   02C0 C0 07               504 	push	ar7
   02C2 C0 06               505 	push	ar6
   02C4 C0 05               506 	push	ar5
   02C6 12 02 7F            507 	lcall	_i2c_wait
   02C9 E5 82               508 	mov	a,dpl
   02CB D0 05               509 	pop	ar5
   02CD D0 06               510 	pop	ar6
   02CF D0 07               511 	pop	ar7
   02D1 60 05               512 	jz	00102$
                            513 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:75: return 0xff;
   02D3 75 82 FF            514 	mov	dpl,#0xFF
   02D6 80 72               515 	sjmp	00111$
   02D8                     516 00102$:
                            517 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:76: STA=0;
   02D8 C2 DD               518 	clr	_I2CON_5
                            519 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:77: I2DAT = 0xa0+0;//a0= adresse i2c eeprom 0=schreiben SLA_W;       //Adresse senden MASTER
   02DA 75 DA A0            520 	mov	_I2DAT,#0xA0
                            521 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:78: if(i2c_wait()!=0)
   02DD C0 07               522 	push	ar7
   02DF C0 06               523 	push	ar6
   02E1 C0 05               524 	push	ar5
   02E3 12 02 7F            525 	lcall	_i2c_wait
   02E6 E5 82               526 	mov	a,dpl
   02E8 D0 05               527 	pop	ar5
   02EA D0 06               528 	pop	ar6
   02EC D0 07               529 	pop	ar7
   02EE 60 05               530 	jz	00104$
                            531 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:79: return 0xff;
   02F0 75 82 FF            532 	mov	dpl,#0xFF
   02F3 80 55               533 	sjmp	00111$
   02F5                     534 00104$:
                            535 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:80: I2DAT = 0x00;                           //Daten Senden MASTER
   02F5 75 DA 00            536 	mov	_I2DAT,#0x00
                            537 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:81: if(i2c_wait()!=0)
   02F8 C0 07               538 	push	ar7
   02FA C0 06               539 	push	ar6
   02FC C0 05               540 	push	ar5
   02FE 12 02 7F            541 	lcall	_i2c_wait
   0301 E5 82               542 	mov	a,dpl
   0303 D0 05               543 	pop	ar5
   0305 D0 06               544 	pop	ar6
   0307 D0 07               545 	pop	ar7
   0309 60 05               546 	jz	00106$
                            547 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:82: return 0xff;
   030B 75 82 FF            548 	mov	dpl,#0xFF
   030E 80 3A               549 	sjmp	00111$
   0310                     550 00106$:
                            551 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:83: I2DAT = K1;                             //Daten Senden MASTER
   0310 8F DA               552 	mov	_I2DAT,r7
                            553 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:84: if(i2c_wait()!=0)
   0312 C0 06               554 	push	ar6
   0314 C0 05               555 	push	ar5
   0316 12 02 7F            556 	lcall	_i2c_wait
   0319 E5 82               557 	mov	a,dpl
   031B D0 05               558 	pop	ar5
   031D D0 06               559 	pop	ar6
   031F 60 05               560 	jz	00108$
                            561 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:85: return 0xff;
   0321 75 82 FF            562 	mov	dpl,#0xFF
   0324 80 24               563 	sjmp	00111$
   0326                     564 00108$:
                            565 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:86: I2DAT = K2;                             //Daten Senden MASTER
   0326 E5 17               566 	mov	a,_bp
   0328 24 FD               567 	add	a,#0xfd
   032A F8                  568 	mov	r0,a
   032B 86 DA               569 	mov	_I2DAT,@r0
                            570 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:88: if(i2c_wait()!=0)
   032D C0 06               571 	push	ar6
   032F C0 05               572 	push	ar5
   0331 12 02 7F            573 	lcall	_i2c_wait
   0334 E5 82               574 	mov	a,dpl
   0336 D0 05               575 	pop	ar5
   0338 D0 06               576 	pop	ar6
   033A 60 05               577 	jz	00110$
                            578 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:89: return 0xff;
   033C 75 82 FF            579 	mov	dpl,#0xFF
   033F 80 09               580 	sjmp	00111$
   0341                     581 00110$:
                            582 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:90: STO=1;            //send Stop MASTER
   0341 D2 DC               583 	setb	_I2CON_4
                            584 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:91: P0M1=m1;  //eingänge umschalten wegen Tastererweiterung
   0343 8E 84               585 	mov	_P0M1,r6
                            586 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:92: P0M2=m2;  //eingänge umschalten wegen Tastererweiterung
   0345 8D 85               587 	mov	_P0M2,r5
                            588 ;	C:/Dokumente und Einstellungen/Andreas/Eigene Dateien/freebus/trunk/software/c51/89LPC922/dim2/fb_i2c.c:93: return 0;
   0347 75 82 00            589 	mov	dpl,#0x00
   034A                     590 00111$:
   034A D0 17               591 	pop	_bp
   034C 22                  592 	ret
                            593 	.area CSEG    (CODE)
                            594 	.area CONST   (CODE)
                            595 	.area XINIT   (CODE)
                            596 	.area CABS    (ABS,CODE)
