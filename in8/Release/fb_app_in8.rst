                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Jun 14 2012) (Linux)
                              4 ; This file was generated Fri Oct 24 21:14:10 2014
                              5 ;--------------------------------------------------------
                              6 	.module fb_app_in8
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _spi_in_out
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
                            149 	.globl _st_Flanke
                            150 	.globl _jobj
                            151 	.globl _objval
                            152 	.globl _schrittzaehler
                            153 	.globl _zaehlervalue
                            154 	.globl _Sperre
                            155 	.globl _objectvalue_h
                            156 	.globl _objectvalue_l
                            157 	.globl _para_value
                            158 	.globl _pinno
                            159 	.globl _para_adr
                            160 	.globl _pinnoX4
                            161 	.globl _timerstate
                            162 	.globl _timercnt
                            163 	.globl _timerbase
                            164 	.globl _timer
                            165 	.globl _timer_state
                            166 	.globl _timer_base
                            167 	.globl _blocked
                            168 	.globl _objstate
                            169 	.globl _p0h
                            170 	.globl _portbuffer
                            171 	.globl _pin_changed
                            172 	.globl _delay_timer
                            173 	.globl _schalten
                            174 	.globl _debounce
                            175 	.globl _write_value_req
                            176 	.globl _sperren
                            177 	.globl _read_value_req
                            178 	.globl _write_send
                            179 	.globl _bus_return
                            180 	.globl _read_obj_value
                            181 	.globl _write_obj_value
                            182 	.globl _restart_app
                            183 ;--------------------------------------------------------
                            184 ; special function registers
                            185 ;--------------------------------------------------------
                            186 	.area RSEG    (ABS,DATA)
   0000                     187 	.org 0x0000
                    0080    188 G$P0$0$0 == 0x0080
                    0080    189 _P0	=	0x0080
                    0090    190 G$P1$0$0 == 0x0090
                    0090    191 _P1	=	0x0090
                    00B0    192 G$P3$0$0 == 0x00b0
                    00B0    193 _P3	=	0x00b0
                    00D0    194 G$PSW$0$0 == 0x00d0
                    00D0    195 _PSW	=	0x00d0
                    00E0    196 G$ACC$0$0 == 0x00e0
                    00E0    197 _ACC	=	0x00e0
                    00F0    198 G$B$0$0 == 0x00f0
                    00F0    199 _B	=	0x00f0
                    0081    200 G$SP$0$0 == 0x0081
                    0081    201 _SP	=	0x0081
                    0082    202 G$DPL$0$0 == 0x0082
                    0082    203 _DPL	=	0x0082
                    0083    204 G$DPH$0$0 == 0x0083
                    0083    205 _DPH	=	0x0083
                    0087    206 G$PCON$0$0 == 0x0087
                    0087    207 _PCON	=	0x0087
                    0088    208 G$TCON$0$0 == 0x0088
                    0088    209 _TCON	=	0x0088
                    0089    210 G$TMOD$0$0 == 0x0089
                    0089    211 _TMOD	=	0x0089
                    008A    212 G$TL0$0$0 == 0x008a
                    008A    213 _TL0	=	0x008a
                    008B    214 G$TL1$0$0 == 0x008b
                    008B    215 _TL1	=	0x008b
                    008C    216 G$TH0$0$0 == 0x008c
                    008C    217 _TH0	=	0x008c
                    008D    218 G$TH1$0$0 == 0x008d
                    008D    219 _TH1	=	0x008d
                    00A8    220 G$IEN0$0$0 == 0x00a8
                    00A8    221 _IEN0	=	0x00a8
                    00B8    222 G$IP0$0$0 == 0x00b8
                    00B8    223 _IP0	=	0x00b8
                    0098    224 G$SCON$0$0 == 0x0098
                    0098    225 _SCON	=	0x0098
                    0099    226 G$SBUF$0$0 == 0x0099
                    0099    227 _SBUF	=	0x0099
                    00A2    228 G$AUXR1$0$0 == 0x00a2
                    00A2    229 _AUXR1	=	0x00a2
                    00A9    230 G$SADDR$0$0 == 0x00a9
                    00A9    231 _SADDR	=	0x00a9
                    00B9    232 G$SADEN$0$0 == 0x00b9
                    00B9    233 _SADEN	=	0x00b9
                    00BE    234 G$BRGR0$0$0 == 0x00be
                    00BE    235 _BRGR0	=	0x00be
                    00BF    236 G$BRGR1$0$0 == 0x00bf
                    00BF    237 _BRGR1	=	0x00bf
                    00BD    238 G$BRGCON$0$0 == 0x00bd
                    00BD    239 _BRGCON	=	0x00bd
                    00AC    240 G$CMP1$0$0 == 0x00ac
                    00AC    241 _CMP1	=	0x00ac
                    00AD    242 G$CMP2$0$0 == 0x00ad
                    00AD    243 _CMP2	=	0x00ad
                    0095    244 G$DIVM$0$0 == 0x0095
                    0095    245 _DIVM	=	0x0095
                    00E7    246 G$FMADRH$0$0 == 0x00e7
                    00E7    247 _FMADRH	=	0x00e7
                    00E6    248 G$FMADRL$0$0 == 0x00e6
                    00E6    249 _FMADRL	=	0x00e6
                    00E4    250 G$FMCON$0$0 == 0x00e4
                    00E4    251 _FMCON	=	0x00e4
                    00E5    252 G$FMDATA$0$0 == 0x00e5
                    00E5    253 _FMDATA	=	0x00e5
                    00DB    254 G$I2ADR$0$0 == 0x00db
                    00DB    255 _I2ADR	=	0x00db
                    00D8    256 G$I2CON$0$0 == 0x00d8
                    00D8    257 _I2CON	=	0x00d8
                    00DA    258 G$I2DAT$0$0 == 0x00da
                    00DA    259 _I2DAT	=	0x00da
                    00DD    260 G$I2SCLH$0$0 == 0x00dd
                    00DD    261 _I2SCLH	=	0x00dd
                    00DC    262 G$I2SCLL$0$0 == 0x00dc
                    00DC    263 _I2SCLL	=	0x00dc
                    00D9    264 G$I2STAT$0$0 == 0x00d9
                    00D9    265 _I2STAT	=	0x00d9
                    00F8    266 G$IP1$0$0 == 0x00f8
                    00F8    267 _IP1	=	0x00f8
                    00F7    268 G$IP1H$0$0 == 0x00f7
                    00F7    269 _IP1H	=	0x00f7
                    0094    270 G$KBCON$0$0 == 0x0094
                    0094    271 _KBCON	=	0x0094
                    0086    272 G$KBMASK$0$0 == 0x0086
                    0086    273 _KBMASK	=	0x0086
                    0093    274 G$KBPATN$0$0 == 0x0093
                    0093    275 _KBPATN	=	0x0093
                    0084    276 G$P0M1$0$0 == 0x0084
                    0084    277 _P0M1	=	0x0084
                    0085    278 G$P0M2$0$0 == 0x0085
                    0085    279 _P0M2	=	0x0085
                    0091    280 G$P1M1$0$0 == 0x0091
                    0091    281 _P1M1	=	0x0091
                    0092    282 G$P1M2$0$0 == 0x0092
                    0092    283 _P1M2	=	0x0092
                    00B1    284 G$P3M1$0$0 == 0x00b1
                    00B1    285 _P3M1	=	0x00b1
                    00B2    286 G$P3M2$0$0 == 0x00b2
                    00B2    287 _P3M2	=	0x00b2
                    00B5    288 G$PCONA$0$0 == 0x00b5
                    00B5    289 _PCONA	=	0x00b5
                    00F6    290 G$PT0AD$0$0 == 0x00f6
                    00F6    291 _PT0AD	=	0x00f6
                    00DF    292 G$RSTSRC$0$0 == 0x00df
                    00DF    293 _RSTSRC	=	0x00df
                    00D1    294 G$RTCCON$0$0 == 0x00d1
                    00D1    295 _RTCCON	=	0x00d1
                    00D2    296 G$RTCH$0$0 == 0x00d2
                    00D2    297 _RTCH	=	0x00d2
                    00D3    298 G$RTCL$0$0 == 0x00d3
                    00D3    299 _RTCL	=	0x00d3
                    00BA    300 G$SSTAT$0$0 == 0x00ba
                    00BA    301 _SSTAT	=	0x00ba
                    008F    302 G$TAMOD$0$0 == 0x008f
                    008F    303 _TAMOD	=	0x008f
                    0096    304 G$TRIM$0$0 == 0x0096
                    0096    305 _TRIM	=	0x0096
                    00A7    306 G$WDCON$0$0 == 0x00a7
                    00A7    307 _WDCON	=	0x00a7
                    00C1    308 G$WDL$0$0 == 0x00c1
                    00C1    309 _WDL	=	0x00c1
                    00C2    310 G$WFEED1$0$0 == 0x00c2
                    00C2    311 _WFEED1	=	0x00c2
                    00C3    312 G$WFEED2$0$0 == 0x00c3
                    00C3    313 _WFEED2	=	0x00c3
                    00B7    314 G$IP0H$0$0 == 0x00b7
                    00B7    315 _IP0H	=	0x00b7
                    00E8    316 G$IEN1$0$0 == 0x00e8
                    00E8    317 _IEN1	=	0x00e8
                            318 ;--------------------------------------------------------
                            319 ; special function bits
                            320 ;--------------------------------------------------------
                            321 	.area RSEG    (ABS,DATA)
   0000                     322 	.org 0x0000
                    00D0    323 G$PSW_0$0$0 == 0x00d0
                    00D0    324 _PSW_0	=	0x00d0
                    00D1    325 G$PSW_1$0$0 == 0x00d1
                    00D1    326 _PSW_1	=	0x00d1
                    00D2    327 G$PSW_2$0$0 == 0x00d2
                    00D2    328 _PSW_2	=	0x00d2
                    00D3    329 G$PSW_3$0$0 == 0x00d3
                    00D3    330 _PSW_3	=	0x00d3
                    00D4    331 G$PSW_4$0$0 == 0x00d4
                    00D4    332 _PSW_4	=	0x00d4
                    00D5    333 G$PSW_5$0$0 == 0x00d5
                    00D5    334 _PSW_5	=	0x00d5
                    00D6    335 G$PSW_6$0$0 == 0x00d6
                    00D6    336 _PSW_6	=	0x00d6
                    00D7    337 G$PSW_7$0$0 == 0x00d7
                    00D7    338 _PSW_7	=	0x00d7
                    008F    339 G$TCON_7$0$0 == 0x008f
                    008F    340 _TCON_7	=	0x008f
                    008E    341 G$TCON_6$0$0 == 0x008e
                    008E    342 _TCON_6	=	0x008e
                    008D    343 G$TCON_5$0$0 == 0x008d
                    008D    344 _TCON_5	=	0x008d
                    008C    345 G$TCON_4$0$0 == 0x008c
                    008C    346 _TCON_4	=	0x008c
                    008B    347 G$TCON_3$0$0 == 0x008b
                    008B    348 _TCON_3	=	0x008b
                    008A    349 G$TCON_2$0$0 == 0x008a
                    008A    350 _TCON_2	=	0x008a
                    0089    351 G$TCON_1$0$0 == 0x0089
                    0089    352 _TCON_1	=	0x0089
                    0088    353 G$TCON_0$0$0 == 0x0088
                    0088    354 _TCON_0	=	0x0088
                    00AF    355 G$IEN0_7$0$0 == 0x00af
                    00AF    356 _IEN0_7	=	0x00af
                    00AE    357 G$IEN0_6$0$0 == 0x00ae
                    00AE    358 _IEN0_6	=	0x00ae
                    00AD    359 G$IEN0_5$0$0 == 0x00ad
                    00AD    360 _IEN0_5	=	0x00ad
                    00AC    361 G$IEN0_4$0$0 == 0x00ac
                    00AC    362 _IEN0_4	=	0x00ac
                    00AB    363 G$IEN0_3$0$0 == 0x00ab
                    00AB    364 _IEN0_3	=	0x00ab
                    00AA    365 G$IEN0_2$0$0 == 0x00aa
                    00AA    366 _IEN0_2	=	0x00aa
                    00A9    367 G$IEN0_1$0$0 == 0x00a9
                    00A9    368 _IEN0_1	=	0x00a9
                    00A8    369 G$IEN0_0$0$0 == 0x00a8
                    00A8    370 _IEN0_0	=	0x00a8
                    00EA    371 G$IEN1_2$0$0 == 0x00ea
                    00EA    372 _IEN1_2	=	0x00ea
                    00E9    373 G$IEN1_1$0$0 == 0x00e9
                    00E9    374 _IEN1_1	=	0x00e9
                    00E8    375 G$IEN1_0$0$0 == 0x00e8
                    00E8    376 _IEN1_0	=	0x00e8
                    00FE    377 G$IP1_6$0$0 == 0x00fe
                    00FE    378 _IP1_6	=	0x00fe
                    00FA    379 G$IP1_2$0$0 == 0x00fa
                    00FA    380 _IP1_2	=	0x00fa
                    00F9    381 G$IP1_1$0$0 == 0x00f9
                    00F9    382 _IP1_1	=	0x00f9
                    00F8    383 G$IP1_0$0$0 == 0x00f8
                    00F8    384 _IP1_0	=	0x00f8
                    00BE    385 G$IP0_6$0$0 == 0x00be
                    00BE    386 _IP0_6	=	0x00be
                    00BD    387 G$IP0_5$0$0 == 0x00bd
                    00BD    388 _IP0_5	=	0x00bd
                    00BC    389 G$IP0_4$0$0 == 0x00bc
                    00BC    390 _IP0_4	=	0x00bc
                    00BB    391 G$IP0_3$0$0 == 0x00bb
                    00BB    392 _IP0_3	=	0x00bb
                    00BA    393 G$IP0_2$0$0 == 0x00ba
                    00BA    394 _IP0_2	=	0x00ba
                    00B9    395 G$IP0_1$0$0 == 0x00b9
                    00B9    396 _IP0_1	=	0x00b9
                    00B8    397 G$IP0_0$0$0 == 0x00b8
                    00B8    398 _IP0_0	=	0x00b8
                    0098    399 G$SCON_0$0$0 == 0x0098
                    0098    400 _SCON_0	=	0x0098
                    0099    401 G$SCON_1$0$0 == 0x0099
                    0099    402 _SCON_1	=	0x0099
                    009A    403 G$SCON_2$0$0 == 0x009a
                    009A    404 _SCON_2	=	0x009a
                    009B    405 G$SCON_3$0$0 == 0x009b
                    009B    406 _SCON_3	=	0x009b
                    009C    407 G$SCON_4$0$0 == 0x009c
                    009C    408 _SCON_4	=	0x009c
                    009D    409 G$SCON_5$0$0 == 0x009d
                    009D    410 _SCON_5	=	0x009d
                    009E    411 G$SCON_6$0$0 == 0x009e
                    009E    412 _SCON_6	=	0x009e
                    009F    413 G$SCON_7$0$0 == 0x009f
                    009F    414 _SCON_7	=	0x009f
                    00DE    415 G$I2CON_6$0$0 == 0x00de
                    00DE    416 _I2CON_6	=	0x00de
                    00DD    417 G$I2CON_5$0$0 == 0x00dd
                    00DD    418 _I2CON_5	=	0x00dd
                    00DC    419 G$I2CON_4$0$0 == 0x00dc
                    00DC    420 _I2CON_4	=	0x00dc
                    00DB    421 G$I2CON_3$0$0 == 0x00db
                    00DB    422 _I2CON_3	=	0x00db
                    00DA    423 G$I2CON_2$0$0 == 0x00da
                    00DA    424 _I2CON_2	=	0x00da
                    00D8    425 G$I2CON_0$0$0 == 0x00d8
                    00D8    426 _I2CON_0	=	0x00d8
                    0080    427 G$P0_0$0$0 == 0x0080
                    0080    428 _P0_0	=	0x0080
                    0081    429 G$P0_1$0$0 == 0x0081
                    0081    430 _P0_1	=	0x0081
                    0082    431 G$P0_2$0$0 == 0x0082
                    0082    432 _P0_2	=	0x0082
                    0083    433 G$P0_3$0$0 == 0x0083
                    0083    434 _P0_3	=	0x0083
                    0084    435 G$P0_4$0$0 == 0x0084
                    0084    436 _P0_4	=	0x0084
                    0085    437 G$P0_5$0$0 == 0x0085
                    0085    438 _P0_5	=	0x0085
                    0086    439 G$P0_6$0$0 == 0x0086
                    0086    440 _P0_6	=	0x0086
                    0087    441 G$P0_7$0$0 == 0x0087
                    0087    442 _P0_7	=	0x0087
                    0090    443 G$P1_0$0$0 == 0x0090
                    0090    444 _P1_0	=	0x0090
                    0091    445 G$P1_1$0$0 == 0x0091
                    0091    446 _P1_1	=	0x0091
                    0092    447 G$P1_2$0$0 == 0x0092
                    0092    448 _P1_2	=	0x0092
                    0093    449 G$P1_3$0$0 == 0x0093
                    0093    450 _P1_3	=	0x0093
                    0094    451 G$P1_4$0$0 == 0x0094
                    0094    452 _P1_4	=	0x0094
                    0095    453 G$P1_5$0$0 == 0x0095
                    0095    454 _P1_5	=	0x0095
                    0096    455 G$P1_6$0$0 == 0x0096
                    0096    456 _P1_6	=	0x0096
                    0097    457 G$P1_7$0$0 == 0x0097
                    0097    458 _P1_7	=	0x0097
                    00B0    459 G$P3_0$0$0 == 0x00b0
                    00B0    460 _P3_0	=	0x00b0
                    00B1    461 G$P3_1$0$0 == 0x00b1
                    00B1    462 _P3_1	=	0x00b1
                            463 ;--------------------------------------------------------
                            464 ; overlayable register banks
                            465 ;--------------------------------------------------------
                            466 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     467 	.ds 8
                            468 ;--------------------------------------------------------
                            469 ; overlayable bit register bank
                            470 ;--------------------------------------------------------
                            471 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     472 bits:
   0023                     473 	.ds 1
                    8000    474 	b0 = bits[0]
                    8100    475 	b1 = bits[1]
                    8200    476 	b2 = bits[2]
                    8300    477 	b3 = bits[3]
                    8400    478 	b4 = bits[4]
                    8500    479 	b5 = bits[5]
                    8600    480 	b6 = bits[6]
                    8700    481 	b7 = bits[7]
                            482 ;--------------------------------------------------------
                            483 ; internal ram data
                            484 ;--------------------------------------------------------
                            485 	.area DSEG    (DATA)
                    0000    486 G$portbuffer$0$0==.
   0024                     487 _portbuffer::
   0024                     488 	.ds 1
                    0001    489 G$p0h$0$0==.
   0025                     490 _p0h::
   0025                     491 	.ds 1
                    0002    492 G$objstate$0$0==.
   0026                     493 _objstate::
   0026                     494 	.ds 2
                    0004    495 G$blocked$0$0==.
   0028                     496 _blocked::
   0028                     497 	.ds 1
                    0005    498 G$timer_base$0$0==.
   0029                     499 _timer_base::
   0029                     500 	.ds 1
                    0006    501 G$timer_state$0$0==.
   002A                     502 _timer_state::
   002A                     503 	.ds 1
                    0007    504 G$timer$0$0==.
   002B                     505 _timer::
   002B                     506 	.ds 2
                    0009    507 G$timerbase$0$0==.
   002D                     508 _timerbase::
   002D                     509 	.ds 9
                    0012    510 G$timercnt$0$0==.
   0036                     511 _timercnt::
   0036                     512 	.ds 9
                    001B    513 G$timerstate$0$0==.
   003F                     514 _timerstate::
   003F                     515 	.ds 9
                    0024    516 G$pinnoX4$0$0==.
   0048                     517 _pinnoX4::
   0048                     518 	.ds 1
                    0025    519 G$para_adr$0$0==.
   0049                     520 _para_adr::
   0049                     521 	.ds 1
                    0026    522 G$pinno$0$0==.
   004A                     523 _pinno::
   004A                     524 	.ds 1
                    0027    525 G$para_value$0$0==.
   004B                     526 _para_value::
   004B                     527 	.ds 1
                    0008    528 G$objectvalue_l$0$0 == 0x0008
                    0008    529 _objectvalue_l	=	0x0008
                    0010    530 G$objectvalue_h$0$0 == 0x0010
                    0010    531 _objectvalue_h	=	0x0010
                    0018    532 G$Sperre$0$0 == 0x0018
                    0018    533 _Sperre	=	0x0018
                    0019    534 G$zaehlervalue$0$0 == 0x0019
                    0019    535 _zaehlervalue	=	0x0019
                    001E    536 G$schrittzaehler$0$0 == 0x001e
                    001E    537 _schrittzaehler	=	0x001e
                            538 ;--------------------------------------------------------
                            539 ; overlayable items in internal ram 
                            540 ;--------------------------------------------------------
                            541 	.area OSEG    (OVR,DATA)
                            542 ;--------------------------------------------------------
                            543 ; indirectly addressable internal ram data
                            544 ;--------------------------------------------------------
                            545 	.area ISEG    (DATA)
                            546 ;--------------------------------------------------------
                            547 ; absolute internal ram data
                            548 ;--------------------------------------------------------
                            549 	.area IABS    (ABS,DATA)
                            550 	.area IABS    (ABS,DATA)
                            551 ;--------------------------------------------------------
                            552 ; bit data
                            553 ;--------------------------------------------------------
                            554 	.area BSEG    (BIT)
                    0000    555 G$objval$0$0==.
   0000                     556 _objval::
   0000                     557 	.ds 1
                    0001    558 G$jobj$0$0==.
   0001                     559 _jobj::
   0001                     560 	.ds 1
                    0002    561 G$st_Flanke$0$0==.
   0002                     562 _st_Flanke::
   0002                     563 	.ds 1
                            564 ;--------------------------------------------------------
                            565 ; paged external ram data
                            566 ;--------------------------------------------------------
                            567 	.area PSEG    (PAG,XDATA)
                            568 ;--------------------------------------------------------
                            569 ; external ram data
                            570 ;--------------------------------------------------------
                            571 	.area XSEG    (XDATA)
                            572 ;--------------------------------------------------------
                            573 ; absolute external ram data
                            574 ;--------------------------------------------------------
                            575 	.area XABS    (ABS,XDATA)
                            576 ;--------------------------------------------------------
                            577 ; external initialized ram data
                            578 ;--------------------------------------------------------
                            579 	.area XISEG   (XDATA)
                            580 	.area HOME    (CODE)
                            581 	.area GSINIT0 (CODE)
                            582 	.area GSINIT1 (CODE)
                            583 	.area GSINIT2 (CODE)
                            584 	.area GSINIT3 (CODE)
                            585 	.area GSINIT4 (CODE)
                            586 	.area GSINIT5 (CODE)
                            587 	.area GSINIT  (CODE)
                            588 	.area GSFINAL (CODE)
                            589 	.area CSEG    (CODE)
                            590 ;--------------------------------------------------------
                            591 ; global & static initialisations
                            592 ;--------------------------------------------------------
                            593 	.area HOME    (CODE)
                            594 	.area GSINIT  (CODE)
                            595 	.area GSFINAL (CODE)
                            596 	.area GSINIT  (CODE)
                    0000    597 	G$restart_app$0$0 ==.
                    0000    598 	C$fb_app_in8.c$45$1$1 ==.
                            599 ;	../fb_app_in8.c:45: __bit objval=0,jobj=0;
   007C C2 00               600 	clr	_objval
                    0002    601 	G$restart_app$0$0 ==.
                    0002    602 	C$fb_app_in8.c$45$1$1 ==.
                            603 ;	../fb_app_in8.c:45: __bit st_Flanke=0;
   007E C2 01               604 	clr	_jobj
                    0004    605 	G$restart_app$0$0 ==.
                    0004    606 	C$fb_app_in8.c$46$1$1 ==.
                            607 ;	../fb_app_in8.c:46: 
   0080 C2 02               608 	clr	_st_Flanke
                            609 ;--------------------------------------------------------
                            610 ; Home
                            611 ;--------------------------------------------------------
                            612 	.area HOME    (CODE)
                            613 	.area HOME    (CODE)
                            614 ;--------------------------------------------------------
                            615 ; code
                            616 ;--------------------------------------------------------
                            617 	.area CSEG    (CODE)
                            618 ;------------------------------------------------------------
                            619 ;Allocation info for local variables in function 'pin_changed'
                            620 ;------------------------------------------------------------
                            621 ;pin_no                    Allocated to registers 
                            622 ;maxzaehler                Allocated to registers r5 r3 
                            623 ;tmp                       Allocated to registers r4 
                            624 ;objoffset                 Allocated to registers 
                            625 ;typ                       Allocated to registers 
                            626 ;n                         Allocated to registers r7 
                            627 ;------------------------------------------------------------
                    0000    628 	G$pin_changed$0$0 ==.
                    0000    629 	C$fb_app_in8.c$48$0$0 ==.
                            630 ;	../fb_app_in8.c:48: void pin_changed(unsigned char pin_no)
                            631 ;	-----------------------------------------
                            632 ;	 function pin_changed
                            633 ;	-----------------------------------------
   0436                     634 _pin_changed:
                    0007    635 	ar7 = 0x07
                    0006    636 	ar6 = 0x06
                    0005    637 	ar5 = 0x05
                    0004    638 	ar4 = 0x04
                    0003    639 	ar3 = 0x03
                    0002    640 	ar2 = 0x02
                    0001    641 	ar1 = 0x01
                    0000    642 	ar0 = 0x00
   0436 85 82 4A            643 	mov	_pinno,dpl
                    0003    644 	C$fb_app_in8.c$58$1$1 ==.
                            645 ;	../fb_app_in8.c:58: timer_base=0;
                    0003    646 	C$fb_app_in8.c$59$1$1 ==.
                            647 ;	../fb_app_in8.c:59: para_value=0;
                    0003    648 	C$fb_app_in8.c$62$1$1 ==.
                            649 ;	../fb_app_in8.c:62: pinnoX4=pinno*4;
   0439 E4                  650 	clr	a
   043A F5 29               651 	mov	_timer_base,a
   043C F5 4B               652 	mov	_para_value,a
   043E E5 4A               653 	mov	a,_pinno
   0440 25 4A               654 	add	a,_pinno
   0442 25 E0               655 	add	a,acc
                    000E    656 	C$fb_app_in8.c$63$1$1 ==.
                            657 ;	../fb_app_in8.c:63: para_adr=0xD5+(pinnoX4);
   0444 F5 48               658 	mov	_pinnoX4,a
   0446 24 D5               659 	add	a,#0xD5
   0448 F5 49               660 	mov	_para_adr,a
                    0014    661 	C$fb_app_in8.c$66$1$1 ==.
                            662 ;	../fb_app_in8.c:66: if (debounce(pinno))			// Entprellzeit abwarten und prüfen
   044A 85 4A 82            663 	mov	dpl,_pinno
   044D 12 0C 05            664 	lcall	_debounce
   0450 E5 82               665 	mov	a,dpl
   0452 70 03               666 	jnz	00248$
   0454 02 09 77            667 	ljmp	00200$
   0457                     668 00248$:
                    0021    669 	C$fb_app_in8.c$68$2$2 ==.
                            670 ;	../fb_app_in8.c:68: timer_base=(eeprom[0xF6+((pinno+1)>>1)]>>(4*((pinno&0x01)^0x01)))&0x07  ;
   0457 AE 4A               671 	mov	r6,_pinno
   0459 7F 00               672 	mov	r7,#0x00
   045B 0E                  673 	inc	r6
   045C BE 00 01            674 	cjne	r6,#0x00,00249$
   045F 0F                  675 	inc	r7
   0460                     676 00249$:
   0460 EF                  677 	mov	a,r7
   0461 A2 E7               678 	mov	c,acc.7
   0463 13                  679 	rrc	a
   0464 CE                  680 	xch	a,r6
   0465 13                  681 	rrc	a
   0466 CE                  682 	xch	a,r6
   0467 74 F6               683 	mov	a,#0xF6
   0469 2E                  684 	add	a,r6
   046A 90 1D 00            685 	mov	dptr,#_eeprom
   046D 93                  686 	movc	a,@a+dptr
   046E FF                  687 	mov	r7,a
   046F 74 01               688 	mov	a,#0x01
   0471 55 4A               689 	anl	a,_pinno
   0473 64 01               690 	xrl	a,#0x01
   0475 75 F0 04            691 	mov	b,#0x04
   0478 A4                  692 	mul	ab
   0479 F5 F0               693 	mov	b,a
   047B 05 F0               694 	inc	b
   047D EF                  695 	mov	a,r7
   047E 80 02               696 	sjmp	00251$
   0480                     697 00250$:
   0480 C3                  698 	clr	c
   0481 13                  699 	rrc	a
   0482                     700 00251$:
   0482 D5 F0 FB            701 	djnz	b,00250$
   0485 54 07               702 	anl	a,#0x07
   0487 F5 29               703 	mov	_timer_base,a
                    0053    704 	C$fb_app_in8.c$69$2$2 ==.
                            705 ;	../fb_app_in8.c:69: st_Flanke=(((portbuffer>>pinno)&0x01)==0) && (((p0h>>pinno)&0x01)==1);
   0489 85 4A F0            706 	mov	b,_pinno
   048C 05 F0               707 	inc	b
   048E E5 24               708 	mov	a,_portbuffer
   0490 80 02               709 	sjmp	00253$
   0492                     710 00252$:
   0492 C3                  711 	clr	c
   0493 13                  712 	rrc	a
   0494                     713 00253$:
   0494 D5 F0 FB            714 	djnz	b,00252$
   0497 54 01               715 	anl	a,#0x01
   0499 FF                  716 	mov	r7,a
   049A B4 01 00            717 	cjne	a,#0x01,00254$
   049D                     718 00254$:
   049D E4                  719 	clr	a
   049E 33                  720 	rlc	a
   049F FF                  721 	mov	r7,a
   04A0 60 16               722 	jz	00202$
   04A2 85 4A F0            723 	mov	b,_pinno
   04A5 05 F0               724 	inc	b
   04A7 E5 25               725 	mov	a,_p0h
   04A9 80 02               726 	sjmp	00257$
   04AB                     727 00256$:
   04AB C3                  728 	clr	c
   04AC 13                  729 	rrc	a
   04AD                     730 00257$:
   04AD D5 F0 FB            731 	djnz	b,00256$
   04B0 54 01               732 	anl	a,#0x01
   04B2 FF                  733 	mov	r7,a
   04B3 BF 01 02            734 	cjne	r7,#0x01,00258$
   04B6 80 04               735 	sjmp	00203$
   04B8                     736 00258$:
   04B8                     737 00202$:
   04B8 C2 18               738 	clr	b0
   04BA 80 02               739 	sjmp	00204$
   04BC                     740 00203$:
   04BC D2 18               741 	setb	b0
   04BE                     742 00204$:
   04BE A2 18               743 	mov	c,b0
   04C0 92 02               744 	mov	_st_Flanke,c
                    008C    745 	C$fb_app_in8.c$70$2$2 ==.
                            746 ;	../fb_app_in8.c:70: timer_state=timerstate[pinno];
   04C2 E5 4A               747 	mov	a,_pinno
   04C4 24 3F               748 	add	a,#_timerstate
   04C6 F9                  749 	mov	r1,a
   04C7 87 2A               750 	mov	_timer_state,@r1
                    0093    751 	C$fb_app_in8.c$71$2$2 ==.
                            752 ;	../fb_app_in8.c:71: switch ((eeprom[0xCE+(pinno>>1)] >> ((pinno & 0x01)*4)) & 0x0F)	// Funktion des Eingangs
   04C9 E5 4A               753 	mov	a,_pinno
   04CB C3                  754 	clr	c
   04CC 13                  755 	rrc	a
   04CD 24 CE               756 	add	a,#0xCE
   04CF 90 1D 00            757 	mov	dptr,#_eeprom
   04D2 93                  758 	movc	a,@a+dptr
   04D3 FF                  759 	mov	r7,a
   04D4 74 01               760 	mov	a,#0x01
   04D6 55 4A               761 	anl	a,_pinno
   04D8 75 F0 04            762 	mov	b,#0x04
   04DB A4                  763 	mul	ab
   04DC F5 F0               764 	mov	b,a
   04DE 05 F0               765 	inc	b
   04E0 EF                  766 	mov	a,r7
   04E1 80 02               767 	sjmp	00260$
   04E3                     768 00259$:
   04E3 C3                  769 	clr	c
   04E4 13                  770 	rrc	a
   04E5                     771 00260$:
   04E5 D5 F0 FB            772 	djnz	b,00259$
   04E8 54 0F               773 	anl	a,#0x0F
   04EA FF                  774 	mov	r7,a
   04EB BF 01 02            775 	cjne	r7,#0x01,00261$
   04EE 80 1A               776 	sjmp	00101$
   04F0                     777 00261$:
   04F0 BF 02 02            778 	cjne	r7,#0x02,00262$
   04F3 80 35               779 	sjmp	00102$
   04F5                     780 00262$:
   04F5 BF 03 03            781 	cjne	r7,#0x03,00263$
   04F8 02 06 6F            782 	ljmp	00124$
   04FB                     783 00263$:
   04FB BF 09 03            784 	cjne	r7,#0x09,00264$
   04FE 02 07 47            785 	ljmp	00138$
   0501                     786 00264$:
   0501 BF 0A 03            787 	cjne	r7,#0x0A,00265$
   0504 02 08 88            788 	ljmp	00180$
   0507                     789 00265$:
   0507 02 09 70            790 	ljmp	00197$
                    00D4    791 	C$fb_app_in8.c$73$3$3 ==.
                            792 ;	../fb_app_in8.c:73: case 0x01:				// Funktion Schalten
   050A                     793 00101$:
                    00D4    794 	C$fb_app_in8.c$74$3$3 ==.
                            795 ;	../fb_app_in8.c:74: schalten(st_Flanke,pinno);			// Flanke Eingang x.1
   050A A2 02               796 	mov	c,_st_Flanke
   050C 92 F0               797 	mov	b[0],c
   050E 85 F0 23            798 	mov	bits,b
   0511 85 4A 82            799 	mov	dpl,_pinno
   0514 12 0B B0            800 	lcall	_schalten
                    00E1    801 	C$fb_app_in8.c$77$3$3 ==.
                            802 ;	../fb_app_in8.c:77: schalten(st_Flanke,pinno+8);		// Flanke Eingang x.2
   0517 74 08               803 	mov	a,#0x08
   0519 25 4A               804 	add	a,_pinno
   051B F5 82               805 	mov	dpl,a
   051D A2 02               806 	mov	c,_st_Flanke
   051F 92 F0               807 	mov	b[0],c
   0521 85 F0 23            808 	mov	bits,b
   0524 12 0B B0            809 	lcall	_schalten
                    00F1    810 	C$fb_app_in8.c$91$3$3 ==.
                            811 ;	../fb_app_in8.c:91: break;  
   0527 02 09 70            812 	ljmp	00197$
                    00F4    813 	C$fb_app_in8.c$92$3$3 ==.
                            814 ;	../fb_app_in8.c:92: case 0x02:				// Funktion Dimmen
   052A                     815 00102$:
                    00F4    816 	C$fb_app_in8.c$97$3$3 ==.
                            817 ;	../fb_app_in8.c:97: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
   052A 20 02 03            818 	jb	_st_Flanke,00266$
   052D 02 05 B3            819 	ljmp	00122$
   0530                     820 00266$:
                    00FA    821 	C$fb_app_in8.c$98$4$4 ==.
                            822 ;	../fb_app_in8.c:98: timercnt[pinno]=0x80+(eeprom[0xD7+(pinnoX4)]&0x7F);	// Faktor/Dauer			
   0530 E5 4A               823 	mov	a,_pinno
   0532 24 36               824 	add	a,#_timercnt
   0534 F9                  825 	mov	r1,a
   0535 74 D7               826 	mov	a,#0xD7
   0537 25 48               827 	add	a,_pinnoX4
   0539 90 1D 00            828 	mov	dptr,#_eeprom
   053C 93                  829 	movc	a,@a+dptr
   053D FF                  830 	mov	r7,a
   053E 74 7F               831 	mov	a,#0x7F
   0540 5F                  832 	anl	a,r7
   0541 24 80               833 	add	a,#0x80
   0543 F7                  834 	mov	@r1,a
                    010E    835 	C$fb_app_in8.c$99$4$4 ==.
                            836 ;	../fb_app_in8.c:99: timerbase[pinno]=timer_base;
   0544 E5 4A               837 	mov	a,_pinno
   0546 24 2D               838 	add	a,#_timerbase
   0548 F8                  839 	mov	r0,a
   0549 A6 29               840 	mov	@r0,_timer_base
                    0115    841 	C$fb_app_in8.c$101$4$4 ==.
                            842 ;	../fb_app_in8.c:101: objval=(read_obj_value(pinno+8)>>3)&0x01;
   054B 74 08               843 	mov	a,#0x08
   054D 25 4A               844 	add	a,_pinno
   054F F5 82               845 	mov	dpl,a
   0551 12 10 C9            846 	lcall	_read_obj_value
   0554 AC 82               847 	mov	r4,dpl
   0556 AD 83               848 	mov	r5,dph
   0558 AE F0               849 	mov	r6,b
   055A EC                  850 	mov	a,r4
   055B A2 E3               851 	mov	c,acc[3]
   055D E4                  852 	clr	a
   055E 33                  853 	rlc	a
   055F FC                  854 	mov	r4,a
   0560 24 FF               855 	add	a,#0xff
   0562 92 00               856 	mov	_objval,c
                    012E    857 	C$fb_app_in8.c$102$4$4 ==.
                            858 ;	../fb_app_in8.c:102: switch (eeprom[para_adr]&0x70) {
   0564 85 49 82            859 	mov	dpl,_para_adr
   0567 75 83 1D            860 	mov	dph,#(_eeprom >> 8)
   056A E4                  861 	clr	a
   056B 93                  862 	movc	a,@a+dptr
   056C FF                  863 	mov	r7,a
   056D 53 07 70            864 	anl	ar7,#0x70
   0570 BF 00 02            865 	cjne	r7,#0x00,00267$
   0573 80 0A               866 	sjmp	00103$
   0575                     867 00267$:
   0575 BF 10 02            868 	cjne	r7,#0x10,00268$
   0578 80 09               869 	sjmp	00105$
   057A                     870 00268$:
                    0144    871 	C$fb_app_in8.c$103$5$5 ==.
                            872 ;	../fb_app_in8.c:103: case 0x00:	// UM Dimmen
   057A BF 30 0A            873 	cjne	r7,#0x30,00106$
   057D 80 04               874 	sjmp	00105$
   057F                     875 00103$:
                    0149    876 	C$fb_app_in8.c$104$5$5 ==.
                            877 ;	../fb_app_in8.c:104: objval = !objval;	// Dimmrichtung ändern
   057F B2 00               878 	cpl	_objval
                    014B    879 	C$fb_app_in8.c$105$5$5 ==.
                            880 ;	../fb_app_in8.c:105: break;
                    014B    881 	C$fb_app_in8.c$107$5$5 ==.
                            882 ;	../fb_app_in8.c:107: case 0x30:
   0581 80 06               883 	sjmp	00107$
   0583                     884 00105$:
                    014D    885 	C$fb_app_in8.c$108$5$5 ==.
                            886 ;	../fb_app_in8.c:108: objval=1;
   0583 D2 00               887 	setb	_objval
                    014F    888 	C$fb_app_in8.c$109$5$5 ==.
                            889 ;	../fb_app_in8.c:109: break;
                    014F    890 	C$fb_app_in8.c$110$5$5 ==.
                            891 ;	../fb_app_in8.c:110: default:	
   0585 80 02               892 	sjmp	00107$
   0587                     893 00106$:
                    0151    894 	C$fb_app_in8.c$113$5$5 ==.
                            895 ;	../fb_app_in8.c:113: objval=0;
   0587 C2 00               896 	clr	_objval
                    0153    897 	C$fb_app_in8.c$114$4$4 ==.
                            898 ;	../fb_app_in8.c:114: }
   0589                     899 00107$:
                    0153    900 	C$fb_app_in8.c$115$4$4 ==.
                            901 ;	../fb_app_in8.c:115: if(objval){	// wenn heller dimmen soll
   0589 30 00 15            902 	jnb	_objval,00109$
                    0156    903 	C$fb_app_in8.c$116$5$6 ==.
                            904 ;	../fb_app_in8.c:116: timer_state = ((eeprom[para_adr+0x01]&0x38)>>3)+ 0x48;	// dimmen
   058C E5 49               905 	mov	a,_para_adr
   058E 04                  906 	inc	a
   058F 90 1D 00            907 	mov	dptr,#_eeprom
   0592 93                  908 	movc	a,@a+dptr
   0593 54 38               909 	anl	a,#0x38
   0595 C4                  910 	swap	a
   0596 23                  911 	rl	a
   0597 54 1F               912 	anl	a,#0x1F
   0599 FF                  913 	mov	r7,a
   059A 24 48               914 	add	a,#0x48
   059C F5 2A               915 	mov	_timer_state,a
   059E 02 09 70            916 	ljmp	00197$
   05A1                     917 00109$:
                    016B    918 	C$fb_app_in8.c$119$5$7 ==.
                            919 ;	../fb_app_in8.c:119: timer_state = (eeprom[para_adr+0x01]&0x07)+ 0x40;	// dimmen
   05A1 E5 49               920 	mov	a,_para_adr
   05A3 04                  921 	inc	a
   05A4 90 1D 00            922 	mov	dptr,#_eeprom
   05A7 93                  923 	movc	a,@a+dptr
   05A8 FF                  924 	mov	r7,a
   05A9 74 07               925 	mov	a,#0x07
   05AB 5F                  926 	anl	a,r7
   05AC 24 40               927 	add	a,#0x40
   05AE F5 2A               928 	mov	_timer_state,a
   05B0 02 09 70            929 	ljmp	00197$
   05B3                     930 00122$:
                    017D    931 	C$fb_app_in8.c$123$4$8 ==.
                            932 ;	../fb_app_in8.c:123: if ((timer_state & 0x50)== 0x40) {		// wenn delaytimer noch laeuft, dann Schalten, also EIS1 telegramm senden
   05B3 74 50               933 	mov	a,#0x50
   05B5 55 2A               934 	anl	a,_timer_state
   05B7 FF                  935 	mov	r7,a
   05B8 BF 40 54            936 	cjne	r7,#0x40,00119$
                    0185    937 	C$fb_app_in8.c$125$5$9 ==.
                            938 ;	../fb_app_in8.c:125: objval = read_obj_value(pinno);
   05BB 85 4A 82            939 	mov	dpl,_pinno
   05BE 12 10 C9            940 	lcall	_read_obj_value
   05C1 AC 82               941 	mov	r4,dpl
   05C3 AD 83               942 	mov	r5,dph
   05C5 AE F0               943 	mov	r6,b
   05C7 FF                  944 	mov	r7,a
   05C8 EC                  945 	mov	a,r4
   05C9 4D                  946 	orl	a,r5
   05CA 4E                  947 	orl	a,r6
   05CB 4F                  948 	orl	a,r7
   05CC 24 FF               949 	add	a,#0xff
   05CE 92 00               950 	mov	_objval,c
                    019A    951 	C$fb_app_in8.c$126$5$9 ==.
                            952 ;	../fb_app_in8.c:126: switch (eeprom[para_adr]&0x70) {//Bedienkonzept angucken
   05D0 85 49 82            953 	mov	dpl,_para_adr
   05D3 75 83 1D            954 	mov	dph,#(_eeprom >> 8)
   05D6 E4                  955 	clr	a
   05D7 93                  956 	movc	a,@a+dptr
   05D8 FF                  957 	mov	r7,a
   05D9 53 07 70            958 	anl	ar7,#0x70
   05DC BF 10 02            959 	cjne	r7,#0x10,00273$
   05DF 80 05               960 	sjmp	00111$
   05E1                     961 00273$:
                    01AB    962 	C$fb_app_in8.c$127$6$10 ==.
                            963 ;	../fb_app_in8.c:127: case 0x10:	// zweiflaechen ein
   05E1 BF 20 0A            964 	cjne	r7,#0x20,00113$
   05E4 80 04               965 	sjmp	00112$
   05E6                     966 00111$:
                    01B0    967 	C$fb_app_in8.c$128$6$10 ==.
                            968 ;	../fb_app_in8.c:128: objval=1;
   05E6 D2 00               969 	setb	_objval
                    01B2    970 	C$fb_app_in8.c$129$6$10 ==.
                            971 ;	../fb_app_in8.c:129: break;
                    01B2    972 	C$fb_app_in8.c$130$6$10 ==.
                            973 ;	../fb_app_in8.c:130: case 0x20:	// zweiflaechen aus
   05E8 80 06               974 	sjmp	00114$
   05EA                     975 00112$:
                    01B4    976 	C$fb_app_in8.c$131$6$10 ==.
                            977 ;	../fb_app_in8.c:131: objval=0;
   05EA C2 00               978 	clr	_objval
                    01B6    979 	C$fb_app_in8.c$132$6$10 ==.
                            980 ;	../fb_app_in8.c:132: break;
                    01B6    981 	C$fb_app_in8.c$133$6$10 ==.
                            982 ;	../fb_app_in8.c:133: default:	
   05EC 80 02               983 	sjmp	00114$
   05EE                     984 00113$:
                    01B8    985 	C$fb_app_in8.c$137$6$10 ==.
                            986 ;	../fb_app_in8.c:137: objval = !objval;
   05EE B2 00               987 	cpl	_objval
                    01BA    988 	C$fb_app_in8.c$138$5$9 ==.
                            989 ;	../fb_app_in8.c:138: }
   05F0                     990 00114$:
                    01BA    991 	C$fb_app_in8.c$139$5$9 ==.
                            992 ;	../fb_app_in8.c:139: write_send(pinno,objval);
   05F0 A2 00               993 	mov	c,_objval
   05F2 E4                  994 	clr	a
   05F3 33                  995 	rlc	a
   05F4 FE                  996 	mov	r6,a
   05F5 7F 00               997 	mov	r7,#0x00
   05F7 C0 06               998 	push	ar6
   05F9 C0 07               999 	push	ar7
   05FB 85 4A 82           1000 	mov	dpl,_pinno
   05FE 12 0F 5C           1001 	lcall	_write_send
   0601 15 81              1002 	dec	sp
   0603 15 81              1003 	dec	sp
                    01CF   1004 	C$fb_app_in8.c$140$5$9 ==.
                           1005 ;	../fb_app_in8.c:140: timercnt[pinno]=0;
   0605 E5 4A              1006 	mov	a,_pinno
   0607 24 36              1007 	add	a,#_timercnt
   0609 F8                 1008 	mov	r0,a
   060A 76 00              1009 	mov	@r0,#0x00
   060C 02 09 70           1010 	ljmp	00197$
   060F                    1011 00119$:
                    01D9   1012 	C$fb_app_in8.c$143$5$11 ==.
                           1013 ;	../fb_app_in8.c:143: tmp=read_obj_value(pinno+8);
   060F 74 08              1014 	mov	a,#0x08
   0611 25 4A              1015 	add	a,_pinno
   0613 F5 82              1016 	mov	dpl,a
   0615 12 10 C9           1017 	lcall	_read_obj_value
   0618 AC 82              1018 	mov	r4,dpl
   061A AD 83              1019 	mov	r5,dph
   061C AE F0              1020 	mov	r6,b
                    01E8   1021 	C$fb_app_in8.c$144$5$11 ==.
                           1022 ;	../fb_app_in8.c:144: if (eeprom[0xD5+(pinnoX4)] & 0x08) {	// ... natuerlich nur wenn parameter dementsprechend 
   061E 74 D5              1023 	mov	a,#0xD5
   0620 25 48              1024 	add	a,_pinnoX4
   0622 90 1D 00           1025 	mov	dptr,#_eeprom
   0625 93                 1026 	movc	a,@a+dptr
   0626 FF                 1027 	mov	r7,a
   0627 30 E3 19           1028 	jnb	acc.3,00116$
                    01F4   1029 	C$fb_app_in8.c$145$6$12 ==.
                           1030 ;	../fb_app_in8.c:145: write_send(pinno+8, tmp & 0x08);		// Stop Telegramm
   062A 74 08              1031 	mov	a,#0x08
   062C 5C                 1032 	anl	a,r4
   062D FF                 1033 	mov	r7,a
   062E 7E 00              1034 	mov	r6,#0x00
   0630 74 08              1035 	mov	a,#0x08
   0632 25 4A              1036 	add	a,_pinno
   0634 F5 82              1037 	mov	dpl,a
   0636 C0 07              1038 	push	ar7
   0638 C0 06              1039 	push	ar6
   063A 12 0F 5C           1040 	lcall	_write_send
   063D 15 81              1041 	dec	sp
   063F 15 81              1042 	dec	sp
   0641 80 1F              1043 	sjmp	00117$
   0643                    1044 00116$:
                    020D   1045 	C$fb_app_in8.c$147$5$11 ==.
                           1046 ;	../fb_app_in8.c:147: else write_obj_value(pinno+8,tmp & 0x08);	// auch wenn Stopp Telegramm nicht gesendet wird, Objektwert auf 0 setzen
   0643 74 08              1047 	mov	a,#0x08
   0645 5C                 1048 	anl	a,r4
   0646 FF                 1049 	mov	r7,a
   0647 E4                 1050 	clr	a
   0648 FE                 1051 	mov	r6,a
   0649 FD                 1052 	mov	r5,a
   064A FB                 1053 	mov	r3,a
   064B 74 08              1054 	mov	a,#0x08
   064D 25 4A              1055 	add	a,_pinno
   064F F5 82              1056 	mov	dpl,a
   0651 C0 07              1057 	push	ar7
   0653 C0 06              1058 	push	ar6
   0655 C0 05              1059 	push	ar5
   0657 C0 03              1060 	push	ar3
   0659 12 11 C5           1061 	lcall	_write_obj_value
   065C E5 81              1062 	mov	a,sp
   065E 24 FC              1063 	add	a,#0xfc
   0660 F5 81              1064 	mov	sp,a
   0662                    1065 00117$:
                    022C   1066 	C$fb_app_in8.c$148$5$11 ==.
                           1067 ;	../fb_app_in8.c:148: timer_state=0;
   0662 75 2A 00           1068 	mov	_timer_state,#0x00
                    022F   1069 	C$fb_app_in8.c$149$5$11 ==.
                           1070 ;	../fb_app_in8.c:149: timercnt[pinno]=0;
   0665 E5 4A              1071 	mov	a,_pinno
   0667 24 36              1072 	add	a,#_timercnt
   0669 F8                 1073 	mov	r0,a
   066A 76 00              1074 	mov	@r0,#0x00
                    0236   1075 	C$fb_app_in8.c$154$3$3 ==.
                           1076 ;	../fb_app_in8.c:154: break;
   066C 02 09 70           1077 	ljmp	00197$
                    0239   1078 	C$fb_app_in8.c$156$3$3 ==.
                           1079 ;	../fb_app_in8.c:156: case 0x03:				//Funktion Jalousie
   066F                    1080 00124$:
                    0239   1081 	C$fb_app_in8.c$160$3$3 ==.
                           1082 ;	../fb_app_in8.c:160: n=0xD8+(pinno*4);
   066F E5 4A              1083 	mov	a,_pinno
   0671 25 4A              1084 	add	a,_pinno
   0673 25 E0              1085 	add	a,acc
   0675 24 D8              1086 	add	a,#0xD8
                    0241   1087 	C$fb_app_in8.c$161$3$3 ==.
                           1088 ;	../fb_app_in8.c:161: para_value=(eeprom[n]&0x30)>>4;//Jalofunktion holen
   0677 FF                 1089 	mov	r7,a
   0678 F5 82              1090 	mov	dpl,a
   067A 75 83 1D           1091 	mov	dph,#(_eeprom >> 8)
   067D E4                 1092 	clr	a
   067E 93                 1093 	movc	a,@a+dptr
   067F 54 30              1094 	anl	a,#0x30
   0681 FE                 1095 	mov	r6,a
   0682 C4                 1096 	swap	a
   0683 54 0F              1097 	anl	a,#0x0F
   0685 F5 4B              1098 	mov	_para_value,a
                    0251   1099 	C$fb_app_in8.c$162$3$3 ==.
                           1100 ;	../fb_app_in8.c:162: switch (para_value){
   0687 74 01              1101 	mov	a,#0x01
   0689 B5 4B 02           1102 	cjne	a,_para_value,00276$
   068C 80 0E              1103 	sjmp	00125$
   068E                    1104 00276$:
   068E 74 02              1105 	mov	a,#0x02
   0690 B5 4B 02           1106 	cjne	a,_para_value,00277$
   0693 80 0B              1107 	sjmp	00126$
   0695                    1108 00277$:
   0695 74 03              1109 	mov	a,#0x03
                    0261   1110 	C$fb_app_in8.c$163$4$13 ==.
                           1111 ;	../fb_app_in8.c:163: case 1:		//auf
   0697 B5 4B 29           1112 	cjne	a,_para_value,00128$
   069A 80 08              1113 	sjmp	00127$
   069C                    1114 00125$:
                    0266   1115 	C$fb_app_in8.c$164$4$13 ==.
                           1116 ;	../fb_app_in8.c:164: jobj=0;
   069C C2 01              1117 	clr	_jobj
                    0268   1118 	C$fb_app_in8.c$165$4$13 ==.
                           1119 ;	../fb_app_in8.c:165: break;
                    0268   1120 	C$fb_app_in8.c$166$4$13 ==.
                           1121 ;	../fb_app_in8.c:166: case 2:		//ab
   069E 80 23              1122 	sjmp	00128$
   06A0                    1123 00126$:
                    026A   1124 	C$fb_app_in8.c$167$4$13 ==.
                           1125 ;	../fb_app_in8.c:167: jobj=1;
   06A0 D2 01              1126 	setb	_jobj
                    026C   1127 	C$fb_app_in8.c$168$4$13 ==.
                           1128 ;	../fb_app_in8.c:168: break;
                    026C   1129 	C$fb_app_in8.c$169$4$13 ==.
                           1130 ;	../fb_app_in8.c:169: case 3:		//UM
   06A2 80 1F              1131 	sjmp	00128$
   06A4                    1132 00127$:
                    026E   1133 	C$fb_app_in8.c$170$4$13 ==.
                           1134 ;	../fb_app_in8.c:170: jobj=read_obj_value(pinno+8)^0x01;//neues Jaloobj invers zum langzeit
   06A4 74 08              1135 	mov	a,#0x08
   06A6 25 4A              1136 	add	a,_pinno
   06A8 F5 82              1137 	mov	dpl,a
   06AA C0 07              1138 	push	ar7
   06AC 12 10 C9           1139 	lcall	_read_obj_value
   06AF AA 82              1140 	mov	r2,dpl
   06B1 AB 83              1141 	mov	r3,dph
   06B3 AD F0              1142 	mov	r5,b
   06B5 FE                 1143 	mov	r6,a
   06B6 D0 07              1144 	pop	ar7
   06B8 63 02 01           1145 	xrl	ar2,#0x01
   06BB EA                 1146 	mov	a,r2
   06BC 4B                 1147 	orl	a,r3
   06BD 4D                 1148 	orl	a,r5
   06BE 4E                 1149 	orl	a,r6
   06BF 24 FF              1150 	add	a,#0xff
   06C1 92 01              1151 	mov	_jobj,c
                    028D   1152 	C$fb_app_in8.c$172$3$3 ==.
                           1153 ;	../fb_app_in8.c:172: }
   06C3                    1154 00128$:
                    028D   1155 	C$fb_app_in8.c$173$3$3 ==.
                           1156 ;	../fb_app_in8.c:173: if (st_Flanke){// Taster gedrueckt -> schauen wie lange gehalten
   06C3 30 02 5A           1157 	jnb	_st_Flanke,00136$
                    0290   1158 	C$fb_app_in8.c$174$4$14 ==.
                           1159 ;	../fb_app_in8.c:174: if(eeprom[n]& 0x08){	//wenn Bedienkonzept lang-kurz ()
   06C6 8F 82              1160 	mov	dpl,r7
   06C8 75 83 1D           1161 	mov	dph,#(_eeprom >> 8)
   06CB E4                 1162 	clr	a
   06CC 93                 1163 	movc	a,@a+dptr
   06CD FE                 1164 	mov	r6,a
   06CE 30 E3 13           1165 	jnb	acc.3,00130$
                    029B   1166 	C$fb_app_in8.c$176$5$15 ==.
                           1167 ;	../fb_app_in8.c:176: timer_state = jobj+0x80;
   06D1 A2 01              1168 	mov	c,_jobj
   06D3 E4                 1169 	clr	a
   06D4 33                 1170 	rlc	a
   06D5 FE                 1171 	mov	r6,a
   06D6 24 80              1172 	add	a,#0x80
   06D8 F5 2A              1173 	mov	_timer_state,a
                    02A4   1174 	C$fb_app_in8.c$177$5$15 ==.
                           1175 ;	../fb_app_in8.c:177: timercnt[pinno]=0x80;//langzeit in delay_timer SOFORT ausführen
   06DA E5 4A              1176 	mov	a,_pinno
   06DC 24 36              1177 	add	a,#_timercnt
   06DE F8                 1178 	mov	r0,a
   06DF 76 80              1179 	mov	@r0,#0x80
   06E1 02 09 70           1180 	ljmp	00197$
   06E4                    1181 00130$:
                    02AE   1182 	C$fb_app_in8.c$180$5$16 ==.
                           1183 ;	../fb_app_in8.c:180: write_send( pinno, jobj);	// Kurzzeit telegramm immer bei Drücken senden
   06E4 A2 01              1184 	mov	c,_jobj
   06E6 E4                 1185 	clr	a
   06E7 33                 1186 	rlc	a
   06E8 FD                 1187 	mov	r5,a
   06E9 7E 00              1188 	mov	r6,#0x00
   06EB C0 05              1189 	push	ar5
   06ED C0 06              1190 	push	ar6
   06EF 85 4A 82           1191 	mov	dpl,_pinno
   06F2 12 0F 5C           1192 	lcall	_write_send
   06F5 15 81              1193 	dec	sp
   06F7 15 81              1194 	dec	sp
                    02C3   1195 	C$fb_app_in8.c$181$5$16 ==.
                           1196 ;	../fb_app_in8.c:181: timercnt[pinno]=0x80+eeprom[0xD6+(pinno*4)];//Faktor Dauer )
   06F9 E5 4A              1197 	mov	a,_pinno
   06FB 24 36              1198 	add	a,#_timercnt
   06FD F9                 1199 	mov	r1,a
   06FE E5 4A              1200 	mov	a,_pinno
   0700 25 4A              1201 	add	a,_pinno
   0702 25 E0              1202 	add	a,acc
   0704 24 D6              1203 	add	a,#0xD6
   0706 90 1D 00           1204 	mov	dptr,#_eeprom
   0709 93                 1205 	movc	a,@a+dptr
   070A 24 80              1206 	add	a,#0x80
   070C F7                 1207 	mov	@r1,a
                    02D7   1208 	C$fb_app_in8.c$182$5$16 ==.
                           1209 ;	../fb_app_in8.c:182: timerbase[pinno]=timer_base;
   070D E5 4A              1210 	mov	a,_pinno
   070F 24 2D              1211 	add	a,#_timerbase
   0711 F8                 1212 	mov	r0,a
   0712 A6 29              1213 	mov	@r0,_timer_base
                    02DE   1214 	C$fb_app_in8.c$185$5$16 ==.
                           1215 ;	../fb_app_in8.c:185: timer_state = jobj+0x80;
   0714 A2 01              1216 	mov	c,_jobj
   0716 E4                 1217 	clr	a
   0717 33                 1218 	rlc	a
   0718 FE                 1219 	mov	r6,a
   0719 24 80              1220 	add	a,#0x80
   071B F5 2A              1221 	mov	_timer_state,a
   071D 02 09 70           1222 	ljmp	00197$
   0720                    1223 00136$:
                    02EA   1224 	C$fb_app_in8.c$189$4$17 ==.
                           1225 ;	../fb_app_in8.c:189: if (timer_state & 0x10) write_send( pinno, jobj);	// wenn delaytimer noch laueft und in T2 ist, dann kurzzeit telegramm senden
   0720 E5 2A              1226 	mov	a,_timer_state
   0722 30 E4 18           1227 	jnb	acc.4,00133$
   0725 A2 01              1228 	mov	c,_jobj
   0727 E4                 1229 	clr	a
   0728 33                 1230 	rlc	a
   0729 FD                 1231 	mov	r5,a
   072A 7E 00              1232 	mov	r6,#0x00
   072C C0 05              1233 	push	ar5
   072E C0 06              1234 	push	ar6
   0730 85 4A 82           1235 	mov	dpl,_pinno
   0733 12 0F 5C           1236 	lcall	_write_send
   0736 15 81              1237 	dec	sp
   0738 15 81              1238 	dec	sp
   073A 02 09 70           1239 	ljmp	00197$
   073D                    1240 00133$:
                    0307   1241 	C$fb_app_in8.c$190$4$17 ==.
                           1242 ;	../fb_app_in8.c:190: else timercnt[pinno]=0;	// T2 bereits abgelaufen
   073D E5 4A              1243 	mov	a,_pinno
   073F 24 36              1244 	add	a,#_timercnt
   0741 F8                 1245 	mov	r0,a
   0742 76 00              1246 	mov	@r0,#0x00
                    030E   1247 	C$fb_app_in8.c$192$3$3 ==.
                           1248 ;	../fb_app_in8.c:192: break;
   0744 02 09 70           1249 	ljmp	00197$
                    0311   1250 	C$fb_app_in8.c$239$3$3 ==.
                           1251 ;	../fb_app_in8.c:239: case 0x09:
   0747                    1252 00138$:
                    0311   1253 	C$fb_app_in8.c$243$3$3 ==.
                           1254 ;	../fb_app_in8.c:243: n=eeprom[0xD5+(pinno*4)];// Parameter Flanke für Zählimpuls
   0747 E5 4A              1255 	mov	a,_pinno
   0749 25 4A              1256 	add	a,_pinno
   074B 25 E0              1257 	add	a,acc
   074D 24 D5              1258 	add	a,#0xD5
   074F 90 1D 00           1259 	mov	dptr,#_eeprom
   0752 93                 1260 	movc	a,@a+dptr
   0753 FE                 1261 	mov	r6,a
   0754 FF                 1262 	mov	r7,a
                    031F   1263 	C$fb_app_in8.c$244$3$3 ==.
                           1264 ;	../fb_app_in8.c:244: if (pinno<=1){// pinno 0-1 Zähleingnag
   0755 E5 4A              1265 	mov	a,_pinno
   0757 24 FE              1266 	add	a,#0xff - 0x01
   0759 40 49              1267 	jc	00178$
                    0325   1268 	C$fb_app_in8.c$245$4$18 ==.
                           1269 ;	../fb_app_in8.c:245: if ((n&0x01 && st_Flanke)||(n&0x02 &! st_Flanke)){
   075B EF                 1270 	mov	a,r7
   075C 30 E0 03           1271 	jnb	acc.0,00144$
   075F 20 02 12           1272 	jb	_st_Flanke,00141$
   0762                    1273 00144$:
   0762 74 02              1274 	mov	a,#0x02
   0764 5F                 1275 	anl	a,r7
   0765 FE                 1276 	mov	r6,a
   0766 A2 02              1277 	mov	c,_st_Flanke
   0768 B3                 1278 	cpl	c
   0769 92 18              1279 	mov  b0,c
   076B E4                 1280 	clr	a
   076C 33                 1281 	rlc	a
   076D FD                 1282 	mov	r5,a
   076E 5E                 1283 	anl	a,r6
   076F 70 03              1284 	jnz	00285$
   0771 02 09 70           1285 	ljmp	00197$
   0774                    1286 00285$:
   0774                    1287 00141$:
                    033E   1288 	C$fb_app_in8.c$246$5$19 ==.
                           1289 ;	../fb_app_in8.c:246: if (zaehlervalue[pinno]< 0xFFFF)zaehlervalue[pinno]++;
   0774 E5 4A              1290 	mov	a,_pinno
   0776 25 4A              1291 	add	a,_pinno
   0778 FE                 1292 	mov	r6,a
   0779 24 19              1293 	add	a,#_zaehlervalue
   077B F9                 1294 	mov	r1,a
   077C 87 03              1295 	mov	ar3,@r1
   077E 09                 1296 	inc	r1
   077F 87 05              1297 	mov	ar5,@r1
   0781 C3                 1298 	clr	c
   0782 EB                 1299 	mov	a,r3
   0783 94 FF              1300 	subb	a,#0xFF
   0785 ED                 1301 	mov	a,r5
   0786 94 FF              1302 	subb	a,#0xFF
   0788 40 03              1303 	jc	00286$
   078A 02 09 70           1304 	ljmp	00197$
   078D                    1305 00286$:
   078D EE                 1306 	mov	a,r6
   078E 24 19              1307 	add	a,#_zaehlervalue
   0790 F9                 1308 	mov	r1,a
   0791 87 05              1309 	mov	ar5,@r1
   0793 09                 1310 	inc	r1
   0794 87 06              1311 	mov	ar6,@r1
   0796 19                 1312 	dec	r1
   0797 0D                 1313 	inc	r5
   0798 BD 00 01           1314 	cjne	r5,#0x00,00287$
   079B 0E                 1315 	inc	r6
   079C                    1316 00287$:
   079C A7 05              1317 	mov	@r1,ar5
   079E 09                 1318 	inc	r1
   079F A7 06              1319 	mov	@r1,ar6
   07A1 02 09 70           1320 	ljmp	00197$
   07A4                    1321 00178$:
                    036E   1322 	C$fb_app_in8.c$250$4$20 ==.
                           1323 ;	../fb_app_in8.c:250: n=eeprom[0xD5+((pinno-2)*4)];// Parameter Flanke für Zählimpuls
   07A4 E5 4A              1324 	mov	a,_pinno
   07A6 24 FE              1325 	add	a,#0xFE
   07A8 25 E0              1326 	add	a,acc
   07AA 25 E0              1327 	add	a,acc
   07AC 24 D5              1328 	add	a,#0xD5
   07AE 90 1D 00           1329 	mov	dptr,#_eeprom
   07B1 93                 1330 	movc	a,@a+dptr
   07B2 FE                 1331 	mov	r6,a
                    037D   1332 	C$fb_app_in8.c$251$4$20 ==.
                           1333 ;	../fb_app_in8.c:251: if ((n&0x04 && st_Flanke)||(n&0x08 &! st_Flanke)){
   07B3 FF                 1334 	mov	r7,a
   07B4 30 E2 03           1335 	jnb	acc.2,00151$
   07B7 20 02 0F           1336 	jb	_st_Flanke,00148$
   07BA                    1337 00151$:
   07BA 74 08              1338 	mov	a,#0x08
   07BC 5F                 1339 	anl	a,r7
   07BD FE                 1340 	mov	r6,a
   07BE A2 02              1341 	mov	c,_st_Flanke
   07C0 B3                 1342 	cpl	c
   07C1 92 18              1343 	mov  b0,c
   07C3 E4                 1344 	clr	a
   07C4 33                 1345 	rlc	a
   07C5 FD                 1346 	mov	r5,a
   07C6 5E                 1347 	anl	a,r6
   07C7 60 44              1348 	jz	00149$
   07C9                    1349 00148$:
                    0393   1350 	C$fb_app_in8.c$252$5$21 ==.
                           1351 ;	../fb_app_in8.c:252: if (pinno==2){
   07C9 74 02              1352 	mov	a,#0x02
   07CB B5 4A 22           1353 	cjne	a,_pinno,00146$
                    0398   1354 	C$fb_app_in8.c$253$6$22 ==.
                           1355 ;	../fb_app_in8.c:253: zaehlervalue[0]=0;//pinno-2 , da die parameter den zählereingangen zugeordnet sind
   07CE E4                 1356 	clr	a
   07CF F5 19              1357 	mov	(_zaehlervalue + 0),a
   07D1 F5 1A              1358 	mov	(_zaehlervalue + 1),a
                    039D   1359 	C$fb_app_in8.c$254$6$22 ==.
                           1360 ;	../fb_app_in8.c:254: timercnt[0]=eeprom[0xD6]|0x80;//Torzeit setzen
   07D3 90 1D D6           1361 	mov	dptr,#(_eeprom + 0x00d6)
   07D6 E4                 1362 	clr	a
   07D7 93                 1363 	movc	a,@a+dptr
   07D8 FE                 1364 	mov	r6,a
   07D9 74 80              1365 	mov	a,#0x80
   07DB 4E                 1366 	orl	a,r6
   07DC F5 36              1367 	mov	_timercnt,a
                    03A8   1368 	C$fb_app_in8.c$255$6$22 ==.
                           1369 ;	../fb_app_in8.c:255: timerbase[0]=((eeprom[0xF6]&0xF0)>>4)|0x80;
   07DE 90 1D F6           1370 	mov	dptr,#(_eeprom + 0x00f6)
   07E1 E4                 1371 	clr	a
   07E2 93                 1372 	movc	a,@a+dptr
   07E3 54 F0              1373 	anl	a,#0xF0
   07E5 C4                 1374 	swap	a
   07E6 54 0F              1375 	anl	a,#0x0F
   07E8 FE                 1376 	mov	r6,a
   07E9 74 80              1377 	mov	a,#0x80
   07EB 4E                 1378 	orl	a,r6
   07EC F5 2D              1379 	mov	_timerbase,a
   07EE 80 1D              1380 	sjmp	00149$
   07F0                    1381 00146$:
                    03BA   1382 	C$fb_app_in8.c$258$6$23 ==.
                           1383 ;	../fb_app_in8.c:258: zaehlervalue[1]=0;//pinno-2 , da die parameter den zählereingangen zugeordnet sind
   07F0 E4                 1384 	clr	a
   07F1 F5 1B              1385 	mov	((_zaehlervalue + 0x0002) + 0),a
   07F3 F5 1C              1386 	mov	((_zaehlervalue + 0x0002) + 1),a
                    03BF   1387 	C$fb_app_in8.c$259$6$23 ==.
                           1388 ;	../fb_app_in8.c:259: timercnt[1]=eeprom[0xD6]|0x80;//Torzeit setzen
   07F5 90 1D D6           1389 	mov	dptr,#(_eeprom + 0x00d6)
   07F8 E4                 1390 	clr	a
   07F9 93                 1391 	movc	a,@a+dptr
   07FA FE                 1392 	mov	r6,a
   07FB 74 80              1393 	mov	a,#0x80
   07FD 4E                 1394 	orl	a,r6
   07FE F5 37              1395 	mov	(_timercnt + 0x0001),a
                    03CA   1396 	C$fb_app_in8.c$260$6$23 ==.
                           1397 ;	../fb_app_in8.c:260: timerbase[1]=((eeprom[0xF7]&0x0F))|0x80;
   0800 90 1D F7           1398 	mov	dptr,#(_eeprom + 0x00f7)
   0803 E4                 1399 	clr	a
   0804 93                 1400 	movc	a,@a+dptr
   0805 FE                 1401 	mov	r6,a
   0806 74 0F              1402 	mov	a,#0x0F
   0808 5E                 1403 	anl	a,r6
   0809 44 80              1404 	orl	a,#0x80
   080B F5 2E              1405 	mov	(_timerbase + 0x0001),a
   080D                    1406 00149$:
                    03D7   1407 	C$fb_app_in8.c$264$4$20 ==.
                           1408 ;	../fb_app_in8.c:264: n = n & 0xF0;
   080D 53 07 F0           1409 	anl	ar7,#0xF0
                    03DA   1410 	C$fb_app_in8.c$265$4$20 ==.
                           1411 ;	../fb_app_in8.c:265: tmp=0;
   0810 7C 00              1412 	mov	r4,#0x00
                    03DC   1413 	C$fb_app_in8.c$266$4$20 ==.
                           1414 ;	../fb_app_in8.c:266: if (st_Flanke){// telegramme bei synceingang
   0812 30 02 20           1415 	jnb	_st_Flanke,00171$
                    03DF   1416 	C$fb_app_in8.c$267$5$24 ==.
                           1417 ;	../fb_app_in8.c:267: if(n==0x40||n==0x60)tmp=0x11;
   0815 BF 40 02           1418 	cjne	r7,#0x40,00294$
   0818 80 03              1419 	sjmp	00152$
   081A                    1420 00294$:
   081A BF 60 02           1421 	cjne	r7,#0x60,00153$
   081D                    1422 00152$:
   081D 7C 11              1423 	mov	r4,#0x11
   081F                    1424 00153$:
                    03E9   1425 	C$fb_app_in8.c$268$5$24 ==.
                           1426 ;	../fb_app_in8.c:268: if(n==0x80||n==0x90)tmp=0x10;
   081F BF 80 02           1427 	cjne	r7,#0x80,00297$
   0822 80 03              1428 	sjmp	00155$
   0824                    1429 00297$:
   0824 BF 90 02           1430 	cjne	r7,#0x90,00156$
   0827                    1431 00155$:
   0827 7C 10              1432 	mov	r4,#0x10
   0829                    1433 00156$:
                    03F3   1434 	C$fb_app_in8.c$269$5$24 ==.
                           1435 ;	../fb_app_in8.c:269: if(n==0xC0||n==0xF0)tmp=0x12;
   0829 BF C0 02           1436 	cjne	r7,#0xC0,00300$
   082C 80 03              1437 	sjmp	00158$
   082E                    1438 00300$:
   082E BF F0 22           1439 	cjne	r7,#0xF0,00172$
   0831                    1440 00158$:
   0831 7C 12              1441 	mov	r4,#0x12
   0833 80 1E              1442 	sjmp	00172$
   0835                    1443 00171$:
                    03FF   1444 	C$fb_app_in8.c$272$5$25 ==.
                           1445 ;	../fb_app_in8.c:272: if(n==0x10||n==0x90)tmp=0x11;
   0835 BF 10 02           1446 	cjne	r7,#0x10,00303$
   0838 80 03              1447 	sjmp	00161$
   083A                    1448 00303$:
   083A BF 90 02           1449 	cjne	r7,#0x90,00162$
   083D                    1450 00161$:
   083D 7C 11              1451 	mov	r4,#0x11
   083F                    1452 00162$:
                    0409   1453 	C$fb_app_in8.c$273$5$25 ==.
                           1454 ;	../fb_app_in8.c:273: if(n==0x20||n==0x60)tmp=0x10;
   083F BF 20 02           1455 	cjne	r7,#0x20,00306$
   0842 80 03              1456 	sjmp	00164$
   0844                    1457 00306$:
   0844 BF 60 02           1458 	cjne	r7,#0x60,00165$
   0847                    1459 00164$:
   0847 7C 10              1460 	mov	r4,#0x10
   0849                    1461 00165$:
                    0413   1462 	C$fb_app_in8.c$274$5$25 ==.
                           1463 ;	../fb_app_in8.c:274: if(n==0x30||n==0xF0)tmp=0x12;
   0849 BF 30 02           1464 	cjne	r7,#0x30,00309$
   084C 80 03              1465 	sjmp	00167$
   084E                    1466 00309$:
   084E BF F0 02           1467 	cjne	r7,#0xF0,00172$
   0851                    1468 00167$:
   0851 7C 12              1469 	mov	r4,#0x12
   0853                    1470 00172$:
                    041D   1471 	C$fb_app_in8.c$276$4$20 ==.
                           1472 ;	../fb_app_in8.c:276: if (tmp==0x12)tmp= (read_obj_value(pinno)^0x01)|0x10;
   0853 BC 12 15           1473 	cjne	r4,#0x12,00174$
   0856 85 4A 82           1474 	mov	dpl,_pinno
   0859 12 10 C9           1475 	lcall	_read_obj_value
   085C AA 82              1476 	mov	r2,dpl
   085E AB 83              1477 	mov	r3,dph
   0860 AD F0              1478 	mov	r5,b
   0862 FE                 1479 	mov	r6,a
   0863 63 02 01           1480 	xrl	ar2,#0x01
   0866 43 02 10           1481 	orl	ar2,#0x10
   0869 8A 04              1482 	mov	ar4,r2
   086B                    1483 00174$:
                    0435   1484 	C$fb_app_in8.c$277$4$20 ==.
                           1485 ;	../fb_app_in8.c:277: if(tmp)write_send(pinno,tmp&0x01);
   086B EC                 1486 	mov	a,r4
   086C 70 03              1487 	jnz	00314$
   086E 02 09 70           1488 	ljmp	00197$
   0871                    1489 00314$:
   0871 74 01              1490 	mov	a,#0x01
   0873 5C                 1491 	anl	a,r4
   0874 FE                 1492 	mov	r6,a
   0875 7D 00              1493 	mov	r5,#0x00
   0877 C0 06              1494 	push	ar6
   0879 C0 05              1495 	push	ar5
   087B 85 4A 82           1496 	mov	dpl,_pinno
   087E 12 0F 5C           1497 	lcall	_write_send
   0881 15 81              1498 	dec	sp
   0883 15 81              1499 	dec	sp
                    044F   1500 	C$fb_app_in8.c$279$3$3 ==.
                           1501 ;	../fb_app_in8.c:279: break;
   0885 02 09 70           1502 	ljmp	00197$
                    0452   1503 	C$fb_app_in8.c$280$3$3 ==.
                           1504 ;	../fb_app_in8.c:280: case 10:// ### Schaltzähler ###
   0888                    1505 00180$:
                    0452   1506 	C$fb_app_in8.c$281$3$3 ==.
                           1507 ;	../fb_app_in8.c:281: n=eeprom[0xD5+(pinno*4)];// Parameter Flanke für Zählimpuls
   0888 E5 4A              1508 	mov	a,_pinno
   088A 25 4A              1509 	add	a,_pinno
   088C 25 E0              1510 	add	a,acc
   088E 24 D5              1511 	add	a,#0xD5
   0890 90 1D 00           1512 	mov	dptr,#_eeprom
   0893 93                 1513 	movc	a,@a+dptr
   0894 FE                 1514 	mov	r6,a
                    045F   1515 	C$fb_app_in8.c$282$3$3 ==.
                           1516 ;	../fb_app_in8.c:282: if ((n&0x01 && st_Flanke)||(n&0x02 &! st_Flanke)){
   0895 FF                 1517 	mov	r7,a
   0896 30 E0 03           1518 	jnb	acc.0,00195$
   0899 20 02 12           1519 	jb	_st_Flanke,00192$
   089C                    1520 00195$:
   089C 74 02              1521 	mov	a,#0x02
   089E 5F                 1522 	anl	a,r7
   089F FE                 1523 	mov	r6,a
   08A0 A2 02              1524 	mov	c,_st_Flanke
   08A2 B3                 1525 	cpl	c
   08A3 92 18              1526 	mov  b0,c
   08A5 E4                 1527 	clr	a
   08A6 33                 1528 	rlc	a
   08A7 FD                 1529 	mov	r5,a
   08A8 5E                 1530 	anl	a,r6
   08A9 70 03              1531 	jnz	00317$
   08AB 02 09 70           1532 	ljmp	00197$
   08AE                    1533 00317$:
   08AE                    1534 00192$:
                    0478   1535 	C$fb_app_in8.c$283$2$1 ==.
                           1536 ;	../fb_app_in8.c:283: zaehlervalue[pinno]++;// zählwert erhöhen
   08AE C0 07              1537 	push	ar7
   08B0 E5 4A              1538 	mov	a,_pinno
   08B2 25 4A              1539 	add	a,_pinno
   08B4 FE                 1540 	mov	r6,a
   08B5 24 19              1541 	add	a,#_zaehlervalue
   08B7 F9                 1542 	mov	r1,a
   08B8 87 03              1543 	mov	ar3,@r1
   08BA 09                 1544 	inc	r1
   08BB 87 05              1545 	mov	ar5,@r1
   08BD 19                 1546 	dec	r1
   08BE 0B                 1547 	inc	r3
   08BF BB 00 01           1548 	cjne	r3,#0x00,00318$
   08C2 0D                 1549 	inc	r5
   08C3                    1550 00318$:
   08C3 A7 03              1551 	mov	@r1,ar3
   08C5 09                 1552 	inc	r1
   08C6 A7 05              1553 	mov	@r1,ar5
                    0492   1554 	C$fb_app_in8.c$284$4$26 ==.
                           1555 ;	../fb_app_in8.c:284: schrittzaehler[pinno]++;// schrittzähler erhöhen
   08C8 E5 4A              1556 	mov	a,_pinno
   08CA 24 1E              1557 	add	a,#_schrittzaehler
   08CC F9                 1558 	mov	r1,a
   08CD 07                 1559 	inc	@r1
   08CE E7                 1560 	mov	a,@r1
                    0499   1561 	C$fb_app_in8.c$285$4$26 ==.
                           1562 ;	../fb_app_in8.c:285: maxzaehler=(eeprom[para_adr +2]<<8) +eeprom[para_adr+3];
   08CF 74 02              1563 	mov	a,#0x02
   08D1 25 49              1564 	add	a,_para_adr
   08D3 90 1D 00           1565 	mov	dptr,#_eeprom
   08D6 93                 1566 	movc	a,@a+dptr
   08D7 FB                 1567 	mov	r3,a
   08D8 7D 00              1568 	mov	r5,#0x00
   08DA 74 03              1569 	mov	a,#0x03
   08DC 25 49              1570 	add	a,_para_adr
   08DE 90 1D 00           1571 	mov	dptr,#_eeprom
   08E1 93                 1572 	movc	a,@a+dptr
   08E2 FA                 1573 	mov	r2,a
   08E3 7F 00              1574 	mov	r7,#0x00
   08E5 2D                 1575 	add	a,r5
   08E6 FD                 1576 	mov	r5,a
   08E7 EF                 1577 	mov	a,r7
   08E8 3B                 1578 	addc	a,r3
   08E9 FB                 1579 	mov	r3,a
                    04B4   1580 	C$fb_app_in8.c$287$4$26 ==.
                           1581 ;	../fb_app_in8.c:287: if (zaehlervalue[pinno]>=maxzaehler){// wenn zählwert erreicht
   08EA EE                 1582 	mov	a,r6
   08EB 24 19              1583 	add	a,#_zaehlervalue
   08ED F9                 1584 	mov	r1,a
   08EE 87 06              1585 	mov	ar6,@r1
   08F0 09                 1586 	inc	r1
   08F1 87 07              1587 	mov	ar7,@r1
   08F3 C3                 1588 	clr	c
   08F4 EE                 1589 	mov	a,r6
   08F5 9D                 1590 	subb	a,r5
   08F6 EF                 1591 	mov	a,r7
   08F7 9B                 1592 	subb	a,r3
   08F8 D0 07              1593 	pop	ar7
   08FA 40 50              1594 	jc	00189$
                    04C6   1595 	C$fb_app_in8.c$288$5$27 ==.
                           1596 ;	../fb_app_in8.c:288: tmp=(n>>6);// parameter für ausgange 1Bit
   08FC EF                 1597 	mov	a,r7
   08FD 23                 1598 	rl	a
   08FE 23                 1599 	rl	a
   08FF 54 03              1600 	anl	a,#0x03
   0901 FC                 1601 	mov	r4,a
                    04CC   1602 	C$fb_app_in8.c$289$5$27 ==.
                           1603 ;	../fb_app_in8.c:289: if (tmp==0x03)tmp= (read_obj_value(pinno)^0x01);//UM
   0902 BC 03 12           1604 	cjne	r4,#0x03,00182$
   0905 85 4A 82           1605 	mov	dpl,_pinno
   0908 12 10 C9           1606 	lcall	_read_obj_value
   090B AB 82              1607 	mov	r3,dpl
   090D AD 83              1608 	mov	r5,dph
   090F AE F0              1609 	mov	r6,b
   0911 FF                 1610 	mov	r7,a
   0912 63 03 01           1611 	xrl	ar3,#0x01
   0915 8B 04              1612 	mov	ar4,r3
   0917                    1613 00182$:
                    04E1   1614 	C$fb_app_in8.c$290$5$27 ==.
                           1615 ;	../fb_app_in8.c:290: if (tmp==0x02)tmp=0;// AUS
   0917 BC 02 02           1616 	cjne	r4,#0x02,00184$
   091A 7C 00              1617 	mov	r4,#0x00
   091C                    1618 00184$:
                    04E6   1619 	C$fb_app_in8.c$291$5$27 ==.
                           1620 ;	../fb_app_in8.c:291: write_send(pinno,tmp);// 1Bit objekt senden
   091C 7F 00              1621 	mov	r7,#0x00
   091E C0 04              1622 	push	ar4
   0920 C0 07              1623 	push	ar7
   0922 85 4A 82           1624 	mov	dpl,_pinno
   0925 12 0F 5C           1625 	lcall	_write_send
   0928 15 81              1626 	dec	sp
   092A 15 81              1627 	dec	sp
                    04F6   1628 	C$fb_app_in8.c$292$5$27 ==.
                           1629 ;	../fb_app_in8.c:292: send_obj_value(pinno+8);//16Bit objekt senden
   092C 74 08              1630 	mov	a,#0x08
   092E 25 4A              1631 	add	a,_pinno
   0930 F5 82              1632 	mov	dpl,a
   0932 12 18 F5           1633 	lcall	_send_obj_value
                    04FF   1634 	C$fb_app_in8.c$293$5$27 ==.
                           1635 ;	../fb_app_in8.c:293: schrittzaehler[pinno]=0;// reset schritt
   0935 E5 4A              1636 	mov	a,_pinno
   0937 24 1E              1637 	add	a,#_schrittzaehler
   0939 F8                 1638 	mov	r0,a
   093A 76 00              1639 	mov	@r0,#0x00
                    0506   1640 	C$fb_app_in8.c$294$5$27 ==.
                           1641 ;	../fb_app_in8.c:294: while(TR1);
   093C                    1642 00185$:
   093C 20 8E FD           1643 	jb	_TCON_6,00185$
                    0509   1644 	C$fb_app_in8.c$295$5$27 ==.
                           1645 ;	../fb_app_in8.c:295: zaehlervalue[pinno]=0;// reset Zähler
   093F E5 4A              1646 	mov	a,_pinno
   0941 25 4A              1647 	add	a,_pinno
   0943 FF                 1648 	mov	r7,a
   0944 24 19              1649 	add	a,#_zaehlervalue
   0946 F8                 1650 	mov	r0,a
   0947 76 00              1651 	mov	@r0,#0x00
   0949 08                 1652 	inc	r0
   094A 76 00              1653 	mov	@r0,#0x00
   094C                    1654 00189$:
                    0516   1655 	C$fb_app_in8.c$297$4$26 ==.
                           1656 ;	../fb_app_in8.c:297: if(schrittzaehler[pinno]>=eeprom[para_adr+1]){// wenn schrittzählerwert erreicht
   094C E5 4A              1657 	mov	a,_pinno
   094E 24 1E              1658 	add	a,#_schrittzaehler
   0950 F9                 1659 	mov	r1,a
   0951 87 07              1660 	mov	ar7,@r1
   0953 E5 49              1661 	mov	a,_para_adr
   0955 04                 1662 	inc	a
   0956 90 1D 00           1663 	mov	dptr,#_eeprom
   0959 93                 1664 	movc	a,@a+dptr
   095A FE                 1665 	mov	r6,a
   095B C3                 1666 	clr	c
   095C EF                 1667 	mov	a,r7
   095D 9E                 1668 	subb	a,r6
   095E 40 10              1669 	jc	00197$
                    052A   1670 	C$fb_app_in8.c$298$5$28 ==.
                           1671 ;	../fb_app_in8.c:298: send_obj_value(pinno+8);// 16Bit objekt senden
   0960 74 08              1672 	mov	a,#0x08
   0962 25 4A              1673 	add	a,_pinno
   0964 F5 82              1674 	mov	dpl,a
   0966 12 18 F5           1675 	lcall	_send_obj_value
                    0533   1676 	C$fb_app_in8.c$299$5$28 ==.
                           1677 ;	../fb_app_in8.c:299: schrittzaehler[pinno]=0;		// reset schrittzähler
   0969 E5 4A              1678 	mov	a,_pinno
   096B 24 1E              1679 	add	a,#_schrittzaehler
   096D F8                 1680 	mov	r0,a
   096E 76 00              1681 	mov	@r0,#0x00
                    053A   1682 	C$fb_app_in8.c$307$2$2 ==.
                           1683 ;	../fb_app_in8.c:307: }
   0970                    1684 00197$:
                    053A   1685 	C$fb_app_in8.c$308$2$2 ==.
                           1686 ;	../fb_app_in8.c:308: timerstate[pinno]=timer_state;
   0970 E5 4A              1687 	mov	a,_pinno
   0972 24 3F              1688 	add	a,#_timerstate
   0974 F8                 1689 	mov	r0,a
   0975 A6 2A              1690 	mov	@r0,_timer_state
   0977                    1691 00200$:
                    0541   1692 	C$fb_app_in8.c$312$2$1 ==.
                    0541   1693 	XG$pin_changed$0$0 ==.
   0977 22                 1694 	ret
                           1695 ;------------------------------------------------------------
                           1696 ;Allocation info for local variables in function 'delay_timer'
                           1697 ;------------------------------------------------------------
                           1698 ;m                         Allocated to registers r6 
                           1699 ;objno                     Allocated to registers r7 
                           1700 ;n                         Allocated to registers r5 
                           1701 ;timerflags                Allocated to registers r6 r7 
                           1702 ;jobj                      Allocated to registers b0 
                           1703 ;------------------------------------------------------------
                    0542   1704 	G$delay_timer$0$0 ==.
                    0542   1705 	C$fb_app_in8.c$351$2$1 ==.
                           1706 ;	../fb_app_in8.c:351: void delay_timer(void)
                           1707 ;	-----------------------------------------
                           1708 ;	 function delay_timer
                           1709 ;	-----------------------------------------
   0978                    1710 _delay_timer:
                    0542   1711 	C$fb_app_in8.c$359$1$1 ==.
                           1712 ;	../fb_app_in8.c:359: RTCCON=0x60;		// RTC anhalten und Flag löschen
   0978 75 D1 60           1713 	mov	_RTCCON,#0x60
                    0545   1714 	C$fb_app_in8.c$360$1$1 ==.
                           1715 ;	../fb_app_in8.c:360: RTCH=0x0E;			// reload Real Time Clock
   097B 75 D2 0E           1716 	mov	_RTCH,#0x0E
                    0548   1717 	C$fb_app_in8.c$361$1$1 ==.
                           1718 ;	../fb_app_in8.c:361: RTCL=0xA0;			// auf 65ms
   097E 75 D3 A0           1719 	mov	_RTCL,#0xA0
                    054B   1720 	C$fb_app_in8.c$362$1$1 ==.
                           1721 ;	../fb_app_in8.c:362: RTCCON=0x61;//	START_RTC	// RTC starten
   0981 75 D1 61           1722 	mov	_RTCCON,#0x61
                    054E   1723 	C$fb_app_in8.c$363$1$1 ==.
                           1724 ;	../fb_app_in8.c:363: timer++;
   0984 05 2B              1725 	inc	_timer
   0986 E4                 1726 	clr	a
   0987 B5 2B 02           1727 	cjne	a,_timer,00156$
   098A 05 2C              1728 	inc	(_timer + 1)
   098C                    1729 00156$:
                    0556   1730 	C$fb_app_in8.c$364$1$1 ==.
                           1731 ;	../fb_app_in8.c:364: timerflags = timer&(~(timer-1));// flanke generieren
   098C E5 2B              1732 	mov	a,_timer
   098E 24 FF              1733 	add	a,#0xFF
   0990 FE                 1734 	mov	r6,a
   0991 E5 2C              1735 	mov	a,(_timer + 1)
   0993 34 FF              1736 	addc	a,#0xFF
   0995 FF                 1737 	mov	r7,a
   0996 EE                 1738 	mov	a,r6
   0997 F4                 1739 	cpl	a
   0998 FE                 1740 	mov	r6,a
   0999 EF                 1741 	mov	a,r7
   099A F4                 1742 	cpl	a
   099B FF                 1743 	mov	r7,a
   099C E5 2B              1744 	mov	a,_timer
   099E 52 06              1745 	anl	ar6,a
   09A0 E5 2C              1746 	mov	a,(_timer + 1)
   09A2 52 07              1747 	anl	ar7,a
                    056E   1748 	C$fb_app_in8.c$365$5$5 ==.
                           1749 ;	../fb_app_in8.c:365: for(n=0;n<16;n++){
   09A4 7D 00              1750 	mov	r5,#0x00
   09A6                    1751 00126$:
   09A6 BD 10 00           1752 	cjne	r5,#0x10,00157$
   09A9                    1753 00157$:
   09A9 50 32              1754 	jnc	00129$
                    0575   1755 	C$fb_app_in8.c$366$2$2 ==.
                           1756 ;	../fb_app_in8.c:366: if(timerflags & 0x0001){// positive flags erzeugen und schieben
   09AB EE                 1757 	mov	a,r6
   09AC 30 E0 24           1758 	jnb	acc.0,00106$
                    0579   1759 	C$fb_app_in8.c$367$1$1 ==.
                           1760 ;	../fb_app_in8.c:367: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
   09AF 7C 00              1761 	mov	r4,#0x00
   09B1                    1762 00122$:
   09B1 BC 09 00           1763 	cjne	r4,#0x09,00160$
   09B4                    1764 00160$:
   09B4 50 1D              1765 	jnc	00106$
                    0580   1766 	C$fb_app_in8.c$368$4$4 ==.
                           1767 ;	../fb_app_in8.c:368: if ((timerbase[m]& 0x0F)==n){// wenn die base mit der gespeicherten base übereinstimmt
   09B6 EC                 1768 	mov	a,r4
   09B7 24 2D              1769 	add	a,#_timerbase
   09B9 F9                 1770 	mov	r1,a
   09BA 87 03              1771 	mov	ar3,@r1
   09BC 53 03 0F           1772 	anl	ar3,#0x0F
   09BF EB                 1773 	mov	a,r3
   09C0 B5 05 0D           1774 	cjne	a,ar5,00124$
                    058D   1775 	C$fb_app_in8.c$369$5$5 ==.
                           1776 ;	../fb_app_in8.c:369: if (timercnt[m]>0x80){// wenn der counter läuft...
   09C3 EC                 1777 	mov	a,r4
   09C4 24 36              1778 	add	a,#_timercnt
   09C6 F9                 1779 	mov	r1,a
   09C7 E7                 1780 	mov	a,@r1
   09C8 FB                 1781 	mov	r3,a
   09C9 24 7F              1782 	add	a,#0xff - 0x80
   09CB 50 03              1783 	jnc	00124$
                    0597   1784 	C$fb_app_in8.c$370$6$6 ==.
                           1785 ;	../fb_app_in8.c:370: timercnt[m]=timercnt[m]-1;// den timer[m]decrementieren
   09CD EB                 1786 	mov	a,r3
   09CE 14                 1787 	dec	a
   09CF F7                 1788 	mov	@r1,a
   09D0                    1789 00124$:
                    059A   1790 	C$fb_app_in8.c$367$3$3 ==.
                           1791 ;	../fb_app_in8.c:367: for(m=0;m<TIMERANZ;m++){// die timer der reihe nach checken und dec wenn laufen
   09D0 0C                 1792 	inc	r4
   09D1 80 DE              1793 	sjmp	00122$
   09D3                    1794 00106$:
                    059D   1795 	C$fb_app_in8.c$375$2$2 ==.
                           1796 ;	../fb_app_in8.c:375: timerflags = timerflags>>1;
   09D3 EF                 1797 	mov	a,r7
   09D4 C3                 1798 	clr	c
   09D5 13                 1799 	rrc	a
   09D6 CE                 1800 	xch	a,r6
   09D7 13                 1801 	rrc	a
   09D8 CE                 1802 	xch	a,r6
   09D9 FF                 1803 	mov	r7,a
                    05A4   1804 	C$fb_app_in8.c$365$1$1 ==.
                           1805 ;	../fb_app_in8.c:365: for(n=0;n<16;n++){
   09DA 0D                 1806 	inc	r5
   09DB 80 C9              1807 	sjmp	00126$
   09DD                    1808 00129$:
                    05A7   1809 	C$fb_app_in8.c$378$4$9 ==.
                           1810 ;	../fb_app_in8.c:378: for(objno=0;objno<8;objno++) {
   09DD 7F 00              1811 	mov	r7,#0x00
   09DF                    1812 00130$:
   09DF BF 08 00           1813 	cjne	r7,#0x08,00165$
   09E2                    1814 00165$:
   09E2 40 03              1815 	jc	00166$
   09E4 02 0B AF           1816 	ljmp	00134$
   09E7                    1817 00166$:
                    05B1   1818 	C$fb_app_in8.c$379$2$7 ==.
                           1819 ;	../fb_app_in8.c:379: timer_state=timerstate[objno];
   09E7 EF                 1820 	mov	a,r7
   09E8 24 3F              1821 	add	a,#_timerstate
   09EA F9                 1822 	mov	r1,a
   09EB 87 2A              1823 	mov	_timer_state,@r1
                    05B7   1824 	C$fb_app_in8.c$380$2$7 ==.
                           1825 ;	../fb_app_in8.c:380: if(timercnt[objno]==0x80) {
   09ED EF                 1826 	mov	a,r7
   09EE 24 36              1827 	add	a,#_timercnt
   09F0 F9                 1828 	mov	r1,a
   09F1 87 06              1829 	mov	ar6,@r1
   09F3 BE 80 02           1830 	cjne	r6,#0x80,00167$
   09F6 80 03              1831 	sjmp	00168$
   09F8                    1832 00167$:
   09F8 02 0B AB           1833 	ljmp	00132$
   09FB                    1834 00168$:
                    05C5   1835 	C$fb_app_in8.c$397$3$8 ==.
                           1836 ;	../fb_app_in8.c:397: if (timer_state & 0x80) { // 0x80, 0x81 für langzeit telegramm senden
   09FB E5 2A              1837 	mov	a,_timer_state
   09FD 20 E7 03           1838 	jb	acc.7,00169$
   0A00 02 0A A1           1839 	ljmp	00111$
   0A03                    1840 00169$:
                    05CD   1841 	C$fb_app_in8.c$398$4$9 ==.
                           1842 ;	../fb_app_in8.c:398: write_send( objno+8, timer_state & 0x01);	// Langzeit Telegramm senden
   0A03 74 01              1843 	mov	a,#0x01
   0A05 55 2A              1844 	anl	a,_timer_state
   0A07 FE                 1845 	mov	r6,a
   0A08 7D 00              1846 	mov	r5,#0x00
   0A0A 74 08              1847 	mov	a,#0x08
   0A0C 2F                 1848 	add	a,r7
   0A0D F5 82              1849 	mov	dpl,a
   0A0F C0 07              1850 	push	ar7
   0A11 C0 06              1851 	push	ar6
   0A13 C0 05              1852 	push	ar5
   0A15 12 0F 5C           1853 	lcall	_write_send
   0A18 15 81              1854 	dec	sp
   0A1A 15 81              1855 	dec	sp
   0A1C D0 07              1856 	pop	ar7
                    05E8   1857 	C$fb_app_in8.c$401$4$9 ==.
                           1858 ;	../fb_app_in8.c:401: m = eeprom[0xD7+(objno*4)];	// Faktor Dauer	Lamelle	T2	
   0A1E EF                 1859 	mov	a,r7
   0A1F 2F                 1860 	add	a,r7
   0A20 25 E0              1861 	add	a,acc
   0A22 FE                 1862 	mov	r6,a
   0A23 24 D7              1863 	add	a,#0xD7
   0A25 90 1D 00           1864 	mov	dptr,#_eeprom
   0A28 93                 1865 	movc	a,@a+dptr
                    05F3   1866 	C$fb_app_in8.c$402$4$9 ==.
                           1867 ;	../fb_app_in8.c:402: if (m > 3){// wenn lamellenverstellzeit >3 dann zeit sichern und kurztele zwecks stop
   0A29 FE                 1868 	mov  r6,a
   0A2A 24 FC              1869 	add	a,#0xff - 0x03
   0A2C 50 6D              1870 	jnc	00108$
                    05F8   1871 	C$fb_app_in8.c$406$5$10 ==.
                           1872 ;	../fb_app_in8.c:406: timerbase[objno]= ((eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x07);
   0A2E EF                 1873 	mov	a,r7
   0A2F 24 2D              1874 	add	a,#_timerbase
   0A31 F9                 1875 	mov	r1,a
   0A32 8F 04              1876 	mov	ar4,r7
   0A34 7D 00              1877 	mov	r5,#0x00
   0A36 0C                 1878 	inc	r4
   0A37 BC 00 01           1879 	cjne	r4,#0x00,00171$
   0A3A 0D                 1880 	inc	r5
   0A3B                    1881 00171$:
   0A3B ED                 1882 	mov	a,r5
   0A3C A2 E7              1883 	mov	c,acc.7
   0A3E 13                 1884 	rrc	a
   0A3F CC                 1885 	xch	a,r4
   0A40 13                 1886 	rrc	a
   0A41 CC                 1887 	xch	a,r4
   0A42 74 FA              1888 	mov	a,#0xFA
   0A44 2C                 1889 	add	a,r4
   0A45 90 1D 00           1890 	mov	dptr,#_eeprom
   0A48 93                 1891 	movc	a,@a+dptr
   0A49 FD                 1892 	mov	r5,a
   0A4A 74 01              1893 	mov	a,#0x01
   0A4C 5F                 1894 	anl	a,r7
   0A4D 64 01              1895 	xrl	a,#0x01
   0A4F 75 F0 04           1896 	mov	b,#0x04
   0A52 A4                 1897 	mul	ab
   0A53 F5 F0              1898 	mov	b,a
   0A55 05 F0              1899 	inc	b
   0A57 ED                 1900 	mov	a,r5
   0A58 80 02              1901 	sjmp	00173$
   0A5A                    1902 00172$:
   0A5A C3                 1903 	clr	c
   0A5B 13                 1904 	rrc	a
   0A5C                    1905 00173$:
   0A5C D5 F0 FB           1906 	djnz	b,00172$
   0A5F 54 07              1907 	anl	a,#0x07
   0A61 F7                 1908 	mov	@r1,a
                    062C   1909 	C$fb_app_in8.c$407$5$10 ==.
                           1910 ;	../fb_app_in8.c:407: jobj=read_obj_value((objno&0x07)+8);
   0A62 74 07              1911 	mov	a,#0x07
   0A64 5F                 1912 	anl	a,r7
   0A65 24 08              1913 	add	a,#0x08
   0A67 F5 82              1914 	mov	dpl,a
   0A69 C0 07              1915 	push	ar7
   0A6B C0 06              1916 	push	ar6
   0A6D 12 10 C9           1917 	lcall	_read_obj_value
   0A70 AA 82              1918 	mov	r2,dpl
   0A72 AB 83              1919 	mov	r3,dph
   0A74 AC F0              1920 	mov	r4,b
   0A76 FD                 1921 	mov	r5,a
   0A77 D0 06              1922 	pop	ar6
   0A79 D0 07              1923 	pop	ar7
   0A7B EA                 1924 	mov	a,r2
   0A7C 4B                 1925 	orl	a,r3
   0A7D 4C                 1926 	orl	a,r4
   0A7E 4D                 1927 	orl	a,r5
   0A7F 24 FF              1928 	add	a,#0xff
   0A81 92 18              1929 	mov	b0,c
                    064D   1930 	C$fb_app_in8.c$408$5$10 ==.
                           1931 ;	../fb_app_in8.c:408: timerstate[objno]= jobj|0x10; // 0x10,0x11 fuer ende T2 (lamellenvestellzeit)
   0A83 EF                 1932 	mov	a,r7
   0A84 24 3F              1933 	add	a,#_timerstate
   0A86 F9                 1934 	mov	r1,a
   0A87 A2 18              1935 	mov	c,b0
   0A89 E4                 1936 	clr	a
   0A8A 33                 1937 	rlc	a
   0A8B FD                 1938 	mov	r5,a
   0A8C 43 05 10           1939 	orl	ar5,#0x10
   0A8F A7 05              1940 	mov	@r1,ar5
                    065B   1941 	C$fb_app_in8.c$409$5$10 ==.
                           1942 ;	../fb_app_in8.c:409: timercnt[objno]= m + 0x80;
   0A91 EF                 1943 	mov	a,r7
   0A92 24 36              1944 	add	a,#_timercnt
   0A94 F9                 1945 	mov	r1,a
   0A95 74 80              1946 	mov	a,#0x80
   0A97 2E                 1947 	add	a,r6
   0A98 F7                 1948 	mov	@r1,a
   0A99 80 06              1949 	sjmp	00111$
   0A9B                    1950 00108$:
                    0665   1951 	C$fb_app_in8.c$411$4$9 ==.
                           1952 ;	../fb_app_in8.c:411: else timercnt[objno]=0;
   0A9B EF                 1953 	mov	a,r7
   0A9C 24 36              1954 	add	a,#_timercnt
   0A9E F8                 1955 	mov	r0,a
   0A9F 76 00              1956 	mov	@r0,#0x00
   0AA1                    1957 00111$:
                    066B   1958 	C$fb_app_in8.c$414$3$8 ==.
                           1959 ;	../fb_app_in8.c:414: switch (timer_state & 0x50){		
   0AA1 74 50              1960 	mov	a,#0x50
   0AA3 55 2A              1961 	anl	a,_timer_state
   0AA5 FE                 1962 	mov	r6,a
   0AA6 BE 10 02           1963 	cjne	r6,#0x10,00174$
   0AA9 80 0E              1964 	sjmp	00112$
   0AAB                    1965 00174$:
   0AAB BE 40 02           1966 	cjne	r6,#0x40,00175$
   0AAE 80 12              1967 	sjmp	00113$
   0AB0                    1968 00175$:
   0AB0 BE 50 03           1969 	cjne	r6,#0x50,00176$
   0AB3 02 0B 2D           1970 	ljmp	00114$
   0AB6                    1971 00176$:
   0AB6 02 0B 4C           1972 	ljmp	00116$
                    0683   1973 	C$fb_app_in8.c$415$4$11 ==.
                           1974 ;	../fb_app_in8.c:415: case 0x10:
   0AB9                    1975 00112$:
                    0683   1976 	C$fb_app_in8.c$416$4$11 ==.
                           1977 ;	../fb_app_in8.c:416: timerstate[objno]=0; // wenn T2 abgelaufen dann nichts mehr machen
   0AB9 EF                 1978 	mov	a,r7
   0ABA 24 3F              1979 	add	a,#_timerstate
   0ABC F8                 1980 	mov	r0,a
   0ABD 76 00              1981 	mov	@r0,#0x00
                    0689   1982 	C$fb_app_in8.c$417$4$11 ==.
                           1983 ;	../fb_app_in8.c:417: break;		
   0ABF 02 0B 4C           1984 	ljmp	00116$
                    068C   1985 	C$fb_app_in8.c$419$4$11 ==.
                           1986 ;	../fb_app_in8.c:419: case 0x40:
   0AC2                    1987 00113$:
                    068C   1988 	C$fb_app_in8.c$421$4$11 ==.
                           1989 ;	../fb_app_in8.c:421: write_send( objno+8, timer_state );	// Langzeit Telegramm senden
   0AC2 AD 2A              1990 	mov	r5,_timer_state
   0AC4 7E 00              1991 	mov	r6,#0x00
   0AC6 74 08              1992 	mov	a,#0x08
   0AC8 2F                 1993 	add	a,r7
   0AC9 F5 82              1994 	mov	dpl,a
   0ACB C0 07              1995 	push	ar7
   0ACD C0 05              1996 	push	ar5
   0ACF C0 06              1997 	push	ar6
   0AD1 12 0F 5C           1998 	lcall	_write_send
   0AD4 15 81              1999 	dec	sp
   0AD6 15 81              2000 	dec	sp
   0AD8 D0 07              2001 	pop	ar7
                    06A4   2002 	C$fb_app_in8.c$422$4$11 ==.
                           2003 ;	../fb_app_in8.c:422: timerstate[objno]|=0x10;
   0ADA EF                 2004 	mov	a,r7
   0ADB 24 3F              2005 	add	a,#_timerstate
   0ADD F9                 2006 	mov	r1,a
   0ADE 87 06              2007 	mov	ar6,@r1
   0AE0 74 10              2008 	mov	a,#0x10
   0AE2 4E                 2009 	orl	a,r6
   0AE3 F7                 2010 	mov	@r1,a
                    06AE   2011 	C$fb_app_in8.c$423$4$11 ==.
                           2012 ;	../fb_app_in8.c:423: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
   0AE4 EF                 2013 	mov	a,r7
   0AE5 24 36              2014 	add	a,#_timercnt
   0AE7 F9                 2015 	mov	r1,a
   0AE8 EF                 2016 	mov	a,r7
   0AE9 2F                 2017 	add	a,r7
   0AEA 25 E0              2018 	add	a,acc
   0AEC 24 D8              2019 	add	a,#0xD8
   0AEE 90 1D 00           2020 	mov	dptr,#_eeprom
   0AF1 93                 2021 	movc	a,@a+dptr
   0AF2 FE                 2022 	mov	r6,a
   0AF3 74 80              2023 	mov	a,#0x80
   0AF5 4E                 2024 	orl	a,r6
   0AF6 F7                 2025 	mov	@r1,a
                    06C1   2026 	C$fb_app_in8.c$424$4$11 ==.
                           2027 ;	../fb_app_in8.c:424: timerbase[objno]=(eeprom[0xFA+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))&0x0F;	//Basis Tele wdg
   0AF7 EF                 2028 	mov	a,r7
   0AF8 24 2D              2029 	add	a,#_timerbase
   0AFA F9                 2030 	mov	r1,a
   0AFB 8F 05              2031 	mov	ar5,r7
   0AFD 7E 00              2032 	mov	r6,#0x00
   0AFF 0D                 2033 	inc	r5
   0B00 BD 00 01           2034 	cjne	r5,#0x00,00177$
   0B03 0E                 2035 	inc	r6
   0B04                    2036 00177$:
   0B04 EE                 2037 	mov	a,r6
   0B05 A2 E7              2038 	mov	c,acc.7
   0B07 13                 2039 	rrc	a
   0B08 CD                 2040 	xch	a,r5
   0B09 13                 2041 	rrc	a
   0B0A CD                 2042 	xch	a,r5
   0B0B 74 FA              2043 	mov	a,#0xFA
   0B0D 2D                 2044 	add	a,r5
   0B0E 90 1D 00           2045 	mov	dptr,#_eeprom
   0B11 93                 2046 	movc	a,@a+dptr
   0B12 FE                 2047 	mov	r6,a
   0B13 74 01              2048 	mov	a,#0x01
   0B15 5F                 2049 	anl	a,r7
   0B16 64 01              2050 	xrl	a,#0x01
   0B18 75 F0 04           2051 	mov	b,#0x04
   0B1B A4                 2052 	mul	ab
   0B1C F5 F0              2053 	mov	b,a
   0B1E 05 F0              2054 	inc	b
   0B20 EE                 2055 	mov	a,r6
   0B21 80 02              2056 	sjmp	00179$
   0B23                    2057 00178$:
   0B23 C3                 2058 	clr	c
   0B24 13                 2059 	rrc	a
   0B25                    2060 00179$:
   0B25 D5 F0 FB           2061 	djnz	b,00178$
   0B28 54 0F              2062 	anl	a,#0x0F
   0B2A F7                 2063 	mov	@r1,a
                    06F5   2064 	C$fb_app_in8.c$425$4$11 ==.
                           2065 ;	../fb_app_in8.c:425: break;
                    06F5   2066 	C$fb_app_in8.c$426$4$11 ==.
                           2067 ;	../fb_app_in8.c:426: case 0x50: // 0x50 Dimmer telegramm wiederholung
   0B2B 80 1F              2068 	sjmp	00116$
   0B2D                    2069 00114$:
                    06F7   2070 	C$fb_app_in8.c$427$4$11 ==.
                           2071 ;	../fb_app_in8.c:427: timercnt[objno] = eeprom[0xD8+(objno*4)]| 0x80 ;//0xD6 Faktor Telegrammwiederholung
   0B2D EF                 2072 	mov	a,r7
   0B2E 24 36              2073 	add	a,#_timercnt
   0B30 F9                 2074 	mov	r1,a
   0B31 EF                 2075 	mov	a,r7
   0B32 2F                 2076 	add	a,r7
   0B33 25 E0              2077 	add	a,acc
   0B35 24 D8              2078 	add	a,#0xD8
   0B37 90 1D 00           2079 	mov	dptr,#_eeprom
   0B3A 93                 2080 	movc	a,@a+dptr
   0B3B FE                 2081 	mov	r6,a
   0B3C 74 80              2082 	mov	a,#0x80
   0B3E 4E                 2083 	orl	a,r6
   0B3F F7                 2084 	mov	@r1,a
                    070A   2085 	C$fb_app_in8.c$428$4$11 ==.
                           2086 ;	../fb_app_in8.c:428: send_obj_value(objno+8);
   0B40 74 08              2087 	mov	a,#0x08
   0B42 2F                 2088 	add	a,r7
   0B43 F5 82              2089 	mov	dpl,a
   0B45 C0 07              2090 	push	ar7
   0B47 12 18 F5           2091 	lcall	_send_obj_value
   0B4A D0 07              2092 	pop	ar7
                    0716   2093 	C$fb_app_in8.c$432$3$8 ==.
                           2094 ;	../fb_app_in8.c:432: }
   0B4C                    2095 00116$:
                    0716   2096 	C$fb_app_in8.c$434$3$8 ==.
                           2097 ;	../fb_app_in8.c:434: if(timer_state==0 && (timerbase[objno]& 0x80)==0x80){//Impulszähler
   0B4C E5 2A              2098 	mov	a,_timer_state
   0B4E 70 5B              2099 	jnz	00132$
   0B50 EF                 2100 	mov	a,r7
   0B51 24 2D              2101 	add	a,#_timerbase
   0B53 F9                 2102 	mov	r1,a
   0B54 87 06              2103 	mov	ar6,@r1
   0B56 53 06 80           2104 	anl	ar6,#0x80
   0B59 BE 80 4F           2105 	cjne	r6,#0x80,00132$
                    0726   2106 	C$fb_app_in8.c$435$4$12 ==.
                           2107 ;	../fb_app_in8.c:435: timercnt[objno]=eeprom[0xD6+(objno)*4]|0x80;//Torzeit setzen;Löschung anfordern
   0B5C EF                 2108 	mov	a,r7
   0B5D 24 36              2109 	add	a,#_timercnt
   0B5F F8                 2110 	mov	r0,a
   0B60 EF                 2111 	mov	a,r7
   0B61 2F                 2112 	add	a,r7
   0B62 25 E0              2113 	add	a,acc
   0B64 24 D6              2114 	add	a,#0xD6
   0B66 90 1D 00           2115 	mov	dptr,#_eeprom
   0B69 93                 2116 	movc	a,@a+dptr
   0B6A FE                 2117 	mov	r6,a
   0B6B 74 80              2118 	mov	a,#0x80
   0B6D 4E                 2119 	orl	a,r6
   0B6E F6                 2120 	mov	@r0,a
                    0739   2121 	C$fb_app_in8.c$436$4$12 ==.
                           2122 ;	../fb_app_in8.c:436: timerbase[objno]=(eeprom[0xF6+((objno+1)>>1)]>>(4*((objno&0x01)^0x01)))|0xC0;
   0B6F 8F 05              2123 	mov	ar5,r7
   0B71 7E 00              2124 	mov	r6,#0x00
   0B73 0D                 2125 	inc	r5
   0B74 BD 00 01           2126 	cjne	r5,#0x00,00183$
   0B77 0E                 2127 	inc	r6
   0B78                    2128 00183$:
   0B78 EE                 2129 	mov	a,r6
   0B79 A2 E7              2130 	mov	c,acc.7
   0B7B 13                 2131 	rrc	a
   0B7C CD                 2132 	xch	a,r5
   0B7D 13                 2133 	rrc	a
   0B7E CD                 2134 	xch	a,r5
   0B7F 74 F6              2135 	mov	a,#0xF6
   0B81 2D                 2136 	add	a,r5
   0B82 90 1D 00           2137 	mov	dptr,#_eeprom
   0B85 93                 2138 	movc	a,@a+dptr
   0B86 FE                 2139 	mov	r6,a
   0B87 74 01              2140 	mov	a,#0x01
   0B89 5F                 2141 	anl	a,r7
   0B8A 64 01              2142 	xrl	a,#0x01
   0B8C 75 F0 04           2143 	mov	b,#0x04
   0B8F A4                 2144 	mul	ab
   0B90 F5 F0              2145 	mov	b,a
   0B92 05 F0              2146 	inc	b
   0B94 EE                 2147 	mov	a,r6
   0B95 80 02              2148 	sjmp	00185$
   0B97                    2149 00184$:
   0B97 C3                 2150 	clr	c
   0B98 13                 2151 	rrc	a
   0B99                    2152 00185$:
   0B99 D5 F0 FB           2153 	djnz	b,00184$
   0B9C 44 C0              2154 	orl	a,#0xC0
   0B9E F7                 2155 	mov	@r1,a
                    0769   2156 	C$fb_app_in8.c$437$4$12 ==.
                           2157 ;	../fb_app_in8.c:437: send_obj_value(objno+8);
   0B9F 74 08              2158 	mov	a,#0x08
   0BA1 2F                 2159 	add	a,r7
   0BA2 F5 82              2160 	mov	dpl,a
   0BA4 C0 07              2161 	push	ar7
   0BA6 12 18 F5           2162 	lcall	_send_obj_value
   0BA9 D0 07              2163 	pop	ar7
   0BAB                    2164 00132$:
                    0775   2165 	C$fb_app_in8.c$378$1$1 ==.
                           2166 ;	../fb_app_in8.c:378: for(objno=0;objno<8;objno++) {
   0BAB 0F                 2167 	inc	r7
   0BAC 02 09 DF           2168 	ljmp	00130$
   0BAF                    2169 00134$:
                    0779   2170 	C$fb_app_in8.c$443$1$1 ==.
                    0779   2171 	XG$delay_timer$0$0 ==.
   0BAF 22                 2172 	ret
                           2173 ;------------------------------------------------------------
                           2174 ;Allocation info for local variables in function 'schalten'
                           2175 ;------------------------------------------------------------
                           2176 ;pinno                     Allocated to registers r7 
                           2177 ;risefall                  Allocated to registers b0 
                           2178 ;func                      Allocated to registers r6 
                           2179 ;sendval                   Allocated to registers r2 
                           2180 ;------------------------------------------------------------
                    077A   2181 	G$schalten$0$0 ==.
                    077A   2182 	C$fb_app_in8.c$446$1$1 ==.
                           2183 ;	../fb_app_in8.c:446: void schalten(__bit risefall, unsigned char pinno)	// Schaltbefehl senden
                           2184 ;	-----------------------------------------
                           2185 ;	 function schalten
                           2186 ;	-----------------------------------------
   0BB0                    2187 _schalten:
   0BB0 AF 82              2188 	mov	r7,dpl
                    077C   2189 	C$fb_app_in8.c$450$1$1 ==.
                           2190 ;	../fb_app_in8.c:450: func=eeprom[0xD7+(pinno & 0x07)*4]; //0xD7
   0BB2 74 07              2191 	mov	a,#0x07
   0BB4 5F                 2192 	anl	a,r7
   0BB5 25 E0              2193 	add	a,acc
   0BB7 25 E0              2194 	add	a,acc
   0BB9 24 D7              2195 	add	a,#0xD7
   0BBB 90 1D 00           2196 	mov	dptr,#_eeprom
   0BBE 93                 2197 	movc	a,@a+dptr
   0BBF FE                 2198 	mov	r6,a
                    078A   2199 	C$fb_app_in8.c$451$1$1 ==.
                           2200 ;	../fb_app_in8.c:451: if (pinno>=8)func=func>>4;			// wenn 2. Schaltobjekt dann obere 4 bit
   0BC0 BF 08 00           2201 	cjne	r7,#0x08,00116$
   0BC3                    2202 00116$:
   0BC3 40 05              2203 	jc	00102$
   0BC5 EE                 2204 	mov	a,r6
   0BC6 C4                 2205 	swap	a
   0BC7 54 0F              2206 	anl	a,#0x0F
   0BC9 FE                 2207 	mov	r6,a
   0BCA                    2208 00102$:
                    0794   2209 	C$fb_app_in8.c$452$1$1 ==.
                           2210 ;	../fb_app_in8.c:452: if (risefall) func=(func>>2);		// Funktion bei steigender Flanke obere 2 bit
   0BCA 30 18 06           2211 	jnb	b0,00104$
   0BCD EE                 2212 	mov	a,r6
   0BCE 03                 2213 	rr	a
   0BCF 03                 2214 	rr	a
   0BD0 54 3F              2215 	anl	a,#0x3F
   0BD2 FE                 2216 	mov	r6,a
   0BD3                    2217 00104$:
                    079D   2218 	C$fb_app_in8.c$453$1$1 ==.
                           2219 ;	../fb_app_in8.c:453: func=func&0x03;					// Funktion maskieren
   0BD3 53 06 03           2220 	anl	ar6,#0x03
                    07A0   2221 	C$fb_app_in8.c$454$1$1 ==.
                           2222 ;	../fb_app_in8.c:454: if (func!=0)
   0BD6 EE                 2223 	mov	a,r6
   0BD7 60 2B              2224 	jz	00110$
                    07A3   2225 	C$fb_app_in8.c$456$2$2 ==.
                           2226 ;	../fb_app_in8.c:456: if (func==0x03) sendval=read_obj_value(pinno) ^0x01;  //UM
   0BD9 BE 03 15           2227 	cjne	r6,#0x03,00106$
   0BDC 8F 82              2228 	mov	dpl,r7
   0BDE C0 07              2229 	push	ar7
   0BE0 12 10 C9           2230 	lcall	_read_obj_value
   0BE3 AA 82              2231 	mov	r2,dpl
   0BE5 AB 83              2232 	mov	r3,dph
   0BE7 AC F0              2233 	mov	r4,b
   0BE9 FD                 2234 	mov	r5,a
   0BEA D0 07              2235 	pop	ar7
   0BEC 63 02 01           2236 	xrl	ar2,#0x01
   0BEF 80 04              2237 	sjmp	00107$
   0BF1                    2238 00106$:
                    07BB   2239 	C$fb_app_in8.c$457$2$2 ==.
                           2240 ;	../fb_app_in8.c:457: else sendval = func & 0x01;	// EIN   AUS
   0BF1 74 01              2241 	mov	a,#0x01
   0BF3 5E                 2242 	anl	a,r6
   0BF4 FA                 2243 	mov	r2,a
   0BF5                    2244 00107$:
                    07BF   2245 	C$fb_app_in8.c$458$2$2 ==.
                           2246 ;	../fb_app_in8.c:458: write_send(pinno,sendval);
   0BF5 7E 00              2247 	mov	r6,#0x00
   0BF7 C0 02              2248 	push	ar2
   0BF9 C0 06              2249 	push	ar6
   0BFB 8F 82              2250 	mov	dpl,r7
   0BFD 12 0F 5C           2251 	lcall	_write_send
   0C00 15 81              2252 	dec	sp
   0C02 15 81              2253 	dec	sp
   0C04                    2254 00110$:
                    07CE   2255 	C$fb_app_in8.c$461$2$1 ==.
                    07CE   2256 	XG$schalten$0$0 ==.
   0C04 22                 2257 	ret
                           2258 ;------------------------------------------------------------
                           2259 ;Allocation info for local variables in function 'debounce'
                           2260 ;------------------------------------------------------------
                           2261 ;pinno                     Allocated to registers r7 
                           2262 ;debtime                   Allocated to registers r6 
                           2263 ;n                         Allocated to registers r5 
                           2264 ;w                         Allocated to registers r4 
                           2265 ;------------------------------------------------------------
                    07CF   2266 	G$debounce$0$0 ==.
                    07CF   2267 	C$fb_app_in8.c$467$2$1 ==.
                           2268 ;	../fb_app_in8.c:467: unsigned char debounce(unsigned char pinno)	// Entprellzeit abwarten und prüfen !!
                           2269 ;	-----------------------------------------
                           2270 ;	 function debounce
                           2271 ;	-----------------------------------------
   0C05                    2272 _debounce:
   0C05 AF 82              2273 	mov	r7,dpl
                    07D1   2274 	C$fb_app_in8.c$470$1$1 ==.
                           2275 ;	../fb_app_in8.c:470: debtime=eeprom[DEBTIME];			// Entprellzeit in 0,5ms Schritten
   0C07 90 1D D2           2276 	mov	dptr,#(_eeprom + 0x00d2)
   0C0A E4                 2277 	clr	a
   0C0B 93                 2278 	movc	a,@a+dptr
                    07D6   2279 	C$fb_app_in8.c$471$1$1 ==.
                           2280 ;	../fb_app_in8.c:471: if (debtime>0) {
   0C0C FE                 2281 	mov	r6,a
   0C0D 60 1B              2282 	jz	00102$
                    07D9   2283 	C$fb_app_in8.c$472$1$1 ==.
                           2284 ;	../fb_app_in8.c:472: for(n=0;n<debtime;n++){
   0C0F 7D 00              2285 	mov	r5,#0x00
   0C11                    2286 00107$:
   0C11 C3                 2287 	clr	c
   0C12 ED                 2288 	mov	a,r5
   0C13 9E                 2289 	subb	a,r6
   0C14 50 14              2290 	jnc	00102$
                    07E0   2291 	C$fb_app_in8.c$473$1$1 ==.
                           2292 ;	../fb_app_in8.c:473: for(w=112;w>0;w--); 
   0C16 7C 70              2293 	mov	r4,#0x70
   0C18                    2294 00103$:
   0C18 EC                 2295 	mov	a,r4
   0C19 60 04              2296 	jz	00113$
   0C1B 7B 01              2297 	mov	r3,#0x01
   0C1D 80 02              2298 	sjmp	00114$
   0C1F                    2299 00113$:
   0C1F 7B 00              2300 	mov	r3,#0x00
   0C21                    2301 00114$:
   0C21 EB                 2302 	mov	a,r3
   0C22 60 03              2303 	jz	00109$
   0C24 1C                 2304 	dec	r4
   0C25 80 F1              2305 	sjmp	00103$
   0C27                    2306 00109$:
                    07F1   2307 	C$fb_app_in8.c$472$2$2 ==.
                           2308 ;	../fb_app_in8.c:472: for(n=0;n<debtime;n++){
   0C27 0D                 2309 	inc	r5
   0C28 80 E7              2310 	sjmp	00107$
   0C2A                    2311 00102$:
                    07F4   2312 	C$fb_app_in8.c$481$1$1 ==.
                           2313 ;	../fb_app_in8.c:481: return ((~(spi_in_out()^p0h))& bitmask_1[pinno]);//ret=1;
   0C2A C0 07              2314 	push	ar7
   0C2C 12 00 85           2315 	lcall	_spi_in_out
   0C2F E5 82              2316 	mov	a,dpl
   0C31 D0 07              2317 	pop	ar7
   0C33 65 25              2318 	xrl	a,_p0h
   0C35 F4                 2319 	cpl	a
   0C36 FE                 2320 	mov	r6,a
   0C37 EF                 2321 	mov	a,r7
   0C38 90 1C AA           2322 	mov	dptr,#_bitmask_1
   0C3B 93                 2323 	movc	a,@a+dptr
   0C3C 5E                 2324 	anl	a,r6
   0C3D F5 82              2325 	mov	dpl,a
                    0809   2326 	C$fb_app_in8.c$485$1$1 ==.
                    0809   2327 	XG$debounce$0$0 ==.
   0C3F 22                 2328 	ret
                           2329 ;------------------------------------------------------------
                           2330 ;Allocation info for local variables in function 'write_value_req'
                           2331 ;------------------------------------------------------------
                           2332 ;objno                     Allocated to registers r7 
                           2333 ;para_value                Allocated to registers r6 
                           2334 ;tmp                       Allocated to registers r2 
                           2335 ;objtype                   Allocated to registers r6 
                           2336 ;sloc0                     Allocated to stack - _bp +1
                           2337 ;------------------------------------------------------------
                    080A   2338 	G$write_value_req$0$0 ==.
                    080A   2339 	C$fb_app_in8.c$489$1$1 ==.
                           2340 ;	../fb_app_in8.c:489: void write_value_req(unsigned char objno)		// Objekt-Wert setzen gemäß empfangenem EIS Telegramms
                           2341 ;	-----------------------------------------
                           2342 ;	 function write_value_req
                           2343 ;	-----------------------------------------
   0C40                    2344 _write_value_req:
   0C40 C0 7C              2345 	push	_bp
   0C42 E5 81              2346 	mov	a,sp
   0C44 F5 7C              2347 	mov	_bp,a
   0C46 24 04              2348 	add	a,#0x04
   0C48 F5 81              2349 	mov	sp,a
   0C4A AF 82              2350 	mov	r7,dpl
                    0816   2351 	C$fb_app_in8.c$493$1$1 ==.
                           2352 ;	../fb_app_in8.c:493: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
   0C4C 90 1D 12           2353 	mov	dptr,#(_eeprom + 0x0012)
   0C4F E4                 2354 	clr	a
   0C50 93                 2355 	movc	a,@a+dptr
   0C51 2F                 2356 	add	a,r7
   0C52 2F                 2357 	add	a,r7
   0C53 2F                 2358 	add	a,r7
   0C54 24 04              2359 	add	a,#0x04
   0C56 90 1D 00           2360 	mov	dptr,#_eeprom
   0C59 93                 2361 	movc	a,@a+dptr
   0C5A FE                 2362 	mov	r6,a
                    0825   2363 	C$fb_app_in8.c$494$1$1 ==.
                           2364 ;	../fb_app_in8.c:494: if (objno<16) {					// Status der Eingangsobjekte 0-15
   0C5B BF 10 00           2365 	cjne	r7,#0x10,00126$
   0C5E                    2366 00126$:
   0C5E 40 03              2367 	jc	00127$
   0C60 02 0C E5           2368 	ljmp	00115$
   0C63                    2369 00127$:
                    082D   2370 	C$fb_app_in8.c$496$2$2 ==.
                           2371 ;	../fb_app_in8.c:496: if (objtype<=6){
   0C63 EE                 2372 	mov	a,r6
   0C64 24 F9              2373 	add	a,#0xff - 0x06
   0C66 40 26              2374 	jc	00102$
                    0832   2375 	C$fb_app_in8.c$497$3$3 ==.
                           2376 ;	../fb_app_in8.c:497: write_obj_value(objno,telegramm[7]& 0x3F); //bit 6+7 löschen (0x40,0x80)
   0C68 74 3F              2377 	mov	a,#0x3F
   0C6A 55 5A              2378 	anl	a,(_telegramm + 0x0007)
   0C6C FD                 2379 	mov	r5,a
   0C6D 7C 00              2380 	mov	r4,#0x00
   0C6F 7B 00              2381 	mov	r3,#0x00
   0C71 7A 00              2382 	mov	r2,#0x00
   0C73 C0 07              2383 	push	ar7
   0C75 C0 06              2384 	push	ar6
   0C77 C0 05              2385 	push	ar5
   0C79 C0 04              2386 	push	ar4
   0C7B C0 03              2387 	push	ar3
   0C7D C0 02              2388 	push	ar2
   0C7F 8F 82              2389 	mov	dpl,r7
   0C81 12 11 C5           2390 	lcall	_write_obj_value
   0C84 E5 81              2391 	mov	a,sp
   0C86 24 FC              2392 	add	a,#0xfc
   0C88 F5 81              2393 	mov	sp,a
   0C8A D0 06              2394 	pop	ar6
   0C8C D0 07              2395 	pop	ar7
   0C8E                    2396 00102$:
                    0858   2397 	C$fb_app_in8.c$499$2$2 ==.
                           2398 ;	../fb_app_in8.c:499: if (objtype==7)write_obj_value(objno,telegramm[8]);
   0C8E BE 07 23           2399 	cjne	r6,#0x07,00104$
   0C91 AA 5B              2400 	mov	r2,(_telegramm + 0x0008)
   0C93 7B 00              2401 	mov	r3,#0x00
   0C95 7C 00              2402 	mov	r4,#0x00
   0C97 7D 00              2403 	mov	r5,#0x00
   0C99 C0 07              2404 	push	ar7
   0C9B C0 06              2405 	push	ar6
   0C9D C0 02              2406 	push	ar2
   0C9F C0 03              2407 	push	ar3
   0CA1 C0 04              2408 	push	ar4
   0CA3 C0 05              2409 	push	ar5
   0CA5 8F 82              2410 	mov	dpl,r7
   0CA7 12 11 C5           2411 	lcall	_write_obj_value
   0CAA E5 81              2412 	mov	a,sp
   0CAC 24 FC              2413 	add	a,#0xfc
   0CAE F5 81              2414 	mov	sp,a
   0CB0 D0 06              2415 	pop	ar6
   0CB2 D0 07              2416 	pop	ar7
   0CB4                    2417 00104$:
                    087E   2418 	C$fb_app_in8.c$500$2$2 ==.
                           2419 ;	../fb_app_in8.c:500: if (objtype==8)write_obj_value(objno,telegramm[9]+(telegramm[8]<<8));
   0CB4 BE 08 02           2420 	cjne	r6,#0x08,00131$
   0CB7 80 03              2421 	sjmp	00132$
   0CB9                    2422 00131$:
   0CB9 02 0D 8A           2423 	ljmp	00117$
   0CBC                    2424 00132$:
   0CBC AD 5C              2425 	mov	r5,(_telegramm + 0x0009)
   0CBE 7E 00              2426 	mov	r6,#0x00
   0CC0 AB 5B              2427 	mov	r3,(_telegramm + 0x0008)
   0CC2 8B 04              2428 	mov	ar4,r3
   0CC4 E4                 2429 	clr	a
   0CC5 2D                 2430 	add	a,r5
   0CC6 FD                 2431 	mov	r5,a
   0CC7 EC                 2432 	mov	a,r4
   0CC8 3E                 2433 	addc	a,r6
   0CC9 FE                 2434 	mov	r6,a
   0CCA 33                 2435 	rlc	a
   0CCB 95 E0              2436 	subb	a,acc
   0CCD FC                 2437 	mov	r4,a
   0CCE FB                 2438 	mov	r3,a
   0CCF C0 05              2439 	push	ar5
   0CD1 C0 06              2440 	push	ar6
   0CD3 C0 04              2441 	push	ar4
   0CD5 C0 03              2442 	push	ar3
   0CD7 8F 82              2443 	mov	dpl,r7
   0CD9 12 11 C5           2444 	lcall	_write_obj_value
   0CDC E5 81              2445 	mov	a,sp
   0CDE 24 FC              2446 	add	a,#0xfc
   0CE0 F5 81              2447 	mov	sp,a
   0CE2 02 0D 8A           2448 	ljmp	00117$
   0CE5                    2449 00115$:
                    08AF   2450 	C$fb_app_in8.c$506$2$4 ==.
                           2451 ;	../fb_app_in8.c:506: tmp=telegramm[7]& 0x01;
   0CE5 74 01              2452 	mov	a,#0x01
   0CE7 55 5A              2453 	anl	a,(_telegramm + 0x0007)
   0CE9 FA                 2454 	mov	r2,a
                    08B4   2455 	C$fb_app_in8.c$507$2$4 ==.
                           2456 ;	../fb_app_in8.c:507: if (read_obj_value(objno)^tmp) {// nur wenn sich Objekt geändert hat
   0CEA 8F 82              2457 	mov	dpl,r7
   0CEC C0 07              2458 	push	ar7
   0CEE C0 02              2459 	push	ar2
   0CF0 12 10 C9           2460 	lcall	_read_obj_value
   0CF3 A8 7C              2461 	mov	r0,_bp
   0CF5 08                 2462 	inc	r0
   0CF6 A6 82              2463 	mov	@r0,dpl
   0CF8 08                 2464 	inc	r0
   0CF9 A6 83              2465 	mov	@r0,dph
   0CFB 08                 2466 	inc	r0
   0CFC A6 F0              2467 	mov	@r0,b
   0CFE 08                 2468 	inc	r0
   0CFF F6                 2469 	mov	@r0,a
   0D00 D0 02              2470 	pop	ar2
   0D02 8A 04              2471 	mov	ar4,r2
   0D04 7D 00              2472 	mov	r5,#0x00
   0D06 7E 00              2473 	mov	r6,#0x00
   0D08 7F 00              2474 	mov	r7,#0x00
   0D0A A8 7C              2475 	mov	r0,_bp
   0D0C 08                 2476 	inc	r0
   0D0D E6                 2477 	mov	a,@r0
   0D0E 62 04              2478 	xrl	ar4,a
   0D10 08                 2479 	inc	r0
   0D11 E6                 2480 	mov	a,@r0
   0D12 62 05              2481 	xrl	ar5,a
   0D14 08                 2482 	inc	r0
   0D15 E6                 2483 	mov	a,@r0
   0D16 62 06              2484 	xrl	ar6,a
   0D18 08                 2485 	inc	r0
   0D19 E6                 2486 	mov	a,@r0
   0D1A 62 07              2487 	xrl	ar7,a
   0D1C EC                 2488 	mov	a,r4
   0D1D 4D                 2489 	orl	a,r5
   0D1E 4E                 2490 	orl	a,r6
   0D1F 4F                 2491 	orl	a,r7
   0D20 D0 07              2492 	pop	ar7
   0D22 60 66              2493 	jz	00117$
                    08EE   2494 	C$fb_app_in8.c$508$3$5 ==.
                           2495 ;	../fb_app_in8.c:508: write_obj_value(objno,tmp);// objekt sichern
   0D24 8A 03              2496 	mov	ar3,r2
   0D26 7C 00              2497 	mov	r4,#0x00
   0D28 7D 00              2498 	mov	r5,#0x00
   0D2A 7E 00              2499 	mov	r6,#0x00
   0D2C C0 07              2500 	push	ar7
   0D2E C0 02              2501 	push	ar2
   0D30 C0 03              2502 	push	ar3
   0D32 C0 04              2503 	push	ar4
   0D34 C0 05              2504 	push	ar5
   0D36 C0 06              2505 	push	ar6
   0D38 8F 82              2506 	mov	dpl,r7
   0D3A 12 11 C5           2507 	lcall	_write_obj_value
   0D3D E5 81              2508 	mov	a,sp
   0D3F 24 FC              2509 	add	a,#0xfc
   0D41 F5 81              2510 	mov	sp,a
   0D43 D0 02              2511 	pop	ar2
   0D45 D0 07              2512 	pop	ar7
                    0911   2513 	C$fb_app_in8.c$509$3$5 ==.
                           2514 ;	../fb_app_in8.c:509: para_value= (eeprom[0xD5+((objno & 0x07)*4)]&0x03);
   0D47 74 07              2515 	mov	a,#0x07
   0D49 5F                 2516 	anl	a,r7
   0D4A 25 E0              2517 	add	a,acc
   0D4C 25 E0              2518 	add	a,acc
   0D4E 24 D5              2519 	add	a,#0xD5
   0D50 90 1D 00           2520 	mov	dptr,#_eeprom
   0D53 93                 2521 	movc	a,@a+dptr
   0D54 FE                 2522 	mov	r6,a
   0D55 53 06 03           2523 	anl	ar6,#0x03
                    0922   2524 	C$fb_app_in8.c$510$3$5 ==.
                           2525 ;	../fb_app_in8.c:510: tmp = tmp ^ ((para_value) & 0x01);//bei 'nicht invertieren' invertieren,weil wir invertiert abfragen :-(
   0D58 74 01              2526 	mov	a,#0x01
   0D5A 5E                 2527 	anl	a,r6
   0D5B FD                 2528 	mov	r5,a
   0D5C 62 02              2529 	xrl	ar2,a
                    0928   2530 	C$fb_app_in8.c$511$3$5 ==.
                           2531 ;	../fb_app_in8.c:511: if (para_value){			// wenn eine sperre aktiviert parametriert ist
   0D5E EE                 2532 	mov	a,r6
   0D5F 60 29              2533 	jz	00117$
                    092B   2534 	C$fb_app_in8.c$512$4$6 ==.
                           2535 ;	../fb_app_in8.c:512: if(tmp){		//nicht gesperrt(invertierte Abfrage)
   0D61 EA                 2536 	mov	a,r2
   0D62 60 10              2537 	jz	00108$
                    092E   2538 	C$fb_app_in8.c$513$5$7 ==.
                           2539 ;	../fb_app_in8.c:513: blocked=blocked & (0xff-(bitmask_1[objno&0x07]));
   0D64 74 07              2540 	mov	a,#0x07
   0D66 5F                 2541 	anl	a,r7
   0D67 90 1C AA           2542 	mov	dptr,#_bitmask_1
   0D6A 93                 2543 	movc	a,@a+dptr
   0D6B FE                 2544 	mov	r6,a
   0D6C 74 FF              2545 	mov	a,#0xFF
   0D6E C3                 2546 	clr	c
   0D6F 9E                 2547 	subb	a,r6
   0D70 52 28              2548 	anl	_blocked,a
   0D72 80 0A              2549 	sjmp	00109$
   0D74                    2550 00108$:
                    093E   2551 	C$fb_app_in8.c$516$5$8 ==.
                           2552 ;	../fb_app_in8.c:516: blocked=blocked |bitmask_1[objno&0x07];
   0D74 74 07              2553 	mov	a,#0x07
   0D76 5F                 2554 	anl	a,r7
   0D77 90 1C AA           2555 	mov	dptr,#_bitmask_1
   0D7A 93                 2556 	movc	a,@a+dptr
   0D7B FE                 2557 	mov	r6,a
   0D7C 42 28              2558 	orl	_blocked,a
   0D7E                    2559 00109$:
                    0948   2560 	C$fb_app_in8.c$518$4$6 ==.
                           2561 ;	../fb_app_in8.c:518: sperren(objno&0x07,tmp);//temp=1 bedeutet Freigabe
   0D7E 53 07 07           2562 	anl	ar7,#0x07
   0D81 C0 02              2563 	push	ar2
   0D83 8F 82              2564 	mov	dpl,r7
   0D85 12 0D 90           2565 	lcall	_sperren
   0D88 15 81              2566 	dec	sp
   0D8A                    2567 00117$:
   0D8A 85 7C 81           2568 	mov	sp,_bp
   0D8D D0 7C              2569 	pop	_bp
                    0959   2570 	C$fb_app_in8.c$523$1$1 ==.
                    0959   2571 	XG$write_value_req$0$0 ==.
   0D8F 22                 2572 	ret
                           2573 ;------------------------------------------------------------
                           2574 ;Allocation info for local variables in function 'sperren'
                           2575 ;------------------------------------------------------------
                           2576 ;freigabe                  Allocated to stack - _bp -3
                           2577 ;obj                       Allocated to registers r7 
                           2578 ;objval                    Allocated to registers b0 
                           2579 ;sendobj                   Allocated to registers r6 
                           2580 ;------------------------------------------------------------
                    095A   2581 	G$sperren$0$0 ==.
                    095A   2582 	C$fb_app_in8.c$526$1$1 ==.
                           2583 ;	../fb_app_in8.c:526: void sperren (unsigned char obj,unsigned char freigabe)
                           2584 ;	-----------------------------------------
                           2585 ;	 function sperren
                           2586 ;	-----------------------------------------
   0D90                    2587 _sperren:
   0D90 C0 7C              2588 	push	_bp
   0D92 85 81 7C           2589 	mov	_bp,sp
   0D95 AF 82              2590 	mov	r7,dpl
                    0961   2591 	C$fb_app_in8.c$528$1$1 ==.
                           2592 ;	../fb_app_in8.c:528: __bit objval=0;
   0D97 C2 18              2593 	clr	b0
                    0963   2594 	C$fb_app_in8.c$531$1$1 ==.
                           2595 ;	../fb_app_in8.c:531: unsigned char sendobj=255;//obj=obj & 0x07;
   0D99 7E FF              2596 	mov	r6,#0xFF
                    0965   2597 	C$fb_app_in8.c$532$1$1 ==.
                           2598 ;	../fb_app_in8.c:532: switch ((eeprom[0xCE+(obj>>1)] >> ((obj & 0x01)*4)) & 0x0F){// Funtion des zugehörigen Eingangs
   0D9B EF                 2599 	mov	a,r7
   0D9C C3                 2600 	clr	c
   0D9D 13                 2601 	rrc	a
   0D9E 24 CE              2602 	add	a,#0xCE
   0DA0 90 1D 00           2603 	mov	dptr,#_eeprom
   0DA3 93                 2604 	movc	a,@a+dptr
   0DA4 FD                 2605 	mov	r5,a
   0DA5 74 01              2606 	mov	a,#0x01
   0DA7 5F                 2607 	anl	a,r7
   0DA8 75 F0 04           2608 	mov	b,#0x04
   0DAB A4                 2609 	mul	ab
   0DAC F5 F0              2610 	mov	b,a
   0DAE 05 F0              2611 	inc	b
   0DB0 ED                 2612 	mov	a,r5
   0DB1 80 02              2613 	sjmp	00154$
   0DB3                    2614 00153$:
   0DB3 C3                 2615 	clr	c
   0DB4 13                 2616 	rrc	a
   0DB5                    2617 00154$:
   0DB5 D5 F0 FB           2618 	djnz	b,00153$
   0DB8 54 0F              2619 	anl	a,#0x0F
   0DBA FD                 2620 	mov	r5,a
   0DBB BD 01 02           2621 	cjne	r5,#0x01,00155$
   0DBE 80 0F              2622 	sjmp	00101$
   0DC0                    2623 00155$:
   0DC0 BD 02 03           2624 	cjne	r5,#0x02,00156$
   0DC3 02 0E 52           2625 	ljmp	00110$
   0DC6                    2626 00156$:
   0DC6 BD 03 03           2627 	cjne	r5,#0x03,00157$
   0DC9 02 0E B9           2628 	ljmp	00122$
   0DCC                    2629 00157$:
   0DCC 02 0F 1C           2630 	ljmp	00128$
                    0999   2631 	C$fb_app_in8.c$533$2$2 ==.
                           2632 ;	../fb_app_in8.c:533: case 0x01:// funktion Schalten sperren
   0DCF                    2633 00101$:
                    0999   2634 	C$fb_app_in8.c$534$2$2 ==.
                           2635 ;	../fb_app_in8.c:534: sendobj=obj;
                    0999   2636 	C$fb_app_in8.c$535$2$2 ==.
                           2637 ;	../fb_app_in8.c:535: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
   0DCF EF                 2638 	mov	a,r7
   0DD0 FE                 2639 	mov	r6,a
   0DD1 25 E0              2640 	add	a,acc
   0DD3 25 E0              2641 	add	a,acc
   0DD5 24 D5              2642 	add	a,#0xD5
   0DD7 90 1D 00           2643 	mov	dptr,#_eeprom
   0DDA 93                 2644 	movc	a,@a+dptr
   0DDB FD                 2645 	mov	r5,a
   0DDC E5 7C              2646 	mov	a,_bp
   0DDE 24 FD              2647 	add	a,#0xfd
   0DE0 F8                 2648 	mov	r0,a
   0DE1 74 01              2649 	mov	a,#0x01
   0DE3 66                 2650 	xrl	a,@r0
   0DE4 75 F0 02           2651 	mov	b,#0x02
   0DE7 A4                 2652 	mul	ab
   0DE8 F5 F0              2653 	mov	b,a
   0DEA 05 F0              2654 	inc	b
   0DEC ED                 2655 	mov	a,r5
   0DED 80 02              2656 	sjmp	00159$
   0DEF                    2657 00158$:
   0DEF C3                 2658 	clr	c
   0DF0 13                 2659 	rrc	a
   0DF1                    2660 00159$:
   0DF1 D5 F0 FB           2661 	djnz	b,00158$
   0DF4 54 0C              2662 	anl	a,#0x0C
   0DF6 FD                 2663 	mov	r5,a
   0DF7 BD 04 02           2664 	cjne	r5,#0x04,00160$
   0DFA 80 0A              2665 	sjmp	00102$
   0DFC                    2666 00160$:
   0DFC BD 08 02           2667 	cjne	r5,#0x08,00161$
   0DFF 80 0A              2668 	sjmp	00103$
   0E01                    2669 00161$:
                    09CB   2670 	C$fb_app_in8.c$537$3$3 ==.
                           2671 ;	../fb_app_in8.c:537: case 0x04:		//EIN
   0E01 BD 0C 49           2672 	cjne	r5,#0x0C,00108$
   0E04 80 0A              2673 	sjmp	00104$
   0E06                    2674 00102$:
                    09D0   2675 	C$fb_app_in8.c$538$3$3 ==.
                           2676 ;	../fb_app_in8.c:538: objval=1;
   0E06 D2 18              2677 	setb	b0
                    09D2   2678 	C$fb_app_in8.c$539$3$3 ==.
                           2679 ;	../fb_app_in8.c:539: break;
   0E08 02 0F 1C           2680 	ljmp	00128$
                    09D5   2681 	C$fb_app_in8.c$540$3$3 ==.
                           2682 ;	../fb_app_in8.c:540: case 0x08:		//AUS
   0E0B                    2683 00103$:
                    09D5   2684 	C$fb_app_in8.c$541$3$3 ==.
                           2685 ;	../fb_app_in8.c:541: objval=0;
   0E0B C2 18              2686 	clr	b0
                    09D7   2687 	C$fb_app_in8.c$542$3$3 ==.
                           2688 ;	../fb_app_in8.c:542: break;
   0E0D 02 0F 1C           2689 	ljmp	00128$
                    09DA   2690 	C$fb_app_in8.c$543$3$3 ==.
                           2691 ;	../fb_app_in8.c:543: case 0x0C:	//UM
   0E10                    2692 00104$:
                    09DA   2693 	C$fb_app_in8.c$544$3$3 ==.
                           2694 ;	../fb_app_in8.c:544: if (freigabe){ //ende sperre-> aktueller Zustand
   0E10 E5 7C              2695 	mov	a,_bp
   0E12 24 FD              2696 	add	a,#0xfd
   0E14 F8                 2697 	mov	r0,a
   0E15 E6                 2698 	mov	a,@r0
   0E16 60 17              2699 	jz	00106$
                    09E2   2700 	C$fb_app_in8.c$545$4$4 ==.
                           2701 ;	../fb_app_in8.c:545: objval= (portbuffer>>obj)& 0x01;
   0E18 8F F0              2702 	mov	b,r7
   0E1A 05 F0              2703 	inc	b
   0E1C E5 24              2704 	mov	a,_portbuffer
   0E1E 80 02              2705 	sjmp	00165$
   0E20                    2706 00164$:
   0E20 C3                 2707 	clr	c
   0E21 13                 2708 	rrc	a
   0E22                    2709 00165$:
   0E22 D5 F0 FB           2710 	djnz	b,00164$
   0E25 54 01              2711 	anl	a,#0x01
   0E27 FD                 2712 	mov	r5,a
   0E28 24 FF              2713 	add	a,#0xff
   0E2A 92 18              2714 	mov	b0,c
   0E2C 02 0F 1C           2715 	ljmp	00128$
   0E2F                    2716 00106$:
                    09F9   2717 	C$fb_app_in8.c$548$4$5 ==.
                           2718 ;	../fb_app_in8.c:548: objval=read_obj_value(obj)^0x01;//Tele invers senden
   0E2F 8F 82              2719 	mov	dpl,r7
   0E31 C0 06              2720 	push	ar6
   0E33 12 10 C9           2721 	lcall	_read_obj_value
   0E36 AA 82              2722 	mov	r2,dpl
   0E38 AB 83              2723 	mov	r3,dph
   0E3A AC F0              2724 	mov	r4,b
   0E3C FD                 2725 	mov	r5,a
   0E3D D0 06              2726 	pop	ar6
   0E3F 63 02 01           2727 	xrl	ar2,#0x01
   0E42 EA                 2728 	mov	a,r2
   0E43 4B                 2729 	orl	a,r3
   0E44 4C                 2730 	orl	a,r4
   0E45 4D                 2731 	orl	a,r5
   0E46 24 FF              2732 	add	a,#0xff
   0E48 92 18              2733 	mov	b0,c
                    0A14   2734 	C$fb_app_in8.c$550$3$3 ==.
                           2735 ;	../fb_app_in8.c:550: break;
   0E4A 02 0F 1C           2736 	ljmp	00128$
                    0A17   2737 	C$fb_app_in8.c$551$3$3 ==.
                           2738 ;	../fb_app_in8.c:551: default:
   0E4D                    2739 00108$:
                    0A17   2740 	C$fb_app_in8.c$552$3$3 ==.
                           2741 ;	../fb_app_in8.c:552: sendobj=255;
   0E4D 7E FF              2742 	mov	r6,#0xFF
                    0A19   2743 	C$fb_app_in8.c$556$2$2 ==.
                           2744 ;	../fb_app_in8.c:556: break;	
   0E4F 02 0F 1C           2745 	ljmp	00128$
                    0A1C   2746 	C$fb_app_in8.c$557$2$2 ==.
                           2747 ;	../fb_app_in8.c:557: case 0x02:// funktion Dimmer-sperren
   0E52                    2748 00110$:
                    0A1C   2749 	C$fb_app_in8.c$559$2$2 ==.
                           2750 ;	../fb_app_in8.c:559: objval = read_obj_value(obj);
   0E52 8F 82              2751 	mov	dpl,r7
   0E54 C0 07              2752 	push	ar7
   0E56 12 10 C9           2753 	lcall	_read_obj_value
   0E59 AA 82              2754 	mov	r2,dpl
   0E5B AB 83              2755 	mov	r3,dph
   0E5D AC F0              2756 	mov	r4,b
   0E5F FD                 2757 	mov	r5,a
   0E60 D0 07              2758 	pop	ar7
   0E62 EA                 2759 	mov	a,r2
   0E63 4B                 2760 	orl	a,r3
   0E64 4C                 2761 	orl	a,r4
   0E65 4D                 2762 	orl	a,r5
   0E66 24 FF              2763 	add	a,#0xff
   0E68 92 18              2764 	mov	b0,c
                    0A34   2765 	C$fb_app_in8.c$560$2$2 ==.
                           2766 ;	../fb_app_in8.c:560: sendobj=obj;
   0E6A 8F 06              2767 	mov	ar6,r7
                    0A36   2768 	C$fb_app_in8.c$561$2$2 ==.
                           2769 ;	../fb_app_in8.c:561: if (freigabe){		// Ende Sperre  
   0E6C E5 7C              2770 	mov	a,_bp
   0E6E 24 FD              2771 	add	a,#0xfd
   0E70 F8                 2772 	mov	r0,a
   0E71 E6                 2773 	mov	a,@r0
   0E72 60 18              2774 	jz	00120$
                    0A3E   2775 	C$fb_app_in8.c$562$3$6 ==.
                           2776 ;	../fb_app_in8.c:562: if (eeprom[0xD5+(obj*4)]&0x80) objval=0;
   0E74 EF                 2777 	mov	a,r7
   0E75 2F                 2778 	add	a,r7
   0E76 25 E0              2779 	add	a,acc
   0E78 24 D5              2780 	add	a,#0xD5
   0E7A 90 1D 00           2781 	mov	dptr,#_eeprom
   0E7D 93                 2782 	movc	a,@a+dptr
   0E7E FD                 2783 	mov	r5,a
   0E7F 30 E7 05           2784 	jnb	acc.7,00112$
   0E82 C2 18              2785 	clr	b0
   0E84 02 0F 1C           2786 	ljmp	00128$
   0E87                    2787 00112$:
                    0A51   2788 	C$fb_app_in8.c$563$3$6 ==.
                           2789 ;	../fb_app_in8.c:563: else sendobj=255;
   0E87 7E FF              2790 	mov	r6,#0xFF
   0E89 02 0F 1C           2791 	ljmp	00128$
   0E8C                    2792 00120$:
                    0A56   2793 	C$fb_app_in8.c$566$3$7 ==.
                           2794 ;	../fb_app_in8.c:566: switch (eeprom[0xD5+(obj*4)+1]& 0xC0) {//Bedienkonzept angucken
   0E8C EF                 2795 	mov	a,r7
   0E8D 2F                 2796 	add	a,r7
   0E8E 25 E0              2797 	add	a,acc
   0E90 24 D6              2798 	add	a,#0xD6
   0E92 90 1D 00           2799 	mov	dptr,#_eeprom
   0E95 93                 2800 	movc	a,@a+dptr
   0E96 FD                 2801 	mov	r5,a
   0E97 53 05 C0           2802 	anl	ar5,#0xC0
   0E9A BD 40 02           2803 	cjne	r5,#0x40,00168$
   0E9D 80 0A              2804 	sjmp	00114$
   0E9F                    2805 00168$:
   0E9F BD 80 02           2806 	cjne	r5,#0x80,00169$
   0EA2 80 09              2807 	sjmp	00115$
   0EA4                    2808 00169$:
                    0A6E   2809 	C$fb_app_in8.c$567$4$8 ==.
                           2810 ;	../fb_app_in8.c:567: case 0x40:	// zweiflaechen ein
   0EA4 BD C0 0E           2811 	cjne	r5,#0xC0,00117$
   0EA7 80 08              2812 	sjmp	00116$
   0EA9                    2813 00114$:
                    0A73   2814 	C$fb_app_in8.c$568$4$8 ==.
                           2815 ;	../fb_app_in8.c:568: objval=1;
   0EA9 D2 18              2816 	setb	b0
                    0A75   2817 	C$fb_app_in8.c$569$4$8 ==.
                           2818 ;	../fb_app_in8.c:569: break;
                    0A75   2819 	C$fb_app_in8.c$570$4$8 ==.
                           2820 ;	../fb_app_in8.c:570: case 0x80:	// zweiflaechen aus
   0EAB 80 6F              2821 	sjmp	00128$
   0EAD                    2822 00115$:
                    0A77   2823 	C$fb_app_in8.c$571$4$8 ==.
                           2824 ;	../fb_app_in8.c:571: objval=0;
   0EAD C2 18              2825 	clr	b0
                    0A79   2826 	C$fb_app_in8.c$572$4$8 ==.
                           2827 ;	../fb_app_in8.c:572: break;
                    0A79   2828 	C$fb_app_in8.c$573$4$8 ==.
                           2829 ;	../fb_app_in8.c:573: case 0xC0:	// UM-heller
   0EAF 80 6B              2830 	sjmp	00128$
   0EB1                    2831 00116$:
                    0A7B   2832 	C$fb_app_in8.c$574$4$8 ==.
                           2833 ;	../fb_app_in8.c:574: objval = !objval;
   0EB1 B2 18              2834 	cpl	b0
                    0A7D   2835 	C$fb_app_in8.c$575$4$8 ==.
                           2836 ;	../fb_app_in8.c:575: break;
                    0A7D   2837 	C$fb_app_in8.c$576$4$8 ==.
                           2838 ;	../fb_app_in8.c:576: default:
   0EB3 80 67              2839 	sjmp	00128$
   0EB5                    2840 00117$:
                    0A7F   2841 	C$fb_app_in8.c$577$4$8 ==.
                           2842 ;	../fb_app_in8.c:577: sendobj=255;
   0EB5 7E FF              2843 	mov	r6,#0xFF
                    0A81   2844 	C$fb_app_in8.c$582$2$2 ==.
                           2845 ;	../fb_app_in8.c:582: break;
                    0A81   2846 	C$fb_app_in8.c$583$2$2 ==.
                           2847 ;	../fb_app_in8.c:583: case 0x03:// Funktion Jalousie - Sperren
   0EB7 80 63              2848 	sjmp	00128$
   0EB9                    2849 00122$:
                    0A83   2850 	C$fb_app_in8.c$584$2$2 ==.
                           2851 ;	../fb_app_in8.c:584: sendobj=obj+8;
   0EB9 74 08              2852 	mov	a,#0x08
   0EBB 2F                 2853 	add	a,r7
   0EBC FE                 2854 	mov	r6,a
                    0A87   2855 	C$fb_app_in8.c$585$2$2 ==.
                           2856 ;	../fb_app_in8.c:585: switch ((eeprom[0xD5+(obj*4)]>>((freigabe^0x01)*2))&0x0C){
   0EBD EF                 2857 	mov	a,r7
   0EBE 2F                 2858 	add	a,r7
   0EBF 25 E0              2859 	add	a,acc
   0EC1 24 D5              2860 	add	a,#0xD5
   0EC3 90 1D 00           2861 	mov	dptr,#_eeprom
   0EC6 93                 2862 	movc	a,@a+dptr
   0EC7 FD                 2863 	mov	r5,a
   0EC8 E5 7C              2864 	mov	a,_bp
   0ECA 24 FD              2865 	add	a,#0xfd
   0ECC F8                 2866 	mov	r0,a
   0ECD 74 01              2867 	mov	a,#0x01
   0ECF 66                 2868 	xrl	a,@r0
   0ED0 75 F0 02           2869 	mov	b,#0x02
   0ED3 A4                 2870 	mul	ab
   0ED4 F5 F0              2871 	mov	b,a
   0ED6 05 F0              2872 	inc	b
   0ED8 ED                 2873 	mov	a,r5
   0ED9 80 02              2874 	sjmp	00172$
   0EDB                    2875 00171$:
   0EDB C3                 2876 	clr	c
   0EDC 13                 2877 	rrc	a
   0EDD                    2878 00172$:
   0EDD D5 F0 FB           2879 	djnz	b,00171$
   0EE0 54 0C              2880 	anl	a,#0x0C
   0EE2 FD                 2881 	mov	r5,a
   0EE3 BD 04 02           2882 	cjne	r5,#0x04,00173$
   0EE6 80 0A              2883 	sjmp	00123$
   0EE8                    2884 00173$:
   0EE8 BD 08 02           2885 	cjne	r5,#0x08,00174$
   0EEB 80 09              2886 	sjmp	00124$
   0EED                    2887 00174$:
                    0AB7   2888 	C$fb_app_in8.c$586$3$9 ==.
                           2889 ;	../fb_app_in8.c:586: case 0x04:		//ab
   0EED BD 0C 2A           2890 	cjne	r5,#0x0C,00126$
   0EF0 80 08              2891 	sjmp	00125$
   0EF2                    2892 00123$:
                    0ABC   2893 	C$fb_app_in8.c$587$3$9 ==.
                           2894 ;	../fb_app_in8.c:587: objval=0;
   0EF2 C2 18              2895 	clr	b0
                    0ABE   2896 	C$fb_app_in8.c$588$3$9 ==.
                           2897 ;	../fb_app_in8.c:588: break;
                    0ABE   2898 	C$fb_app_in8.c$589$3$9 ==.
                           2899 ;	../fb_app_in8.c:589: case 0x08:		//auf
   0EF4 80 26              2900 	sjmp	00128$
   0EF6                    2901 00124$:
                    0AC0   2902 	C$fb_app_in8.c$590$3$9 ==.
                           2903 ;	../fb_app_in8.c:590: objval=1;
   0EF6 D2 18              2904 	setb	b0
                    0AC2   2905 	C$fb_app_in8.c$591$3$9 ==.
                           2906 ;	../fb_app_in8.c:591: break;
                    0AC2   2907 	C$fb_app_in8.c$592$3$9 ==.
                           2908 ;	../fb_app_in8.c:592: case 0x0c:	//UM
   0EF8 80 22              2909 	sjmp	00128$
   0EFA                    2910 00125$:
                    0AC4   2911 	C$fb_app_in8.c$593$3$9 ==.
                           2912 ;	../fb_app_in8.c:593: objval=read_obj_value(obj+8)^0x01;//neues Jaloobj invers zum langzeit
   0EFA 74 08              2913 	mov	a,#0x08
   0EFC 2F                 2914 	add	a,r7
   0EFD F5 82              2915 	mov	dpl,a
   0EFF C0 06              2916 	push	ar6
   0F01 12 10 C9           2917 	lcall	_read_obj_value
   0F04 AB 82              2918 	mov	r3,dpl
   0F06 AC 83              2919 	mov	r4,dph
   0F08 AD F0              2920 	mov	r5,b
   0F0A FF                 2921 	mov	r7,a
   0F0B D0 06              2922 	pop	ar6
   0F0D 63 03 01           2923 	xrl	ar3,#0x01
   0F10 EB                 2924 	mov	a,r3
   0F11 4C                 2925 	orl	a,r4
   0F12 4D                 2926 	orl	a,r5
   0F13 4F                 2927 	orl	a,r7
   0F14 24 FF              2928 	add	a,#0xff
   0F16 92 18              2929 	mov	b0,c
                    0AE2   2930 	C$fb_app_in8.c$594$3$9 ==.
                           2931 ;	../fb_app_in8.c:594: break;
                    0AE2   2932 	C$fb_app_in8.c$595$3$9 ==.
                           2933 ;	../fb_app_in8.c:595: default:
   0F18 80 02              2934 	sjmp	00128$
   0F1A                    2935 00126$:
                    0AE4   2936 	C$fb_app_in8.c$596$3$9 ==.
                           2937 ;	../fb_app_in8.c:596: sendobj=255;	
   0F1A 7E FF              2938 	mov	r6,#0xFF
                    0AE6   2939 	C$fb_app_in8.c$600$1$1 ==.
                           2940 ;	../fb_app_in8.c:600: }// Ende switch funktion
   0F1C                    2941 00128$:
                    0AE6   2942 	C$fb_app_in8.c$601$1$1 ==.
                           2943 ;	../fb_app_in8.c:601: if(sendobj<=16){
   0F1C EE                 2944 	mov	a,r6
   0F1D 24 EF              2945 	add	a,#0xff - 0x10
   0F1F 40 2D              2946 	jc	00134$
                    0AEB   2947 	C$fb_app_in8.c$602$2$10 ==.
                           2948 ;	../fb_app_in8.c:602: write_obj_value(sendobj,objval);
   0F21 A2 18              2949 	mov	c,b0
   0F23 E4                 2950 	clr	a
   0F24 33                 2951 	rlc	a
   0F25 FB                 2952 	mov	r3,a
   0F26 7C 00              2953 	mov	r4,#0x00
   0F28 7D 00              2954 	mov	r5,#0x00
   0F2A 7F 00              2955 	mov	r7,#0x00
   0F2C C0 06              2956 	push	ar6
   0F2E C0 03              2957 	push	ar3
   0F30 C0 04              2958 	push	ar4
   0F32 C0 05              2959 	push	ar5
   0F34 C0 07              2960 	push	ar7
   0F36 8E 82              2961 	mov	dpl,r6
   0F38 12 11 C5           2962 	lcall	_write_obj_value
   0F3B E5 81              2963 	mov	a,sp
   0F3D 24 FC              2964 	add	a,#0xfc
   0F3F F5 81              2965 	mov	sp,a
   0F41 D0 06              2966 	pop	ar6
                    0B0D   2967 	C$fb_app_in8.c$603$2$10 ==.
                           2968 ;	../fb_app_in8.c:603: while(!send_obj_value(sendobj));
   0F43                    2969 00129$:
   0F43 8E 82              2970 	mov	dpl,r6
   0F45 C0 06              2971 	push	ar6
   0F47 12 18 F5           2972 	lcall	_send_obj_value
   0F4A D0 06              2973 	pop	ar6
   0F4C 50 F5              2974 	jnc	00129$
   0F4E                    2975 00134$:
   0F4E D0 7C              2976 	pop	_bp
                    0B1A   2977 	C$fb_app_in8.c$606$2$1 ==.
                    0B1A   2978 	XG$sperren$0$0 ==.
   0F50 22                 2979 	ret
                           2980 ;------------------------------------------------------------
                           2981 ;Allocation info for local variables in function 'read_value_req'
                           2982 ;------------------------------------------------------------
                           2983 ;objno                     Allocated to registers r7 
                           2984 ;------------------------------------------------------------
                    0B1B   2985 	G$read_value_req$0$0 ==.
                    0B1B   2986 	C$fb_app_in8.c$617$2$1 ==.
                           2987 ;	../fb_app_in8.c:617: void read_value_req(unsigned char objno)
                           2988 ;	-----------------------------------------
                           2989 ;	 function read_value_req
                           2990 ;	-----------------------------------------
   0F51                    2991 _read_value_req:
   0F51 AF 82              2992 	mov	r7,dpl
                    0B1D   2993 	C$fb_app_in8.c$620$1$1 ==.
                           2994 ;	../fb_app_in8.c:620: send_obj_value(objno+0x40);
   0F53 74 40              2995 	mov	a,#0x40
   0F55 2F                 2996 	add	a,r7
   0F56 F5 82              2997 	mov	dpl,a
   0F58 12 18 F5           2998 	lcall	_send_obj_value
                    0B25   2999 	C$fb_app_in8.c$621$1$1 ==.
                    0B25   3000 	XG$read_value_req$0$0 ==.
   0F5B 22                 3001 	ret
                           3002 ;------------------------------------------------------------
                           3003 ;Allocation info for local variables in function 'write_send'
                           3004 ;------------------------------------------------------------
                           3005 ;value                     Allocated to stack - _bp -4
                           3006 ;objno                     Allocated to registers r7 
                           3007 ;------------------------------------------------------------
                    0B26   3008 	G$write_send$0$0 ==.
                    0B26   3009 	C$fb_app_in8.c$624$1$1 ==.
                           3010 ;	../fb_app_in8.c:624: void (write_send)(unsigned char objno,unsigned int value){
                           3011 ;	-----------------------------------------
                           3012 ;	 function write_send
                           3013 ;	-----------------------------------------
   0F5C                    3014 _write_send:
   0F5C C0 7C              3015 	push	_bp
   0F5E 85 81 7C           3016 	mov	_bp,sp
   0F61 AF 82              3017 	mov	r7,dpl
                    0B2D   3018 	C$fb_app_in8.c$626$1$1 ==.
                           3019 ;	../fb_app_in8.c:626: write_obj_value(objno,value);
   0F63 E5 7C              3020 	mov	a,_bp
   0F65 24 FC              3021 	add	a,#0xfc
   0F67 F8                 3022 	mov	r0,a
   0F68 86 03              3023 	mov	ar3,@r0
   0F6A 08                 3024 	inc	r0
   0F6B 86 04              3025 	mov	ar4,@r0
   0F6D 7D 00              3026 	mov	r5,#0x00
   0F6F 7E 00              3027 	mov	r6,#0x00
   0F71 C0 07              3028 	push	ar7
   0F73 C0 03              3029 	push	ar3
   0F75 C0 04              3030 	push	ar4
   0F77 C0 05              3031 	push	ar5
   0F79 C0 06              3032 	push	ar6
   0F7B 8F 82              3033 	mov	dpl,r7
   0F7D 12 11 C5           3034 	lcall	_write_obj_value
   0F80 E5 81              3035 	mov	a,sp
   0F82 24 FC              3036 	add	a,#0xfc
   0F84 F5 81              3037 	mov	sp,a
   0F86 D0 07              3038 	pop	ar7
                    0B52   3039 	C$fb_app_in8.c$627$1$1 ==.
                           3040 ;	../fb_app_in8.c:627: send_obj_value(objno);
   0F88 8F 82              3041 	mov	dpl,r7
   0F8A 12 18 F5           3042 	lcall	_send_obj_value
   0F8D D0 7C              3043 	pop	_bp
                    0B59   3044 	C$fb_app_in8.c$628$1$1 ==.
                    0B59   3045 	XG$write_send$0$0 ==.
   0F8F 22                 3046 	ret
                           3047 ;------------------------------------------------------------
                           3048 ;Allocation info for local variables in function 'bus_return'
                           3049 ;------------------------------------------------------------
                           3050 ;n                         Allocated to registers r7 
                           3051 ;senden                    Allocated to registers r6 
                           3052 ;objval                    Allocated to registers b0 
                           3053 ;------------------------------------------------------------
                    0B5A   3054 	G$bus_return$0$0 ==.
                    0B5A   3055 	C$fb_app_in8.c$631$1$1 ==.
                           3056 ;	../fb_app_in8.c:631: void bus_return(void){
                           3057 ;	-----------------------------------------
                           3058 ;	 function bus_return
                           3059 ;	-----------------------------------------
   0F90                    3060 _bus_return:
                    0B5A   3061 	C$fb_app_in8.c$634$1$1 ==.
                           3062 ;	../fb_app_in8.c:634: __bit objval=0;
   0F90 C2 18              3063 	clr	b0
                    0B5C   3064 	C$fb_app_in8.c$635$1$1 ==.
                           3065 ;	../fb_app_in8.c:635: blocked=0;
   0F92 75 28 00           3066 	mov	_blocked,#0x00
                    0B5F   3067 	C$fb_app_in8.c$637$3$3 ==.
                           3068 ;	../fb_app_in8.c:637: for (n=0;n<8;n++){
   0F95 7F 00              3069 	mov	r7,#0x00
   0F97                    3070 00124$:
   0F97 BF 08 00           3071 	cjne	r7,#0x08,00146$
   0F9A                    3072 00146$:
   0F9A 40 03              3073 	jc	00147$
   0F9C 02 10 C8           3074 	ljmp	00128$
   0F9F                    3075 00147$:
                    0B69   3076 	C$fb_app_in8.c$638$2$2 ==.
                           3077 ;	../fb_app_in8.c:638: senden=0;
   0F9F 7E 00              3078 	mov	r6,#0x00
                    0B6B   3079 	C$fb_app_in8.c$639$2$2 ==.
                           3080 ;	../fb_app_in8.c:639: timercnt[n]=0;// alle timer ausschalten
   0FA1 EF                 3081 	mov	a,r7
   0FA2 24 36              3082 	add	a,#_timercnt
   0FA4 F9                 3083 	mov	r1,a
   0FA5 77 00              3084 	mov	@r1,#0x00
                    0B71   3085 	C$fb_app_in8.c$640$2$2 ==.
                           3086 ;	../fb_app_in8.c:640: objectvalue_l[n]=0;
   0FA7 EF                 3087 	mov	a,r7
   0FA8 24 08              3088 	add	a,#_objectvalue_l
   0FAA F8                 3089 	mov	r0,a
   0FAB 76 00              3090 	mov	@r0,#0x00
                    0B77   3091 	C$fb_app_in8.c$641$2$2 ==.
                           3092 ;	../fb_app_in8.c:641: objectvalue_h[n]=0;
   0FAD EF                 3093 	mov	a,r7
   0FAE 24 10              3094 	add	a,#_objectvalue_h
   0FB0 F8                 3095 	mov	r0,a
   0FB1 76 00              3096 	mov	@r0,#0x00
                    0B7D   3097 	C$fb_app_in8.c$642$2$2 ==.
                           3098 ;	../fb_app_in8.c:642: switch ((eeprom[0xCE+(n>>1)] >> ((n & 0x01)*4)) & 0x0F)	// Funktion des objektes
   0FB3 EF                 3099 	mov	a,r7
   0FB4 C3                 3100 	clr	c
   0FB5 13                 3101 	rrc	a
   0FB6 24 CE              3102 	add	a,#0xCE
   0FB8 90 1D 00           3103 	mov	dptr,#_eeprom
   0FBB 93                 3104 	movc	a,@a+dptr
   0FBC FD                 3105 	mov	r5,a
   0FBD 74 01              3106 	mov	a,#0x01
   0FBF 5F                 3107 	anl	a,r7
   0FC0 75 F0 04           3108 	mov	b,#0x04
   0FC3 A4                 3109 	mul	ab
   0FC4 F5 F0              3110 	mov	b,a
   0FC6 05 F0              3111 	inc	b
   0FC8 ED                 3112 	mov	a,r5
   0FC9 80 02              3113 	sjmp	00149$
   0FCB                    3114 00148$:
   0FCB C3                 3115 	clr	c
   0FCC 13                 3116 	rrc	a
   0FCD                    3117 00149$:
   0FCD D5 F0 FB           3118 	djnz	b,00148$
   0FD0 54 0F              3119 	anl	a,#0x0F
   0FD2 FD                 3120 	mov	r5,a
   0FD3 BD 01 02           3121 	cjne	r5,#0x01,00150$
   0FD6 80 13              3122 	sjmp	00101$
   0FD8                    3123 00150$:
   0FD8 BD 02 02           3124 	cjne	r5,#0x02,00151$
   0FDB 80 4F              3125 	sjmp	00107$
   0FDD                    3126 00151$:
   0FDD BD 03 02           3127 	cjne	r5,#0x03,00152$
   0FE0 80 0F              3128 	sjmp	00102$
   0FE2                    3129 00152$:
   0FE2 BD 09 03           3130 	cjne	r5,#0x09,00153$
   0FE5 02 10 50           3131 	ljmp	00112$
   0FE8                    3132 00153$:
   0FE8 02 10 68           3133 	ljmp	00115$
                    0BB5   3134 	C$fb_app_in8.c$644$3$3 ==.
                           3135 ;	../fb_app_in8.c:644: case 0x01:// schalten
   0FEB                    3136 00101$:
                    0BB5   3137 	C$fb_app_in8.c$645$3$3 ==.
                           3138 ;	../fb_app_in8.c:645: timerstate[n]=0;
   0FEB EF                 3139 	mov	a,r7
   0FEC 24 3F              3140 	add	a,#_timerstate
   0FEE F8                 3141 	mov	r0,a
   0FEF 76 00              3142 	mov	@r0,#0x00
                    0BBB   3143 	C$fb_app_in8.c$646$3$3 ==.
                           3144 ;	../fb_app_in8.c:646: case 0x03:// Jalousie
   0FF1                    3145 00102$:
                    0BBB   3146 	C$fb_app_in8.c$648$3$3 ==.
                           3147 ;	../fb_app_in8.c:648: switch(eeprom[0xD5+(n*4)]&0xC0){
   0FF1 EF                 3148 	mov	a,r7
   0FF2 2F                 3149 	add	a,r7
   0FF3 25 E0              3150 	add	a,acc
   0FF5 24 D5              3151 	add	a,#0xD5
   0FF7 90 1D 00           3152 	mov	dptr,#_eeprom
   0FFA 93                 3153 	movc	a,@a+dptr
   0FFB FD                 3154 	mov	r5,a
   0FFC 53 05 C0           3155 	anl	ar5,#0xC0
   0FFF BD 40 02           3156 	cjne	r5,#0x40,00154$
   1002 80 0A              3157 	sjmp	00103$
   1004                    3158 00154$:
   1004 BD 80 02           3159 	cjne	r5,#0x80,00155$
   1007 80 0B              3160 	sjmp	00104$
   1009                    3161 00155$:
                    0BD3   3162 	C$fb_app_in8.c$649$4$4 ==.
                           3163 ;	../fb_app_in8.c:649: case 0x40:
   1009 BD C0 5C           3164 	cjne	r5,#0xC0,00115$
   100C 80 0C              3165 	sjmp	00105$
   100E                    3166 00103$:
                    0BD8   3167 	C$fb_app_in8.c$650$4$4 ==.
                           3168 ;	../fb_app_in8.c:650: objval=1;
   100E D2 18              3169 	setb	b0
                    0BDA   3170 	C$fb_app_in8.c$651$4$4 ==.
                           3171 ;	../fb_app_in8.c:651: senden=1;
   1010 7E 01              3172 	mov	r6,#0x01
                    0BDC   3173 	C$fb_app_in8.c$652$4$4 ==.
                           3174 ;	../fb_app_in8.c:652: break;	
                    0BDC   3175 	C$fb_app_in8.c$653$4$4 ==.
                           3176 ;	../fb_app_in8.c:653: case 0x80:
   1012 80 54              3177 	sjmp	00115$
   1014                    3178 00104$:
                    0BDE   3179 	C$fb_app_in8.c$654$4$4 ==.
                           3180 ;	../fb_app_in8.c:654: objval=0;
   1014 C2 18              3181 	clr	b0
                    0BE0   3182 	C$fb_app_in8.c$655$4$4 ==.
                           3183 ;	../fb_app_in8.c:655: senden=1;
   1016 7E 01              3184 	mov	r6,#0x01
                    0BE2   3185 	C$fb_app_in8.c$656$4$4 ==.
                           3186 ;	../fb_app_in8.c:656: break;
                    0BE2   3187 	C$fb_app_in8.c$657$4$4 ==.
                           3188 ;	../fb_app_in8.c:657: case 0xC0:
   1018 80 4E              3189 	sjmp	00115$
   101A                    3190 00105$:
                    0BE4   3191 	C$fb_app_in8.c$658$4$4 ==.
                           3192 ;	../fb_app_in8.c:658: portbuffer ^= (0x01<<n);//Bit im portbuffer invertieren, löst eine Flanke aus
   101A 8F F0              3193 	mov	b,r7
   101C 05 F0              3194 	inc	b
   101E 74 01              3195 	mov	a,#0x01
   1020 80 02              3196 	sjmp	00159$
   1022                    3197 00157$:
   1022 25 E0              3198 	add	a,acc
   1024                    3199 00159$:
   1024 D5 F0 FB           3200 	djnz	b,00157$
   1027 FD                 3201 	mov	r5,a
   1028 62 24              3202 	xrl	_portbuffer,a
                    0BF4   3203 	C$fb_app_in8.c$660$3$3 ==.
                           3204 ;	../fb_app_in8.c:660: break;
                    0BF4   3205 	C$fb_app_in8.c$661$3$3 ==.
                           3206 ;	../fb_app_in8.c:661: case 0x02://dimmen austele
   102A 80 3C              3207 	sjmp	00115$
   102C                    3208 00107$:
                    0BF6   3209 	C$fb_app_in8.c$662$3$3 ==.
                           3210 ;	../fb_app_in8.c:662: if(eeprom[0xD7+(n*4)]&0x80){
   102C EF                 3211 	mov	a,r7
   102D 2F                 3212 	add	a,r7
   102E 25 E0              3213 	add	a,acc
   1030 FD                 3214 	mov	r5,a
   1031 24 D7              3215 	add	a,#0xD7
   1033 90 1D 00           3216 	mov	dptr,#_eeprom
   1036 93                 3217 	movc	a,@a+dptr
   1037 FC                 3218 	mov	r4,a
   1038 30 E7 04           3219 	jnb	acc.7,00109$
                    0C05   3220 	C$fb_app_in8.c$663$4$5 ==.
                           3221 ;	../fb_app_in8.c:663: objval=0;
   103B C2 18              3222 	clr	b0
                    0C07   3223 	C$fb_app_in8.c$664$4$5 ==.
                           3224 ;	../fb_app_in8.c:664: senden=1;
   103D 7E 01              3225 	mov	r6,#0x01
   103F                    3226 00109$:
                    0C09   3227 	C$fb_app_in8.c$666$3$3 ==.
                           3228 ;	../fb_app_in8.c:666: if(eeprom[0xD8+(n*4)]&0x80){
   103F 74 D8              3229 	mov	a,#0xD8
   1041 2D                 3230 	add	a,r5
   1042 90 1D 00           3231 	mov	dptr,#_eeprom
   1045 93                 3232 	movc	a,@a+dptr
   1046 FD                 3233 	mov	r5,a
   1047 30 E7 1E           3234 	jnb	acc.7,00115$
                    0C14   3235 	C$fb_app_in8.c$667$4$6 ==.
                           3236 ;	../fb_app_in8.c:667: objval=1;
   104A D2 18              3237 	setb	b0
                    0C16   3238 	C$fb_app_in8.c$668$4$6 ==.
                           3239 ;	../fb_app_in8.c:668: senden=1;
   104C 7E 01              3240 	mov	r6,#0x01
                    0C18   3241 	C$fb_app_in8.c$671$3$3 ==.
                           3242 ;	../fb_app_in8.c:671: break;
                    0C18   3243 	C$fb_app_in8.c$672$3$3 ==.
                           3244 ;	../fb_app_in8.c:672: case 0x09:	// timer für impulszähler starten falls kein sync angeschlossen 
   104E 80 18              3245 	sjmp	00115$
   1050                    3246 00112$:
                    0C1A   3247 	C$fb_app_in8.c$673$3$3 ==.
                           3248 ;	../fb_app_in8.c:673: if (n<=1){
   1050 EF                 3249 	mov	a,r7
   1051 24 FE              3250 	add	a,#0xff - 0x01
   1053 40 13              3251 	jc	00115$
                    0C1F   3252 	C$fb_app_in8.c$674$4$7 ==.
                           3253 ;	../fb_app_in8.c:674: timercnt[n]=0x80;
   1055 77 80              3254 	mov	@r1,#0x80
                    0C21   3255 	C$fb_app_in8.c$675$4$7 ==.
                           3256 ;	../fb_app_in8.c:675: timerbase[n]=0x80;
   1057 EF                 3257 	mov	a,r7
   1058 24 2D              3258 	add	a,#_timerbase
   105A F8                 3259 	mov	r0,a
   105B 76 80              3260 	mov	@r0,#0x80
                    0C27   3261 	C$fb_app_in8.c$676$4$7 ==.
                           3262 ;	../fb_app_in8.c:676: zaehlervalue[n]=0;
   105D EF                 3263 	mov	a,r7
   105E 2F                 3264 	add	a,r7
   105F FD                 3265 	mov	r5,a
   1060 24 19              3266 	add	a,#_zaehlervalue
   1062 F8                 3267 	mov	r0,a
   1063 76 00              3268 	mov	@r0,#0x00
   1065 08                 3269 	inc	r0
   1066 76 00              3270 	mov	@r0,#0x00
                    0C32   3271 	C$fb_app_in8.c$679$2$2 ==.
                           3272 ;	../fb_app_in8.c:679: }
   1068                    3273 00115$:
                    0C32   3274 	C$fb_app_in8.c$680$2$2 ==.
                           3275 ;	../fb_app_in8.c:680: if (senden){
   1068 EE                 3276 	mov	a,r6
   1069 60 35              3277 	jz	00120$
                    0C35   3278 	C$fb_app_in8.c$681$3$8 ==.
                           3279 ;	../fb_app_in8.c:681: write_obj_value(n,objval);// eis1, kein selftele, speichern ja
   106B A2 18              3280 	mov	c,b0
   106D E4                 3281 	clr	a
   106E 33                 3282 	rlc	a
   106F FB                 3283 	mov	r3,a
   1070 7C 00              3284 	mov	r4,#0x00
   1072 7D 00              3285 	mov	r5,#0x00
   1074 7E 00              3286 	mov	r6,#0x00
   1076 C0 07              3287 	push	ar7
   1078 C0 23              3288 	push	bits
   107A C0 03              3289 	push	ar3
   107C C0 04              3290 	push	ar4
   107E C0 05              3291 	push	ar5
   1080 C0 06              3292 	push	ar6
   1082 8F 82              3293 	mov	dpl,r7
   1084 12 11 C5           3294 	lcall	_write_obj_value
   1087 E5 81              3295 	mov	a,sp
   1089 24 FC              3296 	add	a,#0xfc
   108B F5 81              3297 	mov	sp,a
   108D D0 23              3298 	pop	bits
   108F D0 07              3299 	pop	ar7
                    0C5B   3300 	C$fb_app_in8.c$682$3$8 ==.
                           3301 ;	../fb_app_in8.c:682: while(!send_obj_value(n));
   1091                    3302 00116$:
   1091 8F 82              3303 	mov	dpl,r7
   1093 C0 07              3304 	push	ar7
   1095 C0 23              3305 	push	bits
   1097 12 18 F5           3306 	lcall	_send_obj_value
   109A D0 23              3307 	pop	bits
   109C D0 07              3308 	pop	ar7
   109E 50 F1              3309 	jnc	00116$
   10A0                    3310 00120$:
                    0C6A   3311 	C$fb_app_in8.c$684$2$2 ==.
                           3312 ;	../fb_app_in8.c:684: if((eeprom[0xD5+(n*4)]& 0x03)==2){ //bei invertierter Sperre Sperrobjekt setzen.
   10A0 EF                 3313 	mov	a,r7
   10A1 2F                 3314 	add	a,r7
   10A2 25 E0              3315 	add	a,acc
   10A4 24 D5              3316 	add	a,#0xD5
   10A6 90 1D 00           3317 	mov	dptr,#_eeprom
   10A9 93                 3318 	movc	a,@a+dptr
   10AA FE                 3319 	mov	r6,a
   10AB 53 06 03           3320 	anl	ar6,#0x03
   10AE BE 02 0A           3321 	cjne	r6,#0x02,00122$
                    0C7B   3322 	C$fb_app_in8.c$685$3$9 ==.
                           3323 ;	../fb_app_in8.c:685: Sperre |= bitmask_1[n];
   10B1 EF                 3324 	mov	a,r7
   10B2 90 1C AA           3325 	mov	dptr,#_bitmask_1
   10B5 93                 3326 	movc	a,@a+dptr
   10B6 FE                 3327 	mov	r6,a
   10B7 42 18              3328 	orl	_Sperre,a
   10B9 80 09              3329 	sjmp	00126$
   10BB                    3330 00122$:
                    0C85   3331 	C$fb_app_in8.c$688$3$10 ==.
                           3332 ;	../fb_app_in8.c:688: Sperre &= (~bitmask_1[n]);
   10BB EF                 3333 	mov	a,r7
   10BC 90 1C AA           3334 	mov	dptr,#_bitmask_1
   10BF 93                 3335 	movc	a,@a+dptr
   10C0 F4                 3336 	cpl	a
   10C1 FE                 3337 	mov	r6,a
   10C2 52 18              3338 	anl	_Sperre,a
   10C4                    3339 00126$:
                    0C8E   3340 	C$fb_app_in8.c$637$1$1 ==.
                           3341 ;	../fb_app_in8.c:637: for (n=0;n<8;n++){
   10C4 0F                 3342 	inc	r7
   10C5 02 0F 97           3343 	ljmp	00124$
   10C8                    3344 00128$:
                    0C92   3345 	C$fb_app_in8.c$691$1$1 ==.
                    0C92   3346 	XG$bus_return$0$0 ==.
   10C8 22                 3347 	ret
                           3348 ;------------------------------------------------------------
                           3349 ;Allocation info for local variables in function 'read_obj_value'
                           3350 ;------------------------------------------------------------
                           3351 ;objno                     Allocated to registers r7 
                           3352 ;objvalue                  Allocated to stack - _bp +1
                           3353 ;objtype                   Allocated to registers r6 
                           3354 ;sloc0                     Allocated to stack - _bp +7
                           3355 ;sloc1                     Allocated to stack - _bp +8
                           3356 ;------------------------------------------------------------
                    0C93   3357 	G$read_obj_value$0$0 ==.
                    0C93   3358 	C$fb_app_in8.c$693$1$1 ==.
                           3359 ;	../fb_app_in8.c:693: unsigned long read_obj_value(unsigned char objno)
                           3360 ;	-----------------------------------------
                           3361 ;	 function read_obj_value
                           3362 ;	-----------------------------------------
   10C9                    3363 _read_obj_value:
   10C9 C0 7C              3364 	push	_bp
   10CB E5 81              3365 	mov	a,sp
   10CD F5 7C              3366 	mov	_bp,a
   10CF 24 04              3367 	add	a,#0x04
   10D1 F5 81              3368 	mov	sp,a
   10D3 AF 82              3369 	mov	r7,dpl
                    0C9F   3370 	C$fb_app_in8.c$697$1$1 ==.
                           3371 ;	../fb_app_in8.c:697: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
   10D5 90 1D 12           3372 	mov	dptr,#(_eeprom + 0x0012)
   10D8 E4                 3373 	clr	a
   10D9 93                 3374 	movc	a,@a+dptr
   10DA 2F                 3375 	add	a,r7
   10DB 2F                 3376 	add	a,r7
   10DC 2F                 3377 	add	a,r7
   10DD 24 04              3378 	add	a,#0x04
   10DF 90 1D 00           3379 	mov	dptr,#_eeprom
   10E2 93                 3380 	movc	a,@a+dptr
   10E3 FE                 3381 	mov	r6,a
                    0CAE   3382 	C$fb_app_in8.c$699$1$1 ==.
                           3383 ;	../fb_app_in8.c:699: if (objno <= 15) {	// wenn objno <= anzahl objekte
   10E4 EF                 3384 	mov	a,r7
   10E5 24 F0              3385 	add	a,#0xff - 0x0F
   10E7 50 03              3386 	jnc	00117$
   10E9 02 11 88           3387 	ljmp	00109$
   10EC                    3388 00117$:
                    0CB6   3389 	C$fb_app_in8.c$700$2$2 ==.
                           3390 ;	../fb_app_in8.c:700: if (objtype>=8){// bei 16bit
   10EC BE 08 00           3391 	cjne	r6,#0x08,00118$
   10EF                    3392 00118$:
   10EF 40 67              3393 	jc	00106$
                    0CBB   3394 	C$fb_app_in8.c$701$3$3 ==.
                           3395 ;	../fb_app_in8.c:701: if (objno>=8 && objno<=9)objvalue=zaehlervalue[objno&0x01];//objvalue=objvalue<<8;
   10F1 BF 08 00           3396 	cjne	r7,#0x08,00120$
   10F4                    3397 00120$:
   10F4 40 23              3398 	jc	00102$
   10F6 EF                 3399 	mov	a,r7
   10F7 24 F6              3400 	add	a,#0xff - 0x09
   10F9 40 1E              3401 	jc	00102$
   10FB 74 01              3402 	mov	a,#0x01
   10FD 5F                 3403 	anl	a,r7
   10FE 25 E0              3404 	add	a,acc
   1100 24 19              3405 	add	a,#_zaehlervalue
   1102 F9                 3406 	mov	r1,a
   1103 87 04              3407 	mov	ar4,@r1
   1105 09                 3408 	inc	r1
   1106 87 05              3409 	mov	ar5,@r1
   1108 A8 7C              3410 	mov	r0,_bp
   110A 08                 3411 	inc	r0
   110B A6 04              3412 	mov	@r0,ar4
   110D 08                 3413 	inc	r0
   110E A6 05              3414 	mov	@r0,ar5
   1110 08                 3415 	inc	r0
   1111 76 00              3416 	mov	@r0,#0x00
   1113 08                 3417 	inc	r0
   1114 76 00              3418 	mov	@r0,#0x00
   1116 02 11 B2           3419 	ljmp	00110$
   1119                    3420 00102$:
                    0CE3   3421 	C$fb_app_in8.c$703$4$4 ==.
                           3422 ;	../fb_app_in8.c:703: objvalue=objectvalue_h[objno&0x07]<<8;
   1119 74 07              3423 	mov	a,#0x07
   111B 5F                 3424 	anl	a,r7
   111C FE                 3425 	mov	r6,a
   111D 24 10              3426 	add	a,#_objectvalue_h
   111F F9                 3427 	mov	r1,a
   1120 87 07              3428 	mov	ar7,@r1
   1122 8F 05              3429 	mov	ar5,r7
   1124 7F 00              3430 	mov	r7,#0x00
   1126 A8 7C              3431 	mov	r0,_bp
   1128 08                 3432 	inc	r0
   1129 A6 07              3433 	mov	@r0,ar7
   112B 08                 3434 	inc	r0
   112C A6 05              3435 	mov	@r0,ar5
   112E ED                 3436 	mov	a,r5
   112F 33                 3437 	rlc	a
   1130 95 E0              3438 	subb	a,acc
   1132 08                 3439 	inc	r0
   1133 F6                 3440 	mov	@r0,a
   1134 08                 3441 	inc	r0
   1135 F6                 3442 	mov	@r0,a
                    0D00   3443 	C$fb_app_in8.c$704$4$4 ==.
                           3444 ;	../fb_app_in8.c:704: objvalue+=(objectvalue_l[objno&0x07]);
   1136 EE                 3445 	mov	a,r6
   1137 24 08              3446 	add	a,#_objectvalue_l
   1139 F9                 3447 	mov	r1,a
   113A 87 07              3448 	mov	ar7,@r1
   113C 8F 03              3449 	mov	ar3,r7
   113E 7C 00              3450 	mov	r4,#0x00
   1140 7D 00              3451 	mov	r5,#0x00
   1142 7F 00              3452 	mov	r7,#0x00
   1144 A8 7C              3453 	mov	r0,_bp
   1146 08                 3454 	inc	r0
   1147 EB                 3455 	mov	a,r3
   1148 26                 3456 	add	a,@r0
   1149 F6                 3457 	mov	@r0,a
   114A EC                 3458 	mov	a,r4
   114B 08                 3459 	inc	r0
   114C 36                 3460 	addc	a,@r0
   114D F6                 3461 	mov	@r0,a
   114E ED                 3462 	mov	a,r5
   114F 08                 3463 	inc	r0
   1150 36                 3464 	addc	a,@r0
   1151 F6                 3465 	mov	@r0,a
   1152 EF                 3466 	mov	a,r7
   1153 08                 3467 	inc	r0
   1154 36                 3468 	addc	a,@r0
   1155 F6                 3469 	mov	@r0,a
   1156 80 5A              3470 	sjmp	00110$
   1158                    3471 00106$:
                    0D22   3472 	C$fb_app_in8.c$707$2$2 ==.
                           3473 ;	../fb_app_in8.c:707: else objvalue = objectvalue_l[objno]&(0xFF>>(7-objtype));
   1158 EF                 3474 	mov	a,r7
   1159 24 08              3475 	add	a,#_objectvalue_l
   115B F9                 3476 	mov	r1,a
   115C 87 07              3477 	mov	ar7,@r1
   115E 7D 00              3478 	mov	r5,#0x00
   1160 74 07              3479 	mov	a,#0x07
   1162 C3                 3480 	clr	c
   1163 9E                 3481 	subb	a,r6
   1164 FE                 3482 	mov	r6,a
   1165 E4                 3483 	clr	a
   1166 9D                 3484 	subb	a,r5
   1167 FD                 3485 	mov	r5,a
   1168 8E F0              3486 	mov	b,r6
   116A 05 F0              3487 	inc	b
   116C 74 FF              3488 	mov	a,#0xFF
   116E 80 02              3489 	sjmp	00124$
   1170                    3490 00123$:
   1170 C3                 3491 	clr	c
   1171 13                 3492 	rrc	a
   1172                    3493 00124$:
   1172 D5 F0 FB           3494 	djnz	b,00123$
   1175 FE                 3495 	mov	r6,a
   1176 52 07              3496 	anl	ar7,a
   1178 A8 7C              3497 	mov	r0,_bp
   117A 08                 3498 	inc	r0
   117B A6 07              3499 	mov	@r0,ar7
   117D 08                 3500 	inc	r0
   117E 76 00              3501 	mov	@r0,#0x00
   1180 08                 3502 	inc	r0
   1181 76 00              3503 	mov	@r0,#0x00
   1183 08                 3504 	inc	r0
   1184 76 00              3505 	mov	@r0,#0x00
   1186 80 2A              3506 	sjmp	00110$
   1188                    3507 00109$:
                    0D52   3508 	C$fb_app_in8.c$710$2$5 ==.
                           3509 ;	../fb_app_in8.c:710: objvalue=(Sperre>>(objno-16))&0x01;
   1188 8F 06              3510 	mov	ar6,r7
   118A 7F 00              3511 	mov	r7,#0x00
   118C EE                 3512 	mov	a,r6
   118D 24 F0              3513 	add	a,#0xF0
   118F FE                 3514 	mov	r6,a
   1190 EF                 3515 	mov	a,r7
   1191 34 FF              3516 	addc	a,#0xFF
   1193 FF                 3517 	mov	r7,a
   1194 8E F0              3518 	mov	b,r6
   1196 05 F0              3519 	inc	b
   1198 E5 18              3520 	mov	a,_Sperre
   119A 80 02              3521 	sjmp	00126$
   119C                    3522 00125$:
   119C C3                 3523 	clr	c
   119D 13                 3524 	rrc	a
   119E                    3525 00126$:
   119E D5 F0 FB           3526 	djnz	b,00125$
   11A1 54 01              3527 	anl	a,#0x01
   11A3 FF                 3528 	mov	r7,a
   11A4 A8 7C              3529 	mov	r0,_bp
   11A6 08                 3530 	inc	r0
   11A7 A6 07              3531 	mov	@r0,ar7
   11A9 08                 3532 	inc	r0
   11AA 76 00              3533 	mov	@r0,#0x00
   11AC 08                 3534 	inc	r0
   11AD 76 00              3535 	mov	@r0,#0x00
   11AF 08                 3536 	inc	r0
   11B0 76 00              3537 	mov	@r0,#0x00
   11B2                    3538 00110$:
                    0D7C   3539 	C$fb_app_in8.c$712$1$1 ==.
                           3540 ;	../fb_app_in8.c:712: return(objvalue);	
   11B2 A8 7C              3541 	mov	r0,_bp
   11B4 08                 3542 	inc	r0
   11B5 86 82              3543 	mov	dpl,@r0
   11B7 08                 3544 	inc	r0
   11B8 86 83              3545 	mov	dph,@r0
   11BA 08                 3546 	inc	r0
   11BB 86 F0              3547 	mov	b,@r0
   11BD 08                 3548 	inc	r0
   11BE E6                 3549 	mov	a,@r0
   11BF 85 7C 81           3550 	mov	sp,_bp
   11C2 D0 7C              3551 	pop	_bp
                    0D8E   3552 	C$fb_app_in8.c$714$1$1 ==.
                    0D8E   3553 	XG$read_obj_value$0$0 ==.
   11C4 22                 3554 	ret
                           3555 ;------------------------------------------------------------
                           3556 ;Allocation info for local variables in function 'write_obj_value'
                           3557 ;------------------------------------------------------------
                           3558 ;objvalue                  Allocated to stack - _bp -6
                           3559 ;objno                     Allocated to registers r7 
                           3560 ;objtype                   Allocated to registers r6 
                           3561 ;------------------------------------------------------------
                    0D8F   3562 	G$write_obj_value$0$0 ==.
                    0D8F   3563 	C$fb_app_in8.c$718$1$1 ==.
                           3564 ;	../fb_app_in8.c:718: void write_obj_value(unsigned char objno,long objvalue)
                           3565 ;	-----------------------------------------
                           3566 ;	 function write_obj_value
                           3567 ;	-----------------------------------------
   11C5                    3568 _write_obj_value:
   11C5 C0 7C              3569 	push	_bp
   11C7 85 81 7C           3570 	mov	_bp,sp
   11CA AF 82              3571 	mov	r7,dpl
                    0D96   3572 	C$fb_app_in8.c$722$1$1 ==.
                           3573 ;	../fb_app_in8.c:722: objtype=eeprom[eeprom[COMMSTABPTR]+objno+objno+objno+4];
   11CC 90 1D 12           3574 	mov	dptr,#(_eeprom + 0x0012)
   11CF E4                 3575 	clr	a
   11D0 93                 3576 	movc	a,@a+dptr
   11D1 2F                 3577 	add	a,r7
   11D2 2F                 3578 	add	a,r7
   11D3 2F                 3579 	add	a,r7
   11D4 24 04              3580 	add	a,#0x04
   11D6 90 1D 00           3581 	mov	dptr,#_eeprom
   11D9 93                 3582 	movc	a,@a+dptr
   11DA FE                 3583 	mov	r6,a
                    0DA5   3584 	C$fb_app_in8.c$724$1$1 ==.
                           3585 ;	../fb_app_in8.c:724: if (objno <= 15) {	// wenn objno <= anzahl objekte
   11DB EF                 3586 	mov	a,r7
   11DC 24 F0              3587 	add	a,#0xff - 0x0F
   11DE 40 63              3588 	jc	00109$
                    0DAA   3589 	C$fb_app_in8.c$725$2$2 ==.
                           3590 ;	../fb_app_in8.c:725: if (objtype>=8){
   11E0 BE 08 00           3591 	cjne	r6,#0x08,00118$
   11E3                    3592 00118$:
   11E3 40 49              3593 	jc	00106$
                    0DAF   3594 	C$fb_app_in8.c$727$3$3 ==.
                           3595 ;	../fb_app_in8.c:727: if (objno>=8 && objno<=9)zaehlervalue[objno&0x01]=objvalue ;
   11E5 BF 08 00           3596 	cjne	r7,#0x08,00120$
   11E8                    3597 00120$:
   11E8 40 1E              3598 	jc	00102$
   11EA EF                 3599 	mov	a,r7
   11EB 24 F6              3600 	add	a,#0xff - 0x09
   11ED 40 19              3601 	jc	00102$
   11EF 74 01              3602 	mov	a,#0x01
   11F1 5F                 3603 	anl	a,r7
   11F2 25 E0              3604 	add	a,acc
   11F4 24 19              3605 	add	a,#_zaehlervalue
   11F6 F9                 3606 	mov	r1,a
   11F7 E5 7C              3607 	mov	a,_bp
   11F9 24 FA              3608 	add	a,#0xfa
   11FB F8                 3609 	mov	r0,a
   11FC 86 05              3610 	mov	ar5,@r0
   11FE 08                 3611 	inc	r0
   11FF 86 06              3612 	mov	ar6,@r0
   1201 A7 05              3613 	mov	@r1,ar5
   1203 09                 3614 	inc	r1
   1204 A7 06              3615 	mov	@r1,ar6
   1206 80 6D              3616 	sjmp	00111$
   1208                    3617 00102$:
                    0DD2   3618 	C$fb_app_in8.c$729$4$4 ==.
                           3619 ;	../fb_app_in8.c:729: objectvalue_h[objno&0x07]=(objvalue>>8);
   1208 74 07              3620 	mov	a,#0x07
   120A 5F                 3621 	anl	a,r7
   120B FE                 3622 	mov	r6,a
   120C 24 10              3623 	add	a,#_objectvalue_h
   120E F9                 3624 	mov	r1,a
   120F E5 7C              3625 	mov	a,_bp
   1211 24 FA              3626 	add	a,#0xfa
   1213 F8                 3627 	mov	r0,a
   1214 08                 3628 	inc	r0
   1215 86 05              3629 	mov	ar5,@r0
   1217 A7 05              3630 	mov	@r1,ar5
                    0DE3   3631 	C$fb_app_in8.c$730$4$4 ==.
                           3632 ;	../fb_app_in8.c:730: objectvalue_l[objno&0x07]=objvalue & 0xFF;
   1219 EE                 3633 	mov	a,r6
   121A 24 08              3634 	add	a,#_objectvalue_l
   121C F9                 3635 	mov	r1,a
   121D E5 7C              3636 	mov	a,_bp
   121F 24 FA              3637 	add	a,#0xfa
   1221 F8                 3638 	mov	r0,a
   1222 86 03              3639 	mov	ar3,@r0
   1224 7C 00              3640 	mov	r4,#0x00
   1226 7D 00              3641 	mov	r5,#0x00
   1228 7E 00              3642 	mov	r6,#0x00
   122A A7 03              3643 	mov	@r1,ar3
   122C 80 47              3644 	sjmp	00111$
   122E                    3645 00106$:
                    0DF8   3646 	C$fb_app_in8.c$733$2$2 ==.
                           3647 ;	../fb_app_in8.c:733: else 			objectvalue_l[objno]=objvalue & 0xFF;		
   122E EF                 3648 	mov	a,r7
   122F 24 08              3649 	add	a,#_objectvalue_l
   1231 F9                 3650 	mov	r1,a
   1232 E5 7C              3651 	mov	a,_bp
   1234 24 FA              3652 	add	a,#0xfa
   1236 F8                 3653 	mov	r0,a
   1237 86 03              3654 	mov	ar3,@r0
   1239 7C 00              3655 	mov	r4,#0x00
   123B 7D 00              3656 	mov	r5,#0x00
   123D 7E 00              3657 	mov	r6,#0x00
   123F A7 03              3658 	mov	@r1,ar3
   1241 80 32              3659 	sjmp	00111$
   1243                    3660 00109$:
                    0E0D   3661 	C$fb_app_in8.c$736$2$5 ==.
                           3662 ;	../fb_app_in8.c:736: Sperre &= (0xff-(bitmask_1[objno-16]));
   1243 EF                 3663 	mov	a,r7
   1244 24 F0              3664 	add	a,#0xF0
   1246 FF                 3665 	mov	r7,a
   1247 90 1C AA           3666 	mov	dptr,#_bitmask_1
   124A 93                 3667 	movc	a,@a+dptr
   124B FE                 3668 	mov	r6,a
   124C 74 FF              3669 	mov	a,#0xFF
   124E C3                 3670 	clr	c
   124F 9E                 3671 	subb	a,r6
   1250 52 18              3672 	anl	_Sperre,a
                    0E1C   3673 	C$fb_app_in8.c$737$2$5 ==.
                           3674 ;	../fb_app_in8.c:737: Sperre |= ((objvalue&0x01)<<(objno-16));
   1252 E5 7C              3675 	mov	a,_bp
   1254 24 FA              3676 	add	a,#0xfa
   1256 F8                 3677 	mov	r0,a
   1257 74 01              3678 	mov	a,#0x01
   1259 56                 3679 	anl	a,@r0
   125A FB                 3680 	mov	r3,a
   125B 7C 00              3681 	mov	r4,#0x00
   125D 7D 00              3682 	mov	r5,#0x00
   125F 7E 00              3683 	mov	r6,#0x00
   1261 8F F0              3684 	mov	b,r7
   1263 05 F0              3685 	inc	b
   1265 EB                 3686 	mov	a,r3
   1266 80 02              3687 	sjmp	00125$
   1268                    3688 00123$:
   1268 25 E0              3689 	add	a,acc
   126A                    3690 00125$:
   126A D5 F0 FB           3691 	djnz	b,00123$
   126D FF                 3692 	mov	r7,a
   126E E5 18              3693 	mov	a,_Sperre
   1270 FE                 3694 	mov	r6,a
   1271 42 07              3695 	orl	ar7,a
   1273 8F 18              3696 	mov	_Sperre,r7
   1275                    3697 00111$:
   1275 D0 7C              3698 	pop	_bp
                    0E41   3699 	C$fb_app_in8.c$739$1$1 ==.
                    0E41   3700 	XG$write_obj_value$0$0 ==.
   1277 22                 3701 	ret
                           3702 ;------------------------------------------------------------
                           3703 ;Allocation info for local variables in function 'restart_app'
                           3704 ;------------------------------------------------------------
                    0E42   3705 	G$restart_app$0$0 ==.
                    0E42   3706 	C$fb_app_in8.c$786$1$1 ==.
                           3707 ;	../fb_app_in8.c:786: void restart_app(void)		// Alle Applikations-Parameter zurücksetzen
                           3708 ;	-----------------------------------------
                           3709 ;	 function restart_app
                           3710 ;	-----------------------------------------
   1278                    3711 _restart_app:
                    0E42   3712 	C$fb_app_in8.c$799$1$1 ==.
                           3713 ;	../fb_app_in8.c:799: P0M1=0x00;	// P0_1 Biderektional, Rest PushPull
   1278 75 84 00           3714 	mov	_P0M1,#0x00
                    0E45   3715 	C$fb_app_in8.c$800$1$1 ==.
                           3716 ;	../fb_app_in8.c:800: P0M2=0xFD;
   127B 75 85 FD           3717 	mov	_P0M2,#0xFD
                    0E48   3718 	C$fb_app_in8.c$801$1$1 ==.
                           3719 ;	../fb_app_in8.c:801: P0=0x22;	// WRITE=1 SER_IN=1
   127E 75 80 22           3720 	mov	_P0,#0x22
                    0E4B   3721 	C$fb_app_in8.c$804$1$1 ==.
                           3722 ;	../fb_app_in8.c:804: RTCCON=0x81;		// RTC starten
   1281 75 D1 81           3723 	mov	_RTCCON,#0x81
                    0E4E   3724 	C$fb_app_in8.c$806$1$1 ==.
                           3725 ;	../fb_app_in8.c:806: timer=0;			// Timer-Variable, wird alle 65ms inkrementiert
   1284 E4                 3726 	clr	a
   1285 F5 2B              3727 	mov	_timer,a
   1287 F5 2C              3728 	mov	(_timer + 1),a
                    0E53   3729 	C$fb_app_in8.c$823$1$1 ==.
                    0E53   3730 	XG$restart_app$0$0 ==.
   1289 22                 3731 	ret
                           3732 	.area CSEG    (CODE)
                           3733 	.area CONST   (CODE)
                           3734 	.area XINIT   (CODE)
                           3735 	.area CABS    (ABS,CODE)
