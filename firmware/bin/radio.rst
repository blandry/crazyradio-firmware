                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
                                      4 ; This file was generated Sat Mar 14 13:10:11 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module radio
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _radioFlushRx
                                     13 	.globl _radioFlushTx
                                     14 	.globl _spiRadioReceive
                                     15 	.globl _spiRadioSend
                                     16 	.globl _USB_SWRDT
                                     17 	.globl _USB_WU
                                     18 	.globl _USB_SUSPEND
                                     19 	.globl _USB_IV4
                                     20 	.globl _USB_IV3
                                     21 	.globl _USB_IV2
                                     22 	.globl _USB_IV1
                                     23 	.globl _USB_IV0
                                     24 	.globl _EXF2
                                     25 	.globl _TF2
                                     26 	.globl _WU
                                     27 	.globl _USBIRQ_F
                                     28 	.globl _USBWU
                                     29 	.globl _SDONE
                                     30 	.globl _RFIRQ
                                     31 	.globl _RFRDY
                                     32 	.globl _P0_7
                                     33 	.globl _P0_6
                                     34 	.globl _P0_5
                                     35 	.globl _P0_4
                                     36 	.globl _P0_3
                                     37 	.globl _P0_2
                                     38 	.globl _P0_1
                                     39 	.globl _P0_0
                                     40 	.globl _RFCKEN
                                     41 	.globl _RFCSN
                                     42 	.globl _RFCE
                                     43 	.globl _USBSLP
                                     44 	.globl _USBCON
                                     45 	.globl _FCR
                                     46 	.globl _FPCR
                                     47 	.globl _FSR
                                     48 	.globl _CRCH
                                     49 	.globl _CRCL
                                     50 	.globl _CCH3
                                     51 	.globl _CCL3
                                     52 	.globl _CCH2
                                     53 	.globl _CCL2
                                     54 	.globl _CCH1
                                     55 	.globl _CCL1
                                     56 	.globl _CCEN
                                     57 	.globl _TH2
                                     58 	.globl _TL2
                                     59 	.globl _T2CON
                                     60 	.globl _TH1
                                     61 	.globl _TH0
                                     62 	.globl _TL1
                                     63 	.globl _TL0
                                     64 	.globl _TMOD
                                     65 	.globl _TCON
                                     66 	.globl _IRCON
                                     67 	.globl _IP1
                                     68 	.globl _IP0
                                     69 	.globl _IEN1
                                     70 	.globl _IEN0
                                     71 	.globl _SSSTAT
                                     72 	.globl _SSDAT
                                     73 	.globl _SSCONF
                                     74 	.globl _P0EXP
                                     75 	.globl _P0ALT
                                     76 	.globl _P0DIR
                                     77 	.globl _P0
                                     78 	.globl _RFCON
                                     79 	.globl _RFCTL
                                     80 	.globl _RFDAT
                                     81 	.globl _radioSendPacketNoAck_PARM_2
                                     82 	.globl _radioSendPacket_PARM_4
                                     83 	.globl _radioSendPacket_PARM_3
                                     84 	.globl _radioSendPacket_PARM_2
                                     85 	.globl _radioTxPacketNoAck_PARM_2
                                     86 	.globl _radioTxPacket_PARM_2
                                     87 	.globl _radioWriteReg_PARM_2
                                     88 	.globl _IN5BUF
                                     89 	.globl _OUT5BUF
                                     90 	.globl _IN4BUF
                                     91 	.globl _OUT4BUF
                                     92 	.globl _IN3BUF
                                     93 	.globl _OUT3BUF
                                     94 	.globl _IN2BUF
                                     95 	.globl _OUT2BUF
                                     96 	.globl _IN1BUF
                                     97 	.globl _OUT1BUF
                                     98 	.globl _IN0BUF
                                     99 	.globl _OUT0BUF
                                    100 	.globl _SETUPBUF
                                    101 	.globl _radioSetContCarrier_PARM_1
                                    102 	.globl _radioInit
                                    103 	.globl _radioDeinit
                                    104 	.globl _radioNop
                                    105 	.globl _radioReadReg
                                    106 	.globl _radioWriteReg
                                    107 	.globl _radioTxPacket
                                    108 	.globl _radioTxPacketNoAck
                                    109 	.globl _radioRxPacket
                                    110 	.globl _radioSendPacket
                                    111 	.globl _radioSendPacketNoAck
                                    112 	.globl _radioUpdateRetr
                                    113 	.globl _radioUpdateRfSetup
                                    114 	.globl _radioSetChannel
                                    115 	.globl _radioSetDataRate
                                    116 	.globl _radioGetDataRate
                                    117 	.globl _radioSetPower
                                    118 	.globl _radioSetArd
                                    119 	.globl _radioSetArc
                                    120 	.globl _radioSetContCarrier
                                    121 	.globl _radioSetAddress
                                    122 	.globl _radioGetRpd
                                    123 	.globl _radioGetTxRetry
                                    124 ;--------------------------------------------------------
                                    125 ; special function registers
                                    126 ;--------------------------------------------------------
                                    127 	.area RSEG    (ABS,DATA)
      000000                        128 	.org 0x0000
                           0000E5   129 _RFDAT	=	0x00e5
                           0000E6   130 _RFCTL	=	0x00e6
                           000090   131 _RFCON	=	0x0090
                           000080   132 _P0	=	0x0080
                           000094   133 _P0DIR	=	0x0094
                           000095   134 _P0ALT	=	0x0095
                           0000C9   135 _P0EXP	=	0x00c9
                           0000BC   136 _SSCONF	=	0x00bc
                           0000BD   137 _SSDAT	=	0x00bd
                           0000BE   138 _SSSTAT	=	0x00be
                           0000A8   139 _IEN0	=	0x00a8
                           0000B8   140 _IEN1	=	0x00b8
                           0000A9   141 _IP0	=	0x00a9
                           0000B9   142 _IP1	=	0x00b9
                           0000C0   143 _IRCON	=	0x00c0
                           000088   144 _TCON	=	0x0088
                           000089   145 _TMOD	=	0x0089
                           00008A   146 _TL0	=	0x008a
                           00008B   147 _TL1	=	0x008b
                           00008C   148 _TH0	=	0x008c
                           00008D   149 _TH1	=	0x008d
                           0000C8   150 _T2CON	=	0x00c8
                           0000CC   151 _TL2	=	0x00cc
                           0000CD   152 _TH2	=	0x00cd
                           0000C1   153 _CCEN	=	0x00c1
                           0000C2   154 _CCL1	=	0x00c2
                           0000C3   155 _CCH1	=	0x00c3
                           0000C4   156 _CCL2	=	0x00c4
                           0000C5   157 _CCH2	=	0x00c5
                           0000C6   158 _CCL3	=	0x00c6
                           0000C7   159 _CCH3	=	0x00c7
                           0000CA   160 _CRCL	=	0x00ca
                           0000CB   161 _CRCH	=	0x00cb
                           0000F8   162 _FSR	=	0x00f8
                           0000F9   163 _FPCR	=	0x00f9
                           0000FA   164 _FCR	=	0x00fa
                           0000A0   165 _USBCON	=	0x00a0
                           0000D9   166 _USBSLP	=	0x00d9
                                    167 ;--------------------------------------------------------
                                    168 ; special function bits
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000090   172 _RFCE	=	0x0090
                           000091   173 _RFCSN	=	0x0091
                           000092   174 _RFCKEN	=	0x0092
                           000080   175 _P0_0	=	0x0080
                           000081   176 _P0_1	=	0x0081
                           000082   177 _P0_2	=	0x0082
                           000083   178 _P0_3	=	0x0083
                           000084   179 _P0_4	=	0x0084
                           000085   180 _P0_5	=	0x0085
                           000086   181 _P0_6	=	0x0086
                           000087   182 _P0_7	=	0x0087
                           0000C0   183 _RFRDY	=	0x00c0
                           0000C1   184 _RFIRQ	=	0x00c1
                           0000C2   185 _SDONE	=	0x00c2
                           0000C3   186 _USBWU	=	0x00c3
                           0000C4   187 _USBIRQ_F	=	0x00c4
                           0000C5   188 _WU	=	0x00c5
                           0000C6   189 _TF2	=	0x00c6
                           0000C7   190 _EXF2	=	0x00c7
                           0000A0   191 _USB_IV0	=	0x00a0
                           0000A1   192 _USB_IV1	=	0x00a1
                           0000A2   193 _USB_IV2	=	0x00a2
                           0000A3   194 _USB_IV3	=	0x00a3
                           0000A4   195 _USB_IV4	=	0x00a4
                           0000A5   196 _USB_SUSPEND	=	0x00a5
                           0000A6   197 _USB_WU	=	0x00a6
                           0000A7   198 _USB_SWRDT	=	0x00a7
                                    199 ;--------------------------------------------------------
                                    200 ; overlayable register banks
                                    201 ;--------------------------------------------------------
                                    202 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        203 	.ds 8
                                    204 ;--------------------------------------------------------
                                    205 ; internal ram data
                                    206 ;--------------------------------------------------------
                                    207 	.area DSEG    (DATA)
                                    208 ;--------------------------------------------------------
                                    209 ; overlayable items in internal ram 
                                    210 ;--------------------------------------------------------
                                    211 ;--------------------------------------------------------
                                    212 ; indirectly addressable internal ram data
                                    213 ;--------------------------------------------------------
                                    214 	.area ISEG    (DATA)
                                    215 ;--------------------------------------------------------
                                    216 ; absolute internal ram data
                                    217 ;--------------------------------------------------------
                                    218 	.area IABS    (ABS,DATA)
                                    219 	.area IABS    (ABS,DATA)
                                    220 ;--------------------------------------------------------
                                    221 ; bit data
                                    222 ;--------------------------------------------------------
                                    223 	.area BSEG    (BIT)
      000003                        224 _radioSetContCarrier_PARM_1:
      000003                        225 	.ds 1
                                    226 ;--------------------------------------------------------
                                    227 ; paged external ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area PSEG    (PAG,XDATA)
                                    230 ;--------------------------------------------------------
                                    231 ; external ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area XSEG    (XDATA)
                           00C7E8   234 _SETUPBUF	=	0xc7e8
                           00C6C0   235 _OUT0BUF	=	0xc6c0
                           00C700   236 _IN0BUF	=	0xc700
                           00C640   237 _OUT1BUF	=	0xc640
                           00C680   238 _IN1BUF	=	0xc680
                           00C5C0   239 _OUT2BUF	=	0xc5c0
                           00C600   240 _IN2BUF	=	0xc600
                           00C540   241 _OUT3BUF	=	0xc540
                           00C580   242 _IN3BUF	=	0xc580
                           00C4C0   243 _OUT4BUF	=	0xc4c0
                           00C500   244 _IN4BUF	=	0xc500
                           00C440   245 _OUT5BUF	=	0xc440
                           00C480   246 _IN5BUF	=	0xc480
      00804A                        247 _spiRadioSend_dt_1_25:
      00804A                        248 	.ds 1
      00804B                        249 _radioReadReg_addr_1_33:
      00804B                        250 	.ds 1
      00804C                        251 _radioWriteReg_PARM_2:
      00804C                        252 	.ds 1
      00804D                        253 _radioWriteReg_addr_1_35:
      00804D                        254 	.ds 1
      00804E                        255 _radioTxPacket_PARM_2:
      00804E                        256 	.ds 1
      00804F                        257 _radioTxPacket_payload_1_37:
      00804F                        258 	.ds 2
      008051                        259 _radioTxPacketNoAck_PARM_2:
      008051                        260 	.ds 1
      008052                        261 _radioTxPacketNoAck_payload_1_40:
      008052                        262 	.ds 2
      008054                        263 _radioRxPacket_payload_1_43:
      008054                        264 	.ds 2
      008056                        265 _radioRxPacket_len_1_44:
      008056                        266 	.ds 2
      008058                        267 _radioSendPacket_PARM_2:
      008058                        268 	.ds 1
      008059                        269 _radioSendPacket_PARM_3:
      008059                        270 	.ds 2
      00805B                        271 _radioSendPacket_PARM_4:
      00805B                        272 	.ds 3
      00805E                        273 _radioSendPacket_payload_1_47:
      00805E                        274 	.ds 2
      008060                        275 _radioSendPacketNoAck_PARM_2:
      008060                        276 	.ds 1
      008061                        277 _radioSendPacketNoAck_payload_1_50:
      008061                        278 	.ds 2
      008063                        279 _radioUpdateRetr_ard_1_52:
      008063                        280 	.ds 1
      008064                        281 _radioUpdateRfSetup_setup_1_54:
      008064                        282 	.ds 1
      008065                        283 _radioSetChannel_channel_1_55:
      008065                        284 	.ds 1
      008066                        285 _radioSetDataRate_dr_1_57:
      008066                        286 	.ds 1
      008067                        287 _radioSetPower_power_1_60:
      008067                        288 	.ds 1
      008068                        289 _radioSetArd_ard_1_62:
      008068                        290 	.ds 1
      008069                        291 _radioSetArc_arc_1_64:
      008069                        292 	.ds 1
      00806A                        293 _radioSetAddress_address_1_68:
      00806A                        294 	.ds 2
                                    295 ;--------------------------------------------------------
                                    296 ; absolute external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XABS    (ABS,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external initialized ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XISEG   (XDATA)
      00808E                        303 _radioConf:
      00808E                        304 	.ds 5
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT0 (CODE)
                                    307 	.area GSINIT1 (CODE)
                                    308 	.area GSINIT2 (CODE)
                                    309 	.area GSINIT3 (CODE)
                                    310 	.area GSINIT4 (CODE)
                                    311 	.area GSINIT5 (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area CSEG    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; Home
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area HOME    (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; code
                                    329 ;--------------------------------------------------------
                                    330 	.area CSEG    (CODE)
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'spiRadioSend'
                                    333 ;------------------------------------------------------------
                                    334 ;dt                        Allocated with name '_spiRadioSend_dt_1_25'
                                    335 ;------------------------------------------------------------
                                    336 ;	src/radio.c:81: char spiRadioSend(char dt)
                                    337 ;	-----------------------------------------
                                    338 ;	 function spiRadioSend
                                    339 ;	-----------------------------------------
      0005EB                        340 _spiRadioSend:
                           000007   341 	ar7 = 0x07
                           000006   342 	ar6 = 0x06
                           000005   343 	ar5 = 0x05
                           000004   344 	ar4 = 0x04
                           000003   345 	ar3 = 0x03
                           000002   346 	ar2 = 0x02
                           000001   347 	ar1 = 0x01
                           000000   348 	ar0 = 0x00
      0005EB E5 82            [12]  349 	mov	a,dpl
      0005ED 90 80 4A         [24]  350 	mov	dptr,#_spiRadioSend_dt_1_25
      0005F0 F0               [24]  351 	movx	@dptr,a
                                    352 ;	src/radio.c:84: RFDAT = dt;
      0005F1 E0               [24]  353 	movx	a,@dptr
      0005F2 F5 E5            [12]  354 	mov	_RFDAT,a
                                    355 ;	src/radio.c:86: RFRDY = 0;
      0005F4 C2 C0            [12]  356 	clr	_RFRDY
                                    357 ;	src/radio.c:89: while(!RFRDY);
      0005F6                        358 00101$:
                                    359 ;	src/radio.c:90: RFRDY=0;
      0005F6 10 C0 02         [24]  360 	jbc	_RFRDY,00112$
      0005F9 80 FB            [24]  361 	sjmp	00101$
      0005FB                        362 00112$:
                                    363 ;	src/radio.c:93: return RFDAT;
      0005FB 85 E5 82         [24]  364 	mov	dpl,_RFDAT
      0005FE 22               [24]  365 	ret
                                    366 ;------------------------------------------------------------
                                    367 ;Allocation info for local variables in function 'spiRadioReceive'
                                    368 ;------------------------------------------------------------
                                    369 ;	src/radio.c:96: char spiRadioReceive()
                                    370 ;	-----------------------------------------
                                    371 ;	 function spiRadioReceive
                                    372 ;	-----------------------------------------
      0005FF                        373 _spiRadioReceive:
                                    374 ;	src/radio.c:98: return spiRadioSend(0x00);
      0005FF 75 82 00         [24]  375 	mov	dpl,#0x00
      000602 02 05 EB         [24]  376 	ljmp	_spiRadioSend
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'radioInit'
                                    379 ;------------------------------------------------------------
                                    380 ;i                         Allocated with name '_radioInit_i_1_28'
                                    381 ;------------------------------------------------------------
                                    382 ;	src/radio.c:101: void radioInit()
                                    383 ;	-----------------------------------------
                                    384 ;	 function radioInit
                                    385 ;	-----------------------------------------
      000605                        386 _radioInit:
                                    387 ;	src/radio.c:105: RFCON = 0x06;
      000605 75 90 06         [24]  388 	mov	_RFCON,#0x06
                                    389 ;	src/radio.c:106: RFCTL = 0x10;  //SPI enable @8MHz
      000608 75 E6 10         [24]  390 	mov	_RFCTL,#0x10
                                    391 ;	src/radio.c:109: radioWriteReg(REG_CONFIG, 0x7E);
      00060B 90 80 4C         [24]  392 	mov	dptr,#_radioWriteReg_PARM_2
      00060E 74 7E            [12]  393 	mov	a,#0x7E
      000610 F0               [24]  394 	movx	@dptr,a
      000611 75 82 00         [24]  395 	mov	dpl,#0x00
      000614 12 06 A3         [24]  396 	lcall	_radioWriteReg
                                    397 ;	src/radio.c:111: for(i=0;i<1000;i++);
      000617 7E E8            [12]  398 	mov	r6,#0xE8
      000619 7F 03            [12]  399 	mov	r7,#0x03
      00061B                        400 00104$:
      00061B 1E               [12]  401 	dec	r6
      00061C BE FF 01         [24]  402 	cjne	r6,#0xFF,00114$
      00061F 1F               [12]  403 	dec	r7
      000620                        404 00114$:
      000620 EE               [12]  405 	mov	a,r6
      000621 4F               [12]  406 	orl	a,r7
      000622 70 F7            [24]  407 	jnz	00104$
                                    408 ;	src/radio.c:113: radioWriteReg(REG_FEATURE, 0x06);
      000624 90 80 4C         [24]  409 	mov	dptr,#_radioWriteReg_PARM_2
      000627 74 06            [12]  410 	mov	a,#0x06
      000629 F0               [24]  411 	movx	@dptr,a
      00062A 75 82 1D         [24]  412 	mov	dpl,#0x1D
      00062D 12 06 A3         [24]  413 	lcall	_radioWriteReg
                                    414 ;	src/radio.c:114: radioWriteReg(REG_DYNPD, 0x01);
      000630 90 80 4C         [24]  415 	mov	dptr,#_radioWriteReg_PARM_2
      000633 74 01            [12]  416 	mov	a,#0x01
      000635 F0               [24]  417 	movx	@dptr,a
      000636 75 82 1C         [24]  418 	mov	dpl,#0x1C
      000639 12 06 A3         [24]  419 	lcall	_radioWriteReg
                                    420 ;	src/radio.c:117: radioUpdateRfSetup();
      00063C 12 09 CE         [24]  421 	lcall	_radioUpdateRfSetup
                                    422 ;	src/radio.c:118: radioUpdateRetr();
      00063F 02 09 4F         [24]  423 	ljmp	_radioUpdateRetr
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'radioDeinit'
                                    426 ;------------------------------------------------------------
                                    427 ;	src/radio.c:121: void radioDeinit()
                                    428 ;	-----------------------------------------
                                    429 ;	 function radioDeinit
                                    430 ;	-----------------------------------------
      000642                        431 _radioDeinit:
                                    432 ;	src/radio.c:124: radioWriteReg(REG_CONFIG, 0x00);
      000642 90 80 4C         [24]  433 	mov	dptr,#_radioWriteReg_PARM_2
      000645 E4               [12]  434 	clr	a
      000646 F0               [24]  435 	movx	@dptr,a
      000647 75 82 00         [24]  436 	mov	dpl,#0x00
      00064A 12 06 A3         [24]  437 	lcall	_radioWriteReg
                                    438 ;	src/radio.c:127: RFCON = 0x00;  //Radio unclocked
      00064D 75 90 00         [24]  439 	mov	_RFCON,#0x00
                                    440 ;	src/radio.c:128: RFCTL = 0x00;  //SPI disable
      000650 75 E6 00         [24]  441 	mov	_RFCTL,#0x00
      000653 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'radioNop'
                                    445 ;------------------------------------------------------------
                                    446 ;status                    Allocated with name '_radioNop_status_1_30'
                                    447 ;------------------------------------------------------------
                                    448 ;	src/radio.c:133: char radioNop()
                                    449 ;	-----------------------------------------
                                    450 ;	 function radioNop
                                    451 ;	-----------------------------------------
      000654                        452 _radioNop:
                                    453 ;	src/radio.c:137: RADIO_EN_CS();
      000654 C2 91            [12]  454 	clr	_RFCSN
                                    455 ;	src/radio.c:138: status = spiRadioSend(CMD_NOP);
      000656 75 82 FF         [24]  456 	mov	dpl,#0xFF
      000659 12 05 EB         [24]  457 	lcall	_spiRadioSend
      00065C AF 82            [24]  458 	mov	r7,dpl
                                    459 ;	src/radio.c:139: RADIO_DIS_CS();
      00065E D2 91            [12]  460 	setb	_RFCSN
                                    461 ;	src/radio.c:141: return status;
      000660 8F 82            [24]  462 	mov	dpl,r7
      000662 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'radioFlushTx'
                                    466 ;------------------------------------------------------------
                                    467 ;status                    Allocated with name '_radioFlushTx_status_1_31'
                                    468 ;------------------------------------------------------------
                                    469 ;	src/radio.c:144: char radioFlushTx()
                                    470 ;	-----------------------------------------
                                    471 ;	 function radioFlushTx
                                    472 ;	-----------------------------------------
      000663                        473 _radioFlushTx:
                                    474 ;	src/radio.c:148: RADIO_EN_CS();
      000663 C2 91            [12]  475 	clr	_RFCSN
                                    476 ;	src/radio.c:149: status = spiRadioSend(CMD_FLUSH_TX);
      000665 75 82 E1         [24]  477 	mov	dpl,#0xE1
      000668 12 05 EB         [24]  478 	lcall	_spiRadioSend
      00066B AF 82            [24]  479 	mov	r7,dpl
                                    480 ;	src/radio.c:150: RADIO_DIS_CS();
      00066D D2 91            [12]  481 	setb	_RFCSN
                                    482 ;	src/radio.c:152: return status;
      00066F 8F 82            [24]  483 	mov	dpl,r7
      000671 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'radioFlushRx'
                                    487 ;------------------------------------------------------------
                                    488 ;status                    Allocated with name '_radioFlushRx_status_1_32'
                                    489 ;------------------------------------------------------------
                                    490 ;	src/radio.c:155: char radioFlushRx()
                                    491 ;	-----------------------------------------
                                    492 ;	 function radioFlushRx
                                    493 ;	-----------------------------------------
      000672                        494 _radioFlushRx:
                                    495 ;	src/radio.c:159: RADIO_EN_CS();
      000672 C2 91            [12]  496 	clr	_RFCSN
                                    497 ;	src/radio.c:160: status = spiRadioSend(CMD_FLUSH_RX);
      000674 75 82 E2         [24]  498 	mov	dpl,#0xE2
      000677 12 05 EB         [24]  499 	lcall	_spiRadioSend
      00067A AF 82            [24]  500 	mov	r7,dpl
                                    501 ;	src/radio.c:161: RADIO_DIS_CS();
      00067C D2 91            [12]  502 	setb	_RFCSN
                                    503 ;	src/radio.c:163: return status;
      00067E 8F 82            [24]  504 	mov	dpl,r7
      000680 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'radioReadReg'
                                    508 ;------------------------------------------------------------
                                    509 ;addr                      Allocated with name '_radioReadReg_addr_1_33'
                                    510 ;value                     Allocated with name '_radioReadReg_value_1_34'
                                    511 ;------------------------------------------------------------
                                    512 ;	src/radio.c:166: char radioReadReg(char addr)
                                    513 ;	-----------------------------------------
                                    514 ;	 function radioReadReg
                                    515 ;	-----------------------------------------
      000681                        516 _radioReadReg:
      000681 E5 82            [12]  517 	mov	a,dpl
      000683 90 80 4B         [24]  518 	mov	dptr,#_radioReadReg_addr_1_33
      000686 F0               [24]  519 	movx	@dptr,a
                                    520 ;	src/radio.c:170: RADIO_EN_CS();
      000687 C2 91            [12]  521 	clr	_RFCSN
                                    522 ;	src/radio.c:171: spiRadioSend(CMD_R_REG | (addr&0x1F));
      000689 90 80 4B         [24]  523 	mov	dptr,#_radioReadReg_addr_1_33
      00068C E0               [24]  524 	movx	a,@dptr
      00068D FF               [12]  525 	mov	r7,a
      00068E 53 07 1F         [24]  526 	anl	ar7,#0x1F
      000691 8F 82            [24]  527 	mov	dpl,r7
      000693 12 05 EB         [24]  528 	lcall	_spiRadioSend
                                    529 ;	src/radio.c:172: value = spiRadioSend(0xA5);
      000696 75 82 A5         [24]  530 	mov	dpl,#0xA5
      000699 12 05 EB         [24]  531 	lcall	_spiRadioSend
      00069C AF 82            [24]  532 	mov	r7,dpl
                                    533 ;	src/radio.c:173: RADIO_DIS_CS();
      00069E D2 91            [12]  534 	setb	_RFCSN
                                    535 ;	src/radio.c:175: return value;
      0006A0 8F 82            [24]  536 	mov	dpl,r7
      0006A2 22               [24]  537 	ret
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'radioWriteReg'
                                    540 ;------------------------------------------------------------
                                    541 ;value                     Allocated with name '_radioWriteReg_PARM_2'
                                    542 ;addr                      Allocated with name '_radioWriteReg_addr_1_35'
                                    543 ;status                    Allocated with name '_radioWriteReg_status_1_36'
                                    544 ;------------------------------------------------------------
                                    545 ;	src/radio.c:178: char radioWriteReg(char addr, char value)
                                    546 ;	-----------------------------------------
                                    547 ;	 function radioWriteReg
                                    548 ;	-----------------------------------------
      0006A3                        549 _radioWriteReg:
      0006A3 E5 82            [12]  550 	mov	a,dpl
      0006A5 90 80 4D         [24]  551 	mov	dptr,#_radioWriteReg_addr_1_35
      0006A8 F0               [24]  552 	movx	@dptr,a
                                    553 ;	src/radio.c:182: RADIO_EN_CS();
      0006A9 C2 91            [12]  554 	clr	_RFCSN
                                    555 ;	src/radio.c:183: status = spiRadioSend(CMD_W_REG | (addr&0x1F));
      0006AB 90 80 4D         [24]  556 	mov	dptr,#_radioWriteReg_addr_1_35
      0006AE E0               [24]  557 	movx	a,@dptr
      0006AF FF               [12]  558 	mov	r7,a
      0006B0 74 1F            [12]  559 	mov	a,#0x1F
      0006B2 5F               [12]  560 	anl	a,r7
      0006B3 44 20            [12]  561 	orl	a,#0x20
      0006B5 F5 82            [12]  562 	mov	dpl,a
      0006B7 12 05 EB         [24]  563 	lcall	_spiRadioSend
                                    564 ;	src/radio.c:184: spiRadioSend(value);
      0006BA 90 80 4C         [24]  565 	mov	dptr,#_radioWriteReg_PARM_2
      0006BD E0               [24]  566 	movx	a,@dptr
      0006BE FF               [12]  567 	mov	r7,a
      0006BF F5 82            [12]  568 	mov	dpl,a
      0006C1 C0 07            [24]  569 	push	ar7
      0006C3 12 05 EB         [24]  570 	lcall	_spiRadioSend
      0006C6 D0 07            [24]  571 	pop	ar7
                                    572 ;	src/radio.c:185: RADIO_DIS_CS();
      0006C8 D2 91            [12]  573 	setb	_RFCSN
                                    574 ;	src/radio.c:187: return value;
      0006CA 8F 82            [24]  575 	mov	dpl,r7
      0006CC 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'radioTxPacket'
                                    579 ;------------------------------------------------------------
                                    580 ;len                       Allocated with name '_radioTxPacket_PARM_2'
                                    581 ;payload                   Allocated with name '_radioTxPacket_payload_1_37'
                                    582 ;i                         Allocated with name '_radioTxPacket_i_1_38'
                                    583 ;i                         Allocated with name '_radioTxPacket_i_2_39'
                                    584 ;------------------------------------------------------------
                                    585 ;	src/radio.c:191: void radioTxPacket(__xdata char *payload, char len)
                                    586 ;	-----------------------------------------
                                    587 ;	 function radioTxPacket
                                    588 ;	-----------------------------------------
      0006CD                        589 _radioTxPacket:
      0006CD AF 83            [24]  590 	mov	r7,dph
      0006CF E5 82            [12]  591 	mov	a,dpl
      0006D1 90 80 4F         [24]  592 	mov	dptr,#_radioTxPacket_payload_1_37
      0006D4 F0               [24]  593 	movx	@dptr,a
      0006D5 EF               [12]  594 	mov	a,r7
      0006D6 A3               [24]  595 	inc	dptr
      0006D7 F0               [24]  596 	movx	@dptr,a
                                    597 ;	src/radio.c:196: RADIO_EN_CS();
      0006D8 C2 91            [12]  598 	clr	_RFCSN
                                    599 ;	src/radio.c:197: spiRadioSend(CMD_W_TX_PAYLOAD);
      0006DA 75 82 A0         [24]  600 	mov	dpl,#0xA0
      0006DD 12 05 EB         [24]  601 	lcall	_spiRadioSend
                                    602 ;	src/radio.c:198: for(i=0;i<len;i++)
      0006E0 90 80 4F         [24]  603 	mov	dptr,#_radioTxPacket_payload_1_37
      0006E3 E0               [24]  604 	movx	a,@dptr
      0006E4 FE               [12]  605 	mov	r6,a
      0006E5 A3               [24]  606 	inc	dptr
      0006E6 E0               [24]  607 	movx	a,@dptr
      0006E7 FF               [12]  608 	mov	r7,a
      0006E8 90 80 4E         [24]  609 	mov	dptr,#_radioTxPacket_PARM_2
      0006EB E0               [24]  610 	movx	a,@dptr
      0006EC FD               [12]  611 	mov	r5,a
      0006ED 7B 00            [12]  612 	mov	r3,#0x00
      0006EF 7C 00            [12]  613 	mov	r4,#0x00
      0006F1                        614 00106$:
      0006F1 ED               [12]  615 	mov	a,r5
      0006F2 F9               [12]  616 	mov	r1,a
      0006F3 33               [12]  617 	rlc	a
      0006F4 95 E0            [12]  618 	subb	a,acc
      0006F6 FA               [12]  619 	mov	r2,a
      0006F7 C3               [12]  620 	clr	c
      0006F8 EB               [12]  621 	mov	a,r3
      0006F9 99               [12]  622 	subb	a,r1
      0006FA EC               [12]  623 	mov	a,r4
      0006FB 64 80            [12]  624 	xrl	a,#0x80
      0006FD 8A F0            [24]  625 	mov	b,r2
      0006FF 63 F0 80         [24]  626 	xrl	b,#0x80
      000702 95 F0            [12]  627 	subb	a,b
      000704 50 29            [24]  628 	jnc	00101$
                                    629 ;	src/radio.c:199: spiRadioSend(payload[i]);
      000706 EB               [12]  630 	mov	a,r3
      000707 2E               [12]  631 	add	a,r6
      000708 F5 82            [12]  632 	mov	dpl,a
      00070A EC               [12]  633 	mov	a,r4
      00070B 3F               [12]  634 	addc	a,r7
      00070C F5 83            [12]  635 	mov	dph,a
      00070E E0               [24]  636 	movx	a,@dptr
      00070F F5 82            [12]  637 	mov	dpl,a
      000711 C0 07            [24]  638 	push	ar7
      000713 C0 06            [24]  639 	push	ar6
      000715 C0 05            [24]  640 	push	ar5
      000717 C0 04            [24]  641 	push	ar4
      000719 C0 03            [24]  642 	push	ar3
      00071B 12 05 EB         [24]  643 	lcall	_spiRadioSend
      00071E D0 03            [24]  644 	pop	ar3
      000720 D0 04            [24]  645 	pop	ar4
      000722 D0 05            [24]  646 	pop	ar5
      000724 D0 06            [24]  647 	pop	ar6
      000726 D0 07            [24]  648 	pop	ar7
                                    649 ;	src/radio.c:198: for(i=0;i<len;i++)
      000728 0B               [12]  650 	inc	r3
      000729 BB 00 C5         [24]  651 	cjne	r3,#0x00,00106$
      00072C 0C               [12]  652 	inc	r4
      00072D 80 C2            [24]  653 	sjmp	00106$
      00072F                        654 00101$:
                                    655 ;	src/radio.c:200: RADIO_DIS_CS();
      00072F D2 91            [12]  656 	setb	_RFCSN
                                    657 ;	src/radio.c:203: CE_PULSE();
      000731 D2 90            [12]  658 	setb	_RFCE
      000733 7E 32            [12]  659 	mov	r6,#0x32
      000735 7F 00            [12]  660 	mov	r7,#0x00
      000737                        661 00102$:
      000737 8E 04            [24]  662 	mov	ar4,r6
      000739 8F 05            [24]  663 	mov	ar5,r7
      00073B 1E               [12]  664 	dec	r6
      00073C BE FF 01         [24]  665 	cjne	r6,#0xFF,00126$
      00073F 1F               [12]  666 	dec	r7
      000740                        667 00126$:
      000740 EC               [12]  668 	mov	a,r4
      000741 4D               [12]  669 	orl	a,r5
      000742 70 F3            [24]  670 	jnz	00102$
      000744 C2 90            [12]  671 	clr	_RFCE
                                    672 ;	src/radio.c:205: return;
      000746 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'radioTxPacketNoAck'
                                    676 ;------------------------------------------------------------
                                    677 ;len                       Allocated with name '_radioTxPacketNoAck_PARM_2'
                                    678 ;payload                   Allocated with name '_radioTxPacketNoAck_payload_1_40'
                                    679 ;i                         Allocated with name '_radioTxPacketNoAck_i_1_41'
                                    680 ;i                         Allocated with name '_radioTxPacketNoAck_i_2_42'
                                    681 ;------------------------------------------------------------
                                    682 ;	src/radio.c:209: void radioTxPacketNoAck(__xdata char *payload, char len)
                                    683 ;	-----------------------------------------
                                    684 ;	 function radioTxPacketNoAck
                                    685 ;	-----------------------------------------
      000747                        686 _radioTxPacketNoAck:
      000747 AF 83            [24]  687 	mov	r7,dph
      000749 E5 82            [12]  688 	mov	a,dpl
      00074B 90 80 52         [24]  689 	mov	dptr,#_radioTxPacketNoAck_payload_1_40
      00074E F0               [24]  690 	movx	@dptr,a
      00074F EF               [12]  691 	mov	a,r7
      000750 A3               [24]  692 	inc	dptr
      000751 F0               [24]  693 	movx	@dptr,a
                                    694 ;	src/radio.c:214: RADIO_EN_CS();
      000752 C2 91            [12]  695 	clr	_RFCSN
                                    696 ;	src/radio.c:215: spiRadioSend(CMD_W_TX_PAYLOAD_NO_ACK);
      000754 75 82 D0         [24]  697 	mov	dpl,#0xD0
      000757 12 05 EB         [24]  698 	lcall	_spiRadioSend
                                    699 ;	src/radio.c:216: for(i=0;i<len;i++)
      00075A 90 80 52         [24]  700 	mov	dptr,#_radioTxPacketNoAck_payload_1_40
      00075D E0               [24]  701 	movx	a,@dptr
      00075E FE               [12]  702 	mov	r6,a
      00075F A3               [24]  703 	inc	dptr
      000760 E0               [24]  704 	movx	a,@dptr
      000761 FF               [12]  705 	mov	r7,a
      000762 90 80 51         [24]  706 	mov	dptr,#_radioTxPacketNoAck_PARM_2
      000765 E0               [24]  707 	movx	a,@dptr
      000766 FD               [12]  708 	mov	r5,a
      000767 7B 00            [12]  709 	mov	r3,#0x00
      000769 7C 00            [12]  710 	mov	r4,#0x00
      00076B                        711 00106$:
      00076B ED               [12]  712 	mov	a,r5
      00076C F9               [12]  713 	mov	r1,a
      00076D 33               [12]  714 	rlc	a
      00076E 95 E0            [12]  715 	subb	a,acc
      000770 FA               [12]  716 	mov	r2,a
      000771 C3               [12]  717 	clr	c
      000772 EB               [12]  718 	mov	a,r3
      000773 99               [12]  719 	subb	a,r1
      000774 EC               [12]  720 	mov	a,r4
      000775 64 80            [12]  721 	xrl	a,#0x80
      000777 8A F0            [24]  722 	mov	b,r2
      000779 63 F0 80         [24]  723 	xrl	b,#0x80
      00077C 95 F0            [12]  724 	subb	a,b
      00077E 50 29            [24]  725 	jnc	00101$
                                    726 ;	src/radio.c:217: spiRadioSend(payload[i]);
      000780 EB               [12]  727 	mov	a,r3
      000781 2E               [12]  728 	add	a,r6
      000782 F5 82            [12]  729 	mov	dpl,a
      000784 EC               [12]  730 	mov	a,r4
      000785 3F               [12]  731 	addc	a,r7
      000786 F5 83            [12]  732 	mov	dph,a
      000788 E0               [24]  733 	movx	a,@dptr
      000789 F5 82            [12]  734 	mov	dpl,a
      00078B C0 07            [24]  735 	push	ar7
      00078D C0 06            [24]  736 	push	ar6
      00078F C0 05            [24]  737 	push	ar5
      000791 C0 04            [24]  738 	push	ar4
      000793 C0 03            [24]  739 	push	ar3
      000795 12 05 EB         [24]  740 	lcall	_spiRadioSend
      000798 D0 03            [24]  741 	pop	ar3
      00079A D0 04            [24]  742 	pop	ar4
      00079C D0 05            [24]  743 	pop	ar5
      00079E D0 06            [24]  744 	pop	ar6
      0007A0 D0 07            [24]  745 	pop	ar7
                                    746 ;	src/radio.c:216: for(i=0;i<len;i++)
      0007A2 0B               [12]  747 	inc	r3
      0007A3 BB 00 C5         [24]  748 	cjne	r3,#0x00,00106$
      0007A6 0C               [12]  749 	inc	r4
      0007A7 80 C2            [24]  750 	sjmp	00106$
      0007A9                        751 00101$:
                                    752 ;	src/radio.c:218: RADIO_DIS_CS();
      0007A9 D2 91            [12]  753 	setb	_RFCSN
                                    754 ;	src/radio.c:221: CE_PULSE();
      0007AB D2 90            [12]  755 	setb	_RFCE
      0007AD 7E 32            [12]  756 	mov	r6,#0x32
      0007AF 7F 00            [12]  757 	mov	r7,#0x00
      0007B1                        758 00102$:
      0007B1 8E 04            [24]  759 	mov	ar4,r6
      0007B3 8F 05            [24]  760 	mov	ar5,r7
      0007B5 1E               [12]  761 	dec	r6
      0007B6 BE FF 01         [24]  762 	cjne	r6,#0xFF,00126$
      0007B9 1F               [12]  763 	dec	r7
      0007BA                        764 00126$:
      0007BA EC               [12]  765 	mov	a,r4
      0007BB 4D               [12]  766 	orl	a,r5
      0007BC 70 F3            [24]  767 	jnz	00102$
      0007BE C2 90            [12]  768 	clr	_RFCE
                                    769 ;	src/radio.c:223: return;
      0007C0 22               [24]  770 	ret
                                    771 ;------------------------------------------------------------
                                    772 ;Allocation info for local variables in function 'radioRxPacket'
                                    773 ;------------------------------------------------------------
                                    774 ;payload                   Allocated with name '_radioRxPacket_payload_1_43'
                                    775 ;len                       Allocated with name '_radioRxPacket_len_1_44'
                                    776 ;i                         Allocated with name '_radioRxPacket_i_1_44'
                                    777 ;------------------------------------------------------------
                                    778 ;	src/radio.c:228: char radioRxPacket(__xdata char *payload)
                                    779 ;	-----------------------------------------
                                    780 ;	 function radioRxPacket
                                    781 ;	-----------------------------------------
      0007C1                        782 _radioRxPacket:
      0007C1 AF 83            [24]  783 	mov	r7,dph
      0007C3 E5 82            [12]  784 	mov	a,dpl
      0007C5 90 80 54         [24]  785 	mov	dptr,#_radioRxPacket_payload_1_43
      0007C8 F0               [24]  786 	movx	@dptr,a
      0007C9 EF               [12]  787 	mov	a,r7
      0007CA A3               [24]  788 	inc	dptr
      0007CB F0               [24]  789 	movx	@dptr,a
                                    790 ;	src/radio.c:234: RADIO_EN_CS();
      0007CC C2 91            [12]  791 	clr	_RFCSN
                                    792 ;	src/radio.c:235: spiRadioSend(CMD_RX_PL_WID);
      0007CE 75 82 60         [24]  793 	mov	dpl,#0x60
      0007D1 12 05 EB         [24]  794 	lcall	_spiRadioSend
                                    795 ;	src/radio.c:236: len = spiRadioReceive();
      0007D4 12 05 FF         [24]  796 	lcall	_spiRadioReceive
      0007D7 E5 82            [12]  797 	mov	a,dpl
      0007D9 FE               [12]  798 	mov	r6,a
      0007DA 33               [12]  799 	rlc	a
      0007DB 95 E0            [12]  800 	subb	a,acc
      0007DD FF               [12]  801 	mov	r7,a
      0007DE 90 80 56         [24]  802 	mov	dptr,#_radioRxPacket_len_1_44
      0007E1 EE               [12]  803 	mov	a,r6
      0007E2 F0               [24]  804 	movx	@dptr,a
      0007E3 EF               [12]  805 	mov	a,r7
      0007E4 A3               [24]  806 	inc	dptr
      0007E5 F0               [24]  807 	movx	@dptr,a
                                    808 ;	src/radio.c:237: RADIO_DIS_CS();  
      0007E6 D2 91            [12]  809 	setb	_RFCSN
                                    810 ;	src/radio.c:239: if (len>0 && len<33)
      0007E8 C3               [12]  811 	clr	c
      0007E9 E4               [12]  812 	clr	a
      0007EA 9E               [12]  813 	subb	a,r6
      0007EB 74 80            [12]  814 	mov	a,#(0x00 ^ 0x80)
      0007ED 8F F0            [24]  815 	mov	b,r7
      0007EF 63 F0 80         [24]  816 	xrl	b,#0x80
      0007F2 95 F0            [12]  817 	subb	a,b
      0007F4 50 76            [24]  818 	jnc	00103$
      0007F6 C3               [12]  819 	clr	c
      0007F7 EE               [12]  820 	mov	a,r6
      0007F8 94 21            [12]  821 	subb	a,#0x21
      0007FA EF               [12]  822 	mov	a,r7
      0007FB 64 80            [12]  823 	xrl	a,#0x80
      0007FD 94 80            [12]  824 	subb	a,#0x80
      0007FF 50 6B            [24]  825 	jnc	00103$
                                    826 ;	src/radio.c:242: RADIO_EN_CS();
      000801 C2 91            [12]  827 	clr	_RFCSN
                                    828 ;	src/radio.c:243: spiRadioSend(CMD_R_RX_PAYLOAD);
      000803 75 82 61         [24]  829 	mov	dpl,#0x61
      000806 C0 07            [24]  830 	push	ar7
      000808 C0 06            [24]  831 	push	ar6
      00080A 12 05 EB         [24]  832 	lcall	_spiRadioSend
      00080D D0 06            [24]  833 	pop	ar6
      00080F D0 07            [24]  834 	pop	ar7
                                    835 ;	src/radio.c:244: for(i=0;i<len;i++)
      000811 90 80 54         [24]  836 	mov	dptr,#_radioRxPacket_payload_1_43
      000814 E0               [24]  837 	movx	a,@dptr
      000815 FC               [12]  838 	mov	r4,a
      000816 A3               [24]  839 	inc	dptr
      000817 E0               [24]  840 	movx	a,@dptr
      000818 FD               [12]  841 	mov	r5,a
      000819 7A 00            [12]  842 	mov	r2,#0x00
      00081B 7B 00            [12]  843 	mov	r3,#0x00
      00081D                        844 00107$:
      00081D C3               [12]  845 	clr	c
      00081E EA               [12]  846 	mov	a,r2
      00081F 9E               [12]  847 	subb	a,r6
      000820 EB               [12]  848 	mov	a,r3
      000821 64 80            [12]  849 	xrl	a,#0x80
      000823 8F F0            [24]  850 	mov	b,r7
      000825 63 F0 80         [24]  851 	xrl	b,#0x80
      000828 95 F0            [12]  852 	subb	a,b
      00082A 50 3C            [24]  853 	jnc	00101$
                                    854 ;	src/radio.c:245: payload[i] = spiRadioReceive();
      00082C C0 06            [24]  855 	push	ar6
      00082E C0 07            [24]  856 	push	ar7
      000830 EA               [12]  857 	mov	a,r2
      000831 2C               [12]  858 	add	a,r4
      000832 F8               [12]  859 	mov	r0,a
      000833 EB               [12]  860 	mov	a,r3
      000834 3D               [12]  861 	addc	a,r5
      000835 F9               [12]  862 	mov	r1,a
      000836 C0 06            [24]  863 	push	ar6
      000838 C0 05            [24]  864 	push	ar5
      00083A C0 04            [24]  865 	push	ar4
      00083C C0 03            [24]  866 	push	ar3
      00083E C0 02            [24]  867 	push	ar2
      000840 C0 01            [24]  868 	push	ar1
      000842 C0 00            [24]  869 	push	ar0
      000844 12 05 FF         [24]  870 	lcall	_spiRadioReceive
      000847 AF 82            [24]  871 	mov	r7,dpl
      000849 D0 00            [24]  872 	pop	ar0
      00084B D0 01            [24]  873 	pop	ar1
      00084D D0 02            [24]  874 	pop	ar2
      00084F D0 03            [24]  875 	pop	ar3
      000851 D0 04            [24]  876 	pop	ar4
      000853 D0 05            [24]  877 	pop	ar5
      000855 D0 06            [24]  878 	pop	ar6
      000857 88 82            [24]  879 	mov	dpl,r0
      000859 89 83            [24]  880 	mov	dph,r1
      00085B EF               [12]  881 	mov	a,r7
      00085C F0               [24]  882 	movx	@dptr,a
                                    883 ;	src/radio.c:244: for(i=0;i<len;i++)
      00085D 0A               [12]  884 	inc	r2
      00085E BA 00 01         [24]  885 	cjne	r2,#0x00,00127$
      000861 0B               [12]  886 	inc	r3
      000862                        887 00127$:
      000862 D0 07            [24]  888 	pop	ar7
      000864 D0 06            [24]  889 	pop	ar6
      000866 80 B5            [24]  890 	sjmp	00107$
      000868                        891 00101$:
                                    892 ;	src/radio.c:246: RADIO_DIS_CS();
      000868 D2 91            [12]  893 	setb	_RFCSN
      00086A 80 07            [24]  894 	sjmp	00104$
      00086C                        895 00103$:
                                    896 ;	src/radio.c:248: len=0;
      00086C 90 80 56         [24]  897 	mov	dptr,#_radioRxPacket_len_1_44
      00086F E4               [12]  898 	clr	a
      000870 F0               [24]  899 	movx	@dptr,a
      000871 A3               [24]  900 	inc	dptr
      000872 F0               [24]  901 	movx	@dptr,a
      000873                        902 00104$:
                                    903 ;	src/radio.c:254: return len;
      000873 90 80 56         [24]  904 	mov	dptr,#_radioRxPacket_len_1_44
      000876 E0               [24]  905 	movx	a,@dptr
      000877 FE               [12]  906 	mov	r6,a
      000878 A3               [24]  907 	inc	dptr
      000879 E0               [24]  908 	movx	a,@dptr
      00087A 8E 82            [24]  909 	mov	dpl,r6
      00087C 22               [24]  910 	ret
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'radioSendPacket'
                                    913 ;------------------------------------------------------------
                                    914 ;len                       Allocated with name '_radioSendPacket_PARM_2'
                                    915 ;ackPayload                Allocated with name '_radioSendPacket_PARM_3'
                                    916 ;ackLen                    Allocated with name '_radioSendPacket_PARM_4'
                                    917 ;payload                   Allocated with name '_radioSendPacket_payload_1_47'
                                    918 ;status                    Allocated with name '_radioSendPacket_status_1_48'
                                    919 ;------------------------------------------------------------
                                    920 ;	src/radio.c:260: unsigned char radioSendPacket(__xdata char *payload, char len, 
                                    921 ;	-----------------------------------------
                                    922 ;	 function radioSendPacket
                                    923 ;	-----------------------------------------
      00087D                        924 _radioSendPacket:
      00087D AF 83            [24]  925 	mov	r7,dph
      00087F E5 82            [12]  926 	mov	a,dpl
      000881 90 80 5E         [24]  927 	mov	dptr,#_radioSendPacket_payload_1_47
      000884 F0               [24]  928 	movx	@dptr,a
      000885 EF               [12]  929 	mov	a,r7
      000886 A3               [24]  930 	inc	dptr
      000887 F0               [24]  931 	movx	@dptr,a
                                    932 ;	src/radio.c:266: radioTxPacket(payload, len);
      000888 90 80 5E         [24]  933 	mov	dptr,#_radioSendPacket_payload_1_47
      00088B E0               [24]  934 	movx	a,@dptr
      00088C FE               [12]  935 	mov	r6,a
      00088D A3               [24]  936 	inc	dptr
      00088E E0               [24]  937 	movx	a,@dptr
      00088F FF               [12]  938 	mov	r7,a
      000890 90 80 58         [24]  939 	mov	dptr,#_radioSendPacket_PARM_2
      000893 E0               [24]  940 	movx	a,@dptr
      000894 90 80 4E         [24]  941 	mov	dptr,#_radioTxPacket_PARM_2
      000897 F0               [24]  942 	movx	@dptr,a
      000898 8E 82            [24]  943 	mov	dpl,r6
      00089A 8F 83            [24]  944 	mov	dph,r7
      00089C 12 06 CD         [24]  945 	lcall	_radioTxPacket
                                    946 ;	src/radio.c:268: while(((status=radioNop())&0x70) == 0);
      00089F                        947 00101$:
      00089F 12 06 54         [24]  948 	lcall	_radioNop
      0008A2 AF 82            [24]  949 	mov	r7,dpl
      0008A4 8F 06            [24]  950 	mov	ar6,r7
      0008A6 EE               [12]  951 	mov	a,r6
      0008A7 54 70            [12]  952 	anl	a,#0x70
      0008A9 60 F4            [24]  953 	jz	00101$
                                    954 ;	src/radio.c:271: radioWriteReg(REG_STATUS, 0x70);
      0008AB 90 80 4C         [24]  955 	mov	dptr,#_radioWriteReg_PARM_2
      0008AE 74 70            [12]  956 	mov	a,#0x70
      0008B0 F0               [24]  957 	movx	@dptr,a
      0008B1 75 82 07         [24]  958 	mov	dpl,#0x07
      0008B4 C0 07            [24]  959 	push	ar7
      0008B6 12 06 A3         [24]  960 	lcall	_radioWriteReg
      0008B9 D0 07            [24]  961 	pop	ar7
                                    962 ;	src/radio.c:274: if (status&BIT_MAX_RT) {
      0008BB EF               [12]  963 	mov	a,r7
      0008BC 30 E4 07         [24]  964 	jnb	acc.4,00105$
                                    965 ;	src/radio.c:275: radioFlushTx();
      0008BF 12 06 63         [24]  966 	lcall	_radioFlushTx
                                    967 ;	src/radio.c:276: return 0;
      0008C2 75 82 00         [24]  968 	mov	dpl,#0x00
      0008C5 22               [24]  969 	ret
      0008C6                        970 00105$:
                                    971 ;	src/radio.c:280: if (status&BIT_RX_DR)
      0008C6 EF               [12]  972 	mov	a,r7
      0008C7 30 E6 38         [24]  973 	jnb	acc.6,00107$
                                    974 ;	src/radio.c:281: *ackLen = radioRxPacket(ackPayload);
      0008CA 90 80 5B         [24]  975 	mov	dptr,#_radioSendPacket_PARM_4
      0008CD E0               [24]  976 	movx	a,@dptr
      0008CE FC               [12]  977 	mov	r4,a
      0008CF A3               [24]  978 	inc	dptr
      0008D0 E0               [24]  979 	movx	a,@dptr
      0008D1 FD               [12]  980 	mov	r5,a
      0008D2 A3               [24]  981 	inc	dptr
      0008D3 E0               [24]  982 	movx	a,@dptr
      0008D4 FE               [12]  983 	mov	r6,a
      0008D5 90 80 59         [24]  984 	mov	dptr,#_radioSendPacket_PARM_3
      0008D8 E0               [24]  985 	movx	a,@dptr
      0008D9 FA               [12]  986 	mov	r2,a
      0008DA A3               [24]  987 	inc	dptr
      0008DB E0               [24]  988 	movx	a,@dptr
      0008DC FB               [12]  989 	mov	r3,a
      0008DD 8A 82            [24]  990 	mov	dpl,r2
      0008DF 8B 83            [24]  991 	mov	dph,r3
      0008E1 C0 07            [24]  992 	push	ar7
      0008E3 C0 06            [24]  993 	push	ar6
      0008E5 C0 05            [24]  994 	push	ar5
      0008E7 C0 04            [24]  995 	push	ar4
      0008E9 12 07 C1         [24]  996 	lcall	_radioRxPacket
      0008EC AB 82            [24]  997 	mov	r3,dpl
      0008EE D0 04            [24]  998 	pop	ar4
      0008F0 D0 05            [24]  999 	pop	ar5
      0008F2 D0 06            [24] 1000 	pop	ar6
      0008F4 D0 07            [24] 1001 	pop	ar7
      0008F6 8C 82            [24] 1002 	mov	dpl,r4
      0008F8 8D 83            [24] 1003 	mov	dph,r5
      0008FA 8E F0            [24] 1004 	mov	b,r6
      0008FC EB               [12] 1005 	mov	a,r3
      0008FD 12 15 AE         [24] 1006 	lcall	__gptrput
      000900 80 15            [24] 1007 	sjmp	00108$
      000902                       1008 00107$:
                                   1009 ;	src/radio.c:283: *ackLen = 0;
      000902 90 80 5B         [24] 1010 	mov	dptr,#_radioSendPacket_PARM_4
      000905 E0               [24] 1011 	movx	a,@dptr
      000906 FC               [12] 1012 	mov	r4,a
      000907 A3               [24] 1013 	inc	dptr
      000908 E0               [24] 1014 	movx	a,@dptr
      000909 FD               [12] 1015 	mov	r5,a
      00090A A3               [24] 1016 	inc	dptr
      00090B E0               [24] 1017 	movx	a,@dptr
      00090C FE               [12] 1018 	mov	r6,a
      00090D 8C 82            [24] 1019 	mov	dpl,r4
      00090F 8D 83            [24] 1020 	mov	dph,r5
      000911 8E F0            [24] 1021 	mov	b,r6
      000913 E4               [12] 1022 	clr	a
      000914 12 15 AE         [24] 1023 	lcall	__gptrput
      000917                       1024 00108$:
                                   1025 ;	src/radio.c:285: radioFlushRx();
      000917 C0 07            [24] 1026 	push	ar7
      000919 12 06 72         [24] 1027 	lcall	_radioFlushRx
      00091C D0 07            [24] 1028 	pop	ar7
                                   1029 ;	src/radio.c:287: return status&BIT_TX_DS;
      00091E 53 07 20         [24] 1030 	anl	ar7,#0x20
      000921 8F 82            [24] 1031 	mov	dpl,r7
      000923 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'radioSendPacketNoAck'
                                   1035 ;------------------------------------------------------------
                                   1036 ;len                       Allocated with name '_radioSendPacketNoAck_PARM_2'
                                   1037 ;payload                   Allocated with name '_radioSendPacketNoAck_payload_1_50'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	src/radio.c:291: void radioSendPacketNoAck(__xdata char *payload, char len)
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function radioSendPacketNoAck
                                   1042 ;	-----------------------------------------
      000924                       1043 _radioSendPacketNoAck:
      000924 AF 83            [24] 1044 	mov	r7,dph
      000926 E5 82            [12] 1045 	mov	a,dpl
      000928 90 80 61         [24] 1046 	mov	dptr,#_radioSendPacketNoAck_payload_1_50
      00092B F0               [24] 1047 	movx	@dptr,a
      00092C EF               [12] 1048 	mov	a,r7
      00092D A3               [24] 1049 	inc	dptr
      00092E F0               [24] 1050 	movx	@dptr,a
                                   1051 ;	src/radio.c:294: while((radioNop()&0x01) != 0);
      00092F                       1052 00101$:
      00092F 12 06 54         [24] 1053 	lcall	_radioNop
      000932 E5 82            [12] 1054 	mov	a,dpl
      000934 FF               [12] 1055 	mov	r7,a
      000935 20 E0 F7         [24] 1056 	jb	acc.0,00101$
                                   1057 ;	src/radio.c:297: radioTxPacketNoAck(payload, len);
      000938 90 80 61         [24] 1058 	mov	dptr,#_radioSendPacketNoAck_payload_1_50
      00093B E0               [24] 1059 	movx	a,@dptr
      00093C FE               [12] 1060 	mov	r6,a
      00093D A3               [24] 1061 	inc	dptr
      00093E E0               [24] 1062 	movx	a,@dptr
      00093F FF               [12] 1063 	mov	r7,a
      000940 90 80 60         [24] 1064 	mov	dptr,#_radioSendPacketNoAck_PARM_2
      000943 E0               [24] 1065 	movx	a,@dptr
      000944 90 80 51         [24] 1066 	mov	dptr,#_radioTxPacketNoAck_PARM_2
      000947 F0               [24] 1067 	movx	@dptr,a
      000948 8E 82            [24] 1068 	mov	dpl,r6
      00094A 8F 83            [24] 1069 	mov	dph,r7
      00094C 02 07 47         [24] 1070 	ljmp	_radioTxPacketNoAck
                                   1071 ;------------------------------------------------------------
                                   1072 ;Allocation info for local variables in function 'radioUpdateRetr'
                                   1073 ;------------------------------------------------------------
                                   1074 ;ard                       Allocated with name '_radioUpdateRetr_ard_1_52'
                                   1075 ;nbytes                    Allocated with name '_radioUpdateRetr_nbytes_1_52'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	src/radio.c:303: void radioUpdateRetr()
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function radioUpdateRetr
                                   1080 ;	-----------------------------------------
      00094F                       1081 _radioUpdateRetr:
                                   1082 ;	src/radio.c:308: if (radioConf.ard & ARD_PLOAD)
      00094F 90 80 91         [24] 1083 	mov	dptr,#(_radioConf + 0x0003)
      000952 E0               [24] 1084 	movx	a,@dptr
      000953 FF               [12] 1085 	mov	r7,a
      000954 30 E7 4E         [24] 1086 	jnb	acc.7,00104$
                                   1087 ;	src/radio.c:310: nbytes = ((radioConf.ard&0x7F)>32)?32:(radioConf.ard&0x7F);
      000957 8F 06            [24] 1088 	mov	ar6,r7
      000959 53 06 7F         [24] 1089 	anl	ar6,#0x7F
      00095C EE               [12] 1090 	mov	a,r6
      00095D 24 DF            [12] 1091 	add	a,#0xff - 0x20
      00095F 50 04            [24] 1092 	jnc	00110$
      000961 7E 20            [12] 1093 	mov	r6,#0x20
      000963 80 04            [24] 1094 	sjmp	00115$
      000965                       1095 00110$:
      000965 74 7F            [12] 1096 	mov	a,#0x7F
      000967 5F               [12] 1097 	anl	a,r7
      000968 FE               [12] 1098 	mov	r6,a
                                   1099 ;	src/radio.c:311: for (ard=0; ardStep[radioConf.dataRate][ard]<nbytes; ard++)
      000969                       1100 00115$:
      000969 7D 00            [12] 1101 	mov	r5,#0x00
      00096B                       1102 00107$:
      00096B 90 80 8E         [24] 1103 	mov	dptr,#_radioConf
      00096E E0               [24] 1104 	movx	a,@dptr
      00096F FC               [12] 1105 	mov	r4,a
      000970 C2 D5            [12] 1106 	clr	F0
      000972 75 F0 06         [24] 1107 	mov	b,#0x06
      000975 EC               [12] 1108 	mov	a,r4
      000976 30 E7 04         [24] 1109 	jnb	acc.7,00127$
      000979 B2 D5            [12] 1110 	cpl	F0
      00097B F4               [12] 1111 	cpl	a
      00097C 04               [12] 1112 	inc	a
      00097D                       1113 00127$:
      00097D A4               [48] 1114 	mul	ab
      00097E 30 D5 0A         [24] 1115 	jnb	F0,00128$
      000981 F4               [12] 1116 	cpl	a
      000982 24 01            [12] 1117 	add	a,#0x01
      000984 C5 F0            [12] 1118 	xch	a,b
      000986 F4               [12] 1119 	cpl	a
      000987 34 00            [12] 1120 	addc	a,#0x00
      000989 C5 F0            [12] 1121 	xch	a,b
      00098B                       1122 00128$:
      00098B 24 E9            [12] 1123 	add	a,#_ardStep
      00098D FB               [12] 1124 	mov	r3,a
      00098E 74 15            [12] 1125 	mov	a,#(_ardStep >> 8)
      000990 35 F0            [12] 1126 	addc	a,b
      000992 FC               [12] 1127 	mov	r4,a
      000993 ED               [12] 1128 	mov	a,r5
      000994 2B               [12] 1129 	add	a,r3
      000995 F5 82            [12] 1130 	mov	dpl,a
      000997 E4               [12] 1131 	clr	a
      000998 3C               [12] 1132 	addc	a,r4
      000999 F5 83            [12] 1133 	mov	dph,a
      00099B E4               [12] 1134 	clr	a
      00099C 93               [24] 1135 	movc	a,@a+dptr
      00099D FC               [12] 1136 	mov	r4,a
      00099E C3               [12] 1137 	clr	c
      00099F 9E               [12] 1138 	subb	a,r6
      0009A0 50 0C            [24] 1139 	jnc	00116$
      0009A2 0D               [12] 1140 	inc	r5
      0009A3 80 C6            [24] 1141 	sjmp	00107$
      0009A5                       1142 00104$:
                                   1143 ;	src/radio.c:314: ard = radioConf.ard & 0x0F;
      0009A5 90 80 63         [24] 1144 	mov	dptr,#_radioUpdateRetr_ard_1_52
      0009A8 74 0F            [12] 1145 	mov	a,#0x0F
      0009AA 5F               [12] 1146 	anl	a,r7
      0009AB F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	src/radio.c:316: radioWriteReg(REG_SETUP_RETR, (ard<<4) | (radioConf.arc&0x0F)); 
                                   1149 ;	src/radio.c:314: ard = radioConf.ard & 0x0F;
      0009AC 80 05            [24] 1150 	sjmp	00105$
      0009AE                       1151 00116$:
      0009AE 90 80 63         [24] 1152 	mov	dptr,#_radioUpdateRetr_ard_1_52
      0009B1 ED               [12] 1153 	mov	a,r5
      0009B2 F0               [24] 1154 	movx	@dptr,a
      0009B3                       1155 00105$:
                                   1156 ;	src/radio.c:316: radioWriteReg(REG_SETUP_RETR, (ard<<4) | (radioConf.arc&0x0F)); 
      0009B3 90 80 63         [24] 1157 	mov	dptr,#_radioUpdateRetr_ard_1_52
      0009B6 E0               [24] 1158 	movx	a,@dptr
      0009B7 C4               [12] 1159 	swap	a
      0009B8 54 F0            [12] 1160 	anl	a,#0xF0
      0009BA FF               [12] 1161 	mov	r7,a
      0009BB 90 80 90         [24] 1162 	mov	dptr,#(_radioConf + 0x0002)
      0009BE E0               [24] 1163 	movx	a,@dptr
      0009BF FE               [12] 1164 	mov	r6,a
      0009C0 74 0F            [12] 1165 	mov	a,#0x0F
      0009C2 5E               [12] 1166 	anl	a,r6
      0009C3 90 80 4C         [24] 1167 	mov	dptr,#_radioWriteReg_PARM_2
      0009C6 4F               [12] 1168 	orl	a,r7
      0009C7 F0               [24] 1169 	movx	@dptr,a
      0009C8 75 82 04         [24] 1170 	mov	dpl,#0x04
      0009CB 02 06 A3         [24] 1171 	ljmp	_radioWriteReg
                                   1172 ;------------------------------------------------------------
                                   1173 ;Allocation info for local variables in function 'radioUpdateRfSetup'
                                   1174 ;------------------------------------------------------------
                                   1175 ;setup                     Allocated with name '_radioUpdateRfSetup_setup_1_54'
                                   1176 ;------------------------------------------------------------
                                   1177 ;	src/radio.c:319: void radioUpdateRfSetup()
                                   1178 ;	-----------------------------------------
                                   1179 ;	 function radioUpdateRfSetup
                                   1180 ;	-----------------------------------------
      0009CE                       1181 _radioUpdateRfSetup:
                                   1182 ;	src/radio.c:323: setup = setupDataRate[radioConf.dataRate];
      0009CE 90 80 8E         [24] 1183 	mov	dptr,#_radioConf
      0009D1 E0               [24] 1184 	movx	a,@dptr
      0009D2 90 15 FB         [24] 1185 	mov	dptr,#_setupDataRate
      0009D5 93               [24] 1186 	movc	a,@a+dptr
      0009D6 FF               [12] 1187 	mov	r7,a
                                   1188 ;	src/radio.c:324: setup |= radioConf.power<<1;
      0009D7 90 80 8F         [24] 1189 	mov	dptr,#(_radioConf + 0x0001)
      0009DA E0               [24] 1190 	movx	a,@dptr
      0009DB 25 E0            [12] 1191 	add	a,acc
      0009DD FE               [12] 1192 	mov	r6,a
      0009DE 42 07            [12] 1193 	orl	ar7,a
      0009E0 90 80 64         [24] 1194 	mov	dptr,#_radioUpdateRfSetup_setup_1_54
      0009E3 EF               [12] 1195 	mov	a,r7
      0009E4 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	src/radio.c:326: if (radioConf.contCarrier)
      0009E5 90 80 92         [24] 1198 	mov	dptr,#(_radioConf + 0x0004)
      0009E8 E0               [24] 1199 	movx	a,@dptr
      0009E9 60 07            [24] 1200 	jz	00102$
                                   1201 ;	src/radio.c:327: setup |= 0x90;
      0009EB 90 80 64         [24] 1202 	mov	dptr,#_radioUpdateRfSetup_setup_1_54
      0009EE 74 90            [12] 1203 	mov	a,#0x90
      0009F0 4F               [12] 1204 	orl	a,r7
      0009F1 F0               [24] 1205 	movx	@dptr,a
      0009F2                       1206 00102$:
                                   1207 ;	src/radio.c:329: radioWriteReg(REG_RF_SETUP, setup);
      0009F2 90 80 64         [24] 1208 	mov	dptr,#_radioUpdateRfSetup_setup_1_54
      0009F5 E0               [24] 1209 	movx	a,@dptr
      0009F6 90 80 4C         [24] 1210 	mov	dptr,#_radioWriteReg_PARM_2
      0009F9 F0               [24] 1211 	movx	@dptr,a
      0009FA 75 82 06         [24] 1212 	mov	dpl,#0x06
      0009FD 02 06 A3         [24] 1213 	ljmp	_radioWriteReg
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'radioSetChannel'
                                   1216 ;------------------------------------------------------------
                                   1217 ;channel                   Allocated with name '_radioSetChannel_channel_1_55'
                                   1218 ;------------------------------------------------------------
                                   1219 ;	src/radio.c:333: void radioSetChannel(char channel)
                                   1220 ;	-----------------------------------------
                                   1221 ;	 function radioSetChannel
                                   1222 ;	-----------------------------------------
      000A00                       1223 _radioSetChannel:
      000A00 E5 82            [12] 1224 	mov	a,dpl
      000A02 90 80 65         [24] 1225 	mov	dptr,#_radioSetChannel_channel_1_55
      000A05 F0               [24] 1226 	movx	@dptr,a
                                   1227 ;	src/radio.c:336: if(channel<0 || channel>125)
      000A06 E0               [24] 1228 	movx	a,@dptr
      000A07 FF               [12] 1229 	mov	r7,a
      000A08 20 E7 0C         [24] 1230 	jb	acc.7,00101$
      000A0B C3               [12] 1231 	clr	c
      000A0C 74 FD            [12] 1232 	mov	a,#(0x7D ^ 0x80)
      000A0E 8F F0            [24] 1233 	mov	b,r7
      000A10 63 F0 80         [24] 1234 	xrl	b,#0x80
      000A13 95 F0            [12] 1235 	subb	a,b
      000A15 50 01            [24] 1236 	jnc	00102$
      000A17                       1237 00101$:
                                   1238 ;	src/radio.c:337: return;
      000A17 22               [24] 1239 	ret
      000A18                       1240 00102$:
                                   1241 ;	src/radio.c:340: RADIO_DIS_CE();
      000A18 C2 90            [12] 1242 	clr	_RFCE
                                   1243 ;	src/radio.c:341: radioWriteReg(REG_RF_CH, channel);
      000A1A 90 80 4C         [24] 1244 	mov	dptr,#_radioWriteReg_PARM_2
      000A1D EF               [12] 1245 	mov	a,r7
      000A1E F0               [24] 1246 	movx	@dptr,a
      000A1F 75 82 05         [24] 1247 	mov	dpl,#0x05
      000A22 12 06 A3         [24] 1248 	lcall	_radioWriteReg
                                   1249 ;	src/radio.c:344: if(radioConf.contCarrier)
      000A25 90 80 92         [24] 1250 	mov	dptr,#(_radioConf + 0x0004)
      000A28 E0               [24] 1251 	movx	a,@dptr
      000A29 60 02            [24] 1252 	jz	00106$
                                   1253 ;	src/radio.c:345: RADIO_EN_CE();
      000A2B D2 90            [12] 1254 	setb	_RFCE
      000A2D                       1255 00106$:
      000A2D 22               [24] 1256 	ret
                                   1257 ;------------------------------------------------------------
                                   1258 ;Allocation info for local variables in function 'radioSetDataRate'
                                   1259 ;------------------------------------------------------------
                                   1260 ;dr                        Allocated with name '_radioSetDataRate_dr_1_57'
                                   1261 ;------------------------------------------------------------
                                   1262 ;	src/radio.c:349: void radioSetDataRate(unsigned char dr)
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function radioSetDataRate
                                   1265 ;	-----------------------------------------
      000A2E                       1266 _radioSetDataRate:
      000A2E E5 82            [12] 1267 	mov	a,dpl
      000A30 90 80 66         [24] 1268 	mov	dptr,#_radioSetDataRate_dr_1_57
      000A33 F0               [24] 1269 	movx	@dptr,a
                                   1270 ;	src/radio.c:351: if (dr>=3)
      000A34 E0               [24] 1271 	movx	a,@dptr
      000A35 FF               [12] 1272 	mov	r7,a
      000A36 BF 03 00         [24] 1273 	cjne	r7,#0x03,00108$
      000A39                       1274 00108$:
      000A39 40 01            [24] 1275 	jc	00102$
                                   1276 ;	src/radio.c:352: return;
      000A3B 22               [24] 1277 	ret
      000A3C                       1278 00102$:
                                   1279 ;	src/radio.c:354: radioConf.dataRate = dr;
      000A3C 90 80 8E         [24] 1280 	mov	dptr,#_radioConf
      000A3F EF               [12] 1281 	mov	a,r7
      000A40 F0               [24] 1282 	movx	@dptr,a
                                   1283 ;	src/radio.c:356: radioUpdateRfSetup();
      000A41 12 09 CE         [24] 1284 	lcall	_radioUpdateRfSetup
                                   1285 ;	src/radio.c:357: radioUpdateRetr();
      000A44 02 09 4F         [24] 1286 	ljmp	_radioUpdateRetr
                                   1287 ;------------------------------------------------------------
                                   1288 ;Allocation info for local variables in function 'radioGetDataRate'
                                   1289 ;------------------------------------------------------------
                                   1290 ;	src/radio.c:360: char radioGetDataRate()
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function radioGetDataRate
                                   1293 ;	-----------------------------------------
      000A47                       1294 _radioGetDataRate:
                                   1295 ;	src/radio.c:362: return radioConf.dataRate;
      000A47 90 80 8E         [24] 1296 	mov	dptr,#_radioConf
      000A4A E0               [24] 1297 	movx	a,@dptr
      000A4B F5 82            [12] 1298 	mov	dpl,a
      000A4D 22               [24] 1299 	ret
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'radioSetPower'
                                   1302 ;------------------------------------------------------------
                                   1303 ;power                     Allocated with name '_radioSetPower_power_1_60'
                                   1304 ;------------------------------------------------------------
                                   1305 ;	src/radio.c:365: void radioSetPower(char power)
                                   1306 ;	-----------------------------------------
                                   1307 ;	 function radioSetPower
                                   1308 ;	-----------------------------------------
      000A4E                       1309 _radioSetPower:
      000A4E E5 82            [12] 1310 	mov	a,dpl
      000A50 90 80 67         [24] 1311 	mov	dptr,#_radioSetPower_power_1_60
      000A53 F0               [24] 1312 	movx	@dptr,a
                                   1313 ;	src/radio.c:367: radioConf.power = power&0x03;
      000A54 E0               [24] 1314 	movx	a,@dptr
      000A55 FF               [12] 1315 	mov	r7,a
      000A56 53 07 03         [24] 1316 	anl	ar7,#0x03
      000A59 90 80 8F         [24] 1317 	mov	dptr,#(_radioConf + 0x0001)
      000A5C EF               [12] 1318 	mov	a,r7
      000A5D F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	src/radio.c:369: radioUpdateRfSetup();
      000A5E 02 09 CE         [24] 1321 	ljmp	_radioUpdateRfSetup
                                   1322 ;------------------------------------------------------------
                                   1323 ;Allocation info for local variables in function 'radioSetArd'
                                   1324 ;------------------------------------------------------------
                                   1325 ;ard                       Allocated with name '_radioSetArd_ard_1_62'
                                   1326 ;------------------------------------------------------------
                                   1327 ;	src/radio.c:372: void radioSetArd(char ard)
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function radioSetArd
                                   1330 ;	-----------------------------------------
      000A61                       1331 _radioSetArd:
      000A61 E5 82            [12] 1332 	mov	a,dpl
      000A63 90 80 68         [24] 1333 	mov	dptr,#_radioSetArd_ard_1_62
      000A66 F0               [24] 1334 	movx	@dptr,a
                                   1335 ;	src/radio.c:374: radioConf.ard = ard;
      000A67 E0               [24] 1336 	movx	a,@dptr
      000A68 90 80 91         [24] 1337 	mov	dptr,#(_radioConf + 0x0003)
      000A6B F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	src/radio.c:376: radioUpdateRetr(); 
      000A6C 02 09 4F         [24] 1340 	ljmp	_radioUpdateRetr
                                   1341 ;------------------------------------------------------------
                                   1342 ;Allocation info for local variables in function 'radioSetArc'
                                   1343 ;------------------------------------------------------------
                                   1344 ;arc                       Allocated with name '_radioSetArc_arc_1_64'
                                   1345 ;------------------------------------------------------------
                                   1346 ;	src/radio.c:379: void radioSetArc(char arc)
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function radioSetArc
                                   1349 ;	-----------------------------------------
      000A6F                       1350 _radioSetArc:
      000A6F E5 82            [12] 1351 	mov	a,dpl
      000A71 90 80 69         [24] 1352 	mov	dptr,#_radioSetArc_arc_1_64
      000A74 F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	src/radio.c:381: radioConf.arc = arc;
      000A75 E0               [24] 1355 	movx	a,@dptr
      000A76 90 80 90         [24] 1356 	mov	dptr,#(_radioConf + 0x0002)
      000A79 F0               [24] 1357 	movx	@dptr,a
                                   1358 ;	src/radio.c:383: radioUpdateRetr();
      000A7A 02 09 4F         [24] 1359 	ljmp	_radioUpdateRetr
                                   1360 ;------------------------------------------------------------
                                   1361 ;Allocation info for local variables in function 'radioSetContCarrier'
                                   1362 ;------------------------------------------------------------
                                   1363 ;	src/radio.c:386: void radioSetContCarrier(bool contCarrier)
                                   1364 ;	-----------------------------------------
                                   1365 ;	 function radioSetContCarrier
                                   1366 ;	-----------------------------------------
      000A7D                       1367 _radioSetContCarrier:
                                   1368 ;	src/radio.c:388: radioConf.contCarrier = contCarrier?1:0;
      000A7D 30 03 04         [24] 1369 	jnb	_radioSetContCarrier_PARM_1,00105$
      000A80 7F 01            [12] 1370 	mov	r7,#0x01
      000A82 80 02            [24] 1371 	sjmp	00106$
      000A84                       1372 00105$:
      000A84 7F 00            [12] 1373 	mov	r7,#0x00
      000A86                       1374 00106$:
      000A86 90 80 92         [24] 1375 	mov	dptr,#(_radioConf + 0x0004)
      000A89 EF               [12] 1376 	mov	a,r7
      000A8A F0               [24] 1377 	movx	@dptr,a
                                   1378 ;	src/radio.c:390: RADIO_DIS_CE();
      000A8B C2 90            [12] 1379 	clr	_RFCE
                                   1380 ;	src/radio.c:392: radioUpdateRfSetup();
      000A8D 12 09 CE         [24] 1381 	lcall	_radioUpdateRfSetup
                                   1382 ;	src/radio.c:394: if(contCarrier)
      000A90 30 03 02         [24] 1383 	jnb	_radioSetContCarrier_PARM_1,00103$
                                   1384 ;	src/radio.c:395: RADIO_EN_CE();
      000A93 D2 90            [12] 1385 	setb	_RFCE
      000A95                       1386 00103$:
      000A95 22               [24] 1387 	ret
                                   1388 ;------------------------------------------------------------
                                   1389 ;Allocation info for local variables in function 'radioSetAddress'
                                   1390 ;------------------------------------------------------------
                                   1391 ;address                   Allocated with name '_radioSetAddress_address_1_68'
                                   1392 ;i                         Allocated with name '_radioSetAddress_i_1_69'
                                   1393 ;------------------------------------------------------------
                                   1394 ;	src/radio.c:399: void radioSetAddress(__xdata char* address)
                                   1395 ;	-----------------------------------------
                                   1396 ;	 function radioSetAddress
                                   1397 ;	-----------------------------------------
      000A96                       1398 _radioSetAddress:
      000A96 AF 83            [24] 1399 	mov	r7,dph
      000A98 E5 82            [12] 1400 	mov	a,dpl
      000A9A 90 80 6A         [24] 1401 	mov	dptr,#_radioSetAddress_address_1_68
      000A9D F0               [24] 1402 	movx	@dptr,a
      000A9E EF               [12] 1403 	mov	a,r7
      000A9F A3               [24] 1404 	inc	dptr
      000AA0 F0               [24] 1405 	movx	@dptr,a
                                   1406 ;	src/radio.c:403: RADIO_EN_CS();
      000AA1 C2 91            [12] 1407 	clr	_RFCSN
                                   1408 ;	src/radio.c:404: spiRadioSend(CMD_W_REG | REG_TX_ADDR);
      000AA3 75 82 30         [24] 1409 	mov	dpl,#0x30
      000AA6 12 05 EB         [24] 1410 	lcall	_spiRadioSend
                                   1411 ;	src/radio.c:405: for(i=0; i<5; i++)
      000AA9 90 80 6A         [24] 1412 	mov	dptr,#_radioSetAddress_address_1_68
      000AAC E0               [24] 1413 	movx	a,@dptr
      000AAD FE               [12] 1414 	mov	r6,a
      000AAE A3               [24] 1415 	inc	dptr
      000AAF E0               [24] 1416 	movx	a,@dptr
      000AB0 FF               [12] 1417 	mov	r7,a
      000AB1 7C 00            [12] 1418 	mov	r4,#0x00
      000AB3 7D 00            [12] 1419 	mov	r5,#0x00
      000AB5                       1420 00103$:
                                   1421 ;	src/radio.c:406: spiRadioSend(address[i]);
      000AB5 EC               [12] 1422 	mov	a,r4
      000AB6 2E               [12] 1423 	add	a,r6
      000AB7 F5 82            [12] 1424 	mov	dpl,a
      000AB9 ED               [12] 1425 	mov	a,r5
      000ABA 3F               [12] 1426 	addc	a,r7
      000ABB F5 83            [12] 1427 	mov	dph,a
      000ABD E0               [24] 1428 	movx	a,@dptr
      000ABE F5 82            [12] 1429 	mov	dpl,a
      000AC0 C0 07            [24] 1430 	push	ar7
      000AC2 C0 06            [24] 1431 	push	ar6
      000AC4 C0 05            [24] 1432 	push	ar5
      000AC6 C0 04            [24] 1433 	push	ar4
      000AC8 12 05 EB         [24] 1434 	lcall	_spiRadioSend
      000ACB D0 04            [24] 1435 	pop	ar4
      000ACD D0 05            [24] 1436 	pop	ar5
      000ACF D0 06            [24] 1437 	pop	ar6
      000AD1 D0 07            [24] 1438 	pop	ar7
                                   1439 ;	src/radio.c:405: for(i=0; i<5; i++)
      000AD3 0C               [12] 1440 	inc	r4
      000AD4 BC 00 01         [24] 1441 	cjne	r4,#0x00,00123$
      000AD7 0D               [12] 1442 	inc	r5
      000AD8                       1443 00123$:
      000AD8 C3               [12] 1444 	clr	c
      000AD9 EC               [12] 1445 	mov	a,r4
      000ADA 94 05            [12] 1446 	subb	a,#0x05
      000ADC ED               [12] 1447 	mov	a,r5
      000ADD 64 80            [12] 1448 	xrl	a,#0x80
      000ADF 94 80            [12] 1449 	subb	a,#0x80
      000AE1 40 D2            [24] 1450 	jc	00103$
                                   1451 ;	src/radio.c:407: RADIO_DIS_CS();
      000AE3 D2 91            [12] 1452 	setb	_RFCSN
                                   1453 ;	src/radio.c:409: RADIO_EN_CS();
      000AE5 C2 91            [12] 1454 	clr	_RFCSN
                                   1455 ;	src/radio.c:410: spiRadioSend(CMD_W_REG | REG_RX_ADDR_P0);
      000AE7 75 82 2A         [24] 1456 	mov	dpl,#0x2A
      000AEA C0 07            [24] 1457 	push	ar7
      000AEC C0 06            [24] 1458 	push	ar6
      000AEE 12 05 EB         [24] 1459 	lcall	_spiRadioSend
      000AF1 D0 06            [24] 1460 	pop	ar6
      000AF3 D0 07            [24] 1461 	pop	ar7
                                   1462 ;	src/radio.c:411: for(i=0; i<5; i++)
      000AF5 7C 00            [12] 1463 	mov	r4,#0x00
      000AF7 7D 00            [12] 1464 	mov	r5,#0x00
      000AF9                       1465 00105$:
                                   1466 ;	src/radio.c:412: spiRadioSend(address[i]);
      000AF9 EC               [12] 1467 	mov	a,r4
      000AFA 2E               [12] 1468 	add	a,r6
      000AFB F5 82            [12] 1469 	mov	dpl,a
      000AFD ED               [12] 1470 	mov	a,r5
      000AFE 3F               [12] 1471 	addc	a,r7
      000AFF F5 83            [12] 1472 	mov	dph,a
      000B01 E0               [24] 1473 	movx	a,@dptr
      000B02 F5 82            [12] 1474 	mov	dpl,a
      000B04 C0 07            [24] 1475 	push	ar7
      000B06 C0 06            [24] 1476 	push	ar6
      000B08 C0 05            [24] 1477 	push	ar5
      000B0A C0 04            [24] 1478 	push	ar4
      000B0C 12 05 EB         [24] 1479 	lcall	_spiRadioSend
      000B0F D0 04            [24] 1480 	pop	ar4
      000B11 D0 05            [24] 1481 	pop	ar5
      000B13 D0 06            [24] 1482 	pop	ar6
      000B15 D0 07            [24] 1483 	pop	ar7
                                   1484 ;	src/radio.c:411: for(i=0; i<5; i++)
      000B17 0C               [12] 1485 	inc	r4
      000B18 BC 00 01         [24] 1486 	cjne	r4,#0x00,00125$
      000B1B 0D               [12] 1487 	inc	r5
      000B1C                       1488 00125$:
      000B1C C3               [12] 1489 	clr	c
      000B1D EC               [12] 1490 	mov	a,r4
      000B1E 94 05            [12] 1491 	subb	a,#0x05
      000B20 ED               [12] 1492 	mov	a,r5
      000B21 64 80            [12] 1493 	xrl	a,#0x80
      000B23 94 80            [12] 1494 	subb	a,#0x80
      000B25 40 D2            [24] 1495 	jc	00105$
                                   1496 ;	src/radio.c:413: RADIO_DIS_CS();
      000B27 D2 91            [12] 1497 	setb	_RFCSN
      000B29 22               [24] 1498 	ret
                                   1499 ;------------------------------------------------------------
                                   1500 ;Allocation info for local variables in function 'radioGetRpd'
                                   1501 ;------------------------------------------------------------
                                   1502 ;	src/radio.c:417: uint8_t radioGetRpd(void)
                                   1503 ;	-----------------------------------------
                                   1504 ;	 function radioGetRpd
                                   1505 ;	-----------------------------------------
      000B2A                       1506 _radioGetRpd:
                                   1507 ;	src/radio.c:419: return radioReadReg(REG_RPD);
      000B2A 75 82 09         [24] 1508 	mov	dpl,#0x09
      000B2D 02 06 81         [24] 1509 	ljmp	_radioReadReg
                                   1510 ;------------------------------------------------------------
                                   1511 ;Allocation info for local variables in function 'radioGetTxRetry'
                                   1512 ;------------------------------------------------------------
                                   1513 ;	src/radio.c:423: uint8_t radioGetTxRetry(void)
                                   1514 ;	-----------------------------------------
                                   1515 ;	 function radioGetTxRetry
                                   1516 ;	-----------------------------------------
      000B30                       1517 _radioGetTxRetry:
                                   1518 ;	src/radio.c:425: return radioReadReg(REG_OBSERVE_TX)&0x0F;
      000B30 75 82 08         [24] 1519 	mov	dpl,#0x08
      000B33 12 06 81         [24] 1520 	lcall	_radioReadReg
      000B36 E5 82            [12] 1521 	mov	a,dpl
      000B38 54 0F            [12] 1522 	anl	a,#0x0F
      000B3A F5 82            [12] 1523 	mov	dpl,a
      000B3C 22               [24] 1524 	ret
                                   1525 	.area CSEG    (CODE)
                                   1526 	.area CONST   (CODE)
      0015E9                       1527 _ardStep:
      0015E9 00                    1528 	.db #0x00	; 0
      0015EA 00                    1529 	.db #0x00	; 0
      0015EB 08                    1530 	.db #0x08	; 8
      0015EC 10                    1531 	.db #0x10	; 16
      0015ED 18                    1532 	.db #0x18	; 24
      0015EE 20                    1533 	.db #0x20	; 32
      0015EF 0F                    1534 	.db #0x0F	; 15
      0015F0 20                    1535 	.db #0x20	; 32
      0015F1 00                    1536 	.db 0x00
      0015F2 00                    1537 	.db 0x00
      0015F3 00                    1538 	.db 0x00
      0015F4 00                    1539 	.db 0x00
      0015F5 05                    1540 	.db #0x05	; 5
      0015F6 20                    1541 	.db #0x20	; 32
      0015F7 00                    1542 	.db 0x00
      0015F8 00                    1543 	.db 0x00
      0015F9 00                    1544 	.db 0x00
      0015FA 00                    1545 	.db 0x00
      0015FB                       1546 _setupDataRate:
      0015FB 20                    1547 	.db #0x20	; 32
      0015FC 00                    1548 	.db #0x00	; 0
      0015FD 08                    1549 	.db #0x08	; 8
                                   1550 	.area XINIT   (CODE)
      00169B                       1551 __xinit__radioConf:
      00169B 02                    1552 	.db #0x02	;  2
      00169C 03                    1553 	.db #0x03	;  3
      00169D 03                    1554 	.db #0x03	;  3
      00169E A0                    1555 	.db #0xA0	; -96
      00169F 00                    1556 	.db #0x00	;  0
                                   1557 	.area CABS    (ABS,CODE)
