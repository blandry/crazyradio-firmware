                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
                                      4 ; This file was generated Mon Mar  2 13:45:47 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _ledSet
                                     14 	.globl _ledInit
                                     15 	.globl _usbDismissSetup
                                     16 	.globl _usbAckSetup
                                     17 	.globl _usbGetSetupPacket
                                     18 	.globl _usbIsVendorSetup
                                     19 	.globl _usbGetState
                                     20 	.globl _usbDeinit
                                     21 	.globl _usbInit
                                     22 	.globl _radioGetTxRetry
                                     23 	.globl _radioGetRpd
                                     24 	.globl _radioSetContCarrier
                                     25 	.globl _radioSetArc
                                     26 	.globl _radioSetArd
                                     27 	.globl _radioSetPower
                                     28 	.globl _radioSetAddress
                                     29 	.globl _radioGetDataRate
                                     30 	.globl _radioSetDataRate
                                     31 	.globl _radioSetChannel
                                     32 	.globl _radioSendPacketNoAck
                                     33 	.globl _radioSendPacket
                                     34 	.globl _radioDeinit
                                     35 	.globl _radioInit
                                     36 	.globl _initId
                                     37 	.globl _memcpy
                                     38 	.globl _USB_SWRDT
                                     39 	.globl _USB_WU
                                     40 	.globl _USB_SUSPEND
                                     41 	.globl _USB_IV4
                                     42 	.globl _USB_IV3
                                     43 	.globl _USB_IV2
                                     44 	.globl _USB_IV1
                                     45 	.globl _USB_IV0
                                     46 	.globl _EXF2
                                     47 	.globl _TF2
                                     48 	.globl _WU
                                     49 	.globl _USBIRQ_F
                                     50 	.globl _USBWU
                                     51 	.globl _SDONE
                                     52 	.globl _RFIRQ
                                     53 	.globl _RFRDY
                                     54 	.globl _P0_7
                                     55 	.globl _P0_6
                                     56 	.globl _P0_5
                                     57 	.globl _P0_4
                                     58 	.globl _P0_3
                                     59 	.globl _P0_2
                                     60 	.globl _P0_1
                                     61 	.globl _P0_0
                                     62 	.globl _RFCKEN
                                     63 	.globl _RFCSN
                                     64 	.globl _RFCE
                                     65 	.globl _USBSLP
                                     66 	.globl _USBCON
                                     67 	.globl _FCR
                                     68 	.globl _FPCR
                                     69 	.globl _FSR
                                     70 	.globl _CRCH
                                     71 	.globl _CRCL
                                     72 	.globl _CCH3
                                     73 	.globl _CCL3
                                     74 	.globl _CCH2
                                     75 	.globl _CCL2
                                     76 	.globl _CCH1
                                     77 	.globl _CCL1
                                     78 	.globl _CCEN
                                     79 	.globl _TH2
                                     80 	.globl _TL2
                                     81 	.globl _T2CON
                                     82 	.globl _TH1
                                     83 	.globl _TH0
                                     84 	.globl _TL1
                                     85 	.globl _TL0
                                     86 	.globl _TMOD
                                     87 	.globl _TCON
                                     88 	.globl _IRCON
                                     89 	.globl _IP1
                                     90 	.globl _IP0
                                     91 	.globl _IEN1
                                     92 	.globl _IEN0
                                     93 	.globl _SSSTAT
                                     94 	.globl _SSDAT
                                     95 	.globl _SSCONF
                                     96 	.globl _P0EXP
                                     97 	.globl _P0ALT
                                     98 	.globl _P0DIR
                                     99 	.globl _P0
                                    100 	.globl _RFCON
                                    101 	.globl _RFCTL
                                    102 	.globl _RFDAT
                                    103 	.globl _rbuffer
                                    104 	.globl _tbuffer
                                    105 	.globl _IN5BUF
                                    106 	.globl _OUT5BUF
                                    107 	.globl _IN4BUF
                                    108 	.globl _OUT4BUF
                                    109 	.globl _IN3BUF
                                    110 	.globl _OUT3BUF
                                    111 	.globl _IN2BUF
                                    112 	.globl _OUT2BUF
                                    113 	.globl _IN1BUF
                                    114 	.globl _OUT1BUF
                                    115 	.globl _IN0BUF
                                    116 	.globl _OUT0BUF
                                    117 	.globl _SETUPBUF
                                    118 	.globl _handleUsbVendorSetup
                                    119 	.globl _launchBootloader
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           0000E5   125 _RFDAT	=	0x00e5
                           0000E6   126 _RFCTL	=	0x00e6
                           000090   127 _RFCON	=	0x0090
                           000080   128 _P0	=	0x0080
                           000094   129 _P0DIR	=	0x0094
                           000095   130 _P0ALT	=	0x0095
                           0000C9   131 _P0EXP	=	0x00c9
                           0000BC   132 _SSCONF	=	0x00bc
                           0000BD   133 _SSDAT	=	0x00bd
                           0000BE   134 _SSSTAT	=	0x00be
                           0000A8   135 _IEN0	=	0x00a8
                           0000B8   136 _IEN1	=	0x00b8
                           0000A9   137 _IP0	=	0x00a9
                           0000B9   138 _IP1	=	0x00b9
                           0000C0   139 _IRCON	=	0x00c0
                           000088   140 _TCON	=	0x0088
                           000089   141 _TMOD	=	0x0089
                           00008A   142 _TL0	=	0x008a
                           00008B   143 _TL1	=	0x008b
                           00008C   144 _TH0	=	0x008c
                           00008D   145 _TH1	=	0x008d
                           0000C8   146 _T2CON	=	0x00c8
                           0000CC   147 _TL2	=	0x00cc
                           0000CD   148 _TH2	=	0x00cd
                           0000C1   149 _CCEN	=	0x00c1
                           0000C2   150 _CCL1	=	0x00c2
                           0000C3   151 _CCH1	=	0x00c3
                           0000C4   152 _CCL2	=	0x00c4
                           0000C5   153 _CCH2	=	0x00c5
                           0000C6   154 _CCL3	=	0x00c6
                           0000C7   155 _CCH3	=	0x00c7
                           0000CA   156 _CRCL	=	0x00ca
                           0000CB   157 _CRCH	=	0x00cb
                           0000F8   158 _FSR	=	0x00f8
                           0000F9   159 _FPCR	=	0x00f9
                           0000FA   160 _FCR	=	0x00fa
                           0000A0   161 _USBCON	=	0x00a0
                           0000D9   162 _USBSLP	=	0x00d9
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000090   168 _RFCE	=	0x0090
                           000091   169 _RFCSN	=	0x0091
                           000092   170 _RFCKEN	=	0x0092
                           000080   171 _P0_0	=	0x0080
                           000081   172 _P0_1	=	0x0081
                           000082   173 _P0_2	=	0x0082
                           000083   174 _P0_3	=	0x0083
                           000084   175 _P0_4	=	0x0084
                           000085   176 _P0_5	=	0x0085
                           000086   177 _P0_6	=	0x0086
                           000087   178 _P0_7	=	0x0087
                           0000C0   179 _RFRDY	=	0x00c0
                           0000C1   180 _RFIRQ	=	0x00c1
                           0000C2   181 _SDONE	=	0x00c2
                           0000C3   182 _USBWU	=	0x00c3
                           0000C4   183 _USBIRQ_F	=	0x00c4
                           0000C5   184 _WU	=	0x00c5
                           0000C6   185 _TF2	=	0x00c6
                           0000C7   186 _EXF2	=	0x00c7
                           0000A0   187 _USB_IV0	=	0x00a0
                           0000A1   188 _USB_IV1	=	0x00a1
                           0000A2   189 _USB_IV2	=	0x00a2
                           0000A3   190 _USB_IV3	=	0x00a3
                           0000A4   191 _USB_IV4	=	0x00a4
                           0000A5   192 _USB_SUSPEND	=	0x00a5
                           0000A6   193 _USB_WU	=	0x00a6
                           0000A7   194 _USB_SWRDT	=	0x00a7
                                    195 ;--------------------------------------------------------
                                    196 ; overlayable register banks
                                    197 ;--------------------------------------------------------
                                    198 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        199 	.ds 8
                                    200 ;--------------------------------------------------------
                                    201 ; internal ram data
                                    202 ;--------------------------------------------------------
                                    203 	.area DSEG    (DATA)
      000010                        204 _handleUsbVendorSetup_sloc0_1_0:
      000010                        205 	.ds 2
      000012                        206 _handleUsbVendorSetup_sloc1_1_0:
      000012                        207 	.ds 2
                                    208 ;--------------------------------------------------------
                                    209 ; overlayable items in internal ram 
                                    210 ;--------------------------------------------------------
                                    211 ;--------------------------------------------------------
                                    212 ; Stack segment in internal ram 
                                    213 ;--------------------------------------------------------
                                    214 	.area	SSEG
      000022                        215 __start__stack:
      000022                        216 	.ds	1
                                    217 
                                    218 ;--------------------------------------------------------
                                    219 ; indirectly addressable internal ram data
                                    220 ;--------------------------------------------------------
                                    221 	.area ISEG    (DATA)
                                    222 ;--------------------------------------------------------
                                    223 ; absolute internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area IABS    (ABS,DATA)
                                    226 	.area IABS    (ABS,DATA)
                                    227 ;--------------------------------------------------------
                                    228 ; bit data
                                    229 ;--------------------------------------------------------
                                    230 	.area BSEG    (BIT)
      000000                        231 _contCarrier:
      000000                        232 	.ds 1
      000001                        233 _needAck:
      000001                        234 	.ds 1
      000002                        235 _udpMode:
      000002                        236 	.ds 1
                                    237 ;--------------------------------------------------------
                                    238 ; paged external ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area PSEG    (PAG,XDATA)
                                    241 ;--------------------------------------------------------
                                    242 ; external ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area XSEG    (XDATA)
                           00C7E8   245 _SETUPBUF	=	0xc7e8
                           00C6C0   246 _OUT0BUF	=	0xc6c0
                           00C700   247 _IN0BUF	=	0xc700
                           00C640   248 _OUT1BUF	=	0xc640
                           00C680   249 _IN1BUF	=	0xc680
                           00C5C0   250 _OUT2BUF	=	0xc5c0
                           00C600   251 _IN2BUF	=	0xc600
                           00C540   252 _OUT3BUF	=	0xc540
                           00C580   253 _IN3BUF	=	0xc580
                           00C4C0   254 _OUT4BUF	=	0xc4c0
                           00C500   255 _IN4BUF	=	0xc500
                           00C440   256 _OUT5BUF	=	0xc440
                           00C480   257 _IN5BUF	=	0xc480
      008000                        258 _tbuffer::
      008000                        259 	.ds 33
      008021                        260 _rbuffer::
      008021                        261 	.ds 33
      008042                        262 _scannLength:
      008042                        263 	.ds 1
      008043                        264 _main_tlen_1_45:
      008043                        265 	.ds 1
      008044                        266 _main_rlen_1_45:
      008044                        267 	.ds 1
      008045                        268 _main_ack_1_45:
      008045                        269 	.ds 1
      008046                        270 _handleUsbVendorSetup_i_3_66:
      008046                        271 	.ds 2
      008048                        272 _handleUsbVendorSetup_rlen_3_66:
      008048                        273 	.ds 1
      008049                        274 _handleUsbVendorSetup_inc_3_66:
      008049                        275 	.ds 1
                                    276 ;--------------------------------------------------------
                                    277 ; absolute external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XABS    (ABS,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; external initialized ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XISEG   (XDATA)
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT0 (CODE)
                                    286 	.area GSINIT1 (CODE)
                                    287 	.area GSINIT2 (CODE)
                                    288 	.area GSINIT3 (CODE)
                                    289 	.area GSINIT4 (CODE)
                                    290 	.area GSINIT5 (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area CSEG    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; interrupt vector 
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
      000000                        298 __interrupt_vect:
      000000 02 00 69         [24]  299 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  300 	reti
      000004                        301 	.ds	7
      00000B 32               [24]  302 	reti
      00000C                        303 	.ds	7
      000013 32               [24]  304 	reti
      000014                        305 	.ds	7
      00001B 32               [24]  306 	reti
      00001C                        307 	.ds	7
      000023 32               [24]  308 	reti
      000024                        309 	.ds	7
      00002B 32               [24]  310 	reti
      00002C                        311 	.ds	7
      000033 32               [24]  312 	reti
      000034                        313 	.ds	7
      00003B 32               [24]  314 	reti
      00003C                        315 	.ds	7
      000043 32               [24]  316 	reti
      000044                        317 	.ds	7
      00004B 32               [24]  318 	reti
      00004C                        319 	.ds	7
      000053 32               [24]  320 	reti
      000054                        321 	.ds	7
      00005B 02 0B DC         [24]  322 	ljmp	_usbWuIsr
      00005E                        323 	.ds	5
      000063 02 0B DD         [24]  324 	ljmp	_usbIsr
                                    325 ;--------------------------------------------------------
                                    326 ; global & static initialisations
                                    327 ;--------------------------------------------------------
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT  (CODE)
                                    330 	.area GSFINAL (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.globl __sdcc_gsinit_startup
                                    333 	.globl __sdcc_program_startup
                                    334 	.globl __start__stack
                                    335 	.globl __mcs51_genXINIT
                                    336 	.globl __mcs51_genXRAMCLEAR
                                    337 	.globl __mcs51_genRAMCLEAR
                                    338 ;	src/main.c:62: static bool contCarrier=false;
      0000C2 C2 00            [12]  339 	clr	_contCarrier
                                    340 ;	src/main.c:63: static bool needAck = true;
      0000C4 D2 01            [12]  341 	setb	_needAck
                                    342 ;	src/main.c:64: static bool udpMode = false;
      0000C6 C2 02            [12]  343 	clr	_udpMode
                                    344 	.area GSFINAL (CODE)
      0000CC 02 00 66         [24]  345 	ljmp	__sdcc_program_startup
                                    346 ;--------------------------------------------------------
                                    347 ; Home
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
                                    350 	.area HOME    (CODE)
      000066                        351 __sdcc_program_startup:
      000066 02 00 CF         [24]  352 	ljmp	_main
                                    353 ;	return from main will return to caller
                                    354 ;--------------------------------------------------------
                                    355 ; code
                                    356 ;--------------------------------------------------------
                                    357 	.area CSEG    (CODE)
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'main'
                                    360 ;------------------------------------------------------------
                                    361 ;status                    Allocated with name '_main_status_1_45'
                                    362 ;leds                      Allocated with name '_main_leds_1_45'
                                    363 ;tlen                      Allocated with name '_main_tlen_1_45'
                                    364 ;rlen                      Allocated with name '_main_rlen_1_45'
                                    365 ;ack                       Allocated with name '_main_ack_1_45'
                                    366 ;------------------------------------------------------------
                                    367 ;	src/main.c:66: void main()
                                    368 ;	-----------------------------------------
                                    369 ;	 function main
                                    370 ;	-----------------------------------------
      0000CF                        371 _main:
                           000007   372 	ar7 = 0x07
                           000006   373 	ar6 = 0x06
                           000005   374 	ar5 = 0x05
                           000004   375 	ar4 = 0x04
                           000003   376 	ar3 = 0x03
                           000002   377 	ar2 = 0x02
                           000001   378 	ar1 = 0x01
                           000000   379 	ar0 = 0x00
                                    380 ;	src/main.c:82: initId();
      0000CF 12 14 FC         [24]  381 	lcall	_initId
                                    382 ;	src/main.c:85: ledInit(CR_LED_RED, CR_LED_GREEN);
      0000D2 90 80 7B         [24]  383 	mov	dptr,#_ledInit_PARM_2
      0000D5 74 04            [12]  384 	mov	a,#0x04
      0000D7 F0               [24]  385 	movx	@dptr,a
      0000D8 75 82 02         [24]  386 	mov	dpl,#0x02
      0000DB 12 14 53         [24]  387 	lcall	_ledInit
                                    388 ;	src/main.c:89: ledSet(LED_GREEN | LED_RED, true);
      0000DE D2 06            [12]  389 	setb	_ledSet_PARM_2
      0000E0 75 82 03         [24]  390 	mov	dpl,#0x03
      0000E3 12 14 8E         [24]  391 	lcall	_ledSet
                                    392 ;	src/main.c:97: radioInit();
      0000E6 12 06 05         [24]  393 	lcall	_radioInit
                                    394 ;	src/main.c:103: usbInit();
      0000E9 12 0B 3D         [24]  395 	lcall	_usbInit
                                    396 ;	src/main.c:106: IEN0 |= 0x80;
      0000EC 43 A8 80         [24]  397 	orl	_IEN0,#0x80
                                    398 ;	src/main.c:109: while (usbGetState() != ADDRESS);
      0000EF                        399 00106$:
      0000EF 12 0B D5         [24]  400 	lcall	_usbGetState
      0000F2 AF 82            [24]  401 	mov	r7,dpl
      0000F4 BF 02 F8         [24]  402 	cjne	r7,#0x02,00106$
                                    403 ;	src/main.c:112: ledSet(LED_GREEN | LED_RED, false);
      0000F7 C2 06            [12]  404 	clr	_ledSet_PARM_2
      0000F9 75 82 03         [24]  405 	mov	dpl,#0x03
      0000FC 12 14 8E         [24]  406 	lcall	_ledSet
                                    407 ;	src/main.c:115: while (usbGetState() != CONFIGURED);
      0000FF                        408 00109$:
      0000FF 12 0B D5         [24]  409 	lcall	_usbGetState
      000102 AF 82            [24]  410 	mov	r7,dpl
      000104 BF 03 F8         [24]  411 	cjne	r7,#0x03,00109$
                                    412 ;	src/main.c:118: OUT1BC=0xFF;
      000107 90 C7 C7         [24]  413 	mov	dptr,#0xC7C7
      00010A 74 FF            [12]  414 	mov	a,#0xFF
      00010C F0               [24]  415 	movx	@dptr,a
                                    416 ;	src/main.c:120: while(1)
      00010D                        417 00132$:
                                    418 ;	src/main.c:124: if (!(OUT1CS&EPBSY) && !contCarrier)
      00010D 90 C7 C6         [24]  419 	mov	dptr,#0xC7C6
      000110 E0               [24]  420 	movx	a,@dptr
      000111 FF               [12]  421 	mov	r7,a
      000112 30 E1 03         [24]  422 	jnb	acc.1,00189$
      000115 02 02 79         [24]  423 	ljmp	00127$
      000118                        424 00189$:
      000118 30 00 03         [24]  425 	jnb	_contCarrier,00190$
      00011B 02 02 79         [24]  426 	ljmp	00127$
      00011E                        427 00190$:
                                    428 ;	src/main.c:128: IN1CS = 0x02;
      00011E 90 C7 B6         [24]  429 	mov	dptr,#0xC7B6
      000121 74 02            [12]  430 	mov	a,#0x02
      000123 F0               [24]  431 	movx	@dptr,a
                                    432 ;	src/main.c:131: tlen = OUT1BC;
      000124 90 C7 C7         [24]  433 	mov	dptr,#0xC7C7
      000127 E0               [24]  434 	movx	a,@dptr
      000128 FF               [12]  435 	mov	r7,a
      000129 90 80 43         [24]  436 	mov	dptr,#_main_tlen_1_45
      00012C F0               [24]  437 	movx	@dptr,a
                                    438 ;	src/main.c:132: if (tlen>32) tlen=32;
      00012D C3               [12]  439 	clr	c
      00012E 74 A0            [12]  440 	mov	a,#(0x20 ^ 0x80)
      000130 8F F0            [24]  441 	mov	b,r7
      000132 63 F0 80         [24]  442 	xrl	b,#0x80
      000135 95 F0            [12]  443 	subb	a,b
      000137 50 06            [24]  444 	jnc	00113$
      000139 90 80 43         [24]  445 	mov	dptr,#_main_tlen_1_45
      00013C 74 20            [12]  446 	mov	a,#0x20
      00013E F0               [24]  447 	movx	@dptr,a
      00013F                        448 00113$:
                                    449 ;	src/main.c:135: memcpy(tbuffer, OUT1BUF, tlen);
      00013F 90 80 43         [24]  450 	mov	dptr,#_main_tlen_1_45
      000142 E0               [24]  451 	movx	a,@dptr
      000143 FF               [12]  452 	mov	r7,a
      000144 FD               [12]  453 	mov	r5,a
      000145 33               [12]  454 	rlc	a
      000146 95 E0            [12]  455 	subb	a,acc
      000148 FE               [12]  456 	mov	r6,a
      000149 90 80 85         [24]  457 	mov	dptr,#_memcpy_PARM_2
      00014C 74 40            [12]  458 	mov	a,#_OUT1BUF
      00014E F0               [24]  459 	movx	@dptr,a
      00014F 74 C6            [12]  460 	mov	a,#(_OUT1BUF >> 8)
      000151 A3               [24]  461 	inc	dptr
      000152 F0               [24]  462 	movx	@dptr,a
      000153 E4               [12]  463 	clr	a
      000154 A3               [24]  464 	inc	dptr
      000155 F0               [24]  465 	movx	@dptr,a
      000156 90 80 88         [24]  466 	mov	dptr,#_memcpy_PARM_3
      000159 ED               [12]  467 	mov	a,r5
      00015A F0               [24]  468 	movx	@dptr,a
      00015B EE               [12]  469 	mov	a,r6
      00015C A3               [24]  470 	inc	dptr
      00015D F0               [24]  471 	movx	@dptr,a
      00015E 90 80 00         [24]  472 	mov	dptr,#_tbuffer
      000161 75 F0 00         [24]  473 	mov	b,#0x00
      000164 C0 07            [24]  474 	push	ar7
      000166 12 15 3A         [24]  475 	lcall	_memcpy
      000169 D0 07            [24]  476 	pop	ar7
                                    477 ;	src/main.c:136: if (needAck)
      00016B 20 01 03         [24]  478 	jb	_needAck,00192$
      00016E 02 02 4F         [24]  479 	ljmp	00124$
      000171                        480 00192$:
                                    481 ;	src/main.c:138: status = radioSendPacket(tbuffer, tlen, rbuffer, &rlen);
      000171 90 80 58         [24]  482 	mov	dptr,#_radioSendPacket_PARM_2
      000174 EF               [12]  483 	mov	a,r7
      000175 F0               [24]  484 	movx	@dptr,a
      000176 90 80 59         [24]  485 	mov	dptr,#_radioSendPacket_PARM_3
      000179 74 21            [12]  486 	mov	a,#_rbuffer
      00017B F0               [24]  487 	movx	@dptr,a
      00017C 74 80            [12]  488 	mov	a,#(_rbuffer >> 8)
      00017E A3               [24]  489 	inc	dptr
      00017F F0               [24]  490 	movx	@dptr,a
      000180 90 80 5B         [24]  491 	mov	dptr,#_radioSendPacket_PARM_4
      000183 74 44            [12]  492 	mov	a,#_main_rlen_1_45
      000185 F0               [24]  493 	movx	@dptr,a
      000186 74 80            [12]  494 	mov	a,#(_main_rlen_1_45 >> 8)
      000188 A3               [24]  495 	inc	dptr
      000189 F0               [24]  496 	movx	@dptr,a
      00018A E4               [12]  497 	clr	a
      00018B A3               [24]  498 	inc	dptr
      00018C F0               [24]  499 	movx	@dptr,a
      00018D 90 80 00         [24]  500 	mov	dptr,#_tbuffer
      000190 12 08 7D         [24]  501 	lcall	_radioSendPacket
      000193 AE 82            [24]  502 	mov	r6,dpl
                                    503 ;	src/main.c:143: ledTimeout = 2;
      000195 90 80 7E         [24]  504 	mov	dptr,#_ledTimeout
      000198 74 02            [12]  505 	mov	a,#0x02
      00019A F0               [24]  506 	movx	@dptr,a
      00019B E4               [12]  507 	clr	a
      00019C A3               [24]  508 	inc	dptr
      00019D F0               [24]  509 	movx	@dptr,a
                                    510 ;	src/main.c:144: ledSet(LED_GREEN | LED_RED, false);
      00019E C2 06            [12]  511 	clr	_ledSet_PARM_2
      0001A0 75 82 03         [24]  512 	mov	dpl,#0x03
      0001A3 C0 06            [24]  513 	push	ar6
      0001A5 12 14 8E         [24]  514 	lcall	_ledSet
      0001A8 D0 06            [24]  515 	pop	ar6
                                    516 ;	src/main.c:145: if(status)
      0001AA EE               [12]  517 	mov	a,r6
      0001AB 60 0E            [24]  518 	jz	00115$
                                    519 ;	src/main.c:146: ledSet(LED_GREEN, true);
      0001AD D2 06            [12]  520 	setb	_ledSet_PARM_2
      0001AF 75 82 02         [24]  521 	mov	dpl,#0x02
      0001B2 C0 06            [24]  522 	push	ar6
      0001B4 12 14 8E         [24]  523 	lcall	_ledSet
      0001B7 D0 06            [24]  524 	pop	ar6
      0001B9 80 0C            [24]  525 	sjmp	00116$
      0001BB                        526 00115$:
                                    527 ;	src/main.c:148: ledSet(LED_RED, true);
      0001BB D2 06            [12]  528 	setb	_ledSet_PARM_2
      0001BD 75 82 01         [24]  529 	mov	dpl,#0x01
      0001C0 C0 06            [24]  530 	push	ar6
      0001C2 12 14 8E         [24]  531 	lcall	_ledSet
      0001C5 D0 06            [24]  532 	pop	ar6
      0001C7                        533 00116$:
                                    534 ;	src/main.c:150: OUT1BC=BCDUMMY;
      0001C7 90 C7 C7         [24]  535 	mov	dptr,#0xC7C7
      0001CA 74 01            [12]  536 	mov	a,#0x01
      0001CC F0               [24]  537 	movx	@dptr,a
                                    538 ;	src/main.c:154: ack=status?1:0;
      0001CD EE               [12]  539 	mov	a,r6
      0001CE 60 04            [24]  540 	jz	00136$
      0001D0 7D 01            [12]  541 	mov	r5,#0x01
      0001D2 80 02            [24]  542 	sjmp	00137$
      0001D4                        543 00136$:
      0001D4 7D 00            [12]  544 	mov	r5,#0x00
      0001D6                        545 00137$:
      0001D6 90 80 45         [24]  546 	mov	dptr,#_main_ack_1_45
      0001D9 ED               [12]  547 	mov	a,r5
      0001DA F0               [24]  548 	movx	@dptr,a
                                    549 ;	src/main.c:155: if (ack)
      0001DB ED               [12]  550 	mov	a,r5
      0001DC 60 2B            [24]  551 	jz	00120$
                                    552 ;	src/main.c:157: if (radioGetRpd()) ack |= 0x02;
      0001DE C0 06            [24]  553 	push	ar6
      0001E0 C0 05            [24]  554 	push	ar5
      0001E2 12 0B 2A         [24]  555 	lcall	_radioGetRpd
      0001E5 E5 82            [12]  556 	mov	a,dpl
      0001E7 D0 05            [24]  557 	pop	ar5
      0001E9 D0 06            [24]  558 	pop	ar6
      0001EB 60 07            [24]  559 	jz	00118$
      0001ED 90 80 45         [24]  560 	mov	dptr,#_main_ack_1_45
      0001F0 74 02            [12]  561 	mov	a,#0x02
      0001F2 4D               [12]  562 	orl	a,r5
      0001F3 F0               [24]  563 	movx	@dptr,a
      0001F4                        564 00118$:
                                    565 ;	src/main.c:158: ack |= radioGetTxRetry()<<4;
      0001F4 C0 06            [24]  566 	push	ar6
      0001F6 12 0B 30         [24]  567 	lcall	_radioGetTxRetry
      0001F9 AD 82            [24]  568 	mov	r5,dpl
      0001FB D0 06            [24]  569 	pop	ar6
      0001FD ED               [12]  570 	mov	a,r5
      0001FE C4               [12]  571 	swap	a
      0001FF 54 F0            [12]  572 	anl	a,#0xF0
      000201 FD               [12]  573 	mov	r5,a
      000202 90 80 45         [24]  574 	mov	dptr,#_main_ack_1_45
      000205 E0               [24]  575 	movx	a,@dptr
      000206 FC               [12]  576 	mov	r4,a
      000207 4D               [12]  577 	orl	a,r5
      000208 F0               [24]  578 	movx	@dptr,a
      000209                        579 00120$:
                                    580 ;	src/main.c:160: IN1BUF[0]=ack;
      000209 90 80 45         [24]  581 	mov	dptr,#_main_ack_1_45
      00020C E0               [24]  582 	movx	a,@dptr
      00020D FD               [12]  583 	mov	r5,a
      00020E 90 C6 80         [24]  584 	mov	dptr,#_IN1BUF
      000211 F0               [24]  585 	movx	@dptr,a
                                    586 ;	src/main.c:161: if(!(status&BIT_TX_DS)) rlen=0;
      000212 EE               [12]  587 	mov	a,r6
      000213 20 E5 05         [24]  588 	jb	acc.5,00122$
      000216 90 80 44         [24]  589 	mov	dptr,#_main_rlen_1_45
      000219 E4               [12]  590 	clr	a
      00021A F0               [24]  591 	movx	@dptr,a
      00021B                        592 00122$:
                                    593 ;	src/main.c:162: memcpy(IN1BUF+1, rbuffer, rlen);
      00021B 90 80 44         [24]  594 	mov	dptr,#_main_rlen_1_45
      00021E E0               [24]  595 	movx	a,@dptr
      00021F FE               [12]  596 	mov	r6,a
      000220 33               [12]  597 	rlc	a
      000221 95 E0            [12]  598 	subb	a,acc
      000223 FD               [12]  599 	mov	r5,a
      000224 90 80 85         [24]  600 	mov	dptr,#_memcpy_PARM_2
      000227 74 21            [12]  601 	mov	a,#_rbuffer
      000229 F0               [24]  602 	movx	@dptr,a
      00022A 74 80            [12]  603 	mov	a,#(_rbuffer >> 8)
      00022C A3               [24]  604 	inc	dptr
      00022D F0               [24]  605 	movx	@dptr,a
      00022E E4               [12]  606 	clr	a
      00022F A3               [24]  607 	inc	dptr
      000230 F0               [24]  608 	movx	@dptr,a
      000231 90 80 88         [24]  609 	mov	dptr,#_memcpy_PARM_3
      000234 EE               [12]  610 	mov	a,r6
      000235 F0               [24]  611 	movx	@dptr,a
      000236 ED               [12]  612 	mov	a,r5
      000237 A3               [24]  613 	inc	dptr
      000238 F0               [24]  614 	movx	@dptr,a
      000239 90 C6 81         [24]  615 	mov	dptr,#(_IN1BUF + 0x0001)
      00023C 75 F0 00         [24]  616 	mov	b,#0x00
      00023F 12 15 3A         [24]  617 	lcall	_memcpy
                                    618 ;	src/main.c:164: IN1BC = rlen+1;
      000242 90 80 44         [24]  619 	mov	dptr,#_main_rlen_1_45
      000245 E0               [24]  620 	movx	a,@dptr
      000246 FE               [12]  621 	mov	r6,a
      000247 0E               [12]  622 	inc	r6
      000248 90 C7 B7         [24]  623 	mov	dptr,#0xC7B7
      00024B EE               [12]  624 	mov	a,r6
      00024C F0               [24]  625 	movx	@dptr,a
      00024D 80 2A            [24]  626 	sjmp	00127$
      00024F                        627 00124$:
                                    628 ;	src/main.c:168: radioSendPacketNoAck(tbuffer, tlen);
      00024F 90 80 60         [24]  629 	mov	dptr,#_radioSendPacketNoAck_PARM_2
      000252 EF               [12]  630 	mov	a,r7
      000253 F0               [24]  631 	movx	@dptr,a
      000254 90 80 00         [24]  632 	mov	dptr,#_tbuffer
      000257 12 09 24         [24]  633 	lcall	_radioSendPacketNoAck
                                    634 ;	src/main.c:170: ledTimeout = 2;
      00025A 90 80 7E         [24]  635 	mov	dptr,#_ledTimeout
      00025D 74 02            [12]  636 	mov	a,#0x02
      00025F F0               [24]  637 	movx	@dptr,a
      000260 E4               [12]  638 	clr	a
      000261 A3               [24]  639 	inc	dptr
      000262 F0               [24]  640 	movx	@dptr,a
                                    641 ;	src/main.c:171: ledSet(LED_GREEN | LED_RED, false);
      000263 C2 06            [12]  642 	clr	_ledSet_PARM_2
      000265 75 82 03         [24]  643 	mov	dpl,#0x03
      000268 12 14 8E         [24]  644 	lcall	_ledSet
                                    645 ;	src/main.c:172: ledSet(LED_GREEN, true);
      00026B D2 06            [12]  646 	setb	_ledSet_PARM_2
      00026D 75 82 02         [24]  647 	mov	dpl,#0x02
      000270 12 14 8E         [24]  648 	lcall	_ledSet
                                    649 ;	src/main.c:175: OUT1BC=BCDUMMY;
      000273 90 C7 C7         [24]  650 	mov	dptr,#0xC7C7
      000276 74 01            [12]  651 	mov	a,#0x01
      000278 F0               [24]  652 	movx	@dptr,a
      000279                        653 00127$:
                                    654 ;	src/main.c:180: if(usbIsVendorSetup())
      000279 12 14 38         [24]  655 	lcall	_usbIsVendorSetup
      00027C 40 03            [24]  656 	jc	00198$
      00027E 02 01 0D         [24]  657 	ljmp	00132$
      000281                        658 00198$:
                                    659 ;	src/main.c:181: handleUsbVendorSetup();
      000281 12 02 87         [24]  660 	lcall	_handleUsbVendorSetup
      000284 02 01 0D         [24]  661 	ljmp	00132$
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'handleUsbVendorSetup'
                                    664 ;------------------------------------------------------------
                                    665 ;sloc0                     Allocated with name '_handleUsbVendorSetup_sloc0_1_0'
                                    666 ;sloc1                     Allocated with name '_handleUsbVendorSetup_sloc1_1_0'
                                    667 ;setup                     Allocated with name '_handleUsbVendorSetup_setup_1_54'
                                    668 ;i                         Allocated with name '_handleUsbVendorSetup_i_3_66'
                                    669 ;rlen                      Allocated with name '_handleUsbVendorSetup_rlen_3_66'
                                    670 ;status                    Allocated with name '_handleUsbVendorSetup_status_3_66'
                                    671 ;inc                       Allocated with name '_handleUsbVendorSetup_inc_3_66'
                                    672 ;start                     Allocated with name '_handleUsbVendorSetup_start_3_66'
                                    673 ;stop                      Allocated with name '_handleUsbVendorSetup_stop_3_66'
                                    674 ;------------------------------------------------------------
                                    675 ;	src/main.c:186: void handleUsbVendorSetup()
                                    676 ;	-----------------------------------------
                                    677 ;	 function handleUsbVendorSetup
                                    678 ;	-----------------------------------------
      000287                        679 _handleUsbVendorSetup:
                                    680 ;	src/main.c:188: __xdata struct controllStruct *setup = usbGetSetupPacket();
      000287 12 14 41         [24]  681 	lcall	_usbGetSetupPacket
      00028A AE 82            [24]  682 	mov	r6,dpl
      00028C AF 83            [24]  683 	mov	r7,dph
                                    684 ;	src/main.c:191: if (usbGetState() >= CONFIGURED)
      00028E C0 07            [24]  685 	push	ar7
      000290 C0 06            [24]  686 	push	ar6
      000292 12 0B D5         [24]  687 	lcall	_usbGetState
      000295 AD 82            [24]  688 	mov	r5,dpl
      000297 D0 06            [24]  689 	pop	ar6
      000299 D0 07            [24]  690 	pop	ar7
      00029B BD 03 00         [24]  691 	cjne	r5,#0x03,00258$
      00029E                        692 00258$:
      00029E 50 03            [24]  693 	jnc	00259$
      0002A0 02 05 DC         [24]  694 	ljmp	00157$
      0002A3                        695 00259$:
                                    696 ;	src/main.c:193: if(setup->request == LAUNCH_BOOTLOADER)
      0002A3 8E 82            [24]  697 	mov	dpl,r6
      0002A5 8F 83            [24]  698 	mov	dph,r7
      0002A7 A3               [24]  699 	inc	dptr
      0002A8 E0               [24]  700 	movx	a,@dptr
      0002A9 FD               [12]  701 	mov	r5,a
      0002AA BD FF 06         [24]  702 	cjne	r5,#0xFF,00154$
                                    703 ;	src/main.c:196: usbAckSetup();
      0002AD 12 14 45         [24]  704 	lcall	_usbAckSetup
                                    705 ;	src/main.c:198: launchBootloader();
                                    706 ;	src/main.c:201: return;
      0002B0 02 05 DF         [24]  707 	ljmp	_launchBootloader
      0002B3                        708 00154$:
                                    709 ;	src/main.c:203: else if(setup->request == SET_RADIO_CHANNEL)
      0002B3 BD 01 12         [24]  710 	cjne	r5,#0x01,00151$
                                    711 ;	src/main.c:205: radioSetChannel(setup->value);
      0002B6 8E 82            [24]  712 	mov	dpl,r6
      0002B8 8F 83            [24]  713 	mov	dph,r7
      0002BA A3               [24]  714 	inc	dptr
      0002BB A3               [24]  715 	inc	dptr
      0002BC E0               [24]  716 	movx	a,@dptr
      0002BD FB               [12]  717 	mov	r3,a
      0002BE A3               [24]  718 	inc	dptr
      0002BF E0               [24]  719 	movx	a,@dptr
      0002C0 8B 82            [24]  720 	mov	dpl,r3
      0002C2 12 0A 00         [24]  721 	lcall	_radioSetChannel
                                    722 ;	src/main.c:207: usbAckSetup();
                                    723 ;	src/main.c:208: return;
      0002C5 02 14 45         [24]  724 	ljmp	_usbAckSetup
      0002C8                        725 00151$:
                                    726 ;	src/main.c:210: else if(setup->request == SET_DATA_RATE)
      0002C8 BD 03 12         [24]  727 	cjne	r5,#0x03,00148$
                                    728 ;	src/main.c:212: radioSetDataRate(setup->value);
      0002CB 8E 82            [24]  729 	mov	dpl,r6
      0002CD 8F 83            [24]  730 	mov	dph,r7
      0002CF A3               [24]  731 	inc	dptr
      0002D0 A3               [24]  732 	inc	dptr
      0002D1 E0               [24]  733 	movx	a,@dptr
      0002D2 FB               [12]  734 	mov	r3,a
      0002D3 A3               [24]  735 	inc	dptr
      0002D4 E0               [24]  736 	movx	a,@dptr
      0002D5 8B 82            [24]  737 	mov	dpl,r3
      0002D7 12 0A 2E         [24]  738 	lcall	_radioSetDataRate
                                    739 ;	src/main.c:214: usbAckSetup();
                                    740 ;	src/main.c:215: return;
      0002DA 02 14 45         [24]  741 	ljmp	_usbAckSetup
      0002DD                        742 00148$:
                                    743 ;	src/main.c:217: else if(setup->request == SET_RADIO_ADDRESS)
      0002DD BD 02 30         [24]  744 	cjne	r5,#0x02,00145$
                                    745 ;	src/main.c:219: if(setup->length != 5)
      0002E0 74 06            [12]  746 	mov	a,#0x06
      0002E2 2E               [12]  747 	add	a,r6
      0002E3 F5 82            [12]  748 	mov	dpl,a
      0002E5 E4               [12]  749 	clr	a
      0002E6 3F               [12]  750 	addc	a,r7
      0002E7 F5 83            [12]  751 	mov	dph,a
      0002E9 E0               [24]  752 	movx	a,@dptr
      0002EA FB               [12]  753 	mov	r3,a
      0002EB A3               [24]  754 	inc	dptr
      0002EC E0               [24]  755 	movx	a,@dptr
      0002ED FC               [12]  756 	mov	r4,a
      0002EE BB 05 05         [24]  757 	cjne	r3,#0x05,00268$
      0002F1 BC 00 02         [24]  758 	cjne	r4,#0x00,00268$
      0002F4 80 03            [24]  759 	sjmp	00102$
      0002F6                        760 00268$:
                                    761 ;	src/main.c:221: usbDismissSetup();
                                    762 ;	src/main.c:222: return;
      0002F6 02 14 4C         [24]  763 	ljmp	_usbDismissSetup
      0002F9                        764 00102$:
                                    765 ;	src/main.c:226: OUT0BC = BCDUMMY;
      0002F9 90 C7 C5         [24]  766 	mov	dptr,#0xC7C5
      0002FC 74 01            [12]  767 	mov	a,#0x01
      0002FE F0               [24]  768 	movx	@dptr,a
                                    769 ;	src/main.c:227: while (EP0CS & OUTBSY);
      0002FF                        770 00103$:
      0002FF 90 C7 B4         [24]  771 	mov	dptr,#0xC7B4
      000302 E0               [24]  772 	movx	a,@dptr
      000303 FC               [12]  773 	mov	r4,a
      000304 20 E3 F8         [24]  774 	jb	acc.3,00103$
                                    775 ;	src/main.c:230: radioSetAddress(OUT0BUF);
      000307 90 C6 C0         [24]  776 	mov	dptr,#_OUT0BUF
      00030A 12 0A 96         [24]  777 	lcall	_radioSetAddress
                                    778 ;	src/main.c:233: usbAckSetup();
                                    779 ;	src/main.c:234: return;
      00030D 02 14 45         [24]  780 	ljmp	_usbAckSetup
      000310                        781 00145$:
                                    782 ;	src/main.c:236: else if(setup->request == SET_RADIO_POWER)
      000310 BD 04 12         [24]  783 	cjne	r5,#0x04,00142$
                                    784 ;	src/main.c:238: radioSetPower(setup->value);
      000313 8E 82            [24]  785 	mov	dpl,r6
      000315 8F 83            [24]  786 	mov	dph,r7
      000317 A3               [24]  787 	inc	dptr
      000318 A3               [24]  788 	inc	dptr
      000319 E0               [24]  789 	movx	a,@dptr
      00031A FB               [12]  790 	mov	r3,a
      00031B A3               [24]  791 	inc	dptr
      00031C E0               [24]  792 	movx	a,@dptr
      00031D 8B 82            [24]  793 	mov	dpl,r3
      00031F 12 0A 4E         [24]  794 	lcall	_radioSetPower
                                    795 ;	src/main.c:240: usbAckSetup();
                                    796 ;	src/main.c:241: return;
      000322 02 14 45         [24]  797 	ljmp	_usbAckSetup
      000325                        798 00142$:
                                    799 ;	src/main.c:243: else if(setup->request == SET_RADIO_ARD)
      000325 BD 05 12         [24]  800 	cjne	r5,#0x05,00139$
                                    801 ;	src/main.c:245: radioSetArd(setup->value);
      000328 8E 82            [24]  802 	mov	dpl,r6
      00032A 8F 83            [24]  803 	mov	dph,r7
      00032C A3               [24]  804 	inc	dptr
      00032D A3               [24]  805 	inc	dptr
      00032E E0               [24]  806 	movx	a,@dptr
      00032F FB               [12]  807 	mov	r3,a
      000330 A3               [24]  808 	inc	dptr
      000331 E0               [24]  809 	movx	a,@dptr
      000332 8B 82            [24]  810 	mov	dpl,r3
      000334 12 0A 61         [24]  811 	lcall	_radioSetArd
                                    812 ;	src/main.c:247: usbAckSetup();
                                    813 ;	src/main.c:248: return;
      000337 02 14 45         [24]  814 	ljmp	_usbAckSetup
      00033A                        815 00139$:
                                    816 ;	src/main.c:250: else if(setup->request == SET_RADIO_ARC)
      00033A BD 06 12         [24]  817 	cjne	r5,#0x06,00136$
                                    818 ;	src/main.c:252: radioSetArc(setup->value);
      00033D 8E 82            [24]  819 	mov	dpl,r6
      00033F 8F 83            [24]  820 	mov	dph,r7
      000341 A3               [24]  821 	inc	dptr
      000342 A3               [24]  822 	inc	dptr
      000343 E0               [24]  823 	movx	a,@dptr
      000344 FB               [12]  824 	mov	r3,a
      000345 A3               [24]  825 	inc	dptr
      000346 E0               [24]  826 	movx	a,@dptr
      000347 8B 82            [24]  827 	mov	dpl,r3
      000349 12 0A 6F         [24]  828 	lcall	_radioSetArc
                                    829 ;	src/main.c:254: usbAckSetup();
                                    830 ;	src/main.c:255: return;
      00034C 02 14 45         [24]  831 	ljmp	_usbAckSetup
      00034F                        832 00136$:
                                    833 ;	src/main.c:257: else if(setup->request == SET_CONT_CARRIER)
      00034F BD 20 4A         [24]  834 	cjne	r5,#0x20,00133$
                                    835 ;	src/main.c:259: radioSetContCarrier((setup->value)?true:false);
      000352 74 02            [12]  836 	mov	a,#0x02
      000354 2E               [12]  837 	add	a,r6
      000355 FB               [12]  838 	mov	r3,a
      000356 E4               [12]  839 	clr	a
      000357 3F               [12]  840 	addc	a,r7
      000358 FC               [12]  841 	mov	r4,a
      000359 8B 82            [24]  842 	mov	dpl,r3
      00035B 8C 83            [24]  843 	mov	dph,r4
      00035D E0               [24]  844 	movx	a,@dptr
      00035E F9               [12]  845 	mov	r1,a
      00035F A3               [24]  846 	inc	dptr
      000360 E0               [24]  847 	movx	a,@dptr
      000361 49               [12]  848 	orl	a,r1
      000362 24 FF            [12]  849 	add	a,#0xff
      000364 92 03            [24]  850 	mov	_radioSetContCarrier_PARM_1,c
      000366 C0 04            [24]  851 	push	ar4
      000368 C0 03            [24]  852 	push	ar3
      00036A 12 0A 7D         [24]  853 	lcall	_radioSetContCarrier
      00036D D0 03            [24]  854 	pop	ar3
      00036F D0 04            [24]  855 	pop	ar4
                                    856 ;	src/main.c:260: contCarrier = (setup->value)?true:false;
      000371 8B 82            [24]  857 	mov	dpl,r3
      000373 8C 83            [24]  858 	mov	dph,r4
      000375 E0               [24]  859 	movx	a,@dptr
      000376 F9               [12]  860 	mov	r1,a
      000377 A3               [24]  861 	inc	dptr
      000378 E0               [24]  862 	movx	a,@dptr
      000379 49               [12]  863 	orl	a,r1
      00037A 24 FF            [12]  864 	add	a,#0xff
      00037C 92 00            [24]  865 	mov	_contCarrier,c
                                    866 ;	src/main.c:262: ledTimeout = -1;
      00037E 90 80 7E         [24]  867 	mov	dptr,#_ledTimeout
      000381 74 FF            [12]  868 	mov	a,#0xFF
      000383 F0               [24]  869 	movx	@dptr,a
      000384 A3               [24]  870 	inc	dptr
      000385 F0               [24]  871 	movx	@dptr,a
                                    872 ;	src/main.c:263: ledSet(LED_RED, (setup->value)?true:false);
      000386 8B 82            [24]  873 	mov	dpl,r3
      000388 8C 83            [24]  874 	mov	dph,r4
      00038A E0               [24]  875 	movx	a,@dptr
      00038B FB               [12]  876 	mov	r3,a
      00038C A3               [24]  877 	inc	dptr
      00038D E0               [24]  878 	movx	a,@dptr
      00038E 4B               [12]  879 	orl	a,r3
      00038F 24 FF            [12]  880 	add	a,#0xff
      000391 92 06            [24]  881 	mov	_ledSet_PARM_2,c
      000393 75 82 01         [24]  882 	mov	dpl,#0x01
      000396 12 14 8E         [24]  883 	lcall	_ledSet
                                    884 ;	src/main.c:265: usbAckSetup();
                                    885 ;	src/main.c:266: return;
      000399 02 14 45         [24]  886 	ljmp	_usbAckSetup
      00039C                        887 00133$:
                                    888 ;	src/main.c:268: else if(setup->request == ACK_ENABLE)
      00039C BD 10 12         [24]  889 	cjne	r5,#0x10,00130$
                                    890 ;	src/main.c:270: needAck = (setup->value)?true:false;
      00039F 8E 82            [24]  891 	mov	dpl,r6
      0003A1 8F 83            [24]  892 	mov	dph,r7
      0003A3 A3               [24]  893 	inc	dptr
      0003A4 A3               [24]  894 	inc	dptr
      0003A5 E0               [24]  895 	movx	a,@dptr
      0003A6 FB               [12]  896 	mov	r3,a
      0003A7 A3               [24]  897 	inc	dptr
      0003A8 E0               [24]  898 	movx	a,@dptr
      0003A9 4B               [12]  899 	orl	a,r3
      0003AA 24 FF            [12]  900 	add	a,#0xff
      0003AC 92 01            [24]  901 	mov	_needAck,c
                                    902 ;	src/main.c:272: usbAckSetup();
                                    903 ;	src/main.c:273: return;
      0003AE 02 14 45         [24]  904 	ljmp	_usbAckSetup
      0003B1                        905 00130$:
                                    906 ;	src/main.c:275: else if(setup->request == CHANNEL_SCANN && setup->requestType == 0x40)
      0003B1 E4               [12]  907 	clr	a
      0003B2 BD 21 01         [24]  908 	cjne	r5,#0x21,00280$
      0003B5 04               [12]  909 	inc	a
      0003B6                        910 00280$:
      0003B6 FD               [12]  911 	mov	r5,a
      0003B7 70 03            [24]  912 	jnz	00282$
      0003B9 02 05 9C         [24]  913 	ljmp	00126$
      0003BC                        914 00282$:
      0003BC 8E 82            [24]  915 	mov	dpl,r6
      0003BE 8F 83            [24]  916 	mov	dph,r7
      0003C0 E0               [24]  917 	movx	a,@dptr
      0003C1 FC               [12]  918 	mov	r4,a
      0003C2 BC 40 02         [24]  919 	cjne	r4,#0x40,00283$
      0003C5 80 03            [24]  920 	sjmp	00284$
      0003C7                        921 00283$:
      0003C7 02 05 9C         [24]  922 	ljmp	00126$
      0003CA                        923 00284$:
                                    924 ;	src/main.c:280: char inc = 1;
      0003CA 90 80 49         [24]  925 	mov	dptr,#_handleUsbVendorSetup_inc_3_66
      0003CD 74 01            [12]  926 	mov	a,#0x01
      0003CF F0               [24]  927 	movx	@dptr,a
                                    928 ;	src/main.c:282: scannLength = 0;
      0003D0 90 80 42         [24]  929 	mov	dptr,#_scannLength
      0003D3 E4               [12]  930 	clr	a
      0003D4 F0               [24]  931 	movx	@dptr,a
                                    932 ;	src/main.c:284: if(setup->length < 1)
      0003D5 74 06            [12]  933 	mov	a,#0x06
      0003D7 2E               [12]  934 	add	a,r6
      0003D8 FB               [12]  935 	mov	r3,a
      0003D9 E4               [12]  936 	clr	a
      0003DA 3F               [12]  937 	addc	a,r7
      0003DB FC               [12]  938 	mov	r4,a
      0003DC 8B 82            [24]  939 	mov	dpl,r3
      0003DE 8C 83            [24]  940 	mov	dph,r4
      0003E0 E0               [24]  941 	movx	a,@dptr
      0003E1 F9               [12]  942 	mov	r1,a
      0003E2 A3               [24]  943 	inc	dptr
      0003E3 E0               [24]  944 	movx	a,@dptr
      0003E4 FA               [12]  945 	mov	r2,a
      0003E5 C3               [12]  946 	clr	c
      0003E6 E9               [12]  947 	mov	a,r1
      0003E7 94 01            [12]  948 	subb	a,#0x01
      0003E9 EA               [12]  949 	mov	a,r2
      0003EA 94 00            [12]  950 	subb	a,#0x00
      0003EC 50 03            [24]  951 	jnc	00107$
                                    952 ;	src/main.c:286: usbDismissSetup();
                                    953 ;	src/main.c:287: return;
      0003EE 02 14 4C         [24]  954 	ljmp	_usbDismissSetup
      0003F1                        955 00107$:
                                    956 ;	src/main.c:291: start = setup->value;
      0003F1 8E 82            [24]  957 	mov	dpl,r6
      0003F3 8F 83            [24]  958 	mov	dph,r7
      0003F5 A3               [24]  959 	inc	dptr
      0003F6 A3               [24]  960 	inc	dptr
      0003F7 E0               [24]  961 	movx	a,@dptr
      0003F8 F9               [12]  962 	mov	r1,a
      0003F9 A3               [24]  963 	inc	dptr
      0003FA E0               [24]  964 	movx	a,@dptr
                                    965 ;	src/main.c:292: stop = (setup->index>125)?125:setup->index;
      0003FB 8E 82            [24]  966 	mov	dpl,r6
      0003FD 8F 83            [24]  967 	mov	dph,r7
      0003FF A3               [24]  968 	inc	dptr
      000400 A3               [24]  969 	inc	dptr
      000401 A3               [24]  970 	inc	dptr
      000402 A3               [24]  971 	inc	dptr
      000403 E0               [24]  972 	movx	a,@dptr
      000404 F8               [12]  973 	mov	r0,a
      000405 A3               [24]  974 	inc	dptr
      000406 E0               [24]  975 	movx	a,@dptr
      000407 FA               [12]  976 	mov	r2,a
      000408 C3               [12]  977 	clr	c
      000409 74 7D            [12]  978 	mov	a,#0x7D
      00040B 98               [12]  979 	subb	a,r0
      00040C E4               [12]  980 	clr	a
      00040D 9A               [12]  981 	subb	a,r2
      00040E 50 08            [24]  982 	jnc	00164$
      000410 75 10 7D         [24]  983 	mov	_handleUsbVendorSetup_sloc0_1_0,#0x7D
      000413 75 11 00         [24]  984 	mov	(_handleUsbVendorSetup_sloc0_1_0 + 1),#0x00
      000416 80 04            [24]  985 	sjmp	00165$
      000418                        986 00164$:
      000418 88 10            [24]  987 	mov	_handleUsbVendorSetup_sloc0_1_0,r0
      00041A 8A 11            [24]  988 	mov	(_handleUsbVendorSetup_sloc0_1_0 + 1),r2
      00041C                        989 00165$:
      00041C AA 10            [24]  990 	mov	r2,_handleUsbVendorSetup_sloc0_1_0
                                    991 ;	src/main.c:294: if (radioGetDataRate() == DATA_RATE_2M)
      00041E C0 04            [24]  992 	push	ar4
      000420 C0 03            [24]  993 	push	ar3
      000422 C0 02            [24]  994 	push	ar2
      000424 C0 01            [24]  995 	push	ar1
      000426 12 0A 47         [24]  996 	lcall	_radioGetDataRate
      000429 A8 82            [24]  997 	mov	r0,dpl
      00042B D0 01            [24]  998 	pop	ar1
      00042D D0 02            [24]  999 	pop	ar2
      00042F D0 03            [24] 1000 	pop	ar3
      000431 D0 04            [24] 1001 	pop	ar4
      000433 B8 02 06         [24] 1002 	cjne	r0,#0x02,00109$
                                   1003 ;	src/main.c:295: inc = 2; //2M channel are 2MHz wide
      000436 90 80 49         [24] 1004 	mov	dptr,#_handleUsbVendorSetup_inc_3_66
      000439 74 02            [12] 1005 	mov	a,#0x02
      00043B F0               [24] 1006 	movx	@dptr,a
      00043C                       1007 00109$:
                                   1008 ;	src/main.c:298: OUT0BC = BCDUMMY;
      00043C 90 C7 C5         [24] 1009 	mov	dptr,#0xC7C5
      00043F 74 01            [12] 1010 	mov	a,#0x01
      000441 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	src/main.c:299: while (EP0CS & OUTBSY);
      000442                       1013 00110$:
      000442 90 C7 B4         [24] 1014 	mov	dptr,#0xC7B4
      000445 E0               [24] 1015 	movx	a,@dptr
      000446 F8               [12] 1016 	mov	r0,a
      000447 20 E3 F8         [24] 1017 	jb	acc.3,00110$
                                   1018 ;	src/main.c:301: memcpy(tbuffer, OUT0BUF, setup->length);
      00044A C0 02            [24] 1019 	push	ar2
      00044C 8B 82            [24] 1020 	mov	dpl,r3
      00044E 8C 83            [24] 1021 	mov	dph,r4
      000450 E0               [24] 1022 	movx	a,@dptr
      000451 F8               [12] 1023 	mov	r0,a
      000452 A3               [24] 1024 	inc	dptr
      000453 E0               [24] 1025 	movx	a,@dptr
      000454 FA               [12] 1026 	mov	r2,a
      000455 90 80 85         [24] 1027 	mov	dptr,#_memcpy_PARM_2
      000458 74 C0            [12] 1028 	mov	a,#_OUT0BUF
      00045A F0               [24] 1029 	movx	@dptr,a
      00045B 74 C6            [12] 1030 	mov	a,#(_OUT0BUF >> 8)
      00045D A3               [24] 1031 	inc	dptr
      00045E F0               [24] 1032 	movx	@dptr,a
      00045F E4               [12] 1033 	clr	a
      000460 A3               [24] 1034 	inc	dptr
      000461 F0               [24] 1035 	movx	@dptr,a
      000462 90 80 88         [24] 1036 	mov	dptr,#_memcpy_PARM_3
      000465 E8               [12] 1037 	mov	a,r0
      000466 F0               [24] 1038 	movx	@dptr,a
      000467 EA               [12] 1039 	mov	a,r2
      000468 A3               [24] 1040 	inc	dptr
      000469 F0               [24] 1041 	movx	@dptr,a
      00046A 90 80 00         [24] 1042 	mov	dptr,#_tbuffer
      00046D 75 F0 00         [24] 1043 	mov	b,#0x00
      000470 C0 04            [24] 1044 	push	ar4
      000472 C0 03            [24] 1045 	push	ar3
      000474 C0 02            [24] 1046 	push	ar2
      000476 C0 01            [24] 1047 	push	ar1
      000478 12 15 3A         [24] 1048 	lcall	_memcpy
      00047B D0 01            [24] 1049 	pop	ar1
      00047D D0 02            [24] 1050 	pop	ar2
      00047F D0 03            [24] 1051 	pop	ar3
      000481 D0 04            [24] 1052 	pop	ar4
                                   1053 ;	src/main.c:302: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
      000483 90 80 46         [24] 1054 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      000486 E9               [12] 1055 	mov	a,r1
      000487 F0               [24] 1056 	movx	@dptr,a
      000488 E4               [12] 1057 	clr	a
      000489 A3               [24] 1058 	inc	dptr
      00048A F0               [24] 1059 	movx	@dptr,a
      00048B 90 80 49         [24] 1060 	mov	dptr,#_handleUsbVendorSetup_inc_3_66
      00048E E0               [24] 1061 	movx	a,@dptr
      00048F F5 10            [12] 1062 	mov	_handleUsbVendorSetup_sloc0_1_0,a
                                   1063 ;	src/main.c:336: usbDismissSetup();
      000491 D0 02            [24] 1064 	pop	ar2
                                   1065 ;	src/main.c:302: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
      000493                       1066 00160$:
      000493 8A 00            [24] 1067 	mov	ar0,r2
      000495 79 00            [12] 1068 	mov	r1,#0x00
      000497 08               [12] 1069 	inc	r0
      000498 B8 00 01         [24] 1070 	cjne	r0,#0x00,00290$
      00049B 09               [12] 1071 	inc	r1
      00049C                       1072 00290$:
      00049C 90 80 46         [24] 1073 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      00049F E0               [24] 1074 	movx	a,@dptr
      0004A0 F5 12            [12] 1075 	mov	_handleUsbVendorSetup_sloc1_1_0,a
      0004A2 A3               [24] 1076 	inc	dptr
      0004A3 E0               [24] 1077 	movx	a,@dptr
      0004A4 F5 13            [12] 1078 	mov	(_handleUsbVendorSetup_sloc1_1_0 + 1),a
      0004A6 C3               [12] 1079 	clr	c
      0004A7 E5 12            [12] 1080 	mov	a,_handleUsbVendorSetup_sloc1_1_0
      0004A9 98               [12] 1081 	subb	a,r0
      0004AA E5 13            [12] 1082 	mov	a,(_handleUsbVendorSetup_sloc1_1_0 + 1)
      0004AC 64 80            [12] 1083 	xrl	a,#0x80
      0004AE 89 F0            [24] 1084 	mov	b,r1
      0004B0 63 F0 80         [24] 1085 	xrl	b,#0x80
      0004B3 95 F0            [12] 1086 	subb	a,b
      0004B5 40 03            [24] 1087 	jc	00291$
      0004B7 02 05 99         [24] 1088 	ljmp	00118$
      0004BA                       1089 00291$:
      0004BA 90 80 42         [24] 1090 	mov	dptr,#_scannLength
      0004BD E0               [24] 1091 	movx	a,@dptr
      0004BE F9               [12] 1092 	mov	r1,a
      0004BF C3               [12] 1093 	clr	c
      0004C0 64 80            [12] 1094 	xrl	a,#0x80
      0004C2 94 BF            [12] 1095 	subb	a,#0xbf
      0004C4 40 03            [24] 1096 	jc	00292$
      0004C6 02 05 99         [24] 1097 	ljmp	00118$
      0004C9                       1098 00292$:
                                   1099 ;	src/main.c:304: radioSetChannel(i);
      0004C9 A9 12            [24] 1100 	mov	r1,_handleUsbVendorSetup_sloc1_1_0
      0004CB 89 82            [24] 1101 	mov	dpl,r1
      0004CD C0 04            [24] 1102 	push	ar4
      0004CF C0 03            [24] 1103 	push	ar3
      0004D1 C0 02            [24] 1104 	push	ar2
      0004D3 12 0A 00         [24] 1105 	lcall	_radioSetChannel
      0004D6 D0 02            [24] 1106 	pop	ar2
      0004D8 D0 03            [24] 1107 	pop	ar3
      0004DA D0 04            [24] 1108 	pop	ar4
                                   1109 ;	src/main.c:305: status = radioSendPacket(tbuffer, setup->length, rbuffer, &rlen);
      0004DC 8B 82            [24] 1110 	mov	dpl,r3
      0004DE 8C 83            [24] 1111 	mov	dph,r4
      0004E0 E0               [24] 1112 	movx	a,@dptr
      0004E1 F8               [12] 1113 	mov	r0,a
      0004E2 A3               [24] 1114 	inc	dptr
      0004E3 E0               [24] 1115 	movx	a,@dptr
      0004E4 90 80 58         [24] 1116 	mov	dptr,#_radioSendPacket_PARM_2
      0004E7 E8               [12] 1117 	mov	a,r0
      0004E8 F0               [24] 1118 	movx	@dptr,a
      0004E9 90 80 59         [24] 1119 	mov	dptr,#_radioSendPacket_PARM_3
      0004EC 74 21            [12] 1120 	mov	a,#_rbuffer
      0004EE F0               [24] 1121 	movx	@dptr,a
      0004EF 74 80            [12] 1122 	mov	a,#(_rbuffer >> 8)
      0004F1 A3               [24] 1123 	inc	dptr
      0004F2 F0               [24] 1124 	movx	@dptr,a
      0004F3 90 80 5B         [24] 1125 	mov	dptr,#_radioSendPacket_PARM_4
      0004F6 74 48            [12] 1126 	mov	a,#_handleUsbVendorSetup_rlen_3_66
      0004F8 F0               [24] 1127 	movx	@dptr,a
      0004F9 74 80            [12] 1128 	mov	a,#(_handleUsbVendorSetup_rlen_3_66 >> 8)
      0004FB A3               [24] 1129 	inc	dptr
      0004FC F0               [24] 1130 	movx	@dptr,a
      0004FD E4               [12] 1131 	clr	a
      0004FE A3               [24] 1132 	inc	dptr
      0004FF F0               [24] 1133 	movx	@dptr,a
      000500 90 80 00         [24] 1134 	mov	dptr,#_tbuffer
      000503 C0 04            [24] 1135 	push	ar4
      000505 C0 03            [24] 1136 	push	ar3
      000507 C0 02            [24] 1137 	push	ar2
      000509 12 08 7D         [24] 1138 	lcall	_radioSendPacket
      00050C A9 82            [24] 1139 	mov	r1,dpl
      00050E D0 02            [24] 1140 	pop	ar2
      000510 D0 03            [24] 1141 	pop	ar3
      000512 D0 04            [24] 1142 	pop	ar4
                                   1143 ;	src/main.c:307: if (status)
      000514 E9               [12] 1144 	mov	a,r1
      000515 60 10            [24] 1145 	jz	00114$
                                   1146 ;	src/main.c:308: IN0BUF[scannLength++] = i;
      000517 90 80 42         [24] 1147 	mov	dptr,#_scannLength
      00051A E0               [24] 1148 	movx	a,@dptr
      00051B F8               [12] 1149 	mov	r0,a
      00051C 04               [12] 1150 	inc	a
      00051D F0               [24] 1151 	movx	@dptr,a
      00051E 88 82            [24] 1152 	mov	dpl,r0
      000520 75 83 C7         [24] 1153 	mov	dph,#(_IN0BUF >> 8)
      000523 E5 12            [12] 1154 	mov	a,_handleUsbVendorSetup_sloc1_1_0
      000525 F8               [12] 1155 	mov	r0,a
      000526 F0               [24] 1156 	movx	@dptr,a
      000527                       1157 00114$:
                                   1158 ;	src/main.c:310: ledTimeout = 2;
      000527 90 80 7E         [24] 1159 	mov	dptr,#_ledTimeout
      00052A 74 02            [12] 1160 	mov	a,#0x02
      00052C F0               [24] 1161 	movx	@dptr,a
      00052D E4               [12] 1162 	clr	a
      00052E A3               [24] 1163 	inc	dptr
      00052F F0               [24] 1164 	movx	@dptr,a
                                   1165 ;	src/main.c:311: ledSet(LED_GREEN | LED_RED, false);
      000530 C2 06            [12] 1166 	clr	_ledSet_PARM_2
      000532 75 82 03         [24] 1167 	mov	dpl,#0x03
      000535 C0 04            [24] 1168 	push	ar4
      000537 C0 03            [24] 1169 	push	ar3
      000539 C0 02            [24] 1170 	push	ar2
      00053B C0 01            [24] 1171 	push	ar1
      00053D 12 14 8E         [24] 1172 	lcall	_ledSet
      000540 D0 01            [24] 1173 	pop	ar1
      000542 D0 02            [24] 1174 	pop	ar2
      000544 D0 03            [24] 1175 	pop	ar3
      000546 D0 04            [24] 1176 	pop	ar4
                                   1177 ;	src/main.c:312: if(status)
      000548 E9               [12] 1178 	mov	a,r1
      000549 60 16            [24] 1179 	jz	00116$
                                   1180 ;	src/main.c:313: ledSet(LED_GREEN, true);
      00054B D2 06            [12] 1181 	setb	_ledSet_PARM_2
      00054D 75 82 02         [24] 1182 	mov	dpl,#0x02
      000550 C0 04            [24] 1183 	push	ar4
      000552 C0 03            [24] 1184 	push	ar3
      000554 C0 02            [24] 1185 	push	ar2
      000556 12 14 8E         [24] 1186 	lcall	_ledSet
      000559 D0 02            [24] 1187 	pop	ar2
      00055B D0 03            [24] 1188 	pop	ar3
      00055D D0 04            [24] 1189 	pop	ar4
      00055F 80 14            [24] 1190 	sjmp	00161$
      000561                       1191 00116$:
                                   1192 ;	src/main.c:315: ledSet(LED_RED, true);
      000561 D2 06            [12] 1193 	setb	_ledSet_PARM_2
      000563 75 82 01         [24] 1194 	mov	dpl,#0x01
      000566 C0 04            [24] 1195 	push	ar4
      000568 C0 03            [24] 1196 	push	ar3
      00056A C0 02            [24] 1197 	push	ar2
      00056C 12 14 8E         [24] 1198 	lcall	_ledSet
      00056F D0 02            [24] 1199 	pop	ar2
      000571 D0 03            [24] 1200 	pop	ar3
      000573 D0 04            [24] 1201 	pop	ar4
      000575                       1202 00161$:
                                   1203 ;	src/main.c:302: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
      000575 C0 02            [24] 1204 	push	ar2
      000577 E5 10            [12] 1205 	mov	a,_handleUsbVendorSetup_sloc0_1_0
      000579 F5 12            [12] 1206 	mov	_handleUsbVendorSetup_sloc1_1_0,a
      00057B 33               [12] 1207 	rlc	a
      00057C 95 E0            [12] 1208 	subb	a,acc
      00057E F5 13            [12] 1209 	mov	(_handleUsbVendorSetup_sloc1_1_0 + 1),a
      000580 90 80 46         [24] 1210 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      000583 E0               [24] 1211 	movx	a,@dptr
      000584 F9               [12] 1212 	mov	r1,a
      000585 A3               [24] 1213 	inc	dptr
      000586 E0               [24] 1214 	movx	a,@dptr
      000587 FA               [12] 1215 	mov	r2,a
      000588 90 80 46         [24] 1216 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      00058B E5 12            [12] 1217 	mov	a,_handleUsbVendorSetup_sloc1_1_0
      00058D 29               [12] 1218 	add	a,r1
      00058E F0               [24] 1219 	movx	@dptr,a
      00058F E5 13            [12] 1220 	mov	a,(_handleUsbVendorSetup_sloc1_1_0 + 1)
      000591 3A               [12] 1221 	addc	a,r2
      000592 A3               [24] 1222 	inc	dptr
      000593 F0               [24] 1223 	movx	@dptr,a
      000594 D0 02            [24] 1224 	pop	ar2
      000596 02 04 93         [24] 1225 	ljmp	00160$
      000599                       1226 00118$:
                                   1227 ;	src/main.c:319: usbAckSetup();
                                   1228 ;	src/main.c:320: return;
      000599 02 14 45         [24] 1229 	ljmp	_usbAckSetup
      00059C                       1230 00126$:
                                   1231 ;	src/main.c:322: else if(setup->request == CHANNEL_SCANN && setup->requestType == 0xC0)
      00059C ED               [12] 1232 	mov	a,r5
      00059D 60 3D            [24] 1233 	jz	00157$
      00059F 8E 82            [24] 1234 	mov	dpl,r6
      0005A1 8F 83            [24] 1235 	mov	dph,r7
      0005A3 E0               [24] 1236 	movx	a,@dptr
      0005A4 FD               [12] 1237 	mov	r5,a
      0005A5 BD C0 34         [24] 1238 	cjne	r5,#0xC0,00157$
                                   1239 ;	src/main.c:326: IN0BC = (setup->length>scannLength)?scannLength:setup->length;
      0005A8 74 06            [12] 1240 	mov	a,#0x06
      0005AA 2E               [12] 1241 	add	a,r6
      0005AB F5 82            [12] 1242 	mov	dpl,a
      0005AD E4               [12] 1243 	clr	a
      0005AE 3F               [12] 1244 	addc	a,r7
      0005AF F5 83            [12] 1245 	mov	dph,a
      0005B1 E0               [24] 1246 	movx	a,@dptr
      0005B2 FE               [12] 1247 	mov	r6,a
      0005B3 A3               [24] 1248 	inc	dptr
      0005B4 E0               [24] 1249 	movx	a,@dptr
      0005B5 FF               [12] 1250 	mov	r7,a
      0005B6 90 80 42         [24] 1251 	mov	dptr,#_scannLength
      0005B9 E0               [24] 1252 	movx	a,@dptr
      0005BA FC               [12] 1253 	mov	r4,a
      0005BB 33               [12] 1254 	rlc	a
      0005BC 95 E0            [12] 1255 	subb	a,acc
      0005BE FD               [12] 1256 	mov	r5,a
      0005BF C3               [12] 1257 	clr	c
      0005C0 EC               [12] 1258 	mov	a,r4
      0005C1 9E               [12] 1259 	subb	a,r6
      0005C2 ED               [12] 1260 	mov	a,r5
      0005C3 9F               [12] 1261 	subb	a,r7
      0005C4 50 02            [24] 1262 	jnc	00166$
      0005C6 80 04            [24] 1263 	sjmp	00167$
      0005C8                       1264 00166$:
      0005C8 8E 04            [24] 1265 	mov	ar4,r6
      0005CA 8F 05            [24] 1266 	mov	ar5,r7
      0005CC                       1267 00167$:
      0005CC 90 C7 B5         [24] 1268 	mov	dptr,#0xC7B5
      0005CF EC               [12] 1269 	mov	a,r4
      0005D0 F0               [24] 1270 	movx	@dptr,a
                                   1271 ;	src/main.c:327: while (EP0CS & INBSY);
      0005D1                       1272 00119$:
      0005D1 90 C7 B4         [24] 1273 	mov	dptr,#0xC7B4
      0005D4 E0               [24] 1274 	movx	a,@dptr
      0005D5 FF               [12] 1275 	mov	r7,a
      0005D6 20 E2 F8         [24] 1276 	jb	acc.2,00119$
                                   1277 ;	src/main.c:330: usbAckSetup();
                                   1278 ;	src/main.c:331: return;
      0005D9 02 14 45         [24] 1279 	ljmp	_usbAckSetup
      0005DC                       1280 00157$:
                                   1281 ;	src/main.c:336: usbDismissSetup();
      0005DC 02 14 4C         [24] 1282 	ljmp	_usbDismissSetup
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'launchBootloader'
                                   1285 ;------------------------------------------------------------
                                   1286 ;bootloader                Allocated with name '_launchBootloader_bootloader_1_70'
                                   1287 ;------------------------------------------------------------
                                   1288 ;	src/main.c:341: void launchBootloader()
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function launchBootloader
                                   1291 ;	-----------------------------------------
      0005DF                       1292 _launchBootloader:
                                   1293 ;	src/main.c:346: IEN0 = 0x00;
      0005DF 75 A8 00         [24] 1294 	mov	_IEN0,#0x00
                                   1295 ;	src/main.c:349: usbDeinit();
      0005E2 12 0B C6         [24] 1296 	lcall	_usbDeinit
                                   1297 ;	src/main.c:352: radioDeinit();
      0005E5 12 06 42         [24] 1298 	lcall	_radioDeinit
                                   1299 ;	src/main.c:355: bootloader();
      0005E8 02 78 00         [24] 1300 	ljmp	0x7800
                                   1301 	.area CSEG    (CODE)
                                   1302 	.area CONST   (CODE)
                                   1303 	.area XINIT   (CODE)
                                   1304 	.area CABS    (ABS,CODE)
