                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Sat Jan 25 09:11:23 2014
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
                    0000    570 	C$fb_app_taster.c$46$0$0 ==.
                            571 ;	..\fb_app_taster.c:46: void port_changed(unsigned char portval)
                            572 ;	-----------------------------------------
                            573 ;	 function port_changed
                            574 ;	-----------------------------------------
   024D                     575 _port_changed:
                    0007    576 	ar7 = 0x07
                    0006    577 	ar6 = 0x06
                    0005    578 	ar5 = 0x05
                    0004    579 	ar4 = 0x04
                    0003    580 	ar3 = 0x03
                    0002    581 	ar2 = 0x02
                    0001    582 	ar1 = 0x01
                    0000    583 	ar0 = 0x00
   024D AF 82               584 	mov	r7,dpl
                    0002    585 	C$fb_app_taster.c$57$1$1 ==.
                            586 ;	..\fb_app_taster.c:57: oldvalue=dimmcompare;
   024F AE 2A               587 	mov	r6,_dimmcompare
                    0004    588 	C$fb_app_taster.c$58$2$1 ==.
                            589 ;	..\fb_app_taster.c:58: do{
   0251 7D 00               590 	mov	r5,#0x00
   0253                     591 00103$:
                    0006    592 	C$fb_app_taster.c$59$2$2 ==.
                            593 ;	..\fb_app_taster.c:59: if (oldvalue!=dimmcompare)// dimmcompare wird in der ISR T0 erhöht
   0253 EE                  594 	mov	a,r6
   0254 B5 2A 02            595 	cjne	a,_dimmcompare,00132$
   0257 80 03               596 	sjmp	00104$
   0259                     597 00132$:
                    000C    598 	C$fb_app_taster.c$61$3$3 ==.
                            599 ;	..\fb_app_taster.c:61: n++;
   0259 0D                  600 	inc	r5
                    000D    601 	C$fb_app_taster.c$62$3$3 ==.
                            602 ;	..\fb_app_taster.c:62: oldvalue=dimmcompare;
   025A AE 2A               603 	mov	r6,_dimmcompare
   025C                     604 00104$:
                    000F    605 	C$fb_app_taster.c$65$1$1 ==.
                            606 ;	..\fb_app_taster.c:65: while (n<=200);				// warten auf 200 x Timer 0 (0.05ms)= 10ms
   025C ED                  607 	mov	a,r5
   025D 24 37               608 	add	a,#0xff - 0xC8
   025F 50 F2               609 	jnc	00103$
                    0014    610 	C$fb_app_taster.c$66$1$1 ==.
                            611 ;	..\fb_app_taster.c:66: if ((PORT & 0x0F) == portval) {
   0261 74 0F               612 	mov	a,#0x0F
   0263 55 80               613 	anl	a,_P0
   0265 FE                  614 	mov	r6,a
   0266 B5 07 53            615 	cjne	a,ar7,00118$
                    001C    616 	C$fb_app_taster.c$67$2$1 ==.
                            617 ;	..\fb_app_taster.c:67: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
   0269 7E 00               618 	mov	r6,#0x00
   026B                     619 00114$:
   026B BE 04 00            620 	cjne	r6,#0x04,00136$
   026E                     621 00136$:
   026E 50 4A               622 	jnc	00117$
                    0023    623 	C$fb_app_taster.c$68$3$5 ==.
                            624 ;	..\fb_app_taster.c:68: buttonpattern=1<<n;
   0270 8E F0               625 	mov	b,r6
   0272 05 F0               626 	inc	b
   0274 74 01               627 	mov	a,#0x01
   0276 80 02               628 	sjmp	00140$
   0278                     629 00138$:
   0278 25 E0               630 	add	a,acc
   027A                     631 00140$:
   027A D5 F0 FB            632 	djnz	b,00138$
                    0030    633 	C$fb_app_taster.c$69$3$5 ==.
                            634 ;	..\fb_app_taster.c:69: if ((portval & buttonpattern) && !(button_buffer & buttonpattern)) button_changed(n,0);	// Taster losgelassen
   027D FD                  635 	mov	r5,a
   027E 5F                  636 	anl	a,r7
   027F 60 1B               637 	jz	00107$
   0281 ED                  638 	mov	a,r5
   0282 55 28               639 	anl	a,_button_buffer
   0284 70 16               640 	jnz	00107$
   0286 C2 F0               641 	clr	b[0]
   0288 C0 07               642 	push	ar7
   028A C0 06               643 	push	ar6
   028C C0 05               644 	push	ar5
   028E 85 F0 23            645 	mov	bits,b
   0291 8E 82               646 	mov	dpl,r6
   0293 12 02 BD            647 	lcall	_button_changed
   0296 D0 05               648 	pop	ar5
   0298 D0 06               649 	pop	ar6
   029A D0 07               650 	pop	ar7
   029C                     651 00107$:
                    004F    652 	C$fb_app_taster.c$70$3$5 ==.
                            653 ;	..\fb_app_taster.c:70: if (!(portval & buttonpattern) && (button_buffer & buttonpattern)) button_changed(n,1);	// Taster gedrueckt
   029C ED                  654 	mov	a,r5
   029D 5F                  655 	anl	a,r7
   029E 70 17               656 	jnz	00116$
   02A0 ED                  657 	mov	a,r5
   02A1 55 28               658 	anl	a,_button_buffer
   02A3 60 12               659 	jz	00116$
   02A5 D2 F0               660 	setb	b[0]
   02A7 C0 07               661 	push	ar7
   02A9 C0 06               662 	push	ar6
   02AB 85 F0 23            663 	mov	bits,b
   02AE 8E 82               664 	mov	dpl,r6
   02B0 12 02 BD            665 	lcall	_button_changed
   02B3 D0 06               666 	pop	ar6
   02B5 D0 07               667 	pop	ar7
   02B7                     668 00116$:
                    006A    669 	C$fb_app_taster.c$67$2$4 ==.
                            670 ;	..\fb_app_taster.c:67: for (n=0; n<4; n++) {	// alle 4 Taster einzeln pruefen (koennten ja mehrere gleichzeitig gedrueckt worden sein)
   02B7 0E                  671 	inc	r6
   02B8 80 B1               672 	sjmp	00114$
   02BA                     673 00117$:
                    006D    674 	C$fb_app_taster.c$72$2$4 ==.
                            675 ;	..\fb_app_taster.c:72: button_buffer=portval;	// aktuellen port wert in buffer fuer naechsten Vergleich uebernehmen
   02BA 8F 28               676 	mov	_button_buffer,r7
   02BC                     677 00118$:
                    006F    678 	C$fb_app_taster.c$74$2$1 ==.
                    006F    679 	XG$port_changed$0$0 ==.
   02BC 22                  680 	ret
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
                    0070    691 	C$fb_app_taster.c$87$2$1 ==.
                            692 ;	..\fb_app_taster.c:87: void button_changed(unsigned char buttonno, __bit buttonval)
                            693 ;	-----------------------------------------
                            694 ;	 function button_changed
                            695 ;	-----------------------------------------
   02BD                     696 _button_changed:
   02BD C0 14               697 	push	_bp
   02BF 85 81 14            698 	mov	_bp,sp
   02C2 C0 82               699 	push	dpl
                    0077    700 	C$fb_app_taster.c$90$1$1 ==.
                            701 ;	..\fb_app_taster.c:90: __bit objval=0;
   02C4 C2 19               702 	clr	b1
                    0079    703 	C$fb_app_taster.c$92$1$1 ==.
                            704 ;	..\fb_app_taster.c:92: switch ((eeprom[FUNCTION+(buttonno>>1)] >> ((buttonno & 0x01)*4)) & 0x0F) {		// Funktion des Tasters
   02C6 A8 14               705 	mov	r0,_bp
   02C8 08                  706 	inc	r0
   02C9 E6                  707 	mov	a,@r0
   02CA C3                  708 	clr	c
   02CB 13                  709 	rrc	a
   02CC 24 CF               710 	add	a,#0xCF
   02CE 90 1D 00            711 	mov	dptr,#_eeprom
   02D1 93                  712 	movc	a,@a+dptr
   02D2 FE                  713 	mov	r6,a
   02D3 A8 14               714 	mov	r0,_bp
   02D5 08                  715 	inc	r0
   02D6 74 01               716 	mov	a,#0x01
   02D8 56                  717 	anl	a,@r0
   02D9 75 F0 04            718 	mov	b,#0x04
   02DC A4                  719 	mul	ab
   02DD F5 F0               720 	mov	b,a
   02DF 05 F0               721 	inc	b
   02E1 EE                  722 	mov	a,r6
   02E2 80 02               723 	sjmp	00218$
   02E4                     724 00217$:
   02E4 C3                  725 	clr	c
   02E5 13                  726 	rrc	a
   02E6                     727 00218$:
   02E6 D5 F0 FB            728 	djnz	b,00217$
   02E9 54 0F               729 	anl	a,#0x0F
   02EB FE                  730 	mov	r6,a
   02EC BE 01 02            731 	cjne	r6,#0x01,00219$
   02EF 80 15               732 	sjmp	00101$
   02F1                     733 00219$:
   02F1 BE 02 03            734 	cjne	r6,#0x02,00220$
   02F4 02 03 A9            735 	ljmp	00111$
   02F7                     736 00220$:
   02F7 BE 03 03            737 	cjne	r6,#0x03,00221$
   02FA 02 05 40            738 	ljmp	00139$
   02FD                     739 00221$:
   02FD BE 04 03            740 	cjne	r6,#0x04,00222$
   0300 02 06 15            741 	ljmp	00146$
   0303                     742 00222$:
   0303 02 08 D5            743 	ljmp	00181$
                    00B9    744 	C$fb_app_taster.c$97$2$2 ==.
                            745 ;	..\fb_app_taster.c:97: case 1:
   0306                     746 00101$:
                    00B9    747 	C$fb_app_taster.c$98$2$2 ==.
                            748 ;	..\fb_app_taster.c:98: if (buttonval) command = (((eeprom[COMMAND+(buttonno*4)]) >> 6) & 0x03);	// Befehl beim druecken
   0306 30 18 18            749 	jnb	b0,00103$
   0309 A8 14               750 	mov	r0,_bp
   030B 08                  751 	inc	r0
   030C E6                  752 	mov	a,@r0
   030D 25 E0               753 	add	a,acc
   030F 25 E0               754 	add	a,acc
   0311 24 D3               755 	add	a,#0xD3
   0313 90 1D 00            756 	mov	dptr,#_eeprom
   0316 93                  757 	movc	a,@a+dptr
   0317 23                  758 	rl	a
   0318 23                  759 	rl	a
   0319 54 03               760 	anl	a,#0x03
   031B FE                  761 	mov	r6,a
   031C 53 06 03            762 	anl	ar6,#0x03
   031F 80 16               763 	sjmp	00104$
   0321                     764 00103$:
                    00D4    765 	C$fb_app_taster.c$99$2$2 ==.
                            766 ;	..\fb_app_taster.c:99: else command = (((eeprom[COMMAND+(buttonno*4)]) >> 4) & 0x03);				// Befehl beim loslassen
   0321 A8 14               767 	mov	r0,_bp
   0323 08                  768 	inc	r0
   0324 E6                  769 	mov	a,@r0
   0325 25 E0               770 	add	a,acc
   0327 25 E0               771 	add	a,acc
   0329 24 D3               772 	add	a,#0xD3
   032B 90 1D 00            773 	mov	dptr,#_eeprom
   032E 93                  774 	movc	a,@a+dptr
   032F C4                  775 	swap	a
   0330 54 0F               776 	anl	a,#0x0F
   0332 FD                  777 	mov	r5,a
   0333 74 03               778 	mov	a,#0x03
   0335 5D                  779 	anl	a,r5
   0336 FE                  780 	mov	r6,a
   0337                     781 00104$:
                    00EA    782 	C$fb_app_taster.c$100$2$2 ==.
                            783 ;	..\fb_app_taster.c:100: switch (command) {	// Befehl des Tasters bei Schalten
   0337 BE 01 02            784 	cjne	r6,#0x01,00224$
   033A 80 0A               785 	sjmp	00105$
   033C                     786 00224$:
   033C BE 02 02            787 	cjne	r6,#0x02,00225$
   033F 80 09               788 	sjmp	00106$
   0341                     789 00225$:
                    00F4    790 	C$fb_app_taster.c$101$3$3 ==.
                            791 ;	..\fb_app_taster.c:101: case 1:		// EIN
   0341 BE 03 26            792 	cjne	r6,#0x03,00108$
   0344 80 22               793 	sjmp	00107$
   0346                     794 00105$:
                    00F9    795 	C$fb_app_taster.c$102$3$3 ==.
                            796 ;	..\fb_app_taster.c:102: objval=1;
   0346 D2 19               797 	setb	b1
                    00FB    798 	C$fb_app_taster.c$103$3$3 ==.
                            799 ;	..\fb_app_taster.c:103: break;
                    00FB    800 	C$fb_app_taster.c$104$3$3 ==.
                            801 ;	..\fb_app_taster.c:104: case 2:		// UM
   0348 80 20               802 	sjmp	00108$
   034A                     803 00106$:
                    00FD    804 	C$fb_app_taster.c$105$3$3 ==.
                            805 ;	..\fb_app_taster.c:105: objval = read_obj_value(buttonno)&0x01;
   034A A8 14               806 	mov	r0,_bp
   034C 08                  807 	inc	r0
   034D 86 82               808 	mov	dpl,@r0
   034F C0 06               809 	push	ar6
   0351 12 08 DA            810 	lcall	_read_obj_value
   0354 AA 82               811 	mov	r2,dpl
   0356 AB 83               812 	mov	r3,dph
   0358 AC F0               813 	mov	r4,b
   035A FD                  814 	mov	r5,a
   035B D0 06               815 	pop	ar6
   035D EA                  816 	mov	a,r2
   035E 54 01               817 	anl	a,#0x01
   0360 FA                  818 	mov	r2,a
   0361 24 FF               819 	add	a,#0xff
                    0116    820 	C$fb_app_taster.c$106$3$3 ==.
                            821 ;	..\fb_app_taster.c:106: objval = !objval;
   0363 B3                  822 	cpl	c
   0364 92 19               823 	mov	b1,c
                    0119    824 	C$fb_app_taster.c$107$3$3 ==.
                            825 ;	..\fb_app_taster.c:107: break;
                    0119    826 	C$fb_app_taster.c$108$3$3 ==.
                            827 ;	..\fb_app_taster.c:108: case 3:		// AUS
   0366 80 02               828 	sjmp	00108$
   0368                     829 00107$:
                    011B    830 	C$fb_app_taster.c$109$3$3 ==.
                            831 ;	..\fb_app_taster.c:109: objval=0;
   0368 C2 19               832 	clr	b1
                    011D    833 	C$fb_app_taster.c$111$2$2 ==.
                            834 ;	..\fb_app_taster.c:111: }
   036A                     835 00108$:
                    011D    836 	C$fb_app_taster.c$112$2$2 ==.
                            837 ;	..\fb_app_taster.c:112: if (command) {	// nur wenn EIN, UM oder AUS (0=keine Funktion)
   036A EE                  838 	mov	a,r6
   036B 70 03               839 	jnz	00227$
   036D 02 08 D5            840 	ljmp	00181$
   0370                     841 00227$:
                    0123    842 	C$fb_app_taster.c$114$3$4 ==.
                            843 ;	..\fb_app_taster.c:114: write_obj_value(buttonno,objval);
   0370 A2 19               844 	mov	c,b1
   0372 E4                  845 	clr	a
   0373 33                  846 	rlc	a
   0374 FD                  847 	mov	r5,a
   0375 7E 00               848 	mov	r6,#0x00
   0377 C0 23               849 	push	bits
   0379 C0 05               850 	push	ar5
   037B C0 06               851 	push	ar6
   037D A8 14               852 	mov	r0,_bp
   037F 08                  853 	inc	r0
   0380 86 82               854 	mov	dpl,@r0
   0382 12 09 1C            855 	lcall	_write_obj_value
   0385 15 81               856 	dec	sp
   0387 15 81               857 	dec	sp
   0389 D0 23               858 	pop	bits
                    013E    859 	C$fb_app_taster.c$115$3$4 ==.
                            860 ;	..\fb_app_taster.c:115: send_obj_value(buttonno);
   038B A8 14               861 	mov	r0,_bp
   038D 08                  862 	inc	r0
   038E 86 82               863 	mov	dpl,@r0
   0390 C0 23               864 	push	bits
   0392 12 16 D3            865 	lcall	_send_obj_value
   0395 D0 23               866 	pop	bits
                    014A    867 	C$fb_app_taster.c$117$3$4 ==.
                            868 ;	..\fb_app_taster.c:117: switch_led(buttonno, objval);		// LED schalten
   0397 A2 19               869 	mov	c,b1
   0399 92 F0               870 	mov	b[0],c
   039B 85 F0 23            871 	mov	bits,b
   039E A8 14               872 	mov	r0,_bp
   03A0 08                  873 	inc	r0
   03A1 86 82               874 	mov	dpl,@r0
   03A3 12 0A 0A            875 	lcall	_switch_led
                    0159    876 	C$fb_app_taster.c$119$2$2 ==.
                            877 ;	..\fb_app_taster.c:119: break;
   03A6 02 08 D5            878 	ljmp	00181$
                    015C    879 	C$fb_app_taster.c$125$2$2 ==.
                            880 ;	..\fb_app_taster.c:125: case 2:
   03A9                     881 00111$:
                    015C    882 	C$fb_app_taster.c$126$2$2 ==.
                            883 ;	..\fb_app_taster.c:126: bedienung=eeprom[COMMAND+(buttonno*4)]&0x30;
   03A9 A8 14               884 	mov	r0,_bp
   03AB 08                  885 	inc	r0
   03AC E6                  886 	mov	a,@r0
   03AD 25 E0               887 	add	a,acc
   03AF 25 E0               888 	add	a,acc
   03B1 FE                  889 	mov	r6,a
   03B2 24 D3               890 	add	a,#0xD3
   03B4 90 1D 00            891 	mov	dptr,#_eeprom
   03B7 93                  892 	movc	a,@a+dptr
   03B8 FD                  893 	mov	r5,a
   03B9 53 05 30            894 	anl	ar5,#0x30
                    016F    895 	C$fb_app_taster.c$127$2$2 ==.
                            896 ;	..\fb_app_taster.c:127: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
   03BC 20 18 03            897 	jb	b0,00228$
   03BF 02 04 67            898 	ljmp	00137$
   03C2                     899 00228$:
                    0175    900 	C$fb_app_taster.c$128$3$5 ==.
                            901 ;	..\fb_app_taster.c:128: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
   03C2 74 D3               902 	mov	a,#0xD3
   03C4 2E                  903 	add	a,r6
   03C5 90 1D 00            904 	mov	dptr,#_eeprom
   03C8 93                  905 	movc	a,@a+dptr
   03C9 FC                  906 	mov	r4,a
   03CA 30 E2 15            907 	jnb	acc.2,00113$
   03CD C2 F0               908 	clr	b[0]
   03CF C0 06               909 	push	ar6
   03D1 C0 05               910 	push	ar5
   03D3 85 F0 23            911 	mov	bits,b
   03D6 A8 14               912 	mov	r0,_bp
   03D8 08                  913 	inc	r0
   03D9 86 82               914 	mov	dpl,@r0
   03DB 12 0A 0A            915 	lcall	_switch_led
   03DE D0 05               916 	pop	ar5
   03E0 D0 06               917 	pop	ar6
   03E2                     918 00113$:
                    0195    919 	C$fb_app_taster.c$129$3$5 ==.
                            920 ;	..\fb_app_taster.c:129: timercnt[buttonno+4]=eeprom[0xD6+(buttonno*4)];	// Faktor Dauer			
   03E2 A8 14               921 	mov	r0,_bp
   03E4 08                  922 	inc	r0
   03E5 74 04               923 	mov	a,#0x04
   03E7 26                  924 	add	a,@r0
   03E8 FC                  925 	mov	r4,a
   03E9 24 2C               926 	add	a,#_timercnt
   03EB F9                  927 	mov	r1,a
   03EC 74 D6               928 	mov	a,#0xD6
   03EE 2E                  929 	add	a,r6
   03EF 90 1D 00            930 	mov	dptr,#_eeprom
   03F2 93                  931 	movc	a,@a+dptr
   03F3 FB                  932 	mov	r3,a
   03F4 F7                  933 	mov	@r1,a
                    01A8    934 	C$fb_app_taster.c$144$3$5 ==.
                            935 ;	..\fb_app_taster.c:144: */			timerbase[buttonno+4]=(eeprom[0xD5+(buttonno*4)]&0x70)>>4;// Basis Dauer zwischen kurz und langzeit
   03F5 EC                  936 	mov	a,r4
   03F6 24 34               937 	add	a,#_timerbase
   03F8 F9                  938 	mov	r1,a
   03F9 74 D5               939 	mov	a,#0xD5
   03FB 2E                  940 	add	a,r6
   03FC 90 1D 00            941 	mov	dptr,#_eeprom
   03FF 93                  942 	movc	a,@a+dptr
   0400 54 70               943 	anl	a,#0x70
   0402 C4                  944 	swap	a
   0403 54 0F               945 	anl	a,#0x0F
   0405 FC                  946 	mov	r4,a
   0406 F7                  947 	mov	@r1,a
                    01BA    948 	C$fb_app_taster.c$145$3$5 ==.
                            949 ;	..\fb_app_taster.c:145: if (bedienung==0x20) {// umschalten der dimmrichtung...
   0407 BD 20 1F            950 	cjne	r5,#0x20,00118$
                    01BD    951 	C$fb_app_taster.c$146$1$1 ==.
                            952 ;	..\fb_app_taster.c:146: if(read_obj_value(buttonno+8)&0x08)bedienung=0x30;//wenn heller, dann dunkler
   040A C0 06               953 	push	ar6
   040C A8 14               954 	mov	r0,_bp
   040E 08                  955 	inc	r0
   040F 74 08               956 	mov	a,#0x08
   0411 26                  957 	add	a,@r0
   0412 F5 82               958 	mov	dpl,a
   0414 12 08 DA            959 	lcall	_read_obj_value
   0417 AA 82               960 	mov	r2,dpl
   0419 AB 83               961 	mov	r3,dph
   041B AC F0               962 	mov	r4,b
   041D EA                  963 	mov	a,r2
   041E D0 06               964 	pop	ar6
   0420 30 E3 04            965 	jnb	acc.3,00115$
   0423 7D 30               966 	mov	r5,#0x30
   0425 80 02               967 	sjmp	00118$
   0427                     968 00115$:
                    01DA    969 	C$fb_app_taster.c$147$4$6 ==.
                            970 ;	..\fb_app_taster.c:147: else bedienung=0x10;//sonst heller
   0427 7D 10               971 	mov	r5,#0x10
   0429                     972 00118$:
                    01DC    973 	C$fb_app_taster.c$149$3$5 ==.
                            974 ;	..\fb_app_taster.c:149: if (bedienung==0x10){	// heller
   0429 BD 10 19            975 	cjne	r5,#0x10,00120$
                    01DF    976 	C$fb_app_taster.c$150$4$7 ==.
                            977 ;	..\fb_app_taster.c:150: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0xF0)>>4)+0x20;	// dimmen
   042C A8 14               978 	mov	r0,_bp
   042E 08                  979 	inc	r0
   042F 74 04               980 	mov	a,#0x04
   0431 26                  981 	add	a,@r0
   0432 24 3C               982 	add	a,#_timerstate
   0434 F9                  983 	mov	r1,a
   0435 74 D4               984 	mov	a,#0xD4
   0437 2E                  985 	add	a,r6
   0438 90 1D 00            986 	mov	dptr,#_eeprom
   043B 93                  987 	movc	a,@a+dptr
   043C 54 F0               988 	anl	a,#0xF0
   043E C4                  989 	swap	a
   043F 54 0F               990 	anl	a,#0x0F
   0441 FC                  991 	mov	r4,a
   0442 24 20               992 	add	a,#0x20
   0444 F7                  993 	mov	@r1,a
   0445                     994 00120$:
                    01F8    995 	C$fb_app_taster.c$152$3$5 ==.
                            996 ;	..\fb_app_taster.c:152: if(bedienung==0x30){	//  dunkler
   0445 BD 30 02            997 	cjne	r5,#0x30,00235$
   0448 80 03               998 	sjmp	00236$
   044A                     999 00235$:
   044A 02 08 D5           1000 	ljmp	00181$
   044D                    1001 00236$:
                    0200   1002 	C$fb_app_taster.c$153$4$8 ==.
                           1003 ;	..\fb_app_taster.c:153: timerstate[buttonno+4]= ((eeprom[0xD4+(buttonno*4)]&0x0F))+0x20;	// dimmen
   044D A8 14              1004 	mov	r0,_bp
   044F 08                 1005 	inc	r0
   0450 74 04              1006 	mov	a,#0x04
   0452 26                 1007 	add	a,@r0
   0453 24 3C              1008 	add	a,#_timerstate
   0455 F9                 1009 	mov	r1,a
   0456 74 D4              1010 	mov	a,#0xD4
   0458 2E                 1011 	add	a,r6
   0459 90 1D 00           1012 	mov	dptr,#_eeprom
   045C 93                 1013 	movc	a,@a+dptr
   045D FC                 1014 	mov	r4,a
   045E 74 0F              1015 	mov	a,#0x0F
   0460 5C                 1016 	anl	a,r4
   0461 24 20              1017 	add	a,#0x20
   0463 F7                 1018 	mov	@r1,a
   0464 02 08 D5           1019 	ljmp	00181$
   0467                    1020 00137$:
                    021A   1021 	C$fb_app_taster.c$159$3$9 ==.
                           1022 ;	..\fb_app_taster.c:159: if ((timerstate[buttonno+4]& 0xF0)==0x20) { // wenn delaytimer noch lauft, dann Schalten, also EIS1 telegramm senden
   0467 A8 14              1023 	mov	r0,_bp
   0469 08                 1024 	inc	r0
   046A 74 04              1025 	mov	a,#0x04
   046C 26                 1026 	add	a,@r0
   046D 24 3C              1027 	add	a,#_timerstate
   046F F9                 1028 	mov	r1,a
   0470 87 04              1029 	mov	ar4,@r1
   0472 53 04 F0           1030 	anl	ar4,#0xF0
   0475 BC 20 71           1031 	cjne	r4,#0x20,00134$
                    022B   1032 	C$fb_app_taster.c$160$4$10 ==.
                           1033 ;	..\fb_app_taster.c:160: if(bedienung==0x20) { //umschalten des Schaltzustandes
   0478 BD 20 19           1034 	cjne	r5,#0x20,00127$
                    022E   1035 	C$fb_app_taster.c$161$5$11 ==.
                           1036 ;	..\fb_app_taster.c:161: if(read_obj_value(buttonno)& 0x01)bedienung=0x30;//wenn ein, dann aus
   047B A8 14              1037 	mov	r0,_bp
   047D 08                 1038 	inc	r0
   047E 86 82              1039 	mov	dpl,@r0
   0480 12 08 DA           1040 	lcall	_read_obj_value
   0483 AA 82              1041 	mov	r2,dpl
   0485 AB 83              1042 	mov	r3,dph
   0487 AC F0              1043 	mov	r4,b
   0489 FF                 1044 	mov	r7,a
   048A EA                 1045 	mov	a,r2
   048B 30 E0 04           1046 	jnb	acc.0,00124$
   048E 7D 30              1047 	mov	r5,#0x30
   0490 80 02              1048 	sjmp	00127$
   0492                    1049 00124$:
                    0245   1050 	C$fb_app_taster.c$162$5$11 ==.
                           1051 ;	..\fb_app_taster.c:162: else bedienung=0x10; // sonst ein
   0492 7D 10              1052 	mov	r5,#0x10
   0494                    1053 00127$:
                    0247   1054 	C$fb_app_taster.c$164$4$10 ==.
                           1055 ;	..\fb_app_taster.c:164: if(bedienung== 0x10){	//  ein
   0494 BD 10 2A           1056 	cjne	r5,#0x10,00129$
                    024A   1057 	C$fb_app_taster.c$165$5$12 ==.
                           1058 ;	..\fb_app_taster.c:165: write_obj_value(buttonno,1);
   0497 74 01              1059 	mov	a,#0x01
   0499 C0 E0              1060 	push	acc
   049B E4                 1061 	clr	a
   049C C0 E0              1062 	push	acc
   049E A8 14              1063 	mov	r0,_bp
   04A0 08                 1064 	inc	r0
   04A1 86 82              1065 	mov	dpl,@r0
   04A3 12 09 1C           1066 	lcall	_write_obj_value
   04A6 15 81              1067 	dec	sp
   04A8 15 81              1068 	dec	sp
                    025D   1069 	C$fb_app_taster.c$166$5$12 ==.
                           1070 ;	..\fb_app_taster.c:166: send_obj_value(buttonno);
   04AA A8 14              1071 	mov	r0,_bp
   04AC 08                 1072 	inc	r0
   04AD 86 82              1073 	mov	dpl,@r0
   04AF 12 16 D3           1074 	lcall	_send_obj_value
                    0265   1075 	C$fb_app_taster.c$167$5$12 ==.
                           1076 ;	..\fb_app_taster.c:167: switch_led(buttonno,1);
   04B2 D2 F0              1077 	setb	b[0]
   04B4 85 F0 23           1078 	mov	bits,b
   04B7 A8 14              1079 	mov	r0,_bp
   04B9 08                 1080 	inc	r0
   04BA 86 82              1081 	mov	dpl,@r0
   04BC 12 0A 0A           1082 	lcall	_switch_led
   04BF 80 6A              1083 	sjmp	00135$
   04C1                    1084 00129$:
                    0274   1085 	C$fb_app_taster.c$170$5$13 ==.
                           1086 ;	..\fb_app_taster.c:170: write_obj_value(buttonno,0);
   04C1 E4                 1087 	clr	a
   04C2 C0 E0              1088 	push	acc
   04C4 C0 E0              1089 	push	acc
   04C6 A8 14              1090 	mov	r0,_bp
   04C8 08                 1091 	inc	r0
   04C9 86 82              1092 	mov	dpl,@r0
   04CB 12 09 1C           1093 	lcall	_write_obj_value
   04CE 15 81              1094 	dec	sp
   04D0 15 81              1095 	dec	sp
                    0285   1096 	C$fb_app_taster.c$171$5$13 ==.
                           1097 ;	..\fb_app_taster.c:171: send_obj_value(buttonno);
   04D2 A8 14              1098 	mov	r0,_bp
   04D4 08                 1099 	inc	r0
   04D5 86 82              1100 	mov	dpl,@r0
   04D7 12 16 D3           1101 	lcall	_send_obj_value
                    028D   1102 	C$fb_app_taster.c$172$5$13 ==.
                           1103 ;	..\fb_app_taster.c:172: switch_led(buttonno,0);
   04DA C2 F0              1104 	clr	b[0]
   04DC 85 F0 23           1105 	mov	bits,b
   04DF A8 14              1106 	mov	r0,_bp
   04E1 08                 1107 	inc	r0
   04E2 86 82              1108 	mov	dpl,@r0
   04E4 12 0A 0A           1109 	lcall	_switch_led
   04E7 80 42              1110 	sjmp	00135$
   04E9                    1111 00134$:
                    029C   1112 	C$fb_app_taster.c$176$4$14 ==.
                           1113 ;	..\fb_app_taster.c:176: write_obj_value(buttonno+8,read_obj_value(buttonno+8)& 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
   04E9 A8 14              1114 	mov	r0,_bp
   04EB 08                 1115 	inc	r0
   04EC 74 08              1116 	mov	a,#0x08
   04EE 26                 1117 	add	a,@r0
   04EF FF                 1118 	mov	r7,a
   04F0 F5 82              1119 	mov	dpl,a
   04F2 C0 07              1120 	push	ar7
   04F4 C0 06              1121 	push	ar6
   04F6 12 08 DA           1122 	lcall	_read_obj_value
   04F9 AA 82              1123 	mov	r2,dpl
   04FB D0 06              1124 	pop	ar6
   04FD D0 07              1125 	pop	ar7
   04FF 53 02 08           1126 	anl	ar2,#0x08
   0502 7B 00              1127 	mov	r3,#0x00
   0504 C0 06              1128 	push	ar6
   0506 C0 02              1129 	push	ar2
   0508 C0 03              1130 	push	ar3
   050A 8F 82              1131 	mov	dpl,r7
   050C 12 09 1C           1132 	lcall	_write_obj_value
   050F 15 81              1133 	dec	sp
   0511 15 81              1134 	dec	sp
   0513 D0 06              1135 	pop	ar6
                    02C8   1136 	C$fb_app_taster.c$177$4$14 ==.
                           1137 ;	..\fb_app_taster.c:177: if ((eeprom[COMMAND+(buttonno*4)] & 0x40) == 0) {	// ... natuerlich nur wenn parameter dementsprechend (0=senden!!!)
   0515 74 D3              1138 	mov	a,#0xD3
   0517 2E                 1139 	add	a,r6
   0518 90 1D 00           1140 	mov	dptr,#_eeprom
   051B 93                 1141 	movc	a,@a+dptr
   051C FF                 1142 	mov	r7,a
   051D 20 E6 0B           1143 	jb	acc.6,00135$
                    02D3   1144 	C$fb_app_taster.c$178$5$15 ==.
                           1145 ;	..\fb_app_taster.c:178: send_obj_value(buttonno+8);// Stop Telegramm senden
   0520 A8 14              1146 	mov	r0,_bp
   0522 08                 1147 	inc	r0
   0523 74 08              1148 	mov	a,#0x08
   0525 26                 1149 	add	a,@r0
   0526 F5 82              1150 	mov	dpl,a
   0528 12 16 D3           1151 	lcall	_send_obj_value
   052B                    1152 00135$:
                    02DE   1153 	C$fb_app_taster.c$181$3$9 ==.
                           1154 ;	..\fb_app_taster.c:181: timercnt[buttonno+4]=0;
   052B A8 14              1155 	mov	r0,_bp
   052D 08                 1156 	inc	r0
   052E 74 04              1157 	mov	a,#0x04
   0530 26                 1158 	add	a,@r0
   0531 FF                 1159 	mov	r7,a
   0532 24 2C              1160 	add	a,#_timercnt
   0534 F8                 1161 	mov	r0,a
   0535 76 00              1162 	mov	@r0,#0x00
                    02EA   1163 	C$fb_app_taster.c$182$3$9 ==.
                           1164 ;	..\fb_app_taster.c:182: timerstate[buttonno+4]=0;
   0537 EF                 1165 	mov	a,r7
   0538 24 3C              1166 	add	a,#_timerstate
   053A F8                 1167 	mov	r0,a
   053B 76 00              1168 	mov	@r0,#0x00
                    02F0   1169 	C$fb_app_taster.c$184$2$2 ==.
                           1170 ;	..\fb_app_taster.c:184: break;
   053D 02 08 D5           1171 	ljmp	00181$
                    02F3   1172 	C$fb_app_taster.c$190$2$2 ==.
                           1173 ;	..\fb_app_taster.c:190: case 3:
   0540                    1174 00139$:
                    02F3   1175 	C$fb_app_taster.c$191$2$2 ==.
                           1176 ;	..\fb_app_taster.c:191: if (buttonval) {	// Taster gedrueckt -> schauen wie lange gehalten
   0540 20 18 03           1177 	jb	b0,00245$
   0543 02 05 C8           1178 	ljmp	00144$
   0546                    1179 00245$:
                    02F9   1180 	C$fb_app_taster.c$193$3$16 ==.
                           1181 ;	..\fb_app_taster.c:193: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
   0546 A8 14              1182 	mov	r0,_bp
   0548 08                 1183 	inc	r0
   0549 E6                 1184 	mov	a,@r0
   054A 25 E0              1185 	add	a,acc
   054C 25 E0              1186 	add	a,acc
   054E FF                 1187 	mov	r7,a
   054F 24 D3              1188 	add	a,#0xD3
   0551 FE                 1189 	mov	r6,a
   0552 F5 82              1190 	mov	dpl,a
   0554 75 83 1D           1191 	mov	dph,#(_eeprom >> 8)
   0557 E4                 1192 	clr	a
   0558 93                 1193 	movc	a,@a+dptr
   0559 54 10              1194 	anl	a,#0x10
   055B C4                 1195 	swap	a
   055C 54 0F              1196 	anl	a,#0x0F
   055E FD                 1197 	mov	r5,a
   055F 7C 00              1198 	mov	r4,#0x00
   0561 C0 07              1199 	push	ar7
   0563 C0 06              1200 	push	ar6
   0565 C0 05              1201 	push	ar5
   0567 C0 04              1202 	push	ar4
   0569 A8 14              1203 	mov	r0,_bp
   056B 08                 1204 	inc	r0
   056C 86 82              1205 	mov	dpl,@r0
   056E 12 09 1C           1206 	lcall	_write_obj_value
   0571 15 81              1207 	dec	sp
   0573 15 81              1208 	dec	sp
                    0328   1209 	C$fb_app_taster.c$194$3$16 ==.
                           1210 ;	..\fb_app_taster.c:194: send_obj_value(buttonno);
   0575 A8 14              1211 	mov	r0,_bp
   0577 08                 1212 	inc	r0
   0578 86 82              1213 	mov	dpl,@r0
   057A 12 16 D3           1214 	lcall	_send_obj_value
                    0330   1215 	C$fb_app_taster.c$195$3$16 ==.
                           1216 ;	..\fb_app_taster.c:195: switch_led(buttonno,1);	// Status-LED schalten (hier nur nie,immer,betätigung)
   057D D2 F0              1217 	setb	b[0]
   057F 85 F0 23           1218 	mov	bits,b
   0582 A8 14              1219 	mov	r0,_bp
   0584 08                 1220 	inc	r0
   0585 86 82              1221 	mov	dpl,@r0
   0587 12 0A 0A           1222 	lcall	_switch_led
   058A D0 06              1223 	pop	ar6
   058C D0 07              1224 	pop	ar7
                    0341   1225 	C$fb_app_taster.c$196$3$16 ==.
                           1226 ;	..\fb_app_taster.c:196: timercnt[buttonno+4]=eeprom[0xD5+(buttonno*4)];	// Faktor Dauer			
   058E A8 14              1227 	mov	r0,_bp
   0590 08                 1228 	inc	r0
   0591 74 04              1229 	mov	a,#0x04
   0593 26                 1230 	add	a,@r0
   0594 FD                 1231 	mov	r5,a
   0595 24 2C              1232 	add	a,#_timercnt
   0597 F9                 1233 	mov	r1,a
   0598 74 D5              1234 	mov	a,#0xD5
   059A 2F                 1235 	add	a,r7
   059B 90 1D 00           1236 	mov	dptr,#_eeprom
   059E 93                 1237 	movc	a,@a+dptr
   059F FC                 1238 	mov	r4,a
   05A0 F7                 1239 	mov	@r1,a
                    0354   1240 	C$fb_app_taster.c$211$3$16 ==.
                           1241 ;	..\fb_app_taster.c:211: */			timerbase[buttonno+4]=(eeprom[0xD4+(buttonno*4)]&0x06)*2;// Basis Dauer zwischen kurz und langzeit
   05A1 ED                 1242 	mov	a,r5
   05A2 24 34              1243 	add	a,#_timerbase
   05A4 F9                 1244 	mov	r1,a
   05A5 74 D4              1245 	mov	a,#0xD4
   05A7 2F                 1246 	add	a,r7
   05A8 90 1D 00           1247 	mov	dptr,#_eeprom
   05AB 93                 1248 	movc	a,@a+dptr
   05AC 54 06              1249 	anl	a,#0x06
   05AE 25 E0              1250 	add	a,acc
   05B0 F7                 1251 	mov	@r1,a
                    0364   1252 	C$fb_app_taster.c$212$3$16 ==.
                           1253 ;	..\fb_app_taster.c:212: timerstate[buttonno+4]=((eeprom[0xD3+(buttonno*4)]&0x10)>>4)+0x30;
   05B1 ED                 1254 	mov	a,r5
   05B2 24 3C              1255 	add	a,#_timerstate
   05B4 F9                 1256 	mov	r1,a
   05B5 8E 82              1257 	mov	dpl,r6
   05B7 75 83 1D           1258 	mov	dph,#(_eeprom >> 8)
   05BA E4                 1259 	clr	a
   05BB 93                 1260 	movc	a,@a+dptr
   05BC 54 10              1261 	anl	a,#0x10
   05BE C4                 1262 	swap	a
   05BF 54 0F              1263 	anl	a,#0x0F
   05C1 FF                 1264 	mov	r7,a
   05C2 24 30              1265 	add	a,#0x30
   05C4 F7                 1266 	mov	@r1,a
   05C5 02 08 D5           1267 	ljmp	00181$
   05C8                    1268 00144$:
                    037B   1269 	C$fb_app_taster.c$215$3$17 ==.
                           1270 ;	..\fb_app_taster.c:215: if (timerstate[buttonno+4] == 0x40) {//innerhalb T2
   05C8 A8 14              1271 	mov	r0,_bp
   05CA 08                 1272 	inc	r0
   05CB 74 04              1273 	mov	a,#0x04
   05CD 26                 1274 	add	a,@r0
   05CE 24 3C              1275 	add	a,#_timerstate
   05D0 F9                 1276 	mov	r1,a
   05D1 87 07              1277 	mov	ar7,@r1
   05D3 BF 40 31           1278 	cjne	r7,#0x40,00141$
                    0389   1279 	C$fb_app_taster.c$216$4$18 ==.
                           1280 ;	..\fb_app_taster.c:216: write_obj_value(buttonno,((eeprom[0xD3+(buttonno*4)]&0x10)>>4));
   05D6 A8 14              1281 	mov	r0,_bp
   05D8 08                 1282 	inc	r0
   05D9 E6                 1283 	mov	a,@r0
   05DA 25 E0              1284 	add	a,acc
   05DC 25 E0              1285 	add	a,acc
   05DE 24 D3              1286 	add	a,#0xD3
   05E0 90 1D 00           1287 	mov	dptr,#_eeprom
   05E3 93                 1288 	movc	a,@a+dptr
   05E4 54 10              1289 	anl	a,#0x10
   05E6 C4                 1290 	swap	a
   05E7 54 0F              1291 	anl	a,#0x0F
   05E9 FF                 1292 	mov	r7,a
   05EA 7E 00              1293 	mov	r6,#0x00
   05EC C0 07              1294 	push	ar7
   05EE C0 06              1295 	push	ar6
   05F0 A8 14              1296 	mov	r0,_bp
   05F2 08                 1297 	inc	r0
   05F3 86 82              1298 	mov	dpl,@r0
   05F5 12 09 1C           1299 	lcall	_write_obj_value
   05F8 15 81              1300 	dec	sp
   05FA 15 81              1301 	dec	sp
                    03AF   1302 	C$fb_app_taster.c$217$4$18 ==.
                           1303 ;	..\fb_app_taster.c:217: send_obj_value(buttonno);
   05FC A8 14              1304 	mov	r0,_bp
   05FE 08                 1305 	inc	r0
   05FF 86 82              1306 	mov	dpl,@r0
   0601 12 16 D3           1307 	lcall	_send_obj_value
   0604 02 08 D5           1308 	ljmp	00181$
   0607                    1309 00141$:
                    03BA   1310 	C$fb_app_taster.c$221$4$19 ==.
                           1311 ;	..\fb_app_taster.c:221: timerstate[buttonno+4]=0;// T2 bereits abgelaufen
   0607 A8 14              1312 	mov	r0,_bp
   0609 08                 1313 	inc	r0
   060A 74 04              1314 	mov	a,#0x04
   060C 26                 1315 	add	a,@r0
   060D 24 3C              1316 	add	a,#_timerstate
   060F F8                 1317 	mov	r0,a
   0610 76 00              1318 	mov	@r0,#0x00
                    03C5   1319 	C$fb_app_taster.c$224$2$2 ==.
                           1320 ;	..\fb_app_taster.c:224: break;
   0612 02 08 D5           1321 	ljmp	00181$
                    03C8   1322 	C$fb_app_taster.c$230$2$2 ==.
                           1323 ;	..\fb_app_taster.c:230: case 4:	// Wertgeber..
   0615                    1324 00146$:
                    03C8   1325 	C$fb_app_taster.c$231$2$2 ==.
                           1326 ;	..\fb_app_taster.c:231: switch ((eeprom[0xD3+(buttonno*4)]>>4)& 0x07){// Art des Wertgebers holen
   0615 A8 14              1327 	mov	r0,_bp
   0617 08                 1328 	inc	r0
   0618 E6                 1329 	mov	a,@r0
   0619 25 E0              1330 	add	a,acc
   061B 25 E0              1331 	add	a,acc
   061D FF                 1332 	mov	r7,a
   061E 24 D3              1333 	add	a,#0xD3
   0620 90 1D 00           1334 	mov	dptr,#_eeprom
   0623 93                 1335 	movc	a,@a+dptr
   0624 C4                 1336 	swap	a
   0625 54 07              1337 	anl	a,#(0x0F&0x07)
   0627 FE                 1338 	mov	r6,a
   0628 24 FB              1339 	add	a,#0xff - 0x04
   062A 50 03              1340 	jnc	00248$
   062C 02 08 D5           1341 	ljmp	00181$
   062F                    1342 00248$:
   062F EE                 1343 	mov	a,r6
   0630 2E                 1344 	add	a,r6
   0631 2E                 1345 	add	a,r6
   0632 90 06 36           1346 	mov	dptr,#00249$
   0635 73                 1347 	jmp	@a+dptr
   0636                    1348 00249$:
   0636 02 06 45           1349 	ljmp	00147$
   0639 02 06 9E           1350 	ljmp	00152$
   063C 02 07 36           1351 	ljmp	00159$
   063F 02 07 B6           1352 	ljmp	00165$
   0642 02 08 36           1353 	ljmp	00171$
                    03F8   1354 	C$fb_app_taster.c$232$3$20 ==.
                           1355 ;	..\fb_app_taster.c:232: case 0: // ++++++++ Lichtszenenabruf ohne Speicherfunktion
   0645                    1356 00147$:
                    03F8   1357 	C$fb_app_taster.c$233$3$20 ==.
                           1358 ;	..\fb_app_taster.c:233: if(buttonval){
   0645 20 18 03           1359 	jb	b0,00250$
   0648 02 08 D5           1360 	ljmp	00181$
   064B                    1361 00250$:
                    03FE   1362 	C$fb_app_taster.c$234$4$21 ==.
                           1363 ;	..\fb_app_taster.c:234: if ((eeprom[COMMAND+(buttonno*4)]) & 0x04) switch_led(buttonno,0);	// wenn Betuetigungsanzeige, dann gleich beim druecken einschalten
   064B 74 D3              1364 	mov	a,#0xD3
   064D 2F                 1365 	add	a,r7
   064E 90 1D 00           1366 	mov	dptr,#_eeprom
   0651 93                 1367 	movc	a,@a+dptr
   0652 FE                 1368 	mov	r6,a
   0653 30 E2 11           1369 	jnb	acc.2,00149$
   0656 C2 F0              1370 	clr	b[0]
   0658 C0 07              1371 	push	ar7
   065A 85 F0 23           1372 	mov	bits,b
   065D A8 14              1373 	mov	r0,_bp
   065F 08                 1374 	inc	r0
   0660 86 82              1375 	mov	dpl,@r0
   0662 12 0A 0A           1376 	lcall	_switch_led
   0665 D0 07              1377 	pop	ar7
   0667                    1378 00149$:
                    041A   1379 	C$fb_app_taster.c$235$4$21 ==.
                           1380 ;	..\fb_app_taster.c:235: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
   0667 74 D5              1381 	mov	a,#0xD5
   0669 2F                 1382 	add	a,r7
   066A 90 1D 00           1383 	mov	dptr,#_eeprom
   066D 93                 1384 	movc	a,@a+dptr
   066E FE                 1385 	mov	r6,a
   066F 7D 00              1386 	mov	r5,#0x00
   0671 A8 14              1387 	mov	r0,_bp
   0673 08                 1388 	inc	r0
   0674 74 08              1389 	mov	a,#0x08
   0676 26                 1390 	add	a,@r0
   0677 FC                 1391 	mov	r4,a
   0678 C0 04              1392 	push	ar4
   067A C0 06              1393 	push	ar6
   067C C0 05              1394 	push	ar5
   067E 8C 82              1395 	mov	dpl,r4
   0680 12 09 1C           1396 	lcall	_write_obj_value
   0683 15 81              1397 	dec	sp
   0685 15 81              1398 	dec	sp
   0687 D0 04              1399 	pop	ar4
                    043C   1400 	C$fb_app_taster.c$236$4$21 ==.
                           1401 ;	..\fb_app_taster.c:236: send_obj_value(buttonno+8);
   0689 8C 82              1402 	mov	dpl,r4
   068B 12 16 D3           1403 	lcall	_send_obj_value
                    0441   1404 	C$fb_app_taster.c$237$4$21 ==.
                           1405 ;	..\fb_app_taster.c:237: switch_led(buttonno,0);
   068E C2 F0              1406 	clr	b[0]
   0690 85 F0 23           1407 	mov	bits,b
   0693 A8 14              1408 	mov	r0,_bp
   0695 08                 1409 	inc	r0
   0696 86 82              1410 	mov	dpl,@r0
   0698 12 0A 0A           1411 	lcall	_switch_led
                    044E   1412 	C$fb_app_taster.c$239$3$20 ==.
                           1413 ;	..\fb_app_taster.c:239: break;
   069B 02 08 D5           1414 	ljmp	00181$
                    0451   1415 	C$fb_app_taster.c$240$3$20 ==.
                           1416 ;	..\fb_app_taster.c:240: case 1:	// ++++++++ Lichtszenenabruf mit Speicherfunktion
   069E                    1417 00152$:
                    0451   1418 	C$fb_app_taster.c$241$3$20 ==.
                           1419 ;	..\fb_app_taster.c:241: if(buttonval){// beim drücken
   069E 30 18 1B           1420 	jnb	b0,00157$
                    0454   1421 	C$fb_app_taster.c$243$4$22 ==.
                           1422 ;	..\fb_app_taster.c:243: timercnt[buttonno+4]=156;
   06A1 A8 14              1423 	mov	r0,_bp
   06A3 08                 1424 	inc	r0
   06A4 74 04              1425 	mov	a,#0x04
   06A6 26                 1426 	add	a,@r0
   06A7 FE                 1427 	mov	r6,a
   06A8 24 2C              1428 	add	a,#_timercnt
   06AA F8                 1429 	mov	r0,a
   06AB 76 9C              1430 	mov	@r0,#0x9C
                    0460   1431 	C$fb_app_taster.c$244$4$22 ==.
                           1432 ;	..\fb_app_taster.c:244: timerbase[buttonno+4]=2; //(32ms)
   06AD EE                 1433 	mov	a,r6
   06AE 24 34              1434 	add	a,#_timerbase
   06B0 F8                 1435 	mov	r0,a
   06B1 76 02              1436 	mov	@r0,#0x02
                    0466   1437 	C$fb_app_taster.c$245$4$22 ==.
                           1438 ;	..\fb_app_taster.c:245: timerstate[buttonno+4]=0x50;// Betätigung länger 5 sekunden bei Lichtszene
   06B3 EE                 1439 	mov	a,r6
   06B4 24 3C              1440 	add	a,#_timerstate
   06B6 F8                 1441 	mov	r0,a
   06B7 76 50              1442 	mov	@r0,#0x50
   06B9 02 08 D5           1443 	ljmp	00181$
   06BC                    1444 00157$:
                    046F   1445 	C$fb_app_taster.c$249$4$23 ==.
                           1446 ;	..\fb_app_taster.c:249: if (timerstate[buttonno+4]==0x50){// wenn 5 sekunden noch nicht erreicht LZ senden
   06BC A8 14              1447 	mov	r0,_bp
   06BE 08                 1448 	inc	r0
   06BF 74 04              1449 	mov	a,#0x04
   06C1 26                 1450 	add	a,@r0
   06C2 24 3C              1451 	add	a,#_timerstate
   06C4 F9                 1452 	mov	r1,a
   06C5 87 06              1453 	mov	ar6,@r1
   06C7 BE 50 2C           1454 	cjne	r6,#0x50,00154$
                    047D   1455 	C$fb_app_taster.c$250$5$24 ==.
                           1456 ;	..\fb_app_taster.c:250: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
   06CA 74 D5              1457 	mov	a,#0xD5
   06CC 2F                 1458 	add	a,r7
   06CD 90 1D 00           1459 	mov	dptr,#_eeprom
   06D0 93                 1460 	movc	a,@a+dptr
   06D1 FE                 1461 	mov	r6,a
   06D2 7D 00              1462 	mov	r5,#0x00
   06D4 A8 14              1463 	mov	r0,_bp
   06D6 08                 1464 	inc	r0
   06D7 74 08              1465 	mov	a,#0x08
   06D9 26                 1466 	add	a,@r0
   06DA F5 82              1467 	mov	dpl,a
   06DC C0 06              1468 	push	ar6
   06DE C0 05              1469 	push	ar5
   06E0 12 09 1C           1470 	lcall	_write_obj_value
   06E3 15 81              1471 	dec	sp
   06E5 15 81              1472 	dec	sp
                    049A   1473 	C$fb_app_taster.c$251$5$24 ==.
                           1474 ;	..\fb_app_taster.c:251: switch_led(buttonno,1);
   06E7 D2 F0              1475 	setb	b[0]
   06E9 85 F0 23           1476 	mov	bits,b
   06EC A8 14              1477 	mov	r0,_bp
   06EE 08                 1478 	inc	r0
   06EF 86 82              1479 	mov	dpl,@r0
   06F1 12 0A 0A           1480 	lcall	_switch_led
   06F4 80 20              1481 	sjmp	00155$
   06F6                    1482 00154$:
                    04A9   1483 	C$fb_app_taster.c$254$5$25 ==.
                           1484 ;	..\fb_app_taster.c:254: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]|0x80);
   06F6 74 D5              1485 	mov	a,#0xD5
   06F8 2F                 1486 	add	a,r7
   06F9 90 1D 00           1487 	mov	dptr,#_eeprom
   06FC 93                 1488 	movc	a,@a+dptr
   06FD FE                 1489 	mov	r6,a
   06FE 43 06 80           1490 	orl	ar6,#0x80
   0701 7D 00              1491 	mov	r5,#0x00
   0703 A8 14              1492 	mov	r0,_bp
   0705 08                 1493 	inc	r0
   0706 74 08              1494 	mov	a,#0x08
   0708 26                 1495 	add	a,@r0
   0709 F5 82              1496 	mov	dpl,a
   070B C0 06              1497 	push	ar6
   070D C0 05              1498 	push	ar5
   070F 12 09 1C           1499 	lcall	_write_obj_value
   0712 15 81              1500 	dec	sp
   0714 15 81              1501 	dec	sp
   0716                    1502 00155$:
                    04C9   1503 	C$fb_app_taster.c$256$4$23 ==.
                           1504 ;	..\fb_app_taster.c:256: send_obj_value(buttonno+8);
   0716 A8 14              1505 	mov	r0,_bp
   0718 08                 1506 	inc	r0
   0719 74 08              1507 	mov	a,#0x08
   071B 26                 1508 	add	a,@r0
   071C F5 82              1509 	mov	dpl,a
   071E 12 16 D3           1510 	lcall	_send_obj_value
                    04D4   1511 	C$fb_app_taster.c$257$4$23 ==.
                           1512 ;	..\fb_app_taster.c:257: timerstate[buttonno+4]=0;
   0721 A8 14              1513 	mov	r0,_bp
   0723 08                 1514 	inc	r0
   0724 74 04              1515 	mov	a,#0x04
   0726 26                 1516 	add	a,@r0
   0727 FE                 1517 	mov	r6,a
   0728 24 3C              1518 	add	a,#_timerstate
   072A F8                 1519 	mov	r0,a
   072B 76 00              1520 	mov	@r0,#0x00
                    04E0   1521 	C$fb_app_taster.c$258$4$23 ==.
                           1522 ;	..\fb_app_taster.c:258: timercnt[buttonno+4]=0;
   072D EE                 1523 	mov	a,r6
   072E 24 2C              1524 	add	a,#_timercnt
   0730 F8                 1525 	mov	r0,a
   0731 76 00              1526 	mov	@r0,#0x00
                    04E6   1527 	C$fb_app_taster.c$260$3$20 ==.
                           1528 ;	..\fb_app_taster.c:260: break;
   0733 02 08 D5           1529 	ljmp	00181$
                    04E9   1530 	C$fb_app_taster.c$261$3$20 ==.
                           1531 ;	..\fb_app_taster.c:261: case 2: // ++++++  Helligkeitswertgeber
   0736                    1532 00159$:
                    04E9   1533 	C$fb_app_taster.c$262$3$20 ==.
                           1534 ;	..\fb_app_taster.c:262: if (buttonval){
   0736 30 18 6F           1535 	jnb	b0,00163$
                    04EC   1536 	C$fb_app_taster.c$263$4$26 ==.
                           1537 ;	..\fb_app_taster.c:263: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
   0739 74 D5              1538 	mov	a,#0xD5
   073B 2F                 1539 	add	a,r7
   073C 90 1D 00           1540 	mov	dptr,#_eeprom
   073F 93                 1541 	movc	a,@a+dptr
   0740 FD                 1542 	mov	r5,a
   0741 7E 00              1543 	mov	r6,#0x00
   0743 74 D6              1544 	mov	a,#0xD6
   0745 2F                 1545 	add	a,r7
   0746 90 1D 00           1546 	mov	dptr,#_eeprom
   0749 93                 1547 	movc	a,@a+dptr
   074A 7B 00              1548 	mov	r3,#0x00
   074C 2E                 1549 	add	a,r6
   074D FE                 1550 	mov	r6,a
   074E EB                 1551 	mov	a,r3
   074F 3D                 1552 	addc	a,r5
   0750 FD                 1553 	mov	r5,a
   0751 A8 14              1554 	mov	r0,_bp
   0753 08                 1555 	inc	r0
   0754 74 08              1556 	mov	a,#0x08
   0756 26                 1557 	add	a,@r0
   0757 FC                 1558 	mov	r4,a
   0758 C0 07              1559 	push	ar7
   075A C0 04              1560 	push	ar4
   075C C0 06              1561 	push	ar6
   075E C0 05              1562 	push	ar5
   0760 8C 82              1563 	mov	dpl,r4
   0762 12 09 1C           1564 	lcall	_write_obj_value
   0765 15 81              1565 	dec	sp
   0767 15 81              1566 	dec	sp
   0769 D0 04              1567 	pop	ar4
                    051E   1568 	C$fb_app_taster.c$264$4$26 ==.
                           1569 ;	..\fb_app_taster.c:264: send_obj_value(buttonno+8);
   076B 8C 82              1570 	mov	dpl,r4
   076D 12 16 D3           1571 	lcall	_send_obj_value
                    0523   1572 	C$fb_app_taster.c$265$4$26 ==.
                           1573 ;	..\fb_app_taster.c:265: switch_led(buttonno,1);
   0770 D2 F0              1574 	setb	b[0]
   0772 85 F0 23           1575 	mov	bits,b
   0775 A8 14              1576 	mov	r0,_bp
   0777 08                 1577 	inc	r0
   0778 86 82              1578 	mov	dpl,@r0
   077A 12 0A 0A           1579 	lcall	_switch_led
   077D D0 07              1580 	pop	ar7
                    0532   1581 	C$fb_app_taster.c$266$4$26 ==.
                           1582 ;	..\fb_app_taster.c:266: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
   077F 74 D3              1583 	mov	a,#0xD3
   0781 2F                 1584 	add	a,r7
   0782 90 1D 00           1585 	mov	dptr,#_eeprom
   0785 93                 1586 	movc	a,@a+dptr
   0786 FE                 1587 	mov	r6,a
   0787 30 E7 03           1588 	jnb	acc.7,00256$
   078A 02 08 D5           1589 	ljmp	00181$
   078D                    1590 00256$:
                    0540   1591 	C$fb_app_taster.c$267$5$27 ==.
                           1592 ;	..\fb_app_taster.c:267: timercnt[buttonno+4]=156;
   078D A8 14              1593 	mov	r0,_bp
   078F 08                 1594 	inc	r0
   0790 74 04              1595 	mov	a,#0x04
   0792 26                 1596 	add	a,@r0
   0793 FE                 1597 	mov	r6,a
   0794 24 2C              1598 	add	a,#_timercnt
   0796 F8                 1599 	mov	r0,a
   0797 76 9C              1600 	mov	@r0,#0x9C
                    054C   1601 	C$fb_app_taster.c$268$5$27 ==.
                           1602 ;	..\fb_app_taster.c:268: timerbase[buttonno+4]=2; //(32ms)
   0799 EE                 1603 	mov	a,r6
   079A 24 34              1604 	add	a,#_timerbase
   079C F8                 1605 	mov	r0,a
   079D 76 02              1606 	mov	@r0,#0x02
                    0552   1607 	C$fb_app_taster.c$269$5$27 ==.
                           1608 ;	..\fb_app_taster.c:269: timerstate[buttonno+4]=0x70;// Betätigung länger 5 sekunden bei Dimmwert
   079F EE                 1609 	mov	a,r6
   07A0 24 3C              1610 	add	a,#_timerstate
   07A2 F8                 1611 	mov	r0,a
   07A3 76 70              1612 	mov	@r0,#0x70
   07A5 02 08 D5           1613 	ljmp	00181$
   07A8                    1614 00163$:
                    055B   1615 	C$fb_app_taster.c$276$4$28 ==.
                           1616 ;	..\fb_app_taster.c:276: timerstate[buttonno+4]=0;
   07A8 A8 14              1617 	mov	r0,_bp
   07AA 08                 1618 	inc	r0
   07AB 74 04              1619 	mov	a,#0x04
   07AD 26                 1620 	add	a,@r0
   07AE 24 3C              1621 	add	a,#_timerstate
   07B0 F8                 1622 	mov	r0,a
   07B1 76 00              1623 	mov	@r0,#0x00
                    0566   1624 	C$fb_app_taster.c$278$3$20 ==.
                           1625 ;	..\fb_app_taster.c:278: break;
   07B3 02 08 D5           1626 	ljmp	00181$
                    0569   1627 	C$fb_app_taster.c$279$3$20 ==.
                           1628 ;	..\fb_app_taster.c:279: case 3:	// ++++++  Temperaturwertgeber
   07B6                    1629 00165$:
                    0569   1630 	C$fb_app_taster.c$280$3$20 ==.
                           1631 ;	..\fb_app_taster.c:280: if (buttonval){
   07B6 30 18 6F           1632 	jnb	b0,00169$
                    056C   1633 	C$fb_app_taster.c$281$4$30 ==.
                           1634 ;	..\fb_app_taster.c:281: write_obj_value(buttonno+8,(eeprom[0xD5+(buttonno*4)]<<8)+ eeprom[0xD6+(buttonno*4)]);
   07B9 74 D5              1635 	mov	a,#0xD5
   07BB 2F                 1636 	add	a,r7
   07BC 90 1D 00           1637 	mov	dptr,#_eeprom
   07BF 93                 1638 	movc	a,@a+dptr
   07C0 FD                 1639 	mov	r5,a
   07C1 7E 00              1640 	mov	r6,#0x00
   07C3 74 D6              1641 	mov	a,#0xD6
   07C5 2F                 1642 	add	a,r7
   07C6 90 1D 00           1643 	mov	dptr,#_eeprom
   07C9 93                 1644 	movc	a,@a+dptr
   07CA 7B 00              1645 	mov	r3,#0x00
   07CC 2E                 1646 	add	a,r6
   07CD FE                 1647 	mov	r6,a
   07CE EB                 1648 	mov	a,r3
   07CF 3D                 1649 	addc	a,r5
   07D0 FD                 1650 	mov	r5,a
   07D1 A8 14              1651 	mov	r0,_bp
   07D3 08                 1652 	inc	r0
   07D4 74 08              1653 	mov	a,#0x08
   07D6 26                 1654 	add	a,@r0
   07D7 FC                 1655 	mov	r4,a
   07D8 C0 07              1656 	push	ar7
   07DA C0 04              1657 	push	ar4
   07DC C0 06              1658 	push	ar6
   07DE C0 05              1659 	push	ar5
   07E0 8C 82              1660 	mov	dpl,r4
   07E2 12 09 1C           1661 	lcall	_write_obj_value
   07E5 15 81              1662 	dec	sp
   07E7 15 81              1663 	dec	sp
   07E9 D0 04              1664 	pop	ar4
                    059E   1665 	C$fb_app_taster.c$282$4$30 ==.
                           1666 ;	..\fb_app_taster.c:282: send_obj_value(buttonno+8);
   07EB 8C 82              1667 	mov	dpl,r4
   07ED 12 16 D3           1668 	lcall	_send_obj_value
                    05A3   1669 	C$fb_app_taster.c$283$4$30 ==.
                           1670 ;	..\fb_app_taster.c:283: switch_led(buttonno,1);
   07F0 D2 F0              1671 	setb	b[0]
   07F2 85 F0 23           1672 	mov	bits,b
   07F5 A8 14              1673 	mov	r0,_bp
   07F7 08                 1674 	inc	r0
   07F8 86 82              1675 	mov	dpl,@r0
   07FA 12 0A 0A           1676 	lcall	_switch_led
   07FD D0 07              1677 	pop	ar7
                    05B2   1678 	C$fb_app_taster.c$284$4$30 ==.
                           1679 ;	..\fb_app_taster.c:284: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
   07FF 74 D3              1680 	mov	a,#0xD3
   0801 2F                 1681 	add	a,r7
   0802 90 1D 00           1682 	mov	dptr,#_eeprom
   0805 93                 1683 	movc	a,@a+dptr
   0806 FE                 1684 	mov	r6,a
   0807 30 E7 03           1685 	jnb	acc.7,00258$
   080A 02 08 D5           1686 	ljmp	00181$
   080D                    1687 00258$:
                    05C0   1688 	C$fb_app_taster.c$285$5$31 ==.
                           1689 ;	..\fb_app_taster.c:285: timercnt[buttonno+4]=156;
   080D A8 14              1690 	mov	r0,_bp
   080F 08                 1691 	inc	r0
   0810 74 04              1692 	mov	a,#0x04
   0812 26                 1693 	add	a,@r0
   0813 FE                 1694 	mov	r6,a
   0814 24 2C              1695 	add	a,#_timercnt
   0816 F8                 1696 	mov	r0,a
   0817 76 9C              1697 	mov	@r0,#0x9C
                    05CC   1698 	C$fb_app_taster.c$286$5$31 ==.
                           1699 ;	..\fb_app_taster.c:286: timerbase[buttonno+4]=2; //(32ms)
   0819 EE                 1700 	mov	a,r6
   081A 24 34              1701 	add	a,#_timerbase
   081C F8                 1702 	mov	r0,a
   081D 76 02              1703 	mov	@r0,#0x02
                    05D2   1704 	C$fb_app_taster.c$287$5$31 ==.
                           1705 ;	..\fb_app_taster.c:287: timerstate[buttonno+4]=0x90;// Betätigung länger 5 sekunden bei Dimmwert
   081F EE                 1706 	mov	a,r6
   0820 24 3C              1707 	add	a,#_timerstate
   0822 F8                 1708 	mov	r0,a
   0823 76 90              1709 	mov	@r0,#0x90
   0825 02 08 D5           1710 	ljmp	00181$
   0828                    1711 00169$:
                    05DB   1712 	C$fb_app_taster.c$295$4$32 ==.
                           1713 ;	..\fb_app_taster.c:295: timerstate[buttonno+4]=0;
   0828 A8 14              1714 	mov	r0,_bp
   082A 08                 1715 	inc	r0
   082B 74 04              1716 	mov	a,#0x04
   082D 26                 1717 	add	a,@r0
   082E 24 3C              1718 	add	a,#_timerstate
   0830 F8                 1719 	mov	r0,a
   0831 76 00              1720 	mov	@r0,#0x00
                    05E6   1721 	C$fb_app_taster.c$297$3$20 ==.
                           1722 ;	..\fb_app_taster.c:297: break;
   0833 02 08 D5           1723 	ljmp	00181$
                    05E9   1724 	C$fb_app_taster.c$298$3$20 ==.
                           1725 ;	..\fb_app_taster.c:298: case 4: // ++++++   Dimmwertgeber
   0836                    1726 00171$:
                    05E9   1727 	C$fb_app_taster.c$299$3$20 ==.
                           1728 ;	..\fb_app_taster.c:299: if (buttonval){
   0836 30 18 5D           1729 	jnb	b0,00177$
                    05EC   1730 	C$fb_app_taster.c$300$4$34 ==.
                           1731 ;	..\fb_app_taster.c:300: write_obj_value(buttonno+8,eeprom[0xD5+(buttonno*4)]);
   0839 74 D5              1732 	mov	a,#0xD5
   083B 2F                 1733 	add	a,r7
   083C 90 1D 00           1734 	mov	dptr,#_eeprom
   083F 93                 1735 	movc	a,@a+dptr
   0840 FE                 1736 	mov	r6,a
   0841 7D 00              1737 	mov	r5,#0x00
   0843 A8 14              1738 	mov	r0,_bp
   0845 08                 1739 	inc	r0
   0846 74 08              1740 	mov	a,#0x08
   0848 26                 1741 	add	a,@r0
   0849 FC                 1742 	mov	r4,a
   084A C0 07              1743 	push	ar7
   084C C0 04              1744 	push	ar4
   084E C0 06              1745 	push	ar6
   0850 C0 05              1746 	push	ar5
   0852 8C 82              1747 	mov	dpl,r4
   0854 12 09 1C           1748 	lcall	_write_obj_value
   0857 15 81              1749 	dec	sp
   0859 15 81              1750 	dec	sp
   085B D0 04              1751 	pop	ar4
                    0610   1752 	C$fb_app_taster.c$301$4$34 ==.
                           1753 ;	..\fb_app_taster.c:301: send_obj_value(buttonno+8);
   085D 8C 82              1754 	mov	dpl,r4
   085F 12 16 D3           1755 	lcall	_send_obj_value
                    0615   1756 	C$fb_app_taster.c$302$4$34 ==.
                           1757 ;	..\fb_app_taster.c:302: switch_led(buttonno,1);
   0862 D2 F0              1758 	setb	b[0]
   0864 85 F0 23           1759 	mov	bits,b
   0867 A8 14              1760 	mov	r0,_bp
   0869 08                 1761 	inc	r0
   086A 86 82              1762 	mov	dpl,@r0
   086C 12 0A 0A           1763 	lcall	_switch_led
   086F D0 07              1764 	pop	ar7
                    0624   1765 	C$fb_app_taster.c$303$4$34 ==.
                           1766 ;	..\fb_app_taster.c:303: if(!(eeprom[0xD3+(buttonno*4)]& 0x80)){// schauen ob Verstellung freigegeben
   0871 74 D3              1767 	mov	a,#0xD3
   0873 2F                 1768 	add	a,r7
   0874 90 1D 00           1769 	mov	dptr,#_eeprom
   0877 93                 1770 	movc	a,@a+dptr
   0878 FE                 1771 	mov	r6,a
   0879 20 E7 59           1772 	jb	acc.7,00181$
                    062F   1773 	C$fb_app_taster.c$304$5$35 ==.
                           1774 ;	..\fb_app_taster.c:304: timercnt[buttonno+4]=156;
   087C A8 14              1775 	mov	r0,_bp
   087E 08                 1776 	inc	r0
   087F 74 04              1777 	mov	a,#0x04
   0881 26                 1778 	add	a,@r0
   0882 FE                 1779 	mov	r6,a
   0883 24 2C              1780 	add	a,#_timercnt
   0885 F8                 1781 	mov	r0,a
   0886 76 9C              1782 	mov	@r0,#0x9C
                    063B   1783 	C$fb_app_taster.c$305$5$35 ==.
                           1784 ;	..\fb_app_taster.c:305: timerbase[buttonno+4]=2; //(32ms)
   0888 EE                 1785 	mov	a,r6
   0889 24 34              1786 	add	a,#_timerbase
   088B F8                 1787 	mov	r0,a
   088C 76 02              1788 	mov	@r0,#0x02
                    0641   1789 	C$fb_app_taster.c$306$5$35 ==.
                           1790 ;	..\fb_app_taster.c:306: timerstate[buttonno+4]=0xB0;// Betätigung länger 5 sekunden bei Dimmwert
   088E EE                 1791 	mov	a,r6
   088F 24 3C              1792 	add	a,#_timerstate
   0891 F8                 1793 	mov	r0,a
   0892 76 B0              1794 	mov	@r0,#0xB0
   0894 80 3F              1795 	sjmp	00181$
   0896                    1796 00177$:
                    0649   1797 	C$fb_app_taster.c$310$4$36 ==.
                           1798 ;	..\fb_app_taster.c:310: if (timerstate[buttonno+4]==0xC0){
   0896 A8 14              1799 	mov	r0,_bp
   0898 08                 1800 	inc	r0
   0899 74 04              1801 	mov	a,#0x04
   089B 26                 1802 	add	a,@r0
   089C 24 3C              1803 	add	a,#_timerstate
   089E F9                 1804 	mov	r1,a
   089F 87 06              1805 	mov	ar6,@r1
   08A1 BE C0 26           1806 	cjne	r6,#0xC0,00175$
                    0657   1807 	C$fb_app_taster.c$312$5$37 ==.
                           1808 ;	..\fb_app_taster.c:312: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   08A4 C2 AF              1809 	clr	_IEN0_7
                    0659   1810 	C$fb_app_taster.c$313$5$37 ==.
                           1811 ;	..\fb_app_taster.c:313: START_WRITECYCLE
   08A6 75 E4 00           1812 	mov	_FMCON,#0x00
                    065C   1813 	C$fb_app_taster.c$314$5$37 ==.
                           1814 ;	..\fb_app_taster.c:314: WRITE_BYTE(0x01,0xD5+(buttonno*4),read_obj_value(buttonno+8));
   08A9 75 E7 1D           1815 	mov	_FMADRH,#0x1D
   08AC 74 D5              1816 	mov	a,#0xD5
   08AE 2F                 1817 	add	a,r7
   08AF F5 E6              1818 	mov	_FMADRL,a
   08B1 A8 14              1819 	mov	r0,_bp
   08B3 08                 1820 	inc	r0
   08B4 74 08              1821 	mov	a,#0x08
   08B6 26                 1822 	add	a,@r0
   08B7 F5 82              1823 	mov	dpl,a
   08B9 12 08 DA           1824 	lcall	_read_obj_value
   08BC AC 82              1825 	mov	r4,dpl
   08BE AD 83              1826 	mov	r5,dph
   08C0 AE F0              1827 	mov	r6,b
   08C2 FF                 1828 	mov	r7,a
   08C3 8C E5              1829 	mov	_FMDATA,r4
                    0678   1830 	C$fb_app_taster.c$315$5$37 ==.
                           1831 ;	..\fb_app_taster.c:315: STOP_WRITECYCLE // Lichtszene speichern
   08C5 75 E4 68           1832 	mov	_FMCON,#0x68
                    067B   1833 	C$fb_app_taster.c$316$5$37 ==.
                           1834 ;	..\fb_app_taster.c:316: EA=1;
   08C8 D2 AF              1835 	setb	_IEN0_7
   08CA                    1836 00175$:
                    067D   1837 	C$fb_app_taster.c$319$4$36 ==.
                           1838 ;	..\fb_app_taster.c:319: timerstate[buttonno+4]=0;
   08CA A8 14              1839 	mov	r0,_bp
   08CC 08                 1840 	inc	r0
   08CD 74 04              1841 	mov	a,#0x04
   08CF 26                 1842 	add	a,@r0
   08D0 24 3C              1843 	add	a,#_timerstate
   08D2 F8                 1844 	mov	r0,a
   08D3 76 00              1845 	mov	@r0,#0x00
                    0688   1846 	C$fb_app_taster.c$326$1$1 ==.
                           1847 ;	..\fb_app_taster.c:326: }
   08D5                    1848 00181$:
   08D5 15 81              1849 	dec	sp
   08D7 D0 14              1850 	pop	_bp
                    068C   1851 	C$fb_app_taster.c$327$1$1 ==.
                    068C   1852 	XG$button_changed$0$0 ==.
   08D9 22                 1853 	ret
                           1854 ;------------------------------------------------------------
                           1855 ;Allocation info for local variables in function 'read_obj_value'
                           1856 ;------------------------------------------------------------
                           1857 ;objno                     Allocated to registers r7 
                           1858 ;------------------------------------------------------------
                    068D   1859 	G$read_obj_value$0$0 ==.
                    068D   1860 	C$fb_app_taster.c$353$1$1 ==.
                           1861 ;	..\fb_app_taster.c:353: unsigned long read_obj_value(unsigned char objno)
                           1862 ;	-----------------------------------------
                           1863 ;	 function read_obj_value
                           1864 ;	-----------------------------------------
   08DA                    1865 _read_obj_value:
   08DA AF 82              1866 	mov	r7,dpl
                    068F   1867 	C$fb_app_taster.c$356$1$1 ==.
                           1868 ;	..\fb_app_taster.c:356: if(objno<4)	return(object_value[objno]);
   08DC BF 04 00           1869 	cjne	r7,#0x04,00107$
   08DF                    1870 00107$:
   08DF 50 15              1871 	jnc	00102$
   08E1 EF                 1872 	mov	a,r7
   08E2 24 08              1873 	add	a,#_object_value
   08E4 F9                 1874 	mov	r1,a
   08E5 87 06              1875 	mov	ar6,@r1
   08E7 7D 00              1876 	mov	r5,#0x00
   08E9 7C 00              1877 	mov	r4,#0x00
   08EB 7B 00              1878 	mov	r3,#0x00
   08ED 8E 82              1879 	mov	dpl,r6
   08EF 8D 83              1880 	mov	dph,r5
   08F1 8C F0              1881 	mov	b,r4
   08F3 EB                 1882 	mov	a,r3
   08F4 80 25              1883 	sjmp	00104$
   08F6                    1884 00102$:
                    06A9   1885 	C$fb_app_taster.c$357$1$1 ==.
                           1886 ;	..\fb_app_taster.c:357: else return((object_value[objno-4]<<8)+object_value[objno]);
   08F6 EF                 1887 	mov	a,r7
   08F7 24 FC              1888 	add	a,#0xFC
   08F9 24 08              1889 	add	a,#_object_value
   08FB F9                 1890 	mov	r1,a
   08FC 87 06              1891 	mov	ar6,@r1
   08FE 8E 05              1892 	mov	ar5,r6
   0900 7E 00              1893 	mov	r6,#0x00
   0902 EF                 1894 	mov	a,r7
   0903 24 08              1895 	add	a,#_object_value
   0905 F9                 1896 	mov	r1,a
   0906 87 07              1897 	mov	ar7,@r1
   0908 7C 00              1898 	mov	r4,#0x00
   090A EF                 1899 	mov	a,r7
   090B 2E                 1900 	add	a,r6
   090C FE                 1901 	mov	r6,a
   090D EC                 1902 	mov	a,r4
   090E 3D                 1903 	addc	a,r5
   090F FD                 1904 	mov	r5,a
   0910 33                 1905 	rlc	a
   0911 95 E0              1906 	subb	a,acc
   0913 FF                 1907 	mov	r7,a
   0914 FC                 1908 	mov	r4,a
   0915 8E 82              1909 	mov	dpl,r6
   0917 8D 83              1910 	mov	dph,r5
   0919 8F F0              1911 	mov	b,r7
   091B                    1912 00104$:
                    06CE   1913 	C$fb_app_taster.c$359$1$1 ==.
                    06CE   1914 	XG$read_obj_value$0$0 ==.
   091B 22                 1915 	ret
                           1916 ;------------------------------------------------------------
                           1917 ;Allocation info for local variables in function 'write_obj_value'
                           1918 ;------------------------------------------------------------
                           1919 ;objval                    Allocated to stack - _bp -4
                           1920 ;objno                     Allocated to registers r7 
                           1921 ;------------------------------------------------------------
                    06CF   1922 	G$write_obj_value$0$0 ==.
                    06CF   1923 	C$fb_app_taster.c$361$1$1 ==.
                           1924 ;	..\fb_app_taster.c:361: void write_obj_value(unsigned char objno, unsigned int objval)
                           1925 ;	-----------------------------------------
                           1926 ;	 function write_obj_value
                           1927 ;	-----------------------------------------
   091C                    1928 _write_obj_value:
   091C C0 14              1929 	push	_bp
   091E 85 81 14           1930 	mov	_bp,sp
   0921 AF 82              1931 	mov	r7,dpl
                    06D6   1932 	C$fb_app_taster.c$363$1$1 ==.
                           1933 ;	..\fb_app_taster.c:363: if(objno<4)object_value[objno]=objval;
   0923 BF 04 00           1934 	cjne	r7,#0x04,00107$
   0926                    1935 00107$:
   0926 50 0F              1936 	jnc	00102$
   0928 EF                 1937 	mov	a,r7
   0929 24 08              1938 	add	a,#_object_value
   092B F9                 1939 	mov	r1,a
   092C E5 14              1940 	mov	a,_bp
   092E 24 FC              1941 	add	a,#0xfc
   0930 F8                 1942 	mov	r0,a
   0931 86 06              1943 	mov	ar6,@r0
   0933 A7 06              1944 	mov	@r1,ar6
   0935 80 1F              1945 	sjmp	00104$
   0937                    1946 00102$:
                    06EA   1947 	C$fb_app_taster.c$365$2$2 ==.
                           1948 ;	..\fb_app_taster.c:365: object_value[objno-4]=objval>>8;
   0937 EF                 1949 	mov	a,r7
   0938 24 FC              1950 	add	a,#0xFC
   093A 24 08              1951 	add	a,#_object_value
   093C F9                 1952 	mov	r1,a
   093D E5 14              1953 	mov	a,_bp
   093F 24 FC              1954 	add	a,#0xfc
   0941 F8                 1955 	mov	r0,a
   0942 08                 1956 	inc	r0
   0943 86 06              1957 	mov	ar6,@r0
   0945 A7 06              1958 	mov	@r1,ar6
                    06FA   1959 	C$fb_app_taster.c$366$2$2 ==.
                           1960 ;	..\fb_app_taster.c:366: object_value[objno]=objval&0xFF;
   0947 EF                 1961 	mov	a,r7
   0948 24 08              1962 	add	a,#_object_value
   094A F9                 1963 	mov	r1,a
   094B E5 14              1964 	mov	a,_bp
   094D 24 FC              1965 	add	a,#0xfc
   094F F8                 1966 	mov	r0,a
   0950 86 06              1967 	mov	ar6,@r0
   0952 7F 00              1968 	mov	r7,#0x00
   0954 A7 06              1969 	mov	@r1,ar6
   0956                    1970 00104$:
   0956 D0 14              1971 	pop	_bp
                    070B   1972 	C$fb_app_taster.c$368$1$1 ==.
                    070B   1973 	XG$write_obj_value$0$0 ==.
   0958 22                 1974 	ret
                           1975 ;------------------------------------------------------------
                           1976 ;Allocation info for local variables in function 'write_value_req'
                           1977 ;------------------------------------------------------------
                           1978 ;objno                     Allocated to registers r7 
                           1979 ;objtype                   Allocated to registers r6 
                           1980 ;------------------------------------------------------------
                    070C   1981 	G$write_value_req$0$0 ==.
                    070C   1982 	C$fb_app_taster.c$378$1$1 ==.
                           1983 ;	..\fb_app_taster.c:378: void write_value_req(unsigned char objno)
                           1984 ;	-----------------------------------------
                           1985 ;	 function write_value_req
                           1986 ;	-----------------------------------------
   0959                    1987 _write_value_req:
   0959 AF 82              1988 	mov	r7,dpl
                    070E   1989 	C$fb_app_taster.c$381$1$1 ==.
                           1990 ;	..\fb_app_taster.c:381: if (objno<12) {					// max 12 objekte (0-11)
   095B BF 0C 00           1991 	cjne	r7,#0x0C,00120$
   095E                    1992 00120$:
   095E 40 03              1993 	jc	00121$
   0960 02 09 FE           1994 	ljmp	00112$
   0963                    1995 00121$:
                    0716   1996 	C$fb_app_taster.c$382$2$2 ==.
                           1997 ;	..\fb_app_taster.c:382: objtype=eeprom[eeprom[COMMSTABPTR]+objno*3+4];
   0963 90 1D 12           1998 	mov	dptr,#(_eeprom + 0x0012)
   0966 E4                 1999 	clr	a
   0967 93                 2000 	movc	a,@a+dptr
   0968 FE                 2001 	mov	r6,a
   0969 EF                 2002 	mov	a,r7
   096A 75 F0 03           2003 	mov	b,#0x03
   096D A4                 2004 	mul	ab
   096E 2E                 2005 	add	a,r6
   096F 24 04              2006 	add	a,#0x04
   0971 90 1D 00           2007 	mov	dptr,#_eeprom
   0974 93                 2008 	movc	a,@a+dptr
                    0728   2009 	C$fb_app_taster.c$383$2$2 ==.
                           2010 ;	..\fb_app_taster.c:383: if (objtype<=6){
   0975 FE                 2011 	mov  r6,a
   0976 24 F9              2012 	add	a,#0xff - 0x06
   0978 40 1C              2013 	jc	00102$
                    072D   2014 	C$fb_app_taster.c$384$3$3 ==.
                           2015 ;	..\fb_app_taster.c:384: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
   097A 74 3F              2016 	mov	a,#0x3F
   097C 55 52              2017 	anl	a,(_telegramm + 0x0007)
   097E FD                 2018 	mov	r5,a
   097F 7C 00              2019 	mov	r4,#0x00
   0981 C0 07              2020 	push	ar7
   0983 C0 06              2021 	push	ar6
   0985 C0 05              2022 	push	ar5
   0987 C0 04              2023 	push	ar4
   0989 8F 82              2024 	mov	dpl,r7
   098B 12 09 1C           2025 	lcall	_write_obj_value
   098E 15 81              2026 	dec	sp
   0990 15 81              2027 	dec	sp
   0992 D0 06              2028 	pop	ar6
   0994 D0 07              2029 	pop	ar7
   0996                    2030 00102$:
                    0749   2031 	C$fb_app_taster.c$386$2$2 ==.
                           2032 ;	..\fb_app_taster.c:386: if (objtype==7)write_obj_value(objno,telegramm[8]);
   0996 BE 07 19           2033 	cjne	r6,#0x07,00104$
   0999 AC 53              2034 	mov	r4,(_telegramm + 0x0008)
   099B 7D 00              2035 	mov	r5,#0x00
   099D C0 07              2036 	push	ar7
   099F C0 06              2037 	push	ar6
   09A1 C0 04              2038 	push	ar4
   09A3 C0 05              2039 	push	ar5
   09A5 8F 82              2040 	mov	dpl,r7
   09A7 12 09 1C           2041 	lcall	_write_obj_value
   09AA 15 81              2042 	dec	sp
   09AC 15 81              2043 	dec	sp
   09AE D0 06              2044 	pop	ar6
   09B0 D0 07              2045 	pop	ar7
   09B2                    2046 00104$:
                    0765   2047 	C$fb_app_taster.c$387$2$2 ==.
                           2048 ;	..\fb_app_taster.c:387: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
   09B2 BE 08 1F           2049 	cjne	r6,#0x08,00106$
   09B5 AD 54              2050 	mov	r5,(_telegramm + 0x0009)
   09B7 7E 00              2051 	mov	r6,#0x00
   09B9 AB 53              2052 	mov	r3,(_telegramm + 0x0008)
   09BB 8B 04              2053 	mov	ar4,r3
   09BD E4                 2054 	clr	a
   09BE 2D                 2055 	add	a,r5
   09BF FD                 2056 	mov	r5,a
   09C0 EC                 2057 	mov	a,r4
   09C1 3E                 2058 	addc	a,r6
   09C2 FE                 2059 	mov	r6,a
   09C3 C0 07              2060 	push	ar7
   09C5 C0 05              2061 	push	ar5
   09C7 C0 06              2062 	push	ar6
   09C9 8F 82              2063 	mov	dpl,r7
   09CB 12 09 1C           2064 	lcall	_write_obj_value
   09CE 15 81              2065 	dec	sp
   09D0 15 81              2066 	dec	sp
   09D2 D0 07              2067 	pop	ar7
   09D4                    2068 00106$:
                    0787   2069 	C$fb_app_taster.c$388$2$2 ==.
                           2070 ;	..\fb_app_taster.c:388: if ((objno<4) && ((eeprom[COMMAND+(objno*4)]) & 0x07) <4) switch_led(objno,telegramm[7]&0x01);	// LED nur schalten, wenn nicht auf Betï¿½tigungsanzeige parametriert
   09D4 BF 04 00           2071 	cjne	r7,#0x04,00127$
   09D7                    2072 00127$:
   09D7 50 25              2073 	jnc	00112$
   09D9 EF                 2074 	mov	a,r7
   09DA 2F                 2075 	add	a,r7
   09DB 25 E0              2076 	add	a,acc
   09DD 24 D3              2077 	add	a,#0xD3
   09DF 90 1D 00           2078 	mov	dptr,#_eeprom
   09E2 93                 2079 	movc	a,@a+dptr
   09E3 FE                 2080 	mov	r6,a
   09E4 53 06 07           2081 	anl	ar6,#0x07
   09E7 BE 04 00           2082 	cjne	r6,#0x04,00129$
   09EA                    2083 00129$:
   09EA 50 12              2084 	jnc	00112$
   09EC E5 52              2085 	mov	a,(_telegramm + 0x0007)
   09EE 54 01              2086 	anl	a,#0x01
   09F0 24 FF              2087 	add	a,#0xff
   09F2 92 18              2088 	mov  b0,c
   09F4 92 F0              2089 	mov	b[0],c
   09F6 85 F0 23           2090 	mov	bits,b
   09F9 8F 82              2091 	mov	dpl,r7
   09FB 12 0A 0A           2092 	lcall	_switch_led
   09FE                    2093 00112$:
                    07B1   2094 	C$fb_app_taster.c$390$1$1 ==.
                    07B1   2095 	XG$write_value_req$0$0 ==.
   09FE 22                 2096 	ret
                           2097 ;------------------------------------------------------------
                           2098 ;Allocation info for local variables in function 'read_value_req'
                           2099 ;------------------------------------------------------------
                           2100 ;objno                     Allocated to registers r7 
                           2101 ;------------------------------------------------------------
                    07B2   2102 	G$read_value_req$0$0 ==.
                    07B2   2103 	C$fb_app_taster.c$400$1$1 ==.
                           2104 ;	..\fb_app_taster.c:400: void read_value_req(unsigned char objno)
                           2105 ;	-----------------------------------------
                           2106 ;	 function read_value_req
                           2107 ;	-----------------------------------------
   09FF                    2108 _read_value_req:
   09FF AF 82              2109 	mov	r7,dpl
                    07B4   2110 	C$fb_app_taster.c$402$1$1 ==.
                           2111 ;	..\fb_app_taster.c:402: send_obj_value(objno+0x40);
   0A01 74 40              2112 	mov	a,#0x40
   0A03 2F                 2113 	add	a,r7
   0A04 F5 82              2114 	mov	dpl,a
   0A06 12 16 D3           2115 	lcall	_send_obj_value
                    07BC   2116 	C$fb_app_taster.c$403$1$1 ==.
                    07BC   2117 	XG$read_value_req$0$0 ==.
   0A09 22                 2118 	ret
                           2119 ;------------------------------------------------------------
                           2120 ;Allocation info for local variables in function 'switch_led'
                           2121 ;------------------------------------------------------------
                           2122 ;onoff                     Allocated to registers b0 
                           2123 ;ledno                     Allocated to registers r7 
                           2124 ;command                   Allocated to registers r6 
                           2125 ;ledvar                    Allocated to registers r6 
                           2126 ;------------------------------------------------------------
                    07BD   2127 	G$switch_led$0$0 ==.
                    07BD   2128 	C$fb_app_taster.c$415$1$1 ==.
                           2129 ;	..\fb_app_taster.c:415: void switch_led(unsigned char ledno, __bit onoff)
                           2130 ;	-----------------------------------------
                           2131 ;	 function switch_led
                           2132 ;	-----------------------------------------
   0A0A                    2133 _switch_led:
   0A0A AF 82              2134 	mov	r7,dpl
                    07BF   2135 	C$fb_app_taster.c$419$1$1 ==.
                           2136 ;	..\fb_app_taster.c:419: if (ledno<4) {
   0A0C BF 04 00           2137 	cjne	r7,#0x04,00122$
   0A0F                    2138 00122$:
   0A0F 40 03              2139 	jc	00123$
   0A11 02 0A A8           2140 	ljmp	00112$
   0A14                    2141 00123$:
                    07C7   2142 	C$fb_app_taster.c$420$2$2 ==.
                           2143 ;	..\fb_app_taster.c:420: command = ((eeprom[COMMAND+(ledno*4)]) & 0x07);	// Befehl der Status LED
   0A14 EF                 2144 	mov	a,r7
   0A15 2F                 2145 	add	a,r7
   0A16 25 E0              2146 	add	a,acc
   0A18 24 D3              2147 	add	a,#0xD3
   0A1A 90 1D 00           2148 	mov	dptr,#_eeprom
   0A1D 93                 2149 	movc	a,@a+dptr
   0A1E FE                 2150 	mov	r6,a
   0A1F 53 06 07           2151 	anl	ar6,#0x07
                    07D5   2152 	C$fb_app_taster.c$421$2$2 ==.
                           2153 ;	..\fb_app_taster.c:421: switch (command) {
   0A22 BE 00 02           2154 	cjne	r6,#0x00,00124$
   0A25 80 0F              2155 	sjmp	00101$
   0A27                    2156 00124$:
   0A27 BE 01 02           2157 	cjne	r6,#0x01,00125$
   0A2A 80 0E              2158 	sjmp	00102$
   0A2C                    2159 00125$:
   0A2C BE 03 02           2160 	cjne	r6,#0x03,00126$
   0A2F 80 0D              2161 	sjmp	00103$
   0A31                    2162 00126$:
                    07E4   2163 	C$fb_app_taster.c$422$3$3 ==.
                           2164 ;	..\fb_app_taster.c:422: case 0:		// immer AUS
   0A31 BE 04 47           2165 	cjne	r6,#0x04,00109$
   0A34 80 0C              2166 	sjmp	00104$
   0A36                    2167 00101$:
                    07E9   2168 	C$fb_app_taster.c$423$3$3 ==.
                           2169 ;	..\fb_app_taster.c:423: onoff=0;
   0A36 C2 18              2170 	clr	b0
                    07EB   2171 	C$fb_app_taster.c$424$3$3 ==.
                           2172 ;	..\fb_app_taster.c:424: break;
                    07EB   2173 	C$fb_app_taster.c$425$3$3 ==.
                           2174 ;	..\fb_app_taster.c:425: case 1:		// immer an
   0A38 80 41              2175 	sjmp	00109$
   0A3A                    2176 00102$:
                    07ED   2177 	C$fb_app_taster.c$426$3$3 ==.
                           2178 ;	..\fb_app_taster.c:426: onoff=1;
   0A3A D2 18              2179 	setb	b0
                    07EF   2180 	C$fb_app_taster.c$427$3$3 ==.
                           2181 ;	..\fb_app_taster.c:427: break;
                    07EF   2182 	C$fb_app_taster.c$429$3$3 ==.
                           2183 ;	..\fb_app_taster.c:429: case 3:		// LED = invertierte Statusanzeige
   0A3C 80 3D              2184 	sjmp	00109$
   0A3E                    2185 00103$:
                    07F1   2186 	C$fb_app_taster.c$430$3$3 ==.
                           2187 ;	..\fb_app_taster.c:430: onoff=!onoff;
   0A3E B2 18              2188 	cpl	b0
                    07F3   2189 	C$fb_app_taster.c$431$3$3 ==.
                           2190 ;	..\fb_app_taster.c:431: break;
                    07F3   2191 	C$fb_app_taster.c$432$3$3 ==.
                           2192 ;	..\fb_app_taster.c:432: case 4:		// LED = Betaetigungsanzeige
   0A40 80 39              2193 	sjmp	00109$
   0A42                    2194 00104$:
                    07F5   2195 	C$fb_app_taster.c$433$3$3 ==.
                           2196 ;	..\fb_app_taster.c:433: onoff=1;	// erstmal an beim druecken der Taste
   0A42 D2 18              2197 	setb	b0
                    07F7   2198 	C$fb_app_taster.c$434$3$3 ==.
                           2199 ;	..\fb_app_taster.c:434: timerstate[ledno]= 0x10;
   0A44 EF                 2200 	mov	a,r7
   0A45 24 3C              2201 	add	a,#_timerstate
   0A47 F8                 2202 	mov	r0,a
   0A48 76 10              2203 	mov	@r0,#0x10
                    07FD   2204 	C$fb_app_taster.c$435$3$3 ==.
                           2205 ;	..\fb_app_taster.c:435: timerbase[ledno]=1;
   0A4A EF                 2206 	mov	a,r7
   0A4B 24 34              2207 	add	a,#_timerbase
   0A4D F8                 2208 	mov	r0,a
   0A4E 76 01              2209 	mov	@r0,#0x01
                    0803   2210 	C$fb_app_taster.c$436$3$3 ==.
                           2211 ;	..\fb_app_taster.c:436: switch (eeprom[LED_DURATION]) {		// dann ueber delay-timer aus
   0A50 90 1D CE           2212 	mov	dptr,#(_eeprom + 0x00ce)
   0A53 E4                 2213 	clr	a
   0A54 93                 2214 	movc	a,@a+dptr
   0A55 FE                 2215 	mov	r6,a
   0A56 BE 26 02           2216 	cjne	r6,#0x26,00128$
   0A59 80 0A              2217 	sjmp	00105$
   0A5B                    2218 00128$:
   0A5B BE 76 02           2219 	cjne	r6,#0x76,00129$
   0A5E 80 0D              2220 	sjmp	00106$
   0A60                    2221 00129$:
                    0813   2222 	C$fb_app_taster.c$437$4$4 ==.
                           2223 ;	..\fb_app_taster.c:437: case 38:	// 0,75 sec
   0A60 BE 96 18           2224 	cjne	r6,#0x96,00109$
   0A63 80 10              2225 	sjmp	00107$
   0A65                    2226 00105$:
                    0818   2227 	C$fb_app_taster.c$438$4$4 ==.
                           2228 ;	..\fb_app_taster.c:438: timercnt[ledno]=47;
   0A65 EF                 2229 	mov	a,r7
   0A66 24 2C              2230 	add	a,#_timercnt
   0A68 F8                 2231 	mov	r0,a
   0A69 76 2F              2232 	mov	@r0,#0x2F
                    081E   2233 	C$fb_app_taster.c$439$4$4 ==.
                           2234 ;	..\fb_app_taster.c:439: break;
                    081E   2235 	C$fb_app_taster.c$440$4$4 ==.
                           2236 ;	..\fb_app_taster.c:440: case 118:	// 2,25 sec
   0A6B 80 0E              2237 	sjmp	00109$
   0A6D                    2238 00106$:
                    0820   2239 	C$fb_app_taster.c$441$4$4 ==.
                           2240 ;	..\fb_app_taster.c:441: timercnt[ledno]=141;
   0A6D EF                 2241 	mov	a,r7
   0A6E 24 2C              2242 	add	a,#_timercnt
   0A70 F8                 2243 	mov	r0,a
   0A71 76 8D              2244 	mov	@r0,#0x8D
                    0826   2245 	C$fb_app_taster.c$442$4$4 ==.
                           2246 ;	..\fb_app_taster.c:442: break;
                    0826   2247 	C$fb_app_taster.c$443$4$4 ==.
                           2248 ;	..\fb_app_taster.c:443: case 150:	// 3 sec
   0A73 80 06              2249 	sjmp	00109$
   0A75                    2250 00107$:
                    0828   2251 	C$fb_app_taster.c$444$4$4 ==.
                           2252 ;	..\fb_app_taster.c:444: timercnt[ledno]=188;
   0A75 EF                 2253 	mov	a,r7
   0A76 24 2C              2254 	add	a,#_timercnt
   0A78 F8                 2255 	mov	r0,a
   0A79 76 BC              2256 	mov	@r0,#0xBC
                    082E   2257 	C$fb_app_taster.c$447$2$2 ==.
                           2258 ;	..\fb_app_taster.c:447: }
   0A7B                    2259 00109$:
                    082E   2260 	C$fb_app_taster.c$448$2$2 ==.
                           2261 ;	..\fb_app_taster.c:448: ledvar=LEDSTATE;
   0A7B AE 29              2262 	mov	r6,_LEDSTATE
                    0830   2263 	C$fb_app_taster.c$449$2$2 ==.
                           2264 ;	..\fb_app_taster.c:449: ledvar&= ~(1<<(ledno+4));	// LEDs sind an Pin 4-7
   0A7D EF                 2265 	mov	a,r7
   0A7E 24 04              2266 	add	a,#0x04
   0A80 FF                 2267 	mov	r7,a
   0A81 8F F0              2268 	mov	b,r7
   0A83 05 F0              2269 	inc	b
   0A85 74 01              2270 	mov	a,#0x01
   0A87 80 02              2271 	sjmp	00133$
   0A89                    2272 00131$:
   0A89 25 E0              2273 	add	a,acc
   0A8B                    2274 00133$:
   0A8B D5 F0 FB           2275 	djnz	b,00131$
   0A8E F4                 2276 	cpl	a
   0A8F 52 06              2277 	anl	ar6,a
                    0844   2278 	C$fb_app_taster.c$450$2$2 ==.
                           2279 ;	..\fb_app_taster.c:450: ledvar |= ((onoff<<(ledno+4)) | 0x0F);	// unteren 4 bits immer auf 1 lassen !!!
   0A91 A2 18              2280 	mov	c,b0
   0A93 E4                 2281 	clr	a
   0A94 33                 2282 	rlc	a
   0A95 FD                 2283 	mov	r5,a
   0A96 8F F0              2284 	mov	b,r7
   0A98 05 F0              2285 	inc	b
   0A9A ED                 2286 	mov	a,r5
   0A9B 80 02              2287 	sjmp	00136$
   0A9D                    2288 00134$:
   0A9D 25 E0              2289 	add	a,acc
   0A9F                    2290 00136$:
   0A9F D5 F0 FB           2291 	djnz	b,00134$
   0AA2 44 0F              2292 	orl	a,#0x0F
   0AA4 FF                 2293 	mov	r7,a
   0AA5 4E                 2294 	orl	a,r6
   0AA6 F5 29              2295 	mov	_LEDSTATE,a
                    085B   2296 	C$fb_app_taster.c$451$2$1 ==.
                           2297 ;	..\fb_app_taster.c:451: LEDSTATE=ledvar;
   0AA8                    2298 00112$:
                    085B   2299 	C$fb_app_taster.c$453$2$1 ==.
                    085B   2300 	XG$switch_led$0$0 ==.
   0AA8 22                 2301 	ret
                           2302 ;------------------------------------------------------------
                           2303 ;Allocation info for local variables in function 'timer0_int'
                           2304 ;------------------------------------------------------------
                    085C   2305 	G$timer0_int$0$0 ==.
                    085C   2306 	C$fb_app_taster.c$456$2$1 ==.
                           2307 ;	..\fb_app_taster.c:456: void timer0_int  (void) __interrupt (1) // Interrupt T0 für soft PWM LED
                           2308 ;	-----------------------------------------
                           2309 ;	 function timer0_int
                           2310 ;	-----------------------------------------
   0AA9                    2311 _timer0_int:
   0AA9 C0 E0              2312 	push	acc
   0AAB C0 D0              2313 	push	psw
                    0860   2314 	C$fb_app_taster.c$458$1$1 ==.
                           2315 ;	..\fb_app_taster.c:458: dimmcompare++;
   0AAD 05 2A              2316 	inc	_dimmcompare
                    0862   2317 	C$fb_app_taster.c$459$1$1 ==.
                           2318 ;	..\fb_app_taster.c:459: TF0=0;
   0AAF C2 8D              2319 	clr	_TCON_5
                    0864   2320 	C$fb_app_taster.c$460$1$1 ==.
                           2321 ;	..\fb_app_taster.c:460: if((dimmcompare) <= dimmwert) PORT = LEDSTATE | 0x0F;// LEDs ein
   0AB1 C3                 2322 	clr	c
   0AB2 E5 2B              2323 	mov	a,_dimmwert
   0AB4 95 2A              2324 	subb	a,_dimmcompare
   0AB6 40 08              2325 	jc	00102$
   0AB8 74 0F              2326 	mov	a,#0x0F
   0ABA 45 29              2327 	orl	a,_LEDSTATE
   0ABC F5 80              2328 	mov	_P0,a
   0ABE 80 03              2329 	sjmp	00104$
   0AC0                    2330 00102$:
                    0873   2331 	C$fb_app_taster.c$461$1$1 ==.
                           2332 ;	..\fb_app_taster.c:461: else PORT = 0x0F;//LEDs aus
   0AC0 75 80 0F           2333 	mov	_P0,#0x0F
   0AC3                    2334 00104$:
   0AC3 D0 D0              2335 	pop	psw
   0AC5 D0 E0              2336 	pop	acc
                    087A   2337 	C$fb_app_taster.c$463$1$1 ==.
                    087A   2338 	XG$timer0_int$0$0 ==.
   0AC7 32                 2339 	reti
                           2340 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           2341 ;	eliminated unneeded push/pop dpl
                           2342 ;	eliminated unneeded push/pop dph
                           2343 ;	eliminated unneeded push/pop b
                           2344 ;------------------------------------------------------------
                           2345 ;Allocation info for local variables in function 'delay_timer'
                           2346 ;------------------------------------------------------------
                           2347 ;objno                     Allocated to stack - _bp +1
                           2348 ;delay_value               Allocated to registers r5 
                           2349 ;ledvar                    Allocated to registers r6 
                           2350 ;tmp                       Allocated to registers r4 
                           2351 ;m                         Allocated to registers r7 
                           2352 ;n                         Allocated to registers r6 
                           2353 ;i_tmp                     Allocated to registers r5 r4 
                           2354 ;sloc0                     Allocated to stack - _bp +9
                           2355 ;sloc1                     Allocated to stack - _bp +2
                           2356 ;------------------------------------------------------------
                    087B   2357 	G$delay_timer$0$0 ==.
                    087B   2358 	C$fb_app_taster.c$474$1$1 ==.
                           2359 ;	..\fb_app_taster.c:474: void delay_timer(void)
                           2360 ;	-----------------------------------------
                           2361 ;	 function delay_timer
                           2362 ;	-----------------------------------------
   0AC8                    2363 _delay_timer:
   0AC8 C0 14              2364 	push	_bp
   0ACA 85 81 14           2365 	mov	_bp,sp
   0ACD 05 81              2366 	inc	sp
   0ACF 05 81              2367 	inc	sp
                    0884   2368 	C$fb_app_taster.c$480$1$1 ==.
                           2369 ;	..\fb_app_taster.c:480: RTCCON=0x60;
   0AD1 75 D1 60           2370 	mov	_RTCCON,#0x60
                    0887   2371 	C$fb_app_taster.c$481$1$1 ==.
                           2372 ;	..\fb_app_taster.c:481: RTCH=0x00;//RTCH=0x01; 
   0AD4 75 D2 00           2373 	mov	_RTCH,#0x00
                    088A   2374 	C$fb_app_taster.c$482$1$1 ==.
                           2375 ;	..\fb_app_taster.c:482: RTCL=0xE6;//RTCL=0xCD;	
   0AD7 75 D3 E6           2376 	mov	_RTCL,#0xE6
                    088D   2377 	C$fb_app_taster.c$483$1$1 ==.
                           2378 ;	..\fb_app_taster.c:483: RTCCON=0x61; //	start_rtc(8) RTC neu starten mit 4ms
   0ADA 75 D1 61           2379 	mov	_RTCCON,#0x61
                    0890   2380 	C$fb_app_taster.c$485$1$1 ==.
                           2381 ;	..\fb_app_taster.c:485: timer++;
   0ADD 05 24              2382 	inc	_timer
   0ADF E4                 2383 	clr	a
   0AE0 B5 24 02           2384 	cjne	a,_timer,00190$
   0AE3 05 25              2385 	inc	(_timer + 1)
   0AE5                    2386 00190$:
                    0898   2387 	C$fb_app_taster.c$486$1$1 ==.
                           2388 ;	..\fb_app_taster.c:486: timerflags = timer&(~(timer-1));// flanke generieren
   0AE5 E5 24              2389 	mov	a,_timer
   0AE7 24 FF              2390 	add	a,#0xFF
   0AE9 FE                 2391 	mov	r6,a
   0AEA E5 25              2392 	mov	a,(_timer + 1)
   0AEC 34 FF              2393 	addc	a,#0xFF
   0AEE FF                 2394 	mov	r7,a
   0AEF EE                 2395 	mov	a,r6
   0AF0 F4                 2396 	cpl	a
   0AF1 FE                 2397 	mov	r6,a
   0AF2 EF                 2398 	mov	a,r7
   0AF3 F4                 2399 	cpl	a
   0AF4 FF                 2400 	mov	r7,a
   0AF5 EE                 2401 	mov	a,r6
   0AF6 55 24              2402 	anl	a,_timer
   0AF8 F5 26              2403 	mov	_timerflags,a
   0AFA EF                 2404 	mov	a,r7
   0AFB 55 25              2405 	anl	a,(_timer + 1)
   0AFD F5 27              2406 	mov	(_timerflags + 1),a
                    08B2   2407 	C$fb_app_taster.c$487$5$5 ==.
                           2408 ;	..\fb_app_taster.c:487: for(n=0;n<16;n++){
   0AFF 7F 00              2409 	mov	r7,#0x00
   0B01                    2410 00148$:
   0B01 BF 10 00           2411 	cjne	r7,#0x10,00191$
   0B04                    2412 00191$:
   0B04 50 35              2413 	jnc	00151$
                    08B9   2414 	C$fb_app_taster.c$488$2$2 ==.
                           2415 ;	..\fb_app_taster.c:488: if(timerflags & 0x0001){// positive flags erzeugen und schieben
   0B06 E5 26              2416 	mov	a,_timerflags
   0B08 30 E0 22           2417 	jnb	acc.0,00106$
                    08BE   2418 	C$fb_app_taster.c$489$1$1 ==.
                           2419 ;	..\fb_app_taster.c:489: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
   0B0B 7E 00              2420 	mov	r6,#0x00
   0B0D                    2421 00144$:
   0B0D BE 08 00           2422 	cjne	r6,#0x08,00194$
   0B10                    2423 00194$:
   0B10 50 1B              2424 	jnc	00106$
                    08C5   2425 	C$fb_app_taster.c$490$4$4 ==.
                           2426 ;	..\fb_app_taster.c:490: if( timercnt[m]){
   0B12 EE                 2427 	mov	a,r6
   0B13 24 2C              2428 	add	a,#_timercnt
   0B15 F9                 2429 	mov	r1,a
   0B16 E7                 2430 	mov	a,@r1
   0B17 FD                 2431 	mov	r5,a
   0B18 60 10              2432 	jz	00146$
                    08CD   2433 	C$fb_app_taster.c$491$5$5 ==.
                           2434 ;	..\fb_app_taster.c:491: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
   0B1A EE                 2435 	mov	a,r6
   0B1B 24 34              2436 	add	a,#_timerbase
   0B1D F8                 2437 	mov	r0,a
   0B1E 86 04              2438 	mov	ar4,@r0
   0B20 53 04 0F           2439 	anl	ar4,#0x0F
   0B23 EC                 2440 	mov	a,r4
   0B24 B5 07 03           2441 	cjne	a,ar7,00146$
                    08DA   2442 	C$fb_app_taster.c$492$6$6 ==.
                           2443 ;	..\fb_app_taster.c:492: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
   0B27 ED                 2444 	mov	a,r5
   0B28 14                 2445 	dec	a
   0B29 F7                 2446 	mov	@r1,a
   0B2A                    2447 00146$:
                    08DD   2448 	C$fb_app_taster.c$489$3$3 ==.
                           2449 ;	..\fb_app_taster.c:489: for(m=0;m<8;m++){// die timer der reihe nach checken und dec wenn laufen
   0B2A 0E                 2450 	inc	r6
   0B2B 80 E0              2451 	sjmp	00144$
   0B2D                    2452 00106$:
                    08E0   2453 	C$fb_app_taster.c$497$2$2 ==.
                           2454 ;	..\fb_app_taster.c:497: timerflags = timerflags>>1;
   0B2D E5 27              2455 	mov	a,(_timerflags + 1)
   0B2F C3                 2456 	clr	c
   0B30 13                 2457 	rrc	a
   0B31 C5 26              2458 	xch	a,_timerflags
   0B33 13                 2459 	rrc	a
   0B34 C5 26              2460 	xch	a,_timerflags
   0B36 F5 27              2461 	mov	(_timerflags + 1),a
                    08EB   2462 	C$fb_app_taster.c$487$1$1 ==.
                           2463 ;	..\fb_app_taster.c:487: for(n=0;n<16;n++){
   0B38 0F                 2464 	inc	r7
   0B39 80 C6              2465 	sjmp	00148$
   0B3B                    2466 00151$:
                    08EE   2467 	C$fb_app_taster.c$500$4$9 ==.
                           2468 ;	..\fb_app_taster.c:500: for(objno=0;objno<8;objno++) {
   0B3B A8 14              2469 	mov	r0,_bp
   0B3D 08                 2470 	inc	r0
   0B3E 76 00              2471 	mov	@r0,#0x00
   0B40                    2472 00152$:
   0B40 A8 14              2473 	mov	r0,_bp
   0B42 08                 2474 	inc	r0
   0B43 B6 08 00           2475 	cjne	@r0,#0x08,00199$
   0B46                    2476 00199$:
   0B46 40 03              2477 	jc	00200$
   0B48 02 0F 7E           2478 	ljmp	00156$
   0B4B                    2479 00200$:
                    08FE   2480 	C$fb_app_taster.c$501$2$7 ==.
                           2481 ;	..\fb_app_taster.c:501: if(!timercnt[objno]) {	// ... es ist also soweit
   0B4B A8 14              2482 	mov	r0,_bp
   0B4D 08                 2483 	inc	r0
   0B4E E6                 2484 	mov	a,@r0
   0B4F 24 2C              2485 	add	a,#_timercnt
   0B51 F9                 2486 	mov	r1,a
   0B52 E7                 2487 	mov	a,@r1
   0B53 60 03              2488 	jz	00201$
   0B55 02 0F 77           2489 	ljmp	00154$
   0B58                    2490 00201$:
                    090B   2491 	C$fb_app_taster.c$502$3$8 ==.
                           2492 ;	..\fb_app_taster.c:502: delay_value=timerstate[objno]& 0x0F;
   0B58 C0 01              2493 	push	ar1
   0B5A A9 14              2494 	mov	r1,_bp
   0B5C 09                 2495 	inc	r1
   0B5D E7                 2496 	mov	a,@r1
   0B5E 24 3C              2497 	add	a,#_timerstate
   0B60 F8                 2498 	mov	r0,a
   0B61 D0 01              2499 	pop	ar1
   0B63 86 06              2500 	mov	ar6,@r0
   0B65 74 0F              2501 	mov	a,#0x0F
   0B67 5E                 2502 	anl	a,r6
   0B68 FD                 2503 	mov	r5,a
                    091C   2504 	C$fb_app_taster.c$504$3$8 ==.
                           2505 ;	..\fb_app_taster.c:504: switch(timerstate[objno] & 0xF0){
   0B69 53 06 F0           2506 	anl	ar6,#0xF0
   0B6C BE 10 02           2507 	cjne	r6,#0x10,00202$
   0B6F 80 44              2508 	sjmp	00107$
   0B71                    2509 00202$:
   0B71 BE 20 02           2510 	cjne	r6,#0x20,00203$
   0B74 80 62              2511 	sjmp	00108$
   0B76                    2512 00203$:
   0B76 BE 30 03           2513 	cjne	r6,#0x30,00204$
   0B79 02 0C 52           2514 	ljmp	00112$
   0B7C                    2515 00204$:
   0B7C BE 40 03           2516 	cjne	r6,#0x40,00205$
   0B7F 02 0C E4           2517 	ljmp	00116$
   0B82                    2518 00205$:
   0B82 BE 50 03           2519 	cjne	r6,#0x50,00206$
   0B85 02 0C EB           2520 	ljmp	00117$
   0B88                    2521 00206$:
   0B88 BE 60 03           2522 	cjne	r6,#0x60,00207$
   0B8B 02 0F 77           2523 	ljmp	00154$
   0B8E                    2524 00207$:
   0B8E BE 70 03           2525 	cjne	r6,#0x70,00208$
   0B91 02 0D 07           2526 	ljmp	00120$
   0B94                    2527 00208$:
   0B94 BE 80 03           2528 	cjne	r6,#0x80,00209$
   0B97 02 0D 07           2529 	ljmp	00120$
   0B9A                    2530 00209$:
   0B9A BE 90 03           2531 	cjne	r6,#0x90,00210$
   0B9D 02 0D FA           2532 	ljmp	00128$
   0BA0                    2533 00210$:
   0BA0 BE A0 03           2534 	cjne	r6,#0xA0,00211$
   0BA3 02 0D FA           2535 	ljmp	00128$
   0BA6                    2536 00211$:
   0BA6 BE B0 03           2537 	cjne	r6,#0xB0,00212$
   0BA9 02 0E E4           2538 	ljmp	00133$
   0BAC                    2539 00212$:
   0BAC BE C0 03           2540 	cjne	r6,#0xC0,00213$
   0BAF 02 0E E4           2541 	ljmp	00133$
   0BB2                    2542 00213$:
   0BB2 02 0F 77           2543 	ljmp	00154$
                    0968   2544 	C$fb_app_taster.c$506$4$9 ==.
                           2545 ;	..\fb_app_taster.c:506: case 0x10:
   0BB5                    2546 00107$:
                    0968   2547 	C$fb_app_taster.c$508$4$9 ==.
                           2548 ;	..\fb_app_taster.c:508: ledvar=LEDSTATE;
   0BB5 AE 29              2549 	mov	r6,_LEDSTATE
                    096A   2550 	C$fb_app_taster.c$509$4$9 ==.
                           2551 ;	..\fb_app_taster.c:509: ledvar &= ~(1<<(objno+4));	// LEDs sind an Pin 4-7
   0BB7 A9 14              2552 	mov	r1,_bp
   0BB9 09                 2553 	inc	r1
   0BBA 74 04              2554 	mov	a,#0x04
   0BBC 27                 2555 	add	a,@r1
   0BBD F5 F0              2556 	mov	b,a
   0BBF 05 F0              2557 	inc	b
   0BC1 74 01              2558 	mov	a,#0x01
   0BC3 80 02              2559 	sjmp	00216$
   0BC5                    2560 00214$:
   0BC5 25 E0              2561 	add	a,acc
   0BC7                    2562 00216$:
   0BC7 D5 F0 FB           2563 	djnz	b,00214$
   0BCA F4                 2564 	cpl	a
   0BCB FC                 2565 	mov	r4,a
   0BCC 52 06              2566 	anl	ar6,a
                    0981   2567 	C$fb_app_taster.c$510$4$9 ==.
                           2568 ;	..\fb_app_taster.c:510: ledvar |= 0x0F;				// unbedingt taster pins wieder auf 1
   0BCE 74 0F              2569 	mov	a,#0x0F
   0BD0 4E                 2570 	orl	a,r6
   0BD1 F5 29              2571 	mov	_LEDSTATE,a
                    0986   2572 	C$fb_app_taster.c$512$4$9 ==.
                           2573 ;	..\fb_app_taster.c:512: timerstate[objno]=0;
   0BD3 76 00              2574 	mov	@r0,#0x00
                    0988   2575 	C$fb_app_taster.c$513$4$9 ==.
                           2576 ;	..\fb_app_taster.c:513: break;
   0BD5 02 0F 77           2577 	ljmp	00154$
                    098B   2578 	C$fb_app_taster.c$514$4$9 ==.
                           2579 ;	..\fb_app_taster.c:514: case 0x20:	// Dimmen
   0BD8                    2580 00108$:
                    098B   2581 	C$fb_app_taster.c$515$4$9 ==.
                           2582 ;	..\fb_app_taster.c:515: write_obj_value(objno+4,delay_value);
   0BD8 8D 04              2583 	mov	ar4,r5
   0BDA 7E 00              2584 	mov	r6,#0x00
   0BDC A8 14              2585 	mov	r0,_bp
   0BDE 08                 2586 	inc	r0
   0BDF 74 04              2587 	mov	a,#0x04
   0BE1 26                 2588 	add	a,@r0
   0BE2 FB                 2589 	mov	r3,a
   0BE3 C0 03              2590 	push	ar3
   0BE5 C0 04              2591 	push	ar4
   0BE7 C0 06              2592 	push	ar6
   0BE9 8B 82              2593 	mov	dpl,r3
   0BEB 12 09 1C           2594 	lcall	_write_obj_value
   0BEE 15 81              2595 	dec	sp
   0BF0 15 81              2596 	dec	sp
   0BF2 D0 03              2597 	pop	ar3
                    09A7   2598 	C$fb_app_taster.c$516$4$9 ==.
                           2599 ;	..\fb_app_taster.c:516: send_obj_value(objno+4);		// dimmkommando senden
   0BF4 8B 82              2600 	mov	dpl,r3
   0BF6 12 16 D3           2601 	lcall	_send_obj_value
                    09AC   2602 	C$fb_app_taster.c$518$4$9 ==.
                           2603 ;	..\fb_app_taster.c:518: if(!(eeprom[0xD5+((objno-4)*4)]& 0x08)){// wenn Telegrammwiederholung eingeschalten
   0BF9 A8 14              2604 	mov	r0,_bp
   0BFB 08                 2605 	inc	r0
   0BFC E6                 2606 	mov	a,@r0
   0BFD 24 FC              2607 	add	a,#0xFC
   0BFF 25 E0              2608 	add	a,acc
   0C01 25 E0              2609 	add	a,acc
   0C03 24 D5              2610 	add	a,#0xD5
   0C05 90 1D 00           2611 	mov	dptr,#_eeprom
   0C08 93                 2612 	movc	a,@a+dptr
   0C09 FE                 2613 	mov	r6,a
   0C0A 20 E3 30           2614 	jb	acc.3,00110$
                    09C0   2615 	C$fb_app_taster.c$545$5$10 ==.
                           2616 ;	..\fb_app_taster.c:545: */				timercnt[objno]=tele_repeat_value[eeprom[0xD5+((objno-4)*4)]& 0x07];	
   0C0D A8 14              2617 	mov	r0,_bp
   0C0F 08                 2618 	inc	r0
   0C10 E6                 2619 	mov	a,@r0
   0C11 24 2C              2620 	add	a,#_timercnt
   0C13 FE                 2621 	mov	r6,a
   0C14 A8 14              2622 	mov	r0,_bp
   0C16 08                 2623 	inc	r0
   0C17 E6                 2624 	mov	a,@r0
   0C18 24 FC              2625 	add	a,#0xFC
   0C1A 25 E0              2626 	add	a,acc
   0C1C 25 E0              2627 	add	a,acc
   0C1E 24 D5              2628 	add	a,#0xD5
   0C20 90 1D 00           2629 	mov	dptr,#_eeprom
   0C23 93                 2630 	movc	a,@a+dptr
   0C24 FC                 2631 	mov	r4,a
   0C25 74 07              2632 	mov	a,#0x07
   0C27 5C                 2633 	anl	a,r4
   0C28 90 1A 85           2634 	mov	dptr,#_tele_repeat_value
   0C2B 93                 2635 	movc	a,@a+dptr
   0C2C FC                 2636 	mov	r4,a
   0C2D A8 06              2637 	mov	r0,ar6
   0C2F A6 04              2638 	mov	@r0,ar4
                    09E4   2639 	C$fb_app_taster.c$547$5$10 ==.
                           2640 ;	..\fb_app_taster.c:547: timerbase[objno]=0;
   0C31 A8 14              2641 	mov	r0,_bp
   0C33 08                 2642 	inc	r0
   0C34 E6                 2643 	mov	a,@r0
   0C35 24 34              2644 	add	a,#_timerbase
   0C37 F8                 2645 	mov	r0,a
   0C38 76 00              2646 	mov	@r0,#0x00
   0C3A 02 0F 77           2647 	ljmp	00154$
   0C3D                    2648 00110$:
                    09F0   2649 	C$fb_app_taster.c$550$5$11 ==.
                           2650 ;	..\fb_app_taster.c:550: timercnt[objno]=0;
   0C3D A8 14              2651 	mov	r0,_bp
   0C3F 08                 2652 	inc	r0
   0C40 E6                 2653 	mov	a,@r0
   0C41 24 2C              2654 	add	a,#_timercnt
   0C43 F8                 2655 	mov	r0,a
   0C44 76 00              2656 	mov	@r0,#0x00
                    09F9   2657 	C$fb_app_taster.c$551$5$11 ==.
                           2658 ;	..\fb_app_taster.c:551: timerstate[objno]=0;
   0C46 A8 14              2659 	mov	r0,_bp
   0C48 08                 2660 	inc	r0
   0C49 E6                 2661 	mov	a,@r0
   0C4A 24 3C              2662 	add	a,#_timerstate
   0C4C F8                 2663 	mov	r0,a
   0C4D 76 00              2664 	mov	@r0,#0x00
                    0A02   2665 	C$fb_app_taster.c$553$4$9 ==.
                           2666 ;	..\fb_app_taster.c:553: break;
   0C4F 02 0F 77           2667 	ljmp	00154$
                    0A05   2668 	C$fb_app_taster.c$556$4$9 ==.
                           2669 ;	..\fb_app_taster.c:556: case 0x30:	// 0x30, 0x31 für langzeit telegramm senden
   0C52                    2670 00112$:
                    0A05   2671 	C$fb_app_taster.c$557$4$9 ==.
                           2672 ;	..\fb_app_taster.c:557: write_obj_value(objno+4,delay_value & 0x01);
   0C52 53 05 01           2673 	anl	ar5,#0x01
   0C55 7E 00              2674 	mov	r6,#0x00
   0C57 A8 14              2675 	mov	r0,_bp
   0C59 08                 2676 	inc	r0
   0C5A 74 04              2677 	mov	a,#0x04
   0C5C 26                 2678 	add	a,@r0
   0C5D FC                 2679 	mov	r4,a
   0C5E C0 04              2680 	push	ar4
   0C60 C0 05              2681 	push	ar5
   0C62 C0 06              2682 	push	ar6
   0C64 8C 82              2683 	mov	dpl,r4
   0C66 12 09 1C           2684 	lcall	_write_obj_value
   0C69 15 81              2685 	dec	sp
   0C6B 15 81              2686 	dec	sp
   0C6D D0 04              2687 	pop	ar4
                    0A22   2688 	C$fb_app_taster.c$558$4$9 ==.
                           2689 ;	..\fb_app_taster.c:558: send_obj_value(objno+4);				// Langzeit Telegramm senden
   0C6F 8C 82              2690 	mov	dpl,r4
   0C71 12 16 D3           2691 	lcall	_send_obj_value
                    0A27   2692 	C$fb_app_taster.c$561$4$9 ==.
                           2693 ;	..\fb_app_taster.c:561: timercnt[objno]=eeprom[DEL_FACTOR2+((objno-4)*4)];	// Faktor Dauer	T2		
   0C74 A8 14              2694 	mov	r0,_bp
   0C76 08                 2695 	inc	r0
   0C77 E6                 2696 	mov	a,@r0
   0C78 24 2C              2697 	add	a,#_timercnt
   0C7A FE                 2698 	mov	r6,a
   0C7B A8 14              2699 	mov	r0,_bp
   0C7D 08                 2700 	inc	r0
   0C7E E6                 2701 	mov	a,@r0
   0C7F 24 FC              2702 	add	a,#0xFC
   0C81 25 E0              2703 	add	a,acc
   0C83 25 E0              2704 	add	a,acc
   0C85 FD                 2705 	mov	r5,a
   0C86 24 D6              2706 	add	a,#0xD6
   0C88 90 1D 00           2707 	mov	dptr,#_eeprom
   0C8B 93                 2708 	movc	a,@a+dptr
   0C8C FC                 2709 	mov	r4,a
   0C8D A8 06              2710 	mov	r0,ar6
   0C8F A6 04              2711 	mov	@r0,ar4
                    0A44   2712 	C$fb_app_taster.c$562$4$9 ==.
                           2713 ;	..\fb_app_taster.c:562: timerbase[objno]=(eeprom[0xD4+((objno-4)*4)]&0x60)>>3;	// Basis Dauer T2
   0C91 A8 14              2714 	mov	r0,_bp
   0C93 08                 2715 	inc	r0
   0C94 E6                 2716 	mov	a,@r0
   0C95 24 34              2717 	add	a,#_timerbase
   0C97 FC                 2718 	mov	r4,a
   0C98 74 D4              2719 	mov	a,#0xD4
   0C9A 2D                 2720 	add	a,r5
   0C9B 90 1D 00           2721 	mov	dptr,#_eeprom
   0C9E 93                 2722 	movc	a,@a+dptr
   0C9F 54 60              2723 	anl	a,#0x60
   0CA1 C4                 2724 	swap	a
   0CA2 23                 2725 	rl	a
   0CA3 54 1F              2726 	anl	a,#0x1F
   0CA5 FD                 2727 	mov	r5,a
   0CA6 A8 04              2728 	mov	r0,ar4
   0CA8 A6 05              2729 	mov	@r0,ar5
                    0A5D   2730 	C$fb_app_taster.c$563$4$9 ==.
                           2731 ;	..\fb_app_taster.c:563: if (timercnt[objno]) {	// wenn keine lamellenverstellzeit dann nix tun
   0CAA A8 06              2732 	mov	r0,ar6
   0CAC E6                 2733 	mov	a,@r0
   0CAD 60 25              2734 	jz	00114$
                    0A62   2735 	C$fb_app_taster.c$564$5$12 ==.
                           2736 ;	..\fb_app_taster.c:564: timerstate[objno]=((eeprom[COMMAND+((objno-4)*4)]&0x10)>>4)+0x40; // 0x40,0x41 fuer ende T2 (lamellenvestellzeit)
   0CAF A8 14              2737 	mov	r0,_bp
   0CB1 08                 2738 	inc	r0
   0CB2 E6                 2739 	mov	a,@r0
   0CB3 24 3C              2740 	add	a,#_timerstate
   0CB5 FD                 2741 	mov	r5,a
   0CB6 A8 14              2742 	mov	r0,_bp
   0CB8 08                 2743 	inc	r0
   0CB9 E6                 2744 	mov	a,@r0
   0CBA 24 FC              2745 	add	a,#0xFC
   0CBC 25 E0              2746 	add	a,acc
   0CBE 25 E0              2747 	add	a,acc
   0CC0 24 D3              2748 	add	a,#0xD3
   0CC2 90 1D 00           2749 	mov	dptr,#_eeprom
   0CC5 93                 2750 	movc	a,@a+dptr
   0CC6 54 10              2751 	anl	a,#0x10
   0CC8 C4                 2752 	swap	a
   0CC9 54 0F              2753 	anl	a,#0x0F
   0CCB FC                 2754 	mov	r4,a
   0CCC 24 40              2755 	add	a,#0x40
   0CCE A8 05              2756 	mov	r0,ar5
   0CD0 F6                 2757 	mov	@r0,a
   0CD1 02 0F 77           2758 	ljmp	00154$
   0CD4                    2759 00114$:
                    0A87   2760 	C$fb_app_taster.c$567$5$13 ==.
                           2761 ;	..\fb_app_taster.c:567: timercnt[objno]=0;
   0CD4 A8 06              2762 	mov	r0,ar6
   0CD6 76 00              2763 	mov	@r0,#0x00
                    0A8B   2764 	C$fb_app_taster.c$568$5$13 ==.
                           2765 ;	..\fb_app_taster.c:568: timerstate[objno]=0;
   0CD8 A8 14              2766 	mov	r0,_bp
   0CDA 08                 2767 	inc	r0
   0CDB E6                 2768 	mov	a,@r0
   0CDC 24 3C              2769 	add	a,#_timerstate
   0CDE F8                 2770 	mov	r0,a
   0CDF 76 00              2771 	mov	@r0,#0x00
                    0A94   2772 	C$fb_app_taster.c$570$4$9 ==.
                           2773 ;	..\fb_app_taster.c:570: break;			
   0CE1 02 0F 77           2774 	ljmp	00154$
                    0A97   2775 	C$fb_app_taster.c$571$4$9 ==.
                           2776 ;	..\fb_app_taster.c:571: case 0x40:
   0CE4                    2777 00116$:
                    0A97   2778 	C$fb_app_taster.c$573$4$9 ==.
                           2779 ;	..\fb_app_taster.c:573: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
   0CE4 76 00              2780 	mov	@r0,#0x00
                    0A99   2781 	C$fb_app_taster.c$574$4$9 ==.
                           2782 ;	..\fb_app_taster.c:574: timercnt[objno]=0;
   0CE6 77 00              2783 	mov	@r1,#0x00
                    0A9B   2784 	C$fb_app_taster.c$575$4$9 ==.
                           2785 ;	..\fb_app_taster.c:575: break;
   0CE8 02 0F 77           2786 	ljmp	00154$
                    0A9E   2787 	C$fb_app_taster.c$576$4$9 ==.
                           2788 ;	..\fb_app_taster.c:576: case 0x50: // Wertgeber Lichtszene lang drücken zum speichern
   0CEB                    2789 00117$:
                    0A9E   2790 	C$fb_app_taster.c$577$4$9 ==.
                           2791 ;	..\fb_app_taster.c:577: switch_led(objno-4,1);
   0CEB A8 14              2792 	mov	r0,_bp
   0CED 08                 2793 	inc	r0
   0CEE E6                 2794 	mov	a,@r0
   0CEF 24 FC              2795 	add	a,#0xFC
   0CF1 F5 82              2796 	mov	dpl,a
   0CF3 D2 F0              2797 	setb	b[0]
   0CF5 85 F0 23           2798 	mov	bits,b
   0CF8 12 0A 0A           2799 	lcall	_switch_led
                    0AAE   2800 	C$fb_app_taster.c$578$4$9 ==.
                           2801 ;	..\fb_app_taster.c:578: timerstate[objno]=0x60;
   0CFB A8 14              2802 	mov	r0,_bp
   0CFD 08                 2803 	inc	r0
   0CFE E6                 2804 	mov	a,@r0
   0CFF 24 3C              2805 	add	a,#_timerstate
   0D01 F8                 2806 	mov	r0,a
   0D02 76 60              2807 	mov	@r0,#0x60
                    0AB7   2808 	C$fb_app_taster.c$579$4$9 ==.
                           2809 ;	..\fb_app_taster.c:579: break;
   0D04 02 0F 77           2810 	ljmp	00154$
                    0ABA   2811 	C$fb_app_taster.c$584$4$9 ==.
                           2812 ;	..\fb_app_taster.c:584: case 0x80: // Wertgeber Helligkeit verstellen
   0D07                    2813 00120$:
                    0ABA   2814 	C$fb_app_taster.c$585$4$9 ==.
                           2815 ;	..\fb_app_taster.c:585: timerbase[objno]=0;
   0D07 A8 14              2816 	mov	r0,_bp
   0D09 08                 2817 	inc	r0
   0D0A E6                 2818 	mov	a,@r0
   0D0B 24 34              2819 	add	a,#_timerbase
   0D0D F8                 2820 	mov	r0,a
   0D0E 76 00              2821 	mov	@r0,#0x00
                    0AC3   2822 	C$fb_app_taster.c$586$4$9 ==.
                           2823 ;	..\fb_app_taster.c:586: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
   0D10 A8 14              2824 	mov	r0,_bp
   0D12 08                 2825 	inc	r0
   0D13 E6                 2826 	mov	a,@r0
   0D14 24 2C              2827 	add	a,#_timercnt
   0D16 F9                 2828 	mov	r1,a
   0D17 A8 14              2829 	mov	r0,_bp
   0D19 08                 2830 	inc	r0
   0D1A E6                 2831 	mov	a,@r0
   0D1B 24 FC              2832 	add	a,#0xFC
   0D1D 25 E0              2833 	add	a,acc
   0D1F 25 E0              2834 	add	a,acc
   0D21 FE                 2835 	mov	r6,a
   0D22 24 D4              2836 	add	a,#0xD4
   0D24 90 1D 00           2837 	mov	dptr,#_eeprom
   0D27 93                 2838 	movc	a,@a+dptr
   0D28 54 30              2839 	anl	a,#0x30
   0D2A C4                 2840 	swap	a
   0D2B 54 0F              2841 	anl	a,#0x0F
   0D2D 90 1A 85           2842 	mov	dptr,#_tele_repeat_value
   0D30 93                 2843 	movc	a,@a+dptr
   0D31 F7                 2844 	mov	@r1,a
                    0AE5   2845 	C$fb_app_taster.c$587$4$9 ==.
                           2846 ;	..\fb_app_taster.c:587: i_tmp=(eeprom[0xD5+4*(objno-4)])<<8;
   0D32 74 D5              2847 	mov	a,#0xD5
   0D34 2E                 2848 	add	a,r6
   0D35 90 1D 00           2849 	mov	dptr,#_eeprom
   0D38 93                 2850 	movc	a,@a+dptr
   0D39 FC                 2851 	mov	r4,a
   0D3A 7D 00              2852 	mov	r5,#0x00
                    0AEF   2853 	C$fb_app_taster.c$588$4$9 ==.
                           2854 ;	..\fb_app_taster.c:588: i_tmp +=eeprom[0xD6+4*(objno-4)];
   0D3C 74 D6              2855 	mov	a,#0xD6
   0D3E 2E                 2856 	add	a,r6
   0D3F 90 1D 00           2857 	mov	dptr,#_eeprom
   0D42 93                 2858 	movc	a,@a+dptr
   0D43 FE                 2859 	mov	r6,a
   0D44 7B 00              2860 	mov	r3,#0x00
   0D46 2D                 2861 	add	a,r5
   0D47 FD                 2862 	mov	r5,a
   0D48 EB                 2863 	mov	a,r3
   0D49 3C                 2864 	addc	a,r4
   0D4A FC                 2865 	mov	r4,a
                    0AFE   2866 	C$fb_app_taster.c$589$4$9 ==.
                           2867 ;	..\fb_app_taster.c:589: if (i_tmp==0x39FD || i_tmp==0x3828)	//Differenz ausgleichen
   0D4B BD FD 05           2868 	cjne	r5,#0xFD,00219$
   0D4E BC 39 02           2869 	cjne	r4,#0x39,00219$
   0D51 80 06              2870 	sjmp	00121$
   0D53                    2871 00219$:
   0D53 BD 28 08           2872 	cjne	r5,#0x28,00122$
   0D56 BC 38 05           2873 	cjne	r4,#0x38,00122$
   0D59                    2874 00121$:
                    0B0C   2875 	C$fb_app_taster.c$591$5$14 ==.
                           2876 ;	..\fb_app_taster.c:591: i_tmp--;
   0D59 1D                 2877 	dec	r5
   0D5A BD FF 01           2878 	cjne	r5,#0xFF,00222$
   0D5D 1C                 2879 	dec	r4
   0D5E                    2880 00222$:
   0D5E                    2881 00122$:
                    0B11   2882 	C$fb_app_taster.c$593$4$9 ==.
                           2883 ;	..\fb_app_taster.c:593: i_tmp -= 0x27;
   0D5E ED                 2884 	mov	a,r5
   0D5F 24 D9              2885 	add	a,#0xD9
   0D61 FD                 2886 	mov	r5,a
   0D62 EC                 2887 	mov	a,r4
   0D63 34 FF              2888 	addc	a,#0xFF
                    0B18   2889 	C$fb_app_taster.c$595$4$9 ==.
                           2890 ;	..\fb_app_taster.c:595: if(!(i_tmp&0x0800)){
   0D65 FC                 2891 	mov	r4,a
   0D66 20 E3 06           2892 	jb	acc.3,00125$
                    0B1C   2893 	C$fb_app_taster.c$596$5$15 ==.
                           2894 ;	..\fb_app_taster.c:596: i_tmp=0x03C94;
   0D69 7D 94              2895 	mov	r5,#0x94
   0D6B 7C 3C              2896 	mov	r4,#0x3C
   0D6D 80 18              2897 	sjmp	00126$
   0D6F                    2898 00125$:
                    0B22   2899 	C$fb_app_taster.c$599$5$16 ==.
                           2900 ;	..\fb_app_taster.c:599: switch_led(objno-4,1);
   0D6F A8 14              2901 	mov	r0,_bp
   0D71 08                 2902 	inc	r0
   0D72 E6                 2903 	mov	a,@r0
   0D73 24 FC              2904 	add	a,#0xFC
   0D75 F5 82              2905 	mov	dpl,a
   0D77 D2 F0              2906 	setb	b[0]
   0D79 C0 05              2907 	push	ar5
   0D7B C0 04              2908 	push	ar4
   0D7D 85 F0 23           2909 	mov	bits,b
   0D80 12 0A 0A           2910 	lcall	_switch_led
   0D83 D0 04              2911 	pop	ar4
   0D85 D0 05              2912 	pop	ar5
   0D87                    2913 00126$:
                    0B3A   2914 	C$fb_app_taster.c$601$4$9 ==.
                           2915 ;	..\fb_app_taster.c:601: write_obj_value(objno+4,i_tmp);// wir rechnen immer mit exp 2^7
   0D87 A8 14              2916 	mov	r0,_bp
   0D89 08                 2917 	inc	r0
   0D8A A9 14              2918 	mov	r1,_bp
   0D8C 09                 2919 	inc	r1
   0D8D 09                 2920 	inc	r1
   0D8E 74 04              2921 	mov	a,#0x04
   0D90 26                 2922 	add	a,@r0
   0D91 F7                 2923 	mov	@r1,a
   0D92 C0 05              2924 	push	ar5
   0D94 C0 04              2925 	push	ar4
   0D96 A8 14              2926 	mov	r0,_bp
   0D98 08                 2927 	inc	r0
   0D99 08                 2928 	inc	r0
   0D9A 86 82              2929 	mov	dpl,@r0
   0D9C 12 09 1C           2930 	lcall	_write_obj_value
   0D9F 15 81              2931 	dec	sp
   0DA1 15 81              2932 	dec	sp
                    0B56   2933 	C$fb_app_taster.c$602$4$9 ==.
                           2934 ;	..\fb_app_taster.c:602: timerstate[objno]=0x80;
   0DA3 A8 14              2935 	mov	r0,_bp
   0DA5 08                 2936 	inc	r0
   0DA6 E6                 2937 	mov	a,@r0
   0DA7 24 3C              2938 	add	a,#_timerstate
   0DA9 F8                 2939 	mov	r0,a
   0DAA 76 80              2940 	mov	@r0,#0x80
                    0B5F   2941 	C$fb_app_taster.c$603$4$9 ==.
                           2942 ;	..\fb_app_taster.c:603: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   0DAC C2 AF              2943 	clr	_IEN0_7
                    0B61   2944 	C$fb_app_taster.c$604$4$9 ==.
                           2945 ;	..\fb_app_taster.c:604: START_WRITECYCLE
   0DAE 75 E4 00           2946 	mov	_FMCON,#0x00
                    0B64   2947 	C$fb_app_taster.c$605$4$9 ==.
                           2948 ;	..\fb_app_taster.c:605: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
   0DB1 75 E7 1D           2949 	mov	_FMADRH,#0x1D
   0DB4 A8 14              2950 	mov	r0,_bp
   0DB6 08                 2951 	inc	r0
   0DB7 E6                 2952 	mov	a,@r0
   0DB8 24 FC              2953 	add	a,#0xFC
   0DBA 25 E0              2954 	add	a,acc
   0DBC 25 E0              2955 	add	a,acc
   0DBE FD                 2956 	mov	r5,a
   0DBF 24 D5              2957 	add	a,#0xD5
   0DC1 F5 E6              2958 	mov	_FMADRL,a
   0DC3 A8 14              2959 	mov	r0,_bp
   0DC5 08                 2960 	inc	r0
   0DC6 08                 2961 	inc	r0
   0DC7 86 82              2962 	mov	dpl,@r0
   0DC9 C0 05              2963 	push	ar5
   0DCB 12 08 DA           2964 	lcall	_read_obj_value
   0DCE AB 83              2965 	mov	r3,dph
   0DD0 D0 05              2966 	pop	ar5
   0DD2 8B E5              2967 	mov	_FMDATA,r3
                    0B87   2968 	C$fb_app_taster.c$606$4$9 ==.
                           2969 ;	..\fb_app_taster.c:606: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
   0DD4 75 E7 1D           2970 	mov	_FMADRH,#0x1D
   0DD7 74 D6              2971 	mov	a,#0xD6
   0DD9 2D                 2972 	add	a,r5
   0DDA F5 E6              2973 	mov	_FMADRL,a
   0DDC A8 14              2974 	mov	r0,_bp
   0DDE 08                 2975 	inc	r0
   0DDF 08                 2976 	inc	r0
   0DE0 86 82              2977 	mov	dpl,@r0
   0DE2 12 08 DA           2978 	lcall	_read_obj_value
   0DE5 AA 82              2979 	mov	r2,dpl
   0DE7 8A E5              2980 	mov	_FMDATA,r2
                    0B9C   2981 	C$fb_app_taster.c$607$4$9 ==.
                           2982 ;	..\fb_app_taster.c:607: STOP_WRITECYCLE // Luxwert speichern
   0DE9 75 E4 68           2983 	mov	_FMCON,#0x68
                    0B9F   2984 	C$fb_app_taster.c$608$4$9 ==.
                           2985 ;	..\fb_app_taster.c:608: EA=1;
   0DEC D2 AF              2986 	setb	_IEN0_7
                    0BA1   2987 	C$fb_app_taster.c$609$4$9 ==.
                           2988 ;	..\fb_app_taster.c:609: send_obj_value(objno+4);
   0DEE A8 14              2989 	mov	r0,_bp
   0DF0 08                 2990 	inc	r0
   0DF1 08                 2991 	inc	r0
   0DF2 86 82              2992 	mov	dpl,@r0
   0DF4 12 16 D3           2993 	lcall	_send_obj_value
                    0BAA   2994 	C$fb_app_taster.c$611$4$9 ==.
                           2995 ;	..\fb_app_taster.c:611: break;
   0DF7 02 0F 77           2996 	ljmp	00154$
                    0BAD   2997 	C$fb_app_taster.c$614$4$9 ==.
                           2998 ;	..\fb_app_taster.c:614: case 0xA0: // Wertgeber Temperatur verstellen
   0DFA                    2999 00128$:
                    0BAD   3000 	C$fb_app_taster.c$615$4$9 ==.
                           3001 ;	..\fb_app_taster.c:615: timerbase[objno]=0;
   0DFA A8 14              3002 	mov	r0,_bp
   0DFC 08                 3003 	inc	r0
   0DFD E6                 3004 	mov	a,@r0
   0DFE 24 34              3005 	add	a,#_timerbase
   0E00 F8                 3006 	mov	r0,a
   0E01 76 00              3007 	mov	@r0,#0x00
                    0BB6   3008 	C$fb_app_taster.c$616$4$9 ==.
                           3009 ;	..\fb_app_taster.c:616: timercnt[objno]=tele_repeat_value[(eeprom[0xD4+((objno-4)*4)]& 0x30)>>4];// schrittweite und zeit zw. telegrammen
   0E03 A8 14              3010 	mov	r0,_bp
   0E05 08                 3011 	inc	r0
   0E06 E6                 3012 	mov	a,@r0
   0E07 24 2C              3013 	add	a,#_timercnt
   0E09 F9                 3014 	mov	r1,a
   0E0A A8 14              3015 	mov	r0,_bp
   0E0C 08                 3016 	inc	r0
   0E0D E6                 3017 	mov	a,@r0
   0E0E 24 FC              3018 	add	a,#0xFC
   0E10 25 E0              3019 	add	a,acc
   0E12 25 E0              3020 	add	a,acc
   0E14 FF                 3021 	mov	r7,a
   0E15 24 D4              3022 	add	a,#0xD4
   0E17 90 1D 00           3023 	mov	dptr,#_eeprom
   0E1A 93                 3024 	movc	a,@a+dptr
   0E1B 54 30              3025 	anl	a,#0x30
   0E1D C4                 3026 	swap	a
   0E1E 54 0F              3027 	anl	a,#0x0F
   0E20 90 1A 85           3028 	mov	dptr,#_tele_repeat_value
   0E23 93                 3029 	movc	a,@a+dptr
   0E24 F7                 3030 	mov	@r1,a
                    0BD8   3031 	C$fb_app_taster.c$617$4$9 ==.
                           3032 ;	..\fb_app_taster.c:617: i_tmp=(eeprom[0xD5+4*(objno-4)]&0x07)<<8;
   0E25 74 D5              3033 	mov	a,#0xD5
   0E27 2F                 3034 	add	a,r7
   0E28 90 1D 00           3035 	mov	dptr,#_eeprom
   0E2B 93                 3036 	movc	a,@a+dptr
   0E2C FE                 3037 	mov	r6,a
   0E2D 53 06 07           3038 	anl	ar6,#0x07
   0E30 8E 03              3039 	mov	ar3,r6
   0E32 7E 00              3040 	mov	r6,#0x00
   0E34 8E 05              3041 	mov	ar5,r6
   0E36 8B 04              3042 	mov	ar4,r3
                    0BEB   3043 	C$fb_app_taster.c$618$4$9 ==.
                           3044 ;	..\fb_app_taster.c:618: i_tmp +=eeprom[0xD6+4*(objno-4)];
   0E38 74 D6              3045 	mov	a,#0xD6
   0E3A 2F                 3046 	add	a,r7
   0E3B 90 1D 00           3047 	mov	dptr,#_eeprom
   0E3E 93                 3048 	movc	a,@a+dptr
   0E3F FF                 3049 	mov	r7,a
   0E40 7E 00              3050 	mov	r6,#0x00
   0E42 2D                 3051 	add	a,r5
   0E43 FD                 3052 	mov	r5,a
   0E44 EE                 3053 	mov	a,r6
   0E45 3C                 3054 	addc	a,r4
   0E46 FC                 3055 	mov	r4,a
                    0BFA   3056 	C$fb_app_taster.c$619$4$9 ==.
                           3057 ;	..\fb_app_taster.c:619: if(i_tmp>=0x0032){
   0E47 C3                 3058 	clr	c
   0E48 ED                 3059 	mov	a,r5
   0E49 94 32              3060 	subb	a,#0x32
   0E4B EC                 3061 	mov	a,r4
   0E4C 94 00              3062 	subb	a,#0x00
   0E4E 40 22              3063 	jc	00130$
                    0C03   3064 	C$fb_app_taster.c$620$5$17 ==.
                           3065 ;	..\fb_app_taster.c:620: i_tmp -= 0x32;
   0E50 ED                 3066 	mov	a,r5
   0E51 24 CE              3067 	add	a,#0xCE
   0E53 FD                 3068 	mov	r5,a
   0E54 EC                 3069 	mov	a,r4
   0E55 34 FF              3070 	addc	a,#0xFF
   0E57 FC                 3071 	mov	r4,a
                    0C0B   3072 	C$fb_app_taster.c$621$5$17 ==.
                           3073 ;	..\fb_app_taster.c:621: switch_led(objno-4,1);
   0E58 A8 14              3074 	mov	r0,_bp
   0E5A 08                 3075 	inc	r0
   0E5B E6                 3076 	mov	a,@r0
   0E5C 24 FC              3077 	add	a,#0xFC
   0E5E F5 82              3078 	mov	dpl,a
   0E60 D2 F0              3079 	setb	b[0]
   0E62 C0 05              3080 	push	ar5
   0E64 C0 04              3081 	push	ar4
   0E66 85 F0 23           3082 	mov	bits,b
   0E69 12 0A 0A           3083 	lcall	_switch_led
   0E6C D0 04              3084 	pop	ar4
   0E6E D0 05              3085 	pop	ar5
   0E70 80 04              3086 	sjmp	00131$
   0E72                    3087 00130$:
                    0C25   3088 	C$fb_app_taster.c$624$5$18 ==.
                           3089 ;	..\fb_app_taster.c:624: i_tmp=0x07D0;
   0E72 7D D0              3090 	mov	r5,#0xD0
   0E74 7C 07              3091 	mov	r4,#0x07
   0E76                    3092 00131$:
                    0C29   3093 	C$fb_app_taster.c$626$4$9 ==.
                           3094 ;	..\fb_app_taster.c:626: write_obj_value(objno+4,i_tmp|0x0800);// wir rechnen immer mit exp 2^1
   0E76 43 04 08           3095 	orl	ar4,#0x08
   0E79 A8 14              3096 	mov	r0,_bp
   0E7B 08                 3097 	inc	r0
   0E7C 74 04              3098 	mov	a,#0x04
   0E7E 26                 3099 	add	a,@r0
   0E7F FF                 3100 	mov	r7,a
   0E80 C0 07              3101 	push	ar7
   0E82 C0 05              3102 	push	ar5
   0E84 C0 04              3103 	push	ar4
   0E86 8F 82              3104 	mov	dpl,r7
   0E88 12 09 1C           3105 	lcall	_write_obj_value
   0E8B 15 81              3106 	dec	sp
   0E8D 15 81              3107 	dec	sp
   0E8F D0 07              3108 	pop	ar7
                    0C44   3109 	C$fb_app_taster.c$627$4$9 ==.
                           3110 ;	..\fb_app_taster.c:627: timerstate[objno]=0xA0;
   0E91 A8 14              3111 	mov	r0,_bp
   0E93 08                 3112 	inc	r0
   0E94 E6                 3113 	mov	a,@r0
   0E95 24 3C              3114 	add	a,#_timerstate
   0E97 F8                 3115 	mov	r0,a
   0E98 76 A0              3116 	mov	@r0,#0xA0
                    0C4D   3117 	C$fb_app_taster.c$628$4$9 ==.
                           3118 ;	..\fb_app_taster.c:628: EA=0;		// Interrupts sperren, damit flashen nicht unterbrochen wird
   0E9A C2 AF              3119 	clr	_IEN0_7
                    0C4F   3120 	C$fb_app_taster.c$629$4$9 ==.
                           3121 ;	..\fb_app_taster.c:629: START_WRITECYCLE
   0E9C 75 E4 00           3122 	mov	_FMCON,#0x00
                    0C52   3123 	C$fb_app_taster.c$630$4$9 ==.
                           3124 ;	..\fb_app_taster.c:630: WRITE_BYTE(0x01,0xD5+((objno-4)*4),read_obj_value(objno+4)>>8);
   0E9F 75 E7 1D           3125 	mov	_FMADRH,#0x1D
   0EA2 A8 14              3126 	mov	r0,_bp
   0EA4 08                 3127 	inc	r0
   0EA5 E6                 3128 	mov	a,@r0
   0EA6 24 FC              3129 	add	a,#0xFC
   0EA8 25 E0              3130 	add	a,acc
   0EAA 25 E0              3131 	add	a,acc
   0EAC FE                 3132 	mov	r6,a
   0EAD 24 D5              3133 	add	a,#0xD5
   0EAF F5 E6              3134 	mov	_FMADRL,a
   0EB1 8F 82              3135 	mov	dpl,r7
   0EB3 C0 07              3136 	push	ar7
   0EB5 C0 06              3137 	push	ar6
   0EB7 12 08 DA           3138 	lcall	_read_obj_value
   0EBA AB 83              3139 	mov	r3,dph
   0EBC D0 06              3140 	pop	ar6
   0EBE D0 07              3141 	pop	ar7
   0EC0 8B E5              3142 	mov	_FMDATA,r3
                    0C75   3143 	C$fb_app_taster.c$631$4$9 ==.
                           3144 ;	..\fb_app_taster.c:631: WRITE_BYTE(0x01,0xD6+((objno-4)*4),read_obj_value(objno+4)& 0xFF);
   0EC2 75 E7 1D           3145 	mov	_FMADRH,#0x1D
   0EC5 74 D6              3146 	mov	a,#0xD6
   0EC7 2E                 3147 	add	a,r6
   0EC8 F5 E6              3148 	mov	_FMADRL,a
   0ECA 8F 82              3149 	mov	dpl,r7
   0ECC C0 07              3150 	push	ar7
   0ECE 12 08 DA           3151 	lcall	_read_obj_value
   0ED1 AB 82              3152 	mov	r3,dpl
   0ED3 D0 07              3153 	pop	ar7
   0ED5 8B E5              3154 	mov	_FMDATA,r3
                    0C8A   3155 	C$fb_app_taster.c$632$4$9 ==.
                           3156 ;	..\fb_app_taster.c:632: STOP_WRITECYCLE // Temperaturwert speichern
   0ED7 75 E4 68           3157 	mov	_FMCON,#0x68
                    0C8D   3158 	C$fb_app_taster.c$633$4$9 ==.
                           3159 ;	..\fb_app_taster.c:633: EA=1;
   0EDA D2 AF              3160 	setb	_IEN0_7
                    0C8F   3161 	C$fb_app_taster.c$634$4$9 ==.
                           3162 ;	..\fb_app_taster.c:634: send_obj_value(objno+4);
   0EDC 8F 82              3163 	mov	dpl,r7
   0EDE 12 16 D3           3164 	lcall	_send_obj_value
                    0C94   3165 	C$fb_app_taster.c$636$4$9 ==.
                           3166 ;	..\fb_app_taster.c:636: break;
   0EE1 02 0F 77           3167 	ljmp	00154$
                    0C97   3168 	C$fb_app_taster.c$639$4$9 ==.
                           3169 ;	..\fb_app_taster.c:639: case 0xC0: // Wertgeber Dimmer verstellen
   0EE4                    3170 00133$:
                    0C97   3171 	C$fb_app_taster.c$640$4$9 ==.
                           3172 ;	..\fb_app_taster.c:640: tmp=read_obj_value(objno+4);//
   0EE4 A8 14              3173 	mov	r0,_bp
   0EE6 08                 3174 	inc	r0
   0EE7 74 04              3175 	mov	a,#0x04
   0EE9 26                 3176 	add	a,@r0
   0EEA F5 82              3177 	mov	dpl,a
   0EEC 12 08 DA           3178 	lcall	_read_obj_value
   0EEF AC 82              3179 	mov	r4,dpl
   0EF1 AD 83              3180 	mov	r5,dph
                    0CA6   3181 	C$fb_app_taster.c$641$4$9 ==.
                           3182 ;	..\fb_app_taster.c:641: m=eeprom[0xD4+((objno-4)*4)]& 0x3F;// schrittweite und zeit zw. telegrammen
   0EF3 A8 14              3183 	mov	r0,_bp
   0EF5 08                 3184 	inc	r0
   0EF6 E6                 3185 	mov	a,@r0
   0EF7 24 FC              3186 	add	a,#0xFC
   0EF9 25 E0              3187 	add	a,acc
   0EFB 25 E0              3188 	add	a,acc
   0EFD 24 D4              3189 	add	a,#0xD4
   0EFF 90 1D 00           3190 	mov	dptr,#_eeprom
   0F02 93                 3191 	movc	a,@a+dptr
   0F03 FF                 3192 	mov	r7,a
   0F04 53 07 3F           3193 	anl	ar7,#0x3F
                    0CBA   3194 	C$fb_app_taster.c$642$4$9 ==.
                           3195 ;	..\fb_app_taster.c:642: n= m & 0x0F;  // Schrittweite
   0F07 74 0F              3196 	mov	a,#0x0F
   0F09 5F                 3197 	anl	a,r7
   0F0A FE                 3198 	mov	r6,a
                    0CBE   3199 	C$fb_app_taster.c$643$4$9 ==.
                           3200 ;	..\fb_app_taster.c:643: m=m>>4;// zeit zwischen telegrammen
   0F0B EF                 3201 	mov	a,r7
   0F0C C4                 3202 	swap	a
   0F0D 54 0F              3203 	anl	a,#0x0F
   0F0F FF                 3204 	mov	r7,a
                    0CC3   3205 	C$fb_app_taster.c$644$4$9 ==.
                           3206 ;	..\fb_app_taster.c:644: if (!tmp){
   0F10 EC                 3207 	mov	a,r4
   0F11 70 04              3208 	jnz	00138$
                    0CC6   3209 	C$fb_app_taster.c$645$5$19 ==.
                           3210 ;	..\fb_app_taster.c:645: tmp=255;
   0F13 7C FF              3211 	mov	r4,#0xFF
   0F15 80 0D              3212 	sjmp	00139$
   0F17                    3213 00138$:
                    0CCA   3214 	C$fb_app_taster.c$648$5$20 ==.
                           3215 ;	..\fb_app_taster.c:648: if (tmp>=n)tmp-=n;
   0F17 C3                 3216 	clr	c
   0F18 EC                 3217 	mov	a,r4
   0F19 9E                 3218 	subb	a,r6
   0F1A 40 06              3219 	jc	00135$
   0F1C EC                 3220 	mov	a,r4
   0F1D C3                 3221 	clr	c
   0F1E 9E                 3222 	subb	a,r6
   0F1F FC                 3223 	mov	r4,a
   0F20 80 02              3224 	sjmp	00139$
   0F22                    3225 00135$:
                    0CD5   3226 	C$fb_app_taster.c$649$5$20 ==.
                           3227 ;	..\fb_app_taster.c:649: else tmp=0;
   0F22 7C 00              3228 	mov	r4,#0x00
   0F24                    3229 00139$:
                    0CD7   3230 	C$fb_app_taster.c$651$4$9 ==.
                           3231 ;	..\fb_app_taster.c:651: write_obj_value(objno+4,tmp);
   0F24 7E 00              3232 	mov	r6,#0x00
   0F26 A8 14              3233 	mov	r0,_bp
   0F28 08                 3234 	inc	r0
   0F29 74 04              3235 	mov	a,#0x04
   0F2B 26                 3236 	add	a,@r0
   0F2C FD                 3237 	mov	r5,a
   0F2D C0 07              3238 	push	ar7
   0F2F C0 05              3239 	push	ar5
   0F31 C0 04              3240 	push	ar4
   0F33 C0 06              3241 	push	ar6
   0F35 8D 82              3242 	mov	dpl,r5
   0F37 12 09 1C           3243 	lcall	_write_obj_value
   0F3A 15 81              3244 	dec	sp
   0F3C 15 81              3245 	dec	sp
                    0CF1   3246 	C$fb_app_taster.c$652$4$9 ==.
                           3247 ;	..\fb_app_taster.c:652: switch_led(objno-4,1);
   0F3E A8 14              3248 	mov	r0,_bp
   0F40 08                 3249 	inc	r0
   0F41 E6                 3250 	mov	a,@r0
   0F42 24 FC              3251 	add	a,#0xFC
   0F44 F5 82              3252 	mov	dpl,a
   0F46 D2 F0              3253 	setb	b[0]
   0F48 85 F0 23           3254 	mov	bits,b
   0F4B 12 0A 0A           3255 	lcall	_switch_led
   0F4E D0 05              3256 	pop	ar5
                    0D03   3257 	C$fb_app_taster.c$653$4$9 ==.
                           3258 ;	..\fb_app_taster.c:653: send_obj_value(objno+4);		// dimmkommando senden
   0F50 8D 82              3259 	mov	dpl,r5
   0F52 12 16 D3           3260 	lcall	_send_obj_value
   0F55 D0 07              3261 	pop	ar7
                    0D0A   3262 	C$fb_app_taster.c$654$4$9 ==.
                           3263 ;	..\fb_app_taster.c:654: timerstate[objno]=0xC0;
   0F57 A8 14              3264 	mov	r0,_bp
   0F59 08                 3265 	inc	r0
   0F5A E6                 3266 	mov	a,@r0
   0F5B 24 3C              3267 	add	a,#_timerstate
   0F5D F8                 3268 	mov	r0,a
   0F5E 76 C0              3269 	mov	@r0,#0xC0
                    0D13   3270 	C$fb_app_taster.c$655$4$9 ==.
                           3271 ;	..\fb_app_taster.c:655: timercnt[objno]=tele_repeat_value[m];// 0,5/1/1,5/2 Sec.
   0F60 A8 14              3272 	mov	r0,_bp
   0F62 08                 3273 	inc	r0
   0F63 E6                 3274 	mov	a,@r0
   0F64 24 2C              3275 	add	a,#_timercnt
   0F66 F9                 3276 	mov	r1,a
   0F67 EF                 3277 	mov	a,r7
   0F68 90 1A 85           3278 	mov	dptr,#_tele_repeat_value
   0F6B 93                 3279 	movc	a,@a+dptr
   0F6C FF                 3280 	mov	r7,a
   0F6D F7                 3281 	mov	@r1,a
                    0D21   3282 	C$fb_app_taster.c$656$4$9 ==.
                           3283 ;	..\fb_app_taster.c:656: timerbase[objno]=0;
   0F6E A8 14              3284 	mov	r0,_bp
   0F70 08                 3285 	inc	r0
   0F71 E6                 3286 	mov	a,@r0
   0F72 24 34              3287 	add	a,#_timerbase
   0F74 F8                 3288 	mov	r0,a
   0F75 76 00              3289 	mov	@r0,#0x00
                    0D2A   3290 	C$fb_app_taster.c$659$1$7 ==.
                           3291 ;	..\fb_app_taster.c:659: }// ende switch (timerstate...
   0F77                    3292 00154$:
                    0D2A   3293 	C$fb_app_taster.c$500$1$1 ==.
                           3294 ;	..\fb_app_taster.c:500: for(objno=0;objno<8;objno++) {
   0F77 A8 14              3295 	mov	r0,_bp
   0F79 08                 3296 	inc	r0
   0F7A 06                 3297 	inc	@r0
   0F7B 02 0B 40           3298 	ljmp	00152$
   0F7E                    3299 00156$:
   0F7E 85 14 81           3300 	mov	sp,_bp
   0F81 D0 14              3301 	pop	_bp
                    0D36   3302 	C$fb_app_taster.c$662$1$1 ==.
                    0D36   3303 	XG$delay_timer$0$0 ==.
   0F83 22                 3304 	ret
                           3305 ;------------------------------------------------------------
                           3306 ;Allocation info for local variables in function 'restart_app'
                           3307 ;------------------------------------------------------------
                           3308 ;n                         Allocated to registers r7 
                           3309 ;write_ok                  Allocated to registers 
                           3310 ;------------------------------------------------------------
                    0D37   3311 	G$restart_app$0$0 ==.
                    0D37   3312 	C$fb_app_taster.c$672$1$1 ==.
                           3313 ;	..\fb_app_taster.c:672: void restart_app(void)
                           3314 ;	-----------------------------------------
                           3315 ;	 function restart_app
                           3316 ;	-----------------------------------------
   0F84                    3317 _restart_app:
                    0D37   3318 	C$fb_app_taster.c$678$1$1 ==.
                           3319 ;	..\fb_app_taster.c:678: for (n=0;n<4;n++) {
   0F84 7F 00              3320 	mov	r7,#0x00
   0F86                    3321 00105$:
   0F86 BF 04 00           3322 	cjne	r7,#0x04,00137$
   0F89                    3323 00137$:
   0F89 50 20              3324 	jnc	00108$
                    0D3E   3325 	C$fb_app_taster.c$679$2$2 ==.
                           3326 ;	..\fb_app_taster.c:679: SET_PORT_MODE_BIDIRECTIONAL(n)
   0F8B BF 08 00           3327 	cjne	r7,#0x08,00139$
   0F8E                    3328 00139$:
   0F8E 50 18              3329 	jnc	00107$
   0F90 8F F0              3330 	mov	b,r7
   0F92 05 F0              3331 	inc	b
   0F94 74 01              3332 	mov	a,#0x01
   0F96 80 02              3333 	sjmp	00143$
   0F98                    3334 00141$:
   0F98 25 E0              3335 	add	a,acc
   0F9A                    3336 00143$:
   0F9A D5 F0 FB           3337 	djnz	b,00141$
   0F9D FE                 3338 	mov	r6,a
   0F9E 74 FF              3339 	mov	a,#0xFF
   0FA0 C3                 3340 	clr	c
   0FA1 9E                 3341 	subb	a,r6
   0FA2 FE                 3342 	mov	r6,a
   0FA3 52 84              3343 	anl	_P0M1,a
   0FA5 EE                 3344 	mov	a,r6
   0FA6 52 85              3345 	anl	_P0M2,a
   0FA8                    3346 00107$:
                    0D5B   3347 	C$fb_app_taster.c$678$1$1 ==.
                           3348 ;	..\fb_app_taster.c:678: for (n=0;n<4;n++) {
   0FA8 0F                 3349 	inc	r7
   0FA9 80 DB              3350 	sjmp	00105$
   0FAB                    3351 00108$:
                    0D5E   3352 	C$fb_app_taster.c$683$1$1 ==.
                           3353 ;	..\fb_app_taster.c:683: for (n=4;n<8;n++) {
   0FAB 7F 04              3354 	mov	r7,#0x04
   0FAD                    3355 00109$:
   0FAD BF 08 00           3356 	cjne	r7,#0x08,00144$
   0FB0                    3357 00144$:
   0FB0 E4                 3358 	clr	a
   0FB1 33                 3359 	rlc	a
   0FB2 FE                 3360 	mov	r6,a
   0FB3 60 1D              3361 	jz	00112$
                    0D68   3362 	C$fb_app_taster.c$684$2$4 ==.
                           3363 ;	..\fb_app_taster.c:684: SET_PORT_MODE_PUSHPULL(n)
   0FB5 EE                 3364 	mov	a,r6
   0FB6 60 17              3365 	jz	00111$
   0FB8 8F F0              3366 	mov	b,r7
   0FBA 05 F0              3367 	inc	b
   0FBC 74 01              3368 	mov	a,#0x01
   0FBE 80 02              3369 	sjmp	00149$
   0FC0                    3370 00147$:
   0FC0 25 E0              3371 	add	a,acc
   0FC2                    3372 00149$:
   0FC2 D5 F0 FB           3373 	djnz	b,00147$
   0FC5 FE                 3374 	mov	r6,a
   0FC6 74 FF              3375 	mov	a,#0xFF
   0FC8 C3                 3376 	clr	c
   0FC9 9E                 3377 	subb	a,r6
   0FCA 52 84              3378 	anl	_P0M1,a
   0FCC EE                 3379 	mov	a,r6
   0FCD 42 85              3380 	orl	_P0M2,a
   0FCF                    3381 00111$:
                    0D82   3382 	C$fb_app_taster.c$683$1$1 ==.
                           3383 ;	..\fb_app_taster.c:683: for (n=4;n<8;n++) {
   0FCF 0F                 3384 	inc	r7
   0FD0 80 DB              3385 	sjmp	00109$
   0FD2                    3386 00112$:
                    0D85   3387 	C$fb_app_taster.c$687$1$1 ==.
                           3388 ;	..\fb_app_taster.c:687: PORT=0x0F;			// Taster auf high, LEDs zunächst aus
   0FD2 75 80 0F           3389 	mov	_P0,#0x0F
                    0D88   3390 	C$fb_app_taster.c$689$1$1 ==.
                           3391 ;	..\fb_app_taster.c:689: button_buffer=0x0F;	// Variable für letzten abgearbeiteten Taster Status
   0FD5 75 28 0F           3392 	mov	_button_buffer,#0x0F
                    0D8B   3393 	C$fb_app_taster.c$691$1$1 ==.
                           3394 ;	..\fb_app_taster.c:691: RTCCON=0x60;	//stop_rtc();
   0FD8 75 D1 60           3395 	mov	_RTCCON,#0x60
                    0D8E   3396 	C$fb_app_taster.c$692$1$1 ==.
                           3397 ;	..\fb_app_taster.c:692: RTCH=0x00;
   0FDB 75 D2 00           3398 	mov	_RTCH,#0x00
                    0D91   3399 	C$fb_app_taster.c$693$1$1 ==.
                           3400 ;	..\fb_app_taster.c:693: RTCL=0xE6;	
   0FDE 75 D3 E6           3401 	mov	_RTCL,#0xE6
                    0D94   3402 	C$fb_app_taster.c$694$1$1 ==.
                           3403 ;	..\fb_app_taster.c:694: RTCCON=0x61;	//start_rtc(8);		// RTC neu mit 8ms starten
   0FE1 75 D1 61           3404 	mov	_RTCCON,#0x61
                    0D97   3405 	C$fb_app_taster.c$696$1$1 ==.
                           3406 ;	..\fb_app_taster.c:696: timer=0;			// Timer-Variable, wird alle 8ms inkrementiert
   0FE4 E4                 3407 	clr	a
   0FE5 F5 24              3408 	mov	_timer,a
   0FE7 F5 25              3409 	mov	(_timer + 1),a
                    0D9C   3410 	C$fb_app_taster.c$698$1$1 ==.
                           3411 ;	..\fb_app_taster.c:698: EA=0;		// Interrupts sperren
   0FE9 C2 AF              3412 	clr	_IEN0_7
                    0D9E   3413 	C$fb_app_taster.c$700$1$1 ==.
                           3414 ;	..\fb_app_taster.c:700: START_WRITECYCLE			
   0FEB 75 E4 00           3415 	mov	_FMCON,#0x00
                    0DA1   3416 	C$fb_app_taster.c$701$1$1 ==.
                           3417 ;	..\fb_app_taster.c:701: WRITE_BYTE(0x01,0x03,0x00)	// Herstellercode 0x0004 = Jung
   0FEE 75 E7 1D           3418 	mov	_FMADRH,#0x1D
   0FF1 75 E6 03           3419 	mov	_FMADRL,#0x03
   0FF4 75 E5 00           3420 	mov	_FMDATA,#0x00
                    0DAA   3421 	C$fb_app_taster.c$702$1$1 ==.
                           3422 ;	..\fb_app_taster.c:702: WRITE_BYTE(0x01,0x04,0x04)
   0FF7 75 E7 1D           3423 	mov	_FMADRH,#0x1D
   0FFA 75 E6 04           3424 	mov	_FMADRL,#0x04
   0FFD 75 E5 04           3425 	mov	_FMDATA,#0x04
                    0DB3   3426 	C$fb_app_taster.c$706$1$1 ==.
                           3427 ;	..\fb_app_taster.c:706: WRITE_BYTE(0x01,0x0C,0x00)	// PORT A Direction Bit Setting
   1000 75 E7 1D           3428 	mov	_FMADRH,#0x1D
   1003 75 E6 0C           3429 	mov	_FMADRL,#0x0C
   1006 75 E5 00           3430 	mov	_FMDATA,#0x00
                    0DBC   3431 	C$fb_app_taster.c$707$1$1 ==.
                           3432 ;	..\fb_app_taster.c:707: WRITE_BYTE(0x01,0x0D,0xFF)	// Run-Status (00=stop FF=run)
   1009 75 E7 1D           3433 	mov	_FMADRH,#0x1D
   100C 75 E6 0D           3434 	mov	_FMADRL,#0x0D
   100F 75 E5 FF           3435 	mov	_FMDATA,#0xFF
                    0DC5   3436 	C$fb_app_taster.c$709$1$1 ==.
                           3437 ;	..\fb_app_taster.c:709: STOP_WRITECYCLE
   1012 75 E4 68           3438 	mov	_FMCON,#0x68
                    0DC8   3439 	C$fb_app_taster.c$714$1$1 ==.
                           3440 ;	..\fb_app_taster.c:714: for (n=0;n<12;n++) write_obj_value(n,0);		// Objektwerte alle auf 0 setzen
   1015 7F 00              3441 	mov	r7,#0x00
   1017                    3442 00113$:
   1017 BF 0C 00           3443 	cjne	r7,#0x0C,00150$
   101A                    3444 00150$:
   101A 50 15              3445 	jnc	00116$
   101C C0 07              3446 	push	ar7
   101E E4                 3447 	clr	a
   101F C0 E0              3448 	push	acc
   1021 C0 E0              3449 	push	acc
   1023 8F 82              3450 	mov	dpl,r7
   1025 12 09 1C           3451 	lcall	_write_obj_value
   1028 15 81              3452 	dec	sp
   102A 15 81              3453 	dec	sp
   102C D0 07              3454 	pop	ar7
   102E 0F                 3455 	inc	r7
   102F 80 E6              3456 	sjmp	00113$
   1031                    3457 00116$:
                    0DE4   3458 	C$fb_app_taster.c$716$1$1 ==.
                           3459 ;	..\fb_app_taster.c:716: for (n=0;n<8;n++) timercnt[n]=0;		// delay records loeschen
   1031 7F 00              3460 	mov	r7,#0x00
   1033                    3461 00117$:
   1033 BF 08 00           3462 	cjne	r7,#0x08,00152$
   1036                    3463 00152$:
   1036 50 09              3464 	jnc	00120$
   1038 EF                 3465 	mov	a,r7
   1039 24 2C              3466 	add	a,#_timercnt
   103B F8                 3467 	mov	r0,a
   103C 76 00              3468 	mov	@r0,#0x00
   103E 0F                 3469 	inc	r7
   103F 80 F2              3470 	sjmp	00117$
   1041                    3471 00120$:
                    0DF4   3472 	C$fb_app_taster.c$721$1$1 ==.
                           3473 ;	..\fb_app_taster.c:721: TR0=0;
   1041 C2 8C              3474 	clr	_TCON_4
                    0DF6   3475 	C$fb_app_taster.c$722$1$1 ==.
                           3476 ;	..\fb_app_taster.c:722: TMOD &= 0xF0;
   1043 53 89 F0           3477 	anl	_TMOD,#0xF0
                    0DF9   3478 	C$fb_app_taster.c$723$1$1 ==.
                           3479 ;	..\fb_app_taster.c:723: TMOD |= 0x02;// T0 autoreload
   1046 43 89 02           3480 	orl	_TMOD,#0x02
                    0DFC   3481 	C$fb_app_taster.c$724$1$1 ==.
                           3482 ;	..\fb_app_taster.c:724: TH0=0x47;
   1049 75 8C 47           3483 	mov	_TH0,#0x47
                    0DFF   3484 	C$fb_app_taster.c$725$1$1 ==.
                           3485 ;	..\fb_app_taster.c:725: TL0=0x47;
   104C 75 8A 47           3486 	mov	_TL0,#0x47
                    0E02   3487 	C$fb_app_taster.c$726$1$1 ==.
                           3488 ;	..\fb_app_taster.c:726: TR0=1;
   104F D2 8C              3489 	setb	_TCON_4
                    0E04   3490 	C$fb_app_taster.c$728$1$1 ==.
                           3491 ;	..\fb_app_taster.c:728: IP0 &= 0xFC; //FC		F6	für flackerfrei bei 1 kanal
   1051 53 B8 FC           3492 	anl	_IP0,#0xFC
                    0E07   3493 	C$fb_app_taster.c$729$1$1 ==.
                           3494 ;	..\fb_app_taster.c:729: IP0 |= 0x0C; //0C		06	dto.
   1054 43 B8 0C           3495 	orl	_IP0,#0x0C
                    0E0A   3496 	C$fb_app_taster.c$730$1$1 ==.
                           3497 ;	..\fb_app_taster.c:730: IP0H &= 0xF4;// 
   1057 53 B7 F4           3498 	anl	_IP0H,#0xF4
                    0E0D   3499 	C$fb_app_taster.c$731$1$1 ==.
                           3500 ;	..\fb_app_taster.c:731: IP0H |= 0x04;// 		Timer 1 auf Level 2
   105A 43 B7 04           3501 	orl	_IP0H,#0x04
                    0E10   3502 	C$fb_app_taster.c$733$1$1 ==.
                           3503 ;	..\fb_app_taster.c:733: ET0=1;// timer 0 interupt freigeben	
   105D D2 A9              3504 	setb	_IEN0_1
                    0E12   3505 	C$fb_app_taster.c$735$1$1 ==.
                           3506 ;	..\fb_app_taster.c:735: TF0=0; //timer0 flag löschen
   105F C2 8D              3507 	clr	_TCON_5
                    0E14   3508 	C$fb_app_taster.c$736$1$1 ==.
                           3509 ;	..\fb_app_taster.c:736: EA=1;// Interrupts freigeben	
   1061 D2 AF              3510 	setb	_IEN0_7
                    0E16   3511 	C$fb_app_taster.c$738$1$1 ==.
                    0E16   3512 	XG$restart_app$0$0 ==.
   1063 22                 3513 	ret
                           3514 	.area CSEG    (CODE)
                           3515 	.area CONST   (CODE)
                    0000   3516 G$tele_repeat_value$0$0 == .
   1A85                    3517 _tele_repeat_value:
   1A85 3F                 3518 	.db #0x3F	; 63
   1A86 7D                 3519 	.db #0x7D	; 125
   1A87 BC                 3520 	.db #0xBC	; 188
   1A88 FA                 3521 	.db #0xFA	; 250
   1A89 19                 3522 	.db #0x19	; 25
   1A8A 26                 3523 	.db #0x26	; 38
   1A8B 32                 3524 	.db #0x32	; 50	'2'
   1A8C 5E                 3525 	.db #0x5E	; 94
                           3526 	.area XINIT   (CODE)
                           3527 	.area CABS    (ABS,CODE)
