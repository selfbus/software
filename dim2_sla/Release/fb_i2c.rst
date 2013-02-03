                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Wed Dec 26 20:13:34 2012
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
                    0080    156 G$P0$0$0 == 0x0080
                    0080    157 _P0	=	0x0080
                    0090    158 G$P1$0$0 == 0x0090
                    0090    159 _P1	=	0x0090
                    00B0    160 G$P3$0$0 == 0x00b0
                    00B0    161 _P3	=	0x00b0
                    00D0    162 G$PSW$0$0 == 0x00d0
                    00D0    163 _PSW	=	0x00d0
                    00E0    164 G$ACC$0$0 == 0x00e0
                    00E0    165 _ACC	=	0x00e0
                    00F0    166 G$B$0$0 == 0x00f0
                    00F0    167 _B	=	0x00f0
                    0081    168 G$SP$0$0 == 0x0081
                    0081    169 _SP	=	0x0081
                    0082    170 G$DPL$0$0 == 0x0082
                    0082    171 _DPL	=	0x0082
                    0083    172 G$DPH$0$0 == 0x0083
                    0083    173 _DPH	=	0x0083
                    0087    174 G$PCON$0$0 == 0x0087
                    0087    175 _PCON	=	0x0087
                    0088    176 G$TCON$0$0 == 0x0088
                    0088    177 _TCON	=	0x0088
                    0089    178 G$TMOD$0$0 == 0x0089
                    0089    179 _TMOD	=	0x0089
                    008A    180 G$TL0$0$0 == 0x008a
                    008A    181 _TL0	=	0x008a
                    008B    182 G$TL1$0$0 == 0x008b
                    008B    183 _TL1	=	0x008b
                    008C    184 G$TH0$0$0 == 0x008c
                    008C    185 _TH0	=	0x008c
                    008D    186 G$TH1$0$0 == 0x008d
                    008D    187 _TH1	=	0x008d
                    00A8    188 G$IEN0$0$0 == 0x00a8
                    00A8    189 _IEN0	=	0x00a8
                    00B8    190 G$IP0$0$0 == 0x00b8
                    00B8    191 _IP0	=	0x00b8
                    0098    192 G$SCON$0$0 == 0x0098
                    0098    193 _SCON	=	0x0098
                    0099    194 G$SBUF$0$0 == 0x0099
                    0099    195 _SBUF	=	0x0099
                    00A2    196 G$AUXR1$0$0 == 0x00a2
                    00A2    197 _AUXR1	=	0x00a2
                    00A9    198 G$SADDR$0$0 == 0x00a9
                    00A9    199 _SADDR	=	0x00a9
                    00B9    200 G$SADEN$0$0 == 0x00b9
                    00B9    201 _SADEN	=	0x00b9
                    00BE    202 G$BRGR0$0$0 == 0x00be
                    00BE    203 _BRGR0	=	0x00be
                    00BF    204 G$BRGR1$0$0 == 0x00bf
                    00BF    205 _BRGR1	=	0x00bf
                    00BD    206 G$BRGCON$0$0 == 0x00bd
                    00BD    207 _BRGCON	=	0x00bd
                    00AC    208 G$CMP1$0$0 == 0x00ac
                    00AC    209 _CMP1	=	0x00ac
                    00AD    210 G$CMP2$0$0 == 0x00ad
                    00AD    211 _CMP2	=	0x00ad
                    0095    212 G$DIVM$0$0 == 0x0095
                    0095    213 _DIVM	=	0x0095
                    00E7    214 G$FMADRH$0$0 == 0x00e7
                    00E7    215 _FMADRH	=	0x00e7
                    00E6    216 G$FMADRL$0$0 == 0x00e6
                    00E6    217 _FMADRL	=	0x00e6
                    00E4    218 G$FMCON$0$0 == 0x00e4
                    00E4    219 _FMCON	=	0x00e4
                    00E5    220 G$FMDATA$0$0 == 0x00e5
                    00E5    221 _FMDATA	=	0x00e5
                    00DB    222 G$I2ADR$0$0 == 0x00db
                    00DB    223 _I2ADR	=	0x00db
                    00D8    224 G$I2CON$0$0 == 0x00d8
                    00D8    225 _I2CON	=	0x00d8
                    00DA    226 G$I2DAT$0$0 == 0x00da
                    00DA    227 _I2DAT	=	0x00da
                    00DD    228 G$I2SCLH$0$0 == 0x00dd
                    00DD    229 _I2SCLH	=	0x00dd
                    00DC    230 G$I2SCLL$0$0 == 0x00dc
                    00DC    231 _I2SCLL	=	0x00dc
                    00D9    232 G$I2STAT$0$0 == 0x00d9
                    00D9    233 _I2STAT	=	0x00d9
                    00F8    234 G$IP1$0$0 == 0x00f8
                    00F8    235 _IP1	=	0x00f8
                    00F7    236 G$IP1H$0$0 == 0x00f7
                    00F7    237 _IP1H	=	0x00f7
                    0094    238 G$KBCON$0$0 == 0x0094
                    0094    239 _KBCON	=	0x0094
                    0086    240 G$KBMASK$0$0 == 0x0086
                    0086    241 _KBMASK	=	0x0086
                    0093    242 G$KBPATN$0$0 == 0x0093
                    0093    243 _KBPATN	=	0x0093
                    0084    244 G$P0M1$0$0 == 0x0084
                    0084    245 _P0M1	=	0x0084
                    0085    246 G$P0M2$0$0 == 0x0085
                    0085    247 _P0M2	=	0x0085
                    0091    248 G$P1M1$0$0 == 0x0091
                    0091    249 _P1M1	=	0x0091
                    0092    250 G$P1M2$0$0 == 0x0092
                    0092    251 _P1M2	=	0x0092
                    00B1    252 G$P3M1$0$0 == 0x00b1
                    00B1    253 _P3M1	=	0x00b1
                    00B2    254 G$P3M2$0$0 == 0x00b2
                    00B2    255 _P3M2	=	0x00b2
                    00B5    256 G$PCONA$0$0 == 0x00b5
                    00B5    257 _PCONA	=	0x00b5
                    00F6    258 G$PT0AD$0$0 == 0x00f6
                    00F6    259 _PT0AD	=	0x00f6
                    00DF    260 G$RSTSRC$0$0 == 0x00df
                    00DF    261 _RSTSRC	=	0x00df
                    00D1    262 G$RTCCON$0$0 == 0x00d1
                    00D1    263 _RTCCON	=	0x00d1
                    00D2    264 G$RTCH$0$0 == 0x00d2
                    00D2    265 _RTCH	=	0x00d2
                    00D3    266 G$RTCL$0$0 == 0x00d3
                    00D3    267 _RTCL	=	0x00d3
                    00BA    268 G$SSTAT$0$0 == 0x00ba
                    00BA    269 _SSTAT	=	0x00ba
                    008F    270 G$TAMOD$0$0 == 0x008f
                    008F    271 _TAMOD	=	0x008f
                    0096    272 G$TRIM$0$0 == 0x0096
                    0096    273 _TRIM	=	0x0096
                    00A7    274 G$WDCON$0$0 == 0x00a7
                    00A7    275 _WDCON	=	0x00a7
                    00C1    276 G$WDL$0$0 == 0x00c1
                    00C1    277 _WDL	=	0x00c1
                    00C2    278 G$WFEED1$0$0 == 0x00c2
                    00C2    279 _WFEED1	=	0x00c2
                    00C3    280 G$WFEED2$0$0 == 0x00c3
                    00C3    281 _WFEED2	=	0x00c3
                    00B7    282 G$IP0H$0$0 == 0x00b7
                    00B7    283 _IP0H	=	0x00b7
                    00E8    284 G$IEN1$0$0 == 0x00e8
                    00E8    285 _IEN1	=	0x00e8
                            286 ;--------------------------------------------------------
                            287 ; special function bits
                            288 ;--------------------------------------------------------
                            289 	.area RSEG    (ABS,DATA)
   0000                     290 	.org 0x0000
                    00D0    291 G$PSW_0$0$0 == 0x00d0
                    00D0    292 _PSW_0	=	0x00d0
                    00D1    293 G$PSW_1$0$0 == 0x00d1
                    00D1    294 _PSW_1	=	0x00d1
                    00D2    295 G$PSW_2$0$0 == 0x00d2
                    00D2    296 _PSW_2	=	0x00d2
                    00D3    297 G$PSW_3$0$0 == 0x00d3
                    00D3    298 _PSW_3	=	0x00d3
                    00D4    299 G$PSW_4$0$0 == 0x00d4
                    00D4    300 _PSW_4	=	0x00d4
                    00D5    301 G$PSW_5$0$0 == 0x00d5
                    00D5    302 _PSW_5	=	0x00d5
                    00D6    303 G$PSW_6$0$0 == 0x00d6
                    00D6    304 _PSW_6	=	0x00d6
                    00D7    305 G$PSW_7$0$0 == 0x00d7
                    00D7    306 _PSW_7	=	0x00d7
                    008F    307 G$TCON_7$0$0 == 0x008f
                    008F    308 _TCON_7	=	0x008f
                    008E    309 G$TCON_6$0$0 == 0x008e
                    008E    310 _TCON_6	=	0x008e
                    008D    311 G$TCON_5$0$0 == 0x008d
                    008D    312 _TCON_5	=	0x008d
                    008C    313 G$TCON_4$0$0 == 0x008c
                    008C    314 _TCON_4	=	0x008c
                    008B    315 G$TCON_3$0$0 == 0x008b
                    008B    316 _TCON_3	=	0x008b
                    008A    317 G$TCON_2$0$0 == 0x008a
                    008A    318 _TCON_2	=	0x008a
                    0089    319 G$TCON_1$0$0 == 0x0089
                    0089    320 _TCON_1	=	0x0089
                    0088    321 G$TCON_0$0$0 == 0x0088
                    0088    322 _TCON_0	=	0x0088
                    00AF    323 G$IEN0_7$0$0 == 0x00af
                    00AF    324 _IEN0_7	=	0x00af
                    00AE    325 G$IEN0_6$0$0 == 0x00ae
                    00AE    326 _IEN0_6	=	0x00ae
                    00AD    327 G$IEN0_5$0$0 == 0x00ad
                    00AD    328 _IEN0_5	=	0x00ad
                    00AC    329 G$IEN0_4$0$0 == 0x00ac
                    00AC    330 _IEN0_4	=	0x00ac
                    00AB    331 G$IEN0_3$0$0 == 0x00ab
                    00AB    332 _IEN0_3	=	0x00ab
                    00AA    333 G$IEN0_2$0$0 == 0x00aa
                    00AA    334 _IEN0_2	=	0x00aa
                    00A9    335 G$IEN0_1$0$0 == 0x00a9
                    00A9    336 _IEN0_1	=	0x00a9
                    00A8    337 G$IEN0_0$0$0 == 0x00a8
                    00A8    338 _IEN0_0	=	0x00a8
                    00EA    339 G$IEN1_2$0$0 == 0x00ea
                    00EA    340 _IEN1_2	=	0x00ea
                    00E9    341 G$IEN1_1$0$0 == 0x00e9
                    00E9    342 _IEN1_1	=	0x00e9
                    00E8    343 G$IEN1_0$0$0 == 0x00e8
                    00E8    344 _IEN1_0	=	0x00e8
                    00FE    345 G$IP1_6$0$0 == 0x00fe
                    00FE    346 _IP1_6	=	0x00fe
                    00FA    347 G$IP1_2$0$0 == 0x00fa
                    00FA    348 _IP1_2	=	0x00fa
                    00F9    349 G$IP1_1$0$0 == 0x00f9
                    00F9    350 _IP1_1	=	0x00f9
                    00F8    351 G$IP1_0$0$0 == 0x00f8
                    00F8    352 _IP1_0	=	0x00f8
                    00BE    353 G$IP0_6$0$0 == 0x00be
                    00BE    354 _IP0_6	=	0x00be
                    00BD    355 G$IP0_5$0$0 == 0x00bd
                    00BD    356 _IP0_5	=	0x00bd
                    00BC    357 G$IP0_4$0$0 == 0x00bc
                    00BC    358 _IP0_4	=	0x00bc
                    00BB    359 G$IP0_3$0$0 == 0x00bb
                    00BB    360 _IP0_3	=	0x00bb
                    00BA    361 G$IP0_2$0$0 == 0x00ba
                    00BA    362 _IP0_2	=	0x00ba
                    00B9    363 G$IP0_1$0$0 == 0x00b9
                    00B9    364 _IP0_1	=	0x00b9
                    00B8    365 G$IP0_0$0$0 == 0x00b8
                    00B8    366 _IP0_0	=	0x00b8
                    0098    367 G$SCON_0$0$0 == 0x0098
                    0098    368 _SCON_0	=	0x0098
                    0099    369 G$SCON_1$0$0 == 0x0099
                    0099    370 _SCON_1	=	0x0099
                    009A    371 G$SCON_2$0$0 == 0x009a
                    009A    372 _SCON_2	=	0x009a
                    009B    373 G$SCON_3$0$0 == 0x009b
                    009B    374 _SCON_3	=	0x009b
                    009C    375 G$SCON_4$0$0 == 0x009c
                    009C    376 _SCON_4	=	0x009c
                    009D    377 G$SCON_5$0$0 == 0x009d
                    009D    378 _SCON_5	=	0x009d
                    009E    379 G$SCON_6$0$0 == 0x009e
                    009E    380 _SCON_6	=	0x009e
                    009F    381 G$SCON_7$0$0 == 0x009f
                    009F    382 _SCON_7	=	0x009f
                    00DE    383 G$I2CON_6$0$0 == 0x00de
                    00DE    384 _I2CON_6	=	0x00de
                    00DD    385 G$I2CON_5$0$0 == 0x00dd
                    00DD    386 _I2CON_5	=	0x00dd
                    00DC    387 G$I2CON_4$0$0 == 0x00dc
                    00DC    388 _I2CON_4	=	0x00dc
                    00DB    389 G$I2CON_3$0$0 == 0x00db
                    00DB    390 _I2CON_3	=	0x00db
                    00DA    391 G$I2CON_2$0$0 == 0x00da
                    00DA    392 _I2CON_2	=	0x00da
                    00D8    393 G$I2CON_0$0$0 == 0x00d8
                    00D8    394 _I2CON_0	=	0x00d8
                    0080    395 G$P0_0$0$0 == 0x0080
                    0080    396 _P0_0	=	0x0080
                    0081    397 G$P0_1$0$0 == 0x0081
                    0081    398 _P0_1	=	0x0081
                    0082    399 G$P0_2$0$0 == 0x0082
                    0082    400 _P0_2	=	0x0082
                    0083    401 G$P0_3$0$0 == 0x0083
                    0083    402 _P0_3	=	0x0083
                    0084    403 G$P0_4$0$0 == 0x0084
                    0084    404 _P0_4	=	0x0084
                    0085    405 G$P0_5$0$0 == 0x0085
                    0085    406 _P0_5	=	0x0085
                    0086    407 G$P0_6$0$0 == 0x0086
                    0086    408 _P0_6	=	0x0086
                    0087    409 G$P0_7$0$0 == 0x0087
                    0087    410 _P0_7	=	0x0087
                    0090    411 G$P1_0$0$0 == 0x0090
                    0090    412 _P1_0	=	0x0090
                    0091    413 G$P1_1$0$0 == 0x0091
                    0091    414 _P1_1	=	0x0091
                    0092    415 G$P1_2$0$0 == 0x0092
                    0092    416 _P1_2	=	0x0092
                    0093    417 G$P1_3$0$0 == 0x0093
                    0093    418 _P1_3	=	0x0093
                    0094    419 G$P1_4$0$0 == 0x0094
                    0094    420 _P1_4	=	0x0094
                    0095    421 G$P1_5$0$0 == 0x0095
                    0095    422 _P1_5	=	0x0095
                    0096    423 G$P1_6$0$0 == 0x0096
                    0096    424 _P1_6	=	0x0096
                    0097    425 G$P1_7$0$0 == 0x0097
                    0097    426 _P1_7	=	0x0097
                    00B0    427 G$P3_0$0$0 == 0x00b0
                    00B0    428 _P3_0	=	0x00b0
                    00B1    429 G$P3_1$0$0 == 0x00b1
                    00B1    430 _P3_1	=	0x00b1
                            431 ;--------------------------------------------------------
                            432 ; overlayable register banks
                            433 ;--------------------------------------------------------
                            434 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     435 	.ds 8
                            436 ;--------------------------------------------------------
                            437 ; internal ram data
                            438 ;--------------------------------------------------------
                            439 	.area DSEG    (DATA)
                            440 ;--------------------------------------------------------
                            441 ; overlayable items in internal ram 
                            442 ;--------------------------------------------------------
                            443 	.area OSEG    (OVR,DATA)
                            444 ;--------------------------------------------------------
                            445 ; indirectly addressable internal ram data
                            446 ;--------------------------------------------------------
                            447 	.area ISEG    (DATA)
                            448 ;--------------------------------------------------------
                            449 ; absolute internal ram data
                            450 ;--------------------------------------------------------
                            451 	.area IABS    (ABS,DATA)
                            452 	.area IABS    (ABS,DATA)
                            453 ;--------------------------------------------------------
                            454 ; bit data
                            455 ;--------------------------------------------------------
                            456 	.area BSEG    (BIT)
                            457 ;--------------------------------------------------------
                            458 ; paged external ram data
                            459 ;--------------------------------------------------------
                            460 	.area PSEG    (PAG,XDATA)
                            461 ;--------------------------------------------------------
                            462 ; external ram data
                            463 ;--------------------------------------------------------
                            464 	.area XSEG    (XDATA)
                            465 ;--------------------------------------------------------
                            466 ; absolute external ram data
                            467 ;--------------------------------------------------------
                            468 	.area XABS    (ABS,XDATA)
                            469 ;--------------------------------------------------------
                            470 ; external initialized ram data
                            471 ;--------------------------------------------------------
                            472 	.area XISEG   (XDATA)
                            473 	.area HOME    (CODE)
                            474 	.area GSINIT0 (CODE)
                            475 	.area GSINIT1 (CODE)
                            476 	.area GSINIT2 (CODE)
                            477 	.area GSINIT3 (CODE)
                            478 	.area GSINIT4 (CODE)
                            479 	.area GSINIT5 (CODE)
                            480 	.area GSINIT  (CODE)
                            481 	.area GSFINAL (CODE)
                            482 	.area CSEG    (CODE)
                            483 ;--------------------------------------------------------
                            484 ; global & static initialisations
                            485 ;--------------------------------------------------------
                            486 	.area HOME    (CODE)
                            487 	.area GSINIT  (CODE)
                            488 	.area GSFINAL (CODE)
                            489 	.area GSINIT  (CODE)
                            490 ;--------------------------------------------------------
                            491 ; Home
                            492 ;--------------------------------------------------------
                            493 	.area HOME    (CODE)
                            494 	.area HOME    (CODE)
                            495 ;--------------------------------------------------------
                            496 ; code
                            497 ;--------------------------------------------------------
                            498 	.area CSEG    (CODE)
                            499 ;------------------------------------------------------------
                            500 ;Allocation info for local variables in function 'i2c_sla_init'
                            501 ;------------------------------------------------------------
                    0000    502 	G$i2c_sla_init$0$0 ==.
                    0000    503 	C$fb_i2c.c$13$0$0 ==.
                            504 ;	..\..\Dimmer\fb_i2c.c:13: void i2c_sla_init(void)
                            505 ;	-----------------------------------------
                            506 ;	 function i2c_sla_init
                            507 ;	-----------------------------------------
   00AE                     508 _i2c_sla_init:
                    0007    509 	ar7 = 0x07
                    0006    510 	ar6 = 0x06
                    0005    511 	ar5 = 0x05
                    0004    512 	ar4 = 0x04
                    0003    513 	ar3 = 0x03
                    0002    514 	ar2 = 0x02
                    0001    515 	ar1 = 0x01
                    0000    516 	ar0 = 0x00
                    0000    517 	C$fb_i2c.c$15$1$1 ==.
                            518 ;	..\..\Dimmer\fb_i2c.c:15: P1M1 |= 0x0c;//(1<<2)+(1<<3);
   00AE 43 91 0C            519 	orl	_P1M1,#0x0C
                    0003    520 	C$fb_i2c.c$16$1$1 ==.
                            521 ;	..\..\Dimmer\fb_i2c.c:16: P1M2 &= ~0x0c;
   00B1 AF 92               522 	mov	r7,_P1M2
   00B3 53 07 F3            523 	anl	ar7,#0xF3
   00B6 8F 92               524 	mov	_P1M2,r7
                    000A    525 	C$fb_i2c.c$17$1$1 ==.
                            526 ;	..\..\Dimmer\fb_i2c.c:17: I2ADR = 0xa0; // default slave address
   00B8 75 DB A0            527 	mov	_I2ADR,#0xA0
                    000D    528 	C$fb_i2c.c$18$1$1 ==.
                            529 ;	..\..\Dimmer\fb_i2c.c:18: I2CON = 0x44;
   00BB 75 D8 44            530 	mov	_I2CON,#0x44
                    0010    531 	C$fb_i2c.c$19$1$1 ==.
                            532 ;	..\..\Dimmer\fb_i2c.c:19: I2SCLH=0; //I2C takt
   00BE 75 DD 00            533 	mov	_I2SCLH,#0x00
                    0013    534 	C$fb_i2c.c$20$1$1 ==.
                            535 ;	..\..\Dimmer\fb_i2c.c:20: I2SCLL=0; //I2C takt
   00C1 75 DC 00            536 	mov	_I2SCLL,#0x00
                    0016    537 	C$fb_i2c.c$21$1$1 ==.
                            538 ;	..\..\Dimmer\fb_i2c.c:21: SDA=1;
   00C4 D2 93               539 	setb	_P1_3
                    0018    540 	C$fb_i2c.c$22$1$1 ==.
                            541 ;	..\..\Dimmer\fb_i2c.c:22: SCL=1;
   00C6 D2 92               542 	setb	_P1_2
                    001A    543 	C$fb_i2c.c$23$1$1 ==.
                            544 ;	..\..\Dimmer\fb_i2c.c:23: EI2C=1;
   00C8 D2 E8               545 	setb	_IEN1_0
                    001C    546 	C$fb_i2c.c$24$1$1 ==.
                            547 ;	..\..\Dimmer\fb_i2c.c:24: EA=1;
   00CA D2 AF               548 	setb	_IEN0_7
                    001E    549 	C$fb_i2c.c$25$1$1 ==.
                            550 ;	..\..\Dimmer\fb_i2c.c:25: return;
                    001E    551 	C$fb_i2c.c$26$1$1 ==.
                    001E    552 	XG$i2c_sla_init$0$0 ==.
   00CC 22                  553 	ret
                            554 ;------------------------------------------------------------
                            555 ;Allocation info for local variables in function 'i2c_ma_init'
                            556 ;------------------------------------------------------------
                    001F    557 	G$i2c_ma_init$0$0 ==.
                    001F    558 	C$fb_i2c.c$28$1$1 ==.
                            559 ;	..\..\Dimmer\fb_i2c.c:28: void i2c_ma_init(void)
                            560 ;	-----------------------------------------
                            561 ;	 function i2c_ma_init
                            562 ;	-----------------------------------------
   00CD                     563 _i2c_ma_init:
                    001F    564 	C$fb_i2c.c$30$1$1 ==.
                            565 ;	..\..\Dimmer\fb_i2c.c:30: P1M1 |= 0x0c;//(1<<2)+(1<<3);
   00CD 43 91 0C            566 	orl	_P1M1,#0x0C
                    0022    567 	C$fb_i2c.c$31$1$1 ==.
                            568 ;	..\..\Dimmer\fb_i2c.c:31: P1M2 |= 0x0c;//((1<<2)+(1<<3));
   00D0 43 92 0C            569 	orl	_P1M2,#0x0C
                    0025    570 	C$fb_i2c.c$32$1$1 ==.
                            571 ;	..\..\Dimmer\fb_i2c.c:32: I2ADR = 0xa0; // default slave address
   00D3 75 DB A0            572 	mov	_I2ADR,#0xA0
                    0028    573 	C$fb_i2c.c$33$1$1 ==.
                            574 ;	..\..\Dimmer\fb_i2c.c:33: I2CON = 0x44;
   00D6 75 D8 44            575 	mov	_I2CON,#0x44
                    002B    576 	C$fb_i2c.c$34$1$1 ==.
                            577 ;	..\..\Dimmer\fb_i2c.c:34: I2SCLH=17; //I2C takt
   00D9 75 DD 11            578 	mov	_I2SCLH,#0x11
                    002E    579 	C$fb_i2c.c$35$1$1 ==.
                            580 ;	..\..\Dimmer\fb_i2c.c:35: I2SCLL=17; //I2C takt
   00DC 75 DC 11            581 	mov	_I2SCLL,#0x11
                    0031    582 	C$fb_i2c.c$36$1$1 ==.
                            583 ;	..\..\Dimmer\fb_i2c.c:36: SDA=1;
   00DF D2 93               584 	setb	_P1_3
                    0033    585 	C$fb_i2c.c$37$1$1 ==.
                            586 ;	..\..\Dimmer\fb_i2c.c:37: SCL=1;
   00E1 D2 92               587 	setb	_P1_2
                    0035    588 	C$fb_i2c.c$38$1$1 ==.
                            589 ;	..\..\Dimmer\fb_i2c.c:38: return;
                    0035    590 	C$fb_i2c.c$39$1$1 ==.
                    0035    591 	XG$i2c_ma_init$0$0 ==.
   00E3 22                  592 	ret
                            593 ;------------------------------------------------------------
                            594 ;Allocation info for local variables in function 'i2c_wait'
                            595 ;------------------------------------------------------------
                            596 ;timeueberlauf             Allocated to registers r6 r7 
                            597 ;------------------------------------------------------------
                    0036    598 	G$i2c_wait$0$0 ==.
                    0036    599 	C$fb_i2c.c$40$1$1 ==.
                            600 ;	..\..\Dimmer\fb_i2c.c:40: unsigned char i2c_wait(void)
                            601 ;	-----------------------------------------
                            602 ;	 function i2c_wait
                            603 ;	-----------------------------------------
   00E4                     604 _i2c_wait:
                    0036    605 	C$fb_i2c.c$44$1$1 ==.
                            606 ;	..\..\Dimmer\fb_i2c.c:44: while (SI==0)
   00E4 7E 00               607 	mov	r6,#0x00
   00E6 7F 00               608 	mov	r7,#0x00
   00E8                     609 00103$:
   00E8 20 DB 15            610 	jb	_I2CON_3,00105$
                    003D    611 	C$fb_i2c.c$47$2$2 ==.
                            612 ;	..\..\Dimmer\fb_i2c.c:47: timeueberlauf++;
   00EB 0E                  613 	inc	r6
   00EC BE 00 01            614 	cjne	r6,#0x00,00112$
   00EF 0F                  615 	inc	r7
   00F0                     616 00112$:
                    0042    617 	C$fb_i2c.c$48$2$2 ==.
                            618 ;	..\..\Dimmer\fb_i2c.c:48: if(timeueberlauf>MAX_I2C_ZEIT)
   00F0 C3                  619 	clr	c
   00F1 74 B8               620 	mov	a,#0xB8
   00F3 9E                  621 	subb	a,r6
   00F4 74 0B               622 	mov	a,#0x0B
   00F6 9F                  623 	subb	a,r7
   00F7 50 EF               624 	jnc	00103$
                    004B    625 	C$fb_i2c.c$51$3$3 ==.
                            626 ;	..\..\Dimmer\fb_i2c.c:51: SI=0;
   00F9 C2 DB               627 	clr	_I2CON_3
                    004D    628 	C$fb_i2c.c$52$3$3 ==.
                            629 ;	..\..\Dimmer\fb_i2c.c:52: return 0xFF;
   00FB 75 82 FF            630 	mov	dpl,#0xFF
   00FE 80 05               631 	sjmp	00106$
   0100                     632 00105$:
                    0052    633 	C$fb_i2c.c$57$1$1 ==.
                            634 ;	..\..\Dimmer\fb_i2c.c:57: SI=0;
   0100 C2 DB               635 	clr	_I2CON_3
                    0054    636 	C$fb_i2c.c$58$1$1 ==.
                            637 ;	..\..\Dimmer\fb_i2c.c:58: return 0;
   0102 75 82 00            638 	mov	dpl,#0x00
   0105                     639 00106$:
                    0057    640 	C$fb_i2c.c$59$1$1 ==.
                    0057    641 	XG$i2c_wait$0$0 ==.
   0105 22                  642 	ret
                            643 ;------------------------------------------------------------
                            644 ;Allocation info for local variables in function 'i2c_send_daten'
                            645 ;------------------------------------------------------------
                            646 ;K2                        Allocated to stack - _bp -3
                            647 ;K1                        Allocated to registers r7 
                            648 ;m1                        Allocated to registers r6 
                            649 ;m2                        Allocated to registers r5 
                            650 ;------------------------------------------------------------
                    0058    651 	G$i2c_send_daten$0$0 ==.
                    0058    652 	C$fb_i2c.c$62$1$1 ==.
                            653 ;	..\..\Dimmer\fb_i2c.c:62: unsigned char i2c_send_daten(unsigned char K1,unsigned char K2)
                            654 ;	-----------------------------------------
                            655 ;	 function i2c_send_daten
                            656 ;	-----------------------------------------
   0106                     657 _i2c_send_daten:
   0106 C0 18               658 	push	_bp
   0108 85 81 18            659 	mov	_bp,sp
   010B AF 82               660 	mov	r7,dpl
                    005F    661 	C$fb_i2c.c$64$1$1 ==.
                            662 ;	..\..\Dimmer\fb_i2c.c:64: unsigned char m1=P0M1;      //wert sichern
   010D AE 84               663 	mov	r6,_P0M1
                    0061    664 	C$fb_i2c.c$65$1$1 ==.
                            665 ;	..\..\Dimmer\fb_i2c.c:65: unsigned char m2=P0M2;      //wert sichern
   010F AD 85               666 	mov	r5,_P0M2
                    0063    667 	C$fb_i2c.c$66$1$1 ==.
                            668 ;	..\..\Dimmer\fb_i2c.c:66: P0M1=0xFF;  //eingänge umschalten wegen Tastererweiterung
   0111 75 84 FF            669 	mov	_P0M1,#0xFF
                    0066    670 	C$fb_i2c.c$67$1$1 ==.
                            671 ;	..\..\Dimmer\fb_i2c.c:67: P0M2=0x00;  //eingänge umschalten wegen Tastererweiterung
   0114 75 85 00            672 	mov	_P0M2,#0x00
                    0069    673 	C$fb_i2c.c$68$1$1 ==.
                            674 ;	..\..\Dimmer\fb_i2c.c:68: I2SCLH=17;
   0117 75 DD 11            675 	mov	_I2SCLH,#0x11
                    006C    676 	C$fb_i2c.c$69$1$1 ==.
                            677 ;	..\..\Dimmer\fb_i2c.c:69: I2SCLL=17;
   011A 75 DC 11            678 	mov	_I2SCLL,#0x11
                    006F    679 	C$fb_i2c.c$70$1$1 ==.
                            680 ;	..\..\Dimmer\fb_i2c.c:70: I2CON=0;
   011D 75 D8 00            681 	mov	_I2CON,#0x00
                    0072    682 	C$fb_i2c.c$71$1$1 ==.
                            683 ;	..\..\Dimmer\fb_i2c.c:71: I2EN=1;         //Master Transmit mode
   0120 D2 DE               684 	setb	_I2CON_6
                    0074    685 	C$fb_i2c.c$72$1$1 ==.
                            686 ;	..\..\Dimmer\fb_i2c.c:72: CRSEL=0;        //CRSEL=0
   0122 C2 D8               687 	clr	_I2CON_0
                    0076    688 	C$fb_i2c.c$73$1$1 ==.
                            689 ;	..\..\Dimmer\fb_i2c.c:73: STA=1;           //send Start MASTER
   0124 D2 DD               690 	setb	_I2CON_5
                    0078    691 	C$fb_i2c.c$74$1$1 ==.
                            692 ;	..\..\Dimmer\fb_i2c.c:74: if(i2c_wait()!=0)
   0126 C0 07               693 	push	ar7
   0128 C0 06               694 	push	ar6
   012A C0 05               695 	push	ar5
   012C 12 00 E4            696 	lcall	_i2c_wait
   012F E5 82               697 	mov	a,dpl
   0131 D0 05               698 	pop	ar5
   0133 D0 06               699 	pop	ar6
   0135 D0 07               700 	pop	ar7
   0137 60 05               701 	jz	00102$
                    008B    702 	C$fb_i2c.c$75$1$1 ==.
                            703 ;	..\..\Dimmer\fb_i2c.c:75: return 0xff;
   0139 75 82 FF            704 	mov	dpl,#0xFF
   013C 80 72               705 	sjmp	00111$
   013E                     706 00102$:
                    0090    707 	C$fb_i2c.c$76$1$1 ==.
                            708 ;	..\..\Dimmer\fb_i2c.c:76: STA=0;
   013E C2 DD               709 	clr	_I2CON_5
                    0092    710 	C$fb_i2c.c$77$1$1 ==.
                            711 ;	..\..\Dimmer\fb_i2c.c:77: I2DAT = 0xa0+0;//a0= adresse i2c eeprom 0=schreiben SLA_W;       //Adresse senden MASTER
   0140 75 DA A0            712 	mov	_I2DAT,#0xA0
                    0095    713 	C$fb_i2c.c$78$1$1 ==.
                            714 ;	..\..\Dimmer\fb_i2c.c:78: if(i2c_wait()!=0)
   0143 C0 07               715 	push	ar7
   0145 C0 06               716 	push	ar6
   0147 C0 05               717 	push	ar5
   0149 12 00 E4            718 	lcall	_i2c_wait
   014C E5 82               719 	mov	a,dpl
   014E D0 05               720 	pop	ar5
   0150 D0 06               721 	pop	ar6
   0152 D0 07               722 	pop	ar7
   0154 60 05               723 	jz	00104$
                    00A8    724 	C$fb_i2c.c$79$1$1 ==.
                            725 ;	..\..\Dimmer\fb_i2c.c:79: return 0xff;
   0156 75 82 FF            726 	mov	dpl,#0xFF
   0159 80 55               727 	sjmp	00111$
   015B                     728 00104$:
                    00AD    729 	C$fb_i2c.c$80$1$1 ==.
                            730 ;	..\..\Dimmer\fb_i2c.c:80: I2DAT = 0x00;                           //Daten Senden MASTER
   015B 75 DA 00            731 	mov	_I2DAT,#0x00
                    00B0    732 	C$fb_i2c.c$81$1$1 ==.
                            733 ;	..\..\Dimmer\fb_i2c.c:81: if(i2c_wait()!=0)
   015E C0 07               734 	push	ar7
   0160 C0 06               735 	push	ar6
   0162 C0 05               736 	push	ar5
   0164 12 00 E4            737 	lcall	_i2c_wait
   0167 E5 82               738 	mov	a,dpl
   0169 D0 05               739 	pop	ar5
   016B D0 06               740 	pop	ar6
   016D D0 07               741 	pop	ar7
   016F 60 05               742 	jz	00106$
                    00C3    743 	C$fb_i2c.c$82$1$1 ==.
                            744 ;	..\..\Dimmer\fb_i2c.c:82: return 0xff;
   0171 75 82 FF            745 	mov	dpl,#0xFF
   0174 80 3A               746 	sjmp	00111$
   0176                     747 00106$:
                    00C8    748 	C$fb_i2c.c$83$1$1 ==.
                            749 ;	..\..\Dimmer\fb_i2c.c:83: I2DAT = K1;                             //Daten Senden MASTER
   0176 8F DA               750 	mov	_I2DAT,r7
                    00CA    751 	C$fb_i2c.c$84$1$1 ==.
                            752 ;	..\..\Dimmer\fb_i2c.c:84: if(i2c_wait()!=0)
   0178 C0 06               753 	push	ar6
   017A C0 05               754 	push	ar5
   017C 12 00 E4            755 	lcall	_i2c_wait
   017F E5 82               756 	mov	a,dpl
   0181 D0 05               757 	pop	ar5
   0183 D0 06               758 	pop	ar6
   0185 60 05               759 	jz	00108$
                    00D9    760 	C$fb_i2c.c$85$1$1 ==.
                            761 ;	..\..\Dimmer\fb_i2c.c:85: return 0xff;
   0187 75 82 FF            762 	mov	dpl,#0xFF
   018A 80 24               763 	sjmp	00111$
   018C                     764 00108$:
                    00DE    765 	C$fb_i2c.c$86$1$1 ==.
                            766 ;	..\..\Dimmer\fb_i2c.c:86: I2DAT = K2;                             //Daten Senden MASTER
   018C E5 18               767 	mov	a,_bp
   018E 24 FD               768 	add	a,#0xfd
   0190 F8                  769 	mov	r0,a
   0191 86 DA               770 	mov	_I2DAT,@r0
                    00E5    771 	C$fb_i2c.c$88$1$1 ==.
                            772 ;	..\..\Dimmer\fb_i2c.c:88: if(i2c_wait()!=0)
   0193 C0 06               773 	push	ar6
   0195 C0 05               774 	push	ar5
   0197 12 00 E4            775 	lcall	_i2c_wait
   019A E5 82               776 	mov	a,dpl
   019C D0 05               777 	pop	ar5
   019E D0 06               778 	pop	ar6
   01A0 60 05               779 	jz	00110$
                    00F4    780 	C$fb_i2c.c$89$1$1 ==.
                            781 ;	..\..\Dimmer\fb_i2c.c:89: return 0xff;
   01A2 75 82 FF            782 	mov	dpl,#0xFF
   01A5 80 09               783 	sjmp	00111$
   01A7                     784 00110$:
                    00F9    785 	C$fb_i2c.c$90$1$1 ==.
                            786 ;	..\..\Dimmer\fb_i2c.c:90: STO=1;            //send Stop MASTER
   01A7 D2 DC               787 	setb	_I2CON_4
                    00FB    788 	C$fb_i2c.c$91$1$1 ==.
                            789 ;	..\..\Dimmer\fb_i2c.c:91: P0M1=m1;  //eingänge umschalten wegen Tastererweiterung
   01A9 8E 84               790 	mov	_P0M1,r6
                    00FD    791 	C$fb_i2c.c$92$1$1 ==.
                            792 ;	..\..\Dimmer\fb_i2c.c:92: P0M2=m2;  //eingänge umschalten wegen Tastererweiterung
   01AB 8D 85               793 	mov	_P0M2,r5
                    00FF    794 	C$fb_i2c.c$93$1$1 ==.
                            795 ;	..\..\Dimmer\fb_i2c.c:93: return 0;
   01AD 75 82 00            796 	mov	dpl,#0x00
   01B0                     797 00111$:
   01B0 D0 18               798 	pop	_bp
                    0104    799 	C$fb_i2c.c$94$1$1 ==.
                    0104    800 	XG$i2c_send_daten$0$0 ==.
   01B2 22                  801 	ret
                            802 	.area CSEG    (CODE)
                            803 	.area CONST   (CODE)
                            804 	.area XINIT   (CODE)
                            805 	.area CABS    (ABS,CODE)
