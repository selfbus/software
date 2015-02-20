                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
                              4 ; This file was generated Fri Oct 24 21:14:10 2014
                              5 ;--------------------------------------------------------
                              6 	.module fb_in8
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _bitmask_1
                             13 	.globl _main
                             14 	.globl _spi_in_out
                             15 	.globl _bus_return
                             16 	.globl _restart_app
                             17 	.globl _read_obj_value
                             18 	.globl _delay_timer
                             19 	.globl _pin_changed
                             20 	.globl _process_tel
                             21 	.globl _restart_hw
                             22 	.globl _send_obj_value
                             23 	.globl _P3_1
                             24 	.globl _P3_0
                             25 	.globl _P1_7
                             26 	.globl _P1_6
                             27 	.globl _P1_5
                             28 	.globl _P1_4
                             29 	.globl _P1_3
                             30 	.globl _P1_2
                             31 	.globl _P1_1
                             32 	.globl _P1_0
                             33 	.globl _P0_7
                             34 	.globl _P0_6
                             35 	.globl _P0_5
                             36 	.globl _P0_4
                             37 	.globl _P0_3
                             38 	.globl _P0_2
                             39 	.globl _P0_1
                             40 	.globl _P0_0
                             41 	.globl _I2CON_0
                             42 	.globl _I2CON_2
                             43 	.globl _I2CON_3
                             44 	.globl _I2CON_4
                             45 	.globl _I2CON_5
                             46 	.globl _I2CON_6
                             47 	.globl _SCON_7
                             48 	.globl _SCON_6
                             49 	.globl _SCON_5
                             50 	.globl _SCON_4
                             51 	.globl _SCON_3
                             52 	.globl _SCON_2
                             53 	.globl _SCON_1
                             54 	.globl _SCON_0
                             55 	.globl _IP0_0
                             56 	.globl _IP0_1
                             57 	.globl _IP0_2
                             58 	.globl _IP0_3
                             59 	.globl _IP0_4
                             60 	.globl _IP0_5
                             61 	.globl _IP0_6
                             62 	.globl _IP1_0
                             63 	.globl _IP1_1
                             64 	.globl _IP1_2
                             65 	.globl _IP1_6
                             66 	.globl _IEN1_0
                             67 	.globl _IEN1_1
                             68 	.globl _IEN1_2
                             69 	.globl _IEN0_0
                             70 	.globl _IEN0_1
                             71 	.globl _IEN0_2
                             72 	.globl _IEN0_3
                             73 	.globl _IEN0_4
                             74 	.globl _IEN0_5
                             75 	.globl _IEN0_6
                             76 	.globl _IEN0_7
                             77 	.globl _TCON_0
                             78 	.globl _TCON_1
                             79 	.globl _TCON_2
                             80 	.globl _TCON_3
                             81 	.globl _TCON_4
                             82 	.globl _TCON_5
                             83 	.globl _TCON_6
                             84 	.globl _TCON_7
                             85 	.globl _PSW_7
                             86 	.globl _PSW_6
                             87 	.globl _PSW_5
                             88 	.globl _PSW_4
                             89 	.globl _PSW_3
                             90 	.globl _PSW_2
                             91 	.globl _PSW_1
                             92 	.globl _PSW_0
                             93 	.globl _IEN1
                             94 	.globl _IP0H
                             95 	.globl _WFEED2
                             96 	.globl _WFEED1
                             97 	.globl _WDL
                             98 	.globl _WDCON
                             99 	.globl _TRIM
                            100 	.globl _TAMOD
                            101 	.globl _SSTAT
                            102 	.globl _RTCL
                            103 	.globl _RTCH
                            104 	.globl _RTCCON
                            105 	.globl _RSTSRC
                            106 	.globl _PT0AD
                            107 	.globl _PCONA
                            108 	.globl _P3M2
                            109 	.globl _P3M1
                            110 	.globl _P1M2
                            111 	.globl _P1M1
                            112 	.globl _P0M2
                            113 	.globl _P0M1
                            114 	.globl _KBPATN
                            115 	.globl _KBMASK
                            116 	.globl _KBCON
                            117 	.globl _IP1H
                            118 	.globl _IP1
                            119 	.globl _I2STAT
                            120 	.globl _I2SCLL
                            121 	.globl _I2SCLH
                            122 	.globl _I2DAT
                            123 	.globl _I2CON
                            124 	.globl _I2ADR
                            125 	.globl _FMDATA
                            126 	.globl _FMCON
                            127 	.globl _FMADRL
                            128 	.globl _FMADRH
                            129 	.globl _DIVM
                            130 	.globl _CMP2
                            131 	.globl _CMP1
                            132 	.globl _BRGCON
                            133 	.globl _BRGR1
                            134 	.globl _BRGR0
                            135 	.globl _SADEN
                            136 	.globl _SADDR
                            137 	.globl _AUXR1
                            138 	.globl _SBUF
                            139 	.globl _SCON
                            140 	.globl _IP0
                            141 	.globl _IEN0
                            142 	.globl _TH1
                            143 	.globl _TH0
                            144 	.globl _TL1
                            145 	.globl _TL0
                            146 	.globl _TMOD
                            147 	.globl _TCON
                            148 	.globl _PCON
                            149 	.globl _DPH
                            150 	.globl _DPL
                            151 	.globl _SP
                            152 	.globl _B
                            153 	.globl _ACC
                            154 	.globl _PSW
                            155 	.globl _P3
                            156 	.globl _P1
                            157 	.globl _P0
                            158 ;--------------------------------------------------------
                            159 ; special function registers
                            160 ;--------------------------------------------------------
                            161 	.area RSEG    (ABS,DATA)
   0000                     162 	.org 0x0000
                    0080    163 G$P0$0$0 == 0x0080
                    0080    164 _P0	=	0x0080
                    0090    165 G$P1$0$0 == 0x0090
                    0090    166 _P1	=	0x0090
                    00B0    167 G$P3$0$0 == 0x00b0
                    00B0    168 _P3	=	0x00b0
                    00D0    169 G$PSW$0$0 == 0x00d0
                    00D0    170 _PSW	=	0x00d0
                    00E0    171 G$ACC$0$0 == 0x00e0
                    00E0    172 _ACC	=	0x00e0
                    00F0    173 G$B$0$0 == 0x00f0
                    00F0    174 _B	=	0x00f0
                    0081    175 G$SP$0$0 == 0x0081
                    0081    176 _SP	=	0x0081
                    0082    177 G$DPL$0$0 == 0x0082
                    0082    178 _DPL	=	0x0082
                    0083    179 G$DPH$0$0 == 0x0083
                    0083    180 _DPH	=	0x0083
                    0087    181 G$PCON$0$0 == 0x0087
                    0087    182 _PCON	=	0x0087
                    0088    183 G$TCON$0$0 == 0x0088
                    0088    184 _TCON	=	0x0088
                    0089    185 G$TMOD$0$0 == 0x0089
                    0089    186 _TMOD	=	0x0089
                    008A    187 G$TL0$0$0 == 0x008a
                    008A    188 _TL0	=	0x008a
                    008B    189 G$TL1$0$0 == 0x008b
                    008B    190 _TL1	=	0x008b
                    008C    191 G$TH0$0$0 == 0x008c
                    008C    192 _TH0	=	0x008c
                    008D    193 G$TH1$0$0 == 0x008d
                    008D    194 _TH1	=	0x008d
                    00A8    195 G$IEN0$0$0 == 0x00a8
                    00A8    196 _IEN0	=	0x00a8
                    00B8    197 G$IP0$0$0 == 0x00b8
                    00B8    198 _IP0	=	0x00b8
                    0098    199 G$SCON$0$0 == 0x0098
                    0098    200 _SCON	=	0x0098
                    0099    201 G$SBUF$0$0 == 0x0099
                    0099    202 _SBUF	=	0x0099
                    00A2    203 G$AUXR1$0$0 == 0x00a2
                    00A2    204 _AUXR1	=	0x00a2
                    00A9    205 G$SADDR$0$0 == 0x00a9
                    00A9    206 _SADDR	=	0x00a9
                    00B9    207 G$SADEN$0$0 == 0x00b9
                    00B9    208 _SADEN	=	0x00b9
                    00BE    209 G$BRGR0$0$0 == 0x00be
                    00BE    210 _BRGR0	=	0x00be
                    00BF    211 G$BRGR1$0$0 == 0x00bf
                    00BF    212 _BRGR1	=	0x00bf
                    00BD    213 G$BRGCON$0$0 == 0x00bd
                    00BD    214 _BRGCON	=	0x00bd
                    00AC    215 G$CMP1$0$0 == 0x00ac
                    00AC    216 _CMP1	=	0x00ac
                    00AD    217 G$CMP2$0$0 == 0x00ad
                    00AD    218 _CMP2	=	0x00ad
                    0095    219 G$DIVM$0$0 == 0x0095
                    0095    220 _DIVM	=	0x0095
                    00E7    221 G$FMADRH$0$0 == 0x00e7
                    00E7    222 _FMADRH	=	0x00e7
                    00E6    223 G$FMADRL$0$0 == 0x00e6
                    00E6    224 _FMADRL	=	0x00e6
                    00E4    225 G$FMCON$0$0 == 0x00e4
                    00E4    226 _FMCON	=	0x00e4
                    00E5    227 G$FMDATA$0$0 == 0x00e5
                    00E5    228 _FMDATA	=	0x00e5
                    00DB    229 G$I2ADR$0$0 == 0x00db
                    00DB    230 _I2ADR	=	0x00db
                    00D8    231 G$I2CON$0$0 == 0x00d8
                    00D8    232 _I2CON	=	0x00d8
                    00DA    233 G$I2DAT$0$0 == 0x00da
                    00DA    234 _I2DAT	=	0x00da
                    00DD    235 G$I2SCLH$0$0 == 0x00dd
                    00DD    236 _I2SCLH	=	0x00dd
                    00DC    237 G$I2SCLL$0$0 == 0x00dc
                    00DC    238 _I2SCLL	=	0x00dc
                    00D9    239 G$I2STAT$0$0 == 0x00d9
                    00D9    240 _I2STAT	=	0x00d9
                    00F8    241 G$IP1$0$0 == 0x00f8
                    00F8    242 _IP1	=	0x00f8
                    00F7    243 G$IP1H$0$0 == 0x00f7
                    00F7    244 _IP1H	=	0x00f7
                    0094    245 G$KBCON$0$0 == 0x0094
                    0094    246 _KBCON	=	0x0094
                    0086    247 G$KBMASK$0$0 == 0x0086
                    0086    248 _KBMASK	=	0x0086
                    0093    249 G$KBPATN$0$0 == 0x0093
                    0093    250 _KBPATN	=	0x0093
                    0084    251 G$P0M1$0$0 == 0x0084
                    0084    252 _P0M1	=	0x0084
                    0085    253 G$P0M2$0$0 == 0x0085
                    0085    254 _P0M2	=	0x0085
                    0091    255 G$P1M1$0$0 == 0x0091
                    0091    256 _P1M1	=	0x0091
                    0092    257 G$P1M2$0$0 == 0x0092
                    0092    258 _P1M2	=	0x0092
                    00B1    259 G$P3M1$0$0 == 0x00b1
                    00B1    260 _P3M1	=	0x00b1
                    00B2    261 G$P3M2$0$0 == 0x00b2
                    00B2    262 _P3M2	=	0x00b2
                    00B5    263 G$PCONA$0$0 == 0x00b5
                    00B5    264 _PCONA	=	0x00b5
                    00F6    265 G$PT0AD$0$0 == 0x00f6
                    00F6    266 _PT0AD	=	0x00f6
                    00DF    267 G$RSTSRC$0$0 == 0x00df
                    00DF    268 _RSTSRC	=	0x00df
                    00D1    269 G$RTCCON$0$0 == 0x00d1
                    00D1    270 _RTCCON	=	0x00d1
                    00D2    271 G$RTCH$0$0 == 0x00d2
                    00D2    272 _RTCH	=	0x00d2
                    00D3    273 G$RTCL$0$0 == 0x00d3
                    00D3    274 _RTCL	=	0x00d3
                    00BA    275 G$SSTAT$0$0 == 0x00ba
                    00BA    276 _SSTAT	=	0x00ba
                    008F    277 G$TAMOD$0$0 == 0x008f
                    008F    278 _TAMOD	=	0x008f
                    0096    279 G$TRIM$0$0 == 0x0096
                    0096    280 _TRIM	=	0x0096
                    00A7    281 G$WDCON$0$0 == 0x00a7
                    00A7    282 _WDCON	=	0x00a7
                    00C1    283 G$WDL$0$0 == 0x00c1
                    00C1    284 _WDL	=	0x00c1
                    00C2    285 G$WFEED1$0$0 == 0x00c2
                    00C2    286 _WFEED1	=	0x00c2
                    00C3    287 G$WFEED2$0$0 == 0x00c3
                    00C3    288 _WFEED2	=	0x00c3
                    00B7    289 G$IP0H$0$0 == 0x00b7
                    00B7    290 _IP0H	=	0x00b7
                    00E8    291 G$IEN1$0$0 == 0x00e8
                    00E8    292 _IEN1	=	0x00e8
                            293 ;--------------------------------------------------------
                            294 ; special function bits
                            295 ;--------------------------------------------------------
                            296 	.area RSEG    (ABS,DATA)
   0000                     297 	.org 0x0000
                    00D0    298 G$PSW_0$0$0 == 0x00d0
                    00D0    299 _PSW_0	=	0x00d0
                    00D1    300 G$PSW_1$0$0 == 0x00d1
                    00D1    301 _PSW_1	=	0x00d1
                    00D2    302 G$PSW_2$0$0 == 0x00d2
                    00D2    303 _PSW_2	=	0x00d2
                    00D3    304 G$PSW_3$0$0 == 0x00d3
                    00D3    305 _PSW_3	=	0x00d3
                    00D4    306 G$PSW_4$0$0 == 0x00d4
                    00D4    307 _PSW_4	=	0x00d4
                    00D5    308 G$PSW_5$0$0 == 0x00d5
                    00D5    309 _PSW_5	=	0x00d5
                    00D6    310 G$PSW_6$0$0 == 0x00d6
                    00D6    311 _PSW_6	=	0x00d6
                    00D7    312 G$PSW_7$0$0 == 0x00d7
                    00D7    313 _PSW_7	=	0x00d7
                    008F    314 G$TCON_7$0$0 == 0x008f
                    008F    315 _TCON_7	=	0x008f
                    008E    316 G$TCON_6$0$0 == 0x008e
                    008E    317 _TCON_6	=	0x008e
                    008D    318 G$TCON_5$0$0 == 0x008d
                    008D    319 _TCON_5	=	0x008d
                    008C    320 G$TCON_4$0$0 == 0x008c
                    008C    321 _TCON_4	=	0x008c
                    008B    322 G$TCON_3$0$0 == 0x008b
                    008B    323 _TCON_3	=	0x008b
                    008A    324 G$TCON_2$0$0 == 0x008a
                    008A    325 _TCON_2	=	0x008a
                    0089    326 G$TCON_1$0$0 == 0x0089
                    0089    327 _TCON_1	=	0x0089
                    0088    328 G$TCON_0$0$0 == 0x0088
                    0088    329 _TCON_0	=	0x0088
                    00AF    330 G$IEN0_7$0$0 == 0x00af
                    00AF    331 _IEN0_7	=	0x00af
                    00AE    332 G$IEN0_6$0$0 == 0x00ae
                    00AE    333 _IEN0_6	=	0x00ae
                    00AD    334 G$IEN0_5$0$0 == 0x00ad
                    00AD    335 _IEN0_5	=	0x00ad
                    00AC    336 G$IEN0_4$0$0 == 0x00ac
                    00AC    337 _IEN0_4	=	0x00ac
                    00AB    338 G$IEN0_3$0$0 == 0x00ab
                    00AB    339 _IEN0_3	=	0x00ab
                    00AA    340 G$IEN0_2$0$0 == 0x00aa
                    00AA    341 _IEN0_2	=	0x00aa
                    00A9    342 G$IEN0_1$0$0 == 0x00a9
                    00A9    343 _IEN0_1	=	0x00a9
                    00A8    344 G$IEN0_0$0$0 == 0x00a8
                    00A8    345 _IEN0_0	=	0x00a8
                    00EA    346 G$IEN1_2$0$0 == 0x00ea
                    00EA    347 _IEN1_2	=	0x00ea
                    00E9    348 G$IEN1_1$0$0 == 0x00e9
                    00E9    349 _IEN1_1	=	0x00e9
                    00E8    350 G$IEN1_0$0$0 == 0x00e8
                    00E8    351 _IEN1_0	=	0x00e8
                    00FE    352 G$IP1_6$0$0 == 0x00fe
                    00FE    353 _IP1_6	=	0x00fe
                    00FA    354 G$IP1_2$0$0 == 0x00fa
                    00FA    355 _IP1_2	=	0x00fa
                    00F9    356 G$IP1_1$0$0 == 0x00f9
                    00F9    357 _IP1_1	=	0x00f9
                    00F8    358 G$IP1_0$0$0 == 0x00f8
                    00F8    359 _IP1_0	=	0x00f8
                    00BE    360 G$IP0_6$0$0 == 0x00be
                    00BE    361 _IP0_6	=	0x00be
                    00BD    362 G$IP0_5$0$0 == 0x00bd
                    00BD    363 _IP0_5	=	0x00bd
                    00BC    364 G$IP0_4$0$0 == 0x00bc
                    00BC    365 _IP0_4	=	0x00bc
                    00BB    366 G$IP0_3$0$0 == 0x00bb
                    00BB    367 _IP0_3	=	0x00bb
                    00BA    368 G$IP0_2$0$0 == 0x00ba
                    00BA    369 _IP0_2	=	0x00ba
                    00B9    370 G$IP0_1$0$0 == 0x00b9
                    00B9    371 _IP0_1	=	0x00b9
                    00B8    372 G$IP0_0$0$0 == 0x00b8
                    00B8    373 _IP0_0	=	0x00b8
                    0098    374 G$SCON_0$0$0 == 0x0098
                    0098    375 _SCON_0	=	0x0098
                    0099    376 G$SCON_1$0$0 == 0x0099
                    0099    377 _SCON_1	=	0x0099
                    009A    378 G$SCON_2$0$0 == 0x009a
                    009A    379 _SCON_2	=	0x009a
                    009B    380 G$SCON_3$0$0 == 0x009b
                    009B    381 _SCON_3	=	0x009b
                    009C    382 G$SCON_4$0$0 == 0x009c
                    009C    383 _SCON_4	=	0x009c
                    009D    384 G$SCON_5$0$0 == 0x009d
                    009D    385 _SCON_5	=	0x009d
                    009E    386 G$SCON_6$0$0 == 0x009e
                    009E    387 _SCON_6	=	0x009e
                    009F    388 G$SCON_7$0$0 == 0x009f
                    009F    389 _SCON_7	=	0x009f
                    00DE    390 G$I2CON_6$0$0 == 0x00de
                    00DE    391 _I2CON_6	=	0x00de
                    00DD    392 G$I2CON_5$0$0 == 0x00dd
                    00DD    393 _I2CON_5	=	0x00dd
                    00DC    394 G$I2CON_4$0$0 == 0x00dc
                    00DC    395 _I2CON_4	=	0x00dc
                    00DB    396 G$I2CON_3$0$0 == 0x00db
                    00DB    397 _I2CON_3	=	0x00db
                    00DA    398 G$I2CON_2$0$0 == 0x00da
                    00DA    399 _I2CON_2	=	0x00da
                    00D8    400 G$I2CON_0$0$0 == 0x00d8
                    00D8    401 _I2CON_0	=	0x00d8
                    0080    402 G$P0_0$0$0 == 0x0080
                    0080    403 _P0_0	=	0x0080
                    0081    404 G$P0_1$0$0 == 0x0081
                    0081    405 _P0_1	=	0x0081
                    0082    406 G$P0_2$0$0 == 0x0082
                    0082    407 _P0_2	=	0x0082
                    0083    408 G$P0_3$0$0 == 0x0083
                    0083    409 _P0_3	=	0x0083
                    0084    410 G$P0_4$0$0 == 0x0084
                    0084    411 _P0_4	=	0x0084
                    0085    412 G$P0_5$0$0 == 0x0085
                    0085    413 _P0_5	=	0x0085
                    0086    414 G$P0_6$0$0 == 0x0086
                    0086    415 _P0_6	=	0x0086
                    0087    416 G$P0_7$0$0 == 0x0087
                    0087    417 _P0_7	=	0x0087
                    0090    418 G$P1_0$0$0 == 0x0090
                    0090    419 _P1_0	=	0x0090
                    0091    420 G$P1_1$0$0 == 0x0091
                    0091    421 _P1_1	=	0x0091
                    0092    422 G$P1_2$0$0 == 0x0092
                    0092    423 _P1_2	=	0x0092
                    0093    424 G$P1_3$0$0 == 0x0093
                    0093    425 _P1_3	=	0x0093
                    0094    426 G$P1_4$0$0 == 0x0094
                    0094    427 _P1_4	=	0x0094
                    0095    428 G$P1_5$0$0 == 0x0095
                    0095    429 _P1_5	=	0x0095
                    0096    430 G$P1_6$0$0 == 0x0096
                    0096    431 _P1_6	=	0x0096
                    0097    432 G$P1_7$0$0 == 0x0097
                    0097    433 _P1_7	=	0x0097
                    00B0    434 G$P3_0$0$0 == 0x00b0
                    00B0    435 _P3_0	=	0x00b0
                    00B1    436 G$P3_1$0$0 == 0x00b1
                    00B1    437 _P3_1	=	0x00b1
                            438 ;--------------------------------------------------------
                            439 ; overlayable register banks
                            440 ;--------------------------------------------------------
                            441 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     442 	.ds 8
                            443 ;--------------------------------------------------------
                            444 ; overlayable bit register bank
                            445 ;--------------------------------------------------------
                            446 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     447 bits:
   0023                     448 	.ds 1
                    8000    449 	b0 = bits[0]
                    8100    450 	b1 = bits[1]
                    8200    451 	b2 = bits[2]
                    8300    452 	b3 = bits[3]
                    8400    453 	b4 = bits[4]
                    8500    454 	b5 = bits[5]
                    8600    455 	b6 = bits[6]
                    8700    456 	b7 = bits[7]
                            457 ;--------------------------------------------------------
                            458 ; internal ram data
                            459 ;--------------------------------------------------------
                            460 	.area DSEG    (DATA)
                            461 ;--------------------------------------------------------
                            462 ; overlayable items in internal ram 
                            463 ;--------------------------------------------------------
                            464 	.area OSEG    (OVR,DATA)
                            465 ;--------------------------------------------------------
                            466 ; Stack segment in internal ram 
                            467 ;--------------------------------------------------------
                            468 	.area	SSEG	(DATA)
   007D                     469 __start__stack:
   007D                     470 	.ds	1
                            471 
                            472 ;--------------------------------------------------------
                            473 ; indirectly addressable internal ram data
                            474 ;--------------------------------------------------------
                            475 	.area ISEG    (DATA)
                            476 ;--------------------------------------------------------
                            477 ; absolute internal ram data
                            478 ;--------------------------------------------------------
                            479 	.area IABS    (ABS,DATA)
                            480 	.area IABS    (ABS,DATA)
                            481 ;--------------------------------------------------------
                            482 ; bit data
                            483 ;--------------------------------------------------------
                            484 	.area BSEG    (BIT)
                            485 ;--------------------------------------------------------
                            486 ; paged external ram data
                            487 ;--------------------------------------------------------
                            488 	.area PSEG    (PAG,XDATA)
                            489 ;--------------------------------------------------------
                            490 ; external ram data
                            491 ;--------------------------------------------------------
                            492 	.area XSEG    (XDATA)
                            493 ;--------------------------------------------------------
                            494 ; absolute external ram data
                            495 ;--------------------------------------------------------
                            496 	.area XABS    (ABS,XDATA)
                            497 ;--------------------------------------------------------
                            498 ; external initialized ram data
                            499 ;--------------------------------------------------------
                            500 	.area XISEG   (XDATA)
                            501 	.area HOME    (CODE)
                            502 	.area GSINIT0 (CODE)
                            503 	.area GSINIT1 (CODE)
                            504 	.area GSINIT2 (CODE)
                            505 	.area GSINIT3 (CODE)
                            506 	.area GSINIT4 (CODE)
                            507 	.area GSINIT5 (CODE)
                            508 	.area GSINIT  (CODE)
                            509 	.area GSFINAL (CODE)
                            510 	.area CSEG    (CODE)
                            511 ;--------------------------------------------------------
                            512 ; interrupt vector 
                            513 ;--------------------------------------------------------
                            514 	.area HOME    (CODE)
   0000                     515 __interrupt_vect:
   0000 02 00 23            516 	ljmp	__sdcc_gsinit_startup
   0003 32                  517 	reti
   0004                     518 	.ds	7
   000B 32                  519 	reti
   000C                     520 	.ds	7
   0013 02 12 8A            521 	ljmp	_X1_int
   0016                     522 	.ds	5
   001B 02 12 BA            523 	ljmp	_T1_int
                            524 ;--------------------------------------------------------
                            525 ; global & static initialisations
                            526 ;--------------------------------------------------------
                            527 	.area HOME    (CODE)
                            528 	.area GSINIT  (CODE)
                            529 	.area GSFINAL (CODE)
                            530 	.area GSINIT  (CODE)
                            531 	.globl __sdcc_gsinit_startup
                            532 	.globl __sdcc_program_startup
                            533 	.globl __start__stack
                            534 	.globl __mcs51_genXINIT
                            535 	.globl __mcs51_genXRAMCLEAR
                            536 	.globl __mcs51_genRAMCLEAR
                            537 	.area GSFINAL (CODE)
   0082 02 00 1E            538 	ljmp	__sdcc_program_startup
                            539 ;--------------------------------------------------------
                            540 ; Home
                            541 ;--------------------------------------------------------
                            542 	.area HOME    (CODE)
                            543 	.area HOME    (CODE)
   001E                     544 __sdcc_program_startup:
   001E 12 00 B7            545 	lcall	_main
                            546 ;	return from main will lock up
   0021 80 FE               547 	sjmp .
                            548 ;--------------------------------------------------------
                            549 ; code
                            550 ;--------------------------------------------------------
                            551 	.area CSEG    (CODE)
                            552 ;------------------------------------------------------------
                            553 ;Allocation info for local variables in function 'main'
                            554 ;------------------------------------------------------------
                            555 ;n                         Allocated to registers r6 
                            556 ;cmd                       Allocated to registers r7 
                            557 ;tasterpegel               Allocated to stack - _bp +1
                            558 ;cal                       Allocated to registers r5 
                            559 ;base                      Allocated to registers r3 r4 
                            560 ;pin                       Allocated to stack - _bp +2
                            561 ;tmp                       Allocated to registers r4 
                            562 ;objno                     Allocated to registers r7 
                            563 ;objstate                  Allocated to registers r2 
                            564 ;wduf                      Allocated to registers b2 
                            565 ;tastergetoggelt           Allocated to registers b0 
                            566 ;bus_return_ready          Allocated to registers b1 
                            567 ;------------------------------------------------------------
                    0000    568 	G$main$0$0 ==.
                    0000    569 	C$fb_in8.c$46$0$0 ==.
                            570 ;	../fb_in8.c:46: void main(void)
                            571 ;	-----------------------------------------
                            572 ;	 function main
                            573 ;	-----------------------------------------
   00B7                     574 _main:
                    0007    575 	ar7 = 0x07
                    0006    576 	ar6 = 0x06
                    0005    577 	ar5 = 0x05
                    0004    578 	ar4 = 0x04
                    0003    579 	ar3 = 0x03
                    0002    580 	ar2 = 0x02
                    0001    581 	ar1 = 0x01
                    0000    582 	ar0 = 0x00
   00B7 C0 7C               583 	push	_bp
   00B9 85 81 7C            584 	mov	_bp,sp
   00BC 05 81               585 	inc	sp
   00BE 05 81               586 	inc	sp
                    0009    587 	C$fb_in8.c$48$1$0 ==.
                            588 ;	../fb_in8.c:48: unsigned char n,cmd,tasterpegel=0;
   00C0 A8 7C               589 	mov	r0,_bp
   00C2 08                  590 	inc	r0
   00C3 76 00               591 	mov	@r0,#0x00
                    000E    592 	C$fb_in8.c$52$1$0 ==.
                            593 ;	../fb_in8.c:52: unsigned char pin=0;
   00C5 A8 7C               594 	mov	r0,_bp
   00C7 08                  595 	inc	r0
   00C8 08                  596 	inc	r0
   00C9 76 00               597 	mov	@r0,#0x00
                    0014    598 	C$fb_in8.c$62$1$0 ==.
                            599 ;	../fb_in8.c:62: __bit tastergetoggelt=0;
   00CB C2 18               600 	clr	b0
                    0016    601 	C$fb_in8.c$63$1$0 ==.
                            602 ;	../fb_in8.c:63: __bit bus_return_ready=0; 
   00CD C2 19               603 	clr	b1
                    0018    604 	C$fb_in8.c$65$1$1 ==.
                            605 ;	../fb_in8.c:65: wduf=WDCON&0x02;
   00CF E5 A7               606 	mov	a,_WDCON
   00D1 03                  607 	rr	a
   00D2 54 01               608 	anl	a,#0x01
   00D4 FD                  609 	mov	r5,a
   00D5 24 FF               610 	add	a,#0xff
   00D7 92 1A               611 	mov	b2,c
                    0022    612 	C$fb_in8.c$67$1$1 ==.
                            613 ;	../fb_in8.c:67: TASTER=1;
   00D9 D2 97               614 	setb	_P1_7
                    0024    615 	C$fb_in8.c$68$1$1 ==.
                            616 ;	../fb_in8.c:68: if(!TASTER && wduf)cal=0;
   00DB 20 97 07            617 	jb	_P1_7,00102$
   00DE 30 1A 04            618 	jnb	b2,00102$
   00E1 7D 00               619 	mov	r5,#0x00
   00E3 80 07               620 	sjmp	00103$
   00E5                     621 00102$:
                    002E    622 	C$fb_in8.c$69$1$1 ==.
                            623 ;	../fb_in8.c:69: else cal=trimsave;
   00E5 90 1C FF            624 	mov	dptr,#_main_trimsave_1_1
   00E8 E4                  625 	clr	a
   00E9 93                  626 	movc	a,@a+dptr
   00EA FC                  627 	mov	r4,a
   00EB FD                  628 	mov	r5,a
   00EC                     629 00103$:
                    0035    630 	C$fb_in8.c$70$1$1 ==.
                            631 ;	../fb_in8.c:70: TRIM = (TRIM+trimsave);
   00EC 90 1C FF            632 	mov	dptr,#_main_trimsave_1_1
   00EF E4                  633 	clr	a
   00F0 93                  634 	movc	a,@a+dptr
   00F1 AB 96               635 	mov	r3,_TRIM
   00F3 2B                  636 	add	a,r3
   00F4 FC                  637 	mov	r4,a
   00F5 8C 96               638 	mov	_TRIM,r4
                    0040    639 	C$fb_in8.c$71$1$1 ==.
                            640 ;	../fb_in8.c:71: TRIM &= 0x3F;//oberen 2 bits ausblenden
   00F7 53 96 3F            641 	anl	_TRIM,#0x3F
                    0043    642 	C$fb_in8.c$73$1$1 ==.
                            643 ;	../fb_in8.c:73: TASTER=0;
   00FA C2 97               644 	clr	_P1_7
                    0045    645 	C$fb_in8.c$74$1$1 ==.
                            646 ;	../fb_in8.c:74: restart_hw();				// Hardware zurücksetzen
   00FC C0 05               647 	push	ar5
   00FE C0 23               648 	push	bits
   0100 12 1C 57            649 	lcall	_restart_hw
   0103 D0 23               650 	pop	bits
                    004E    651 	C$fb_in8.c$77$1$1 ==.
                            652 ;	../fb_in8.c:77: RS_INIT_600
   0105 53 BD FE            653 	anl	_BRGCON,#0xFE
   0108 75 98 50            654 	mov	_SCON,#0x50
   010B 43 BA E0            655 	orl	_SSTAT,#0xE0
   010E 43 BD 02            656 	orl	_BRGCON,#0x02
   0111 75 BF 2F            657 	mov	_BRGR1,#0x2F
   0114 75 BE F0            658 	mov	_BRGR0,#0xF0
   0117 43 BD 01            659 	orl	_BRGCON,#0x01
                    0063    660 	C$fb_in8.c$78$1$1 ==.
                            661 ;	../fb_in8.c:78: SBUF=0x55;// 'U' senden
   011A 75 99 55            662 	mov	_SBUF,#0x55
                    0066    663 	C$fb_in8.c$85$1$1 ==.
                            664 ;	../fb_in8.c:85: restart_app();			// Anwendungsspezifische Einstellungen zurücksetzen
   011D C0 23               665 	push	bits
   011F 12 12 78            666 	lcall	_restart_app
   0122 D0 23               667 	pop	bits
   0124 D0 05               668 	pop	ar5
                    006F    669 	C$fb_in8.c$87$1$1 ==.
                            670 ;	../fb_in8.c:87: if(!wduf){
   0126 20 1A 52            671 	jb	b2,00109$
                    0072    672 	C$fb_in8.c$89$1$1 ==.
                            673 ;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
   0129 7B 00               674 	mov	r3,#0x00
   012B 7C 00               675 	mov	r4,#0x00
   012D                     676 00196$:
   012D C0 05               677 	push	ar5
   012F 90 1D D4            678 	mov	dptr,#(_eeprom + 0x00d4)
   0132 E4                  679 	clr	a
   0133 93                  680 	movc	a,@a+dptr
   0134 FA                  681 	mov	r2,a
   0135 7D 00               682 	mov	r5,#0x00
   0137 90 1D FE            683 	mov	dptr,#(_eeprom + 0x00fe)
   013A E4                  684 	clr	a
   013B 93                  685 	movc	a,@a+dptr
   013C C4                  686 	swap	a
   013D 54 0F               687 	anl	a,#0x0F
   013F FF                  688 	mov	r7,a
   0140 8F F0               689 	mov	b,r7
   0142 05 F0               690 	inc	b
   0144 80 06               691 	sjmp	00271$
   0146                     692 00270$:
   0146 EA                  693 	mov	a,r2
   0147 2A                  694 	add	a,r2
   0148 FA                  695 	mov	r2,a
   0149 ED                  696 	mov	a,r5
   014A 33                  697 	rlc	a
   014B FD                  698 	mov	r5,a
   014C                     699 00271$:
   014C D5 F0 F7            700 	djnz	b,00270$
   014F C3                  701 	clr	c
   0150 EA                  702 	mov	a,r2
   0151 9B                  703 	subb	a,r3
   0152 ED                  704 	mov	a,r5
   0153 9C                  705 	subb	a,r4
   0154 D0 05               706 	pop	ar5
   0156 40 23               707 	jc	00109$
                    00A1    708 	C$fb_in8.c$91$3$3 ==.
                            709 ;	../fb_in8.c:91: RTCCON=0x60;		// RTC anhalten und Flag löschen
   0158 75 D1 60            710 	mov	_RTCCON,#0x60
                    00A4    711 	C$fb_in8.c$92$3$3 ==.
                            712 ;	../fb_in8.c:92: RTCH=0x1D;			// reload Real Time Clock für 65ms
   015B 75 D2 1D            713 	mov	_RTCH,#0x1D
                    00A7    714 	C$fb_in8.c$93$3$3 ==.
                            715 ;	../fb_in8.c:93: RTCL=0x40;
   015E 75 D3 40            716 	mov	_RTCL,#0x40
                    00AA    717 	C$fb_in8.c$94$3$3 ==.
                            718 ;	../fb_in8.c:94: RTCCON=0x61;		// RTC starten
   0161 75 D1 61            719 	mov	_RTCCON,#0x61
                    00AD    720 	C$fb_in8.c$95$3$3 ==.
                            721 ;	../fb_in8.c:95: while (RTCCON<=0x7F) ;	// Realtime clock ueberlauf abwarten
   0164                     722 00105$:
   0164 E5 D1               723 	mov	a,_RTCCON
   0166 24 80               724 	add	a,#0xff - 0x7F
   0168 50 FA               725 	jnc	00105$
                    00B3    726 	C$fb_in8.c$97$3$3 ==.
                            727 ;	../fb_in8.c:97: EA = 0;
   016A C2 AF               728 	clr	_IEN0_7
                    00B5    729 	C$fb_in8.c$98$3$3 ==.
                            730 ;	../fb_in8.c:98: WFEED1 = 0xA5;
   016C 75 C2 A5            731 	mov	_WFEED1,#0xA5
                    00B8    732 	C$fb_in8.c$99$3$3 ==.
                            733 ;	../fb_in8.c:99: WFEED2 = 0x5A;
   016F 75 C3 5A            734 	mov	_WFEED2,#0x5A
                    00BB    735 	C$fb_in8.c$100$3$3 ==.
                            736 ;	../fb_in8.c:100: EA=1;
   0172 D2 AF               737 	setb	_IEN0_7
                    00BD    738 	C$fb_in8.c$89$2$2 ==.
                            739 ;	../fb_in8.c:89: for(base=0;base<=(eeprom[0xD4]<<(eeprom[0xFE]>>4)) ;base++){//faktor startverz hohlen und um basis nach links schieben
   0174 0B                  740 	inc	r3
   0175 BB 00 B5            741 	cjne	r3,#0x00,00196$
   0178 0C                  742 	inc	r4
   0179 80 B2               743 	sjmp	00196$
   017B                     744 00109$:
                    00C4    745 	C$fb_in8.c$105$1$1 ==.
                            746 ;	../fb_in8.c:105: WATCHDOG_INIT
   017B 75 C1 FF            747 	mov	_WDL,#0xFF
   017E C2 AF               748 	clr	_IEN0_7
   0180 75 A7 E5            749 	mov	_WDCON,#0xE5
   0183 75 C2 A5            750 	mov	_WFEED1,#0xA5
   0186 75 C3 5A            751 	mov	_WFEED2,#0x5A
   0189 D2 AF               752 	setb	_IEN0_7
                    00D4    753 	C$fb_in8.c$106$1$1 ==.
                            754 ;	../fb_in8.c:106: WATCHDOG_START
   018B C2 AF               755 	clr	_IEN0_7
   018D 43 A7 04            756 	orl	_WDCON,#0x04
   0190 75 C2 A5            757 	mov	_WFEED1,#0xA5
   0193 75 C3 5A            758 	mov	_WFEED2,#0x5A
   0196 D2 AF               759 	setb	_IEN0_7
                    00E1    760 	C$fb_in8.c$108$1$1 ==.
                            761 ;	../fb_in8.c:108: do  {
   0198                     762 00193$:
                    00E1    763 	C$fb_in8.c$109$2$4 ==.
                            764 ;	../fb_in8.c:109: WATCHDOG_FEED 	    // feed the watchdog
   0198 C2 AF               765 	clr	_IEN0_7
   019A 75 C2 A5            766 	mov	_WFEED1,#0xA5
   019D 75 C3 5A            767 	mov	_WFEED2,#0x5A
   01A0 D2 AF               768 	setb	_IEN0_7
                    00EB    769 	C$fb_in8.c$111$2$4 ==.
                            770 ;	../fb_in8.c:111: EA = 0;
   01A2 C2 AF               771 	clr	_IEN0_7
                    00ED    772 	C$fb_in8.c$112$2$4 ==.
                            773 ;	../fb_in8.c:112: WFEED1 = 0xA5;
   01A4 75 C2 A5            774 	mov	_WFEED1,#0xA5
                    00F0    775 	C$fb_in8.c$113$2$4 ==.
                            776 ;	../fb_in8.c:113: WFEED2 = 0x5A;
   01A7 75 C3 5A            777 	mov	_WFEED2,#0x5A
                    00F3    778 	C$fb_in8.c$114$2$4 ==.
                            779 ;	../fb_in8.c:114: EA=1;
   01AA D2 AF               780 	setb	_IEN0_7
                    00F5    781 	C$fb_in8.c$117$2$4 ==.
                            782 ;	../fb_in8.c:117: if(APPLICATION_RUN){	  
   01AC 90 1D 0D            783 	mov	dptr,#(_eeprom + 0x000d)
   01AF E4                  784 	clr	a
   01B0 93                  785 	movc	a,@a+dptr
   01B1 FF                  786 	mov	r7,a
   01B2 BF FF 02            787 	cjne	r7,#0xFF,00275$
   01B5 80 03               788 	sjmp	00276$
   01B7                     789 00275$:
   01B7 02 03 5F            790 	ljmp	00149$
   01BA                     791 00276$:
   01BA 30 11 03            792 	jnb	_connected,00277$
   01BD 02 03 5F            793 	ljmp	00149$
   01C0                     794 00277$:
   01C0 E5 7A               795 	mov	a,_status60
   01C2 30 E0 03            796 	jnb	acc.0,00278$
   01C5 02 03 5F            797 	ljmp	00149$
   01C8                     798 00278$:
                    0111    799 	C$fb_in8.c$121$3$5 ==.
                            800 ;	../fb_in8.c:121: p0h=spi_in_out();
   01C8 C0 05               801 	push	ar5
   01CA C0 23               802 	push	bits
   01CC 12 00 85            803 	lcall	_spi_in_out
   01CF 85 82 25            804 	mov	_p0h,dpl
   01D2 D0 23               805 	pop	bits
   01D4 D0 05               806 	pop	ar5
                    011F    807 	C$fb_in8.c$123$3$5 ==.
                            808 ;	../fb_in8.c:123: if(!bus_return_ready)
   01D6 20 19 13            809 	jb	b1,00113$
                    0122    810 	C$fb_in8.c$125$4$6 ==.
                            811 ;	../fb_in8.c:125: portbuffer=p0h;
   01D9 85 25 24            812 	mov	_portbuffer,_p0h
                    0125    813 	C$fb_in8.c$126$4$6 ==.
                            814 ;	../fb_in8.c:126: if(!wduf)bus_return();			// Anwendungsspezifische Einstellungen zurücksetzen
   01DC 20 1A 0B            815 	jb	b2,00111$
   01DF C0 05               816 	push	ar5
   01E1 C0 23               817 	push	bits
   01E3 12 0F 90            818 	lcall	_bus_return
   01E6 D0 23               819 	pop	bits
   01E8 D0 05               820 	pop	ar5
   01EA                     821 00111$:
                    0133    822 	C$fb_in8.c$127$4$6 ==.
                            823 ;	../fb_in8.c:127: bus_return_ready=1;
   01EA D2 19               824 	setb	b1
   01EC                     825 00113$:
                    0135    826 	C$fb_in8.c$130$3$5 ==.
                            827 ;	../fb_in8.c:130: if (p0h!=portbuffer) 
   01EC E5 24               828 	mov	a,_portbuffer
   01EE B5 25 02            829 	cjne	a,_p0h,00281$
   01F1 80 4A               830 	sjmp	00118$
   01F3                     831 00281$:
                    013C    832 	C$fb_in8.c$135$4$7 ==.
                            833 ;	../fb_in8.c:135: if (((p0h^portbuffer) & bitmask_1[pin])&& !(blocked & bitmask_1[pin]) )//kürzeste Version
   01F3 E5 24               834 	mov	a,_portbuffer
   01F5 65 25               835 	xrl	a,_p0h
   01F7 FF                  836 	mov	r7,a
   01F8 A8 7C               837 	mov	r0,_bp
   01FA 08                  838 	inc	r0
   01FB 08                  839 	inc	r0
   01FC E6                  840 	mov	a,@r0
   01FD 90 1C AA            841 	mov	dptr,#_bitmask_1
   0200 93                  842 	movc	a,@a+dptr
   0201 FC                  843 	mov	r4,a
   0202 5F                  844 	anl	a,r7
   0203 60 16               845 	jz	00115$
   0205 EC                  846 	mov	a,r4
   0206 55 28               847 	anl	a,_blocked
   0208 70 11               848 	jnz	00115$
                    0153    849 	C$fb_in8.c$137$5$8 ==.
                            850 ;	../fb_in8.c:137: pin_changed(pin);				// Änderung verarbeiten
   020A A8 7C               851 	mov	r0,_bp
   020C 08                  852 	inc	r0
   020D 08                  853 	inc	r0
   020E 86 82               854 	mov	dpl,@r0
   0210 C0 05               855 	push	ar5
   0212 C0 23               856 	push	bits
   0214 12 04 36            857 	lcall	_pin_changed
   0217 D0 23               858 	pop	bits
   0219 D0 05               859 	pop	ar5
   021B                     860 00115$:
                    0164    861 	C$fb_in8.c$141$4$7 ==.
                            862 ;	../fb_in8.c:141: portbuffer|=(p0h& bitmask_1[pin]);					// neuen Portzustand in buffer speichern
   021B A8 7C               863 	mov	r0,_bp
   021D 08                  864 	inc	r0
   021E 08                  865 	inc	r0
   021F E6                  866 	mov	a,@r0
   0220 90 1C AA            867 	mov	dptr,#_bitmask_1
   0223 93                  868 	movc	a,@a+dptr
   0224 FF                  869 	mov	r7,a
   0225 55 25               870 	anl	a,_p0h
   0227 42 24               871 	orl	_portbuffer,a
                    0172    872 	C$fb_in8.c$142$4$7 ==.
                            873 ;	../fb_in8.c:142: portbuffer&=(p0h| ~bitmask_1[pin]);					// neuen Portzustand in buffer speichern
   0229 EF                  874 	mov	a,r7
   022A F4                  875 	cpl	a
   022B FF                  876 	mov	r7,a
   022C 45 25               877 	orl	a,_p0h
   022E 52 24               878 	anl	_portbuffer,a
                    0179    879 	C$fb_in8.c$144$4$7 ==.
                            880 ;	../fb_in8.c:144: pin++;	// nächsten pin prüfen..
   0230 A8 7C               881 	mov	r0,_bp
   0232 08                  882 	inc	r0
   0233 08                  883 	inc	r0
   0234 06                  884 	inc	@r0
                    017E    885 	C$fb_in8.c$145$4$7 ==.
                            886 ;	../fb_in8.c:145: pin&=0x07;// maximal 0-7
   0235 A8 7C               887 	mov	r0,_bp
   0237 08                  888 	inc	r0
   0238 08                  889 	inc	r0
   0239 E6                  890 	mov	a,@r0
   023A 54 07               891 	anl	a,#0x07
   023C F6                  892 	mov	@r0,a
   023D                     893 00118$:
                    0186    894 	C$fb_in8.c$150$3$5 ==.
                            895 ;	../fb_in8.c:150: if (RTCCON>=0x80){
   023D 74 80               896 	mov	a,#0x100 - 0x80
   023F 25 D1               897 	add	a,_RTCCON
   0241 50 0B               898 	jnc	00236$
                    018C    899 	C$fb_in8.c$151$4$9 ==.
                            900 ;	../fb_in8.c:151: delay_timer();	// Realtime clock ueberlauf
   0243 C0 05               901 	push	ar5
   0245 C0 23               902 	push	bits
   0247 12 09 78            903 	lcall	_delay_timer
   024A D0 23               904 	pop	bits
   024C D0 05               905 	pop	ar5
                    0197    906 	C$fb_in8.c$155$1$1 ==.
                            907 ;	../fb_in8.c:155: for(objno=0;objno<=7;objno++){	
   024E                     908 00236$:
   024E 7F 00               909 	mov	r7,#0x00
   0250                     910 00200$:
   0250 EF                  911 	mov	a,r7
   0251 24 F8               912 	add	a,#0xff - 0x07
   0253 50 03               913 	jnc	00285$
   0255 02 03 2E            914 	ljmp	00203$
   0258                     915 00285$:
                    01A1    916 	C$fb_in8.c$156$1$1 ==.
                            917 ;	../fb_in8.c:156: tmp=(eeprom[0xD5+(objno*4)]&0x0C);//0xD5/ bit 2-3 zykl senden aktiv 
   0258 C0 05               918 	push	ar5
   025A EF                  919 	mov	a,r7
   025B 2F                  920 	add	a,r7
   025C 25 E0               921 	add	a,acc
   025E 24 D5               922 	add	a,#0xD5
   0260 90 1D 00            923 	mov	dptr,#_eeprom
   0263 93                  924 	movc	a,@a+dptr
   0264 FC                  925 	mov	r4,a
   0265 53 04 0C            926 	anl	ar4,#0x0C
                    01B1    927 	C$fb_in8.c$157$4$10 ==.
                            928 ;	../fb_in8.c:157: objstate=read_obj_value(objno);
   0268 8F 82               929 	mov	dpl,r7
   026A C0 07               930 	push	ar7
   026C C0 04               931 	push	ar4
   026E C0 23               932 	push	bits
   0270 12 10 C9            933 	lcall	_read_obj_value
   0273 AA 82               934 	mov	r2,dpl
   0275 AB 83               935 	mov	r3,dph
   0277 AD F0               936 	mov	r5,b
   0279 D0 23               937 	pop	bits
   027B D0 04               938 	pop	ar4
   027D D0 07               939 	pop	ar7
                    01C8    940 	C$fb_in8.c$158$4$10 ==.
                            941 ;	../fb_in8.c:158: if (((eeprom[0xCE+(objno>>1)] >> ((objno & 0x01)*4)) & 0x0F)==1){// bei Funktion=Schalten
   027F EF                  942 	mov	a,r7
   0280 C3                  943 	clr	c
   0281 13                  944 	rrc	a
   0282 24 CE               945 	add	a,#0xCE
   0284 90 1D 00            946 	mov	dptr,#_eeprom
   0287 93                  947 	movc	a,@a+dptr
   0288 FE                  948 	mov	r6,a
   0289 74 01               949 	mov	a,#0x01
   028B 5F                  950 	anl	a,r7
   028C 75 F0 04            951 	mov	b,#0x04
   028F A4                  952 	mul	ab
   0290 F5 F0               953 	mov	b,a
   0292 05 F0               954 	inc	b
   0294 EE                  955 	mov	a,r6
   0295 80 02               956 	sjmp	00287$
   0297                     957 00286$:
   0297 C3                  958 	clr	c
   0298 13                  959 	rrc	a
   0299                     960 00287$:
   0299 D5 F0 FB            961 	djnz	b,00286$
   029C 54 0F               962 	anl	a,#0x0F
   029E FE                  963 	mov	r6,a
   029F BE 01 02            964 	cjne	r6,#0x01,00288$
   02A2 80 05               965 	sjmp	00289$
   02A4                     966 00288$:
   02A4 D0 05               967 	pop	ar5
   02A6 02 03 2A            968 	ljmp	00202$
   02A9                     969 00289$:
   02A9 D0 05               970 	pop	ar5
                    01F4    971 	C$fb_in8.c$159$5$11 ==.
                            972 ;	../fb_in8.c:159: if ((tmp==0x04 && objstate==1)||(tmp==0x08 && objstate==0)|| tmp==0x0C){//bei zykl senden aktiviert
   02AB BC 04 05            973 	cjne	r4,#0x04,00133$
   02AE BA 01 02            974 	cjne	r2,#0x01,00292$
   02B1 80 09               975 	sjmp	00128$
   02B3                     976 00292$:
   02B3                     977 00133$:
   02B3 BC 08 03            978 	cjne	r4,#0x08,00134$
   02B6 EA                  979 	mov	a,r2
   02B7 60 03               980 	jz	00128$
   02B9                     981 00134$:
   02B9 BC 0C 68            982 	cjne	r4,#0x0C,00129$
   02BC                     983 00128$:
                    0205    984 	C$fb_in8.c$160$6$12 ==.
                            985 ;	../fb_in8.c:160: n=timercnt[objno];
   02BC EF                  986 	mov	a,r7
   02BD 24 36               987 	add	a,#_timercnt
   02BF F9                  988 	mov	r1,a
                    0209    989 	C$fb_in8.c$161$6$12 ==.
                            990 ;	../fb_in8.c:161: if ((n & 0x7F) ==0){ 		//    wenn aus oder abgelaufen
   02C0 E7                  991 	mov	a,@r1
   02C1 FE                  992 	mov	r6,a
   02C2 54 7F               993 	anl	a,#0x7F
   02C4 70 64               994 	jnz	00202$
                    020F    995 	C$fb_in8.c$162$7$13 ==.
                            996 ;	../fb_in8.c:162: timercnt[objno] = (eeprom[0xD6+(objno*4)]& 0x3F)+ 0x80 ;//0xD6 Faktor Zyklisch senden x.1 + x.2 )+ einschalten
   02C6 EF                  997 	mov	a,r7
   02C7 2F                  998 	add	a,r7
   02C8 25 E0               999 	add	a,acc
   02CA 24 D6              1000 	add	a,#0xD6
   02CC 90 1D 00           1001 	mov	dptr,#_eeprom
   02CF 93                 1002 	movc	a,@a+dptr
   02D0 FC                 1003 	mov	r4,a
   02D1 74 3F              1004 	mov	a,#0x3F
   02D3 5C                 1005 	anl	a,r4
   02D4 24 80              1006 	add	a,#0x80
   02D6 F7                 1007 	mov	@r1,a
                    0220   1008 	C$fb_in8.c$163$7$13 ==.
                           1009 ;	../fb_in8.c:163: timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07;	//Basis zyklisch senden
   02D7 EF                 1010 	mov	a,r7
   02D8 24 2D              1011 	add	a,#_timerbase
   02DA F9                 1012 	mov	r1,a
   02DB 8F 03              1013 	mov	ar3,r7
   02DD 7C 00              1014 	mov	r4,#0x00
   02DF 0B                 1015 	inc	r3
   02E0 BB 00 01           1016 	cjne	r3,#0x00,00300$
   02E3 0C                 1017 	inc	r4
   02E4                    1018 00300$:
   02E4 EC                 1019 	mov	a,r4
   02E5 A2 E7              1020 	mov	c,acc.7
   02E7 13                 1021 	rrc	a
   02E8 CB                 1022 	xch	a,r3
   02E9 13                 1023 	rrc	a
   02EA CB                 1024 	xch	a,r3
   02EB 74 F6              1025 	mov	a,#0xF6
   02ED 2B                 1026 	add	a,r3
   02EE 90 1D 00           1027 	mov	dptr,#_eeprom
   02F1 93                 1028 	movc	a,@a+dptr
   02F2 FC                 1029 	mov	r4,a
   02F3 74 01              1030 	mov	a,#0x01
   02F5 5F                 1031 	anl	a,r7
   02F6 64 01              1032 	xrl	a,#0x01
   02F8 75 F0 04           1033 	mov	b,#0x04
   02FB A4                 1034 	mul	ab
   02FC F5 F0              1035 	mov	b,a
   02FE 05 F0              1036 	inc	b
   0300 EC                 1037 	mov	a,r4
   0301 80 02              1038 	sjmp	00302$
   0303                    1039 00301$:
   0303 C3                 1040 	clr	c
   0304 13                 1041 	rrc	a
   0305                    1042 00302$:
   0305 D5 F0 FB           1043 	djnz	b,00301$
   0308 54 07              1044 	anl	a,#0x07
   030A F7                 1045 	mov	@r1,a
                    0254   1046 	C$fb_in8.c$164$7$13 ==.
                           1047 ;	../fb_in8.c:164: if (n & 0x80){// wenn timer ein war
   030B EE                 1048 	mov	a,r6
   030C 30 E7 1B           1049 	jnb	acc.7,00202$
                    0258   1050 	C$fb_in8.c$165$8$14 ==.
                           1051 ;	../fb_in8.c:165: while(!send_obj_value(objno));//send_obj_value(objno);		// Eingang x.1 zyklisch senden
   030F                    1052 00121$:
   030F 8F 82              1053 	mov	dpl,r7
   0311 C0 07              1054 	push	ar7
   0313 C0 05              1055 	push	ar5
   0315 C0 23              1056 	push	bits
   0317 12 18 F5           1057 	lcall	_send_obj_value
   031A D0 23              1058 	pop	bits
   031C D0 05              1059 	pop	ar5
   031E D0 07              1060 	pop	ar7
   0320 50 ED              1061 	jnc	00121$
   0322 80 06              1062 	sjmp	00202$
   0324                    1063 00129$:
                    026D   1064 	C$fb_in8.c$169$5$11 ==.
                           1065 ;	../fb_in8.c:169: else timercnt[objno]=0;
   0324 EF                 1066 	mov	a,r7
   0325 24 36              1067 	add	a,#_timercnt
   0327 F8                 1068 	mov	r0,a
   0328 76 00              1069 	mov	@r0,#0x00
   032A                    1070 00202$:
                    0273   1071 	C$fb_in8.c$155$3$5 ==.
                           1072 ;	../fb_in8.c:155: for(objno=0;objno<=7;objno++){	
   032A 0F                 1073 	inc	r7
   032B 02 02 50           1074 	ljmp	00200$
   032E                    1075 00203$:
                    0277   1076 	C$fb_in8.c$175$4$15 ==.
                           1077 ;	../fb_in8.c:175: for (objno=0;objno<=1;objno++){
   032E 7F 00              1078 	mov	r7,#0x00
   0330                    1079 00204$:
   0330 EF                 1080 	mov	a,r7
   0331 24 FE              1081 	add	a,#0xff - 0x01
   0333 40 4E              1082 	jc	00150$
                    027E   1083 	C$fb_in8.c$176$4$15 ==.
                           1084 ;	../fb_in8.c:176: if(timerstate[objno]==0 && (timerbase[objno]& 0x40)== 0x40){//Impulszähler,Schaltzaehler
   0335 EF                 1085 	mov	a,r7
   0336 24 3F              1086 	add	a,#_timerstate
   0338 F9                 1087 	mov	r1,a
   0339 E7                 1088 	mov	a,@r1
   033A 70 20              1089 	jnz	00206$
   033C EF                 1090 	mov	a,r7
   033D 24 2D              1091 	add	a,#_timerbase
   033F F9                 1092 	mov	r1,a
   0340 87 04              1093 	mov	ar4,@r1
   0342 74 40              1094 	mov	a,#0x40
   0344 5C                 1095 	anl	a,r4
   0345 FB                 1096 	mov	r3,a
   0346 BB 40 13           1097 	cjne	r3,#0x40,00206$
                    0292   1098 	C$fb_in8.c$177$5$16 ==.
                           1099 ;	../fb_in8.c:177: if (!TR1){// warten bis statemachine fertig ist...
   0349 20 8E 10           1100 	jb	_TCON_6,00206$
                    0295   1101 	C$fb_in8.c$178$6$17 ==.
                           1102 ;	../fb_in8.c:178: zaehlervalue[objno]=0;
   034C EF                 1103 	mov	a,r7
   034D 2F                 1104 	add	a,r7
   034E FB                 1105 	mov	r3,a
   034F 24 19              1106 	add	a,#_zaehlervalue
   0351 F8                 1107 	mov	r0,a
   0352 76 00              1108 	mov	@r0,#0x00
   0354 08                 1109 	inc	r0
   0355 76 00              1110 	mov	@r0,#0x00
                    02A0   1111 	C$fb_in8.c$179$6$17 ==.
                           1112 ;	../fb_in8.c:179: timerbase[objno]&= ~0x40;
   0357 53 04 BF           1113 	anl	ar4,#0xBF
   035A A7 04              1114 	mov	@r1,ar4
   035C                    1115 00206$:
                    02A5   1116 	C$fb_in8.c$175$3$5 ==.
                           1117 ;	../fb_in8.c:175: for (objno=0;objno<=1;objno++){
   035C 0F                 1118 	inc	r7
   035D 80 D1              1119 	sjmp	00204$
   035F                    1120 00149$:
                    02A8   1121 	C$fb_in8.c$188$2$4 ==.
                           1122 ;	../fb_in8.c:188: else if (RTCCON>=0x80 && connected)	// Realtime clock ueberlauf
   035F 74 80              1123 	mov	a,#0x100 - 0x80
   0361 25 D1              1124 	add	a,_RTCCON
   0363 50 1E              1125 	jnc	00150$
   0365 30 11 1B           1126 	jnb	_connected,00150$
                    02B1   1127 	C$fb_in8.c$190$3$18 ==.
                           1128 ;	../fb_in8.c:190: RTCCON=0x61;// RTC flag löschen
   0368 75 D1 61           1129 	mov	_RTCCON,#0x61
                    02B4   1130 	C$fb_in8.c$191$3$18 ==.
                           1131 ;	../fb_in8.c:191: if(connected_timeout <= 110)// 11x 520ms --> ca 6 Sekunden
   036B E5 7B              1132 	mov	a,_connected_timeout
   036D 24 91              1133 	add	a,#0xff - 0x6E
   036F 40 04              1134 	jc	00143$
                    02BA   1135 	C$fb_in8.c$193$4$19 ==.
                           1136 ;	../fb_in8.c:193: connected_timeout ++;
   0371 05 7B              1137 	inc	_connected_timeout
   0373 80 0E              1138 	sjmp	00150$
   0375                    1139 00143$:
                    02BE   1140 	C$fb_in8.c$195$3$18 ==.
                           1141 ;	../fb_in8.c:195: else send_obj_value(T_DISCONNECT);// wenn timeout dann disconnect, flag und var wird in build_tel() gelöscht
   0375 75 82 85           1142 	mov	dpl,#0x85
   0378 C0 05              1143 	push	ar5
   037A C0 23              1144 	push	bits
   037C 12 18 F5           1145 	lcall	_send_obj_value
   037F D0 23              1146 	pop	bits
   0381 D0 05              1147 	pop	ar5
   0383                    1148 00150$:
                    02CC   1149 	C$fb_in8.c$199$2$4 ==.
                           1150 ;	../fb_in8.c:199: if (tel_arrived || tel_sent) { 
   0383 20 09 03           1151 	jb	_tel_arrived,00153$
   0386 30 0A 11           1152 	jnb	_tel_sent,00154$
   0389                    1153 00153$:
                    02D2   1154 	C$fb_in8.c$200$3$20 ==.
                           1155 ;	../fb_in8.c:200: tel_arrived=0;
   0389 C2 09              1156 	clr	_tel_arrived
                    02D4   1157 	C$fb_in8.c$201$3$20 ==.
                           1158 ;	../fb_in8.c:201: tel_sent=0;
   038B C2 0A              1159 	clr	_tel_sent
                    02D6   1160 	C$fb_in8.c$202$3$20 ==.
                           1161 ;	../fb_in8.c:202: process_tel();
   038D C0 05              1162 	push	ar5
   038F C0 23              1163 	push	bits
   0391 12 19 48           1164 	lcall	_process_tel
   0394 D0 23              1165 	pop	bits
   0396 D0 05              1166 	pop	ar5
   0398 80 0A              1167 	sjmp	00155$
   039A                    1168 00154$:
                    02E3   1169 	C$fb_in8.c$205$3$4 ==.
                           1170 ;	../fb_in8.c:205: for(n=0;n<100;n++);	// falls Hauptroutine keine Zeit verbraucht, der PROG LED etwas Zeit geben, damit sie auch leuchten kann
   039A 7E 64              1171 	mov	r6,#0x64
   039C                    1172 00210$:
   039C 8E 07              1173 	mov	ar7,r6
   039E 1F                 1174 	dec	r7
   039F 8F 06              1175 	mov	ar6,r7
   03A1 EE                 1176 	mov	a,r6
   03A2 70 F8              1177 	jnz	00210$
   03A4                    1178 00155$:
                    02ED   1179 	C$fb_in8.c$211$2$4 ==.
                           1180 ;	../fb_in8.c:211: if (RI){
                    02ED   1181 	C$fb_in8.c$212$3$22 ==.
                           1182 ;	../fb_in8.c:212: RI=0;
   03A4 10 98 02           1183 	jbc	_SCON_0,00316$
   03A7 80 4A              1184 	sjmp	00181$
   03A9                    1185 00316$:
                    02F2   1186 	C$fb_in8.c$213$3$22 ==.
                           1187 ;	../fb_in8.c:213: cmd=SBUF;
   03A9 AF 99              1188 	mov	r7,_SBUF
                    02F4   1189 	C$fb_in8.c$214$3$22 ==.
                           1190 ;	../fb_in8.c:214: if(cmd=='c'){
   03AB BF 63 08           1191 	cjne	r7,#0x63,00161$
                    02F7   1192 	C$fb_in8.c$215$4$23 ==.
                           1193 ;	../fb_in8.c:215: while(!TI);
   03AE                    1194 00157$:
                    02F7   1195 	C$fb_in8.c$216$4$23 ==.
                           1196 ;	../fb_in8.c:216: TI=0;
   03AE 10 99 02           1197 	jbc	_SCON_1,00319$
   03B1 80 FB              1198 	sjmp	00157$
   03B3                    1199 00319$:
                    02FC   1200 	C$fb_in8.c$217$4$23 ==.
                           1201 ;	../fb_in8.c:217: SBUF=0x55;
   03B3 75 99 55           1202 	mov	_SBUF,#0x55
   03B6                    1203 00161$:
                    02FF   1204 	C$fb_in8.c$219$3$22 ==.
                           1205 ;	../fb_in8.c:219: if(cmd=='+'){
   03B6 BF 2B 03           1206 	cjne	r7,#0x2B,00163$
                    0302   1207 	C$fb_in8.c$220$4$24 ==.
                           1208 ;	../fb_in8.c:220: TRIM--;
   03B9 15 96              1209 	dec	_TRIM
                    0304   1210 	C$fb_in8.c$221$4$24 ==.
                           1211 ;	../fb_in8.c:221: cal--;
   03BB 1D                 1212 	dec	r5
   03BC                    1213 00163$:
                    0305   1214 	C$fb_in8.c$223$3$22 ==.
                           1215 ;	../fb_in8.c:223: if(cmd=='-'){
   03BC BF 2D 03           1216 	cjne	r7,#0x2D,00165$
                    0308   1217 	C$fb_in8.c$224$4$25 ==.
                           1218 ;	../fb_in8.c:224: TRIM++;
   03BF 05 96              1219 	inc	_TRIM
                    030A   1220 	C$fb_in8.c$225$4$25 ==.
                           1221 ;	../fb_in8.c:225: cal++;
   03C1 0D                 1222 	inc	r5
   03C2                    1223 00165$:
                    030B   1224 	C$fb_in8.c$227$3$22 ==.
                           1225 ;	../fb_in8.c:227: if(cmd=='w'){
   03C2 BF 77 12           1226 	cjne	r7,#0x77,00167$
                    030E   1227 	C$fb_in8.c$228$4$26 ==.
                           1228 ;	../fb_in8.c:228: EA=0;
   03C5 C2 AF              1229 	clr	_IEN0_7
                    0310   1230 	C$fb_in8.c$229$4$26 ==.
                           1231 ;	../fb_in8.c:229: START_WRITECYCLE;	//cal an 0x1cff schreiben
   03C7 75 E4 00           1232 	mov	_FMCON,#0x00
                    0313   1233 	C$fb_in8.c$231$4$26 ==.
                           1234 ;	../fb_in8.c:231: FMADRH= 0x1C;		
   03CA 75 E7 1C           1235 	mov	_FMADRH,#0x1C
                    0316   1236 	C$fb_in8.c$232$4$26 ==.
                           1237 ;	../fb_in8.c:232: FMADRL= 0xFF; 
   03CD 75 E6 FF           1238 	mov	_FMADRL,#0xFF
                    0319   1239 	C$fb_in8.c$234$4$26 ==.
                           1240 ;	../fb_in8.c:234: FMDATA=	cal;
   03D0 8D E5              1241 	mov	_FMDATA,r5
                    031B   1242 	C$fb_in8.c$235$4$26 ==.
                           1243 ;	../fb_in8.c:235: STOP_WRITECYCLE;
   03D2 75 E4 68           1244 	mov	_FMCON,#0x68
                    031E   1245 	C$fb_in8.c$236$4$26 ==.
                           1246 ;	../fb_in8.c:236: EA=1;				//int wieder freigeben
   03D5 D2 AF              1247 	setb	_IEN0_7
   03D7                    1248 00167$:
                    0320   1249 	C$fb_in8.c$238$3$22 ==.
                           1250 ;	../fb_in8.c:238: if(cmd=='p')status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   03D7 BF 70 03           1251 	cjne	r7,#0x70,00169$
   03DA 63 7A 81           1252 	xrl	_status60,#0x81
   03DD                    1253 00169$:
                    0326   1254 	C$fb_in8.c$240$3$22 ==.
                           1255 ;	../fb_in8.c:240: if(cmd=='v'){
   03DD BF 76 08           1256 	cjne	r7,#0x76,00174$
                    0329   1257 	C$fb_in8.c$241$4$27 ==.
                           1258 ;	../fb_in8.c:241: while(!TI);
   03E0                    1259 00170$:
                    0329   1260 	C$fb_in8.c$242$4$27 ==.
                           1261 ;	../fb_in8.c:242: TI=0;
   03E0 10 99 02           1262 	jbc	_SCON_1,00330$
   03E3 80 FB              1263 	sjmp	00170$
   03E5                    1264 00330$:
                    032E   1265 	C$fb_in8.c$243$4$27 ==.
                           1266 ;	../fb_in8.c:243: SBUF=VERSION;
   03E5 75 99 0A           1267 	mov	_SBUF,#0x0A
   03E8                    1268 00174$:
                    0331   1269 	C$fb_in8.c$245$3$22 ==.
                           1270 ;	../fb_in8.c:245: if(cmd=='t'){
   03E8 BF 74 08           1271 	cjne	r7,#0x74,00181$
                    0334   1272 	C$fb_in8.c$246$4$28 ==.
                           1273 ;	../fb_in8.c:246: while(!TI);
   03EB                    1274 00175$:
                    0334   1275 	C$fb_in8.c$247$4$28 ==.
                           1276 ;	../fb_in8.c:247: TI=0;
   03EB 10 99 02           1277 	jbc	_SCON_1,00333$
   03EE 80 FB              1278 	sjmp	00175$
   03F0                    1279 00333$:
                    0339   1280 	C$fb_in8.c$248$4$28 ==.
                           1281 ;	../fb_in8.c:248: SBUF=TYPE;
   03F0 75 99 0B           1282 	mov	_SBUF,#0x0B
   03F3                    1283 00181$:
                    033C   1284 	C$fb_in8.c$261$2$4 ==.
                           1285 ;	../fb_in8.c:261: TASTER=1;				// Pin als Eingang schalten um Taster abzufragen
   03F3 D2 97              1286 	setb	_P1_7
                    033E   1287 	C$fb_in8.c$262$2$4 ==.
                           1288 ;	../fb_in8.c:262: if(!TASTER){ // Taster gedrückt
   03F5 20 97 18           1289 	jb	_P1_7,00191$
                    0341   1290 	C$fb_in8.c$263$3$29 ==.
                           1291 ;	../fb_in8.c:263: if(tasterpegel<255)	tasterpegel++;
   03F8 A8 7C              1292 	mov	r0,_bp
   03FA 08                 1293 	inc	r0
   03FB B6 FF 00           1294 	cjne	@r0,#0xFF,00335$
   03FE                    1295 00335$:
   03FE 50 06              1296 	jnc	00185$
   0400 A8 7C              1297 	mov	r0,_bp
   0402 08                 1298 	inc	r0
   0403 06                 1299 	inc	@r0
   0404 80 18              1300 	sjmp	00192$
   0406                    1301 00185$:
                    034F   1302 	C$fb_in8.c$265$4$30 ==.
                           1303 ;	../fb_in8.c:265: if(!tastergetoggelt)status60^=0x81;	// Prog-Bit und Parity-Bit im system_state toggeln
   0406 20 18 03           1304 	jb	b0,00183$
   0409 63 7A 81           1305 	xrl	_status60,#0x81
   040C                    1306 00183$:
                    0355   1307 	C$fb_in8.c$266$4$30 ==.
                           1308 ;	../fb_in8.c:266: tastergetoggelt=1;
   040C D2 18              1309 	setb	b0
   040E 80 0E              1310 	sjmp	00192$
   0410                    1311 00191$:
                    0359   1312 	C$fb_in8.c$270$3$31 ==.
                           1313 ;	../fb_in8.c:270: if(tasterpegel>0) tasterpegel--;
   0410 A8 7C              1314 	mov	r0,_bp
   0412 08                 1315 	inc	r0
   0413 E6                 1316 	mov	a,@r0
   0414 60 06              1317 	jz	00188$
   0416 A8 7C              1318 	mov	r0,_bp
   0418 08                 1319 	inc	r0
   0419 16                 1320 	dec	@r0
   041A 80 02              1321 	sjmp	00192$
   041C                    1322 00188$:
                    0365   1323 	C$fb_in8.c$271$3$31 ==.
                           1324 ;	../fb_in8.c:271: else tastergetoggelt=0;
   041C C2 18              1325 	clr	b0
   041E                    1326 00192$:
                    0367   1327 	C$fb_in8.c$273$2$4 ==.
                           1328 ;	../fb_in8.c:273: TASTER=!(status60 & 0x01);	// LED entsprechend Prog-Bit schalten (low=LED an)
   041E E5 7A              1329 	mov	a,_status60
   0420 54 01              1330 	anl	a,#0x01
   0422 FF                 1331 	mov	r7,a
   0423 B4 01 00           1332 	cjne	a,#0x01,00339$
   0426                    1333 00339$:
   0426 E4                 1334 	clr	a
   0427 33                 1335 	rlc	a
   0428 FF                 1336 	mov	r7,a
   0429 24 FF              1337 	add	a,#0xff
   042B 92 97              1338 	mov	_P1_7,c
                    0376   1339 	C$fb_in8.c$275$1$1 ==.
                           1340 ;	../fb_in8.c:275: } while(1);
   042D 02 01 98           1341 	ljmp	00193$
   0430 85 7C 81           1342 	mov	sp,_bp
   0433 D0 7C              1343 	pop	_bp
                    037E   1344 	C$fb_in8.c$276$1$1 ==.
                    037E   1345 	XG$main$0$0 ==.
   0435 22                 1346 	ret
                           1347 	.area CSEG    (CODE)
                           1348 	.area CONST   (CODE)
                    0000   1349 G$bitmask_1$0$0 == .
   1CAA                    1350 _bitmask_1:
   1CAA 01                 1351 	.db #0x01	; 1
   1CAB 02                 1352 	.db #0x02	; 2
   1CAC 04                 1353 	.db #0x04	; 4
   1CAD 08                 1354 	.db #0x08	; 8
   1CAE 10                 1355 	.db #0x10	; 16
   1CAF 20                 1356 	.db #0x20	; 32
   1CB0 40                 1357 	.db #0x40	; 64
   1CB1 80                 1358 	.db #0x80	; 128
                    1CFF   1359 Lfb_in8.main$trimsave$1$1 == 0x1cff
                    1CFF   1360 _main_trimsave_1_1	=	0x1cff
                           1361 	.area XINIT   (CODE)
                           1362 	.area CABS    (ABS,CODE)
   1D03                    1363 	.org 0x1D03
                    1D03   1364 Ffb_in8$manufacturer$0$0 == .
   1D03                    1365 _manufacturer:
   1D03 00                 1366 	.db #0x00	; 0
   1D04 04                 1367 	.db #0x04	; 4
   1D0C                    1368 	.org 0x1D0C
                    1D0C   1369 Ffb_in8$port_A_direction$0$0 == .
   1D0C                    1370 _port_A_direction:
   1D0C 00                 1371 	.db #0x00	; 0
   1D0D                    1372 	.org 0x1D0D
                    1D0D   1373 Ffb_in8$run_state$0$0 == .
   1D0D                    1374 _run_state:
   1D0D FF                 1375 	.db #0xFF	; 255
