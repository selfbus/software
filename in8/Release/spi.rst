                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.4 #7479 (Mar 23 2012) (MINGW32)
                              4 ; This file was generated Tue Nov 06 15:48:14 2012
                              5 ;--------------------------------------------------------
                              6 	.module spi
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
                            147 	.globl _spi_in_out
                            148 ;--------------------------------------------------------
                            149 ; special function registers
                            150 ;--------------------------------------------------------
                            151 	.area RSEG    (ABS,DATA)
   0000                     152 	.org 0x0000
                    0080    153 _P0	=	0x0080
                    0090    154 _P1	=	0x0090
                    00B0    155 _P3	=	0x00b0
                    00D0    156 _PSW	=	0x00d0
                    00E0    157 _ACC	=	0x00e0
                    00F0    158 _B	=	0x00f0
                    0081    159 _SP	=	0x0081
                    0082    160 _DPL	=	0x0082
                    0083    161 _DPH	=	0x0083
                    0087    162 _PCON	=	0x0087
                    0088    163 _TCON	=	0x0088
                    0089    164 _TMOD	=	0x0089
                    008A    165 _TL0	=	0x008a
                    008B    166 _TL1	=	0x008b
                    008C    167 _TH0	=	0x008c
                    008D    168 _TH1	=	0x008d
                    00A8    169 _IEN0	=	0x00a8
                    00B8    170 _IP0	=	0x00b8
                    0098    171 _SCON	=	0x0098
                    0099    172 _SBUF	=	0x0099
                    00A2    173 _AUXR1	=	0x00a2
                    00A9    174 _SADDR	=	0x00a9
                    00B9    175 _SADEN	=	0x00b9
                    00BE    176 _BRGR0	=	0x00be
                    00BF    177 _BRGR1	=	0x00bf
                    00BD    178 _BRGCON	=	0x00bd
                    00AC    179 _CMP1	=	0x00ac
                    00AD    180 _CMP2	=	0x00ad
                    0095    181 _DIVM	=	0x0095
                    00E7    182 _FMADRH	=	0x00e7
                    00E6    183 _FMADRL	=	0x00e6
                    00E4    184 _FMCON	=	0x00e4
                    00E5    185 _FMDATA	=	0x00e5
                    00DB    186 _I2ADR	=	0x00db
                    00D8    187 _I2CON	=	0x00d8
                    00DA    188 _I2DAT	=	0x00da
                    00DD    189 _I2SCLH	=	0x00dd
                    00DC    190 _I2SCLL	=	0x00dc
                    00D9    191 _I2STAT	=	0x00d9
                    00F8    192 _IP1	=	0x00f8
                    00F7    193 _IP1H	=	0x00f7
                    0094    194 _KBCON	=	0x0094
                    0086    195 _KBMASK	=	0x0086
                    0093    196 _KBPATN	=	0x0093
                    0084    197 _P0M1	=	0x0084
                    0085    198 _P0M2	=	0x0085
                    0091    199 _P1M1	=	0x0091
                    0092    200 _P1M2	=	0x0092
                    00B1    201 _P3M1	=	0x00b1
                    00B2    202 _P3M2	=	0x00b2
                    00B5    203 _PCONA	=	0x00b5
                    00F6    204 _PT0AD	=	0x00f6
                    00DF    205 _RSTSRC	=	0x00df
                    00D1    206 _RTCCON	=	0x00d1
                    00D2    207 _RTCH	=	0x00d2
                    00D3    208 _RTCL	=	0x00d3
                    00BA    209 _SSTAT	=	0x00ba
                    008F    210 _TAMOD	=	0x008f
                    0096    211 _TRIM	=	0x0096
                    00A7    212 _WDCON	=	0x00a7
                    00C1    213 _WDL	=	0x00c1
                    00C2    214 _WFEED1	=	0x00c2
                    00C3    215 _WFEED2	=	0x00c3
                    00B7    216 _IP0H	=	0x00b7
                    00E8    217 _IEN1	=	0x00e8
                            218 ;--------------------------------------------------------
                            219 ; special function bits
                            220 ;--------------------------------------------------------
                            221 	.area RSEG    (ABS,DATA)
   0000                     222 	.org 0x0000
                    00D0    223 _PSW_0	=	0x00d0
                    00D1    224 _PSW_1	=	0x00d1
                    00D2    225 _PSW_2	=	0x00d2
                    00D3    226 _PSW_3	=	0x00d3
                    00D4    227 _PSW_4	=	0x00d4
                    00D5    228 _PSW_5	=	0x00d5
                    00D6    229 _PSW_6	=	0x00d6
                    00D7    230 _PSW_7	=	0x00d7
                    008F    231 _TCON_7	=	0x008f
                    008E    232 _TCON_6	=	0x008e
                    008D    233 _TCON_5	=	0x008d
                    008C    234 _TCON_4	=	0x008c
                    008B    235 _TCON_3	=	0x008b
                    008A    236 _TCON_2	=	0x008a
                    0089    237 _TCON_1	=	0x0089
                    0088    238 _TCON_0	=	0x0088
                    00AF    239 _IEN0_7	=	0x00af
                    00AE    240 _IEN0_6	=	0x00ae
                    00AD    241 _IEN0_5	=	0x00ad
                    00AC    242 _IEN0_4	=	0x00ac
                    00AB    243 _IEN0_3	=	0x00ab
                    00AA    244 _IEN0_2	=	0x00aa
                    00A9    245 _IEN0_1	=	0x00a9
                    00A8    246 _IEN0_0	=	0x00a8
                    00EA    247 _IEN1_2	=	0x00ea
                    00E9    248 _IEN1_1	=	0x00e9
                    00E8    249 _IEN1_0	=	0x00e8
                    00FE    250 _IP1_6	=	0x00fe
                    00FA    251 _IP1_2	=	0x00fa
                    00F9    252 _IP1_1	=	0x00f9
                    00F8    253 _IP1_0	=	0x00f8
                    00BE    254 _IP0_6	=	0x00be
                    00BD    255 _IP0_5	=	0x00bd
                    00BC    256 _IP0_4	=	0x00bc
                    00BB    257 _IP0_3	=	0x00bb
                    00BA    258 _IP0_2	=	0x00ba
                    00B9    259 _IP0_1	=	0x00b9
                    00B8    260 _IP0_0	=	0x00b8
                    0098    261 _SCON_0	=	0x0098
                    0099    262 _SCON_1	=	0x0099
                    009A    263 _SCON_2	=	0x009a
                    009B    264 _SCON_3	=	0x009b
                    009C    265 _SCON_4	=	0x009c
                    009D    266 _SCON_5	=	0x009d
                    009E    267 _SCON_6	=	0x009e
                    009F    268 _SCON_7	=	0x009f
                    00DE    269 _I2CON_6	=	0x00de
                    00DD    270 _I2CON_5	=	0x00dd
                    00DC    271 _I2CON_4	=	0x00dc
                    00DB    272 _I2CON_3	=	0x00db
                    00DA    273 _I2CON_2	=	0x00da
                    00D8    274 _I2CON_0	=	0x00d8
                    0080    275 _P0_0	=	0x0080
                    0081    276 _P0_1	=	0x0081
                    0082    277 _P0_2	=	0x0082
                    0083    278 _P0_3	=	0x0083
                    0084    279 _P0_4	=	0x0084
                    0085    280 _P0_5	=	0x0085
                    0086    281 _P0_6	=	0x0086
                    0087    282 _P0_7	=	0x0087
                    0090    283 _P1_0	=	0x0090
                    0091    284 _P1_1	=	0x0091
                    0092    285 _P1_2	=	0x0092
                    0093    286 _P1_3	=	0x0093
                    0094    287 _P1_4	=	0x0094
                    0095    288 _P1_5	=	0x0095
                    0096    289 _P1_6	=	0x0096
                    0097    290 _P1_7	=	0x0097
                    00B0    291 _P3_0	=	0x00b0
                    00B1    292 _P3_1	=	0x00b1
                            293 ;--------------------------------------------------------
                            294 ; overlayable register banks
                            295 ;--------------------------------------------------------
                            296 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     297 	.ds 8
                            298 ;--------------------------------------------------------
                            299 ; internal ram data
                            300 ;--------------------------------------------------------
                            301 	.area DSEG    (DATA)
                            302 ;--------------------------------------------------------
                            303 ; overlayable items in internal ram 
                            304 ;--------------------------------------------------------
                            305 ;--------------------------------------------------------
                            306 ; indirectly addressable internal ram data
                            307 ;--------------------------------------------------------
                            308 	.area ISEG    (DATA)
                            309 ;--------------------------------------------------------
                            310 ; absolute internal ram data
                            311 ;--------------------------------------------------------
                            312 	.area IABS    (ABS,DATA)
                            313 	.area IABS    (ABS,DATA)
                            314 ;--------------------------------------------------------
                            315 ; bit data
                            316 ;--------------------------------------------------------
                            317 	.area BSEG    (BIT)
                            318 ;--------------------------------------------------------
                            319 ; paged external ram data
                            320 ;--------------------------------------------------------
                            321 	.area PSEG    (PAG,XDATA)
                            322 ;--------------------------------------------------------
                            323 ; external ram data
                            324 ;--------------------------------------------------------
                            325 	.area XSEG    (XDATA)
                            326 ;--------------------------------------------------------
                            327 ; absolute external ram data
                            328 ;--------------------------------------------------------
                            329 	.area XABS    (ABS,XDATA)
                            330 ;--------------------------------------------------------
                            331 ; external initialized ram data
                            332 ;--------------------------------------------------------
                            333 	.area XISEG   (XDATA)
                            334 	.area HOME    (CODE)
                            335 	.area GSINIT0 (CODE)
                            336 	.area GSINIT1 (CODE)
                            337 	.area GSINIT2 (CODE)
                            338 	.area GSINIT3 (CODE)
                            339 	.area GSINIT4 (CODE)
                            340 	.area GSINIT5 (CODE)
                            341 	.area GSINIT  (CODE)
                            342 	.area GSFINAL (CODE)
                            343 	.area CSEG    (CODE)
                            344 ;--------------------------------------------------------
                            345 ; global & static initialisations
                            346 ;--------------------------------------------------------
                            347 	.area HOME    (CODE)
                            348 	.area GSINIT  (CODE)
                            349 	.area GSFINAL (CODE)
                            350 	.area GSINIT  (CODE)
                            351 ;--------------------------------------------------------
                            352 ; Home
                            353 ;--------------------------------------------------------
                            354 	.area HOME    (CODE)
                            355 	.area HOME    (CODE)
                            356 ;--------------------------------------------------------
                            357 ; code
                            358 ;--------------------------------------------------------
                            359 	.area CSEG    (CODE)
                            360 ;------------------------------------------------------------
                            361 ;Allocation info for local variables in function 'spi_in_out'
                            362 ;------------------------------------------------------------
                            363 ;daten                     Allocated to registers r7 
                            364 ;n                         Allocated to registers r6 
                            365 ;------------------------------------------------------------
                            366 ;	../spi.c:58: unsigned char spi_in_out(void)
                            367 ;	-----------------------------------------
                            368 ;	 function spi_in_out
                            369 ;	-----------------------------------------
   1285                     370 _spi_in_out:
                    0007    371 	ar7 = 0x07
                    0006    372 	ar6 = 0x06
                    0005    373 	ar5 = 0x05
                    0004    374 	ar4 = 0x04
                    0003    375 	ar3 = 0x03
                    0002    376 	ar2 = 0x02
                    0001    377 	ar1 = 0x01
                    0000    378 	ar0 = 0x00
                            379 ;	../spi.c:60: unsigned char daten=0, n;
   1285 7F 00               380 	mov	r7,#0x00
                            381 ;	../spi.c:62: READ=1;
   1287 D2 82               382 	setb	_P0_2
                            383 ;	../spi.c:63: WRITE=0;
   1289 C2 85               384 	clr	_P0_5
                            385 ;	../spi.c:65: do
   128B                     386 00105$:
                            387 ;	../spi.c:68: if(interrupted){
   128B 30 04 06            388 	jnb	_interrupted,00117$
                            389 ;	../spi.c:69: READ=0;
   128E C2 82               390 	clr	_P0_2
                            391 ;	../spi.c:70: READ=1;
   1290 D2 82               392 	setb	_P0_2
                            393 ;	../spi.c:71: interrupted=0;
   1292 C2 04               394 	clr	_interrupted
                            395 ;	../spi.c:74: for(n=0;n<=7;n++)
   1294                     396 00117$:
   1294 7E 00               397 	mov	r6,#0x00
   1296                     398 00108$:
   1296 EE                  399 	mov	a,r6
   1297 24 F8               400 	add	a,#0xff - 0x07
   1299 40 12               401 	jc	00106$
                            402 ;	../spi.c:76: CLK=0;
   129B C2 80               403 	clr	_P0_0
                            404 ;	../spi.c:77: daten<<=1;
   129D EF                  405 	mov	a,r7
   129E 2F                  406 	add	a,r7
   129F FF                  407 	mov	r7,a
                            408 ;	../spi.c:78: if (SER_IN) daten++;
   12A0 30 81 01            409 	jnb	_P0_1,00104$
   12A3 0F                  410 	inc	r7
   12A4                     411 00104$:
                            412 ;	../spi.c:79: SER_OUT=SER_IN;
   12A4 A2 81               413 	mov	c,_P0_1
   12A6 92 83               414 	mov	_P0_3,c
                            415 ;	../spi.c:80: CLK=1;
   12A8 D2 80               416 	setb	_P0_0
                            417 ;	../spi.c:74: for(n=0;n<=7;n++)
   12AA 0E                  418 	inc	r6
   12AB 80 E9               419 	sjmp	00108$
   12AD                     420 00106$:
                            421 ;	../spi.c:83: }while (interrupted);
   12AD 20 04 DB            422 	jb	_interrupted,00105$
                            423 ;	../spi.c:85: READ=0;
   12B0 C2 82               424 	clr	_P0_2
                            425 ;	../spi.c:86: WRITE=1;
   12B2 D2 85               426 	setb	_P0_5
                            427 ;	../spi.c:88: return daten;
   12B4 8F 82               428 	mov	dpl,r7
   12B6 22                  429 	ret
                            430 	.area CSEG    (CODE)
                            431 	.area CONST   (CODE)
                            432 	.area XINIT   (CODE)
                            433 	.area CABS    (ABS,CODE)
