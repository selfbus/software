                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Sun Feb 03 20:05:32 2013
                              5 ;--------------------------------------------------------
                              6 	.module dim2_sla
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _send
                             14 	.globl _in50hz_init
                             15 	.globl _ex1_int
                             16 	.globl _nulldurchgang
                             17 	.globl _i2c_int
                             18 	.globl _i2c_sla_init
                             19 	.globl _P3_1
                             20 	.globl _P3_0
                             21 	.globl _P1_7
                             22 	.globl _P1_6
                             23 	.globl _P1_5
                             24 	.globl _P1_4
                             25 	.globl _P1_3
                             26 	.globl _P1_2
                             27 	.globl _P1_1
                             28 	.globl _P1_0
                             29 	.globl _P0_7
                             30 	.globl _P0_6
                             31 	.globl _P0_5
                             32 	.globl _P0_4
                             33 	.globl _P0_3
                             34 	.globl _P0_2
                             35 	.globl _P0_1
                             36 	.globl _P0_0
                             37 	.globl _I2CON_0
                             38 	.globl _I2CON_2
                             39 	.globl _I2CON_3
                             40 	.globl _I2CON_4
                             41 	.globl _I2CON_5
                             42 	.globl _I2CON_6
                             43 	.globl _SCON_7
                             44 	.globl _SCON_6
                             45 	.globl _SCON_5
                             46 	.globl _SCON_4
                             47 	.globl _SCON_3
                             48 	.globl _SCON_2
                             49 	.globl _SCON_1
                             50 	.globl _SCON_0
                             51 	.globl _IP0_0
                             52 	.globl _IP0_1
                             53 	.globl _IP0_2
                             54 	.globl _IP0_3
                             55 	.globl _IP0_4
                             56 	.globl _IP0_5
                             57 	.globl _IP0_6
                             58 	.globl _IP1_0
                             59 	.globl _IP1_1
                             60 	.globl _IP1_2
                             61 	.globl _IP1_6
                             62 	.globl _IEN1_0
                             63 	.globl _IEN1_1
                             64 	.globl _IEN1_2
                             65 	.globl _IEN0_0
                             66 	.globl _IEN0_1
                             67 	.globl _IEN0_2
                             68 	.globl _IEN0_3
                             69 	.globl _IEN0_4
                             70 	.globl _IEN0_5
                             71 	.globl _IEN0_6
                             72 	.globl _IEN0_7
                             73 	.globl _TCON_0
                             74 	.globl _TCON_1
                             75 	.globl _TCON_2
                             76 	.globl _TCON_3
                             77 	.globl _TCON_4
                             78 	.globl _TCON_5
                             79 	.globl _TCON_6
                             80 	.globl _TCON_7
                             81 	.globl _PSW_7
                             82 	.globl _PSW_6
                             83 	.globl _PSW_5
                             84 	.globl _PSW_4
                             85 	.globl _PSW_3
                             86 	.globl _PSW_2
                             87 	.globl _PSW_1
                             88 	.globl _PSW_0
                             89 	.globl _IEN1
                             90 	.globl _IP0H
                             91 	.globl _WFEED2
                             92 	.globl _WFEED1
                             93 	.globl _WDL
                             94 	.globl _WDCON
                             95 	.globl _TRIM
                             96 	.globl _TAMOD
                             97 	.globl _SSTAT
                             98 	.globl _RTCL
                             99 	.globl _RTCH
                            100 	.globl _RTCCON
                            101 	.globl _RSTSRC
                            102 	.globl _PT0AD
                            103 	.globl _PCONA
                            104 	.globl _P3M2
                            105 	.globl _P3M1
                            106 	.globl _P1M2
                            107 	.globl _P1M1
                            108 	.globl _P0M2
                            109 	.globl _P0M1
                            110 	.globl _KBPATN
                            111 	.globl _KBMASK
                            112 	.globl _KBCON
                            113 	.globl _IP1H
                            114 	.globl _IP1
                            115 	.globl _I2STAT
                            116 	.globl _I2SCLL
                            117 	.globl _I2SCLH
                            118 	.globl _I2DAT
                            119 	.globl _I2CON
                            120 	.globl _I2ADR
                            121 	.globl _FMDATA
                            122 	.globl _FMCON
                            123 	.globl _FMADRL
                            124 	.globl _FMADRH
                            125 	.globl _DIVM
                            126 	.globl _CMP2
                            127 	.globl _CMP1
                            128 	.globl _BRGCON
                            129 	.globl _BRGR1
                            130 	.globl _BRGR0
                            131 	.globl _SADEN
                            132 	.globl _SADDR
                            133 	.globl _AUXR1
                            134 	.globl _SBUF
                            135 	.globl _SCON
                            136 	.globl _IP0
                            137 	.globl _IEN0
                            138 	.globl _TH1
                            139 	.globl _TH0
                            140 	.globl _TL1
                            141 	.globl _TL0
                            142 	.globl _TMOD
                            143 	.globl _TCON
                            144 	.globl _PCON
                            145 	.globl _DPH
                            146 	.globl _DPL
                            147 	.globl _SP
                            148 	.globl _B
                            149 	.globl _ACC
                            150 	.globl _PSW
                            151 	.globl _P3
                            152 	.globl _P1
                            153 	.globl _P0
                            154 	.globl _locked
                            155 	.globl _RAM
                            156 	.globl _phase
                            157 	.globl _cmd
                            158 	.globl _dimmcompare
                            159 	.globl _mode
                            160 	.globl _dimmzl
                            161 	.globl _m
                            162 	.globl _sp
                            163 	.globl _zl_50hz
                            164 	.globl _bytenummer
                            165 	.globl _mk
                            166 	.globl _dimm_I2C
                            167 ;--------------------------------------------------------
                            168 ; special function registers
                            169 ;--------------------------------------------------------
                            170 	.area RSEG    (ABS,DATA)
   0000                     171 	.org 0x0000
                    0080    172 G$P0$0$0 == 0x0080
                    0080    173 _P0	=	0x0080
                    0090    174 G$P1$0$0 == 0x0090
                    0090    175 _P1	=	0x0090
                    00B0    176 G$P3$0$0 == 0x00b0
                    00B0    177 _P3	=	0x00b0
                    00D0    178 G$PSW$0$0 == 0x00d0
                    00D0    179 _PSW	=	0x00d0
                    00E0    180 G$ACC$0$0 == 0x00e0
                    00E0    181 _ACC	=	0x00e0
                    00F0    182 G$B$0$0 == 0x00f0
                    00F0    183 _B	=	0x00f0
                    0081    184 G$SP$0$0 == 0x0081
                    0081    185 _SP	=	0x0081
                    0082    186 G$DPL$0$0 == 0x0082
                    0082    187 _DPL	=	0x0082
                    0083    188 G$DPH$0$0 == 0x0083
                    0083    189 _DPH	=	0x0083
                    0087    190 G$PCON$0$0 == 0x0087
                    0087    191 _PCON	=	0x0087
                    0088    192 G$TCON$0$0 == 0x0088
                    0088    193 _TCON	=	0x0088
                    0089    194 G$TMOD$0$0 == 0x0089
                    0089    195 _TMOD	=	0x0089
                    008A    196 G$TL0$0$0 == 0x008a
                    008A    197 _TL0	=	0x008a
                    008B    198 G$TL1$0$0 == 0x008b
                    008B    199 _TL1	=	0x008b
                    008C    200 G$TH0$0$0 == 0x008c
                    008C    201 _TH0	=	0x008c
                    008D    202 G$TH1$0$0 == 0x008d
                    008D    203 _TH1	=	0x008d
                    00A8    204 G$IEN0$0$0 == 0x00a8
                    00A8    205 _IEN0	=	0x00a8
                    00B8    206 G$IP0$0$0 == 0x00b8
                    00B8    207 _IP0	=	0x00b8
                    0098    208 G$SCON$0$0 == 0x0098
                    0098    209 _SCON	=	0x0098
                    0099    210 G$SBUF$0$0 == 0x0099
                    0099    211 _SBUF	=	0x0099
                    00A2    212 G$AUXR1$0$0 == 0x00a2
                    00A2    213 _AUXR1	=	0x00a2
                    00A9    214 G$SADDR$0$0 == 0x00a9
                    00A9    215 _SADDR	=	0x00a9
                    00B9    216 G$SADEN$0$0 == 0x00b9
                    00B9    217 _SADEN	=	0x00b9
                    00BE    218 G$BRGR0$0$0 == 0x00be
                    00BE    219 _BRGR0	=	0x00be
                    00BF    220 G$BRGR1$0$0 == 0x00bf
                    00BF    221 _BRGR1	=	0x00bf
                    00BD    222 G$BRGCON$0$0 == 0x00bd
                    00BD    223 _BRGCON	=	0x00bd
                    00AC    224 G$CMP1$0$0 == 0x00ac
                    00AC    225 _CMP1	=	0x00ac
                    00AD    226 G$CMP2$0$0 == 0x00ad
                    00AD    227 _CMP2	=	0x00ad
                    0095    228 G$DIVM$0$0 == 0x0095
                    0095    229 _DIVM	=	0x0095
                    00E7    230 G$FMADRH$0$0 == 0x00e7
                    00E7    231 _FMADRH	=	0x00e7
                    00E6    232 G$FMADRL$0$0 == 0x00e6
                    00E6    233 _FMADRL	=	0x00e6
                    00E4    234 G$FMCON$0$0 == 0x00e4
                    00E4    235 _FMCON	=	0x00e4
                    00E5    236 G$FMDATA$0$0 == 0x00e5
                    00E5    237 _FMDATA	=	0x00e5
                    00DB    238 G$I2ADR$0$0 == 0x00db
                    00DB    239 _I2ADR	=	0x00db
                    00D8    240 G$I2CON$0$0 == 0x00d8
                    00D8    241 _I2CON	=	0x00d8
                    00DA    242 G$I2DAT$0$0 == 0x00da
                    00DA    243 _I2DAT	=	0x00da
                    00DD    244 G$I2SCLH$0$0 == 0x00dd
                    00DD    245 _I2SCLH	=	0x00dd
                    00DC    246 G$I2SCLL$0$0 == 0x00dc
                    00DC    247 _I2SCLL	=	0x00dc
                    00D9    248 G$I2STAT$0$0 == 0x00d9
                    00D9    249 _I2STAT	=	0x00d9
                    00F8    250 G$IP1$0$0 == 0x00f8
                    00F8    251 _IP1	=	0x00f8
                    00F7    252 G$IP1H$0$0 == 0x00f7
                    00F7    253 _IP1H	=	0x00f7
                    0094    254 G$KBCON$0$0 == 0x0094
                    0094    255 _KBCON	=	0x0094
                    0086    256 G$KBMASK$0$0 == 0x0086
                    0086    257 _KBMASK	=	0x0086
                    0093    258 G$KBPATN$0$0 == 0x0093
                    0093    259 _KBPATN	=	0x0093
                    0084    260 G$P0M1$0$0 == 0x0084
                    0084    261 _P0M1	=	0x0084
                    0085    262 G$P0M2$0$0 == 0x0085
                    0085    263 _P0M2	=	0x0085
                    0091    264 G$P1M1$0$0 == 0x0091
                    0091    265 _P1M1	=	0x0091
                    0092    266 G$P1M2$0$0 == 0x0092
                    0092    267 _P1M2	=	0x0092
                    00B1    268 G$P3M1$0$0 == 0x00b1
                    00B1    269 _P3M1	=	0x00b1
                    00B2    270 G$P3M2$0$0 == 0x00b2
                    00B2    271 _P3M2	=	0x00b2
                    00B5    272 G$PCONA$0$0 == 0x00b5
                    00B5    273 _PCONA	=	0x00b5
                    00F6    274 G$PT0AD$0$0 == 0x00f6
                    00F6    275 _PT0AD	=	0x00f6
                    00DF    276 G$RSTSRC$0$0 == 0x00df
                    00DF    277 _RSTSRC	=	0x00df
                    00D1    278 G$RTCCON$0$0 == 0x00d1
                    00D1    279 _RTCCON	=	0x00d1
                    00D2    280 G$RTCH$0$0 == 0x00d2
                    00D2    281 _RTCH	=	0x00d2
                    00D3    282 G$RTCL$0$0 == 0x00d3
                    00D3    283 _RTCL	=	0x00d3
                    00BA    284 G$SSTAT$0$0 == 0x00ba
                    00BA    285 _SSTAT	=	0x00ba
                    008F    286 G$TAMOD$0$0 == 0x008f
                    008F    287 _TAMOD	=	0x008f
                    0096    288 G$TRIM$0$0 == 0x0096
                    0096    289 _TRIM	=	0x0096
                    00A7    290 G$WDCON$0$0 == 0x00a7
                    00A7    291 _WDCON	=	0x00a7
                    00C1    292 G$WDL$0$0 == 0x00c1
                    00C1    293 _WDL	=	0x00c1
                    00C2    294 G$WFEED1$0$0 == 0x00c2
                    00C2    295 _WFEED1	=	0x00c2
                    00C3    296 G$WFEED2$0$0 == 0x00c3
                    00C3    297 _WFEED2	=	0x00c3
                    00B7    298 G$IP0H$0$0 == 0x00b7
                    00B7    299 _IP0H	=	0x00b7
                    00E8    300 G$IEN1$0$0 == 0x00e8
                    00E8    301 _IEN1	=	0x00e8
                            302 ;--------------------------------------------------------
                            303 ; special function bits
                            304 ;--------------------------------------------------------
                            305 	.area RSEG    (ABS,DATA)
   0000                     306 	.org 0x0000
                    00D0    307 G$PSW_0$0$0 == 0x00d0
                    00D0    308 _PSW_0	=	0x00d0
                    00D1    309 G$PSW_1$0$0 == 0x00d1
                    00D1    310 _PSW_1	=	0x00d1
                    00D2    311 G$PSW_2$0$0 == 0x00d2
                    00D2    312 _PSW_2	=	0x00d2
                    00D3    313 G$PSW_3$0$0 == 0x00d3
                    00D3    314 _PSW_3	=	0x00d3
                    00D4    315 G$PSW_4$0$0 == 0x00d4
                    00D4    316 _PSW_4	=	0x00d4
                    00D5    317 G$PSW_5$0$0 == 0x00d5
                    00D5    318 _PSW_5	=	0x00d5
                    00D6    319 G$PSW_6$0$0 == 0x00d6
                    00D6    320 _PSW_6	=	0x00d6
                    00D7    321 G$PSW_7$0$0 == 0x00d7
                    00D7    322 _PSW_7	=	0x00d7
                    008F    323 G$TCON_7$0$0 == 0x008f
                    008F    324 _TCON_7	=	0x008f
                    008E    325 G$TCON_6$0$0 == 0x008e
                    008E    326 _TCON_6	=	0x008e
                    008D    327 G$TCON_5$0$0 == 0x008d
                    008D    328 _TCON_5	=	0x008d
                    008C    329 G$TCON_4$0$0 == 0x008c
                    008C    330 _TCON_4	=	0x008c
                    008B    331 G$TCON_3$0$0 == 0x008b
                    008B    332 _TCON_3	=	0x008b
                    008A    333 G$TCON_2$0$0 == 0x008a
                    008A    334 _TCON_2	=	0x008a
                    0089    335 G$TCON_1$0$0 == 0x0089
                    0089    336 _TCON_1	=	0x0089
                    0088    337 G$TCON_0$0$0 == 0x0088
                    0088    338 _TCON_0	=	0x0088
                    00AF    339 G$IEN0_7$0$0 == 0x00af
                    00AF    340 _IEN0_7	=	0x00af
                    00AE    341 G$IEN0_6$0$0 == 0x00ae
                    00AE    342 _IEN0_6	=	0x00ae
                    00AD    343 G$IEN0_5$0$0 == 0x00ad
                    00AD    344 _IEN0_5	=	0x00ad
                    00AC    345 G$IEN0_4$0$0 == 0x00ac
                    00AC    346 _IEN0_4	=	0x00ac
                    00AB    347 G$IEN0_3$0$0 == 0x00ab
                    00AB    348 _IEN0_3	=	0x00ab
                    00AA    349 G$IEN0_2$0$0 == 0x00aa
                    00AA    350 _IEN0_2	=	0x00aa
                    00A9    351 G$IEN0_1$0$0 == 0x00a9
                    00A9    352 _IEN0_1	=	0x00a9
                    00A8    353 G$IEN0_0$0$0 == 0x00a8
                    00A8    354 _IEN0_0	=	0x00a8
                    00EA    355 G$IEN1_2$0$0 == 0x00ea
                    00EA    356 _IEN1_2	=	0x00ea
                    00E9    357 G$IEN1_1$0$0 == 0x00e9
                    00E9    358 _IEN1_1	=	0x00e9
                    00E8    359 G$IEN1_0$0$0 == 0x00e8
                    00E8    360 _IEN1_0	=	0x00e8
                    00FE    361 G$IP1_6$0$0 == 0x00fe
                    00FE    362 _IP1_6	=	0x00fe
                    00FA    363 G$IP1_2$0$0 == 0x00fa
                    00FA    364 _IP1_2	=	0x00fa
                    00F9    365 G$IP1_1$0$0 == 0x00f9
                    00F9    366 _IP1_1	=	0x00f9
                    00F8    367 G$IP1_0$0$0 == 0x00f8
                    00F8    368 _IP1_0	=	0x00f8
                    00BE    369 G$IP0_6$0$0 == 0x00be
                    00BE    370 _IP0_6	=	0x00be
                    00BD    371 G$IP0_5$0$0 == 0x00bd
                    00BD    372 _IP0_5	=	0x00bd
                    00BC    373 G$IP0_4$0$0 == 0x00bc
                    00BC    374 _IP0_4	=	0x00bc
                    00BB    375 G$IP0_3$0$0 == 0x00bb
                    00BB    376 _IP0_3	=	0x00bb
                    00BA    377 G$IP0_2$0$0 == 0x00ba
                    00BA    378 _IP0_2	=	0x00ba
                    00B9    379 G$IP0_1$0$0 == 0x00b9
                    00B9    380 _IP0_1	=	0x00b9
                    00B8    381 G$IP0_0$0$0 == 0x00b8
                    00B8    382 _IP0_0	=	0x00b8
                    0098    383 G$SCON_0$0$0 == 0x0098
                    0098    384 _SCON_0	=	0x0098
                    0099    385 G$SCON_1$0$0 == 0x0099
                    0099    386 _SCON_1	=	0x0099
                    009A    387 G$SCON_2$0$0 == 0x009a
                    009A    388 _SCON_2	=	0x009a
                    009B    389 G$SCON_3$0$0 == 0x009b
                    009B    390 _SCON_3	=	0x009b
                    009C    391 G$SCON_4$0$0 == 0x009c
                    009C    392 _SCON_4	=	0x009c
                    009D    393 G$SCON_5$0$0 == 0x009d
                    009D    394 _SCON_5	=	0x009d
                    009E    395 G$SCON_6$0$0 == 0x009e
                    009E    396 _SCON_6	=	0x009e
                    009F    397 G$SCON_7$0$0 == 0x009f
                    009F    398 _SCON_7	=	0x009f
                    00DE    399 G$I2CON_6$0$0 == 0x00de
                    00DE    400 _I2CON_6	=	0x00de
                    00DD    401 G$I2CON_5$0$0 == 0x00dd
                    00DD    402 _I2CON_5	=	0x00dd
                    00DC    403 G$I2CON_4$0$0 == 0x00dc
                    00DC    404 _I2CON_4	=	0x00dc
                    00DB    405 G$I2CON_3$0$0 == 0x00db
                    00DB    406 _I2CON_3	=	0x00db
                    00DA    407 G$I2CON_2$0$0 == 0x00da
                    00DA    408 _I2CON_2	=	0x00da
                    00D8    409 G$I2CON_0$0$0 == 0x00d8
                    00D8    410 _I2CON_0	=	0x00d8
                    0080    411 G$P0_0$0$0 == 0x0080
                    0080    412 _P0_0	=	0x0080
                    0081    413 G$P0_1$0$0 == 0x0081
                    0081    414 _P0_1	=	0x0081
                    0082    415 G$P0_2$0$0 == 0x0082
                    0082    416 _P0_2	=	0x0082
                    0083    417 G$P0_3$0$0 == 0x0083
                    0083    418 _P0_3	=	0x0083
                    0084    419 G$P0_4$0$0 == 0x0084
                    0084    420 _P0_4	=	0x0084
                    0085    421 G$P0_5$0$0 == 0x0085
                    0085    422 _P0_5	=	0x0085
                    0086    423 G$P0_6$0$0 == 0x0086
                    0086    424 _P0_6	=	0x0086
                    0087    425 G$P0_7$0$0 == 0x0087
                    0087    426 _P0_7	=	0x0087
                    0090    427 G$P1_0$0$0 == 0x0090
                    0090    428 _P1_0	=	0x0090
                    0091    429 G$P1_1$0$0 == 0x0091
                    0091    430 _P1_1	=	0x0091
                    0092    431 G$P1_2$0$0 == 0x0092
                    0092    432 _P1_2	=	0x0092
                    0093    433 G$P1_3$0$0 == 0x0093
                    0093    434 _P1_3	=	0x0093
                    0094    435 G$P1_4$0$0 == 0x0094
                    0094    436 _P1_4	=	0x0094
                    0095    437 G$P1_5$0$0 == 0x0095
                    0095    438 _P1_5	=	0x0095
                    0096    439 G$P1_6$0$0 == 0x0096
                    0096    440 _P1_6	=	0x0096
                    0097    441 G$P1_7$0$0 == 0x0097
                    0097    442 _P1_7	=	0x0097
                    00B0    443 G$P3_0$0$0 == 0x00b0
                    00B0    444 _P3_0	=	0x00b0
                    00B1    445 G$P3_1$0$0 == 0x00b1
                    00B1    446 _P3_1	=	0x00b1
                            447 ;--------------------------------------------------------
                            448 ; overlayable register banks
                            449 ;--------------------------------------------------------
                            450 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     451 	.ds 8
                            452 ;--------------------------------------------------------
                            453 ; internal ram data
                            454 ;--------------------------------------------------------
                            455 	.area DSEG    (DATA)
                    0000    456 G$dimm_I2C$0$0==.
   0008                     457 _dimm_I2C::
   0008                     458 	.ds 2
                    0002    459 G$mk$0$0==.
   000A                     460 _mk::
   000A                     461 	.ds 2
                    0004    462 G$bytenummer$0$0==.
   000C                     463 _bytenummer::
   000C                     464 	.ds 1
                    0005    465 G$zl_50hz$0$0==.
   000D                     466 _zl_50hz::
   000D                     467 	.ds 2
                    0007    468 G$sp$0$0==.
   000F                     469 _sp::
   000F                     470 	.ds 2
                    0009    471 G$m$0$0==.
   0011                     472 _m::
   0011                     473 	.ds 2
                    000B    474 G$dimmzl$0$0==.
   0013                     475 _dimmzl::
   0013                     476 	.ds 1
                    000C    477 G$mode$0$0==.
   0014                     478 _mode::
   0014                     479 	.ds 1
                    000D    480 G$dimmcompare$0$0==.
   0015                     481 _dimmcompare::
   0015                     482 	.ds 1
                    000E    483 G$cmd$0$0==.
   0016                     484 _cmd::
   0016                     485 	.ds 1
                    000F    486 G$phase$0$0==.
   0017                     487 _phase::
   0017                     488 	.ds 1
                    0000    489 G$RAM$0$0 == 0x0000
                    0000    490 _RAM	=	0x0000
                            491 ;--------------------------------------------------------
                            492 ; overlayable items in internal ram 
                            493 ;--------------------------------------------------------
                            494 	.area OSEG    (OVR,DATA)
                            495 ;--------------------------------------------------------
                            496 ; Stack segment in internal ram 
                            497 ;--------------------------------------------------------
                            498 	.area	SSEG	(DATA)
   0021                     499 __start__stack:
   0021                     500 	.ds	1
                            501 
                            502 ;--------------------------------------------------------
                            503 ; indirectly addressable internal ram data
                            504 ;--------------------------------------------------------
                            505 	.area ISEG    (DATA)
                            506 ;--------------------------------------------------------
                            507 ; absolute internal ram data
                            508 ;--------------------------------------------------------
                            509 	.area IABS    (ABS,DATA)
                            510 	.area IABS    (ABS,DATA)
                            511 ;--------------------------------------------------------
                            512 ; bit data
                            513 ;--------------------------------------------------------
                            514 	.area BSEG    (BIT)
                    0000    515 G$locked$0$0==.
   0000                     516 _locked::
   0000                     517 	.ds 1
                            518 ;--------------------------------------------------------
                            519 ; paged external ram data
                            520 ;--------------------------------------------------------
                            521 	.area PSEG    (PAG,XDATA)
                            522 ;--------------------------------------------------------
                            523 ; external ram data
                            524 ;--------------------------------------------------------
                            525 	.area XSEG    (XDATA)
                            526 ;--------------------------------------------------------
                            527 ; absolute external ram data
                            528 ;--------------------------------------------------------
                            529 	.area XABS    (ABS,XDATA)
                            530 ;--------------------------------------------------------
                            531 ; external initialized ram data
                            532 ;--------------------------------------------------------
                            533 	.area XISEG   (XDATA)
                            534 	.area HOME    (CODE)
                            535 	.area GSINIT0 (CODE)
                            536 	.area GSINIT1 (CODE)
                            537 	.area GSINIT2 (CODE)
                            538 	.area GSINIT3 (CODE)
                            539 	.area GSINIT4 (CODE)
                            540 	.area GSINIT5 (CODE)
                            541 	.area GSINIT  (CODE)
                            542 	.area GSFINAL (CODE)
                            543 	.area CSEG    (CODE)
                            544 ;--------------------------------------------------------
                            545 ; interrupt vector 
                            546 ;--------------------------------------------------------
                            547 	.area HOME    (CODE)
   0000                     548 __interrupt_vect:
   0000 02 00 3B            549 	ljmp	__sdcc_gsinit_startup
   0003 32                  550 	reti
   0004                     551 	.ds	7
   000B 32                  552 	reti
   000C                     553 	.ds	7
   0013 02 02 2B            554 	ljmp	_ex1_int
   0016                     555 	.ds	5
   001B 32                  556 	reti
   001C                     557 	.ds	7
   0023 32                  558 	reti
   0024                     559 	.ds	7
   002B 32                  560 	reti
   002C                     561 	.ds	7
   0033 02 01 B3            562 	ljmp	_i2c_int
                            563 ;--------------------------------------------------------
                            564 ; global & static initialisations
                            565 ;--------------------------------------------------------
                            566 	.area HOME    (CODE)
                            567 	.area GSINIT  (CODE)
                            568 	.area GSFINAL (CODE)
                            569 	.area GSINIT  (CODE)
                            570 	.globl __sdcc_gsinit_startup
                            571 	.globl __sdcc_program_startup
                            572 	.globl __start__stack
                            573 	.globl __mcs51_genXINIT
                            574 	.globl __mcs51_genXRAMCLEAR
                            575 	.globl __mcs51_genRAMCLEAR
                    0000    576 	G$main$0$0 ==.
                    0000    577 	C$dim2_sla.c$37$1$1 ==.
                            578 ;	..\dim2_sla.c:37: unsigned int zl_50hz=0;
   0094 E4                  579 	clr	a
   0095 F5 0D               580 	mov	_zl_50hz,a
   0097 F5 0E               581 	mov	(_zl_50hz + 1),a
                    0005    582 	G$main$0$0 ==.
                    0005    583 	C$dim2_sla.c$38$1$1 ==.
                            584 ;	..\dim2_sla.c:38: unsigned int sp=0;
   0099 E4                  585 	clr	a
   009A F5 0F               586 	mov	_sp,a
   009C F5 10               587 	mov	(_sp + 1),a
                    000A    588 	G$main$0$0 ==.
                    000A    589 	C$dim2_sla.c$39$1$1 ==.
                            590 ;	..\dim2_sla.c:39: unsigned int m=0;
   009E E4                  591 	clr	a
   009F F5 11               592 	mov	_m,a
   00A1 F5 12               593 	mov	(_m + 1),a
                    000F    594 	G$main$0$0 ==.
                    000F    595 	C$dim2_sla.c$40$1$1 ==.
                            596 ;	..\dim2_sla.c:40: unsigned char dimmzl=0; //beim nulldurchgang auf 0 setzen
   00A3 75 13 00            597 	mov	_dimmzl,#0x00
                    0012    598 	G$main$0$0 ==.
                    0012    599 	C$dim2_sla.c$41$1$1 ==.
                            600 ;	..\dim2_sla.c:41: unsigned char mode=AB; //modus des dimmer Anschnitt Abschnitt oder PWM
   00A6 75 14 00            601 	mov	_mode,#0x00
                    0015    602 	G$main$0$0 ==.
                    0015    603 	C$dim2_sla.c$46$1$1 ==.
                            604 ;	..\dim2_sla.c:46: __bit locked=0;
   00A9 C2 00               605 	clr	_locked
                            606 	.area GSFINAL (CODE)
   00AB 02 00 36            607 	ljmp	__sdcc_program_startup
                            608 ;--------------------------------------------------------
                            609 ; Home
                            610 ;--------------------------------------------------------
                            611 	.area HOME    (CODE)
                            612 	.area HOME    (CODE)
   0036                     613 __sdcc_program_startup:
   0036 12 02 C8            614 	lcall	_main
                            615 ;	return from main will lock up
   0039 80 FE               616 	sjmp .
                            617 ;--------------------------------------------------------
                            618 ; code
                            619 ;--------------------------------------------------------
                            620 	.area CSEG    (CODE)
                            621 ;------------------------------------------------------------
                            622 ;Allocation info for local variables in function 'i2c_int'
                            623 ;------------------------------------------------------------
                    0000    624 	G$i2c_int$0$0 ==.
                    0000    625 	C$dim2_sla.c$48$0$0 ==.
                            626 ;	..\dim2_sla.c:48: void i2c_int(void)__interrupt (6)
                            627 ;	-----------------------------------------
                            628 ;	 function i2c_int
                            629 ;	-----------------------------------------
   01B3                     630 _i2c_int:
                    0007    631 	ar7 = 0x07
                    0006    632 	ar6 = 0x06
                    0005    633 	ar5 = 0x05
                    0004    634 	ar4 = 0x04
                    0003    635 	ar3 = 0x03
                    0002    636 	ar2 = 0x02
                    0001    637 	ar1 = 0x01
                    0000    638 	ar0 = 0x00
   01B3 C0 E0               639 	push	acc
   01B5 C0 07               640 	push	ar7
   01B7 C0 01               641 	push	ar1
   01B9 C0 00               642 	push	ar0
   01BB C0 D0               643 	push	psw
   01BD 75 D0 00            644 	mov	psw,#0x00
                    000D    645 	C$dim2_sla.c$50$1$1 ==.
                            646 ;	..\dim2_sla.c:50: if(I2STAT==0x60)      //Slaveadresse
   01C0 74 60               647 	mov	a,#0x60
   01C2 B5 D9 03            648 	cjne	a,_I2STAT,00102$
                    0012    649 	C$dim2_sla.c$51$1$1 ==.
                            650 ;	..\dim2_sla.c:51: bytenummer=0;
   01C5 75 0C 00            651 	mov	_bytenummer,#0x00
   01C8                     652 00102$:
                    0015    653 	C$dim2_sla.c$52$1$1 ==.
                            654 ;	..\dim2_sla.c:52: if(I2STAT==0x80)      //Datenbyte emfangen
   01C8 74 80               655 	mov	a,#0x80
   01CA B5 D9 02            656 	cjne	a,_I2STAT,00104$
                    001A    657 	C$dim2_sla.c$53$1$1 ==.
                            658 ;	..\dim2_sla.c:53: bytenummer++;
   01CD 05 0C               659 	inc	_bytenummer
   01CF                     660 00104$:
                    001C    661 	C$dim2_sla.c$54$1$1 ==.
                            662 ;	..\dim2_sla.c:54: if(I2STAT==0xA0)      //Stop emfangen
   01CF 74 A0               663 	mov	a,#0xA0
   01D1 B5 D9 03            664 	cjne	a,_I2STAT,00106$
                    0021    665 	C$dim2_sla.c$55$1$1 ==.
                            666 ;	..\dim2_sla.c:55: bytenummer=0;
   01D4 75 0C 00            667 	mov	_bytenummer,#0x00
   01D7                     668 00106$:
                    0024    669 	C$dim2_sla.c$56$1$1 ==.
                            670 ;	..\dim2_sla.c:56: if(bytenummer>1&&bytenummer<4)  //erstes byte verwerfen
   01D7 E5 0C               671 	mov	a,_bytenummer
   01D9 24 FE               672 	add	a,#0xff - 0x01
   01DB 50 22               673 	jnc	00111$
   01DD 74 FC               674 	mov	a,#0x100 - 0x04
   01DF 25 0C               675 	add	a,_bytenummer
   01E1 40 1C               676 	jc	00111$
                    0030    677 	C$dim2_sla.c$57$1$1 ==.
                            678 ;	..\dim2_sla.c:57: if (mode==AB)dimm_I2C[bytenummer-2]= I2DAT; //zweites und drittes byte sind K1 + K2
   01E3 E5 14               679 	mov	a,_mode
   01E5 70 0B               680 	jnz	00108$
   01E7 E5 0C               681 	mov	a,_bytenummer
   01E9 24 FE               682 	add	a,#0xFE
   01EB 24 08               683 	add	a,#_dimm_I2C
   01ED F8                  684 	mov	r0,a
   01EE A6 DA               685 	mov	@r0,_I2DAT
   01F0 80 0D               686 	sjmp	00111$
   01F2                     687 00108$:
                    003F    688 	C$dim2_sla.c$58$1$1 ==.
                            689 ;	..\dim2_sla.c:58: else dimm_I2C[bytenummer-2]= 0 - I2DAT;		
   01F2 E5 0C               690 	mov	a,_bytenummer
   01F4 24 FE               691 	add	a,#0xFE
   01F6 24 08               692 	add	a,#_dimm_I2C
   01F8 F9                  693 	mov	r1,a
   01F9 C3                  694 	clr	c
   01FA E4                  695 	clr	a
   01FB 95 DA               696 	subb	a,_I2DAT
   01FD FF                  697 	mov	r7,a
   01FE F7                  698 	mov	@r1,a
   01FF                     699 00111$:
                    004C    700 	C$dim2_sla.c$59$1$1 ==.
                            701 ;	..\dim2_sla.c:59: SI=0;
   01FF C2 DB               702 	clr	_I2CON_3
                    004E    703 	C$dim2_sla.c$60$1$1 ==.
                            704 ;	..\dim2_sla.c:60: return;
   0201 D0 D0               705 	pop	psw
   0203 D0 00               706 	pop	ar0
   0205 D0 01               707 	pop	ar1
   0207 D0 07               708 	pop	ar7
   0209 D0 E0               709 	pop	acc
                    0058    710 	C$dim2_sla.c$61$1$1 ==.
                    0058    711 	XG$i2c_int$0$0 ==.
   020B 32                  712 	reti
                            713 ;	eliminated unneeded push/pop dpl
                            714 ;	eliminated unneeded push/pop dph
                            715 ;	eliminated unneeded push/pop b
                            716 ;------------------------------------------------------------
                            717 ;Allocation info for local variables in function 'nulldurchgang'
                            718 ;------------------------------------------------------------
                    0059    719 	G$nulldurchgang$0$0 ==.
                    0059    720 	C$dim2_sla.c$63$1$1 ==.
                            721 ;	..\dim2_sla.c:63: void nulldurchgang(void)
                            722 ;	-----------------------------------------
                            723 ;	 function nulldurchgang
                            724 ;	-----------------------------------------
   020C                     725 _nulldurchgang:
                    0059    726 	C$dim2_sla.c$66$1$1 ==.
                            727 ;	..\dim2_sla.c:66: if(mode==AB)
   020C E5 14               728 	mov	a,_mode
                    005B    729 	C$dim2_sla.c$68$2$2 ==.
                            730 ;	..\dim2_sla.c:68: dimmzl=0;
   020E 70 0E               731 	jnz	00106$
   0210 F5 13               732 	mov	_dimmzl,a
                    005F    733 	C$dim2_sla.c$69$2$2 ==.
                            734 ;	..\dim2_sla.c:69: if(dimm_I2C[0])  //dimmwert grösser 0 Dimmer  ein bei abschnitt
   0212 E5 08               735 	mov	a,_dimm_I2C
   0214 60 02               736 	jz	00102$
                    0063    737 	C$dim2_sla.c$70$2$2 ==.
                            738 ;	..\dim2_sla.c:70: K1OUT=0;       //EIN
   0216 C2 87               739 	clr	_P0_7
   0218                     740 00102$:
                    0065    741 	C$dim2_sla.c$71$2$2 ==.
                            742 ;	..\dim2_sla.c:71: if(dimm_I2C[1])  //dimmwert grösser 0 Dimmer  ein
   0218 E5 09               743 	mov	a,(_dimm_I2C + 0x0001)
   021A 60 02               744 	jz	00106$
                    0069    745 	C$dim2_sla.c$72$2$2 ==.
                            746 ;	..\dim2_sla.c:72: K2OUT=0;       //EIN
   021C C2 86               747 	clr	_P0_6
   021E                     748 00106$:
                    006B    749 	C$dim2_sla.c$74$1$1 ==.
                            750 ;	..\dim2_sla.c:74: if(mode==AN)
   021E 74 01               751 	mov	a,#0x01
   0220 B5 14 07            752 	cjne	a,_mode,00108$
                    0070    753 	C$dim2_sla.c$76$2$3 ==.
                            754 ;	..\dim2_sla.c:76: dimmzl=0xff;
   0223 75 13 FF            755 	mov	_dimmzl,#0xFF
                    0073    756 	C$dim2_sla.c$77$2$3 ==.
                            757 ;	..\dim2_sla.c:77: K1OUT=1;     //AUS bei anschnitt
   0226 D2 87               758 	setb	_P0_7
                    0075    759 	C$dim2_sla.c$78$2$3 ==.
                            760 ;	..\dim2_sla.c:78: K2OUT=1;
   0228 D2 86               761 	setb	_P0_6
   022A                     762 00108$:
                    0077    763 	C$dim2_sla.c$80$1$1 ==.
                            764 ;	..\dim2_sla.c:80: return;
                    0077    765 	C$dim2_sla.c$81$1$1 ==.
                    0077    766 	XG$nulldurchgang$0$0 ==.
   022A 22                  767 	ret
                            768 ;------------------------------------------------------------
                            769 ;Allocation info for local variables in function 'ex1_int'
                            770 ;------------------------------------------------------------
                            771 ;dc_mess                   Allocated to registers r7 
                            772 ;------------------------------------------------------------
                    0078    773 	G$ex1_int$0$0 ==.
                    0078    774 	C$dim2_sla.c$84$1$1 ==.
                            775 ;	..\dim2_sla.c:84: void ex1_int(void) __interrupt (2)// ERKENNUNG NULLDURCHGANG
                            776 ;	-----------------------------------------
                            777 ;	 function ex1_int
                            778 ;	-----------------------------------------
   022B                     779 _ex1_int:
   022B C0 E0               780 	push	acc
   022D C0 07               781 	push	ar7
   022F C0 D0               782 	push	psw
   0231 75 D0 00            783 	mov	psw,#0x00
                    0081    784 	C$dim2_sla.c$89$1$1 ==.
                            785 ;	..\dim2_sla.c:89: dc_mess=dimmcompare-61;// 20
   0234 E5 15               786 	mov	a,_dimmcompare
   0236 24 C3               787 	add	a,#0xC3
                    0085    788 	C$dim2_sla.c$90$1$1 ==.
                            789 ;	..\dim2_sla.c:90: phase=dc_mess;//	SBUF=dimmcompare;
                    0085    790 	C$dim2_sla.c$91$1$1 ==.
                            791 ;	..\dim2_sla.c:91: if(dc_mess ){
   0238 FF                  792 	mov	r7,a
   0239 8F 17               793 	mov	_phase,r7
   023B 60 1A               794 	jz	00109$
                    008A    795 	C$dim2_sla.c$92$2$2 ==.
                            796 ;	..\dim2_sla.c:92: if (dc_mess>200 && dc_mess<253){
   023D EF                  797 	mov	a,r7
   023E 24 37               798 	add	a,#0xff - 0xC8
   0240 50 09               799 	jnc	00105$
   0242 BF FD 00            800 	cjne	r7,#0xFD,00143$
   0245                     801 00143$:
   0245 50 04               802 	jnc	00105$
                    0094    803 	C$dim2_sla.c$93$3$3 ==.
                            804 ;	..\dim2_sla.c:93: TH0++;
   0247 05 8C               805 	inc	_TH0
   0249 80 0C               806 	sjmp	00109$
   024B                     807 00105$:
                    0098    808 	C$dim2_sla.c$96$2$2 ==.
                            809 ;	..\dim2_sla.c:96: else if(dc_mess>=3 && dc_mess<=50){
   024B BF 03 00            810 	cjne	r7,#0x03,00145$
   024E                     811 00145$:
   024E 40 07               812 	jc	00109$
   0250 EF                  813 	mov	a,r7
   0251 24 CD               814 	add	a,#0xff - 0x32
   0253 40 02               815 	jc	00109$
                    00A2    816 	C$dim2_sla.c$98$3$4 ==.
                            817 ;	..\dim2_sla.c:98: TH0--;
   0255 15 8C               818 	dec	_TH0
   0257                     819 00109$:
                    00A4    820 	C$dim2_sla.c$108$1$1 ==.
                            821 ;	..\dim2_sla.c:108: dimmcompare=61;//20
   0257 75 15 3D            822 	mov	_dimmcompare,#0x3D
                    00A7    823 	C$dim2_sla.c$142$1$1 ==.
                            824 ;	..\dim2_sla.c:142: */if(mode==AB)
   025A E5 14               825 	mov	a,_mode
   025C 70 22               826 	jnz	00127$
                    00AB    827 	C$dim2_sla.c$151$2$5 ==.
                            828 ;	..\dim2_sla.c:151: if(dimmcompare<=dimm_I2C[0]|| dimm_I2C[0]==0)K1OUT=0;
   025E AF 08               829 	mov	r7,_dimm_I2C
   0260 BF 3D 00            830 	cjne	r7,#0x3D,00149$
   0263                     831 00149$:
   0263 50 03               832 	jnc	00110$
   0265 EF                  833 	mov	a,r7
   0266 70 04               834 	jnz	00111$
   0268                     835 00110$:
   0268 C2 87               836 	clr	_P0_7
   026A 80 02               837 	sjmp	00112$
   026C                     838 00111$:
                    00B9    839 	C$dim2_sla.c$152$2$5 ==.
                            840 ;	..\dim2_sla.c:152: else K1OUT=1;
   026C D2 87               841 	setb	_P0_7
   026E                     842 00112$:
                    00BB    843 	C$dim2_sla.c$153$2$5 ==.
                            844 ;	..\dim2_sla.c:153: if(dimmcompare<=dimm_I2C[1]|| dimm_I2C[1]==0)K2OUT=0;
   026E AF 09               845 	mov	r7,(_dimm_I2C + 0x0001)
   0270 BF 3D 00            846 	cjne	r7,#0x3D,00152$
   0273                     847 00152$:
   0273 50 03               848 	jnc	00114$
   0275 EF                  849 	mov	a,r7
   0276 70 04               850 	jnz	00115$
   0278                     851 00114$:
   0278 C2 86               852 	clr	_P0_6
   027A 80 24               853 	sjmp	00129$
   027C                     854 00115$:
                    00C9    855 	C$dim2_sla.c$154$2$5 ==.
                            856 ;	..\dim2_sla.c:154: else K2OUT=1;
   027C D2 86               857 	setb	_P0_6
   027E 80 20               858 	sjmp	00129$
   0280                     859 00127$:
                    00CD    860 	C$dim2_sla.c$158$2$6 ==.
                            861 ;	..\dim2_sla.c:158: if(dimmcompare<=dimm_I2C[0]|| dimm_I2C[0]==0)K1OUT=1;
   0280 AF 08               862 	mov	r7,_dimm_I2C
   0282 BF 3D 00            863 	cjne	r7,#0x3D,00155$
   0285                     864 00155$:
   0285 50 03               865 	jnc	00118$
   0287 EF                  866 	mov	a,r7
   0288 70 04               867 	jnz	00119$
   028A                     868 00118$:
   028A D2 87               869 	setb	_P0_7
   028C 80 02               870 	sjmp	00120$
   028E                     871 00119$:
                    00DB    872 	C$dim2_sla.c$159$2$6 ==.
                            873 ;	..\dim2_sla.c:159: else K1OUT=0;
   028E C2 87               874 	clr	_P0_7
   0290                     875 00120$:
                    00DD    876 	C$dim2_sla.c$160$2$6 ==.
                            877 ;	..\dim2_sla.c:160: if(dimmcompare<=dimm_I2C[1]|| dimm_I2C[1]==0)K2OUT=1;
   0290 AF 09               878 	mov	r7,(_dimm_I2C + 0x0001)
   0292 BF 3D 00            879 	cjne	r7,#0x3D,00158$
   0295                     880 00158$:
   0295 50 03               881 	jnc	00122$
   0297 EF                  882 	mov	a,r7
   0298 70 04               883 	jnz	00123$
   029A                     884 00122$:
   029A D2 86               885 	setb	_P0_6
   029C 80 02               886 	sjmp	00129$
   029E                     887 00123$:
                    00EB    888 	C$dim2_sla.c$161$2$6 ==.
                            889 ;	..\dim2_sla.c:161: else K2OUT=0;
   029E C2 86               890 	clr	_P0_6
   02A0                     891 00129$:
   02A0 D0 D0               892 	pop	psw
   02A2 D0 07               893 	pop	ar7
   02A4 D0 E0               894 	pop	acc
                    00F3    895 	C$dim2_sla.c$166$1$1 ==.
                    00F3    896 	XG$ex1_int$0$0 ==.
   02A6 32                  897 	reti
                            898 ;	eliminated unneeded push/pop ar1
                            899 ;	eliminated unneeded push/pop ar0
                            900 ;	eliminated unneeded push/pop dpl
                            901 ;	eliminated unneeded push/pop dph
                            902 ;	eliminated unneeded push/pop b
                            903 ;------------------------------------------------------------
                            904 ;Allocation info for local variables in function 'in50hz_init'
                            905 ;------------------------------------------------------------
                    00F4    906 	G$in50hz_init$0$0 ==.
                    00F4    907 	C$dim2_sla.c$170$1$1 ==.
                            908 ;	..\dim2_sla.c:170: void in50hz_init(void)
                            909 ;	-----------------------------------------
                            910 ;	 function in50hz_init
                            911 ;	-----------------------------------------
   02A7                     912 _in50hz_init:
                    00F4    913 	C$dim2_sla.c$172$1$1 ==.
                            914 ;	..\dim2_sla.c:172: P1M1 |= (1<<4); //Pin P1.4 input
   02A7 43 91 10            915 	orl	_P1M1,#0x10
                    00F7    916 	C$dim2_sla.c$173$1$1 ==.
                            917 ;	..\dim2_sla.c:173: P1M2 &= ~(1<<4);
   02AA AF 92               918 	mov	r7,_P1M2
   02AC 53 07 EF            919 	anl	ar7,#0xEF
   02AF 8F 92               920 	mov	_P1M2,r7
                    00FE    921 	C$dim2_sla.c$174$1$1 ==.
                            922 ;	..\dim2_sla.c:174: EX1=1; //Externer interrupt ein
   02B1 D2 AA               923 	setb	_IEN0_2
                    0100    924 	C$dim2_sla.c$175$1$1 ==.
                            925 ;	..\dim2_sla.c:175: IT1=1; //fallende flanke
   02B3 D2 8A               926 	setb	_TCON_2
                    0102    927 	C$dim2_sla.c$176$1$1 ==.
                            928 ;	..\dim2_sla.c:176: IP0 = 0x02;
   02B5 75 B8 02            929 	mov	_IP0,#0x02
                    0105    930 	C$dim2_sla.c$177$1$1 ==.
                            931 ;	..\dim2_sla.c:177: IP0H = 0x04;
   02B8 75 B7 04            932 	mov	_IP0H,#0x04
                    0108    933 	C$dim2_sla.c$178$1$1 ==.
                            934 ;	..\dim2_sla.c:178: EA=1;  //globale interruptfreigabe
   02BB D2 AF               935 	setb	_IEN0_7
                    010A    936 	C$dim2_sla.c$179$1$1 ==.
                            937 ;	..\dim2_sla.c:179: return;
                    010A    938 	C$dim2_sla.c$181$1$1 ==.
                    010A    939 	XG$in50hz_init$0$0 ==.
   02BD 22                  940 	ret
                            941 ;------------------------------------------------------------
                            942 ;Allocation info for local variables in function 'send'
                            943 ;------------------------------------------------------------
                            944 ;buf                       Allocated to registers r7 
                            945 ;------------------------------------------------------------
                    010B    946 	G$send$0$0 ==.
                    010B    947 	C$dim2_sla.c$182$1$1 ==.
                            948 ;	..\dim2_sla.c:182: void send(unsigned char buf)
                            949 ;	-----------------------------------------
                            950 ;	 function send
                            951 ;	-----------------------------------------
   02BE                     952 _send:
   02BE AF 82               953 	mov	r7,dpl
                    010D    954 	C$dim2_sla.c$184$1$1 ==.
                            955 ;	..\dim2_sla.c:184: while(!TI);
   02C0                     956 00101$:
                    010D    957 	C$dim2_sla.c$185$1$1 ==.
                            958 ;	..\dim2_sla.c:185: TI=0;
   02C0 10 99 02            959 	jbc	_SCON_1,00108$
   02C3 80 FB               960 	sjmp	00101$
   02C5                     961 00108$:
                    0112    962 	C$dim2_sla.c$186$1$1 ==.
                            963 ;	..\dim2_sla.c:186: SBUF=buf;
   02C5 8F 99               964 	mov	_SBUF,r7
                    0114    965 	C$dim2_sla.c$187$1$1 ==.
                    0114    966 	XG$send$0$0 ==.
   02C7 22                  967 	ret
                            968 ;------------------------------------------------------------
                            969 ;Allocation info for local variables in function 'main'
                            970 ;------------------------------------------------------------
                            971 ;i                         Allocated to registers r6 r7 
                            972 ;------------------------------------------------------------
                    0115    973 	G$main$0$0 ==.
                    0115    974 	C$dim2_sla.c$189$1$1 ==.
                            975 ;	..\dim2_sla.c:189: void main(void)
                            976 ;	-----------------------------------------
                            977 ;	 function main
                            978 ;	-----------------------------------------
   02C8                     979 _main:
                    0115    980 	C$dim2_sla.c$195$1$1 ==.
                            981 ;	..\dim2_sla.c:195: i2c_sla_init();
   02C8 12 00 AE            982 	lcall	_i2c_sla_init
                    0118    983 	C$dim2_sla.c$196$1$1 ==.
                            984 ;	..\dim2_sla.c:196: in50hz_init();
   02CB 12 02 A7            985 	lcall	_in50hz_init
                    011B    986 	C$dim2_sla.c$200$1$1 ==.
                            987 ;	..\dim2_sla.c:200: BRGCON&=0xFE;	// Baudrate Generator stoppen
   02CE 53 BD FE            988 	anl	_BRGCON,#0xFE
                    011E    989 	C$dim2_sla.c$201$1$1 ==.
                            990 ;	..\dim2_sla.c:201: P1M1&=0xFC;		// RX und TX auf bidirectional setzen
   02D1 53 91 FC            991 	anl	_P1M1,#0xFC
                    0121    992 	C$dim2_sla.c$202$1$1 ==.
                            993 ;	..\dim2_sla.c:202: P1M2&=0xFC;
   02D4 53 92 FC            994 	anl	_P1M2,#0xFC
                    0124    995 	C$dim2_sla.c$203$1$1 ==.
                            996 ;	..\dim2_sla.c:203: SCON=0x50;		// Mode 1, receive enable
   02D7 75 98 50            997 	mov	_SCON,#0x50
                    0127    998 	C$dim2_sla.c$204$1$1 ==.
                            999 ;	..\dim2_sla.c:204: SSTAT|=0xE0;	// TI wird am Ende des Stopbits gesetzt und Interrupt nur bei RX und double TX buffer an
   02DA 43 BA E0           1000 	orl	_SSTAT,#0xE0
                    012A   1001 	C$dim2_sla.c$205$1$1 ==.
                           1002 ;	..\dim2_sla.c:205: BRGCON|=0x02;	// Baudrate Generator verwenden aber noch gestoppt
   02DD 43 BD 02           1003 	orl	_BRGCON,#0x02
                    012D   1004 	C$dim2_sla.c$206$1$1 ==.
                           1005 ;	..\dim2_sla.c:206: BRGR1=0x00;	//05 Baudrate = cclk/((BRGR1,BRGR0)+16)
   02E0 75 BF 00           1006 	mov	_BRGR1,#0x00
                    0130   1007 	C$dim2_sla.c$207$1$1 ==.
                           1008 ;	..\dim2_sla.c:207: BRGR0=0x30;	//F0 für 115200 0030 nehmen, autocal: 600bd= 0x2FF0, 19200: 0x0170
   02E3 75 BE 30           1009 	mov	_BRGR0,#0x30
                    0133   1010 	C$dim2_sla.c$208$1$1 ==.
                           1011 ;	..\dim2_sla.c:208: BRGCON|=0x01;	// Baudrate Generator starten
   02E6 43 BD 01           1012 	orl	_BRGCON,#0x01
                    0136   1013 	C$dim2_sla.c$209$1$1 ==.
                           1014 ;	..\dim2_sla.c:209: SBUF=0x55; // hiernach ist TI==1
   02E9 75 99 55           1015 	mov	_SBUF,#0x55
                    0139   1016 	C$dim2_sla.c$213$1$1 ==.
                           1017 ;	..\dim2_sla.c:213: P0M1 &= ~0xc0; //pin 0.6 und 0.7 Ausgang
   02EC AF 84              1018 	mov	r7,_P0M1
   02EE 53 07 3F           1019 	anl	ar7,#0x3F
   02F1 8F 84              1020 	mov	_P0M1,r7
                    0140   1021 	C$dim2_sla.c$214$1$1 ==.
                           1022 ;	..\dim2_sla.c:214: P0M2 |= 0xc0;
   02F3 43 85 C0           1023 	orl	_P0M2,#0xC0
                    0143   1024 	C$dim2_sla.c$215$1$1 ==.
                           1025 ;	..\dim2_sla.c:215: K1OUT=0;
   02F6 C2 87              1026 	clr	_P0_7
                    0145   1027 	C$dim2_sla.c$216$1$1 ==.
                           1028 ;	..\dim2_sla.c:216: K2OUT=0;
   02F8 C2 86              1029 	clr	_P0_6
                    0147   1030 	C$dim2_sla.c$218$1$1 ==.
                           1031 ;	..\dim2_sla.c:218: TMOD=0x02;   // Timer 0 als reload
   02FA 75 89 02           1032 	mov	_TMOD,#0x02
                    014A   1033 	C$dim2_sla.c$219$1$1 ==.
                           1034 ;	..\dim2_sla.c:219: TH0=0x70; //für 10ms / 256
   02FD 75 8C 70           1035 	mov	_TH0,#0x70
                    014D   1036 	C$dim2_sla.c$220$1$1 ==.
                           1037 ;	..\dim2_sla.c:220: TL0=0x70; //für 10ms / 256  
   0300 75 8A 70           1038 	mov	_TL0,#0x70
                    0150   1039 	C$dim2_sla.c$223$1$1 ==.
                           1040 ;	..\dim2_sla.c:223: ET0=1;                        // Interrupt für Timer 0 freigeben
   0303 D2 A9              1041 	setb	_IEN0_1
                    0152   1042 	C$dim2_sla.c$224$1$1 ==.
                           1043 ;	..\dim2_sla.c:224: IP0 |= 0x02;
   0305 43 B8 02           1044 	orl	_IP0,#0x02
                    0155   1045 	C$dim2_sla.c$225$1$1 ==.
                           1046 ;	..\dim2_sla.c:225: TR0=1;                        // Timer 0 starten
   0308 D2 8C              1047 	setb	_TCON_4
                    0157   1048 	C$dim2_sla.c$226$1$1 ==.
                           1049 ;	..\dim2_sla.c:226: EA=1;
   030A D2 AF              1050 	setb	_IEN0_7
                    0159   1051 	C$dim2_sla.c$228$1$1 ==.
                           1052 ;	..\dim2_sla.c:228: P0M1 &= ~(1<<1); // P0_1 = EINGANG zum test
   030C AF 84              1053 	mov	r7,_P0M1
   030E 53 07 FD           1054 	anl	ar7,#0xFD
   0311 8F 84              1055 	mov	_P0M1,r7
                    0160   1056 	C$dim2_sla.c$229$1$1 ==.
                           1057 ;	..\dim2_sla.c:229: P0M2 &= ~(1<<1);
   0313 AF 85              1058 	mov	r7,_P0M2
   0315 53 07 FD           1059 	anl	ar7,#0xFD
   0318 8F 85              1060 	mov	_P0M2,r7
                    0167   1061 	C$dim2_sla.c$230$1$1 ==.
                           1062 ;	..\dim2_sla.c:230: P0_1=1;
   031A D2 81              1063 	setb	_P0_1
                    0169   1064 	C$dim2_sla.c$232$1$1 ==.
                           1065 ;	..\dim2_sla.c:232: P0M1 |= (1<<2); // P0_2 = EINGANG zum test
   031C 43 84 04           1066 	orl	_P0M1,#0x04
                    016C   1067 	C$dim2_sla.c$233$1$1 ==.
                           1068 ;	..\dim2_sla.c:233: P0M2 &= ~(1<<2);
   031F AF 85              1069 	mov	r7,_P0M2
   0321 53 07 FB           1070 	anl	ar7,#0xFB
   0324 8F 85              1071 	mov	_P0M2,r7
                    0173   1072 	C$dim2_sla.c$234$1$1 ==.
                           1073 ;	..\dim2_sla.c:234: P0_2=0;
   0326 C2 82              1074 	clr	_P0_2
                    0175   1075 	C$dim2_sla.c$236$1$1 ==.
                           1076 ;	..\dim2_sla.c:236: if(P0_1==0)
   0328 20 81 03           1077 	jb	_P0_1,00102$
                    0178   1078 	C$dim2_sla.c$238$2$2 ==.
                           1079 ;	..\dim2_sla.c:238: mode=AN;    //anschnittdimmer
   032B 75 14 01           1080 	mov	_mode,#0x01
   032E                    1081 00102$:
                    017B   1082 	C$dim2_sla.c$241$1$1 ==.
                           1083 ;	..\dim2_sla.c:241: dimm_I2C[0]=0;
   032E 75 08 00           1084 	mov	_dimm_I2C,#0x00
                    017E   1085 	C$dim2_sla.c$242$1$1 ==.
                           1086 ;	..\dim2_sla.c:242: dimm_I2C[1]=0;
   0331 75 09 00           1087 	mov	(_dimm_I2C + 0x0001),#0x00
                    0181   1088 	C$dim2_sla.c$244$1$1 ==.
                           1089 ;	..\dim2_sla.c:244: while(1)
   0334                    1090 00108$:
                    0181   1091 	C$dim2_sla.c$269$2$3 ==.
                           1092 ;	..\dim2_sla.c:269: if(dimm_I2C[0]!=mk[0]||dimm_I2C[1]!=mk[1])
   0334 E5 0A              1093 	mov	a,_mk
   0336 B5 08 07           1094 	cjne	a,_dimm_I2C,00103$
   0339 E5 0B              1095 	mov	a,(_mk + 0x0001)
   033B B5 09 02           1096 	cjne	a,(_dimm_I2C + 0x0001),00124$
   033E 80 08              1097 	sjmp	00118$
   0340                    1098 00124$:
   0340                    1099 00103$:
                    018D   1100 	C$dim2_sla.c$276$3$4 ==.
                           1101 ;	..\dim2_sla.c:276: mk[0]=dimm_I2C[0];
   0340 85 08 0A           1102 	mov	_mk,_dimm_I2C
                    0190   1103 	C$dim2_sla.c$277$3$4 ==.
                           1104 ;	..\dim2_sla.c:277: mk[1]=dimm_I2C[1];
   0343 85 09 0B           1105 	mov	(_mk + 0x0001),(_dimm_I2C + 0x0001)
                    0193   1106 	C$dim2_sla.c$280$1$1 ==.
                           1107 ;	..\dim2_sla.c:280: for (i=0;i<5000;++i);
   0346 80 EC              1108 	sjmp	00108$
   0348                    1109 00118$:
   0348 7E 88              1110 	mov	r6,#0x88
   034A 7F 13              1111 	mov	r7,#0x13
   034C                    1112 00112$:
   034C 1E                 1113 	dec	r6
   034D BE FF 01           1114 	cjne	r6,#0xFF,00125$
   0350 1F                 1115 	dec	r7
   0351                    1116 00125$:
   0351 EE                 1117 	mov	a,r6
   0352 4F                 1118 	orl	a,r7
   0353 70 F7              1119 	jnz	00112$
   0355 80 DD              1120 	sjmp	00108$
                    01A4   1121 	C$dim2_sla.c$284$1$1 ==.
                    01A4   1122 	XG$main$0$0 ==.
   0357 22                 1123 	ret
                           1124 	.area CSEG    (CODE)
                           1125 	.area CONST   (CODE)
                           1126 	.area XINIT   (CODE)
                           1127 	.area CABS    (ABS,CODE)
