                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
                              4 ; This file was generated Sat Oct 18 20:04:36 2014
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_taster
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _tele_repeat_value
                             13 	.globl _send_obj_value
                             14 	.globl _P3_1
                             15 	.globl _P3_0
                             16 	.globl _P1_7
                             17 	.globl _P1_6
                             18 	.globl _P1_5
                             19 	.globl _P1_4
                             20 	.globl _P1_3
                             21 	.globl _P1_2
                             22 	.globl _P1_1
                             23 	.globl _P1_0
                             24 	.globl _P0_7
                             25 	.globl _P0_6
                             26 	.globl _P0_5
                             27 	.globl _P0_4
                             28 	.globl _P0_3
                             29 	.globl _P0_2
                             30 	.globl _P0_1
                             31 	.globl _P0_0
                             32 	.globl _I2CON_0
                             33 	.globl _I2CON_2
                             34 	.globl _I2CON_3
                             35 	.globl _I2CON_4
                             36 	.globl _I2CON_5
                             37 	.globl _I2CON_6
                             38 	.globl _SCON_7
                             39 	.globl _SCON_6
                             40 	.globl _SCON_5
                             41 	.globl _SCON_4
                             42 	.globl _SCON_3
                             43 	.globl _SCON_2
                             44 	.globl _SCON_1
                             45 	.globl _SCON_0
                             46 	.globl _IP0_0
                             47 	.globl _IP0_1
                             48 	.globl _IP0_2
                             49 	.globl _IP0_3
                             50 	.globl _IP0_4
                             51 	.globl _IP0_5
                             52 	.globl _IP0_6
                             53 	.globl _IP1_0
                             54 	.globl _IP1_1
                             55 	.globl _IP1_2
                             56 	.globl _IP1_6
                             57 	.globl _IEN1_0
                             58 	.globl _IEN1_1
                             59 	.globl _IEN1_2
                             60 	.globl _IEN0_0
                             61 	.globl _IEN0_1
                             62 	.globl _IEN0_2
                             63 	.globl _IEN0_3
                             64 	.globl _IEN0_4
                             65 	.globl _IEN0_5
                             66 	.globl _IEN0_6
                             67 	.globl _IEN0_7
                             68 	.globl _TCON_0
                             69 	.globl _TCON_1
                             70 	.globl _TCON_2
                             71 	.globl _TCON_3
                             72 	.globl _TCON_4
                             73 	.globl _TCON_5
                             74 	.globl _TCON_6
                             75 	.globl _TCON_7
                             76 	.globl _PSW_7
                             77 	.globl _PSW_6
                             78 	.globl _PSW_5
                             79 	.globl _PSW_4
                             80 	.globl _PSW_3
                             81 	.globl _PSW_2
                             82 	.globl _PSW_1
                             83 	.globl _PSW_0
                             84 	.globl _IEN1
                             85 	.globl _IP0H
                             86 	.globl _WFEED2
                             87 	.globl _WFEED1
                             88 	.globl _WDL
                             89 	.globl _WDCON
                             90 	.globl _TRIM
                             91 	.globl _TAMOD
                             92 	.globl _SSTAT
                             93 	.globl _RTCL
                             94 	.globl _RTCH
                             95 	.globl _RTCCON
                             96 	.globl _RSTSRC
                             97 	.globl _PT0AD
                             98 	.globl _PCONA
                             99 	.globl _P3M2
                            100 	.globl _P3M1
                            101 	.globl _P1M2
                            102 	.globl _P1M1
                            103 	.globl _P0M2
                            104 	.globl _P0M1
                            105 	.globl _KBPATN
                            106 	.globl _KBMASK
                            107 	.globl _KBCON
                            108 	.globl _IP1H
                            109 	.globl _IP1
                            110 	.globl _I2STAT
                            111 	.globl _I2SCLL
                            112 	.globl _I2SCLH
                            113 	.globl _I2DAT
                            114 	.globl _I2CON
                            115 	.globl _I2ADR
                            116 	.globl _FMDATA
                            117 	.globl _FMCON
                            118 	.globl _FMADRL
                            119 	.globl _FMADRH
                            120 	.globl _DIVM
                            121 	.globl _CMP2
                            122 	.globl _CMP1
                            123 	.globl _BRGCON
                            124 	.globl _BRGR1
                            125 	.globl _BRGR0
                            126 	.globl _SADEN
                            127 	.globl _SADDR
                            128 	.globl _AUXR1
                            129 	.globl _SBUF
                            130 	.globl _SCON
                            131 	.globl _IP0
                            132 	.globl _IEN0
                            133 	.globl _TH1
                            134 	.globl _TH0
                            135 	.globl _TL1
                            136 	.globl _TL0
                            137 	.globl _TMOD
                            138 	.globl _TCON
                            139 	.globl _PCON
                            140 	.globl _DPH
                            141 	.globl _DPL
                            142 	.globl _SP
                            143 	.globl _B
                            144 	.globl _ACC
                            145 	.globl _PSW
                            146 	.globl _P3
                            147 	.globl _P1
                            148 	.globl _P0
                            149 	.globl _delay_toggle
                            150 	.globl _timerstate
                            151 	.globl _timerbase
                            152 	.globl _timercnt
                            153 	.globl _dimmwert
                            154 	.globl _dimmcompare
                            155 	.globl _LEDSTATE
                            156 	.globl _button_buffer
                            157 	.globl _timerflags
                            158 	.globl _timer
                            159 	.globl _port_changed
                            160 	.globl _button_changed
                            161 	.globl _read_obj_value
                            162 	.globl _write_obj_value
                            163 	.globl _write_value_req
                            164 	.globl _read_value_req
                            165 	.globl _switch_led
                            166 	.globl _timer0_int
                            167 	.globl _delay_timer
                            168 	.globl _restart_app
                            169 ;--------------------------------------------------------
                            170 ; special function registers
                            171 ;--------------------------------------------------------
                            172 	.area RSEG    (ABS,DATA)
   0000                     173 	.org 0x0000
                    0080    174 G$P0$0$0 == 0x0080
                    0080    175 _P0	=	0x0080
                    0090    176 G$P1$0$0 == 0x0090
                    0090    177 _P1	=	0x0090
                    00B0    178 G$P3$0$0 == 0x00b0
                    00B0    179 _P3	=	0x00b0
                    00D0    180 G$PSW$0$0 == 0x00d0
                    00D0    181 _PSW	=	0x00d0
                    00E0    182 G$ACC$0$0 == 0x00e0
                    00E0    183 _ACC	=	0x00e0
                    00F0    184 G$B$0$0 == 0x00f0
                    00F0    185 _B	=	0x00f0
                    0081    186 G$SP$0$0 == 0x0081
                    0081    187 _SP	=	0x0081
                    0082    188 G$DPL$0$0 == 0x0082
                    0082    189 _DPL	=	0x0082
                    0083    190 G$DPH$0$0 == 0x0083
                    0083    191 _DPH	=	0x0083
                    0087    192 G$PCON$0$0 == 0x0087
                    0087    193 _PCON	=	0x0087
                    0088    194 G$TCON$0$0 == 0x0088
                    0088    195 _TCON	=	0x0088
                    0089    196 G$TMOD$0$0 == 0x0089
                    0089    197 _TMOD	=	0x0089
                    008A    198 G$TL0$0$0 == 0x008a
                    008A    199 _TL0	=	0x008a
                    008B    200 G$TL1$0$0 == 0x008b
                    008B    201 _TL1	=	0x008b
                    008C    202 G$TH0$0$0 == 0x008c
                    008C    203 _TH0	=	0x008c
                    008D    204 G$TH1$0$0 == 0x008d
                    008D    205 _TH1	=	0x008d
                    00A8    206 G$IEN0$0$0 == 0x00a8
                    00A8    207 _IEN0	=	0x00a8
                    00B8    208 G$IP0$0$0 == 0x00b8
                    00B8    209 _IP0	=	0x00b8
                    0098    210 G$SCON$0$0 == 0x0098
                    0098    211 _SCON	=	0x0098
                    0099    212 G$SBUF$0$0 == 0x0099
                    0099    213 _SBUF	=	0x0099
                    00A2    214 G$AUXR1$0$0 == 0x00a2
                    00A2    215 _AUXR1	=	0x00a2
                    00A9    216 G$SADDR$0$0 == 0x00a9
                    00A9    217 _SADDR	=	0x00a9
                    00B9    218 G$SADEN$0$0 == 0x00b9
                    00B9    219 _SADEN	=	0x00b9
                    00BE    220 G$BRGR0$0$0 == 0x00be
                    00BE    221 _BRGR0	=	0x00be
                    00BF    222 G$BRGR1$0$0 == 0x00bf
                    00BF    223 _BRGR1	=	0x00bf
                    00BD    224 G$BRGCON$0$0 == 0x00bd
                    00BD    225 _BRGCON	=	0x00bd
                    00AC    226 G$CMP1$0$0 == 0x00ac
                    00AC    227 _CMP1	=	0x00ac
                    00AD    228 G$CMP2$0$0 == 0x00ad
                    00AD    229 _CMP2	=	0x00ad
                    0095    230 G$DIVM$0$0 == 0x0095
                    0095    231 _DIVM	=	0x0095
                    00E7    232 G$FMADRH$0$0 == 0x00e7
                    00E7    233 _FMADRH	=	0x00e7
                    00E6    234 G$FMADRL$0$0 == 0x00e6
                    00E6    235 _FMADRL	=	0x00e6
                    00E4    236 G$FMCON$0$0 == 0x00e4
                    00E4    237 _FMCON	=	0x00e4
                    00E5    238 G$FMDATA$0$0 == 0x00e5
                    00E5    239 _FMDATA	=	0x00e5
                    00DB    240 G$I2ADR$0$0 == 0x00db
                    00DB    241 _I2ADR	=	0x00db
                    00D8    242 G$I2CON$0$0 == 0x00d8
                    00D8    243 _I2CON	=	0x00d8
                    00DA    244 G$I2DAT$0$0 == 0x00da
                    00DA    245 _I2DAT	=	0x00da
                    00DD    246 G$I2SCLH$0$0 == 0x00dd
                    00DD    247 _I2SCLH	=	0x00dd
                    00DC    248 G$I2SCLL$0$0 == 0x00dc
                    00DC    249 _I2SCLL	=	0x00dc
                    00D9    250 G$I2STAT$0$0 == 0x00d9
                    00D9    251 _I2STAT	=	0x00d9
                    00F8    252 G$IP1$0$0 == 0x00f8
                    00F8    253 _IP1	=	0x00f8
                    00F7    254 G$IP1H$0$0 == 0x00f7
                    00F7    255 _IP1H	=	0x00f7
                    0094    256 G$KBCON$0$0 == 0x0094
                    0094    257 _KBCON	=	0x0094
                    0086    258 G$KBMASK$0$0 == 0x0086
                    0086    259 _KBMASK	=	0x0086
                    0093    260 G$KBPATN$0$0 == 0x0093
                    0093    261 _KBPATN	=	0x0093
                    0084    262 G$P0M1$0$0 == 0x0084
                    0084    263 _P0M1	=	0x0084
                    0085    264 G$P0M2$0$0 == 0x0085
                    0085    265 _P0M2	=	0x0085
                    0091    266 G$P1M1$0$0 == 0x0091
                    0091    267 _P1M1	=	0x0091
                    0092    268 G$P1M2$0$0 == 0x0092
                    0092    269 _P1M2	=	0x0092
                    00B1    270 G$P3M1$0$0 == 0x00b1
                    00B1    271 _P3M1	=	0x00b1
                    00B2    272 G$P3M2$0$0 == 0x00b2
                    00B2    273 _P3M2	=	0x00b2
                    00B5    274 G$PCONA$0$0 == 0x00b5
                    00B5    275 _PCONA	=	0x00b5
                    00F6    276 G$PT0AD$0$0 == 0x00f6
                    00F6    277 _PT0AD	=	0x00f6
                    00DF    278 G$RSTSRC$0$0 == 0x00df
                    00DF    279 _RSTSRC	=	0x00df
                    00D1    280 G$RTCCON$0$0 == 0x00d1
                    00D1    281 _RTCCON	=	0x00d1
                    00D2    282 G$RTCH$0$0 == 0x00d2
                    00D2    283 _RTCH	=	0x00d2
                    00D3    284 G$RTCL$0$0 == 0x00d3
                    00D3    285 _RTCL	=	0x00d3
                    00BA    286 G$SSTAT$0$0 == 0x00ba
                    00BA    287 _SSTAT	=	0x00ba
                    008F    288 G$TAMOD$0$0 == 0x008f
                    008F    289 _TAMOD	=	0x008f
                    0096    290 G$TRIM$0$0 == 0x0096
                    0096    291 _TRIM	=	0x0096
                    00A7    292 G$WDCON$0$0 == 0x00a7
                    00A7    293 _WDCON	=	0x00a7
                    00C1    294 G$WDL$0$0 == 0x00c1
                    00C1    295 _WDL	=	0x00c1
                    00C2    296 G$WFEED1$0$0 == 0x00c2
                    00C2    297 _WFEED1	=	0x00c2
                    00C3    298 G$WFEED2$0$0 == 0x00c3
                    00C3    299 _WFEED2	=	0x00c3
                    00B7    300 G$IP0H$0$0 == 0x00b7
                    00B7    301 _IP0H	=	0x00b7
                    00E8    302 G$IEN1$0$0 == 0x00e8
                    00E8    303 _IEN1	=	0x00e8
                            304 ;--------------------------------------------------------
                            305 ; special function bits
                            306 ;--------------------------------------------------------
                            307 	.area RSEG    (ABS,DATA)
   0000                     308 	.org 0x0000
                    00D0    309 G$PSW_0$0$0 == 0x00d0
                    00D0    310 _PSW_0	=	0x00d0
                    00D1    311 G$PSW_1$0$0 == 0x00d1
                    00D1    312 _PSW_1	=	0x00d1
                    00D2    313 G$PSW_2$0$0 == 0x00d2
                    00D2    314 _PSW_2	=	0x00d2
                    00D3    315 G$PSW_3$0$0 == 0x00d3
                    00D3    316 _PSW_3	=	0x00d3
                    00D4    317 G$PSW_4$0$0 == 0x00d4
                    00D4    318 _PSW_4	=	0x00d4
                    00D5    319 G$PSW_5$0$0 == 0x00d5
                    00D5    320 _PSW_5	=	0x00d5
                    00D6    321 G$PSW_6$0$0 == 0x00d6
                    00D6    322 _PSW_6	=	0x00d6
                    00D7    323 G$PSW_7$0$0 == 0x00d7
                    00D7    324 _PSW_7	=	0x00d7
                    008F    325 G$TCON_7$0$0 == 0x008f
                    008F    326 _TCON_7	=	0x008f
                    008E    327 G$TCON_6$0$0 == 0x008e
                    008E    328 _TCON_6	=	0x008e
                    008D    329 G$TCON_5$0$0 == 0x008d
                    008D    330 _TCON_5	=	0x008d
                    008C    331 G$TCON_4$0$0 == 0x008c
                    008C    332 _TCON_4	=	0x008c
                    008B    333 G$TCON_3$0$0 == 0x008b
                    008B    334 _TCON_3	=	0x008b
                    008A    335 G$TCON_2$0$0 == 0x008a
                    008A    336 _TCON_2	=	0x008a
                    0089    337 G$TCON_1$0$0 == 0x0089
                    0089    338 _TCON_1	=	0x0089
                    0088    339 G$TCON_0$0$0 == 0x0088
                    0088    340 _TCON_0	=	0x0088
                    00AF    341 G$IEN0_7$0$0 == 0x00af
                    00AF    342 _IEN0_7	=	0x00af
                    00AE    343 G$IEN0_6$0$0 == 0x00ae
                    00AE    344 _IEN0_6	=	0x00ae
                    00AD    345 G$IEN0_5$0$0 == 0x00ad
                    00AD    346 _IEN0_5	=	0x00ad
                    00AC    347 G$IEN0_4$0$0 == 0x00ac
                    00AC    348 _IEN0_4	=	0x00ac
                    00AB    349 G$IEN0_3$0$0 == 0x00ab
                    00AB    350 _IEN0_3	=	0x00ab
                    00AA    351 G$IEN0_2$0$0 == 0x00aa
                    00AA    352 _IEN0_2	=	0x00aa
                    00A9    353 G$IEN0_1$0$0 == 0x00a9
                    00A9    354 _IEN0_1	=	0x00a9
                    00A8    355 G$IEN0_0$0$0 == 0x00a8
                    00A8    356 _IEN0_0	=	0x00a8
                    00EA    357 G$IEN1_2$0$0 == 0x00ea
                    00EA    358 _IEN1_2	=	0x00ea
                    00E9    359 G$IEN1_1$0$0 == 0x00e9
                    00E9    360 _IEN1_1	=	0x00e9
                    00E8    361 G$IEN1_0$0$0 == 0x00e8
                    00E8    362 _IEN1_0	=	0x00e8
                    00FE    363 G$IP1_6$0$0 == 0x00fe
                    00FE    364 _IP1_6	=	0x00fe
                    00FA    365 G$IP1_2$0$0 == 0x00fa
                    00FA    366 _IP1_2	=	0x00fa
                    00F9    367 G$IP1_1$0$0 == 0x00f9
                    00F9    368 _IP1_1	=	0x00f9
                    00F8    369 G$IP1_0$0$0 == 0x00f8
                    00F8    370 _IP1_0	=	0x00f8
                    00BE    371 G$IP0_6$0$0 == 0x00be
                    00BE    372 _IP0_6	=	0x00be
                    00BD    373 G$IP0_5$0$0 == 0x00bd
                    00BD    374 _IP0_5	=	0x00bd
                    00BC    375 G$IP0_4$0$0 == 0x00bc
                    00BC    376 _IP0_4	=	0x00bc
                    00BB    377 G$IP0_3$0$0 == 0x00bb
                    00BB    378 _IP0_3	=	0x00bb
                    00BA    379 G$IP0_2$0$0 == 0x00ba
                    00BA    380 _IP0_2	=	0x00ba
                    00B9    381 G$IP0_1$0$0 == 0x00b9
                    00B9    382 _IP0_1	=	0x00b9
                    00B8    383 G$IP0_0$0$0 == 0x00b8
                    00B8    384 _IP0_0	=	0x00b8
                    0098    385 G$SCON_0$0$0 == 0x0098
                    0098    386 _SCON_0	=	0x0098
                    0099    387 G$SCON_1$0$0 == 0x0099
                    0099    388 _SCON_1	=	0x0099
                    009A    389 G$SCON_2$0$0 == 0x009a
                    009A    390 _SCON_2	=	0x009a
                    009B    391 G$SCON_3$0$0 == 0x009b
                    009B    392 _SCON_3	=	0x009b
                    009C    393 G$SCON_4$0$0 == 0x009c
                    009C    394 _SCON_4	=	0x009c
                    009D    395 G$SCON_5$0$0 == 0x009d
                    009D    396 _SCON_5	=	0x009d
                    009E    397 G$SCON_6$0$0 == 0x009e
                    009E    398 _SCON_6	=	0x009e
                    009F    399 G$SCON_7$0$0 == 0x009f
                    009F    400 _SCON_7	=	0x009f
                    00DE    401 G$I2CON_6$0$0 == 0x00de
                    00DE    402 _I2CON_6	=	0x00de
                    00DD    403 G$I2CON_5$0$0 == 0x00dd
                    00DD    404 _I2CON_5	=	0x00dd
                    00DC    405 G$I2CON_4$0$0 == 0x00dc
                    00DC    406 _I2CON_4	=	0x00dc
                    00DB    407 G$I2CON_3$0$0 == 0x00db
                    00DB    408 _I2CON_3	=	0x00db
                    00DA    409 G$I2CON_2$0$0 == 0x00da
                    00DA    410 _I2CON_2	=	0x00da
                    00D8    411 G$I2CON_0$0$0 == 0x00d8
                    00D8    412 _I2CON_0	=	0x00d8
                    0080    413 G$P0_0$0$0 == 0x0080
                    0080    414 _P0_0	=	0x0080
                    0081    415 G$P0_1$0$0 == 0x0081
                    0081    416 _P0_1	=	0x0081
                    0082    417 G$P0_2$0$0 == 0x0082
                    0082    418 _P0_2	=	0x0082
                    0083    419 G$P0_3$0$0 == 0x0083
                    0083    420 _P0_3	=	0x0083
                    0084    421 G$P0_4$0$0 == 0x0084
                    0084    422 _P0_4	=	0x0084
                    0085    423 G$P0_5$0$0 == 0x0085
                    0085    424 _P0_5	=	0x0085
                    0086    425 G$P0_6$0$0 == 0x0086
                    0086    426 _P0_6	=	0x0086
                    0087    427 G$P0_7$0$0 == 0x0087
                    0087    428 _P0_7	=	0x0087
                    0090    429 G$P1_0$0$0 == 0x0090
                    0090    430 _P1_0	=	0x0090
                    0091    431 G$P1_1$0$0 == 0x0091
                    0091    432 _P1_1	=	0x0091
                    0092    433 G$P1_2$0$0 == 0x0092
                    0092    434 _P1_2	=	0x0092
                    0093    435 G$P1_3$0$0 == 0x0093
                    0093    436 _P1_3	=	0x0093
                    0094    437 G$P1_4$0$0 == 0x0094
                    0094    438 _P1_4	=	0x0094
                    0095    439 G$P1_5$0$0 == 0x0095
                    0095    440 _P1_5	=	0x0095
                    0096    441 G$P1_6$0$0 == 0x0096
                    0096    442 _P1_6	=	0x0096
                    0097    443 G$P1_7$0$0 == 0x0097
                    0097    444 _P1_7	=	0x0097
                    00B0    445 G$P3_0$0$0 == 0x00b0
                    00B0    446 _P3_0	=	0x00b0
                    00B1    447 G$P3_1$0$0 == 0x00b1
                    00B1    448 _P3_1	=	0x00b1
                            449 ;--------------------------------------------------------
                            450 ; overlayable register banks
                            451 ;--------------------------------------------------------
                            452 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     453 	.ds 8
                            454 ;--------------------------------------------------------
                            455 ; overlayable bit register bank
                            456 ;--------------------------------------------------------
                            457 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     458 bits:
   0023                     459 	.ds 1
                    8000    460 	b0 = bits[0]
                    8100    461 	b1 = bits[1]
                    8200    462 	b2 = bits[2]
                    8300    463 	b3 = bits[3]
                    8400    464 	b4 = bits[4]
                    8500    465 	b5 = bits[5]
                    8600    466 	b6 = bits[6]
                    8700    467 	b7 = bits[7]
                            468 ;--------------------------------------------------------
                            469 ; internal ram data
                            470 ;--------------------------------------------------------
                            471 	.area DSEG    (DATA)
                    0000    472 G$timer$0$0==.
   0024                     473 _timer::
   0024                     474 	.ds 2
                    0002    475 G$timerflags$0$0==.
   0026                     476 _timerflags::
   0026                     477 	.ds 2
                    0004    478 G$button_buffer$0$0==.
   0028                     479 _button_buffer::
   0028                     480 	.ds 1
                    0005    481 G$LEDSTATE$0$0==.
   0029                     482 _LEDSTATE::
   0029                     483 	.ds 1
                    0006    484 G$dimmcompare$0$0==.
   002A                     485 _dimmcompare::
   002A                     486 	.ds 1
                    0007    487 G$dimmwert$0$0==.
   002B                     488 _dimmwert::
   002B                     489 	.ds 1
                    0008    490 G$timercnt$0$0==.
   002C                     491 _timercnt::
   002C                     492 	.ds 8
                    0010    493 G$timerbase$0$0==.
   0034                     494 _timerbase::
   0034                     495 	.ds 8
                    0018    496 G$timerstate$0$0==.
   003C                     497 _timerstate::
   003C                     498 	.ds 8
                            499 ;--------------------------------------------------------
                            500 ; overlayable items in internal ram 
                            501 ;--------------------------------------------------------
                            502 	.area OSEG    (OVR,DATA)
                            503 ;--------------------------------------------------------
                            504 ; indirectly addressable internal ram data
                            505 ;--------------------------------------------------------
                            506 	.area ISEG    (DATA)
                            507 ;--------------------------------------------------------
                            508 ; absolute internal ram data
                            509 ;--------------------------------------------------------
                            510 	.area IABS    (ABS,DATA)
                            511 	.area IABS    (ABS,DATA)
                            512 ;--------------------------------------------------------
                            513 ; bit data
                            514 ;--------------------------------------------------------
                            515 	.area BSEG    (BIT)
                    0000    516 G$delay_toggle$0$0==.
   0000                     517 _delay_toggle::
   0000                     518 	.ds 1
                            519 ;--------------------------------------------------------
                            520 ; paged external ram data
                            521 ;--------------------------------------------------------
                            522 	.area PSEG    (PAG,XDATA)
                            523 ;--------------------------------------------------------
                            524 ; external ram data
                            525 ;--------------------------------------------------------
                            526 	.area XSEG    (XDATA)
                            527 ;--------------------------------------------------------
                            528 ; absolute external ram data
                            529 ;--------------------------------------------------------
                            530 	.area XABS    (ABS,XDATA)
                            531 ;--------------------------------------------------------
                            532 ; external initialized ram data
                            533 ;--------------------------------------------------------
                            534 	.area XISEG   (XDATA)
                            535 	.area HOME    (CODE)
                            536 	.area GSINIT0 (CODE)
                            537 	.area GSINIT1 (CODE)
                            538 	.area GSINIT2 (CODE)
                            539 	.area GSINIT3 (CODE)
                            540 	.area GSINIT4 (CODE)
                            541 	.area GSINIT5 (CODE)
                            542 	.area GSINIT  (CODE)
                            543 	.area GSFINAL (CODE)
                            544 	.area CSEG    (CODE)
                            545 ;--------------------------------------------------------
                            546 ; global & static initialisations
                            547 ;--------------------------------------------------------
                            548 	.area HOME    (CODE)
                            549 	.area GSINIT  (CODE)
                            550 	.area GSFINAL (CODE)
                            551 	.area GSINIT  (CODE)
                            552 ;--------------------------------------------------------
                            553 ; Home
                            554 ;--------------------------------------------------------
                            555 	.area HOME    (CODE)
                            556 	.area HOME    (CODE)
                            557 ;--------------------------------------------------------
                            558 ; code
                            559 ;--------------------------------------------------------
                            560 	.area CSEG    (CODE)
                            561 ;------------------------------------------------------------
                            562 ;Allocation info for local variables in function 'port_changed'
                            563 ;------------------------------------------------------------
                            564 ;portval                   Allocated to registers r7 
                            565 ;n                         Allocated to registers r5 
                            566 ;oldvalue                  Allocated to registers r6 
                            567 ;buttonpattern             Allocated to registers r5 
                            568 ;------------------------------------------------------------
                    0000    569 	G$port_changed$0$0 ==.
                    0000    570 	C$fb_app_taster.c$44$0$0 ==.
                            571 ;	../fb_app_taster.c:44: void port_changed(unsigned char portval)
                            572 ;	-----------------------------------------
                            573 ;	 function port_changed
                            574 ;	-----------------------------------------
   02C9                     575 _port_changed:
                    0007    576 	ar7 = 0x07
                    0006    577 	ar6 = 0x06
                    0005    578 	ar5 = 0x05
                    0004    579 	ar4 = 0x04
                    0003    580 	ar3 = 0x03
                    0002    581 	ar2 = 0x02
                    0001    582 	ar1 = 0x01
                    0000    583 	ar0 = 0x00
   02C9 AF 82               584 	mov	r7,dpl
                    0002    585 	C$fb_app_taster.c$55$1$1 ==.
                            586 ;	../fb_app_taster.c:55: oldvalue=dimmcompare;
   02CB AE 2A               587 	mov	r6,_dimmcompare
                    0004    588 	C$fb_app_taster.c$56$2$1 ==.
                            589 ;	../fb_app_taster.c:56: do{
   02CD 7D 00               590 	mov	r5,#0x00
   02CF                     591 00103$:
                    0006    592 	C$fb_app_taster.c$57$2$2 ==.
                            593 ;	../fb_app_taster.c:57: if (oldvalue!=dimmcompare)// dimmcompare wird in der ISR T0 erhöht
   02CF EE                  594 	mov	a,r6
   02D0 B5 2A 02            595 	cjne	a,_dimmcompare,00132$
   02D3 80 03               596 	sjmp	00104$
   02D5                     597 00132$:
                    000C    598 	C$fb_app_taster.c$59$3$3 ==.
                            599 ;	../fb_app_taster.c:59: n++;
   02D5 0D                  600 	inc	r5
                    000D    601 	C$fb_app_taster.c$60$3$3 ==.
                            602 ;	../fb_app_taster.c:60: oldvalue=dimmcompare;
   02D6 AE 2A               603 	mov	r6,_dimmcompare
   02D8                     604 00104$:
                    000F    605 	C$fb_app_taster.c$63$1$1 ==.
                            606 ;	../fb_app_taster.c:63: while (n<=200);				// warten auf 200 x Timer 0 (0.05ms)= 10ms
   02D8 ED                  607 	mov	a,r5
   02D9 24 37               608 	add	a,#0xff - 0xC8
   02DB 50 F2               609 	jnc	00103$
                    0014    610 	C$fb_app_taster.c$64$1$1 ==.
                            611 ;	../fb_app_taster.c:64: if ((PORT & 0x0F) == portval) {
   02DD 74 0F               612 	mov	a,#0x0F
   02DF 55 80               613 	anl	a,_P0
   02E1 FE                  614 	mov	r6,a
   02E2 B5 07 53            615 	cjne	a,ar7,00118$
                    001C    616 	C$fb_app_taster.c$65$2$1 ==.
                            617 ;	../fb_app_taster.c:65: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
   02E5 7E 00               618 	mov	r6,#0x00
   02E7                     619 00114$:
   02E7 BE 04 00            620 	cjne	r6,#0x04,00136$
   02EA                     621 00136$:
   02EA 50 4A               622 	jnc	00117$
                    0023    623 	C$fb_app_taster.c$66$3$5 ==.
                            624 ;	../fb_app_taster.c:66: buttonpattern=1<<n;
   02EC 8E F0               625 	mov	b,r6
   02EE 05 F0               626 	inc	b
   02F0 74 01               627 	mov	a,#0x01
   02F2 80 02               628 	sjmp	00140$
   02F4                     629 00138$:
   02F4 25 E0               630 	add	a,acc
   02F6                     631 00140$:
   02F6 D5 F0 FB            632 	djnz	b,00138$
                    0030    633 	C$fb_app_taster.c$67$3$5 ==.
                            634 ;	../fb_app_taster.c:67: if ((portval & buttonpattern) && !(button_buffer & buttonpattern)) button_changed(n,0);	// Taster losgelassen
   02F9 FD                  635 	mov	r5,a
   02FA 5F                  636 	anl	a,r7
   02FB 60 1B               637 	jz	00107$
   02FD ED                  638 	mov	a,r5
   02FE 55 28               639 	anl	a,_button_buffer
   0300 70 16               640 	jnz	00107$
   0302 C2 F0               641 	clr	b[0]
   0304 C0 07               642 	push	ar7
   0306 C0 06               643 	push	ar6
   0308 C0 05               644 	push	ar5
   030A 85 F0 23            645 	mov	bits,b
   030D 8E 82               646 	mov	dpl,r6
   030F 12 03 39            647 	lcall	_button_changed
   0312 D0 05               648 	pop	ar5
   0314 D0 06               649 	pop	ar6
   0316 D0 07               650 	pop	ar7
   0318                     651 00107$:
                    004F    652 	C$fb_app_taster.c$68$3$5 ==.
                            653 ;	../fb_app_taster.c:68: if (!(portval & buttonpattern) && (button_buffer & buttonpattern)) button_changed(n,1);	// Taster gedrueckt
   0318 ED                  654 	mov	a,r5
   0319 5F                  655 	anl	a,r7
   031A 70 17               656 	jnz	00116$
   031C ED                  657 	mov	a,r5
   031D 55 28               658 	anl	a,_button_buffer
   031F 60 12               659 	jz	00116$
   0321 D2 F0               660 	setb	b[0]
   0323 C0 07               661 	push	ar7
   0325 C0 06               662 	push	ar6
   0327 85 F0 23            663 	mov	bits,b
   032A 8E 82               664 	mov	dpl,r6
   032C 12 03 39            665 	lcall	_button_changed
   032F D0 06               666 	pop	ar6
   0331 D0 07               667 	pop	ar7
   0333                     668 00116$:
                    006A    669 	C$fb_app_taster.c$65$2$4 ==.
                            670 ;	../fb_app_taster.c:65: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
   0333 0E                  671 	inc	r6
   0334 80 B1               672 	sjmp	00114$
   0336                     673 00117$:
                    006D    674 	C$fb_app_taster.c$70$2$4 ==.
                            675 ;	../fb_app_taster.c:70: button_buffer=portval;	// aktuellen port wert in buffer fuer naechsten Vergleich uebernehmen
   0336 8F 28               676 	mov	_button_buffer,r7
   0338                     677 00118$:
                    006F    678 	C$fb_app_taster.c$72$2$1 ==.
                    006F    679 	XG$port_changed$0$0 ==.
   0338 22                  680 	ret
                            681 ;------------------------------------------------------------
                            682 ;Allocation info for local variables in function 'button_changed'
                            683 ;------------------------------------------------------------
                            684 ;buttonval                 Allocated to registers b0 
                            685 ;buttonno                  Allocated to stack - _bp +1
                            686 ;command                   Allocated to registers r6 
                            687 ;bedienung                 Allocated to registers r5 
                            688 ;objval                    Allocated to registers b1 
                            689 ;------------------------------------------------------------
                    0070    690 	G$button_changed$0$0 ==.
                    0070    691 	C$fb_app_taster.c$85$2$1 ==.
                            692 ;	../fb_app_taster.c:85: void button_changed( unsigned char buttonno, __bit buttonval)
                            693 ;	-----------------------------------------
                            694 ;	 function button_changed
                            695 ;	-----------------------------------------
   0339                     696 _button_changed:
   0339 C0 14               697 	push	_bp
   033B 85 81 14            698 	mov	_bp,sp
   033E C0 82               699 	push	dpl
                    0077    700 	C$fb_app_taster.c$88$1$1 ==.
                            701 ;	../fb_app_taster.c:88: __bit objval=0;
   0340 C2 19               702 	clr	b1
                    0079    703 	C$fb_app_taster.c$90$1$1 ==.
                            704 ;	../fb_app_taster.c:90: switch ((eeprom[FUNCTION+(buttonno>>1)] >> ((buttonno & 0x01)*4)) & 0x0F) {		// Funktion des Tasters
   0342 A8 14               705 	mov	r0,_bp
   0344 08                  706 	inc	r0
   0345 E6                  707 	mov	a,@r0
   0346 C3                  708 	clr	c
   0347 13                  709 	rrc	a
   0348 24 CF               710 	add	a,#0xCF
   034A 90 1D 00            711 	mov	dptr,#_eeprom
   034D 93                  712 	movc	a,@a+dptr
   034E FE                  713 	mov	r6,a
   034F A8 14               714 	mov	r0,_bp
   0351 08                  715 	inc	r0
   0352 74 01               716 	mov	a,#0x01
   0354 56                  717 	anl	a,@r0
   0355 75 F0 04            718 	mov	b,#0x04
   0358 A4                  719 	mul	ab
   0359 F5 F0               720 	mov	b,a
   035B 05 F0               721 	inc	b
   035D EE                  722 	mov	a,r6
   035E 80 02               723 	sjmp	00171$
   0360                     724 00170$:
   0360 C3                  725 	clr	c
   0361 13                  726 	rrc	a
   0362                     727 00171$:
   0362 D5 F0 FB            728 	djnz	b,00170$
   0365 54 0F               729 	anl	a,#0x0F
   0367 FE                  730 	mov	r6,a
   0368 BE 01 02            731 	cjne	r6,#0x01,00172$
   036B 80 0F               732 	sjmp	00101$
   036D                     733 00172$:
   036D BE 02 03            734 	cjne	r6,#0x02,00173$
   0370 02 04 1F            735 	ljmp	00111$
   0373                     736 00173$:
   0373 BE 03 03            737 	cjne	r6,#0x03,00174$
   0376 02 05 B6            738 	ljmp	00139$
   0379                     739 00174$:
   0379 02 06 86            740 	ljmp	00147$
                    00B3    741 	C$fb_app_taster.c$95$2$2 ==.
                            742 ;	../fb_app_taster.c:95: case 1:
   037C                     743 00101$:
                    00B3    744 	C$fb_app_taster.c$96$2$2 ==.
                            745 ;	../fb_app_taster.c:96: if (buttonval) command = (((eeprom[COMMAND+(buttonno*4)]) >> 6) & 0x03);	// Befehl beim druecken
   037C 30 18 18            746 	jnb	b0,00103$
   037F A8 14               747 	mov	r0,_bp
   0381 08                  748 	inc	r0
   0382 E6                  749 	mov	a,@r0
   0383 25 E0               750 	add	a,acc
   0385 25 E0               751 	add	a,acc
   0387 24 D3               752 	add	a,#0xD3
   0389 90 1D 00            753 	mov	dptr,#_eeprom
   038C 93                  754 	movc	a,@a+dptr
   038D 23                  755 	rl	a
   038E 23                  756 	rl	a
   038F 54 03               757 	anl	a,#0x03
   0391 FE                  758 	mov	r6,a
   0392 53 06 03            759 	anl	ar6,#0x03
   0395 80 16               760 	sjmp	00104$
   0397                     761 00103$:
                    00CE    762 	C$fb_app_taster.c$97$2$2 ==.
                            763 ;	../fb_app_taster.c:97: else command = (((eeprom[COMMAND+(buttonno*4)]) >> 4) & 0x03);				// Befehl beim loslassen
   0397 A8 14               764 	mov	r0,_bp
   0399 08                  765 	inc	r0
   039A E6                  766 	mov	a,@r0
   039B 25 E0               767 	add	a,acc
   039D 25 E0               768 	add	a,acc
   039F 24 D3               769 	add	a,#0xD3
   03A1 90 1D 00            770 	mov	dptr,#_eeprom
   03A4 93                  771 	movc	a,@a+dptr
   03A5 C4                  772 	swap	a
   03A6 54 0F               773 	anl	a,#0x0F
   03A8 FD                  774 	mov	r5,a
   03A9 74 03               775 	mov	a,#0x03
   03AB 5D                  776 	anl	a,r5
   03AC FE                  777 	mov	r6,a
   03AD                     778 00104$:
                    00E4    779 	C$fb_app_taster.c$98$2$2 ==.
                            780 ;	../fb_app_taster.c:98: switch (command) {	// Befehl des Tasters bei Schalten
   03AD BE 01 02            781 	cjne	r6,#0x01,00176$
   03B0 80 0A               782 	sjmp	00105$
   03B2                     783 00176$:
   03B2 BE 02 02            784 	cjne	r6,#0x02,00177$
   03B5 80 09               785 	sjmp	00106$
   03B7                     786 00177$:
                    00EE    787 	C$fb_app_taster.c$99$3$3 ==.
                            788 ;	../fb_app_taster.c:99: case 1:		// EIN
   03B7 BE 03 26            789 	cjne	r6,#0x03,00108$
   03BA 80 22               790 	sjmp	00107$
   03BC                     791 00105$:
                    00F3    792 	C$fb_app_taster.c$100$3$3 ==.
                            793 ;	../fb_app_taster.c:100: objval=1;
   03BC D2 19               794 	setb	b1
                    00F5    795 	C$fb_app_taster.c$101$3$3 ==.
                            796 ;	../fb_app_taster.c:101: break;
                    00F5    797 	C$fb_app_taster.c$102$3$3 ==.
                            798 ;	../fb_app_taster.c:102: case 2:		// UM
   03BE 80 20               799 	sjmp	00108$
   03C0                     800 00106$:
                    00F7    801 	C$fb_app_taster.c$103$3$3 ==.
                            802 ;	../fb_app_taster.c:103: objval = read_obj_value(buttonno)&0x01;
   03C0 A8 14               803 	mov	r0,_bp
   03C2 08                  804 	inc	r0
   03C3 86 82               805 	mov	dpl,@r0
   03C5 C0 06               806 	push	ar6
   03C7 12 06 8B            807 	lcall	_read_obj_value
   03CA AA 82               808 	mov	r2,dpl
   03CC AB 83               809 	mov	r3,dph
   03CE AC F0               810 	mov	r4,b
   03D0 FD                  811 	mov	r5,a
   03D1 D0 06               812 	pop	ar6
   03D3 EA                  813 	mov	a,r2
   03D4 54 01               814 	anl	a,#0x01
   03D6 FA                  815 	mov	r2,a
   03D7 24 FF               816 	add	a,#0xff
                    0110    817 	C$fb_app_taster.c$104$3$3 ==.
                            818 ;	../fb_app_taster.c:104: objval = !objval;
   03D9 B3                  819 	cpl	c
   03DA 92 19               820 	mov	b1,c
                    0113    821 	C$fb_app_taster.c$105$3$3 ==.
                            822 ;	../fb_app_taster.c:105: break;
                    0113    823 	C$fb_app_taster.c$106$3$3 ==.
                            824 ;	../fb_app_taster.c:106: case 3:		// AUS
   03DC 80 02               825 	sjmp	00108$
   03DE                     826 00107$:
                    0115    827 	C$fb_app_taster.c$107$3$3 ==.
                            828 ;	../fb_app_taster.c:107: objval=0;
   03DE C2 19               829 	clr	b1
                    0117    830 	C$fb_app_taster.c$109$2$2 ==.
                            831 ;	../fb_app_taster.c:109: }
   03E0                     832 00108$:
                    0117    833 	C$fb_app_taster.c$110$2$2 ==.
                            834 ;	../fb_app_taster.c:110: if (command) {	// nur wenn EIN, UM oder AUS (0=keine Funktion)
   03E0 EE                  835 	mov	a,r6
   03E1 70 03               836 	jnz	00179$
   03E3 02 06 86            837 	ljmp	00147$
   03E6                     838 00179$:
                    011D    839 	C$fb_app_taster.c$112$3$4 ==.
                            840 ;	../fb_app_taster.c:112: write_obj_value(buttonno,objval);
   03E6 A2 19               841 	mov	c,b1
   03E8 E4                  842 	clr	a
   03E9 33                  843 	rlc	a
   03EA FD                  844 	mov	r5,a
   03EB 7E 00               845 	mov	r6,#0x00
   03ED C0 23               846 	push	bits
   03EF C0 05               847 	push	ar5
   03F1 C0 06               848 	push	ar6
   03F3 A8 14               849 	mov	r0,_bp
   03F5 08                  850 	inc	r0
   03F6 86 82               851 	mov	dpl,@r0
   03F8 12 06 CD            852 	lcall	_write_obj_value
   03FB 15 81               853 	dec	sp
   03FD 15 81               854 	dec	sp
   03FF D0 23               855 	pop	bits
                    0138    856 	C$fb_app_taster.c$113$3$4 ==.
                            857 ;	../fb_app_taster.c:113: send_obj_value(buttonno);
   0401 A8 14               858 	mov	r0,_bp
   0403 08                  859 	inc	r0
   0404 86 82               860 	mov	dpl,@r0
   0406 C0 23               861 	push	bits
   0408 12 14 82            862 	lcall	_send_obj_value
   040B D0 23               863 	pop	bits
                    0144    864 	C$fb_app_taster.c$115$3$4 ==.
                            865 ;	../fb_app_taster.c:115: switch_led(buttonno, objval);		// LED schalten
   040D A2 19               866 	mov	c,b1
   040F 92 F0               867 	mov	b[0],c
   0411 85 F0 23            868 	mov	bits,b
   0414 A8 14               869 	mov	r0,_bp
   0416 08                  870 	inc	r0
   0417 86 82               871 	mov	dpl,@r0
   0419 12 07 BB            872 	lcall	_switch_led
                    0153    873 	C$fb_app_taster.c$117$2$2 ==.
                            874 ;	../fb_app_taster.c:117: break;
   041C 02 06 86            875 	ljmp	00147$
                    0156    876 	C$fb_app_taster.c$123$2$2 ==.
                            877 ;	../fb_app_taster.c:123: case 2:
   041F                     878 00111$:
                    0156    879 	C$fb_app_taster.c$124$2$2 ==.
                            880 ;	../fb_app_taster.c:124: bedienung=eeprom[COMMAND+(buttonno*4)]&0x30;
   041F A8 14               881 	mov	r0,_bp
   0421 08                  882 	inc	r0
   0422 E6                  883 	mov	a,@r0
   0423 25 E0               884 	add	a,acc
   0425 25 E0               885 	add	a,acc
   0427 FE                  886 	mov	r6,a
   0428 24 D3               887 	add	a,#0xD3
   042A 90 1D 00            888 	mov	dptr,#_eeprom
   042D 93                  889 	movc	a,@a+dptr
   042E FD                  890 	mov	r5,a
   042F 53 05 30            891 	anl	ar5,#0x30
                    0169    892 	C$fb_app_taster.c$125$2$2 ==.
                            893 ;	../fb_app_taster.c:125: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
   0432 20 18 03            894 	jb	b0,00180$
   0435 02 04 DD            895 	ljmp	00137$
   0438                     896 00180$:
                    016F    897 	C$fb_app_taster.c$126$3$5 ==.
                            898 ;	../fb_app_taster.c:126: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
   0438 74 D3               899 	mov	a,#0xD3
   043A 2E                  900 	add	a,r6
   043B 90 1D 00            901 	mov	dptr,#_eeprom
   043E 93                  902 	movc	a,@a+dptr
   043F FC                  903 	mov	r4,a
   0440 30 E2 15            904 	jnb	acc.2,00113$
   0443 C2 F0               905 	clr	b[0]
   0445 C0 06               906 	push	ar6
   0447 C0 05               907 	push	ar5
   0449 85 F0 23            908 	mov	bits,b
   044C A8 14               909 	mov	r0,_bp
   044E 08                  910 	inc	r0
   044F 86 82               911 	mov	dpl,@r0
   0451 12 07 BB            912 	lcall	_switch_led
   0454 D0 05               913 	pop	ar5
   0456 D0 06               914 	pop	ar6
   0458                     915 00113$:
                    018F    916 	C$fb_app_taster.c$127$3$5 ==.
                            917 ;	../fb_app_taster.c:127: timercnt[buttonno+4]=eeprom[0xD6+(buttonno*4)];	// Faktor Dauer
   0458 A8 14               918 	mov	r0,_bp
   045A 08                  919 	inc	r0
   045B 74 04               920 	mov	a,#0x04
   045D 26                  921 	add	a,@r0
   045E FC                  922 	mov	r4,a
   045F 24 2C               923 	add	a,#_timercnt
   0461 F9                  924 	mov	r1,a
   0462 74 D6               925 	mov	a,#0xD6
   0464 2E                  926 	add	a,r6
   0465 90 1D 00            927 	mov	dptr,#_eeprom
   0468 93                  928 	movc	a,@a+dptr
   0469 FB                  929 	mov	r3,a
   046A F7                  930 	mov	@r1,a
                    01A2    931 	C$fb_app_taster.c$142$3$5 ==.
                            932 ;	../fb_app_taster.c:142: */			timerbase[buttonno+4]=(eeprom[0xD5+(buttonno*4)]&0x70)>>4;// Basis Dauer zwischen kurz und langzeit
   046B EC                  933 	mov	a,r4
   046C 24 34               934 	add	a,#_timerbase
   046E F9                  935 	mov	r1,a
   046F 74 D5               936 	mov	a,#0xD5
   0471 2E                  937 	add	a,r6
   0472 90 1D 00            938 	mov	dptr,#_eeprom
   0475 93                  939 	movc	a,@a+dptr
   0476 54 70               940 	anl	a,#0x70
   0478 C4                  941 	swap	a
   0479 54 0F               942 	anl	a,#0x0F
   047B FC                  943 	mov	r4,a
   047C F7                  944 	mov	@r1,a
                    01B4    945 	C$fb_app_taster.c$143$3$5 ==.
                            946 ;	../fb_app_taster.c:143: if (bedienung==0x20) {// umschalten der dimmrichtung...
   047D BD 20 1F            947 	cjne	r5,#0x20,00118$
                    01B7    948 	C$fb_app_taster.c$144$1$1 ==.
                            949 ;	../fb_app_taster.c:144: if(read_obj_value(buttonno+8)&0x08)bedienung=0x30;//wenn heller, dann dunkler
   0480 C0 06               950 	push	ar6
   0482 A8 14               951 	mov	r0,_bp
   0484 08                  952 	inc	r0
   0485 74 08               953 	mov	a,#0x08
   0487 26                  954 	add	a,@r0
   0488 F5 82               955 	mov	dpl,a
   048A 12 06 8B            956 	lcall	_read_obj_value
   048D AA 82               957 	mov	r2,dpl
   048F AB 83               958 	mov	r3,dph
   0491 AC F0               959 	mov	r4,b
   0493 EA                  960 	mov	a,r2
   0494 D0 06               961 	pop	ar6
   0496 30 E3 04            962 	jnb	acc.3,00115$
   0499 7D 30               963 	mov	r5,#0x30
   049B 80 02               964 	sjmp	00118$
   049D                     965 00115$:
                    01D4    966 	C$fb_app_taster.c$145$4$6 ==.
                            967 ;	../fb_app_taster.c:145: else bedienung=0x10;//sonst heller
   049D 7D 10               968 	mov	r5,#0x10
   049F                     969 00118$:
                    01D6    970 	C$fb_app_taster.c$147$3$5 ==.
                            971 ;	../fb_app_taster.c:147: if (bedienung==0x10){	// heller
   049F BD 10 19            972 	cjne	r5,#0x10,00120$
                    01D9    973 	C$fb_app_taster.c$148$4$7 ==.
                            974 ;	../fb_app_taster.c:148: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0xF0)>>4)+0x20;	// dimmen
   04A2 A8 14               975 	mov	r0,_bp
   04A4 08                  976 	inc	r0
   04A5 74 04               977 	mov	a,#0x04
   04A7 26                  978 	add	a,@r0
   04A8 24 3C               979 	add	a,#_timerstate
   04AA F9                  980 	mov	r1,a
   04AB 74 D4               981 	mov	a,#0xD4
   04AD 2E                  982 	add	a,r6
   04AE 90 1D 00            983 	mov	dptr,#_eeprom
   04B1 93                  984 	movc	a,@a+dptr
   04B2 54 F0               985 	anl	a,#0xF0
   04B4 C4                  986 	swap	a
   04B5 54 0F               987 	anl	a,#0x0F
   04B7 FC                  988 	mov	r4,a
   04B8 24 20               989 	add	a,#0x20
   04BA F7                  990 	mov	@r1,a
   04BB                     991 00120$:
                    01F2    992 	C$fb_app_taster.c$150$3$5 ==.
                            993 ;	../fb_app_taster.c:150: if(bedienung==0x30){	//  dunkler
   04BB BD 30 02            994 	cjne	r5,#0x30,00187$
   04BE 80 03               995 	sjmp	00188$
   04C0                     996 00187$:
   04C0 02 06 86            997 	ljmp	00147$
   04C3                     998 00188$:
                    01FA    999 	C$fb_app_taster.c$151$4$8 ==.
                           1000 ;	../fb_app_taster.c:151: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0x0F))+0x20;	// dimmen
   04C3 A8 14              1001 	mov	r0,_bp
   04C5 08                 1002 	inc	r0
   04C6 74 04              1003 	mov	a,#0x04
   04C8 26                 1004 	add	a,@r0
   04C9 24 3C              1005 	add	a,#_timerstate
   04CB F9                 1006 	mov	r1,a
   04CC 74 D4              1007 	mov	a,#0xD4
   04CE 2E                 1008 	add	a,r6
   04CF 90 1D 00           1009 	mov	dptr,#_eeprom
   04D2 93                 1010 	movc	a,@a+dptr
   04D3 FC                 1011 	mov	r4,a
   04D4 74 0F              1012 	mov	a,#0x0F
   04D6 5C                 1013 	anl	a,r4
   04D7 24 20              1014 	add	a,#0x20
   04D9 F7                 1015 	mov	@r1,a
   04DA 02 06 86           1016 	ljmp	00147$
   04DD                    1017 00137$:
                    0214   1018 	C$fb_app_taster.c$157$3$9 ==.
                           1019 ;	../fb_app_taster.c:157: if ((timerstate[buttonno+4]& 0xF0)==0x20) { // wenn delaytimer noch lauft, dann Schalten, also EIS1 telegramm senden
   04DD A8 14              1020 	mov	r0,_bp
   04DF 08                 1021 	inc	r0
   04E0 74 04              1022 	mov	a,#0x04
   04E2 26                 1023 	add	a,@r0
   04E3 24 3C              1024 	add	a,#_timerstate
   04E5 F9                 1025 	mov	r1,a
   04E6 87 04              1026 	mov	ar4,@r1
   04E8 53 04 F0           1027 	anl	ar4,#0xF0
   04EB BC 20 71           1028 	cjne	r4,#0x20,00134$
                    0225   1029 	C$fb_app_taster.c$158$4$10 ==.
                           1030 ;	../fb_app_taster.c:158: if(bedienung==0x20) { //umschalten des Schaltzustandes
   04EE BD 20 19           1031 	cjne	r5,#0x20,00127$
                    0228   1032 	C$fb_app_taster.c$159$5$11 ==.
                           1033 ;	../fb_app_taster.c:159: if(read_obj_value(buttonno)& 0x01)bedienung=0x30;//wenn ein, dann aus
   04F1 A8 14              1034 	mov	r0,_bp
   04F3 08                 1035 	inc	r0
   04F4 86 82              1036 	mov	dpl,@r0
   04F6 12 06 8B           1037 	lcall	_read_obj_value
   04F9 AA 82              1038 	mov	r2,dpl
   04FB AB 83              1039 	mov	r3,dph
   04FD AC F0              1040 	mov	r4,b
   04FF FF                 1041 	mov	r7,a
   0500 EA                 1042 	mov	a,r2
   0501 30 E0 04           1043 	jnb	acc.0,00124$
   0504 7D 30              1044 	mov	r5,#0x30
   0506 80 02              1045 	sjmp	00127$
   0508                    1046 00124$:
                    023F   1047 	C$fb_app_taster.c$160$5$11 ==.
                           1048 ;	../fb_app_taster.c:160: else bedienung=0x10; // sonst ein
   0508 7D 10              1049 	mov	r5,#0x10
   050A                    1050 00127$:
                    0241   1051 	C$fb_app_taster.c$162$4$10 ==.
                           1052 ;	../fb_app_taster.c:162: if(bedienung== 0x10){	//  ein
   050A BD 10 2A           1053 	cjne	r5,#0x10,00129$
                    0244   1054 	C$fb_app_taster.c$163$5$12 ==.
                           1055 ;	../fb_app_taster.c:163: write_obj_value(buttonno,1);
   050D 74 01              1056 	mov	a,#0x01
   050F C0 E0              1057 	push	acc
   0511 E4                 1058 	clr	a
   0512 C0 E0              1059 	push	acc
   0514 A8 14              1060 	mov	r0,_bp
   0516 08                 1061 	inc	r0
   0517 86 82              1062 	mov	dpl,@r0
   0519 12 06 CD           1063 	lcall	_write_obj_value
   051C 15 81              1064 	dec	sp
   051E 15 81              1065 	dec	sp
                    0257   1066 	C$fb_app_taster.c$164$5$12 ==.
                           1067 ;	../fb_app_taster.c:164: send_obj_value(buttonno);
   0520 A8 14              1068 	mov	r0,_bp
   0522 08                 1069 	inc	r0
   0523 86 82              1070 	mov	dpl,@r0
   0525 12 14 82           1071 	lcall	_send_obj_value
                    025F   1072 	C$fb_app_taster.c$165$5$12 ==.
                           1073 ;	../fb_app_taster.c:165: switch_led(buttonno,1);
   0528 D2 F0              1074 	setb	b[0]
   052A 85 F0 23           1075 	mov	bits,b
   052D A8 14              1076 	mov	r0,_bp
   052F 08                 1077 	inc	r0
   0530 86 82              1078 	mov	dpl,@r0
   0532 12 07 BB           1079 	lcall	_switch_led
   0535 80 6A              1080 	sjmp	00135$
   0537                    1081 00129$:
                    026E   1082 	C$fb_app_taster.c$168$5$13 ==.
                           1083 ;	../fb_app_taster.c:168: write_obj_value(buttonno,0);
   0537 E4                 1084 	clr	a
   0538 C0 E0              1085 	push	acc
   053A C0 E0              1086 	push	acc
   053C A8 14              1087 	mov	r0,_bp
   053E 08                 1088 	inc	r0
   053F 86 82              1089 	mov	dpl,@r0
   0541 12 06 CD           1090 	lcall	_write_obj_value
   0544 15 81              1091 	dec	sp
   0546 15 81              1092 	dec	sp
                    027F   1093 	C$fb_app_taster.c$169$5$13 ==.
                           1094 ;	../fb_app_taster.c:169: send_obj_value(buttonno);
   0548 A8 14              1095 	mov	r0,_bp
   054A 08                 1096 	inc	r0
   054B 86 82              1097 	mov	dpl,@r0
   054D 12 14 82           1098 	lcall	_send_obj_value
                    0287   1099 	C$fb_app_taster.c$170$5$13 ==.
                           1100 ;	../fb_app_taster.c:170: switch_led(buttonno,0);
   0550 C2 F0              1101 	clr	b[0]
   0552 85 F0 23           1102 	mov	bits,b
   0555 A8 14              1103 	mov	r0,_bp
   0557 08                 1104 	inc	r0
   0558 86 82              1105 	mov	dpl,@r0
   055A 12 07 BB           1106 	lcall	_switch_led
   055D 80 42              1107 	sjmp	00135$
   055F                    1108 00134$:
                    0296   1109 	C$fb_app_taster.c$174$4$14 ==.
                           1110 ;	../fb_app_taster.c:174: write_obj_value(buttonno+8,read_obj_value(buttonno+8)& 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
   055F A8 14              1111 	mov	r0,_bp
   0561 08                 1112 	inc	r0
   0562 74 08              1113 	mov	a,#0x08
   0564 26                 1114 	add	a,@r0
   0565 FF                 1115 	mov	r7,a
   0566 F5 82              1116 	mov	dpl,a
   0568 C0 07              1117 	push	ar7
   056A C0 06              1118 	push	ar6
   056C 12 06 8B           1119 	lcall	_read_obj_value
   056F AA 82              1120 	mov	r2,dpl
   0571 D0 06              1121 	pop	ar6
   0573 D0 07              1122 	pop	ar7
   0575 53 02 08           1123 	anl	ar2,#0x08
   0578 7B 00              1124 	mov	r3,#0x00
   057A C0 06              1125 	push	ar6
   057C C0 02              1126 	push	ar2
   057E C0 03              1127 	push	ar3
   0580 8F 82              1128 	mov	dpl,r7
   0582 12 06 CD           1129 	lcall	_write_obj_value
   0585 15 81              1130 	dec	sp
   0587 15 81              1131 	dec	sp
   0589 D0 06              1132 	pop	ar6
                    02C2   1133 	C$fb_app_taster.c$175$4$14 ==.
                           1134 ;	../fb_app_taster.c:175: if ((eeprom[COMMAND+(buttonno*4)] & 0x40) == 0) {	// ... natuerlich nur wenn parameter dementsprechend (0=senden!!!)
   058B 74 D3              1135 	mov	a,#0xD3
   058D 2E                 1136 	add	a,r6
   058E 90 1D 00           1137 	mov	dptr,#_eeprom
   0591 93                 1138 	movc	a,@a+dptr
   0592 FF                 1139 	mov	r7,a
   0593 20 E6 0B           1140 	jb	acc.6,00135$
                    02CD   1141 	C$fb_app_taster.c$176$5$15 ==.
                           1142 ;	../fb_app_taster.c:176: send_obj_value(buttonno+8);// Stop Telegramm senden
   0596 A8 14              1143 	mov	r0,_bp
   0598 08                 1144 	inc	r0
   0599 74 08              1145 	mov	a,#0x08
   059B 26                 1146 	add	a,@r0
   059C F5 82              1147 	mov	dpl,a
   059E 12 14 82           1148 	lcall	_send_obj_value
   05A1                    1149 00135$:
                    02D8   1150 	C$fb_app_taster.c$179$3$9 ==.
                           1151 ;	../fb_app_taster.c:179: timercnt[buttonno+4]=0;
   05A1 A8 14              1152 	mov	r0,_bp
   05A3 08                 1153 	inc	r0
   05A4 74 04              1154 	mov	a,#0x04
   05A6 26                 1155 	add	a,@r0
   05A7 FF                 1156 	mov	r7,a
   05A8 24 2C              1157 	add	a,#_timercnt
   05AA F8                 1158 	mov	r0,a
   05AB 76 00              1159 	mov	@r0,#0x00
                    02E4   1160 	C$fb_app_taster.c$180$3$9 ==.
                           1161 ;	../fb_app_taster.c:180: timerstate[buttonno+4]=0;
   05AD EF                 1162 	mov	a,r7
   05AE 24 3C              1163 	add	a,#_timerstate
   05B0 F8                 1164 	mov	r0,a
   05B1 76 00              1165 	mov	@r0,#0x00
                    02EA   1166 	C$fb_app_taster.c$182$2$2 ==.
                           1167 ;	../fb_app_taster.c:182: break;
   05B3 02 06 86           1168 	ljmp	00147$
                    02ED   1169 	C$fb_app_taster.c$188$2$2 ==.
                           1170 ;	../fb_app_taster.c:188: case 3:
   05B6                    1171 00139$:
                    02ED   1172 	C$fb_app_taster.c$189$2$2 ==.
                           1173 ;	../fb_app_taster.c:189: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
   05B6 20 18 03           1174 	jb	b0,00197$
   05B9 02 06 3D           1175 	ljmp	00144$
   05BC                    1176 00197$:
                    02F3   1177 	C$fb_app_taster.c$191$3$16 ==.
                           1178 ;	../fb_app_taster.c:191: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
   05BC A8 14              1179 	mov	r0,_bp
   05BE 08                 1180 	inc	r0
   05BF E6                 1181 	mov	a,@r0
   05C0 25 E0              1182 	add	a,acc
   05C2 25 E0              1183 	add	a,acc
   05C4 FF                 1184 	mov	r7,a
   05C5 24 D3              1185 	add	a,#0xD3
   05C7 FE                 1186 	mov	r6,a
   05C8 F5 82              1187 	mov	dpl,a
   05CA 75 83 1D           1188 	mov	dph,#(_eeprom >> 8)
   05CD E4                 1189 	clr	a
   05CE 93                 1190 	movc	a,@a+dptr
   05CF 54 10              1191 	anl	a,#0x10
   05D1 C4                 1192 	swap	a
   05D2 54 0F              1193 	anl	a,#0x0F
   05D4 FD                 1194 	mov	r5,a
   05D5 7C 00              1195 	mov	r4,#0x00
   05D7 C0 07              1196 	push	ar7
   05D9 C0 06              1197 	push	ar6
   05DB C0 05              1198 	push	ar5
   05DD C0 04              1199 	push	ar4
   05DF A8 14              1200 	mov	r0,_bp
   05E1 08                 1201 	inc	r0
   05E2 86 82              1202 	mov	dpl,@r0
   05E4 12 06 CD           1203 	lcall	_write_obj_value
   05E7 15 81              1204 	dec	sp
   05E9 15 81              1205 	dec	sp
                    0322   1206 	C$fb_app_taster.c$192$3$16 ==.
                           1207 ;	../fb_app_taster.c:192: send_obj_value(buttonno);
   05EB A8 14              1208 	mov	r0,_bp
   05ED 08                 1209 	inc	r0
   05EE 86 82              1210 	mov	dpl,@r0
   05F0 12 14 82           1211 	lcall	_send_obj_value
                    032A   1212 	C$fb_app_taster.c$193$3$16 ==.
                           1213 ;	../fb_app_taster.c:193: switch_led(buttonno,1);	// Status-LED schalten (hier nur nie,immer,betätigung)
   05F3 D2 F0              1214 	setb	b[0]
   05F5 85 F0 23           1215 	mov	bits,b
   05F8 A8 14              1216 	mov	r0,_bp
   05FA 08                 1217 	inc	r0
   05FB 86 82              1218 	mov	dpl,@r0
   05FD 12 07 BB           1219 	lcall	_switch_led
   0600 D0 06              1220 	pop	ar6
   0602 D0 07              1221 	pop	ar7
                    033B   1222 	C$fb_app_taster.c$194$3$16 ==.
                           1223 ;	../fb_app_taster.c:194: timercnt[buttonno+4]=eeprom[0xD5+(buttonno*4)];	// Faktor Dauer
   0604 A8 14              1224 	mov	r0,_bp
   0606 08                 1225 	inc	r0
   0607 74 04              1226 	mov	a,#0x04
   0609 26                 1227 	add	a,@r0
   060A FD                 1228 	mov	r5,a
   060B 24 2C              1229 	add	a,#_timercnt
   060D F9                 1230 	mov	r1,a
   060E 74 D5              1231 	mov	a,#0xD5
   0610 2F                 1232 	add	a,r7
   0611 90 1D 00           1233 	mov	dptr,#_eeprom
   0614 93                 1234 	movc	a,@a+dptr
   0615 FC                 1235 	mov	r4,a
   0616 F7                 1236 	mov	@r1,a
                    034E   1237 	C$fb_app_taster.c$209$3$16 ==.
                           1238 ;	../fb_app_taster.c:209: */			timerbase[buttonno+4]=(eeprom[0xD4+(buttonno*4)]&0x06)*2;// Basis Dauer zwischen kurz und langzeit
   0617 ED                 1239 	mov	a,r5
   0618 24 34              1240 	add	a,#_timerbase
   061A F9                 1241 	mov	r1,a
   061B 74 D4              1242 	mov	a,#0xD4
   061D 2F                 1243 	add	a,r7
   061E 90 1D 00           1244 	mov	dptr,#_eeprom
   0621 93                 1245 	movc	a,@a+dptr
   0622 54 06              1246 	anl	a,#0x06
   0624 25 E0              1247 	add	a,acc
   0626 F7                 1248 	mov	@r1,a
                    035E   1249 	C$fb_app_taster.c$210$3$16 ==.
                           1250 ;	../fb_app_taster.c:210: timerstate[buttonno+4]=((eeprom[0xD3+(buttonno*4)]&0x10)>>4)+0x30;
   0627 ED                 1251 	mov	a,r5
   0628 24 3C              1252 	add	a,#_timerstate
   062A F9                 1253 	mov	r1,a
   062B 8E 82              1254 	mov	dpl,r6
   062D 75 83 1D           1255 	mov	dph,#(_eeprom >> 8)
   0630 E4                 1256 	clr	a
   0631 93                 1257 	movc	a,@a+dptr
   0632 54 10              1258 	anl	a,#0x10
   0634 C4                 1259 	swap	a
   0635 54 0F              1260 	anl	a,#0x0F
   0637 FF                 1261 	mov	r7,a
   0638 24 30              1262 	add	a,#0x30
   063A F7                 1263 	mov	@r1,a
   063B 80 49              1264 	sjmp	00147$
   063D                    1265 00144$:
                    0374   1266 	C$fb_app_taster.c$213$3$17 ==.
                           1267 ;	../fb_app_taster.c:213: if (timerstate[buttonno+4] == 0x40) {//innerhalb T2
   063D A8 14              1268 	mov	r0,_bp
   063F 08                 1269 	inc	r0
   0640 74 04              1270 	mov	a,#0x04
   0642 26                 1271 	add	a,@r0
   0643 24 3C              1272 	add	a,#_timerstate
   0645 F9                 1273 	mov	r1,a
   0646 87 07              1274 	mov	ar7,@r1
   0648 BF 40 30           1275 	cjne	r7,#0x40,00141$
                    0382   1276 	C$fb_app_taster.c$214$4$18 ==.
                           1277 ;	../fb_app_taster.c:214: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
   064B A8 14              1278 	mov	r0,_bp
   064D 08                 1279 	inc	r0
   064E E6                 1280 	mov	a,@r0
   064F 25 E0              1281 	add	a,acc
   0651 25 E0              1282 	add	a,acc
   0653 24 D3              1283 	add	a,#0xD3
   0655 90 1D 00           1284 	mov	dptr,#_eeprom
   0658 93                 1285 	movc	a,@a+dptr
   0659 54 10              1286 	anl	a,#0x10
   065B C4                 1287 	swap	a
   065C 54 0F              1288 	anl	a,#0x0F
   065E FF                 1289 	mov	r7,a
   065F 7E 00              1290 	mov	r6,#0x00
   0661 C0 07              1291 	push	ar7
   0663 C0 06              1292 	push	ar6
   0665 A8 14              1293 	mov	r0,_bp
   0667 08                 1294 	inc	r0
   0668 86 82              1295 	mov	dpl,@r0
   066A 12 06 CD           1296 	lcall	_write_obj_value
   066D 15 81              1297 	dec	sp
   066F 15 81              1298 	dec	sp
                    03A8   1299 	C$fb_app_taster.c$215$4$18 ==.
                           1300 ;	../fb_app_taster.c:215: send_obj_value(buttonno);
   0671 A8 14              1301 	mov	r0,_bp
   0673 08                 1302 	inc	r0
   0674 86 82              1303 	mov	dpl,@r0
   0676 12 14 82           1304 	lcall	_send_obj_value
   0679 80 0B              1305 	sjmp	00147$
   067B                    1306 00141$:
                    03B2   1307 	C$fb_app_taster.c$219$4$19 ==.
                           1308 ;	../fb_app_taster.c:219: timerstate[buttonno+4]=0;// T2 bereits abgelaufen
   067B A8 14              1309 	mov	r0,_bp
   067D 08                 1310 	inc	r0
   067E 74 04              1311 	mov	a,#0x04
   0680 26                 1312 	add	a,@r0
   0681 24 3C              1313 	add	a,#_timerstate
   0683 F8                 1314 	mov	r0,a
   0684 76 00              1315 	mov	@r0,#0x00
                    03BD   1316 	C$fb_app_taster.c$324$1$1 ==.
                           1317 ;	../fb_app_taster.c:324: }
   0686                    1318 00147$:
   0686 15 81              1319 	dec	sp
   0688 D0 14              1320 	pop	_bp
                    03C1   1321 	C$fb_app_taster.c$325$1$1 ==.
                    03C1   1322 	XG$button_changed$0$0 ==.
   068A 22                 1323 	ret
                           1324 ;------------------------------------------------------------
                           1325 ;Allocation info for local variables in function 'read_obj_value'
                           1326 ;------------------------------------------------------------
                           1327 ;objno                     Allocated to registers r7 
                           1328 ;------------------------------------------------------------
                    03C2   1329 	G$read_obj_value$0$0 ==.
                    03C2   1330 	C$fb_app_taster.c$351$1$1 ==.
                           1331 ;	../fb_app_taster.c:351: unsigned long read_obj_value(unsigned char objno)
                           1332 ;	-----------------------------------------
                           1333 ;	 function read_obj_value
                           1334 ;	-----------------------------------------
   068B                    1335 _read_obj_value:
   068B AF 82              1336 	mov	r7,dpl
                    03C4   1337 	C$fb_app_taster.c$354$1$1 ==.
                           1338 ;	../fb_app_taster.c:354: if(objno<4)	return(object_value[objno]);
   068D BF 04 00           1339 	cjne	r7,#0x04,00107$
   0690                    1340 00107$:
   0690 50 15              1341 	jnc	00102$
   0692 EF                 1342 	mov	a,r7
   0693 24 08              1343 	add	a,#_object_value
   0695 F9                 1344 	mov	r1,a
   0696 87 06              1345 	mov	ar6,@r1
   0698 7D 00              1346 	mov	r5,#0x00
   069A 7C 00              1347 	mov	r4,#0x00
   069C 7B 00              1348 	mov	r3,#0x00
   069E 8E 82              1349 	mov	dpl,r6
   06A0 8D 83              1350 	mov	dph,r5
   06A2 8C F0              1351 	mov	b,r4
   06A4 EB                 1352 	mov	a,r3
   06A5 80 25              1353 	sjmp	00104$
   06A7                    1354 00102$:
                    03DE   1355 	C$fb_app_taster.c$355$1$1 ==.
                           1356 ;	../fb_app_taster.c:355: else return((object_value[objno-4]<<8)+object_value[objno]);
   06A7 EF                 1357 	mov	a,r7
   06A8 24 FC              1358 	add	a,#0xFC
   06AA 24 08              1359 	add	a,#_object_value
   06AC F9                 1360 	mov	r1,a
   06AD 87 06              1361 	mov	ar6,@r1
   06AF 8E 05              1362 	mov	ar5,r6
   06B1 7E 00              1363 	mov	r6,#0x00
   06B3 EF                 1364 	mov	a,r7
   06B4 24 08              1365 	add	a,#_object_value
   06B6 F9                 1366 	mov	r1,a
   06B7 87 07              1367 	mov	ar7,@r1
   06B9 7C 00              1368 	mov	r4,#0x00
   06BB EF                 1369 	mov	a,r7
   06BC 2E                 1370 	add	a,r6
   06BD FE                 1371 	mov	r6,a
   06BE EC                 1372 	mov	a,r4
   06BF 3D                 1373 	addc	a,r5
   06C0 FD                 1374 	mov	r5,a
   06C1 33                 1375 	rlc	a
   06C2 95 E0              1376 	subb	a,acc
   06C4 FF                 1377 	mov	r7,a
   06C5 FC                 1378 	mov	r4,a
   06C6 8E 82              1379 	mov	dpl,r6
   06C8 8D 83              1380 	mov	dph,r5
   06CA 8F F0              1381 	mov	b,r7
   06CC                    1382 00104$:
                    0403   1383 	C$fb_app_taster.c$357$1$1 ==.
                    0403   1384 	XG$read_obj_value$0$0 ==.
   06CC 22                 1385 	ret
                           1386 ;------------------------------------------------------------
                           1387 ;Allocation info for local variables in function 'write_obj_value'
                           1388 ;------------------------------------------------------------
                           1389 ;objval                    Allocated to stack - _bp -4
                           1390 ;objno                     Allocated to registers r7 
                           1391 ;------------------------------------------------------------
                    0404   1392 	G$write_obj_value$0$0 ==.
                    0404   1393 	C$fb_app_taster.c$359$1$1 ==.
                           1394 ;	../fb_app_taster.c:359: void write_obj_value(unsigned char objno, unsigned int objval)
                           1395 ;	-----------------------------------------
                           1396 ;	 function write_obj_value
                           1397 ;	-----------------------------------------
   06CD                    1398 _write_obj_value:
   06CD C0 14              1399 	push	_bp
   06CF 85 81 14           1400 	mov	_bp,sp
   06D2 AF 82              1401 	mov	r7,dpl
                    040B   1402 	C$fb_app_taster.c$361$1$1 ==.
                           1403 ;	../fb_app_taster.c:361: if(objno<4)object_value[objno]=objval;
   06D4 BF 04 00           1404 	cjne	r7,#0x04,00107$
   06D7                    1405 00107$:
   06D7 50 0F              1406 	jnc	00102$
   06D9 EF                 1407 	mov	a,r7
   06DA 24 08              1408 	add	a,#_object_value
   06DC F9                 1409 	mov	r1,a
   06DD E5 14              1410 	mov	a,_bp
   06DF 24 FC              1411 	add	a,#0xfc
   06E1 F8                 1412 	mov	r0,a
   06E2 86 06              1413 	mov	ar6,@r0
   06E4 A7 06              1414 	mov	@r1,ar6
   06E6 80 1F              1415 	sjmp	00104$
   06E8                    1416 00102$:
                    041F   1417 	C$fb_app_taster.c$363$2$2 ==.
                           1418 ;	../fb_app_taster.c:363: object_value[objno-4]=objval>>8;
   06E8 EF                 1419 	mov	a,r7
   06E9 24 FC              1420 	add	a,#0xFC
   06EB 24 08              1421 	add	a,#_object_value
   06ED F9                 1422 	mov	r1,a
   06EE E5 14              1423 	mov	a,_bp
   06F0 24 FC              1424 	add	a,#0xfc
   06F2 F8                 1425 	mov	r0,a
   06F3 08                 1426 	inc	r0
   06F4 86 06              1427 	mov	ar6,@r0
   06F6 A7 06              1428 	mov	@r1,ar6
                    042F   1429 	C$fb_app_taster.c$364$2$2 ==.
                           1430 ;	../fb_app_taster.c:364: object_value[objno]=objval&0xFF;
   06F8 EF                 1431 	mov	a,r7
   06F9 24 08              1432 	add	a,#_object_value
   06FB F9                 1433 	mov	r1,a
   06FC E5 14              1434 	mov	a,_bp
   06FE 24 FC              1435 	add	a,#0xfc
   0700 F8                 1436 	mov	r0,a
   0701 86 06              1437 	mov	ar6,@r0
   0703 7F 00              1438 	mov	r7,#0x00
   0705 A7 06              1439 	mov	@r1,ar6
   0707                    1440 00104$:
   0707 D0 14              1441 	pop	_bp
                    0440   1442 	C$fb_app_taster.c$366$1$1 ==.
                    0440   1443 	XG$write_obj_value$0$0 ==.
   0709 22                 1444 	ret
                           1445 ;------------------------------------------------------------
                           1446 ;Allocation info for local variables in function 'write_value_req'
                           1447 ;------------------------------------------------------------
                           1448 ;objno                     Allocated to registers r7 
                           1449 ;objtype                   Allocated to registers r6 
                           1450 ;------------------------------------------------------------
                    0441   1451 	G$write_value_req$0$0 ==.
                    0441   1452 	C$fb_app_taster.c$376$1$1 ==.
                           1453 ;	../fb_app_taster.c:376: void write_value_req(unsigned char objno)
                           1454 ;	-----------------------------------------
                           1455 ;	 function write_value_req
                           1456 ;	-----------------------------------------
   070A                    1457 _write_value_req:
   070A AF 82              1458 	mov	r7,dpl
                    0443   1459 	C$fb_app_taster.c$379$1$1 ==.
                           1460 ;	../fb_app_taster.c:379: if (objno<12) {					// max 12 objekte (0-11)
   070C BF 0C 00           1461 	cjne	r7,#0x0C,00120$
   070F                    1462 00120$:
   070F 40 03              1463 	jc	00121$
   0711 02 07 AF           1464 	ljmp	00112$
   0714                    1465 00121$:
                    044B   1466 	C$fb_app_taster.c$380$2$2 ==.
                           1467 ;	../fb_app_taster.c:380: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
   0714 90 1D 12           1468 	mov	dptr,#(_eeprom + 0x0012)
   0717 E4                 1469 	clr	a
   0718 93                 1470 	movc	a,@a+dptr
   0719 FE                 1471 	mov	r6,a
   071A EF                 1472 	mov	a,r7
   071B 75 F0 03           1473 	mov	b,#0x03
   071E A4                 1474 	mul	ab
   071F 2E                 1475 	add	a,r6
   0720 24 04              1476 	add	a,#0x04
   0722 90 1D 00           1477 	mov	dptr,#_eeprom
   0725 93                 1478 	movc	a,@a+dptr
                    045D   1479 	C$fb_app_taster.c$381$2$2 ==.
                           1480 ;	../fb_app_taster.c:381: if (objtype<=6){
   0726 FE                 1481 	mov  r6,a
   0727 24 F9              1482 	add	a,#0xff - 0x06
   0729 40 1C              1483 	jc	00102$
                    0462   1484 	C$fb_app_taster.c$382$3$3 ==.
                           1485 ;	../fb_app_taster.c:382: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
   072B 74 3F              1486 	mov	a,#0x3F
   072D 55 52              1487 	anl	a,(_telegramm + 0x0007)
   072F FD                 1488 	mov	r5,a
   0730 7C 00              1489 	mov	r4,#0x00
   0732 C0 07              1490 	push	ar7
   0734 C0 06              1491 	push	ar6
   0736 C0 05              1492 	push	ar5
   0738 C0 04              1493 	push	ar4
   073A 8F 82              1494 	mov	dpl,r7
   073C 12 06 CD           1495 	lcall	_write_obj_value
   073F 15 81              1496 	dec	sp
   0741 15 81              1497 	dec	sp
   0743 D0 06              1498 	pop	ar6
   0745 D0 07              1499 	pop	ar7
   0747                    1500 00102$:
                    047E   1501 	C$fb_app_taster.c$384$2$2 ==.
                           1502 ;	../fb_app_taster.c:384: if (objtype==7)write_obj_value(objno,telegramm[8]);
   0747 BE 07 19           1503 	cjne	r6,#0x07,00104$
   074A AC 53              1504 	mov	r4,(_telegramm + 0x0008)
   074C 7D 00              1505 	mov	r5,#0x00
   074E C0 07              1506 	push	ar7
   0750 C0 06              1507 	push	ar6
   0752 C0 04              1508 	push	ar4
   0754 C0 05              1509 	push	ar5
   0756 8F 82              1510 	mov	dpl,r7
   0758 12 06 CD           1511 	lcall	_write_obj_value
   075B 15 81              1512 	dec	sp
   075D 15 81              1513 	dec	sp
   075F D0 06              1514 	pop	ar6
   0761 D0 07              1515 	pop	ar7
   0763                    1516 00104$:
                    049A   1517 	C$fb_app_taster.c$385$2$2 ==.
                           1518 ;	../fb_app_taster.c:385: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
   0763 BE 08 1F           1519 	cjne	r6,#0x08,00106$
   0766 AD 54              1520 	mov	r5,(_telegramm + 0x0009)
   0768 7E 00              1521 	mov	r6,#0x00
   076A AB 53              1522 	mov	r3,(_telegramm + 0x0008)
   076C 8B 04              1523 	mov	ar4,r3
   076E E4                 1524 	clr	a
   076F 2D                 1525 	add	a,r5
   0770 FD                 1526 	mov	r5,a
   0771 EC                 1527 	mov	a,r4
   0772 3E                 1528 	addc	a,r6
   0773 FE                 1529 	mov	r6,a
   0774 C0 07              1530 	push	ar7
   0776 C0 05              1531 	push	ar5
   0778 C0 06              1532 	push	ar6
   077A 8F 82              1533 	mov	dpl,r7
   077C 12 06 CD           1534 	lcall	_write_obj_value
   077F 15 81              1535 	dec	sp
   0781 15 81              1536 	dec	sp
   0783 D0 07              1537 	pop	ar7
   0785                    1538 00106$:
                    04BC   1539 	C$fb_app_taster.c$386$2$2 ==.
                           1540 ;	../fb_app_taster.c:386: if ((objno<4) && ((eeprom[COMMAND+(objno*4)]) & 0x07) <4) switch_led(objno,telegramm[7]&0x01);	// LED nur schalten, wenn nicht auf Betï¿½tigungsanzeige parametriert
   0785 BF 04 00           1541 	cjne	r7,#0x04,00127$
   0788                    1542 00127$:
   0788 50 25              1543 	jnc	00112$
   078A EF                 1544 	mov	a,r7
   078B 2F                 1545 	add	a,r7
   078C 25 E0              1546 	add	a,acc
   078E 24 D3              1547 	add	a,#0xD3
   0790 90 1D 00           1548 	mov	dptr,#_eeprom
   0793 93                 1549 	movc	a,@a+dptr
   0794 FE                 1550 	mov	r6,a
   0795 53 06 07           1551 	anl	ar6,#0x07
   0798 BE 04 00           1552 	cjne	r6,#0x04,00129$
   079B                    1553 00129$:
   079B 50 12              1554 	jnc	00112$
   079D E5 52              1555 	mov	a,(_telegramm + 0x0007)
   079F 54 01              1556 	anl	a,#0x01
   07A1 24 FF              1557 	add	a,#0xff
   07A3 92 18              1558 	mov  b0,c
   07A5 92 F0              1559 	mov	b[0],c
   07A7 85 F0 23           1560 	mov	bits,b
   07AA 8F 82              1561 	mov	dpl,r7
   07AC 12 07 BB           1562 	lcall	_switch_led
   07AF                    1563 00112$:
                    04E6   1564 	C$fb_app_taster.c$388$1$1 ==.
                    04E6   1565 	XG$write_value_req$0$0 ==.
   07AF 22                 1566 	ret
                           1567 ;------------------------------------------------------------
                           1568 ;Allocation info for local variables in function 'read_value_req'
                           1569 ;------------------------------------------------------------
                           1570 ;objno                     Allocated to registers r7 
                           1571 ;------------------------------------------------------------
                    04E7   1572 	G$read_value_req$0$0 ==.
                    04E7   1573 	C$fb_app_taster.c$398$1$1 ==.
                           1574 ;	../fb_app_taster.c:398: void read_value_req(unsigned char objno)
                           1575 ;	-----------------------------------------
                           1576 ;	 function read_value_req
                           1577 ;	-----------------------------------------
   07B0                    1578 _read_value_req:
   07B0 AF 82              1579 	mov	r7,dpl
                    04E9   1580 	C$fb_app_taster.c$400$1$1 ==.
                           1581 ;	../fb_app_taster.c:400: send_obj_value(objno+0x40);
   07B2 74 40              1582 	mov	a,#0x40
   07B4 2F                 1583 	add	a,r7
   07B5 F5 82              1584 	mov	dpl,a
   07B7 12 14 82           1585 	lcall	_send_obj_value
                    04F1   1586 	C$fb_app_taster.c$401$1$1 ==.
                    04F1   1587 	XG$read_value_req$0$0 ==.
   07BA 22                 1588 	ret
                           1589 ;------------------------------------------------------------
                           1590 ;Allocation info for local variables in function 'switch_led'
                           1591 ;------------------------------------------------------------
                           1592 ;onoff                     Allocated to registers b0 
                           1593 ;ledno                     Allocated to registers r7 
                           1594 ;command                   Allocated to registers r6 
                           1595 ;ledvar                    Allocated to registers r6 
                           1596 ;------------------------------------------------------------
                    04F2   1597 	G$switch_led$0$0 ==.
                    04F2   1598 	C$fb_app_taster.c$413$1$1 ==.
                           1599 ;	../fb_app_taster.c:413: void switch_led(unsigned char ledno, __bit onoff)
                           1600 ;	-----------------------------------------
                           1601 ;	 function switch_led
                           1602 ;	-----------------------------------------
   07BB                    1603 _switch_led:
   07BB AF 82              1604 	mov	r7,dpl
                    04F4   1605 	C$fb_app_taster.c$417$1$1 ==.
                           1606 ;	../fb_app_taster.c:417: if (ledno<4) {
   07BD BF 04 00           1607 	cjne	r7,#0x04,00122$
   07C0                    1608 00122$:
   07C0 40 03              1609 	jc	00123$
   07C2 02 08 59           1610 	ljmp	00112$
   07C5                    1611 00123$:
                    04FC   1612 	C$fb_app_taster.c$418$2$2 ==.
                           1613 ;	../fb_app_taster.c:418: command = ((eeprom[COMMAND+(ledno*4)]) & 0x07);	// Befehl der Status LED
   07C5 EF                 1614 	mov	a,r7
   07C6 2F                 1615 	add	a,r7
   07C7 25 E0              1616 	add	a,acc
   07C9 24 D3              1617 	add	a,#0xD3
   07CB 90 1D 00           1618 	mov	dptr,#_eeprom
   07CE 93                 1619 	movc	a,@a+dptr
   07CF FE                 1620 	mov	r6,a
   07D0 53 06 07           1621 	anl	ar6,#0x07
                    050A   1622 	C$fb_app_taster.c$419$2$2 ==.
                           1623 ;	../fb_app_taster.c:419: switch (command) {
   07D3 BE 00 02           1624 	cjne	r6,#0x00,00124$
   07D6 80 0F              1625 	sjmp	00101$
   07D8                    1626 00124$:
   07D8 BE 01 02           1627 	cjne	r6,#0x01,00125$
   07DB 80 0E              1628 	sjmp	00102$
   07DD                    1629 00125$:
   07DD BE 03 02           1630 	cjne	r6,#0x03,00126$
   07E0 80 0D              1631 	sjmp	00103$
   07E2                    1632 00126$:
                    0519   1633 	C$fb_app_taster.c$420$3$3 ==.
                           1634 ;	../fb_app_taster.c:420: case 0:		// immer AUS
   07E2 BE 04 47           1635 	cjne	r6,#0x04,00109$
   07E5 80 0C              1636 	sjmp	00104$
   07E7                    1637 00101$:
                    051E   1638 	C$fb_app_taster.c$421$3$3 ==.
                           1639 ;	../fb_app_taster.c:421: onoff=0;
   07E7 C2 18              1640 	clr	b0
                    0520   1641 	C$fb_app_taster.c$422$3$3 ==.
                           1642 ;	../fb_app_taster.c:422: break;
                    0520   1643 	C$fb_app_taster.c$423$3$3 ==.
                           1644 ;	../fb_app_taster.c:423: case 1:		// immer an
   07E9 80 41              1645 	sjmp	00109$
   07EB                    1646 00102$:
                    0522   1647 	C$fb_app_taster.c$424$3$3 ==.
                           1648 ;	../fb_app_taster.c:424: onoff=1;
   07EB D2 18              1649 	setb	b0
                    0524   1650 	C$fb_app_taster.c$425$3$3 ==.
                           1651 ;	../fb_app_taster.c:425: break;
                    0524   1652 	C$fb_app_taster.c$427$3$3 ==.
                           1653 ;	../fb_app_taster.c:427: case 3:		// LED = invertierte Statusanzeige
   07ED 80 3D              1654 	sjmp	00109$
   07EF                    1655 00103$:
                    0526   1656 	C$fb_app_taster.c$428$3$3 ==.
                           1657 ;	../fb_app_taster.c:428: onoff=!onoff;
   07EF B2 18              1658 	cpl	b0
                    0528   1659 	C$fb_app_taster.c$429$3$3 ==.
                           1660 ;	../fb_app_taster.c:429: break;
                    0528   1661 	C$fb_app_taster.c$430$3$3 ==.
                           1662 ;	../fb_app_taster.c:430: case 4:		// LED = Betaetigungsanzeige
   07F1 80 39              1663 	sjmp	00109$
   07F3                    1664 00104$:
                    052A   1665 	C$fb_app_taster.c$431$3$3 ==.
                           1666 ;	../fb_app_taster.c:431: onoff=1;	// erstmal an beim druecken der Taste
   07F3 D2 18              1667 	setb	b0
                    052C   1668 	C$fb_app_taster.c$432$3$3 ==.
                           1669 ;	../fb_app_taster.c:432: timerstate[ledno]= 0x10;
   07F5 EF                 1670 	mov	a,r7
   07F6 24 3C              1671 	add	a,#_timerstate
   07F8 F8                 1672 	mov	r0,a
   07F9 76 10              1673 	mov	@r0,#0x10
                    0532   1674 	C$fb_app_taster.c$433$3$3 ==.
                           1675 ;	../fb_app_taster.c:433: timerbase[ledno]=1;
   07FB EF                 1676 	mov	a,r7
   07FC 24 34              1677 	add	a,#_timerbase
   07FE F8                 1678 	mov	r0,a
   07FF 76 01              1679 	mov	@r0,#0x01
                    0538   1680 	C$fb_app_taster.c$434$3$3 ==.
                           1681 ;	../fb_app_taster.c:434: switch (eeprom[LED_DURATION]) {		// dann ueber delay-timer aus
   0801 90 1D CE           1682 	mov	dptr,#(_eeprom + 0x00ce)
   0804 E4                 1683 	clr	a
   0805 93                 1684 	movc	a,@a+dptr
   0806 FE                 1685 	mov	r6,a
   0807 BE 26 02           1686 	cjne	r6,#0x26,00128$
   080A 80 0A              1687 	sjmp	00105$
   080C                    1688 00128$:
   080C BE 76 02           1689 	cjne	r6,#0x76,00129$
   080F 80 0D              1690 	sjmp	00106$
   0811                    1691 00129$:
                    0548   1692 	C$fb_app_taster.c$435$4$4 ==.
                           1693 ;	../fb_app_taster.c:435: case 38:	// 0,75 sec
   0811 BE 96 18           1694 	cjne	r6,#0x96,00109$
   0814 80 10              1695 	sjmp	00107$
   0816                    1696 00105$:
                    054D   1697 	C$fb_app_taster.c$436$4$4 ==.
                           1698 ;	../fb_app_taster.c:436: timercnt[ledno]=47;
   0816 EF                 1699 	mov	a,r7
   0817 24 2C              1700 	add	a,#_timercnt
   0819 F8                 1701 	mov	r0,a
   081A 76 2F              1702 	mov	@r0,#0x2F
                    0553   1703 	C$fb_app_taster.c$437$4$4 ==.
                           1704 ;	../fb_app_taster.c:437: break;
                    0553   1705 	C$fb_app_taster.c$438$4$4 ==.
                           1706 ;	../fb_app_taster.c:438: case 118:	// 2,25 sec
   081C 80 0E              1707 	sjmp	00109$
   081E                    1708 00106$:
                    0555   1709 	C$fb_app_taster.c$439$4$4 ==.
                           1710 ;	../fb_app_taster.c:439: timercnt[ledno]=141;
   081E EF                 1711 	mov	a,r7
   081F 24 2C              1712 	add	a,#_timercnt
   0821 F8                 1713 	mov	r0,a
   0822 76 8D              1714 	mov	@r0,#0x8D
                    055B   1715 	C$fb_app_taster.c$440$4$4 ==.
                           1716 ;	../fb_app_taster.c:440: break;
                    055B   1717 	C$fb_app_taster.c$441$4$4 ==.
                           1718 ;	../fb_app_taster.c:441: case 150:	// 3 sec
   0824 80 06              1719 	sjmp	00109$
   0826                    1720 00107$:
                    055D   1721 	C$fb_app_taster.c$442$4$4 ==.
                           1722 ;	../fb_app_taster.c:442: timercnt[ledno]=188;
   0826 EF                 1723 	mov	a,r7
   0827 24 2C              1724 	add	a,#_timercnt
   0829 F8                 1725 	mov	r0,a
   082A 76 BC              1726 	mov	@r0,#0xBC
                    0563   1727 	C$fb_app_taster.c$445$2$2 ==.
                           1728 ;	../fb_app_taster.c:445: }
   082C                    1729 00109$:
                    0563   1730 	C$fb_app_taster.c$446$2$2 ==.
                           1731 ;	../fb_app_taster.c:446: ledvar=LEDSTATE;
   082C AE 29              1732 	mov	r6,_LEDSTATE
                    0565   1733 	C$fb_app_taster.c$447$2$2 ==.
                           1734 ;	../fb_app_taster.c:447: ledvar&= ~(1<<(ledno+4));	// LEDs sind an Pin 4-7
   082E EF                 1735 	mov	a,r7
   082F 24 04              1736 	add	a,#0x04
   0831 FF                 1737 	mov	r7,a
   0832 8F F0              1738 	mov	b,r7
   0834 05 F0              1739 	inc	b
   0836 74 01              1740 	mov	a,#0x01
   0838 80 02              1741 	sjmp	00133$
   083A                    1742 00131$:
   083A 25 E0              1743 	add	a,acc
   083C                    1744 00133$:
   083C D5 F0 FB           1745 	djnz	b,00131$
   083F F4                 1746 	cpl	a
   0840 52 06              1747 	anl	ar6,a
                    0579   1748 	C$fb_app_taster.c$448$2$2 ==.
                           1749 ;	../fb_app_taster.c:448: ledvar |= ((onoff<<(ledno+4)) | 0x0F);	// unteren 4 bits immer auf 1 lassen !!!
   0842 A2 18              1750 	mov	c,b0
   0844 E4                 1751 	clr	a
   0845 33                 1752 	rlc	a
   0846 FD                 1753 	mov	r5,a
   0847 8F F0              1754 	mov	b,r7
   0849 05 F0              1755 	inc	b
   084B ED                 1756 	mov	a,r5
   084C 80 02              1757 	sjmp	00136$
   084E                    1758 00134$:
   084E 25 E0              1759 	add	a,acc
   0850                    1760 00136$:
   0850 D5 F0 FB           1761 	djnz	b,00134$
   0853 44 0F              1762 	orl	a,#0x0F
   0855 FF                 1763 	mov	r7,a
   0856 4E                 1764 	orl	a,r6
   0857 F5 29              1765 	mov	_LEDSTATE,a
                    0590   1766 	C$fb_app_taster.c$449$2$1 ==.
                           1767 ;	../fb_app_taster.c:449: LEDSTATE=ledvar;
   0859                    1768 00112$:
                    0590   1769 	C$fb_app_taster.c$451$2$1 ==.
                    0590   1770 	XG$switch_led$0$0 ==.
   0859 22                 1771 	ret
                           1772 ;------------------------------------------------------------
                           1773 ;Allocation info for local variables in function 'timer0_int'
                           1774 ;------------------------------------------------------------
                    0591   1775 	G$timer0_int$0$0 ==.
                    0591   1776 	C$fb_app_taster.c$454$2$1 ==.
                           1777 ;	../fb_app_taster.c:454: void timer0_int  (void) __interrupt (1) // Interrupt T0 für soft PWM LED
                           1778 ;	-----------------------------------------
                           1779 ;	 function timer0_int
                           1780 ;	-----------------------------------------
   085A                    1781 _timer0_int:
   085A C0 E0              1782 	push	acc
   085C C0 D0              1783 	push	psw
                    0595   1784 	C$fb_app_taster.c$456$1$1 ==.
                           1785 ;	../fb_app_taster.c:456: dimmcompare++;
   085E 05 2A              1786 	inc	_dimmcompare
                    0597   1787 	C$fb_app_taster.c$457$1$1 ==.
                           1788 ;	../fb_app_taster.c:457: TF0=0;
   0860 C2 8D              1789 	clr	_TCON_5
                    0599   1790 	C$fb_app_taster.c$458$1$1 ==.
                           1791 ;	../fb_app_taster.c:458: if((dimmcompare) <= dimmwert) PORT = LEDSTATE | 0x0F;// LEDs ein
   0862 C3                 1792 	clr	c
   0863 E5 2B              1793 	mov	a,_dimmwert
   0865 95 2A              1794 	subb	a,_dimmcompare
   0867 40 08              1795 	jc	00102$
   0869 74 0F              1796 	mov	a,#0x0F
   086B 45 29              1797 	orl	a,_LEDSTATE
   086D F5 80              1798 	mov	_P0,a
   086F 80 03              1799 	sjmp	00104$
   0871                    1800 00102$:
                    05A8   1801 	C$fb_app_taster.c$459$1$1 ==.
                           1802 ;	../fb_app_taster.c:459: else PORT = 0x0F;//LEDs aus
   0871 75 80 0F           1803 	mov	_P0,#0x0F
   0874                    1804 00104$:
   0874 D0 D0              1805 	pop	psw
   0876 D0 E0              1806 	pop	acc
                    05AF   1807 	C$fb_app_taster.c$461$1$1 ==.
                    05AF   1808 	XG$timer0_int$0$0 ==.
   0878 32                 1809 	reti
                           1810 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1811 ;	eliminated unneeded push/pop dpl
                           1812 ;	eliminated unneeded push/pop dph
                           1813 ;	eliminated unneeded push/pop b
                           1814 ;------------------------------------------------------------
                           1815 ;Allocation info for local variables in function 'delay_timer'
                           1816 ;------------------------------------------------------------
                           1817 ;objno                     Allocated to stack - _bp +1
                           1818 ;delay_value               Allocated to registers r5 
                           1819 ;ledvar                    Allocated to registers r6 
                           1820 ;tmp                       Allocated to registers r4 
                           1821 ;m                         Allocated to registers r7 
                           1822 ;n                         Allocated to registers r6 
                           1823 ;i_tmp                     Allocated to registers r5 r4 
                           1824 ;sloc0                     Allocated to stack - _bp +9
                           1825 ;sloc1                     Allocated to stack - _bp +2
                           1826 ;------------------------------------------------------------
                    05B0   1827 	G$delay_timer$0$0 ==.
                    05B0   1828 	C$fb_app_taster.c$472$1$1 ==.
                           1829 ;	../fb_app_taster.c:472: void delay_timer(void)
                           1830 ;	-----------------------------------------
                           1831 ;	 function delay_timer
                           1832 ;	-----------------------------------------
   0879                    1833 _delay_timer:
   0879 C0 14              1834 	push	_bp
   087B 85 81 14           1835 	mov	_bp,sp
   087E 05 81              1836 	inc	sp
   0880 05 81              1837 	inc	sp
                    05B9   1838 	C$fb_app_taster.c$478$1$1 ==.
                           1839 ;	../fb_app_taster.c:478: RTCCON=0x60;
   0882 75 D1 60           1840 	mov	_RTCCON,#0x60
                    05BC   1841 	C$fb_app_taster.c$479$1$1 ==.
                           1842 ;	../fb_app_taster.c:479: RTCH=0x00;//RTCH=0x01;
   0885 75 D2 00           1843 	mov	_RTCH,#0x00
                    05BF   1844 	C$fb_app_taster.c$480$1$1 ==.
                           1845 ;	../fb_app_taster.c:480: RTCL=0xE6;//RTCL=0xCD;
   0888 75 D3 E6           1846 	mov	_RTCL,#0xE6
                    05C2   1847 	C$fb_app_taster.c$481$1$1 ==.
                           1848 ;	../fb_app_taster.c:481: RTCCON=0x61; //	start_rtc(8) RTC neu starten mit 4ms
   088B 75 D1 61           1849 	mov	_RTCCON,#0x61
                    05C5   1850 	C$fb_app_taster.c$483$1$1 ==.
                           1851 ;	../fb_app_taster.c:483: timer++;
   088E 05 24              1852 	inc	_timer
   0890 E4                 1853 	clr	a
   0891 B5 24 02           1854 	cjne	a,_timer,00192$
   0894 05 25              1855 	inc	(_timer + 1)
   0896                    1856 00192$:
                    05CD   1857 	C$fb_app_taster.c$484$1$1 ==.
                           1858 ;	../fb_app_taster.c:484: timerflags = timer&(~(timer-1));// flanke generieren
   0896 E5 24              1859 	mov	a,_timer
   0898 24 FF              1860 	add	a,#0xFF
   089A FE                 1861 	mov	r6,a
   089B E5 25              1862 	mov	a,(_timer + 1)
   089D 34 FF              1863 	addc	a,#0xFF
   089F FF                 1864 	mov	r7,a
   08A0 EE                 1865 	mov	a,r6
   08A1 F4                 1866 	cpl	a
   08A2 FE                 1867 	mov	r6,a
   08A3 EF                 1868 	mov	a,r7
   08A4 F4                 1869 	cpl	a
   08A5 FF                 1870 	mov	r7,a
   08A6 EE                 1871 	mov	a,r6
   08A7 55 24              1872 	anl	a,_timer
   08A9 F5 26              1873 	mov	_timerflags,a
   08AB EF                 1874 	mov	a,r7
   08AC 55 25              1875 	anl	a,(_timer + 1)
   08AE F5 27              1876 	mov	(_timerflags + 1),a
                    05E7   1877 	C$fb_app_taster.c$485$5$5 ==.
                           1878 ;	../fb_app_taster.c:485: for(n=0;n<16;n++){
   08B0 7F 00              1879 	mov	r7,#0x00
   08B2                    1880 00149$:
   08B2 BF 10 00           1881 	cjne	r7,#0x10,00193$
   08B5                    1882 00193$:
   08B5 50 35              1883 	jnc	00152$
                    05EE   1884 	C$fb_app_taster.c$486$2$2 ==.
                           1885 ;	../fb_app_taster.c:486: if(timerflags & 0x0001){// positive flags erzeugen und schieben
   08B7 E5 26              1886 	mov	a,_timerflags
   08B9 30 E0 22           1887 	jnb	acc.0,00106$
                    05F3   1888 	C$fb_app_taster.c$487$1$1 ==.
                           1889 ;	../fb_app_taster.c:487: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
   08BC 7E 00              1890 	mov	r6,#0x00
   08BE                    1891 00145$:
   08BE BE 08 00           1892 	cjne	r6,#0x08,00196$
   08C1                    1893 00196$:
   08C1 50 1B              1894 	jnc	00106$
                    05FA   1895 	C$fb_app_taster.c$488$4$4 ==.
                           1896 ;	../fb_app_taster.c:488: if( timercnt[m]){
   08C3 EE                 1897 	mov	a,r6
   08C4 24 2C              1898 	add	a,#_timercnt
   08C6 F9                 1899 	mov	r1,a
   08C7 E7                 1900 	mov	a,@r1
   08C8 FD                 1901 	mov	r5,a
   08C9 60 10              1902 	jz	00147$
                    0602   1903 	C$fb_app_taster.c$489$5$5 ==.
                           1904 ;	../fb_app_taster.c:489: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
   08CB EE                 1905 	mov	a,r6
   08CC 24 34              1906 	add	a,#_timerbase
   08CE F8                 1907 	mov	r0,a
   08CF 86 04              1908 	mov	ar4,@r0
   08D1 53 04 0F           1909 	anl	ar4,#0x0F
   08D4 EC                 1910 	mov	a,r4
   08D5 B5 07 03           1911 	cjne	a,ar7,00147$
                    060F   1912 	C$fb_app_taster.c$490$6$6 ==.
                           1913 ;	../fb_app_taster.c:490: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
   08D8 ED                 1914 	mov	a,r5
   08D9 14                 1915 	dec	a
   08DA F7                 1916 	mov	@r1,a
   08DB                    1917 00147$:
                    0612   1918 	C$fb_app_taster.c$487$3$3 ==.
                           1919 ;	../fb_app_taster.c:487: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
   08DB 0E                 1920 	inc	r6
   08DC 80 E0              1921 	sjmp	00145$
   08DE                    1922 00106$:
                    0615   1923 	C$fb_app_taster.c$495$2$2 ==.
                           1924 ;	../fb_app_taster.c:495: timerflags = timerflags>>1;
   08DE E5 27              1925 	mov	a,(_timerflags + 1)
   08E0 C3                 1926 	clr	c
   08E1 13                 1927 	rrc	a
   08E2 C5 26              1928 	xch	a,_timerflags
   08E4 13                 1929 	rrc	a
   08E5 C5 26              1930 	xch	a,_timerflags
   08E7 F5 27              1931 	mov	(_timerflags + 1),a
                    0620   1932 	C$fb_app_taster.c$485$1$1 ==.
                           1933 ;	../fb_app_taster.c:485: for(n=0;n<16;n++){
   08E9 0F                 1934 	inc	r7
   08EA 80 C6              1935 	sjmp	00149$
   08EC                    1936 00152$:
                    0623   1937 	C$fb_app_taster.c$498$4$9 ==.
                           1938 ;	../fb_app_taster.c:498: for(objno=0;objno<8;objno++) {
   08EC A8 14              1939 	mov	r0,_bp
   08EE 08                 1940 	inc	r0
   08EF 76 00              1941 	mov	@r0,#0x00
   08F1                    1942 00153$:
   08F1 A8 14              1943 	mov	r0,_bp
   08F3 08                 1944 	inc	r0
   08F4 B6 08 00           1945 	cjne	@r0,#0x08,00201$
   08F7                    1946 00201$:
   08F7 40 03              1947 	jc	00202$
   08F9 02 0D 3A           1948 	ljmp	00157$
   08FC                    1949 00202$:
                    0633   1950 	C$fb_app_taster.c$499$2$7 ==.
                           1951 ;	../fb_app_taster.c:499: if(!timercnt[objno]) {	// ... es ist also soweit
   08FC A8 14              1952 	mov	r0,_bp
   08FE 08                 1953 	inc	r0
   08FF E6                 1954 	mov	a,@r0
   0900 24 2C              1955 	add	a,#_timercnt
   0902 F9                 1956 	mov	r1,a
   0903 E7                 1957 	mov	a,@r1
   0904 60 03              1958 	jz	00203$
   0906 02 0D 33           1959 	ljmp	00155$
   0909                    1960 00203$:
                    0640   1961 	C$fb_app_taster.c$500$3$8 ==.
                           1962 ;	../fb_app_taster.c:500: delay_value=timerstate[objno]& 0x0F;
   0909 C0 01              1963 	push	ar1
   090B A9 14              1964 	mov	r1,_bp
   090D 09                 1965 	inc	r1
   090E E7                 1966 	mov	a,@r1
   090F 24 3C              1967 	add	a,#_timerstate
   0911 F8                 1968 	mov	r0,a
   0912 D0 01              1969 	pop	ar1
   0914 86 06              1970 	mov	ar6,@r0
   0916 74 0F              1971 	mov	a,#0x0F
   0918 5E                 1972 	anl	a,r6
   0919 FD                 1973 	mov	r5,a
                    0651   1974 	C$fb_app_taster.c$502$3$8 ==.
                           1975 ;	../fb_app_taster.c:502: switch(timerstate[objno] & 0xF0){
   091A 53 06 F0           1976 	anl	ar6,#0xF0
   091D BE 10 02           1977 	cjne	r6,#0x10,00204$
   0920 80 49              1978 	sjmp	00107$
   0922                    1979 00204$:
   0922 BE 20 02           1980 	cjne	r6,#0x20,00205$
   0925 80 67              1981 	sjmp	00108$
   0927                    1982 00205$:
   0927 BE 30 03           1983 	cjne	r6,#0x30,00206$
   092A 02 0A 0E           1984 	ljmp	00113$
   092D                    1985 00206$:
   092D BE 40 03           1986 	cjne	r6,#0x40,00207$
   0930 02 0A A0           1987 	ljmp	00117$
   0933                    1988 00207$:
   0933 BE 50 03           1989 	cjne	r6,#0x50,00208$
   0936 02 0A A7           1990 	ljmp	00118$
   0939                    1991 00208$:
   0939 BE 60 03           1992 	cjne	r6,#0x60,00209$
   093C 02 0D 33           1993 	ljmp	00155$
   093F                    1994 00209$:
   093F BE 70 03           1995 	cjne	r6,#0x70,00210$
   0942 02 0A C3           1996 	ljmp	00121$
   0945                    1997 00210$:
   0945 BE 80 03           1998 	cjne	r6,#0x80,00211$
   0948 02 0A C3           1999 	ljmp	00121$
   094B                    2000 00211$:
   094B BE 90 03           2001 	cjne	r6,#0x90,00212$
   094E 02 0B B6           2002 	ljmp	00129$
   0951                    2003 00212$:
   0951 BE A0 03           2004 	cjne	r6,#0xA0,00213$
   0954 02 0B B6           2005 	ljmp	00129$
   0957                    2006 00213$:
   0957 BE B0 03           2007 	cjne	r6,#0xB0,00214$
   095A 02 0C A0           2008 	ljmp	00134$
   095D                    2009 00214$:
   095D BE C0 03           2010 	cjne	r6,#0xC0,00215$
   0960 02 0C A0           2011 	ljmp	00134$
   0963                    2012 00215$:
   0963 BE F0 02           2013 	cjne	r6,#0xF0,00216$
   0966 80 2C              2014 	sjmp	00109$
   0968                    2015 00216$:
   0968 02 0D 33           2016 	ljmp	00155$
                    06A2   2017 	C$fb_app_taster.c$504$4$9 ==.
                           2018 ;	../fb_app_taster.c:504: case 0x10:
   096B                    2019 00107$:
                    06A2   2020 	C$fb_app_taster.c$506$4$9 ==.
                           2021 ;	../fb_app_taster.c:506: ledvar=LEDSTATE;
   096B AE 29              2022 	mov	r6,_LEDSTATE
                    06A4   2023 	C$fb_app_taster.c$507$4$9 ==.
                           2024 ;	../fb_app_taster.c:507: ledvar &= ~(1<<(objno+4));	// LEDs sind an Pin 4-7
   096D A9 14              2025 	mov	r1,_bp
   096F 09                 2026 	inc	r1
   0970 74 04              2027 	mov	a,#0x04
   0972 27                 2028 	add	a,@r1
   0973 F5 F0              2029 	mov	b,a
   0975 05 F0              2030 	inc	b
   0977 74 01              2031 	mov	a,#0x01
   0979 80 02              2032 	sjmp	00219$
   097B                    2033 00217$:
   097B 25 E0              2034 	add	a,acc
   097D                    2035 00219$:
   097D D5 F0 FB           2036 	djnz	b,00217$
   0980 F4                 2037 	cpl	a
   0981 FC                 2038 	mov	r4,a
   0982 52 06              2039 	anl	ar6,a
                    06BB   2040 	C$fb_app_taster.c$508$4$9 ==.
                           2041 ;	../fb_app_taster.c:508: ledvar |= 0x0F;				// unbedingt taster pins wieder auf 1
   0984 74 0F              2042 	mov	a,#0x0F
   0986 4E                 2043 	orl	a,r6
   0987 F5 29              2044 	mov	_LEDSTATE,a
                    06C0   2045 	C$fb_app_taster.c$510$4$9 ==.
                           2046 ;	../fb_app_taster.c:510: timerstate[objno]=0;
   0989 76 00              2047 	mov	@r0,#0x00
                    06C2   2048 	C$fb_app_taster.c$511$4$9 ==.
                           2049 ;	../fb_app_taster.c:511: break;
   098B 02 0D 33           2050 	ljmp	00155$
                    06C5   2051 	C$fb_app_taster.c$512$4$9 ==.
                           2052 ;	../fb_app_taster.c:512: case 0x20:	// Dimmen
   098E                    2053 00108$:
                    06C5   2054 	C$fb_app_taster.c$513$4$9 ==.
                           2055 ;	../fb_app_taster.c:513: timerstate[objno]|=0xD0;// d0 or 20 = F0
   098E 86 06              2056 	mov	ar6,@r0
   0990 74 D0              2057 	mov	a,#0xD0
   0992 4E                 2058 	orl	a,r6
   0993 F6                 2059 	mov	@r0,a
                    06CB   2060 	C$fb_app_taster.c$514$4$9 ==.
                           2061 ;	../fb_app_taster.c:514: case 0xF0:
   0994                    2062 00109$:
                    06CB   2063 	C$fb_app_taster.c$515$4$9 ==.
                           2064 ;	../fb_app_taster.c:515: write_obj_value(objno+4,delay_value);
   0994 8D 04              2065 	mov	ar4,r5
   0996 7E 00              2066 	mov	r6,#0x00
   0998 A8 14              2067 	mov	r0,_bp
   099A 08                 2068 	inc	r0
   099B 74 04              2069 	mov	a,#0x04
   099D 26                 2070 	add	a,@r0
   099E FB                 2071 	mov	r3,a
   099F C0 03              2072 	push	ar3
   09A1 C0 04              2073 	push	ar4
   09A3 C0 06              2074 	push	ar6
   09A5 8B 82              2075 	mov	dpl,r3
   09A7 12 06 CD           2076 	lcall	_write_obj_value
   09AA 15 81              2077 	dec	sp
   09AC 15 81              2078 	dec	sp
   09AE D0 03              2079 	pop	ar3
                    06E7   2080 	C$fb_app_taster.c$516$4$9 ==.
                           2081 ;	../fb_app_taster.c:516: send_obj_value(objno+4);		// dimmkommando senden
   09B0 8B 82              2082 	mov	dpl,r3
   09B2 12 14 82           2083 	lcall	_send_obj_value
                    06EC   2084 	C$fb_app_taster.c$518$4$9 ==.
                           2085 ;	../fb_app_taster.c:518: if(!(eeprom[0xD5+((objno-4)*4)]& 0x08)){// wenn Telegrammwiederholung eingeschalten
   09B5 A8 14              2086 	mov	r0,_bp
   09B7 08                 2087 	inc	r0
   09B8 E6                 2088 	mov	a,@r0
   09B9 24 FC              2089 	add	a,#0xFC
   09BB 25 E0              2090 	add	a,acc
   09BD 25 E0              2091 	add	a,acc
   09BF 24 D5              2092 	add	a,#0xD5
   09C1 90 1D 00           2093 	mov	dptr,#_eeprom
   09C4 93                 2094 	movc	a,@a+dptr
   09C5 FE                 2095 	mov	r6,a
   09C6 20 E3 30           2096 	jb	acc.3,00111$
                    0700   2097 	C$fb_app_taster.c$545$5$10 ==.
                           2098 ;	../fb_app_taster.c:545: */				timercnt[objno]=tele_repeat_value[eeprom[0xD5+((objno-4)*4)]& 0x07];
   09C9 A8 14              2099 	mov	r0,_bp
   09CB 08                 2100 	inc	r0
   09CC E6                 2101 	mov	a,@r0
   09CD 24 2C              2102 	add	a,#_timercnt
   09CF FE                 2103 	mov	r6,a
   09D0 A8 14              2104 	mov	r0,_bp
   09D2 08                 2105 	inc	r0
   09D3 E6                 2106 	mov	a,@r0
   09D4 24 FC              2107 	add	a,#0xFC
   09D6 25 E0              2108 	add	a,acc
   09D8 25 E0              2109 	add	a,acc
   09DA 24 D5              2110 	add	a,#0xD5
   09DC 90 1D 00           2111 	mov	dptr,#_eeprom
   09DF 93                 2112 	movc	a,@a+dptr
   09E0 FC                 2113 	mov	r4,a
   09E1 74 07              2114 	mov	a,#0x07
   09E3 5C                 2115 	anl	a,r4
   09E4 90 18 37           2116 	mov	dptr,#_tele_repeat_value
   09E7 93                 2117 	movc	a,@a+dptr
   09E8 FC                 2118 	mov	r4,a
   09E9 A8 06              2119 	mov	r0,ar6
   09EB A6 04              2120 	mov	@r0,ar4
                    0724   2121 	C$fb_app_taster.c$547$5$10 ==.
                           2122 ;	../fb_app_taster.c:547: timerbase[objno]=0;
   09ED A8 14              2123 	mov	r0,_bp
   09EF 08                 2124 	inc	r0
   09F0 E6                 2125 	mov	a,@r0
   09F1 24 34              2126 	add	a,#_timerbase
   09F3 F8                 2127 	mov	r0,a
   09F4 76 00              2128 	mov	@r0,#0x00
   09F6 02 0D 33           2129 	ljmp	00155$
   09F9                    2130 00111$:
                    0730   2131 	C$fb_app_taster.c$550$5$11 ==.
                           2132 ;	../fb_app_taster.c:550: timercnt[objno]=0;
   09F9 A8 14              2133 	mov	r0,_bp
   09FB 08                 2134 	inc	r0
   09FC E6                 2135 	mov	a,@r0
   09FD 24 2C              2136 	add	a,#_timercnt
   09FF F8                 2137 	mov	r0,a
   0A00 76 00              2138 	mov	@r0,#0x00
                    0739   2139 	C$fb_app_taster.c$551$5$11 ==.
                           2140 ;	../fb_app_taster.c:551: timerstate[objno]=0;
   0A02 A8 14              2141 	mov	r0,_bp
   0A04 08                 2142 	inc	r0
   0A05 E6                 2143 	mov	a,@r0
   0A06 24 3C              2144 	add	a,#_timerstate
   0A08 F8                 2145 	mov	r0,a
   0A09 76 00              2146 	mov	@r0,#0x00
                    0742   2147 	C$fb_app_taster.c$553$4$9 ==.
                           2148 ;	../fb_app_taster.c:553: break;
   0A0B 02 0D 33           2149 	ljmp	00155$
                    0745   2150 	C$fb_app_taster.c$556$4$9 ==.
                           2151 ;	../fb_app_taster.c:556: case 0x30:	// 0x30, 0x31 für langzeit telegramm senden
   0A0E                    2152 00113$:
                    0745   2153 	C$fb_app_taster.c$557$4$9 ==.
                           2154 ;	../fb_app_taster.c:557: write_obj_value(objno+4,delay_value & 0x01);
   0A0E 53 05 01           2155 	anl	ar5,#0x01
   0A11 7E 00              2156 	mov	r6,#0x00
   0A13 A8 14              2157 	mov	r0,_bp
   0A15 08                 2158 	inc	r0
   0A16 74 04              2159 	mov	a,#0x04
   0A18 26                 2160 	add	a,@r0
   0A19 FC                 2161 	mov	r4,a
   0A1A C0 04              2162 	push	ar4
   0A1C C0 05              2163 	push	ar5
   0A1E C0 06              2164 	push	ar6
   0A20 8C 82              2165 	mov	dpl,r4
   0A22 12 06 CD           2166 	lcall	_write_obj_value
   0A25 15 81              2167 	dec	sp
   0A27 15 81              2168 	dec	sp
   0A29 D0 04              2169 	pop	ar4
                    0762   2170 	C$fb_app_taster.c$558$4$9 ==.
                           2171 ;	../fb_app_taster.c:558: send_obj_value(objno+4);				// Langzeit Telegramm senden
   0A2B 8C 82              2172 	mov	dpl,r4
   0A2D 12 14 82           2173 	lcall	_send_obj_value
                    0767   2174 	C$fb_app_taster.c$561$4$9 ==.
                           2175 ;	../fb_app_taster.c:561: timercnt[objno]=eeprom[DEL_FACTOR2+((objno-4)*4)];	// Faktor Dauer	T2
   0A30 A8 14              2176 	mov	r0,_bp
   0A32 08                 2177 	inc	r0
   0A33 E6                 2178 	mov	a,@r0
   0A34 24 2C              2179 	add	a,#_timercnt
   0A36 FE                 2180 	mov	r6,a
   0A37 A8 14              2181 	mov	r0,_bp
   0A39 08                 2182 	inc	r0
   0A3A E6                 2183 	mov	a,@r0
   0A3B 24 FC              2184 	add	a,#0xFC
   0A3D 25 E0              2185 	add	a,acc
   0A3F 25 E0              2186 	add	a,acc
   0A41 FD                 2187 	mov	r5,a
   0A42 24 D6              2188 	add	a,#0xD6
   0A44 90 1D 00           2189 	mov	dptr,#_eeprom
   0A47 93                 2190 	movc	a,@a+dptr
   0A48 FC                 2191 	mov	r4,a
   0A49 A8 06              2192 	mov	r0,ar6
   0A4B A6 04              2193 	mov	@r0,ar4
                    0784   2194 	C$fb_app_taster.c$562$4$9 ==.
                           2195 ;	../fb_app_taster.c:562: timerbase[objno]=(eeprom[0xD4+((objno-4)*4)]&0x60)>>3;	// Basis Dauer T2
   0A4D A8 14              2196 	mov	r0,_bp
   0A4F 08                 2197 	inc	r0
   0A50 E6                 2198 	mov	a,@r0
   0A51 24 34              2199 	add	a,#_timerbase
   0A53 FC                 2200 	mov	r4,a
   0A54 74 D4              2201 	mov	a,#0xD4
   0A56 2D                 2202 	add	a,r5
   0A57 90 1D 00           2203 	mov	dptr,#_eeprom
   0A5A 93                 2204 	movc	a,@a+dptr
   0A5B 54 60              2205 	anl	a,#0x60
   0A5D C4                 2206 	swap	a
   0A5E 23                 2207 	rl	a
   0A5F 54 1F              2208 	anl	a,#0x1F
   0A61 FD                 2209 	mov	r5,a
   0A62 A8 04              2210 	mov	r0,ar4
   0A64 A6 05              2211 	mov	@r0,ar5
                    079D   2212 	C$fb_app_taster.c$563$4$9 ==.
                           2213 ;	../fb_app_taster.c:563: if (timercnt[objno]) {	// wenn keine lamellenverstellzeit dann nix tun
   0A66 A8 06              2214 	mov	r0,ar6
   0A68 E6                 2215 	mov	a,@r0
   0A69 60 25              2216 	jz	00115$
                    07A2   2217 	C$fb_app_taster.c$564$5$12 ==.
                           2218 ;	../fb_app_taster.c:564: timerstate[objno]=((eeprom[COMMAND+((objno-4)*4)]&0x10)>>4)+0x40; // 0x40,0x41 fuer ende T2 (lamellenvestellzeit)
   0A6B A8 14              2219 	mov	r0,_bp
   0A6D 08                 2220 	inc	r0
   0A6E E6                 2221 	mov	a,@r0
   0A6F 24 3C              2222 	add	a,#_timerstate
   0A71 FD                 2223 	mov	r5,a
   0A72 A8 14              2224 	mov	r0,_bp
   0A74 08                 2225 	inc	r0
   0A75 E6                 2226 	mov	a,@r0
   0A76 24 FC              2227 	add	a,#0xFC
   0A78 25 E0              2228 	add	a,acc
   0A7A 25 E0              2229 	add	a,acc
   0A7C 24 D3              2230 	add	a,#0xD3
   0A7E 90 1D 00           2231 	mov	dptr,#_eeprom
   0A81 93                 2232 	movc	a,@a+dptr
   0A82 54 10              2233 	anl	a,#0x10
   0A84 C4                 2234 	swap	a
   0A85 54 0F              2235 	anl	a,#0x0F
   0A87 FC                 2236 	mov	r4,a
   0A88 24 40              2237 	add	a,#0x40
   0A8A A8 05              2238 	mov	r0,ar5
   0A8C F6                 2239 	mov	@r0,a
   0A8D 02 0D 33           2240 	ljmp	00155$
   0A90                    2241 00115$:
                    07C7   2242 	C$fb_app_taster.c$567$5$13 ==.
                           2243 ;	../fb_app_taster.c:567: timercnt[objno]=0;
   0A90 A8 06              2244 	mov	r0,ar6
   0A92 76 00              2245 	mov	@r0,#0x00
                    07CB   2246 	C$fb_app_taster.c$568$5$13 ==.
                           2247 ;	../fb_app_taster.c:568: timerstate[objno]=0;
   0A94 A8 14              2248 	mov	r0,_bp
   0A96 08                 2249 	inc	r0
   0A97 E6                 2250 	mov	a,@r0
   0A98 24 3C              2251 	add	a,#_timerstate
   0A9A F8                 2252 	mov	r0,a
   0A9B 76 00              2253 	mov	@r0,#0x00
                    07D4   2254 	C$fb_app_taster.c$570$4$9 ==.
                           2255 ;	../fb_app_taster.c:570: break;
   0A9D 02 0D 33           2256 	ljmp	00155$
                    07D7   2257 	C$fb_app_taster.c$571$4$9 ==.
                           2258 ;	../fb_app_taster.c:571: case 0x40:
   0AA0                    2259 00117$:
                    07D7   2260 	C$fb_app_taster.c$573$4$9 ==.
                           2261 ;	../fb_app_taster.c:573: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
   0AA0 76 00              2262 	mov	@r0,#0x00
                    07D9   2263 	C$fb_app_taster.c$574$4$9 ==.
                           2264 ;	../fb_app_taster.c:574: timercnt[objno]=0;
   0AA2 77 00              2265 	mov	@r1,#0x00
                    07DB   2266 	C$fb_app_taster.c$575$4$9 ==.
                           2267 ;	../fb_app_taster.c:575: break;
   0AA4 02 0D 33           2268 	ljmp	00155$
                    07DE   2269 	C$fb_app_taster.c$576$4$9 ==.
                           2270 ;	../fb_app_taster.c:576: case 0x50: // Wertgeber Lichtszene lang drücken zum speichern
   0AA7                    2271 00118$:
                    07DE   2272 	C$fb_app_taster.c$577$4$9 ==.
                           2273 ;	../fb_app_taster.c:577: switch_led(objno-4,1);
   0AA7 A8 14              2274 	mov	r0,_bp
   0AA9 08                 2275 	inc	r0
   0AAA E6                 2276 	mov	a,@r0
   0AAB 24 FC              2277 	add	a,#0xFC
   0AAD F5 82              2278 	mov	dpl,a
   0AAF D2 F0              2279 	setb	b[0]
   0AB1 85 F0 23           2280 	mov	bits,b
   0AB4 12 07 BB           2281 	lcall	_switch_led
                    07EE   2282 	C$fb_app_taster.c$578$4$9 ==.
                           2283 ;	../fb_app_taster.c:578: timerstate[objno]=0x60;
   0AB7 A8 14              2284 	mov	r0,_bp
   0AB9 08                 2285 	inc	r0
   0ABA E6                 2286 	mov	a,@r0
   0ABB 24 3C              2287 	add	a,#_timerstate
   0ABD F8                 2288 	mov	r0,a
   0ABE 76 60              2289 	mov	@r0,#0x60
                    07F7   2290 	C$fb_app_taster.c$579$4$9 ==.
                           2291 ;	../fb_app_taster.c:579: break;
   0AC0 02 0D 33           2292 	ljmp	00155$
                    07FA   2293 	C$fb_app_taster.c$584$4$9 ==.
                           2294 ;	../fb_app_taster.c:584: case 0x80: // Wertgeber Helligkeit verstellen
   0AC3                    2295 00121$:
                    07FA   2296 	C$fb_app_taster.c$585$4$9 ==.
                           2297 ;	../fb_app_taster.c:585: timerbase[objno]=0;
   0AC3 A8 14              2298 	mov	r0,_bp
   0AC5 08                 2299 	inc	r0
   0AC6 E6                 2300 	mov	a,@r0
   0AC7 24 34              2301 	add	a,#_timerbase
   0AC9 F8                 2302 	mov	r0,a
   0ACA 76 00              2303 	mov	@r0,#0x00
                    0803   2304 	C$fb_app_taster.c$586$4$9 ==.
                           2305 ;	../fb_app_taster.c:586: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
   0ACC A8 14              2306 	mov	r0,_bp
   0ACE 08                 2307 	inc	r0
   0ACF E6                 2308 	mov	a,@r0
   0AD0 24 2C              2309 	add	a,#_timercnt
   0AD2 F9                 2310 	mov	r1,a
   0AD3 A8 14              2311 	mov	r0,_bp
   0AD5 08                 2312 	inc	r0
   0AD6 E6                 2313 	mov	a,@r0
   0AD7 24 FC              2314 	add	a,#0xFC
   0AD9 25 E0              2315 	add	a,acc
   0ADB 25 E0              2316 	add	a,acc
   0ADD FE                 2317 	mov	r6,a
   0ADE 24 D4              2318 	add	a,#0xD4
   0AE0 90 1D 00           2319 	mov	dptr,#_eeprom
   0AE3 93                 2320 	movc	a,@a+dptr
   0AE4 54 30              2321 	anl	a,#0x30
   0AE6 C4                 2322 	swap	a
   0AE7 54 0F              2323 	anl	a,#0x0F
   0AE9 90 18 37           2324 	mov	dptr,#_tele_repeat_value
   0AEC 93                 2325 	movc	a,@a+dptr
   0AED F7                 2326 	mov	@r1,a
                    0825   2327 	C$fb_app_taster.c$587$4$9 ==.
                           2328 ;	../fb_app_taster.c:587: i_tmp=(eeprom[0xD5+4*(objno-4)])<<8;
   0AEE 74 D5              2329 	mov	a,#0xD5
   0AF0 2E                 2330 	add	a,r6
   0AF1 90 1D 00           2331 	mov	dptr,#_eeprom
   0AF4 93                 2332 	movc	a,@a+dptr
   0AF5 FC                 2333 	mov	r4,a
   0AF6 7D 00              2334 	mov	r5,#0x00
                    082F   2335 	C$fb_app_taster.c$588$4$9 ==.
                           2336 ;	../fb_app_taster.c:588: i_tmp +=eeprom[0xD6+4*(objno-4)];
   0AF8 74 D6              2337 	mov	a,#0xD6
   0AFA 2E                 2338 	add	a,r6
   0AFB 90 1D 00           2339 	mov	dptr,#_eeprom
   0AFE 93                 2340 	movc	a,@a+dptr
   0AFF FE                 2341 	mov	r6,a
   0B00 7B 00              2342 	mov	r3,#0x00
   0B02 2D                 2343 	add	a,r5
   0B03 FD                 2344 	mov	r5,a
   0B04 EB                 2345 	mov	a,r3
   0B05 3C                 2346 	addc	a,r4
   0B06 FC                 2347 	mov	r4,a
                    083E   2348 	C$fb_app_taster.c$589$4$9 ==.
                           2349 ;	../fb_app_taster.c:589: if (i_tmp==0x39FD || i_tmp==0x3828)	//Differenz ausgleichen
   0B07 BD FD 05           2350 	cjne	r5,#0xFD,00222$
   0B0A BC 39 02           2351 	cjne	r4,#0x39,00222$
   0B0D 80 06              2352 	sjmp	00122$
   0B0F                    2353 00222$:
   0B0F BD 28 08           2354 	cjne	r5,#0x28,00123$
   0B12 BC 38 05           2355 	cjne	r4,#0x38,00123$
   0B15                    2356 00122$:
                    084C   2357 	C$fb_app_taster.c$591$5$14 ==.
                           2358 ;	../fb_app_taster.c:591: i_tmp--;
   0B15 1D                 2359 	dec	r5
   0B16 BD FF 01           2360 	cjne	r5,#0xFF,00225$
   0B19 1C                 2361 	dec	r4
   0B1A                    2362 00225$:
   0B1A                    2363 00123$:
                    0851   2364 	C$fb_app_taster.c$593$4$9 ==.
                           2365 ;	../fb_app_taster.c:593: i_tmp -= 0x27;
   0B1A ED                 2366 	mov	a,r5
   0B1B 24 D9              2367 	add	a,#0xD9
   0B1D FD                 2368 	mov	r5,a
   0B1E EC                 2369 	mov	a,r4
   0B1F 34 FF              2370 	addc	a,#0xFF
                    0858   2371 	C$fb_app_taster.c$595$4$9 ==.
                           2372 ;	../fb_app_taster.c:595: if(!(i_tmp&0x0800)){
   0B21 FC                 2373 	mov	r4,a
   0B22 20 E3 06           2374 	jb	acc.3,00126$
                    085C   2375 	C$fb_app_taster.c$596$5$15 ==.
                           2376 ;	../fb_app_taster.c:596: i_tmp=0x03C94;
   0B25 7D 94              2377 	mov	r5,#0x94
   0B27 7C 3C              2378 	mov	r4,#0x3C
   0B29 80 18              2379 	sjmp	00127$
   0B2B                    2380 00126$:
                    0862   2381 	C$fb_app_taster.c$599$5$16 ==.
                           2382 ;	../fb_app_taster.c:599: switch_led(objno-4,1);
   0B2B A8 14              2383 	mov	r0,_bp
   0B2D 08                 2384 	inc	r0
   0B2E E6                 2385 	mov	a,@r0
   0B2F 24 FC              2386 	add	a,#0xFC
   0B31 F5 82              2387 	mov	dpl,a
   0B33 D2 F0              2388 	setb	b[0]
   0B35 C0 05              2389 	push	ar5
   0B37 C0 04              2390 	push	ar4
   0B39 85 F0 23           2391 	mov	bits,b
   0B3C 12 07 BB           2392 	lcall	_switch_led
   0B3F D0 04              2393 	pop	ar4
   0B41 D0 05              2394 	pop	ar5
   0B43                    2395 00127$:
                    087A   2396 	C$fb_app_taster.c$601$4$9 ==.
                           2397 ;	../fb_app_taster.c:601: write_obj_value(objno+4,i_tmp);// wir rechnen immer mit exp 2^7
   0B43 A8 14              2398 	mov	r0,_bp
   0B45 08                 2399 	inc	r0
   0B46 A9 14              2400 	mov	r1,_bp
   0B48 09                 2401 	inc	r1
   0B49 09                 2402 	inc	r1
   0B4A 74 04              2403 	mov	a,#0x04
   0B4C 26                 2404 	add	a,@r0
   0B4D F7                 2405 	mov	@r1,a
   0B4E C0 05              2406 	push	ar5
   0B50 C0 04              2407 	push	ar4
   0B52 A8 14              2408 	mov	r0,_bp
   0B54 08                 2409 	inc	r0
   0B55 08                 2410 	inc	r0
   0B56 86 82              2411 	mov	dpl,@r0
   0B58 12 06 CD           2412 	lcall	_write_obj_value
   0B5B 15 81              2413 	dec	sp
   0B5D 15 81              2414 	dec	sp
                    0896   2415 	C$fb_app_taster.c$602$4$9 ==.
                           2416 ;	../fb_app_taster.c:602: timerstate[objno]=0x80;
   0B5F A8 14              2417 	mov	r0,_bp
   0B61 08                 2418 	inc	r0
   0B62 E6                 2419 	mov	a,@r0
   0B63 24 3C              2420 	add	a,#_timerstate
   0B65 F8                 2421 	mov	r0,a
   0B66 76 80              2422 	mov	@r0,#0x80
                    089F   2423 	C$fb_app_taster.c$603$4$9 ==.
                           2424 ;	../fb_app_taster.c:603: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   0B68 C2 AF              2425 	clr	_IEN0_7
                    08A1   2426 	C$fb_app_taster.c$604$4$9 ==.
                           2427 ;	../fb_app_taster.c:604: START_WRITECYCLE
   0B6A 75 E4 00           2428 	mov	_FMCON,#0x00
                    08A4   2429 	C$fb_app_taster.c$605$5$17 ==.
                           2430 ;	../fb_app_taster.c:605: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
   0B6D 75 E7 1D           2431 	mov	_FMADRH,#0x1D
   0B70 A8 14              2432 	mov	r0,_bp
   0B72 08                 2433 	inc	r0
   0B73 E6                 2434 	mov	a,@r0
   0B74 24 FC              2435 	add	a,#0xFC
   0B76 25 E0              2436 	add	a,acc
   0B78 25 E0              2437 	add	a,acc
   0B7A FD                 2438 	mov	r5,a
   0B7B 24 D5              2439 	add	a,#0xD5
   0B7D F5 E6              2440 	mov	_FMADRL,a
   0B7F A8 14              2441 	mov	r0,_bp
   0B81 08                 2442 	inc	r0
   0B82 08                 2443 	inc	r0
   0B83 86 82              2444 	mov	dpl,@r0
   0B85 C0 05              2445 	push	ar5
   0B87 12 06 8B           2446 	lcall	_read_obj_value
   0B8A AB 83              2447 	mov	r3,dph
   0B8C D0 05              2448 	pop	ar5
   0B8E 8B E5              2449 	mov	_FMDATA,r3
                    08C7   2450 	C$fb_app_taster.c$606$5$18 ==.
                           2451 ;	../fb_app_taster.c:606: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
   0B90 75 E7 1D           2452 	mov	_FMADRH,#0x1D
   0B93 74 D6              2453 	mov	a,#0xD6
   0B95 2D                 2454 	add	a,r5
   0B96 F5 E6              2455 	mov	_FMADRL,a
   0B98 A8 14              2456 	mov	r0,_bp
   0B9A 08                 2457 	inc	r0
   0B9B 08                 2458 	inc	r0
   0B9C 86 82              2459 	mov	dpl,@r0
   0B9E 12 06 8B           2460 	lcall	_read_obj_value
   0BA1 AA 82              2461 	mov	r2,dpl
   0BA3 8A E5              2462 	mov	_FMDATA,r2
                    08DC   2463 	C$fb_app_taster.c$607$4$9 ==.
                           2464 ;	../fb_app_taster.c:607: STOP_WRITECYCLE // Luxwert speichern
   0BA5 75 E4 68           2465 	mov	_FMCON,#0x68
                    08DF   2466 	C$fb_app_taster.c$608$4$9 ==.
                           2467 ;	../fb_app_taster.c:608: EA=1;
   0BA8 D2 AF              2468 	setb	_IEN0_7
                    08E1   2469 	C$fb_app_taster.c$609$4$9 ==.
                           2470 ;	../fb_app_taster.c:609: send_obj_value(objno+4);
   0BAA A8 14              2471 	mov	r0,_bp
   0BAC 08                 2472 	inc	r0
   0BAD 08                 2473 	inc	r0
   0BAE 86 82              2474 	mov	dpl,@r0
   0BB0 12 14 82           2475 	lcall	_send_obj_value
                    08EA   2476 	C$fb_app_taster.c$611$4$9 ==.
                           2477 ;	../fb_app_taster.c:611: break;
   0BB3 02 0D 33           2478 	ljmp	00155$
                    08ED   2479 	C$fb_app_taster.c$614$4$9 ==.
                           2480 ;	../fb_app_taster.c:614: case 0xA0: // Wertgeber Temperatur verstellen
   0BB6                    2481 00129$:
                    08ED   2482 	C$fb_app_taster.c$615$4$9 ==.
                           2483 ;	../fb_app_taster.c:615: timerbase[objno]=0;
   0BB6 A8 14              2484 	mov	r0,_bp
   0BB8 08                 2485 	inc	r0
   0BB9 E6                 2486 	mov	a,@r0
   0BBA 24 34              2487 	add	a,#_timerbase
   0BBC F8                 2488 	mov	r0,a
   0BBD 76 00              2489 	mov	@r0,#0x00
                    08F6   2490 	C$fb_app_taster.c$616$4$9 ==.
                           2491 ;	../fb_app_taster.c:616: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
   0BBF A8 14              2492 	mov	r0,_bp
   0BC1 08                 2493 	inc	r0
   0BC2 E6                 2494 	mov	a,@r0
   0BC3 24 2C              2495 	add	a,#_timercnt
   0BC5 F9                 2496 	mov	r1,a
   0BC6 A8 14              2497 	mov	r0,_bp
   0BC8 08                 2498 	inc	r0
   0BC9 E6                 2499 	mov	a,@r0
   0BCA 24 FC              2500 	add	a,#0xFC
   0BCC 25 E0              2501 	add	a,acc
   0BCE 25 E0              2502 	add	a,acc
   0BD0 FF                 2503 	mov	r7,a
   0BD1 24 D4              2504 	add	a,#0xD4
   0BD3 90 1D 00           2505 	mov	dptr,#_eeprom
   0BD6 93                 2506 	movc	a,@a+dptr
   0BD7 54 30              2507 	anl	a,#0x30
   0BD9 C4                 2508 	swap	a
   0BDA 54 0F              2509 	anl	a,#0x0F
   0BDC 90 18 37           2510 	mov	dptr,#_tele_repeat_value
   0BDF 93                 2511 	movc	a,@a+dptr
   0BE0 F7                 2512 	mov	@r1,a
                    0918   2513 	C$fb_app_taster.c$617$4$9 ==.
                           2514 ;	../fb_app_taster.c:617: i_tmp=(eeprom[0xD5+4*(objno-4)]&0x07)<<8;
   0BE1 74 D5              2515 	mov	a,#0xD5
   0BE3 2F                 2516 	add	a,r7
   0BE4 90 1D 00           2517 	mov	dptr,#_eeprom
   0BE7 93                 2518 	movc	a,@a+dptr
   0BE8 FE                 2519 	mov	r6,a
   0BE9 53 06 07           2520 	anl	ar6,#0x07
   0BEC 8E 03              2521 	mov	ar3,r6
   0BEE 7E 00              2522 	mov	r6,#0x00
   0BF0 8E 05              2523 	mov	ar5,r6
   0BF2 8B 04              2524 	mov	ar4,r3
                    092B   2525 	C$fb_app_taster.c$618$4$9 ==.
                           2526 ;	../fb_app_taster.c:618: i_tmp +=eeprom[0xD6+4*(objno-4)];
   0BF4 74 D6              2527 	mov	a,#0xD6
   0BF6 2F                 2528 	add	a,r7
   0BF7 90 1D 00           2529 	mov	dptr,#_eeprom
   0BFA 93                 2530 	movc	a,@a+dptr
   0BFB FF                 2531 	mov	r7,a
   0BFC 7E 00              2532 	mov	r6,#0x00
   0BFE 2D                 2533 	add	a,r5
   0BFF FD                 2534 	mov	r5,a
   0C00 EE                 2535 	mov	a,r6
   0C01 3C                 2536 	addc	a,r4
   0C02 FC                 2537 	mov	r4,a
                    093A   2538 	C$fb_app_taster.c$619$4$9 ==.
                           2539 ;	../fb_app_taster.c:619: if(i_tmp>=0x0032){
   0C03 C3                 2540 	clr	c
   0C04 ED                 2541 	mov	a,r5
   0C05 94 32              2542 	subb	a,#0x32
   0C07 EC                 2543 	mov	a,r4
   0C08 94 00              2544 	subb	a,#0x00
   0C0A 40 22              2545 	jc	00131$
                    0943   2546 	C$fb_app_taster.c$620$5$19 ==.
                           2547 ;	../fb_app_taster.c:620: i_tmp -= 0x32;
   0C0C ED                 2548 	mov	a,r5
   0C0D 24 CE              2549 	add	a,#0xCE
   0C0F FD                 2550 	mov	r5,a
   0C10 EC                 2551 	mov	a,r4
   0C11 34 FF              2552 	addc	a,#0xFF
   0C13 FC                 2553 	mov	r4,a
                    094B   2554 	C$fb_app_taster.c$621$5$19 ==.
                           2555 ;	../fb_app_taster.c:621: switch_led(objno-4,1);
   0C14 A8 14              2556 	mov	r0,_bp
   0C16 08                 2557 	inc	r0
   0C17 E6                 2558 	mov	a,@r0
   0C18 24 FC              2559 	add	a,#0xFC
   0C1A F5 82              2560 	mov	dpl,a
   0C1C D2 F0              2561 	setb	b[0]
   0C1E C0 05              2562 	push	ar5
   0C20 C0 04              2563 	push	ar4
   0C22 85 F0 23           2564 	mov	bits,b
   0C25 12 07 BB           2565 	lcall	_switch_led
   0C28 D0 04              2566 	pop	ar4
   0C2A D0 05              2567 	pop	ar5
   0C2C 80 04              2568 	sjmp	00132$
   0C2E                    2569 00131$:
                    0965   2570 	C$fb_app_taster.c$624$5$20 ==.
                           2571 ;	../fb_app_taster.c:624: i_tmp=0x07D0;
   0C2E 7D D0              2572 	mov	r5,#0xD0
   0C30 7C 07              2573 	mov	r4,#0x07
   0C32                    2574 00132$:
                    0969   2575 	C$fb_app_taster.c$626$4$9 ==.
                           2576 ;	../fb_app_taster.c:626: write_obj_value(objno+4,i_tmp|0x0800);// wir rechnen immer mit exp 2^1
   0C32 43 04 08           2577 	orl	ar4,#0x08
   0C35 A8 14              2578 	mov	r0,_bp
   0C37 08                 2579 	inc	r0
   0C38 74 04              2580 	mov	a,#0x04
   0C3A 26                 2581 	add	a,@r0
   0C3B FF                 2582 	mov	r7,a
   0C3C C0 07              2583 	push	ar7
   0C3E C0 05              2584 	push	ar5
   0C40 C0 04              2585 	push	ar4
   0C42 8F 82              2586 	mov	dpl,r7
   0C44 12 06 CD           2587 	lcall	_write_obj_value
   0C47 15 81              2588 	dec	sp
   0C49 15 81              2589 	dec	sp
   0C4B D0 07              2590 	pop	ar7
                    0984   2591 	C$fb_app_taster.c$627$4$9 ==.
                           2592 ;	../fb_app_taster.c:627: timerstate[objno]=0xA0;
   0C4D A8 14              2593 	mov	r0,_bp
   0C4F 08                 2594 	inc	r0
   0C50 E6                 2595 	mov	a,@r0
   0C51 24 3C              2596 	add	a,#_timerstate
   0C53 F8                 2597 	mov	r0,a
   0C54 76 A0              2598 	mov	@r0,#0xA0
                    098D   2599 	C$fb_app_taster.c$628$4$9 ==.
                           2600 ;	../fb_app_taster.c:628: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   0C56 C2 AF              2601 	clr	_IEN0_7
                    098F   2602 	C$fb_app_taster.c$629$4$9 ==.
                           2603 ;	../fb_app_taster.c:629: START_WRITECYCLE
   0C58 75 E4 00           2604 	mov	_FMCON,#0x00
                    0992   2605 	C$fb_app_taster.c$630$5$21 ==.
                           2606 ;	../fb_app_taster.c:630: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
   0C5B 75 E7 1D           2607 	mov	_FMADRH,#0x1D
   0C5E A8 14              2608 	mov	r0,_bp
   0C60 08                 2609 	inc	r0
   0C61 E6                 2610 	mov	a,@r0
   0C62 24 FC              2611 	add	a,#0xFC
   0C64 25 E0              2612 	add	a,acc
   0C66 25 E0              2613 	add	a,acc
   0C68 FE                 2614 	mov	r6,a
   0C69 24 D5              2615 	add	a,#0xD5
   0C6B F5 E6              2616 	mov	_FMADRL,a
   0C6D 8F 82              2617 	mov	dpl,r7
   0C6F C0 07              2618 	push	ar7
   0C71 C0 06              2619 	push	ar6
   0C73 12 06 8B           2620 	lcall	_read_obj_value
   0C76 AB 83              2621 	mov	r3,dph
   0C78 D0 06              2622 	pop	ar6
   0C7A D0 07              2623 	pop	ar7
   0C7C 8B E5              2624 	mov	_FMDATA,r3
                    09B5   2625 	C$fb_app_taster.c$631$5$22 ==.
                           2626 ;	../fb_app_taster.c:631: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
   0C7E 75 E7 1D           2627 	mov	_FMADRH,#0x1D
   0C81 74 D6              2628 	mov	a,#0xD6
   0C83 2E                 2629 	add	a,r6
   0C84 F5 E6              2630 	mov	_FMADRL,a
   0C86 8F 82              2631 	mov	dpl,r7
   0C88 C0 07              2632 	push	ar7
   0C8A 12 06 8B           2633 	lcall	_read_obj_value
   0C8D AB 82              2634 	mov	r3,dpl
   0C8F D0 07              2635 	pop	ar7
   0C91 8B E5              2636 	mov	_FMDATA,r3
                    09CA   2637 	C$fb_app_taster.c$632$4$9 ==.
                           2638 ;	../fb_app_taster.c:632: STOP_WRITECYCLE // Temperaturwert speichern
   0C93 75 E4 68           2639 	mov	_FMCON,#0x68
                    09CD   2640 	C$fb_app_taster.c$633$4$9 ==.
                           2641 ;	../fb_app_taster.c:633: EA=1;
   0C96 D2 AF              2642 	setb	_IEN0_7
                    09CF   2643 	C$fb_app_taster.c$634$4$9 ==.
                           2644 ;	../fb_app_taster.c:634: send_obj_value(objno+4);
   0C98 8F 82              2645 	mov	dpl,r7
   0C9A 12 14 82           2646 	lcall	_send_obj_value
                    09D4   2647 	C$fb_app_taster.c$636$4$9 ==.
                           2648 ;	../fb_app_taster.c:636: break;
   0C9D 02 0D 33           2649 	ljmp	00155$
                    09D7   2650 	C$fb_app_taster.c$639$4$9 ==.
                           2651 ;	../fb_app_taster.c:639: case 0xC0: // Wertgeber Dimmer verstellen
   0CA0                    2652 00134$:
                    09D7   2653 	C$fb_app_taster.c$640$4$9 ==.
                           2654 ;	../fb_app_taster.c:640: tmp=read_obj_value(objno+4);//
   0CA0 A8 14              2655 	mov	r0,_bp
   0CA2 08                 2656 	inc	r0
   0CA3 74 04              2657 	mov	a,#0x04
   0CA5 26                 2658 	add	a,@r0
   0CA6 F5 82              2659 	mov	dpl,a
   0CA8 12 06 8B           2660 	lcall	_read_obj_value
   0CAB AC 82              2661 	mov	r4,dpl
   0CAD AD 83              2662 	mov	r5,dph
                    09E6   2663 	C$fb_app_taster.c$641$4$9 ==.
                           2664 ;	../fb_app_taster.c:641: m=eeprom[0xD4+((objno-4)*4)]& 0x3F;// schrittweite und zeit zw. telegrammen
   0CAF A8 14              2665 	mov	r0,_bp
   0CB1 08                 2666 	inc	r0
   0CB2 E6                 2667 	mov	a,@r0
   0CB3 24 FC              2668 	add	a,#0xFC
   0CB5 25 E0              2669 	add	a,acc
   0CB7 25 E0              2670 	add	a,acc
   0CB9 24 D4              2671 	add	a,#0xD4
   0CBB 90 1D 00           2672 	mov	dptr,#_eeprom
   0CBE 93                 2673 	movc	a,@a+dptr
   0CBF FF                 2674 	mov	r7,a
   0CC0 53 07 3F           2675 	anl	ar7,#0x3F
                    09FA   2676 	C$fb_app_taster.c$642$4$9 ==.
                           2677 ;	../fb_app_taster.c:642: n= m & 0x0F;  // Schrittweite
   0CC3 74 0F              2678 	mov	a,#0x0F
   0CC5 5F                 2679 	anl	a,r7
   0CC6 FE                 2680 	mov	r6,a
                    09FE   2681 	C$fb_app_taster.c$643$4$9 ==.
                           2682 ;	../fb_app_taster.c:643: m=m>>4;// zeit zwischen telegrammen
   0CC7 EF                 2683 	mov	a,r7
   0CC8 C4                 2684 	swap	a
   0CC9 54 0F              2685 	anl	a,#0x0F
   0CCB FF                 2686 	mov	r7,a
                    0A03   2687 	C$fb_app_taster.c$644$4$9 ==.
                           2688 ;	../fb_app_taster.c:644: if (!tmp){
   0CCC EC                 2689 	mov	a,r4
   0CCD 70 04              2690 	jnz	00139$
                    0A06   2691 	C$fb_app_taster.c$645$5$23 ==.
                           2692 ;	../fb_app_taster.c:645: tmp=255;
   0CCF 7C FF              2693 	mov	r4,#0xFF
   0CD1 80 0D              2694 	sjmp	00140$
   0CD3                    2695 00139$:
                    0A0A   2696 	C$fb_app_taster.c$648$5$24 ==.
                           2697 ;	../fb_app_taster.c:648: if (tmp>=n)tmp-=n;
   0CD3 C3                 2698 	clr	c
   0CD4 EC                 2699 	mov	a,r4
   0CD5 9E                 2700 	subb	a,r6
   0CD6 40 06              2701 	jc	00136$
   0CD8 EC                 2702 	mov	a,r4
   0CD9 C3                 2703 	clr	c
   0CDA 9E                 2704 	subb	a,r6
   0CDB FC                 2705 	mov	r4,a
   0CDC 80 02              2706 	sjmp	00140$
   0CDE                    2707 00136$:
                    0A15   2708 	C$fb_app_taster.c$649$5$24 ==.
                           2709 ;	../fb_app_taster.c:649: else tmp=0;
   0CDE 7C 00              2710 	mov	r4,#0x00
   0CE0                    2711 00140$:
                    0A17   2712 	C$fb_app_taster.c$651$4$9 ==.
                           2713 ;	../fb_app_taster.c:651: write_obj_value(objno+4,tmp);
   0CE0 7E 00              2714 	mov	r6,#0x00
   0CE2 A8 14              2715 	mov	r0,_bp
   0CE4 08                 2716 	inc	r0
   0CE5 74 04              2717 	mov	a,#0x04
   0CE7 26                 2718 	add	a,@r0
   0CE8 FD                 2719 	mov	r5,a
   0CE9 C0 07              2720 	push	ar7
   0CEB C0 05              2721 	push	ar5
   0CED C0 04              2722 	push	ar4
   0CEF C0 06              2723 	push	ar6
   0CF1 8D 82              2724 	mov	dpl,r5
   0CF3 12 06 CD           2725 	lcall	_write_obj_value
   0CF6 15 81              2726 	dec	sp
   0CF8 15 81              2727 	dec	sp
                    0A31   2728 	C$fb_app_taster.c$652$4$9 ==.
                           2729 ;	../fb_app_taster.c:652: switch_led(objno-4,1);
   0CFA A8 14              2730 	mov	r0,_bp
   0CFC 08                 2731 	inc	r0
   0CFD E6                 2732 	mov	a,@r0
   0CFE 24 FC              2733 	add	a,#0xFC
   0D00 F5 82              2734 	mov	dpl,a
   0D02 D2 F0              2735 	setb	b[0]
   0D04 85 F0 23           2736 	mov	bits,b
   0D07 12 07 BB           2737 	lcall	_switch_led
   0D0A D0 05              2738 	pop	ar5
                    0A43   2739 	C$fb_app_taster.c$653$4$9 ==.
                           2740 ;	../fb_app_taster.c:653: send_obj_value(objno+4);		// dimmkommando senden
   0D0C 8D 82              2741 	mov	dpl,r5
   0D0E 12 14 82           2742 	lcall	_send_obj_value
   0D11 D0 07              2743 	pop	ar7
                    0A4A   2744 	C$fb_app_taster.c$654$4$9 ==.
                           2745 ;	../fb_app_taster.c:654: timerstate[objno]=0xC0;
   0D13 A8 14              2746 	mov	r0,_bp
   0D15 08                 2747 	inc	r0
   0D16 E6                 2748 	mov	a,@r0
   0D17 24 3C              2749 	add	a,#_timerstate
   0D19 F8                 2750 	mov	r0,a
   0D1A 76 C0              2751 	mov	@r0,#0xC0
                    0A53   2752 	C$fb_app_taster.c$655$4$9 ==.
                           2753 ;	../fb_app_taster.c:655: timercnt[objno]=tele_repeat_value[m];// 0,5/1/1,5/2 Sec.
   0D1C A8 14              2754 	mov	r0,_bp
   0D1E 08                 2755 	inc	r0
   0D1F E6                 2756 	mov	a,@r0
   0D20 24 2C              2757 	add	a,#_timercnt
   0D22 F9                 2758 	mov	r1,a
   0D23 EF                 2759 	mov	a,r7
   0D24 90 18 37           2760 	mov	dptr,#_tele_repeat_value
   0D27 93                 2761 	movc	a,@a+dptr
   0D28 FF                 2762 	mov	r7,a
   0D29 F7                 2763 	mov	@r1,a
                    0A61   2764 	C$fb_app_taster.c$656$4$9 ==.
                           2765 ;	../fb_app_taster.c:656: timerbase[objno]=0;
   0D2A A8 14              2766 	mov	r0,_bp
   0D2C 08                 2767 	inc	r0
   0D2D E6                 2768 	mov	a,@r0
   0D2E 24 34              2769 	add	a,#_timerbase
   0D30 F8                 2770 	mov	r0,a
   0D31 76 00              2771 	mov	@r0,#0x00
                    0A6A   2772 	C$fb_app_taster.c$659$1$7 ==.
                           2773 ;	../fb_app_taster.c:659: }// ende switch (timerstate...
   0D33                    2774 00155$:
                    0A6A   2775 	C$fb_app_taster.c$498$1$1 ==.
                           2776 ;	../fb_app_taster.c:498: for(objno=0;objno<8;objno++) {
   0D33 A8 14              2777 	mov	r0,_bp
   0D35 08                 2778 	inc	r0
   0D36 06                 2779 	inc	@r0
   0D37 02 08 F1           2780 	ljmp	00153$
   0D3A                    2781 00157$:
   0D3A 85 14 81           2782 	mov	sp,_bp
   0D3D D0 14              2783 	pop	_bp
                    0A76   2784 	C$fb_app_taster.c$662$1$1 ==.
                    0A76   2785 	XG$delay_timer$0$0 ==.
   0D3F 22                 2786 	ret
                           2787 ;------------------------------------------------------------
                           2788 ;Allocation info for local variables in function 'restart_app'
                           2789 ;------------------------------------------------------------
                           2790 ;n                         Allocated to registers r7 
                           2791 ;write_ok                  Allocated to registers 
                           2792 ;------------------------------------------------------------
                    0A77   2793 	G$restart_app$0$0 ==.
                    0A77   2794 	C$fb_app_taster.c$672$1$1 ==.
                           2795 ;	../fb_app_taster.c:672: void restart_app(void)
                           2796 ;	-----------------------------------------
                           2797 ;	 function restart_app
                           2798 ;	-----------------------------------------
   0D40                    2799 _restart_app:
                    0A77   2800 	C$fb_app_taster.c$678$1$1 ==.
                           2801 ;	../fb_app_taster.c:678: for (n=0;n<4;n++) {
   0D40 7F 00              2802 	mov	r7,#0x00
   0D42                    2803 00105$:
   0D42 BF 04 00           2804 	cjne	r7,#0x04,00137$
   0D45                    2805 00137$:
   0D45 50 20              2806 	jnc	00108$
                    0A7E   2807 	C$fb_app_taster.c$679$2$2 ==.
                           2808 ;	../fb_app_taster.c:679: SET_PORT_MODE_BIDIRECTIONAL(n)
   0D47 BF 08 00           2809 	cjne	r7,#0x08,00139$
   0D4A                    2810 00139$:
   0D4A 50 18              2811 	jnc	00107$
   0D4C 8F F0              2812 	mov	b,r7
   0D4E 05 F0              2813 	inc	b
   0D50 74 01              2814 	mov	a,#0x01
   0D52 80 02              2815 	sjmp	00143$
   0D54                    2816 00141$:
   0D54 25 E0              2817 	add	a,acc
   0D56                    2818 00143$:
   0D56 D5 F0 FB           2819 	djnz	b,00141$
   0D59 FE                 2820 	mov	r6,a
   0D5A 74 FF              2821 	mov	a,#0xFF
   0D5C C3                 2822 	clr	c
   0D5D 9E                 2823 	subb	a,r6
   0D5E FE                 2824 	mov	r6,a
   0D5F 52 84              2825 	anl	_P0M1,a
   0D61 EE                 2826 	mov	a,r6
   0D62 52 85              2827 	anl	_P0M2,a
   0D64                    2828 00107$:
                    0A9B   2829 	C$fb_app_taster.c$678$1$1 ==.
                           2830 ;	../fb_app_taster.c:678: for (n=0;n<4;n++) {
   0D64 0F                 2831 	inc	r7
   0D65 80 DB              2832 	sjmp	00105$
   0D67                    2833 00108$:
                    0A9E   2834 	C$fb_app_taster.c$683$1$1 ==.
                           2835 ;	../fb_app_taster.c:683: for (n=4;n<8;n++) {
   0D67 7F 04              2836 	mov	r7,#0x04
   0D69                    2837 00109$:
   0D69 BF 08 00           2838 	cjne	r7,#0x08,00144$
   0D6C                    2839 00144$:
   0D6C E4                 2840 	clr	a
   0D6D 33                 2841 	rlc	a
   0D6E FE                 2842 	mov	r6,a
   0D6F 60 1D              2843 	jz	00112$
                    0AA8   2844 	C$fb_app_taster.c$684$2$4 ==.
                           2845 ;	../fb_app_taster.c:684: SET_PORT_MODE_PUSHPULL(n)
   0D71 EE                 2846 	mov	a,r6
   0D72 60 17              2847 	jz	00111$
   0D74 8F F0              2848 	mov	b,r7
   0D76 05 F0              2849 	inc	b
   0D78 74 01              2850 	mov	a,#0x01
   0D7A 80 02              2851 	sjmp	00149$
   0D7C                    2852 00147$:
   0D7C 25 E0              2853 	add	a,acc
   0D7E                    2854 00149$:
   0D7E D5 F0 FB           2855 	djnz	b,00147$
   0D81 FE                 2856 	mov	r6,a
   0D82 74 FF              2857 	mov	a,#0xFF
   0D84 C3                 2858 	clr	c
   0D85 9E                 2859 	subb	a,r6
   0D86 52 84              2860 	anl	_P0M1,a
   0D88 EE                 2861 	mov	a,r6
   0D89 42 85              2862 	orl	_P0M2,a
   0D8B                    2863 00111$:
                    0AC2   2864 	C$fb_app_taster.c$683$1$1 ==.
                           2865 ;	../fb_app_taster.c:683: for (n=4;n<8;n++) {
   0D8B 0F                 2866 	inc	r7
   0D8C 80 DB              2867 	sjmp	00109$
   0D8E                    2868 00112$:
                    0AC5   2869 	C$fb_app_taster.c$687$1$1 ==.
                           2870 ;	../fb_app_taster.c:687: PORT=0x0F;			// Taster auf high, LEDs zunächst aus
   0D8E 75 80 0F           2871 	mov	_P0,#0x0F
                    0AC8   2872 	C$fb_app_taster.c$689$1$1 ==.
                           2873 ;	../fb_app_taster.c:689: button_buffer=0x0F;	// Variable für letzten abgearbeiteten Taster Status
   0D91 75 28 0F           2874 	mov	_button_buffer,#0x0F
                    0ACB   2875 	C$fb_app_taster.c$691$1$1 ==.
                           2876 ;	../fb_app_taster.c:691: RTCCON=0x81;	//start_rtc(8);		// RTC neu  starten und OV Flag setzen
   0D94 75 D1 81           2877 	mov	_RTCCON,#0x81
                    0ACE   2878 	C$fb_app_taster.c$693$1$1 ==.
                           2879 ;	../fb_app_taster.c:693: timer=0;			// Timer-Variable, wird alle 8ms inkrementiert
   0D97 E4                 2880 	clr	a
   0D98 F5 24              2881 	mov	_timer,a
   0D9A F5 25              2882 	mov	(_timer + 1),a
                    0AD3   2883 	C$fb_app_taster.c$695$1$1 ==.
                           2884 ;	../fb_app_taster.c:695: EA=0;		// Interrupts sperren
   0D9C C2 AF              2885 	clr	_IEN0_7
                    0AD5   2886 	C$fb_app_taster.c$697$1$1 ==.
                           2887 ;	../fb_app_taster.c:697: START_WRITECYCLE
   0D9E 75 E4 00           2888 	mov	_FMCON,#0x00
                    0AD8   2889 	C$fb_app_taster.c$698$2$6 ==.
                           2890 ;	../fb_app_taster.c:698: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
   0DA1 75 E7 1D           2891 	mov	_FMADRH,#0x1D
   0DA4 75 E6 03           2892 	mov	_FMADRL,#0x03
   0DA7 75 E5 00           2893 	mov	_FMDATA,#0x00
                    0AE1   2894 	C$fb_app_taster.c$699$2$7 ==.
                           2895 ;	../fb_app_taster.c:699: WRITE_BYTE(0x01,0x04,0x04)
   0DAA 75 E7 1D           2896 	mov	_FMADRH,#0x1D
   0DAD 75 E6 04           2897 	mov	_FMADRL,#0x04
   0DB0 75 E5 04           2898 	mov	_FMDATA,#0x04
                    0AEA   2899 	C$fb_app_taster.c$703$2$8 ==.
                           2900 ;	../fb_app_taster.c:703: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
   0DB3 75 E7 1D           2901 	mov	_FMADRH,#0x1D
   0DB6 75 E6 0C           2902 	mov	_FMADRL,#0x0C
   0DB9 75 E5 00           2903 	mov	_FMDATA,#0x00
                    0AF3   2904 	C$fb_app_taster.c$704$2$9 ==.
                           2905 ;	../fb_app_taster.c:704: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
   0DBC 75 E7 1D           2906 	mov	_FMADRH,#0x1D
   0DBF 75 E6 0D           2907 	mov	_FMADRL,#0x0D
   0DC2 75 E5 FF           2908 	mov	_FMDATA,#0xFF
                    0AFC   2909 	C$fb_app_taster.c$706$1$1 ==.
                           2910 ;	../fb_app_taster.c:706: STOP_WRITECYCLE
   0DC5 75 E4 68           2911 	mov	_FMCON,#0x68
                    0AFF   2912 	C$fb_app_taster.c$711$1$1 ==.
                           2913 ;	../fb_app_taster.c:711: for (n=0;n<12;n++) write_obj_value(n,0);		// Objektwerte alle auf 0 setzen
   0DC8 7F 00              2914 	mov	r7,#0x00
   0DCA                    2915 00113$:
   0DCA BF 0C 00           2916 	cjne	r7,#0x0C,00150$
   0DCD                    2917 00150$:
   0DCD 50 15              2918 	jnc	00116$
   0DCF C0 07              2919 	push	ar7
   0DD1 E4                 2920 	clr	a
   0DD2 C0 E0              2921 	push	acc
   0DD4 C0 E0              2922 	push	acc
   0DD6 8F 82              2923 	mov	dpl,r7
   0DD8 12 06 CD           2924 	lcall	_write_obj_value
   0DDB 15 81              2925 	dec	sp
   0DDD 15 81              2926 	dec	sp
   0DDF D0 07              2927 	pop	ar7
   0DE1 0F                 2928 	inc	r7
   0DE2 80 E6              2929 	sjmp	00113$
   0DE4                    2930 00116$:
                    0B1B   2931 	C$fb_app_taster.c$713$1$1 ==.
                           2932 ;	../fb_app_taster.c:713: for (n=0;n<8;n++) timercnt[n]=0;		// delay records loeschen
   0DE4 7F 00              2933 	mov	r7,#0x00
   0DE6                    2934 00117$:
   0DE6 BF 08 00           2935 	cjne	r7,#0x08,00152$
   0DE9                    2936 00152$:
   0DE9 50 09              2937 	jnc	00120$
   0DEB EF                 2938 	mov	a,r7
   0DEC 24 2C              2939 	add	a,#_timercnt
   0DEE F8                 2940 	mov	r0,a
   0DEF 76 00              2941 	mov	@r0,#0x00
   0DF1 0F                 2942 	inc	r7
   0DF2 80 F2              2943 	sjmp	00117$
   0DF4                    2944 00120$:
                    0B2B   2945 	C$fb_app_taster.c$718$1$1 ==.
                           2946 ;	../fb_app_taster.c:718: TR0=0;
   0DF4 C2 8C              2947 	clr	_TCON_4
                    0B2D   2948 	C$fb_app_taster.c$719$1$1 ==.
                           2949 ;	../fb_app_taster.c:719: TMOD &= 0xF0;
   0DF6 53 89 F0           2950 	anl	_TMOD,#0xF0
                    0B30   2951 	C$fb_app_taster.c$720$1$1 ==.
                           2952 ;	../fb_app_taster.c:720: TMOD |= 0x02;// T0 autoreload
   0DF9 43 89 02           2953 	orl	_TMOD,#0x02
                    0B33   2954 	C$fb_app_taster.c$721$1$1 ==.
                           2955 ;	../fb_app_taster.c:721: TH0=0x47;
   0DFC 75 8C 47           2956 	mov	_TH0,#0x47
                    0B36   2957 	C$fb_app_taster.c$722$1$1 ==.
                           2958 ;	../fb_app_taster.c:722: TL0=0x47;
   0DFF 75 8A 47           2959 	mov	_TL0,#0x47
                    0B39   2960 	C$fb_app_taster.c$723$1$1 ==.
                           2961 ;	../fb_app_taster.c:723: TR0=1;
   0E02 D2 8C              2962 	setb	_TCON_4
                    0B3B   2963 	C$fb_app_taster.c$725$1$1 ==.
                           2964 ;	../fb_app_taster.c:725: IP0 &= 0xFC; //FC		F6	für flackerfrei bei 1 kanal
   0E04 53 B8 FC           2965 	anl	_IP0,#0xFC
                    0B3E   2966 	C$fb_app_taster.c$726$1$1 ==.
                           2967 ;	../fb_app_taster.c:726: IP0 |= 0x0C; //0C		06	dto.
   0E07 43 B8 0C           2968 	orl	_IP0,#0x0C
                    0B41   2969 	C$fb_app_taster.c$727$1$1 ==.
                           2970 ;	../fb_app_taster.c:727: IP0H &= 0xF4;//
   0E0A 53 B7 F4           2971 	anl	_IP0H,#0xF4
                    0B44   2972 	C$fb_app_taster.c$728$1$1 ==.
                           2973 ;	../fb_app_taster.c:728: IP0H |= 0x04;// 		Timer 1 auf Level 2
   0E0D 43 B7 04           2974 	orl	_IP0H,#0x04
                    0B47   2975 	C$fb_app_taster.c$730$1$1 ==.
                           2976 ;	../fb_app_taster.c:730: ET0=1;// timer 0 interupt freigeben
   0E10 D2 A9              2977 	setb	_IEN0_1
                    0B49   2978 	C$fb_app_taster.c$732$1$1 ==.
                           2979 ;	../fb_app_taster.c:732: TF0=0; //timer0 flag löschen
   0E12 C2 8D              2980 	clr	_TCON_5
                    0B4B   2981 	C$fb_app_taster.c$733$1$1 ==.
                           2982 ;	../fb_app_taster.c:733: EA=1;// Interrupts freigeben
   0E14 D2 AF              2983 	setb	_IEN0_7
                    0B4D   2984 	C$fb_app_taster.c$735$1$1 ==.
                    0B4D   2985 	XG$restart_app$0$0 ==.
   0E16 22                 2986 	ret
                           2987 	.area CSEG    (CODE)
                           2988 	.area CONST   (CODE)
                    0000   2989 G$tele_repeat_value$0$0 == .
   1837                    2990 _tele_repeat_value:
   1837 3F                 2991 	.db #0x3F	; 63
   1838 7D                 2992 	.db #0x7D	; 125
   1839 BC                 2993 	.db #0xBC	; 188
   183A FA                 2994 	.db #0xFA	; 250
   183B 19                 2995 	.db #0x19	; 25
   183C 26                 2996 	.db #0x26	; 38
   183D 32                 2997 	.db #0x32	; 50	'2'
   183E 5E                 2998 	.db #0x5E	; 94
                           2999 	.area XINIT   (CODE)
                           3000 	.area CABS    (ABS,CODE)
