                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
                                      4 ; This file was generated Mon Jan 19 14:54:25 2015
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
                                    235 ;--------------------------------------------------------
                                    236 ; paged external ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area PSEG    (PAG,XDATA)
                                    239 ;--------------------------------------------------------
                                    240 ; external ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area XSEG    (XDATA)
                           00C7E8   243 _SETUPBUF	=	0xc7e8
                           00C6C0   244 _OUT0BUF	=	0xc6c0
                           00C700   245 _IN0BUF	=	0xc700
                           00C640   246 _OUT1BUF	=	0xc640
                           00C680   247 _IN1BUF	=	0xc680
                           00C5C0   248 _OUT2BUF	=	0xc5c0
                           00C600   249 _IN2BUF	=	0xc600
                           00C540   250 _OUT3BUF	=	0xc540
                           00C580   251 _IN3BUF	=	0xc580
                           00C4C0   252 _OUT4BUF	=	0xc4c0
                           00C500   253 _IN4BUF	=	0xc500
                           00C440   254 _OUT5BUF	=	0xc440
                           00C480   255 _IN5BUF	=	0xc480
      008000                        256 _tbuffer::
      008000                        257 	.ds 33
      008021                        258 _rbuffer::
      008021                        259 	.ds 33
      008042                        260 _scannLength:
      008042                        261 	.ds 1
      008043                        262 _main_tlen_1_45:
      008043                        263 	.ds 1
      008044                        264 _main_rlen_1_45:
      008044                        265 	.ds 1
      008045                        266 _main_ack_1_45:
      008045                        267 	.ds 1
      008046                        268 _handleUsbVendorSetup_i_3_66:
      008046                        269 	.ds 2
      008048                        270 _handleUsbVendorSetup_rlen_3_66:
      008048                        271 	.ds 1
      008049                        272 _handleUsbVendorSetup_inc_3_66:
      008049                        273 	.ds 1
                                    274 ;--------------------------------------------------------
                                    275 ; absolute external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XABS    (ABS,XDATA)
                                    278 ;--------------------------------------------------------
                                    279 ; external initialized ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area XISEG   (XDATA)
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT0 (CODE)
                                    284 	.area GSINIT1 (CODE)
                                    285 	.area GSINIT2 (CODE)
                                    286 	.area GSINIT3 (CODE)
                                    287 	.area GSINIT4 (CODE)
                                    288 	.area GSINIT5 (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 	.area GSFINAL (CODE)
                                    291 	.area CSEG    (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; interrupt vector 
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
      000000                        296 __interrupt_vect:
      000000 02 00 69         [24]  297 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  298 	reti
      000004                        299 	.ds	7
      00000B 32               [24]  300 	reti
      00000C                        301 	.ds	7
      000013 32               [24]  302 	reti
      000014                        303 	.ds	7
      00001B 32               [24]  304 	reti
      00001C                        305 	.ds	7
      000023 32               [24]  306 	reti
      000024                        307 	.ds	7
      00002B 32               [24]  308 	reti
      00002C                        309 	.ds	7
      000033 32               [24]  310 	reti
      000034                        311 	.ds	7
      00003B 32               [24]  312 	reti
      00003C                        313 	.ds	7
      000043 32               [24]  314 	reti
      000044                        315 	.ds	7
      00004B 32               [24]  316 	reti
      00004C                        317 	.ds	7
      000053 32               [24]  318 	reti
      000054                        319 	.ds	7
      00005B 02 0B DA         [24]  320 	ljmp	_usbWuIsr
      00005E                        321 	.ds	5
      000063 02 0B DB         [24]  322 	ljmp	_usbIsr
                                    323 ;--------------------------------------------------------
                                    324 ; global & static initialisations
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.area GSFINAL (CODE)
                                    329 	.area GSINIT  (CODE)
                                    330 	.globl __sdcc_gsinit_startup
                                    331 	.globl __sdcc_program_startup
                                    332 	.globl __start__stack
                                    333 	.globl __mcs51_genXINIT
                                    334 	.globl __mcs51_genXRAMCLEAR
                                    335 	.globl __mcs51_genRAMCLEAR
                                    336 ;	src/main.c:62: static bool contCarrier=false;
      0000C2 C2 00            [12]  337 	clr	_contCarrier
                                    338 ;	src/main.c:63: static bool needAck = true;
      0000C4 D2 01            [12]  339 	setb	_needAck
                                    340 	.area GSFINAL (CODE)
      0000CA 02 00 66         [24]  341 	ljmp	__sdcc_program_startup
                                    342 ;--------------------------------------------------------
                                    343 ; Home
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area HOME    (CODE)
      000066                        347 __sdcc_program_startup:
      000066 02 00 CD         [24]  348 	ljmp	_main
                                    349 ;	return from main will return to caller
                                    350 ;--------------------------------------------------------
                                    351 ; code
                                    352 ;--------------------------------------------------------
                                    353 	.area CSEG    (CODE)
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'main'
                                    356 ;------------------------------------------------------------
                                    357 ;status                    Allocated with name '_main_status_1_45'
                                    358 ;leds                      Allocated with name '_main_leds_1_45'
                                    359 ;tlen                      Allocated with name '_main_tlen_1_45'
                                    360 ;rlen                      Allocated with name '_main_rlen_1_45'
                                    361 ;ack                       Allocated with name '_main_ack_1_45'
                                    362 ;------------------------------------------------------------
                                    363 ;	src/main.c:65: void main()
                                    364 ;	-----------------------------------------
                                    365 ;	 function main
                                    366 ;	-----------------------------------------
      0000CD                        367 _main:
                           000007   368 	ar7 = 0x07
                           000006   369 	ar6 = 0x06
                           000005   370 	ar5 = 0x05
                           000004   371 	ar4 = 0x04
                           000003   372 	ar3 = 0x03
                           000002   373 	ar2 = 0x02
                           000001   374 	ar1 = 0x01
                           000000   375 	ar0 = 0x00
                                    376 ;	src/main.c:81: initId();
      0000CD 12 14 FA         [24]  377 	lcall	_initId
                                    378 ;	src/main.c:84: ledInit(CR_LED_RED, CR_LED_GREEN);
      0000D0 90 80 7B         [24]  379 	mov	dptr,#_ledInit_PARM_2
      0000D3 74 04            [12]  380 	mov	a,#0x04
      0000D5 F0               [24]  381 	movx	@dptr,a
      0000D6 75 82 02         [24]  382 	mov	dpl,#0x02
      0000D9 12 14 51         [24]  383 	lcall	_ledInit
                                    384 ;	src/main.c:88: ledSet(LED_GREEN | LED_RED, true);
      0000DC D2 05            [12]  385 	setb	_ledSet_PARM_2
      0000DE 75 82 03         [24]  386 	mov	dpl,#0x03
      0000E1 12 14 8C         [24]  387 	lcall	_ledSet
                                    388 ;	src/main.c:96: radioInit();
      0000E4 12 06 03         [24]  389 	lcall	_radioInit
                                    390 ;	src/main.c:102: usbInit();
      0000E7 12 0B 3B         [24]  391 	lcall	_usbInit
                                    392 ;	src/main.c:105: IEN0 |= 0x80;
      0000EA 43 A8 80         [24]  393 	orl	_IEN0,#0x80
                                    394 ;	src/main.c:108: while (usbGetState() != ADDRESS);
      0000ED                        395 00106$:
      0000ED 12 0B D3         [24]  396 	lcall	_usbGetState
      0000F0 AF 82            [24]  397 	mov	r7,dpl
      0000F2 BF 02 F8         [24]  398 	cjne	r7,#0x02,00106$
                                    399 ;	src/main.c:111: ledSet(LED_GREEN | LED_RED, false);
      0000F5 C2 05            [12]  400 	clr	_ledSet_PARM_2
      0000F7 75 82 03         [24]  401 	mov	dpl,#0x03
      0000FA 12 14 8C         [24]  402 	lcall	_ledSet
                                    403 ;	src/main.c:114: while (usbGetState() != CONFIGURED);
      0000FD                        404 00109$:
      0000FD 12 0B D3         [24]  405 	lcall	_usbGetState
      000100 AF 82            [24]  406 	mov	r7,dpl
      000102 BF 03 F8         [24]  407 	cjne	r7,#0x03,00109$
                                    408 ;	src/main.c:117: OUT1BC=0xFF;
      000105 90 C7 C7         [24]  409 	mov	dptr,#0xC7C7
      000108 74 FF            [12]  410 	mov	a,#0xFF
      00010A F0               [24]  411 	movx	@dptr,a
                                    412 ;	src/main.c:119: while(1)
      00010B                        413 00132$:
                                    414 ;	src/main.c:122: if (!(OUT1CS&EPBSY) && !contCarrier)
      00010B 90 C7 C6         [24]  415 	mov	dptr,#0xC7C6
      00010E E0               [24]  416 	movx	a,@dptr
      00010F FF               [12]  417 	mov	r7,a
      000110 30 E1 03         [24]  418 	jnb	acc.1,00189$
      000113 02 02 77         [24]  419 	ljmp	00127$
      000116                        420 00189$:
      000116 30 00 03         [24]  421 	jnb	_contCarrier,00190$
      000119 02 02 77         [24]  422 	ljmp	00127$
      00011C                        423 00190$:
                                    424 ;	src/main.c:126: IN1CS = 0x02;
      00011C 90 C7 B6         [24]  425 	mov	dptr,#0xC7B6
      00011F 74 02            [12]  426 	mov	a,#0x02
      000121 F0               [24]  427 	movx	@dptr,a
                                    428 ;	src/main.c:129: tlen = OUT1BC;
      000122 90 C7 C7         [24]  429 	mov	dptr,#0xC7C7
      000125 E0               [24]  430 	movx	a,@dptr
      000126 FF               [12]  431 	mov	r7,a
      000127 90 80 43         [24]  432 	mov	dptr,#_main_tlen_1_45
      00012A F0               [24]  433 	movx	@dptr,a
                                    434 ;	src/main.c:130: if (tlen>32) tlen=32;
      00012B C3               [12]  435 	clr	c
      00012C 74 A0            [12]  436 	mov	a,#(0x20 ^ 0x80)
      00012E 8F F0            [24]  437 	mov	b,r7
      000130 63 F0 80         [24]  438 	xrl	b,#0x80
      000133 95 F0            [12]  439 	subb	a,b
      000135 50 06            [24]  440 	jnc	00113$
      000137 90 80 43         [24]  441 	mov	dptr,#_main_tlen_1_45
      00013A 74 20            [12]  442 	mov	a,#0x20
      00013C F0               [24]  443 	movx	@dptr,a
      00013D                        444 00113$:
                                    445 ;	src/main.c:133: memcpy(tbuffer, OUT1BUF, tlen);
      00013D 90 80 43         [24]  446 	mov	dptr,#_main_tlen_1_45
      000140 E0               [24]  447 	movx	a,@dptr
      000141 FF               [12]  448 	mov	r7,a
      000142 FD               [12]  449 	mov	r5,a
      000143 33               [12]  450 	rlc	a
      000144 95 E0            [12]  451 	subb	a,acc
      000146 FE               [12]  452 	mov	r6,a
      000147 90 80 85         [24]  453 	mov	dptr,#_memcpy_PARM_2
      00014A 74 40            [12]  454 	mov	a,#_OUT1BUF
      00014C F0               [24]  455 	movx	@dptr,a
      00014D 74 C6            [12]  456 	mov	a,#(_OUT1BUF >> 8)
      00014F A3               [24]  457 	inc	dptr
      000150 F0               [24]  458 	movx	@dptr,a
      000151 E4               [12]  459 	clr	a
      000152 A3               [24]  460 	inc	dptr
      000153 F0               [24]  461 	movx	@dptr,a
      000154 90 80 88         [24]  462 	mov	dptr,#_memcpy_PARM_3
      000157 ED               [12]  463 	mov	a,r5
      000158 F0               [24]  464 	movx	@dptr,a
      000159 EE               [12]  465 	mov	a,r6
      00015A A3               [24]  466 	inc	dptr
      00015B F0               [24]  467 	movx	@dptr,a
      00015C 90 80 00         [24]  468 	mov	dptr,#_tbuffer
      00015F 75 F0 00         [24]  469 	mov	b,#0x00
      000162 C0 07            [24]  470 	push	ar7
      000164 12 15 38         [24]  471 	lcall	_memcpy
      000167 D0 07            [24]  472 	pop	ar7
                                    473 ;	src/main.c:134: if (needAck)
      000169 20 01 03         [24]  474 	jb	_needAck,00192$
      00016C 02 02 4D         [24]  475 	ljmp	00124$
      00016F                        476 00192$:
                                    477 ;	src/main.c:136: status = radioSendPacket(tbuffer, tlen, rbuffer, &rlen);
      00016F 90 80 58         [24]  478 	mov	dptr,#_radioSendPacket_PARM_2
      000172 EF               [12]  479 	mov	a,r7
      000173 F0               [24]  480 	movx	@dptr,a
      000174 90 80 59         [24]  481 	mov	dptr,#_radioSendPacket_PARM_3
      000177 74 21            [12]  482 	mov	a,#_rbuffer
      000179 F0               [24]  483 	movx	@dptr,a
      00017A 74 80            [12]  484 	mov	a,#(_rbuffer >> 8)
      00017C A3               [24]  485 	inc	dptr
      00017D F0               [24]  486 	movx	@dptr,a
      00017E 90 80 5B         [24]  487 	mov	dptr,#_radioSendPacket_PARM_4
      000181 74 44            [12]  488 	mov	a,#_main_rlen_1_45
      000183 F0               [24]  489 	movx	@dptr,a
      000184 74 80            [12]  490 	mov	a,#(_main_rlen_1_45 >> 8)
      000186 A3               [24]  491 	inc	dptr
      000187 F0               [24]  492 	movx	@dptr,a
      000188 E4               [12]  493 	clr	a
      000189 A3               [24]  494 	inc	dptr
      00018A F0               [24]  495 	movx	@dptr,a
      00018B 90 80 00         [24]  496 	mov	dptr,#_tbuffer
      00018E 12 08 7B         [24]  497 	lcall	_radioSendPacket
      000191 AE 82            [24]  498 	mov	r6,dpl
                                    499 ;	src/main.c:141: ledTimeout = 2;
      000193 90 80 7E         [24]  500 	mov	dptr,#_ledTimeout
      000196 74 02            [12]  501 	mov	a,#0x02
      000198 F0               [24]  502 	movx	@dptr,a
      000199 E4               [12]  503 	clr	a
      00019A A3               [24]  504 	inc	dptr
      00019B F0               [24]  505 	movx	@dptr,a
                                    506 ;	src/main.c:142: ledSet(LED_GREEN | LED_RED, false);
      00019C C2 05            [12]  507 	clr	_ledSet_PARM_2
      00019E 75 82 03         [24]  508 	mov	dpl,#0x03
      0001A1 C0 06            [24]  509 	push	ar6
      0001A3 12 14 8C         [24]  510 	lcall	_ledSet
      0001A6 D0 06            [24]  511 	pop	ar6
                                    512 ;	src/main.c:143: if(status)
      0001A8 EE               [12]  513 	mov	a,r6
      0001A9 60 0E            [24]  514 	jz	00115$
                                    515 ;	src/main.c:144: ledSet(LED_GREEN, true);
      0001AB D2 05            [12]  516 	setb	_ledSet_PARM_2
      0001AD 75 82 02         [24]  517 	mov	dpl,#0x02
      0001B0 C0 06            [24]  518 	push	ar6
      0001B2 12 14 8C         [24]  519 	lcall	_ledSet
      0001B5 D0 06            [24]  520 	pop	ar6
      0001B7 80 0C            [24]  521 	sjmp	00116$
      0001B9                        522 00115$:
                                    523 ;	src/main.c:146: ledSet(LED_RED, true);
      0001B9 D2 05            [12]  524 	setb	_ledSet_PARM_2
      0001BB 75 82 01         [24]  525 	mov	dpl,#0x01
      0001BE C0 06            [24]  526 	push	ar6
      0001C0 12 14 8C         [24]  527 	lcall	_ledSet
      0001C3 D0 06            [24]  528 	pop	ar6
      0001C5                        529 00116$:
                                    530 ;	src/main.c:148: OUT1BC=BCDUMMY;
      0001C5 90 C7 C7         [24]  531 	mov	dptr,#0xC7C7
      0001C8 74 01            [12]  532 	mov	a,#0x01
      0001CA F0               [24]  533 	movx	@dptr,a
                                    534 ;	src/main.c:152: ack=status?1:0;
      0001CB EE               [12]  535 	mov	a,r6
      0001CC 60 04            [24]  536 	jz	00136$
      0001CE 7D 01            [12]  537 	mov	r5,#0x01
      0001D0 80 02            [24]  538 	sjmp	00137$
      0001D2                        539 00136$:
      0001D2 7D 00            [12]  540 	mov	r5,#0x00
      0001D4                        541 00137$:
      0001D4 90 80 45         [24]  542 	mov	dptr,#_main_ack_1_45
      0001D7 ED               [12]  543 	mov	a,r5
      0001D8 F0               [24]  544 	movx	@dptr,a
                                    545 ;	src/main.c:153: if (ack)
      0001D9 ED               [12]  546 	mov	a,r5
      0001DA 60 2B            [24]  547 	jz	00120$
                                    548 ;	src/main.c:155: if (radioGetRpd()) ack |= 0x02;
      0001DC C0 06            [24]  549 	push	ar6
      0001DE C0 05            [24]  550 	push	ar5
      0001E0 12 0B 28         [24]  551 	lcall	_radioGetRpd
      0001E3 E5 82            [12]  552 	mov	a,dpl
      0001E5 D0 05            [24]  553 	pop	ar5
      0001E7 D0 06            [24]  554 	pop	ar6
      0001E9 60 07            [24]  555 	jz	00118$
      0001EB 90 80 45         [24]  556 	mov	dptr,#_main_ack_1_45
      0001EE 74 02            [12]  557 	mov	a,#0x02
      0001F0 4D               [12]  558 	orl	a,r5
      0001F1 F0               [24]  559 	movx	@dptr,a
      0001F2                        560 00118$:
                                    561 ;	src/main.c:156: ack |= radioGetTxRetry()<<4;
      0001F2 C0 06            [24]  562 	push	ar6
      0001F4 12 0B 2E         [24]  563 	lcall	_radioGetTxRetry
      0001F7 AD 82            [24]  564 	mov	r5,dpl
      0001F9 D0 06            [24]  565 	pop	ar6
      0001FB ED               [12]  566 	mov	a,r5
      0001FC C4               [12]  567 	swap	a
      0001FD 54 F0            [12]  568 	anl	a,#0xF0
      0001FF FD               [12]  569 	mov	r5,a
      000200 90 80 45         [24]  570 	mov	dptr,#_main_ack_1_45
      000203 E0               [24]  571 	movx	a,@dptr
      000204 FC               [12]  572 	mov	r4,a
      000205 4D               [12]  573 	orl	a,r5
      000206 F0               [24]  574 	movx	@dptr,a
      000207                        575 00120$:
                                    576 ;	src/main.c:158: IN1BUF[0]=ack;
      000207 90 80 45         [24]  577 	mov	dptr,#_main_ack_1_45
      00020A E0               [24]  578 	movx	a,@dptr
      00020B FD               [12]  579 	mov	r5,a
      00020C 90 C6 80         [24]  580 	mov	dptr,#_IN1BUF
      00020F F0               [24]  581 	movx	@dptr,a
                                    582 ;	src/main.c:159: if(!(status&BIT_TX_DS)) rlen=0;
      000210 EE               [12]  583 	mov	a,r6
      000211 20 E5 05         [24]  584 	jb	acc.5,00122$
      000214 90 80 44         [24]  585 	mov	dptr,#_main_rlen_1_45
      000217 E4               [12]  586 	clr	a
      000218 F0               [24]  587 	movx	@dptr,a
      000219                        588 00122$:
                                    589 ;	src/main.c:160: memcpy(IN1BUF+1, rbuffer, rlen);
      000219 90 80 44         [24]  590 	mov	dptr,#_main_rlen_1_45
      00021C E0               [24]  591 	movx	a,@dptr
      00021D FE               [12]  592 	mov	r6,a
      00021E 33               [12]  593 	rlc	a
      00021F 95 E0            [12]  594 	subb	a,acc
      000221 FD               [12]  595 	mov	r5,a
      000222 90 80 85         [24]  596 	mov	dptr,#_memcpy_PARM_2
      000225 74 21            [12]  597 	mov	a,#_rbuffer
      000227 F0               [24]  598 	movx	@dptr,a
      000228 74 80            [12]  599 	mov	a,#(_rbuffer >> 8)
      00022A A3               [24]  600 	inc	dptr
      00022B F0               [24]  601 	movx	@dptr,a
      00022C E4               [12]  602 	clr	a
      00022D A3               [24]  603 	inc	dptr
      00022E F0               [24]  604 	movx	@dptr,a
      00022F 90 80 88         [24]  605 	mov	dptr,#_memcpy_PARM_3
      000232 EE               [12]  606 	mov	a,r6
      000233 F0               [24]  607 	movx	@dptr,a
      000234 ED               [12]  608 	mov	a,r5
      000235 A3               [24]  609 	inc	dptr
      000236 F0               [24]  610 	movx	@dptr,a
      000237 90 C6 81         [24]  611 	mov	dptr,#(_IN1BUF + 0x0001)
      00023A 75 F0 00         [24]  612 	mov	b,#0x00
      00023D 12 15 38         [24]  613 	lcall	_memcpy
                                    614 ;	src/main.c:162: IN1BC = rlen+1;
      000240 90 80 44         [24]  615 	mov	dptr,#_main_rlen_1_45
      000243 E0               [24]  616 	movx	a,@dptr
      000244 FE               [12]  617 	mov	r6,a
      000245 0E               [12]  618 	inc	r6
      000246 90 C7 B7         [24]  619 	mov	dptr,#0xC7B7
      000249 EE               [12]  620 	mov	a,r6
      00024A F0               [24]  621 	movx	@dptr,a
      00024B 80 2A            [24]  622 	sjmp	00127$
      00024D                        623 00124$:
                                    624 ;	src/main.c:166: radioSendPacketNoAck(tbuffer, tlen);
      00024D 90 80 60         [24]  625 	mov	dptr,#_radioSendPacketNoAck_PARM_2
      000250 EF               [12]  626 	mov	a,r7
      000251 F0               [24]  627 	movx	@dptr,a
      000252 90 80 00         [24]  628 	mov	dptr,#_tbuffer
      000255 12 09 22         [24]  629 	lcall	_radioSendPacketNoAck
                                    630 ;	src/main.c:168: ledTimeout = 2;
      000258 90 80 7E         [24]  631 	mov	dptr,#_ledTimeout
      00025B 74 02            [12]  632 	mov	a,#0x02
      00025D F0               [24]  633 	movx	@dptr,a
      00025E E4               [12]  634 	clr	a
      00025F A3               [24]  635 	inc	dptr
      000260 F0               [24]  636 	movx	@dptr,a
                                    637 ;	src/main.c:169: ledSet(LED_GREEN | LED_RED, false);
      000261 C2 05            [12]  638 	clr	_ledSet_PARM_2
      000263 75 82 03         [24]  639 	mov	dpl,#0x03
      000266 12 14 8C         [24]  640 	lcall	_ledSet
                                    641 ;	src/main.c:170: ledSet(LED_GREEN, true);
      000269 D2 05            [12]  642 	setb	_ledSet_PARM_2
      00026B 75 82 02         [24]  643 	mov	dpl,#0x02
      00026E 12 14 8C         [24]  644 	lcall	_ledSet
                                    645 ;	src/main.c:173: OUT1BC=BCDUMMY;
      000271 90 C7 C7         [24]  646 	mov	dptr,#0xC7C7
      000274 74 01            [12]  647 	mov	a,#0x01
      000276 F0               [24]  648 	movx	@dptr,a
      000277                        649 00127$:
                                    650 ;	src/main.c:178: if(usbIsVendorSetup())
      000277 12 14 36         [24]  651 	lcall	_usbIsVendorSetup
      00027A 40 03            [24]  652 	jc	00198$
      00027C 02 01 0B         [24]  653 	ljmp	00132$
      00027F                        654 00198$:
                                    655 ;	src/main.c:179: handleUsbVendorSetup();
      00027F 12 02 85         [24]  656 	lcall	_handleUsbVendorSetup
      000282 02 01 0B         [24]  657 	ljmp	00132$
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'handleUsbVendorSetup'
                                    660 ;------------------------------------------------------------
                                    661 ;sloc0                     Allocated with name '_handleUsbVendorSetup_sloc0_1_0'
                                    662 ;sloc1                     Allocated with name '_handleUsbVendorSetup_sloc1_1_0'
                                    663 ;setup                     Allocated with name '_handleUsbVendorSetup_setup_1_54'
                                    664 ;i                         Allocated with name '_handleUsbVendorSetup_i_3_66'
                                    665 ;rlen                      Allocated with name '_handleUsbVendorSetup_rlen_3_66'
                                    666 ;status                    Allocated with name '_handleUsbVendorSetup_status_3_66'
                                    667 ;inc                       Allocated with name '_handleUsbVendorSetup_inc_3_66'
                                    668 ;start                     Allocated with name '_handleUsbVendorSetup_start_3_66'
                                    669 ;stop                      Allocated with name '_handleUsbVendorSetup_stop_3_66'
                                    670 ;------------------------------------------------------------
                                    671 ;	src/main.c:184: void handleUsbVendorSetup()
                                    672 ;	-----------------------------------------
                                    673 ;	 function handleUsbVendorSetup
                                    674 ;	-----------------------------------------
      000285                        675 _handleUsbVendorSetup:
                                    676 ;	src/main.c:186: __xdata struct controllStruct *setup = usbGetSetupPacket();
      000285 12 14 3F         [24]  677 	lcall	_usbGetSetupPacket
      000288 AE 82            [24]  678 	mov	r6,dpl
      00028A AF 83            [24]  679 	mov	r7,dph
                                    680 ;	src/main.c:189: if (usbGetState() >= CONFIGURED)
      00028C C0 07            [24]  681 	push	ar7
      00028E C0 06            [24]  682 	push	ar6
      000290 12 0B D3         [24]  683 	lcall	_usbGetState
      000293 AD 82            [24]  684 	mov	r5,dpl
      000295 D0 06            [24]  685 	pop	ar6
      000297 D0 07            [24]  686 	pop	ar7
      000299 BD 03 00         [24]  687 	cjne	r5,#0x03,00258$
      00029C                        688 00258$:
      00029C 50 03            [24]  689 	jnc	00259$
      00029E 02 05 DA         [24]  690 	ljmp	00157$
      0002A1                        691 00259$:
                                    692 ;	src/main.c:191: if(setup->request == LAUNCH_BOOTLOADER)
      0002A1 8E 82            [24]  693 	mov	dpl,r6
      0002A3 8F 83            [24]  694 	mov	dph,r7
      0002A5 A3               [24]  695 	inc	dptr
      0002A6 E0               [24]  696 	movx	a,@dptr
      0002A7 FD               [12]  697 	mov	r5,a
      0002A8 BD FF 06         [24]  698 	cjne	r5,#0xFF,00154$
                                    699 ;	src/main.c:194: usbAckSetup();
      0002AB 12 14 43         [24]  700 	lcall	_usbAckSetup
                                    701 ;	src/main.c:196: launchBootloader();
                                    702 ;	src/main.c:199: return;
      0002AE 02 05 DD         [24]  703 	ljmp	_launchBootloader
      0002B1                        704 00154$:
                                    705 ;	src/main.c:201: else if(setup->request == SET_RADIO_CHANNEL)
      0002B1 BD 01 12         [24]  706 	cjne	r5,#0x01,00151$
                                    707 ;	src/main.c:203: radioSetChannel(setup->value);
      0002B4 8E 82            [24]  708 	mov	dpl,r6
      0002B6 8F 83            [24]  709 	mov	dph,r7
      0002B8 A3               [24]  710 	inc	dptr
      0002B9 A3               [24]  711 	inc	dptr
      0002BA E0               [24]  712 	movx	a,@dptr
      0002BB FB               [12]  713 	mov	r3,a
      0002BC A3               [24]  714 	inc	dptr
      0002BD E0               [24]  715 	movx	a,@dptr
      0002BE 8B 82            [24]  716 	mov	dpl,r3
      0002C0 12 09 FE         [24]  717 	lcall	_radioSetChannel
                                    718 ;	src/main.c:205: usbAckSetup();
                                    719 ;	src/main.c:206: return;
      0002C3 02 14 43         [24]  720 	ljmp	_usbAckSetup
      0002C6                        721 00151$:
                                    722 ;	src/main.c:208: else if(setup->request == SET_DATA_RATE)
      0002C6 BD 03 12         [24]  723 	cjne	r5,#0x03,00148$
                                    724 ;	src/main.c:210: radioSetDataRate(setup->value);
      0002C9 8E 82            [24]  725 	mov	dpl,r6
      0002CB 8F 83            [24]  726 	mov	dph,r7
      0002CD A3               [24]  727 	inc	dptr
      0002CE A3               [24]  728 	inc	dptr
      0002CF E0               [24]  729 	movx	a,@dptr
      0002D0 FB               [12]  730 	mov	r3,a
      0002D1 A3               [24]  731 	inc	dptr
      0002D2 E0               [24]  732 	movx	a,@dptr
      0002D3 8B 82            [24]  733 	mov	dpl,r3
      0002D5 12 0A 2C         [24]  734 	lcall	_radioSetDataRate
                                    735 ;	src/main.c:212: usbAckSetup();
                                    736 ;	src/main.c:213: return;
      0002D8 02 14 43         [24]  737 	ljmp	_usbAckSetup
      0002DB                        738 00148$:
                                    739 ;	src/main.c:215: else if(setup->request == SET_RADIO_ADDRESS)
      0002DB BD 02 30         [24]  740 	cjne	r5,#0x02,00145$
                                    741 ;	src/main.c:217: if(setup->length != 5)
      0002DE 74 06            [12]  742 	mov	a,#0x06
      0002E0 2E               [12]  743 	add	a,r6
      0002E1 F5 82            [12]  744 	mov	dpl,a
      0002E3 E4               [12]  745 	clr	a
      0002E4 3F               [12]  746 	addc	a,r7
      0002E5 F5 83            [12]  747 	mov	dph,a
      0002E7 E0               [24]  748 	movx	a,@dptr
      0002E8 FB               [12]  749 	mov	r3,a
      0002E9 A3               [24]  750 	inc	dptr
      0002EA E0               [24]  751 	movx	a,@dptr
      0002EB FC               [12]  752 	mov	r4,a
      0002EC BB 05 05         [24]  753 	cjne	r3,#0x05,00268$
      0002EF BC 00 02         [24]  754 	cjne	r4,#0x00,00268$
      0002F2 80 03            [24]  755 	sjmp	00102$
      0002F4                        756 00268$:
                                    757 ;	src/main.c:219: usbDismissSetup();
                                    758 ;	src/main.c:220: return;
      0002F4 02 14 4A         [24]  759 	ljmp	_usbDismissSetup
      0002F7                        760 00102$:
                                    761 ;	src/main.c:224: OUT0BC = BCDUMMY;
      0002F7 90 C7 C5         [24]  762 	mov	dptr,#0xC7C5
      0002FA 74 01            [12]  763 	mov	a,#0x01
      0002FC F0               [24]  764 	movx	@dptr,a
                                    765 ;	src/main.c:225: while (EP0CS & OUTBSY);
      0002FD                        766 00103$:
      0002FD 90 C7 B4         [24]  767 	mov	dptr,#0xC7B4
      000300 E0               [24]  768 	movx	a,@dptr
      000301 FC               [12]  769 	mov	r4,a
      000302 20 E3 F8         [24]  770 	jb	acc.3,00103$
                                    771 ;	src/main.c:228: radioSetAddress(OUT0BUF);
      000305 90 C6 C0         [24]  772 	mov	dptr,#_OUT0BUF
      000308 12 0A 94         [24]  773 	lcall	_radioSetAddress
                                    774 ;	src/main.c:231: usbAckSetup();
                                    775 ;	src/main.c:232: return;
      00030B 02 14 43         [24]  776 	ljmp	_usbAckSetup
      00030E                        777 00145$:
                                    778 ;	src/main.c:234: else if(setup->request == SET_RADIO_POWER)
      00030E BD 04 12         [24]  779 	cjne	r5,#0x04,00142$
                                    780 ;	src/main.c:236: radioSetPower(setup->value);
      000311 8E 82            [24]  781 	mov	dpl,r6
      000313 8F 83            [24]  782 	mov	dph,r7
      000315 A3               [24]  783 	inc	dptr
      000316 A3               [24]  784 	inc	dptr
      000317 E0               [24]  785 	movx	a,@dptr
      000318 FB               [12]  786 	mov	r3,a
      000319 A3               [24]  787 	inc	dptr
      00031A E0               [24]  788 	movx	a,@dptr
      00031B 8B 82            [24]  789 	mov	dpl,r3
      00031D 12 0A 4C         [24]  790 	lcall	_radioSetPower
                                    791 ;	src/main.c:238: usbAckSetup();
                                    792 ;	src/main.c:239: return;
      000320 02 14 43         [24]  793 	ljmp	_usbAckSetup
      000323                        794 00142$:
                                    795 ;	src/main.c:241: else if(setup->request == SET_RADIO_ARD)
      000323 BD 05 12         [24]  796 	cjne	r5,#0x05,00139$
                                    797 ;	src/main.c:243: radioSetArd(setup->value);
      000326 8E 82            [24]  798 	mov	dpl,r6
      000328 8F 83            [24]  799 	mov	dph,r7
      00032A A3               [24]  800 	inc	dptr
      00032B A3               [24]  801 	inc	dptr
      00032C E0               [24]  802 	movx	a,@dptr
      00032D FB               [12]  803 	mov	r3,a
      00032E A3               [24]  804 	inc	dptr
      00032F E0               [24]  805 	movx	a,@dptr
      000330 8B 82            [24]  806 	mov	dpl,r3
      000332 12 0A 5F         [24]  807 	lcall	_radioSetArd
                                    808 ;	src/main.c:245: usbAckSetup();
                                    809 ;	src/main.c:246: return;
      000335 02 14 43         [24]  810 	ljmp	_usbAckSetup
      000338                        811 00139$:
                                    812 ;	src/main.c:248: else if(setup->request == SET_RADIO_ARC)
      000338 BD 06 12         [24]  813 	cjne	r5,#0x06,00136$
                                    814 ;	src/main.c:250: radioSetArc(setup->value);
      00033B 8E 82            [24]  815 	mov	dpl,r6
      00033D 8F 83            [24]  816 	mov	dph,r7
      00033F A3               [24]  817 	inc	dptr
      000340 A3               [24]  818 	inc	dptr
      000341 E0               [24]  819 	movx	a,@dptr
      000342 FB               [12]  820 	mov	r3,a
      000343 A3               [24]  821 	inc	dptr
      000344 E0               [24]  822 	movx	a,@dptr
      000345 8B 82            [24]  823 	mov	dpl,r3
      000347 12 0A 6D         [24]  824 	lcall	_radioSetArc
                                    825 ;	src/main.c:252: usbAckSetup();
                                    826 ;	src/main.c:253: return;
      00034A 02 14 43         [24]  827 	ljmp	_usbAckSetup
      00034D                        828 00136$:
                                    829 ;	src/main.c:255: else if(setup->request == SET_CONT_CARRIER)
      00034D BD 20 4A         [24]  830 	cjne	r5,#0x20,00133$
                                    831 ;	src/main.c:257: radioSetContCarrier((setup->value)?true:false);
      000350 74 02            [12]  832 	mov	a,#0x02
      000352 2E               [12]  833 	add	a,r6
      000353 FB               [12]  834 	mov	r3,a
      000354 E4               [12]  835 	clr	a
      000355 3F               [12]  836 	addc	a,r7
      000356 FC               [12]  837 	mov	r4,a
      000357 8B 82            [24]  838 	mov	dpl,r3
      000359 8C 83            [24]  839 	mov	dph,r4
      00035B E0               [24]  840 	movx	a,@dptr
      00035C F9               [12]  841 	mov	r1,a
      00035D A3               [24]  842 	inc	dptr
      00035E E0               [24]  843 	movx	a,@dptr
      00035F 49               [12]  844 	orl	a,r1
      000360 24 FF            [12]  845 	add	a,#0xff
      000362 92 02            [24]  846 	mov	_radioSetContCarrier_PARM_1,c
      000364 C0 04            [24]  847 	push	ar4
      000366 C0 03            [24]  848 	push	ar3
      000368 12 0A 7B         [24]  849 	lcall	_radioSetContCarrier
      00036B D0 03            [24]  850 	pop	ar3
      00036D D0 04            [24]  851 	pop	ar4
                                    852 ;	src/main.c:258: contCarrier = (setup->value)?true:false;
      00036F 8B 82            [24]  853 	mov	dpl,r3
      000371 8C 83            [24]  854 	mov	dph,r4
      000373 E0               [24]  855 	movx	a,@dptr
      000374 F9               [12]  856 	mov	r1,a
      000375 A3               [24]  857 	inc	dptr
      000376 E0               [24]  858 	movx	a,@dptr
      000377 49               [12]  859 	orl	a,r1
      000378 24 FF            [12]  860 	add	a,#0xff
      00037A 92 00            [24]  861 	mov	_contCarrier,c
                                    862 ;	src/main.c:260: ledTimeout = -1;
      00037C 90 80 7E         [24]  863 	mov	dptr,#_ledTimeout
      00037F 74 FF            [12]  864 	mov	a,#0xFF
      000381 F0               [24]  865 	movx	@dptr,a
      000382 A3               [24]  866 	inc	dptr
      000383 F0               [24]  867 	movx	@dptr,a
                                    868 ;	src/main.c:261: ledSet(LED_RED, (setup->value)?true:false);
      000384 8B 82            [24]  869 	mov	dpl,r3
      000386 8C 83            [24]  870 	mov	dph,r4
      000388 E0               [24]  871 	movx	a,@dptr
      000389 FB               [12]  872 	mov	r3,a
      00038A A3               [24]  873 	inc	dptr
      00038B E0               [24]  874 	movx	a,@dptr
      00038C 4B               [12]  875 	orl	a,r3
      00038D 24 FF            [12]  876 	add	a,#0xff
      00038F 92 05            [24]  877 	mov	_ledSet_PARM_2,c
      000391 75 82 01         [24]  878 	mov	dpl,#0x01
      000394 12 14 8C         [24]  879 	lcall	_ledSet
                                    880 ;	src/main.c:263: usbAckSetup();
                                    881 ;	src/main.c:264: return;
      000397 02 14 43         [24]  882 	ljmp	_usbAckSetup
      00039A                        883 00133$:
                                    884 ;	src/main.c:266: else if(setup->request == ACK_ENABLE)
      00039A BD 10 12         [24]  885 	cjne	r5,#0x10,00130$
                                    886 ;	src/main.c:268: needAck = (setup->value)?true:false;
      00039D 8E 82            [24]  887 	mov	dpl,r6
      00039F 8F 83            [24]  888 	mov	dph,r7
      0003A1 A3               [24]  889 	inc	dptr
      0003A2 A3               [24]  890 	inc	dptr
      0003A3 E0               [24]  891 	movx	a,@dptr
      0003A4 FB               [12]  892 	mov	r3,a
      0003A5 A3               [24]  893 	inc	dptr
      0003A6 E0               [24]  894 	movx	a,@dptr
      0003A7 4B               [12]  895 	orl	a,r3
      0003A8 24 FF            [12]  896 	add	a,#0xff
      0003AA 92 01            [24]  897 	mov	_needAck,c
                                    898 ;	src/main.c:270: usbAckSetup();
                                    899 ;	src/main.c:271: return;
      0003AC 02 14 43         [24]  900 	ljmp	_usbAckSetup
      0003AF                        901 00130$:
                                    902 ;	src/main.c:273: else if(setup->request == CHANNEL_SCANN && setup->requestType == 0x40)
      0003AF E4               [12]  903 	clr	a
      0003B0 BD 21 01         [24]  904 	cjne	r5,#0x21,00280$
      0003B3 04               [12]  905 	inc	a
      0003B4                        906 00280$:
      0003B4 FD               [12]  907 	mov	r5,a
      0003B5 70 03            [24]  908 	jnz	00282$
      0003B7 02 05 9A         [24]  909 	ljmp	00126$
      0003BA                        910 00282$:
      0003BA 8E 82            [24]  911 	mov	dpl,r6
      0003BC 8F 83            [24]  912 	mov	dph,r7
      0003BE E0               [24]  913 	movx	a,@dptr
      0003BF FC               [12]  914 	mov	r4,a
      0003C0 BC 40 02         [24]  915 	cjne	r4,#0x40,00283$
      0003C3 80 03            [24]  916 	sjmp	00284$
      0003C5                        917 00283$:
      0003C5 02 05 9A         [24]  918 	ljmp	00126$
      0003C8                        919 00284$:
                                    920 ;	src/main.c:278: char inc = 1;
      0003C8 90 80 49         [24]  921 	mov	dptr,#_handleUsbVendorSetup_inc_3_66
      0003CB 74 01            [12]  922 	mov	a,#0x01
      0003CD F0               [24]  923 	movx	@dptr,a
                                    924 ;	src/main.c:280: scannLength = 0;
      0003CE 90 80 42         [24]  925 	mov	dptr,#_scannLength
      0003D1 E4               [12]  926 	clr	a
      0003D2 F0               [24]  927 	movx	@dptr,a
                                    928 ;	src/main.c:282: if(setup->length < 1)
      0003D3 74 06            [12]  929 	mov	a,#0x06
      0003D5 2E               [12]  930 	add	a,r6
      0003D6 FB               [12]  931 	mov	r3,a
      0003D7 E4               [12]  932 	clr	a
      0003D8 3F               [12]  933 	addc	a,r7
      0003D9 FC               [12]  934 	mov	r4,a
      0003DA 8B 82            [24]  935 	mov	dpl,r3
      0003DC 8C 83            [24]  936 	mov	dph,r4
      0003DE E0               [24]  937 	movx	a,@dptr
      0003DF F9               [12]  938 	mov	r1,a
      0003E0 A3               [24]  939 	inc	dptr
      0003E1 E0               [24]  940 	movx	a,@dptr
      0003E2 FA               [12]  941 	mov	r2,a
      0003E3 C3               [12]  942 	clr	c
      0003E4 E9               [12]  943 	mov	a,r1
      0003E5 94 01            [12]  944 	subb	a,#0x01
      0003E7 EA               [12]  945 	mov	a,r2
      0003E8 94 00            [12]  946 	subb	a,#0x00
      0003EA 50 03            [24]  947 	jnc	00107$
                                    948 ;	src/main.c:284: usbDismissSetup();
                                    949 ;	src/main.c:285: return;
      0003EC 02 14 4A         [24]  950 	ljmp	_usbDismissSetup
      0003EF                        951 00107$:
                                    952 ;	src/main.c:289: start = setup->value;
      0003EF 8E 82            [24]  953 	mov	dpl,r6
      0003F1 8F 83            [24]  954 	mov	dph,r7
      0003F3 A3               [24]  955 	inc	dptr
      0003F4 A3               [24]  956 	inc	dptr
      0003F5 E0               [24]  957 	movx	a,@dptr
      0003F6 F9               [12]  958 	mov	r1,a
      0003F7 A3               [24]  959 	inc	dptr
      0003F8 E0               [24]  960 	movx	a,@dptr
                                    961 ;	src/main.c:290: stop = (setup->index>125)?125:setup->index;
      0003F9 8E 82            [24]  962 	mov	dpl,r6
      0003FB 8F 83            [24]  963 	mov	dph,r7
      0003FD A3               [24]  964 	inc	dptr
      0003FE A3               [24]  965 	inc	dptr
      0003FF A3               [24]  966 	inc	dptr
      000400 A3               [24]  967 	inc	dptr
      000401 E0               [24]  968 	movx	a,@dptr
      000402 F8               [12]  969 	mov	r0,a
      000403 A3               [24]  970 	inc	dptr
      000404 E0               [24]  971 	movx	a,@dptr
      000405 FA               [12]  972 	mov	r2,a
      000406 C3               [12]  973 	clr	c
      000407 74 7D            [12]  974 	mov	a,#0x7D
      000409 98               [12]  975 	subb	a,r0
      00040A E4               [12]  976 	clr	a
      00040B 9A               [12]  977 	subb	a,r2
      00040C 50 08            [24]  978 	jnc	00164$
      00040E 75 10 7D         [24]  979 	mov	_handleUsbVendorSetup_sloc0_1_0,#0x7D
      000411 75 11 00         [24]  980 	mov	(_handleUsbVendorSetup_sloc0_1_0 + 1),#0x00
      000414 80 04            [24]  981 	sjmp	00165$
      000416                        982 00164$:
      000416 88 10            [24]  983 	mov	_handleUsbVendorSetup_sloc0_1_0,r0
      000418 8A 11            [24]  984 	mov	(_handleUsbVendorSetup_sloc0_1_0 + 1),r2
      00041A                        985 00165$:
      00041A AA 10            [24]  986 	mov	r2,_handleUsbVendorSetup_sloc0_1_0
                                    987 ;	src/main.c:292: if (radioGetDataRate() == DATA_RATE_2M)
      00041C C0 04            [24]  988 	push	ar4
      00041E C0 03            [24]  989 	push	ar3
      000420 C0 02            [24]  990 	push	ar2
      000422 C0 01            [24]  991 	push	ar1
      000424 12 0A 45         [24]  992 	lcall	_radioGetDataRate
      000427 A8 82            [24]  993 	mov	r0,dpl
      000429 D0 01            [24]  994 	pop	ar1
      00042B D0 02            [24]  995 	pop	ar2
      00042D D0 03            [24]  996 	pop	ar3
      00042F D0 04            [24]  997 	pop	ar4
      000431 B8 02 06         [24]  998 	cjne	r0,#0x02,00109$
                                    999 ;	src/main.c:293: inc = 2; //2M channel are 2MHz wide
      000434 90 80 49         [24] 1000 	mov	dptr,#_handleUsbVendorSetup_inc_3_66
      000437 74 02            [12] 1001 	mov	a,#0x02
      000439 F0               [24] 1002 	movx	@dptr,a
      00043A                       1003 00109$:
                                   1004 ;	src/main.c:296: OUT0BC = BCDUMMY;
      00043A 90 C7 C5         [24] 1005 	mov	dptr,#0xC7C5
      00043D 74 01            [12] 1006 	mov	a,#0x01
      00043F F0               [24] 1007 	movx	@dptr,a
                                   1008 ;	src/main.c:297: while (EP0CS & OUTBSY);
      000440                       1009 00110$:
      000440 90 C7 B4         [24] 1010 	mov	dptr,#0xC7B4
      000443 E0               [24] 1011 	movx	a,@dptr
      000444 F8               [12] 1012 	mov	r0,a
      000445 20 E3 F8         [24] 1013 	jb	acc.3,00110$
                                   1014 ;	src/main.c:299: memcpy(tbuffer, OUT0BUF, setup->length);
      000448 C0 02            [24] 1015 	push	ar2
      00044A 8B 82            [24] 1016 	mov	dpl,r3
      00044C 8C 83            [24] 1017 	mov	dph,r4
      00044E E0               [24] 1018 	movx	a,@dptr
      00044F F8               [12] 1019 	mov	r0,a
      000450 A3               [24] 1020 	inc	dptr
      000451 E0               [24] 1021 	movx	a,@dptr
      000452 FA               [12] 1022 	mov	r2,a
      000453 90 80 85         [24] 1023 	mov	dptr,#_memcpy_PARM_2
      000456 74 C0            [12] 1024 	mov	a,#_OUT0BUF
      000458 F0               [24] 1025 	movx	@dptr,a
      000459 74 C6            [12] 1026 	mov	a,#(_OUT0BUF >> 8)
      00045B A3               [24] 1027 	inc	dptr
      00045C F0               [24] 1028 	movx	@dptr,a
      00045D E4               [12] 1029 	clr	a
      00045E A3               [24] 1030 	inc	dptr
      00045F F0               [24] 1031 	movx	@dptr,a
      000460 90 80 88         [24] 1032 	mov	dptr,#_memcpy_PARM_3
      000463 E8               [12] 1033 	mov	a,r0
      000464 F0               [24] 1034 	movx	@dptr,a
      000465 EA               [12] 1035 	mov	a,r2
      000466 A3               [24] 1036 	inc	dptr
      000467 F0               [24] 1037 	movx	@dptr,a
      000468 90 80 00         [24] 1038 	mov	dptr,#_tbuffer
      00046B 75 F0 00         [24] 1039 	mov	b,#0x00
      00046E C0 04            [24] 1040 	push	ar4
      000470 C0 03            [24] 1041 	push	ar3
      000472 C0 02            [24] 1042 	push	ar2
      000474 C0 01            [24] 1043 	push	ar1
      000476 12 15 38         [24] 1044 	lcall	_memcpy
      000479 D0 01            [24] 1045 	pop	ar1
      00047B D0 02            [24] 1046 	pop	ar2
      00047D D0 03            [24] 1047 	pop	ar3
      00047F D0 04            [24] 1048 	pop	ar4
                                   1049 ;	src/main.c:300: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
      000481 90 80 46         [24] 1050 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      000484 E9               [12] 1051 	mov	a,r1
      000485 F0               [24] 1052 	movx	@dptr,a
      000486 E4               [12] 1053 	clr	a
      000487 A3               [24] 1054 	inc	dptr
      000488 F0               [24] 1055 	movx	@dptr,a
      000489 90 80 49         [24] 1056 	mov	dptr,#_handleUsbVendorSetup_inc_3_66
      00048C E0               [24] 1057 	movx	a,@dptr
      00048D F5 10            [12] 1058 	mov	_handleUsbVendorSetup_sloc0_1_0,a
                                   1059 ;	src/main.c:334: usbDismissSetup();
      00048F D0 02            [24] 1060 	pop	ar2
                                   1061 ;	src/main.c:300: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
      000491                       1062 00160$:
      000491 8A 00            [24] 1063 	mov	ar0,r2
      000493 79 00            [12] 1064 	mov	r1,#0x00
      000495 08               [12] 1065 	inc	r0
      000496 B8 00 01         [24] 1066 	cjne	r0,#0x00,00290$
      000499 09               [12] 1067 	inc	r1
      00049A                       1068 00290$:
      00049A 90 80 46         [24] 1069 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      00049D E0               [24] 1070 	movx	a,@dptr
      00049E F5 12            [12] 1071 	mov	_handleUsbVendorSetup_sloc1_1_0,a
      0004A0 A3               [24] 1072 	inc	dptr
      0004A1 E0               [24] 1073 	movx	a,@dptr
      0004A2 F5 13            [12] 1074 	mov	(_handleUsbVendorSetup_sloc1_1_0 + 1),a
      0004A4 C3               [12] 1075 	clr	c
      0004A5 E5 12            [12] 1076 	mov	a,_handleUsbVendorSetup_sloc1_1_0
      0004A7 98               [12] 1077 	subb	a,r0
      0004A8 E5 13            [12] 1078 	mov	a,(_handleUsbVendorSetup_sloc1_1_0 + 1)
      0004AA 64 80            [12] 1079 	xrl	a,#0x80
      0004AC 89 F0            [24] 1080 	mov	b,r1
      0004AE 63 F0 80         [24] 1081 	xrl	b,#0x80
      0004B1 95 F0            [12] 1082 	subb	a,b
      0004B3 40 03            [24] 1083 	jc	00291$
      0004B5 02 05 97         [24] 1084 	ljmp	00118$
      0004B8                       1085 00291$:
      0004B8 90 80 42         [24] 1086 	mov	dptr,#_scannLength
      0004BB E0               [24] 1087 	movx	a,@dptr
      0004BC F9               [12] 1088 	mov	r1,a
      0004BD C3               [12] 1089 	clr	c
      0004BE 64 80            [12] 1090 	xrl	a,#0x80
      0004C0 94 BF            [12] 1091 	subb	a,#0xbf
      0004C2 40 03            [24] 1092 	jc	00292$
      0004C4 02 05 97         [24] 1093 	ljmp	00118$
      0004C7                       1094 00292$:
                                   1095 ;	src/main.c:302: radioSetChannel(i);
      0004C7 A9 12            [24] 1096 	mov	r1,_handleUsbVendorSetup_sloc1_1_0
      0004C9 89 82            [24] 1097 	mov	dpl,r1
      0004CB C0 04            [24] 1098 	push	ar4
      0004CD C0 03            [24] 1099 	push	ar3
      0004CF C0 02            [24] 1100 	push	ar2
      0004D1 12 09 FE         [24] 1101 	lcall	_radioSetChannel
      0004D4 D0 02            [24] 1102 	pop	ar2
      0004D6 D0 03            [24] 1103 	pop	ar3
      0004D8 D0 04            [24] 1104 	pop	ar4
                                   1105 ;	src/main.c:303: status = radioSendPacket(tbuffer, setup->length, rbuffer, &rlen);
      0004DA 8B 82            [24] 1106 	mov	dpl,r3
      0004DC 8C 83            [24] 1107 	mov	dph,r4
      0004DE E0               [24] 1108 	movx	a,@dptr
      0004DF F8               [12] 1109 	mov	r0,a
      0004E0 A3               [24] 1110 	inc	dptr
      0004E1 E0               [24] 1111 	movx	a,@dptr
      0004E2 90 80 58         [24] 1112 	mov	dptr,#_radioSendPacket_PARM_2
      0004E5 E8               [12] 1113 	mov	a,r0
      0004E6 F0               [24] 1114 	movx	@dptr,a
      0004E7 90 80 59         [24] 1115 	mov	dptr,#_radioSendPacket_PARM_3
      0004EA 74 21            [12] 1116 	mov	a,#_rbuffer
      0004EC F0               [24] 1117 	movx	@dptr,a
      0004ED 74 80            [12] 1118 	mov	a,#(_rbuffer >> 8)
      0004EF A3               [24] 1119 	inc	dptr
      0004F0 F0               [24] 1120 	movx	@dptr,a
      0004F1 90 80 5B         [24] 1121 	mov	dptr,#_radioSendPacket_PARM_4
      0004F4 74 48            [12] 1122 	mov	a,#_handleUsbVendorSetup_rlen_3_66
      0004F6 F0               [24] 1123 	movx	@dptr,a
      0004F7 74 80            [12] 1124 	mov	a,#(_handleUsbVendorSetup_rlen_3_66 >> 8)
      0004F9 A3               [24] 1125 	inc	dptr
      0004FA F0               [24] 1126 	movx	@dptr,a
      0004FB E4               [12] 1127 	clr	a
      0004FC A3               [24] 1128 	inc	dptr
      0004FD F0               [24] 1129 	movx	@dptr,a
      0004FE 90 80 00         [24] 1130 	mov	dptr,#_tbuffer
      000501 C0 04            [24] 1131 	push	ar4
      000503 C0 03            [24] 1132 	push	ar3
      000505 C0 02            [24] 1133 	push	ar2
      000507 12 08 7B         [24] 1134 	lcall	_radioSendPacket
      00050A A9 82            [24] 1135 	mov	r1,dpl
      00050C D0 02            [24] 1136 	pop	ar2
      00050E D0 03            [24] 1137 	pop	ar3
      000510 D0 04            [24] 1138 	pop	ar4
                                   1139 ;	src/main.c:305: if (status)
      000512 E9               [12] 1140 	mov	a,r1
      000513 60 10            [24] 1141 	jz	00114$
                                   1142 ;	src/main.c:306: IN0BUF[scannLength++] = i;
      000515 90 80 42         [24] 1143 	mov	dptr,#_scannLength
      000518 E0               [24] 1144 	movx	a,@dptr
      000519 F8               [12] 1145 	mov	r0,a
      00051A 04               [12] 1146 	inc	a
      00051B F0               [24] 1147 	movx	@dptr,a
      00051C 88 82            [24] 1148 	mov	dpl,r0
      00051E 75 83 C7         [24] 1149 	mov	dph,#(_IN0BUF >> 8)
      000521 E5 12            [12] 1150 	mov	a,_handleUsbVendorSetup_sloc1_1_0
      000523 F8               [12] 1151 	mov	r0,a
      000524 F0               [24] 1152 	movx	@dptr,a
      000525                       1153 00114$:
                                   1154 ;	src/main.c:308: ledTimeout = 2;
      000525 90 80 7E         [24] 1155 	mov	dptr,#_ledTimeout
      000528 74 02            [12] 1156 	mov	a,#0x02
      00052A F0               [24] 1157 	movx	@dptr,a
      00052B E4               [12] 1158 	clr	a
      00052C A3               [24] 1159 	inc	dptr
      00052D F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	src/main.c:309: ledSet(LED_GREEN | LED_RED, false);
      00052E C2 05            [12] 1162 	clr	_ledSet_PARM_2
      000530 75 82 03         [24] 1163 	mov	dpl,#0x03
      000533 C0 04            [24] 1164 	push	ar4
      000535 C0 03            [24] 1165 	push	ar3
      000537 C0 02            [24] 1166 	push	ar2
      000539 C0 01            [24] 1167 	push	ar1
      00053B 12 14 8C         [24] 1168 	lcall	_ledSet
      00053E D0 01            [24] 1169 	pop	ar1
      000540 D0 02            [24] 1170 	pop	ar2
      000542 D0 03            [24] 1171 	pop	ar3
      000544 D0 04            [24] 1172 	pop	ar4
                                   1173 ;	src/main.c:310: if(status)
      000546 E9               [12] 1174 	mov	a,r1
      000547 60 16            [24] 1175 	jz	00116$
                                   1176 ;	src/main.c:311: ledSet(LED_GREEN, true);
      000549 D2 05            [12] 1177 	setb	_ledSet_PARM_2
      00054B 75 82 02         [24] 1178 	mov	dpl,#0x02
      00054E C0 04            [24] 1179 	push	ar4
      000550 C0 03            [24] 1180 	push	ar3
      000552 C0 02            [24] 1181 	push	ar2
      000554 12 14 8C         [24] 1182 	lcall	_ledSet
      000557 D0 02            [24] 1183 	pop	ar2
      000559 D0 03            [24] 1184 	pop	ar3
      00055B D0 04            [24] 1185 	pop	ar4
      00055D 80 14            [24] 1186 	sjmp	00161$
      00055F                       1187 00116$:
                                   1188 ;	src/main.c:313: ledSet(LED_RED, true);
      00055F D2 05            [12] 1189 	setb	_ledSet_PARM_2
      000561 75 82 01         [24] 1190 	mov	dpl,#0x01
      000564 C0 04            [24] 1191 	push	ar4
      000566 C0 03            [24] 1192 	push	ar3
      000568 C0 02            [24] 1193 	push	ar2
      00056A 12 14 8C         [24] 1194 	lcall	_ledSet
      00056D D0 02            [24] 1195 	pop	ar2
      00056F D0 03            [24] 1196 	pop	ar3
      000571 D0 04            [24] 1197 	pop	ar4
      000573                       1198 00161$:
                                   1199 ;	src/main.c:300: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
      000573 C0 02            [24] 1200 	push	ar2
      000575 E5 10            [12] 1201 	mov	a,_handleUsbVendorSetup_sloc0_1_0
      000577 F5 12            [12] 1202 	mov	_handleUsbVendorSetup_sloc1_1_0,a
      000579 33               [12] 1203 	rlc	a
      00057A 95 E0            [12] 1204 	subb	a,acc
      00057C F5 13            [12] 1205 	mov	(_handleUsbVendorSetup_sloc1_1_0 + 1),a
      00057E 90 80 46         [24] 1206 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      000581 E0               [24] 1207 	movx	a,@dptr
      000582 F9               [12] 1208 	mov	r1,a
      000583 A3               [24] 1209 	inc	dptr
      000584 E0               [24] 1210 	movx	a,@dptr
      000585 FA               [12] 1211 	mov	r2,a
      000586 90 80 46         [24] 1212 	mov	dptr,#_handleUsbVendorSetup_i_3_66
      000589 E5 12            [12] 1213 	mov	a,_handleUsbVendorSetup_sloc1_1_0
      00058B 29               [12] 1214 	add	a,r1
      00058C F0               [24] 1215 	movx	@dptr,a
      00058D E5 13            [12] 1216 	mov	a,(_handleUsbVendorSetup_sloc1_1_0 + 1)
      00058F 3A               [12] 1217 	addc	a,r2
      000590 A3               [24] 1218 	inc	dptr
      000591 F0               [24] 1219 	movx	@dptr,a
      000592 D0 02            [24] 1220 	pop	ar2
      000594 02 04 91         [24] 1221 	ljmp	00160$
      000597                       1222 00118$:
                                   1223 ;	src/main.c:317: usbAckSetup();
                                   1224 ;	src/main.c:318: return;
      000597 02 14 43         [24] 1225 	ljmp	_usbAckSetup
      00059A                       1226 00126$:
                                   1227 ;	src/main.c:320: else if(setup->request == CHANNEL_SCANN && setup->requestType == 0xC0)
      00059A ED               [12] 1228 	mov	a,r5
      00059B 60 3D            [24] 1229 	jz	00157$
      00059D 8E 82            [24] 1230 	mov	dpl,r6
      00059F 8F 83            [24] 1231 	mov	dph,r7
      0005A1 E0               [24] 1232 	movx	a,@dptr
      0005A2 FD               [12] 1233 	mov	r5,a
      0005A3 BD C0 34         [24] 1234 	cjne	r5,#0xC0,00157$
                                   1235 ;	src/main.c:324: IN0BC = (setup->length>scannLength)?scannLength:setup->length;
      0005A6 74 06            [12] 1236 	mov	a,#0x06
      0005A8 2E               [12] 1237 	add	a,r6
      0005A9 F5 82            [12] 1238 	mov	dpl,a
      0005AB E4               [12] 1239 	clr	a
      0005AC 3F               [12] 1240 	addc	a,r7
      0005AD F5 83            [12] 1241 	mov	dph,a
      0005AF E0               [24] 1242 	movx	a,@dptr
      0005B0 FE               [12] 1243 	mov	r6,a
      0005B1 A3               [24] 1244 	inc	dptr
      0005B2 E0               [24] 1245 	movx	a,@dptr
      0005B3 FF               [12] 1246 	mov	r7,a
      0005B4 90 80 42         [24] 1247 	mov	dptr,#_scannLength
      0005B7 E0               [24] 1248 	movx	a,@dptr
      0005B8 FC               [12] 1249 	mov	r4,a
      0005B9 33               [12] 1250 	rlc	a
      0005BA 95 E0            [12] 1251 	subb	a,acc
      0005BC FD               [12] 1252 	mov	r5,a
      0005BD C3               [12] 1253 	clr	c
      0005BE EC               [12] 1254 	mov	a,r4
      0005BF 9E               [12] 1255 	subb	a,r6
      0005C0 ED               [12] 1256 	mov	a,r5
      0005C1 9F               [12] 1257 	subb	a,r7
      0005C2 50 02            [24] 1258 	jnc	00166$
      0005C4 80 04            [24] 1259 	sjmp	00167$
      0005C6                       1260 00166$:
      0005C6 8E 04            [24] 1261 	mov	ar4,r6
      0005C8 8F 05            [24] 1262 	mov	ar5,r7
      0005CA                       1263 00167$:
      0005CA 90 C7 B5         [24] 1264 	mov	dptr,#0xC7B5
      0005CD EC               [12] 1265 	mov	a,r4
      0005CE F0               [24] 1266 	movx	@dptr,a
                                   1267 ;	src/main.c:325: while (EP0CS & INBSY);
      0005CF                       1268 00119$:
      0005CF 90 C7 B4         [24] 1269 	mov	dptr,#0xC7B4
      0005D2 E0               [24] 1270 	movx	a,@dptr
      0005D3 FF               [12] 1271 	mov	r7,a
      0005D4 20 E2 F8         [24] 1272 	jb	acc.2,00119$
                                   1273 ;	src/main.c:328: usbAckSetup();
                                   1274 ;	src/main.c:329: return;
      0005D7 02 14 43         [24] 1275 	ljmp	_usbAckSetup
      0005DA                       1276 00157$:
                                   1277 ;	src/main.c:334: usbDismissSetup();
      0005DA 02 14 4A         [24] 1278 	ljmp	_usbDismissSetup
                                   1279 ;------------------------------------------------------------
                                   1280 ;Allocation info for local variables in function 'launchBootloader'
                                   1281 ;------------------------------------------------------------
                                   1282 ;bootloader                Allocated with name '_launchBootloader_bootloader_1_70'
                                   1283 ;------------------------------------------------------------
                                   1284 ;	src/main.c:339: void launchBootloader()
                                   1285 ;	-----------------------------------------
                                   1286 ;	 function launchBootloader
                                   1287 ;	-----------------------------------------
      0005DD                       1288 _launchBootloader:
                                   1289 ;	src/main.c:344: IEN0 = 0x00;
      0005DD 75 A8 00         [24] 1290 	mov	_IEN0,#0x00
                                   1291 ;	src/main.c:347: usbDeinit();
      0005E0 12 0B C4         [24] 1292 	lcall	_usbDeinit
                                   1293 ;	src/main.c:350: radioDeinit();
      0005E3 12 06 40         [24] 1294 	lcall	_radioDeinit
                                   1295 ;	src/main.c:353: bootloader();
      0005E6 02 78 00         [24] 1296 	ljmp	0x7800
                                   1297 	.area CSEG    (CODE)
                                   1298 	.area CONST   (CODE)
                                   1299 	.area XINIT   (CODE)
                                   1300 	.area CABS    (ABS,CODE)
