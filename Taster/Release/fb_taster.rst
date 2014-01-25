                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Sat Jan 25 10:33:40 2014
                              5 ;--------------------------------------------------------
                              6 	.module fb_taster
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _delay_timer
                             14 	.globl _switch_led
                             15 	.globl _port_changed
                             16 	.globl _restart_app
                             17 	.globl _process_tel
                             18 	.globl _restart_hw
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
                            154 	.globl _object_value
                            155 	.globl _RAM
                            156 ;--------------------------------------------------------
                            157 ; special function registers
                            158 ;--------------------------------------------------------
                            159 	.area RSEG    (ABS,DATA)
   0000                     160 	.org 0x0000
                    0080    161 G$P0$0$0 == 0x0080
                    0080    162 _P0	=	0x0080
                    0090    163 G$P1$0$0 == 0x0090
                    0090    164 _P1	=	0x0090
                    00B0    165 G$P3$0$0 == 0x00b0
                    00B0    166 _P3	=	0x00b0
                    00D0    167 G$PSW$0$0 == 0x00d0
                    00D0    168 _PSW	=	0x00d0
                    00E0    169 G$ACC$0$0 == 0x00e0
                    00E0    170 _ACC	=	0x00e0
                    00F0    171 G$B$0$0 == 0x00f0
                    00F0    172 _B	=	0x00f0
                    0081    173 G$SP$0$0 == 0x0081
                    0081    174 _SP	=	0x0081
                    0082    175 G$DPL$0$0 == 0x0082
                    0082    176 _DPL	=	0x0082
                    0083    177 G$DPH$0$0 == 0x0083
                    0083    178 _DPH	=	0x0083
                    0087    179 G$PCON$0$0 == 0x0087
                    0087    180 _PCON	=	0x0087
                    0088    181 G$TCON$0$0 == 0x0088
                    0088    182 _TCON	=	0x0088
                    0089    183 G$TMOD$0$0 == 0x0089
                    0089    184 _TMOD	=	0x0089
                    008A    185 G$TL0$0$0 == 0x008a
                    008A    186 _TL0	=	0x008a
                    008B    187 G$TL1$0$0 == 0x008b
                    008B    188 _TL1	=	0x008b
                    008C    189 G$TH0$0$0 == 0x008c
                    008C    190 _TH0	=	0x008c
                    008D    191 G$TH1$0$0 == 0x008d
                    008D    192 _TH1	=	0x008d
                    00A8    193 G$IEN0$0$0 == 0x00a8
                    00A8    194 _IEN0	=	0x00a8
                    00B8    195 G$IP0$0$0 == 0x00b8
                    00B8    196 _IP0	=	0x00b8
                    0098    197 G$SCON$0$0 == 0x0098
                    0098    198 _SCON	=	0x0098
                    0099    199 G$SBUF$0$0 == 0x0099
                    0099    200 _SBUF	=	0x0099
                    00A2    201 G$AUXR1$0$0 == 0x00a2
                    00A2    202 _AUXR1	=	0x00a2
                    00A9    203 G$SADDR$0$0 == 0x00a9
                    00A9    204 _SADDR	=	0x00a9
                    00B9    205 G$SADEN$0$0 == 0x00b9
                    00B9    206 _SADEN	=	0x00b9
                    00BE    207 G$BRGR0$0$0 == 0x00be
                    00BE    208 _BRGR0	=	0x00be
                    00BF    209 G$BRGR1$0$0 == 0x00bf
                    00BF    210 _BRGR1	=	0x00bf
                    00BD    211 G$BRGCON$0$0 == 0x00bd
                    00BD    212 _BRGCON	=	0x00bd
                    00AC    213 G$CMP1$0$0 == 0x00ac
                    00AC    214 _CMP1	=	0x00ac
                    00AD    215 G$CMP2$0$0 == 0x00ad
                    00AD    216 _CMP2	=	0x00ad
                    0095    217 G$DIVM$0$0 == 0x0095
                    0095    218 _DIVM	=	0x0095
                    00E7    219 G$FMADRH$0$0 == 0x00e7
                    00E7    220 _FMADRH	=	0x00e7
                    00E6    221 G$FMADRL$0$0 == 0x00e6
                    00E6    222 _FMADRL	=	0x00e6
                    00E4    223 G$FMCON$0$0 == 0x00e4
                    00E4    224 _FMCON	=	0x00e4
                    00E5    225 G$FMDATA$0$0 == 0x00e5
                    00E5    226 _FMDATA	=	0x00e5
                    00DB    227 G$I2ADR$0$0 == 0x00db
                    00DB    228 _I2ADR	=	0x00db
                    00D8    229 G$I2CON$0$0 == 0x00d8
                    00D8    230 _I2CON	=	0x00d8
                    00DA    231 G$I2DAT$0$0 == 0x00da
                    00DA    232 _I2DAT	=	0x00da
                    00DD    233 G$I2SCLH$0$0 == 0x00dd
                    00DD    234 _I2SCLH	=	0x00dd
                    00DC    235 G$I2SCLL$0$0 == 0x00dc
                    00DC    236 _I2SCLL	=	0x00dc
                    00D9    237 G$I2STAT$0$0 == 0x00d9
                    00D9    238 _I2STAT	=	0x00d9
                    00F8    239 G$IP1$0$0 == 0x00f8
                    00F8    240 _IP1	=	0x00f8
                    00F7    241 G$IP1H$0$0 == 0x00f7
                    00F7    242 _IP1H	=	0x00f7
                    0094    243 G$KBCON$0$0 == 0x0094
                    0094    244 _KBCON	=	0x0094
                    0086    245 G$KBMASK$0$0 == 0x0086
                    0086    246 _KBMASK	=	0x0086
                    0093    247 G$KBPATN$0$0 == 0x0093
                    0093    248 _KBPATN	=	0x0093
                    0084    249 G$P0M1$0$0 == 0x0084
                    0084    250 _P0M1	=	0x0084
                    0085    251 G$P0M2$0$0 == 0x0085
                    0085    252 _P0M2	=	0x0085
                    0091    253 G$P1M1$0$0 == 0x0091
                    0091    254 _P1M1	=	0x0091
                    0092    255 G$P1M2$0$0 == 0x0092
                    0092    256 _P1M2	=	0x0092
                    00B1    257 G$P3M1$0$0 == 0x00b1
                    00B1    258 _P3M1	=	0x00b1
                    00B2    259 G$P3M2$0$0 == 0x00b2
                    00B2    260 _P3M2	=	0x00b2
                    00B5    261 G$PCONA$0$0 == 0x00b5
                    00B5    262 _PCONA	=	0x00b5
                    00F6    263 G$PT0AD$0$0 == 0x00f6
                    00F6    264 _PT0AD	=	0x00f6
                    00DF    265 G$RSTSRC$0$0 == 0x00df
                    00DF    266 _RSTSRC	=	0x00df
                    00D1    267 G$RTCCON$0$0 == 0x00d1
                    00D1    268 _RTCCON	=	0x00d1
                    00D2    269 G$RTCH$0$0 == 0x00d2
                    00D2    270 _RTCH	=	0x00d2
                    00D3    271 G$RTCL$0$0 == 0x00d3
                    00D3    272 _RTCL	=	0x00d3
                    00BA    273 G$SSTAT$0$0 == 0x00ba
                    00BA    274 _SSTAT	=	0x00ba
                    008F    275 G$TAMOD$0$0 == 0x008f
                    008F    276 _TAMOD	=	0x008f
                    0096    277 G$TRIM$0$0 == 0x0096
                    0096    278 _TRIM	=	0x0096
                    00A7    279 G$WDCON$0$0 == 0x00a7
                    00A7    280 _WDCON	=	0x00a7
                    00C1    281 G$WDL$0$0 == 0x00c1
                    00C1    282 _WDL	=	0x00c1
                    00C2    283 G$WFEED1$0$0 == 0x00c2
                    00C2    284 _WFEED1	=	0x00c2
                    00C3    285 G$WFEED2$0$0 == 0x00c3
                    00C3    286 _WFEED2	=	0x00c3
                    00B7    287 G$IP0H$0$0 == 0x00b7
                    00B7    288 _IP0H	=	0x00b7
                    00E8    289 G$IEN1$0$0 == 0x00e8
                    00E8    290 _IEN1	=	0x00e8
                            291 ;--------------------------------------------------------
                            292 ; special function bits
                            293 ;--------------------------------------------------------
                            294 	.area RSEG    (ABS,DATA)
   0000                     295 	.org 0x0000
                    00D0    296 G$PSW_0$0$0 == 0x00d0
                    00D0    297 _PSW_0	=	0x00d0
                    00D1    298 G$PSW_1$0$0 == 0x00d1
                    00D1    299 _PSW_1	=	0x00d1
                    00D2    300 G$PSW_2$0$0 == 0x00d2
                    00D2    301 _PSW_2	=	0x00d2
                    00D3    302 G$PSW_3$0$0 == 0x00d3
                    00D3    303 _PSW_3	=	0x00d3
                    00D4    304 G$PSW_4$0$0 == 0x00d4
                    00D4    305 _PSW_4	=	0x00d4
                    00D5    306 G$PSW_5$0$0 == 0x00d5
                    00D5    307 _PSW_5	=	0x00d5
                    00D6    308 G$PSW_6$0$0 == 0x00d6
                    00D6    309 _PSW_6	=	0x00d6
                    00D7    310 G$PSW_7$0$0 == 0x00d7
                    00D7    311 _PSW_7	=	0x00d7
                    008F    312 G$TCON_7$0$0 == 0x008f
                    008F    313 _TCON_7	=	0x008f
                    008E    314 G$TCON_6$0$0 == 0x008e
                    008E    315 _TCON_6	=	0x008e
                    008D    316 G$TCON_5$0$0 == 0x008d
                    008D    317 _TCON_5	=	0x008d
                    008C    318 G$TCON_4$0$0 == 0x008c
                    008C    319 _TCON_4	=	0x008c
                    008B    320 G$TCON_3$0$0 == 0x008b
                    008B    321 _TCON_3	=	0x008b
                    008A    322 G$TCON_2$0$0 == 0x008a
                    008A    323 _TCON_2	=	0x008a
                    0089    324 G$TCON_1$0$0 == 0x0089
                    0089    325 _TCON_1	=	0x0089
                    0088    326 G$TCON_0$0$0 == 0x0088
                    0088    327 _TCON_0	=	0x0088
                    00AF    328 G$IEN0_7$0$0 == 0x00af
                    00AF    329 _IEN0_7	=	0x00af
                    00AE    330 G$IEN0_6$0$0 == 0x00ae
                    00AE    331 _IEN0_6	=	0x00ae
                    00AD    332 G$IEN0_5$0$0 == 0x00ad
                    00AD    333 _IEN0_5	=	0x00ad
                    00AC    334 G$IEN0_4$0$0 == 0x00ac
                    00AC    335 _IEN0_4	=	0x00ac
                    00AB    336 G$IEN0_3$0$0 == 0x00ab
                    00AB    337 _IEN0_3	=	0x00ab
                    00AA    338 G$IEN0_2$0$0 == 0x00aa
                    00AA    339 _IEN0_2	=	0x00aa
                    00A9    340 G$IEN0_1$0$0 == 0x00a9
                    00A9    341 _IEN0_1	=	0x00a9
                    00A8    342 G$IEN0_0$0$0 == 0x00a8
                    00A8    343 _IEN0_0	=	0x00a8
                    00EA    344 G$IEN1_2$0$0 == 0x00ea
                    00EA    345 _IEN1_2	=	0x00ea
                    00E9    346 G$IEN1_1$0$0 == 0x00e9
                    00E9    347 _IEN1_1	=	0x00e9
                    00E8    348 G$IEN1_0$0$0 == 0x00e8
                    00E8    349 _IEN1_0	=	0x00e8
                    00FE    350 G$IP1_6$0$0 == 0x00fe
                    00FE    351 _IP1_6	=	0x00fe
                    00FA    352 G$IP1_2$0$0 == 0x00fa
                    00FA    353 _IP1_2	=	0x00fa
                    00F9    354 G$IP1_1$0$0 == 0x00f9
                    00F9    355 _IP1_1	=	0x00f9
                    00F8    356 G$IP1_0$0$0 == 0x00f8
                    00F8    357 _IP1_0	=	0x00f8
                    00BE    358 G$IP0_6$0$0 == 0x00be
                    00BE    359 _IP0_6	=	0x00be
                    00BD    360 G$IP0_5$0$0 == 0x00bd
                    00BD    361 _IP0_5	=	0x00bd
                    00BC    362 G$IP0_4$0$0 == 0x00bc
                    00BC    363 _IP0_4	=	0x00bc
                    00BB    364 G$IP0_3$0$0 == 0x00bb
                    00BB    365 _IP0_3	=	0x00bb
                    00BA    366 G$IP0_2$0$0 == 0x00ba
                    00BA    367 _IP0_2	=	0x00ba
                    00B9    368 G$IP0_1$0$0 == 0x00b9
                    00B9    369 _IP0_1	=	0x00b9
                    00B8    370 G$IP0_0$0$0 == 0x00b8
                    00B8    371 _IP0_0	=	0x00b8
                    0098    372 G$SCON_0$0$0 == 0x0098
                    0098    373 _SCON_0	=	0x0098
                    0099    374 G$SCON_1$0$0 == 0x0099
                    0099    375 _SCON_1	=	0x0099
                    009A    376 G$SCON_2$0$0 == 0x009a
                    009A    377 _SCON_2	=	0x009a
                    009B    378 G$SCON_3$0$0 == 0x009b
                    009B    379 _SCON_3	=	0x009b
                    009C    380 G$SCON_4$0$0 == 0x009c
                    009C    381 _SCON_4	=	0x009c
                    009D    382 G$SCON_5$0$0 == 0x009d
                    009D    383 _SCON_5	=	0x009d
                    009E    384 G$SCON_6$0$0 == 0x009e
                    009E    385 _SCON_6	=	0x009e
                    009F    386 G$SCON_7$0$0 == 0x009f
                    009F    387 _SCON_7	=	0x009f
                    00DE    388 G$I2CON_6$0$0 == 0x00de
                    00DE    389 _I2CON_6	=	0x00de
                    00DD    390 G$I2CON_5$0$0 == 0x00dd
                    00DD    391 _I2CON_5	=	0x00dd
                    00DC    392 G$I2CON_4$0$0 == 0x00dc
                    00DC    393 _I2CON_4	=	0x00dc
                    00DB    394 G$I2CON_3$0$0 == 0x00db
                    00DB    395 _I2CON_3	=	0x00db
                    00DA    396 G$I2CON_2$0$0 == 0x00da
                    00DA    397 _I2CON_2	=	0x00da
                    00D8    398 G$I2CON_0$0$0 == 0x00d8
                    00D8    399 _I2CON_0	=	0x00d8
                    0080    400 G$P0_0$0$0 == 0x0080
                    0080    401 _P0_0	=	0x0080
                    0081    402 G$P0_1$0$0 == 0x0081
                    0081    403 _P0_1	=	0x0081
                    0082    404 G$P0_2$0$0 == 0x0082
                    0082    405 _P0_2	=	0x0082
                    0083    406 G$P0_3$0$0 == 0x0083
                    0083    407 _P0_3	=	0x0083
                    0084    408 G$P0_4$0$0 == 0x0084
                    0084    409 _P0_4	=	0x0084
                    0085    410 G$P0_5$0$0 == 0x0085
                    0085    411 _P0_5	=	0x0085
                    0086    412 G$P0_6$0$0 == 0x0086
                    0086    413 _P0_6	=	0x0086
                    0087    414 G$P0_7$0$0 == 0x0087
                    0087    415 _P0_7	=	0x0087
                    0090    416 G$P1_0$0$0 == 0x0090
                    0090    417 _P1_0	=	0x0090
                    0091    418 G$P1_1$0$0 == 0x0091
                    0091    419 _P1_1	=	0x0091
                    0092    420 G$P1_2$0$0 == 0x0092
                    0092    421 _P1_2	=	0x0092
                    0093    422 G$P1_3$0$0 == 0x0093
                    0093    423 _P1_3	=	0x0093
                    0094    424 G$P1_4$0$0 == 0x0094
                    0094    425 _P1_4	=	0x0094
                    0095    426 G$P1_5$0$0 == 0x0095
                    0095    427 _P1_5	=	0x0095
                    0096    428 G$P1_6$0$0 == 0x0096
                    0096    429 _P1_6	=	0x0096
                    0097    430 G$P1_7$0$0 == 0x0097
                    0097    431 _P1_7	=	0x0097
                    00B0    432 G$P3_0$0$0 == 0x00b0
                    00B0    433 _P3_0	=	0x00b0
                    00B1    434 G$P3_1$0$0 == 0x00b1
                    00B1    435 _P3_1	=	0x00b1
                            436 ;--------------------------------------------------------
                            437 ; overlayable register banks
                            438 ;--------------------------------------------------------
                            439 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     440 	.ds 8
                            441 ;--------------------------------------------------------
                            442 ; overlayable bit register bank
                            443 ;--------------------------------------------------------
                            444 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     445 bits:
   0023                     446 	.ds 1
                    8000    447 	b0 = bits[0]
                    8100    448 	b1 = bits[1]
                    8200    449 	b2 = bits[2]
                    8300    450 	b3 = bits[3]
                    8400    451 	b4 = bits[4]
                    8500    452 	b5 = bits[5]
                    8600    453 	b6 = bits[6]
                    8700    454 	b7 = bits[7]
                            455 ;--------------------------------------------------------
                            456 ; internal ram data
                            457 ;--------------------------------------------------------
                            458 	.area DSEG    (DATA)
                    0000    459 G$RAM$0$0 == 0x0000
                    0000    460 _RAM	=	0x0000
                    0000    461 G$object_value$0$0==.
   0008                     462 _object_value::
   0008                     463 	.ds 12
                            464 ;--------------------------------------------------------
                            465 ; overlayable items in internal ram 
                            466 ;--------------------------------------------------------
                            467 	.area OSEG    (OVR,DATA)
                            468 ;--------------------------------------------------------
                            469 ; Stack segment in internal ram 
                            470 ;--------------------------------------------------------
                            471 	.area	SSEG	(DATA)
   0073                     472 __start__stack:
   0073                     473 	.ds	1
                            474 
                            475 ;--------------------------------------------------------
                            476 ; indirectly addressable internal ram data
                            477 ;--------------------------------------------------------
                            478 	.area ISEG    (DATA)
                            479 ;--------------------------------------------------------
                            480 ; absolute internal ram data
                            481 ;--------------------------------------------------------
                            482 	.area IABS    (ABS,DATA)
                            483 	.area IABS    (ABS,DATA)
                            484 ;--------------------------------------------------------
                            485 ; bit data
                            486 ;--------------------------------------------------------
                            487 	.area BSEG    (BIT)
                            488 ;--------------------------------------------------------
                            489 ; paged external ram data
                            490 ;--------------------------------------------------------
                            491 	.area PSEG    (PAG,XDATA)
                            492 ;--------------------------------------------------------
                            493 ; external ram data
                            494 ;--------------------------------------------------------
                            495 	.area XSEG    (XDATA)
                            496 ;--------------------------------------------------------
                            497 ; absolute external ram data
                            498 ;--------------------------------------------------------
                            499 	.area XABS    (ABS,XDATA)
                            500 ;--------------------------------------------------------
                            501 ; external initialized ram data
                            502 ;--------------------------------------------------------
                            503 	.area XISEG   (XDATA)
                            504 	.area HOME    (CODE)
                            505 	.area GSINIT0 (CODE)
                            506 	.area GSINIT1 (CODE)
                            507 	.area GSINIT2 (CODE)
                            508 	.area GSINIT3 (CODE)
                            509 	.area GSINIT4 (CODE)
                            510 	.area GSINIT5 (CODE)
                            511 	.area GSINIT  (CODE)
                            512 	.area GSFINAL (CODE)
                            513 	.area CSEG    (CODE)
                            514 ;--------------------------------------------------------
                            515 ; interrupt vector 
                            516 ;--------------------------------------------------------
                            517 	.area HOME    (CODE)
   0000                     518 __interrupt_vect:
   0000 02 00 23            519 	ljmp	__sdcc_gsinit_startup
   0003 32                  520 	reti
   0004                     521 	.ds	7
   000B 02 0A A9            522 	ljmp	_timer0_int
   000E                     523 	.ds	5
   0013 02 10 64            524 	ljmp	_X1_int
   0016                     525 	.ds	5
   001B 02 10 94            526 	ljmp	_T1_int
                            527 ;--------------------------------------------------------
                            528 ; global & static initialisations
                            529 ;--------------------------------------------------------
                            530 	.area HOME    (CODE)
                            531 	.area GSINIT  (CODE)
                            532 	.area GSFINAL (CODE)
                            533 	.area GSINIT  (CODE)
                            534 	.globl __sdcc_gsinit_startup
                            535 	.globl __sdcc_program_startup
                            536 	.globl __start__stack
                            537 	.globl __mcs51_genXINIT
                            538 	.globl __mcs51_genXRAMCLEAR
                            539 	.globl __mcs51_genRAMCLEAR
                            540 	.area GSFINAL (CODE)
   007C 02 00 1E            541 	ljmp	__sdcc_program_startup
                            542 ;--------------------------------------------------------
                            543 ; Home
                            544 ;--------------------------------------------------------
                            545 	.area HOME    (CODE)
                            546 	.area HOME    (CODE)
   001E                     547 __sdcc_program_startup:
   001E 12 00 7F            548 	lcall	_main
                            549 ;	return from main will lock up
   0021 80 FE               550 	sjmp .
                            551 ;--------------------------------------------------------
                            552 ; code
                            553 ;--------------------------------------------------------
                            554 	.area CSEG    (CODE)
                            555 ;------------------------------------------------------------
                            556 ;Allocation info for local variables in function 'main'
                            557 ;------------------------------------------------------------
                            558 ;n                         Allocated to registers r6 
                            559 ;LED                       Allocated to registers 
                            560 ;cmd                       Allocated to registers 
                            561 ;tasterpegel               Allocated to registers r7 
                            562 ;blink                     Allocated to registers 
                            563 ;verstell                  Allocated to registers b2 
                            564 ;verstellt                 Allocated to registers b1 
                            565 ;tastergetoggelt           Allocated to registers b0 
                            566 ;cal                       Allocated to registers 
                            567 ;buttonpattern             Allocated to registers 
                            568 ;wduf                      Allocated to registers b1 
                            569 ;------------------------------------------------------------
                    0000    570 	G$main$0$0 ==.
                    0000    571 	C$fb_taster.c$79$0$0 ==.
                            572 ;	..\fb_taster.c:79: void main(void)
                            573 ;	-----------------------------------------
                            574 ;	 function main
                            575 ;	-----------------------------------------
   007F                     576 _main:
                    0007    577 	ar7 = 0x07
                    0006    578 	ar6 = 0x06
                    0005    579 	ar5 = 0x05
                    0004    580 	ar4 = 0x04
                    0003    581 	ar3 = 0x03
                    0002    582 	ar2 = 0x02
                    0001    583 	ar1 = 0x01
                    0000    584 	ar0 = 0x00
                    0000    585 	C$fb_taster.c$81$1$0 ==.
                            586 ;	..\fb_taster.c:81: unsigned char n,LED,cmd,tasterpegel=0;
   007F 7F 00               587 	mov	r7,#0x00
                    0002    588 	C$fb_taster.c$82$1$0 ==.
                            589 ;	..\fb_taster.c:82: __bit blink, verstell, verstellt,tastergetoggelt=0;
   0081 C2 18               590 	clr	b0
                    0004    591 	C$fb_taster.c$89$1$1 ==.
                            592 ;	..\fb_taster.c:89: wduf=WDCON&0x02;
   0083 E5 A7               593 	mov	a,_WDCON
   0085 03                  594 	rr	a
   0086 54 01               595 	anl	a,#0x01
   0088 24 FF               596 	add	a,#0xff
   008A 92 19               597 	mov	b1,c
                    000D    598 	C$fb_taster.c$91$1$1 ==.
                            599 ;	..\fb_taster.c:91: restart_hw();							// Hardware zuruecksetzen	
   008C C0 07               600 	push	ar7
   008E C0 23               601 	push	bits
   0090 12 1A 32            602 	lcall	_restart_hw
   0093 D0 23               603 	pop	bits
   0095 D0 07               604 	pop	ar7
                    0018    605 	C$fb_taster.c$97$1$1 ==.
                            606 ;	..\fb_taster.c:97: TASTER=1;
   0097 D2 97               607 	setb	_P1_7
                    001A    608 	C$fb_taster.c$98$1$1 ==.
                            609 ;	..\fb_taster.c:98: if(!TASTER && wduf)cal=0;
   0099 20 97 03            610 	jb	_P1_7,00102$
   009C 20 19 05            611 	jb	b1,00103$
   009F                     612 00102$:
                    0020    613 	C$fb_taster.c$99$1$1 ==.
                            614 ;	..\fb_taster.c:99: else cal=trimsave;
   009F 90 1C BF            615 	mov	dptr,#_main_trimsave_1_1
   00A2 E4                  616 	clr	a
   00A3 93                  617 	movc	a,@a+dptr
   00A4                     618 00103$:
                    0025    619 	C$fb_taster.c$101$1$1 ==.
                            620 ;	..\fb_taster.c:101: TRIM = (TRIM+trimsave);
   00A4 90 1C BF            621 	mov	dptr,#_main_trimsave_1_1
   00A7 E4                  622 	clr	a
   00A8 93                  623 	movc	a,@a+dptr
   00A9 AD 96               624 	mov	r5,_TRIM
   00AB 2D                  625 	add	a,r5
   00AC FE                  626 	mov	r6,a
   00AD 8E 96               627 	mov	_TRIM,r6
                    0030    628 	C$fb_taster.c$102$1$1 ==.
                            629 ;	..\fb_taster.c:102: TRIM &= 0x3F;//oberen 2 bits ausblenden
   00AF 53 96 3F            630 	anl	_TRIM,#0x3F
                    0033    631 	C$fb_taster.c$103$2$2 ==.
                            632 ;	..\fb_taster.c:103: WATCHDOG_INIT
   00B2 75 C1 FF            633 	mov	_WDL,#0xFF
   00B5 C2 AF               634 	clr	_IEN0_7
   00B7 75 A7 E5            635 	mov	_WDCON,#0xE5
   00BA 75 C2 A5            636 	mov	_WFEED1,#0xA5
   00BD 75 C3 5A            637 	mov	_WFEED2,#0x5A
   00C0 D2 AF               638 	setb	_IEN0_7
                    0043    639 	C$fb_taster.c$104$1$1 ==.
                            640 ;	..\fb_taster.c:104: WATCHDOG_START
   00C2 C2 AF               641 	clr	_IEN0_7
   00C4 43 A7 04            642 	orl	_WDCON,#0x04
   00C7 75 C2 A5            643 	mov	_WFEED1,#0xA5
   00CA 75 C3 5A            644 	mov	_WFEED2,#0x5A
   00CD D2 AF               645 	setb	_IEN0_7
                    0050    646 	C$fb_taster.c$105$1$1 ==.
                            647 ;	..\fb_taster.c:105: TASTER=0;
   00CF C2 97               648 	clr	_P1_7
                    0052    649 	C$fb_taster.c$106$1$1 ==.
                            650 ;	..\fb_taster.c:106: for (n=0;n<50;n++) {
   00D1 7E 00               651 	mov	r6,#0x00
   00D3                     652 00161$:
   00D3 BE 32 00            653 	cjne	r6,#0x32,00214$
   00D6                     654 00214$:
   00D6 50 1A               655 	jnc	00164$
                    0059    656 	C$fb_taster.c$107$2$3 ==.
                            657 ;	..\fb_taster.c:107: TR0=0;					// Timer 0 anhalten
   00D8 C2 8C               658 	clr	_TCON_4
                    005B    659 	C$fb_taster.c$108$2$3 ==.
                            660 ;	..\fb_taster.c:108: TH0=eeprom[ADDRTAB+1];	// Timer 0 setzen mit phys. Adr. damit Geräte unterschiedlich beginnen zu senden
   00DA 90 1D 17            661 	mov	dptr,#(_eeprom + 0x0017)
   00DD E4                  662 	clr	a
   00DE 93                  663 	movc	a,@a+dptr
   00DF F5 8C               664 	mov	_TH0,a
                    0062    665 	C$fb_taster.c$109$2$3 ==.
                            666 ;	..\fb_taster.c:109: TL0=eeprom[ADDRTAB+2];
   00E1 90 1D 18            667 	mov	dptr,#(_eeprom + 0x0018)
   00E4 E4                  668 	clr	a
   00E5 93                  669 	movc	a,@a+dptr
   00E6 F5 8A               670 	mov	_TL0,a
                    0069    671 	C$fb_taster.c$110$2$3 ==.
                            672 ;	..\fb_taster.c:110: TF0=0;					// Überlauf-Flag zurücksetzen
   00E8 C2 8D               673 	clr	_TCON_5
                    006B    674 	C$fb_taster.c$111$2$3 ==.
                            675 ;	..\fb_taster.c:111: TR0=1;					// Timer 0 starten
   00EA D2 8C               676 	setb	_TCON_4
                    006D    677 	C$fb_taster.c$112$2$3 ==.
                            678 ;	..\fb_taster.c:112: while(!TF0);
   00EC                     679 00105$:
   00EC 30 8D FD            680 	jnb	_TCON_5,00105$
                    0070    681 	C$fb_taster.c$106$1$1 ==.
                            682 ;	..\fb_taster.c:106: for (n=0;n<50;n++) {
   00EF 0E                  683 	inc	r6
   00F0 80 E1               684 	sjmp	00161$
   00F2                     685 00164$:
                    0073    686 	C$fb_taster.c$114$1$1 ==.
                            687 ;	..\fb_taster.c:114: restart_app();							// Anwendungsspezifische Einstellungen zuruecksetzen
   00F2 C0 07               688 	push	ar7
   00F4 C0 23               689 	push	bits
   00F6 12 0F 84            690 	lcall	_restart_app
   00F9 D0 23               691 	pop	bits
   00FB D0 07               692 	pop	ar7
                    007E    693 	C$fb_taster.c$119$1$1 ==.
                            694 ;	..\fb_taster.c:119: RS_INIT_115200
   00FD 53 BD FE            695 	anl	_BRGCON,#0xFE
   0100 75 98 50            696 	mov	_SCON,#0x50
   0103 43 BA E0            697 	orl	_SSTAT,#0xE0
   0106 43 BD 02            698 	orl	_BRGCON,#0x02
   0109 75 BF 00            699 	mov	_BRGR1,#0x00
   010C 75 BE 30            700 	mov	_BRGR0,#0x30
   010F 43 BD 01            701 	orl	_BRGCON,#0x01
                    0093    702 	C$fb_taster.c$121$1$1 ==.
                            703 ;	..\fb_taster.c:121: SBUF=0x55; // hiernach ist TI==1
   0112 75 99 55            704 	mov	_SBUF,#0x55
                    0096    705 	C$fb_taster.c$123$1$1 ==.
                            706 ;	..\fb_taster.c:123: for (n=0;n<4;n++) switch_led(n,0);	// Alle LEDs gemaess ihren Parametern setzen
   0115 7E 00               707 	mov	r6,#0x00
   0117                     708 00165$:
   0117 BE 04 00            709 	cjne	r6,#0x04,00217$
   011A                     710 00217$:
   011A 50 19               711 	jnc	00168$
   011C C2 F0               712 	clr	b[0]
   011E C0 07               713 	push	ar7
   0120 C0 06               714 	push	ar6
   0122 C0 23               715 	push	bits
   0124 85 F0 23            716 	mov	bits,b
   0127 8E 82               717 	mov	dpl,r6
   0129 12 0A 0A            718 	lcall	_switch_led
   012C D0 23               719 	pop	bits
   012E D0 06               720 	pop	ar6
   0130 D0 07               721 	pop	ar7
   0132 0E                  722 	inc	r6
   0133 80 E2               723 	sjmp	00165$
   0135                     724 00168$:
                    00B6    725 	C$fb_taster.c$126$1$1 ==.
                            726 ;	..\fb_taster.c:126: verstellt=0;
   0135 C2 19               727 	clr	b1
                    00B8    728 	C$fb_taster.c$127$1$1 ==.
                            729 ;	..\fb_taster.c:127: dimmwert = LED_hell;
   0137 90 1C BE            730 	mov	dptr,#_main_LED_hell_1_1
   013A E4                  731 	clr	a
   013B 93                  732 	movc	a,@a+dptr
   013C F5 2B               733 	mov	_dimmwert,a
                    00BF    734 	C$fb_taster.c$129$1$1 ==.
                            735 ;	..\fb_taster.c:129: do  {
   013E                     736 00158$:
                    00BF    737 	C$fb_taster.c$130$2$4 ==.
                            738 ;	..\fb_taster.c:130: WATCHDOG_FEED
   013E C2 AF               739 	clr	_IEN0_7
   0140 75 C2 A5            740 	mov	_WFEED1,#0xA5
   0143 75 C3 5A            741 	mov	_WFEED2,#0x5A
   0146 D2 AF               742 	setb	_IEN0_7
                    00C9    743 	C$fb_taster.c$131$2$4 ==.
                            744 ;	..\fb_taster.c:131: if (RTCCON>=0x80) delay_timer();	// Realtime clock ueberlauf
   0148 74 80               745 	mov	a,#0x100 - 0x80
   014A 25 D1               746 	add	a,_RTCCON
   014C 50 0B               747 	jnc	00109$
   014E C0 07               748 	push	ar7
   0150 C0 23               749 	push	bits
   0152 12 0A C8            750 	lcall	_delay_timer
   0155 D0 23               751 	pop	bits
   0157 D0 07               752 	pop	ar7
   0159                     753 00109$:
                    00DA    754 	C$fb_taster.c$133$2$4 ==.
                            755 ;	..\fb_taster.c:133: n=timer;
                    00DA    756 	C$fb_taster.c$135$2$4 ==.
                            757 ;	..\fb_taster.c:135: verstell=((n>>2) & 0x01);
   0159 E5 24               758 	mov	a,_timer
   015B FE                  759 	mov	r6,a
   015C 03                  760 	rr	a
   015D 03                  761 	rr	a
   015E 54 01               762 	anl	a,#0x01
   0160 FD                  763 	mov	r5,a
   0161 24 FF               764 	add	a,#0xff
                    00E4    765 	C$fb_taster.c$137$2$4 ==.
                            766 ;	..\fb_taster.c:137: if (verstell==0)verstellt=0;
   0163 92 1A               767 	mov	b2,c
   0165 40 02               768 	jc	00111$
   0167 C2 19               769 	clr	b1
   0169                     770 00111$:
                    00EA    771 	C$fb_taster.c$141$2$4 ==.
                            772 ;	..\fb_taster.c:141: if (status60 & 0x01){			//wenn progmode aktiv ist...
   0169 E5 72               773 	mov	a,_status60
   016B 30 E0 3C            774 	jnb	acc.0,00131$
                    00EF    775 	C$fb_taster.c$143$3$5 ==.
                            776 ;	..\fb_taster.c:143: if ((PORT & 0x0F)==0x0E){	// Taste 1 gedrück
   016E 74 0F               777 	mov	a,#0x0F
   0170 55 80               778 	anl	a,_P0
   0172 FD                  779 	mov	r5,a
   0173 BD 0E 15            780 	cjne	r5,#0x0E,00117$
                    00F7    781 	C$fb_taster.c$144$4$6 ==.
                            782 ;	..\fb_taster.c:144: if ((dimmwert<254) && (verstell==1)&& verstellt==0){
   0176 74 02               783 	mov	a,#0x100 - 0xFE
   0178 25 2B               784 	add	a,_dimmwert
   017A 40 0F               785 	jc	00117$
   017C A2 1A               786 	mov	c,b2
   017E E4                  787 	clr	a
   017F 33                  788 	rlc	a
   0180 FD                  789 	mov	r5,a
   0181 BD 01 07            790 	cjne	r5,#0x01,00117$
   0184 20 19 04            791 	jb	b1,00117$
                    0108    792 	C$fb_taster.c$145$5$7 ==.
                            793 ;	..\fb_taster.c:145: dimmwert++;
   0187 05 2B               794 	inc	_dimmwert
                    010A    795 	C$fb_taster.c$146$5$7 ==.
                            796 ;	..\fb_taster.c:146: verstellt=1;
   0189 D2 19               797 	setb	b1
   018B                     798 00117$:
                    010C    799 	C$fb_taster.c$149$3$5 ==.
                            800 ;	..\fb_taster.c:149: if ((PORT & 0x0F)==0x0D){ // Taste 2 gedrückt
   018B 74 0F               801 	mov	a,#0x0F
   018D 55 80               802 	anl	a,_P0
   018F FD                  803 	mov	r5,a
   0190 BD 0D 43            804 	cjne	r5,#0x0D,00132$
                    0114    805 	C$fb_taster.c$150$4$8 ==.
                            806 ;	..\fb_taster.c:150: if ((dimmwert>1) && (verstell==1)&& verstellt==0){
   0193 E5 2B               807 	mov	a,_dimmwert
   0195 24 FE               808 	add	a,#0xff - 0x01
   0197 50 3D               809 	jnc	00132$
   0199 A2 1A               810 	mov	c,b2
   019B E4                  811 	clr	a
   019C 33                  812 	rlc	a
   019D FD                  813 	mov	r5,a
   019E BD 01 35            814 	cjne	r5,#0x01,00132$
   01A1 20 19 32            815 	jb	b1,00132$
                    0125    816 	C$fb_taster.c$151$5$9 ==.
                            817 ;	..\fb_taster.c:151: dimmwert--;
   01A4 15 2B               818 	dec	_dimmwert
                    0127    819 	C$fb_taster.c$152$5$9 ==.
                            820 ;	..\fb_taster.c:152: verstellt=1;
   01A6 D2 19               821 	setb	b1
   01A8 80 2C               822 	sjmp	00132$
   01AA                     823 00131$:
                    012B    824 	C$fb_taster.c$159$3$10 ==.
                            825 ;	..\fb_taster.c:159: if(APPLICATION_RUN)	{// nur wenn im Run modus und nicht connected
   01AA 90 1D 0D            826 	mov	dptr,#(_eeprom + 0x000d)
   01AD E4                  827 	clr	a
   01AE 93                  828 	movc	a,@a+dptr
   01AF FD                  829 	mov	r5,a
   01B0 BD FF 23            830 	cjne	r5,#0xFF,00132$
   01B3 20 0F 20            831 	jb	_connected,00132$
   01B6 E5 72               832 	mov	a,_status60
   01B8 20 E0 1B            833 	jb	acc.0,00132$
                    013C    834 	C$fb_taster.c$160$4$11 ==.
                            835 ;	..\fb_taster.c:160: if ((PORT & 0x0F) != button_buffer) port_changed(PORT & 0x0F);	// ein Taster wurde gedrueckt
   01BB 74 0F               836 	mov	a,#0x0F
   01BD 55 80               837 	anl	a,_P0
   01BF FD                  838 	mov	r5,a
   01C0 B5 28 02            839 	cjne	a,_button_buffer,00238$
   01C3 80 11               840 	sjmp	00132$
   01C5                     841 00238$:
   01C5 74 0F               842 	mov	a,#0x0F
   01C7 55 80               843 	anl	a,_P0
   01C9 F5 82               844 	mov	dpl,a
   01CB C0 07               845 	push	ar7
   01CD C0 23               846 	push	bits
   01CF 12 02 4D            847 	lcall	_port_changed
   01D2 D0 23               848 	pop	bits
   01D4 D0 07               849 	pop	ar7
   01D6                     850 00132$:
                    0157    851 	C$fb_taster.c$164$2$4 ==.
                            852 ;	..\fb_taster.c:164: if (tel_arrived || tel_sent) {//
   01D6 20 07 03            853 	jb	_tel_arrived,00133$
   01D9 30 08 0F            854 	jnb	_tel_sent,00134$
   01DC                     855 00133$:
                    015D    856 	C$fb_taster.c$165$3$12 ==.
                            857 ;	..\fb_taster.c:165: tel_sent=0;
   01DC C2 08               858 	clr	_tel_sent
                    015F    859 	C$fb_taster.c$166$3$12 ==.
                            860 ;	..\fb_taster.c:166: process_tel();
   01DE C0 07               861 	push	ar7
   01E0 C0 23               862 	push	bits
   01E2 12 17 26            863 	lcall	_process_tel
   01E5 D0 23               864 	pop	bits
   01E7 D0 07               865 	pop	ar7
   01E9 80 0A               866 	sjmp	00135$
   01EB                     867 00134$:
                    016C    868 	C$fb_taster.c$169$3$4 ==.
                            869 ;	..\fb_taster.c:169: for(n=0;n<100;n++);
   01EB 7E 64               870 	mov	r6,#0x64
   01ED                     871 00171$:
   01ED 8E 05               872 	mov	ar5,r6
   01EF 1D                  873 	dec	r5
   01F0 8D 06               874 	mov	ar6,r5
   01F2 EE                  875 	mov	a,r6
   01F3 70 F8               876 	jnz	00171$
   01F5                     877 00135$:
                    0176    878 	C$fb_taster.c$216$2$4 ==.
                            879 ;	..\fb_taster.c:216: DEBUGPOINT
   01F5 10 98 02            880 	jbc	_SCON_0,00242$
   01F8 80 0C               881 	sjmp	00141$
   01FA                     882 00242$:
   01FA                     883 00137$:
   01FA 10 99 02            884 	jbc	_SCON_1,00243$
   01FD 80 FB               885 	sjmp	00137$
   01FF                     886 00243$:
   01FF E5 99               887 	mov	a,_SBUF
   0201 24 00               888 	add	a,#_RAM
   0203 F9                  889 	mov	r1,a
   0204 87 99               890 	mov	_SBUF,@r1
   0206                     891 00141$:
                    0187    892 	C$fb_taster.c$219$2$4 ==.
                            893 ;	..\fb_taster.c:219: TASTER=1;				        	// Pin als Eingang schalten um Programmiertaster abzufragen
   0206 D2 97               894 	setb	_P1_7
                    0189    895 	C$fb_taster.c$220$2$4 ==.
                            896 ;	..\fb_taster.c:220: if(!TASTER){ // Taster gedrückt
   0208 20 97 2A            897 	jb	_P1_7,00153$
                    018C    898 	C$fb_taster.c$221$3$15 ==.
                            899 ;	..\fb_taster.c:221: if(tasterpegel<255)	tasterpegel++;
   020B BF FF 00            900 	cjne	r7,#0xFF,00245$
   020E                     901 00245$:
   020E 50 03               902 	jnc	00147$
   0210 0F                  903 	inc	r7
   0211 80 2A               904 	sjmp	00154$
   0213                     905 00147$:
                    0194    906 	C$fb_taster.c$223$4$16 ==.
                            907 ;	..\fb_taster.c:223: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   0213 20 18 03            908 	jb	b0,00143$
   0216 63 72 81            909 	xrl	_status60,#0x81
   0219                     910 00143$:
                    019A    911 	C$fb_taster.c$224$4$16 ==.
                            912 ;	..\fb_taster.c:224: tastergetoggelt=1;
   0219 D2 18               913 	setb	b0
                    019C    914 	C$fb_taster.c$225$4$16 ==.
                            915 ;	..\fb_taster.c:225: if((status60 & 0x01)==0){	//wenn ausgemacht, Dimmwert speichern
   021B E5 72               916 	mov	a,_status60
   021D 20 E0 1D            917 	jb	acc.0,00154$
                    01A1    918 	C$fb_taster.c$226$5$17 ==.
                            919 ;	..\fb_taster.c:226: EA=0;
   0220 C2 AF               920 	clr	_IEN0_7
                    01A3    921 	C$fb_taster.c$227$5$17 ==.
                            922 ;	..\fb_taster.c:227: START_WRITECYCLE;
   0222 75 E4 00            923 	mov	_FMCON,#0x00
                    01A6    924 	C$fb_taster.c$228$5$17 ==.
                            925 ;	..\fb_taster.c:228: FMADRH= 0x1B;		
   0225 75 E7 1B            926 	mov	_FMADRH,#0x1B
                    01A9    927 	C$fb_taster.c$229$5$17 ==.
                            928 ;	..\fb_taster.c:229: FMADRL= 0xFE; 
   0228 75 E6 FE            929 	mov	_FMADRL,#0xFE
                    01AC    930 	C$fb_taster.c$230$5$17 ==.
                            931 ;	..\fb_taster.c:230: FMDATA=	dimmwert; 
   022B 85 2B E5            932 	mov	_FMDATA,_dimmwert
                    01AF    933 	C$fb_taster.c$231$5$17 ==.
                            934 ;	..\fb_taster.c:231: STOP_WRITECYCLE;
   022E 75 E4 68            935 	mov	_FMCON,#0x68
                    01B2    936 	C$fb_taster.c$232$5$17 ==.
                            937 ;	..\fb_taster.c:232: EA=1;
   0231 D2 AF               938 	setb	_IEN0_7
   0233 80 08               939 	sjmp	00154$
   0235                     940 00153$:
                    01B6    941 	C$fb_taster.c$237$3$18 ==.
                            942 ;	..\fb_taster.c:237: if(tasterpegel>0) tasterpegel--;
   0235 EF                  943 	mov	a,r7
   0236 60 03               944 	jz	00150$
   0238 1F                  945 	dec	r7
   0239 80 02               946 	sjmp	00154$
   023B                     947 00150$:
                    01BC    948 	C$fb_taster.c$238$3$18 ==.
                            949 ;	..\fb_taster.c:238: else tastergetoggelt=0;
   023B C2 18               950 	clr	b0
   023D                     951 00154$:
                    01BE    952 	C$fb_taster.c$271$2$4 ==.
                            953 ;	..\fb_taster.c:271: if (status60 & 0x01) TASTER = 0;		// LED leuchtet im Prog-Mode
   023D E5 72               954 	mov	a,_status60
   023F 30 E0 05            955 	jnb	acc.0,00156$
   0242 C2 97               956 	clr	_P1_7
   0244 02 01 3E            957 	ljmp	00158$
   0247                     958 00156$:
                    01C8    959 	C$fb_taster.c$272$2$4 ==.
                            960 ;	..\fb_taster.c:272: else TASTER = 1;						// LED aus
   0247 D2 97               961 	setb	_P1_7
                    01CA    962 	C$fb_taster.c$276$1$1 ==.
                            963 ;	..\fb_taster.c:276: }  while(1);
   0249 02 01 3E            964 	ljmp	00158$
                    01CD    965 	C$fb_taster.c$277$1$1 ==.
                    01CD    966 	XG$main$0$0 ==.
   024C 22                  967 	ret
                            968 	.area CSEG    (CODE)
                            969 	.area CONST   (CODE)
                    1CBF    970 Lfb_taster.main$trimsave$1$1 == 0x1cbf
                    1CBF    971 _main_trimsave_1_1	=	0x1cbf
                    1CBE    972 Lfb_taster.main$LED_hell$1$1 == 0x1cbe
                    1CBE    973 _main_LED_hell_1_1	=	0x1cbe
                            974 	.area XINIT   (CODE)
                            975 	.area CABS    (ABS,CODE)
