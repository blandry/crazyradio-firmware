                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
                                      4 ; This file was generated Mon Mar  2 13:45:47 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module led
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _USB_SWRDT
                                     13 	.globl _USB_WU
                                     14 	.globl _USB_SUSPEND
                                     15 	.globl _USB_IV4
                                     16 	.globl _USB_IV3
                                     17 	.globl _USB_IV2
                                     18 	.globl _USB_IV1
                                     19 	.globl _USB_IV0
                                     20 	.globl _EXF2
                                     21 	.globl _TF2
                                     22 	.globl _WU
                                     23 	.globl _USBIRQ_F
                                     24 	.globl _USBWU
                                     25 	.globl _SDONE
                                     26 	.globl _RFIRQ
                                     27 	.globl _RFRDY
                                     28 	.globl _P0_7
                                     29 	.globl _P0_6
                                     30 	.globl _P0_5
                                     31 	.globl _P0_4
                                     32 	.globl _P0_3
                                     33 	.globl _P0_2
                                     34 	.globl _P0_1
                                     35 	.globl _P0_0
                                     36 	.globl _RFCKEN
                                     37 	.globl _RFCSN
                                     38 	.globl _RFCE
                                     39 	.globl _USBSLP
                                     40 	.globl _USBCON
                                     41 	.globl _FCR
                                     42 	.globl _FPCR
                                     43 	.globl _FSR
                                     44 	.globl _CRCH
                                     45 	.globl _CRCL
                                     46 	.globl _CCH3
                                     47 	.globl _CCL3
                                     48 	.globl _CCH2
                                     49 	.globl _CCL2
                                     50 	.globl _CCH1
                                     51 	.globl _CCL1
                                     52 	.globl _CCEN
                                     53 	.globl _TH2
                                     54 	.globl _TL2
                                     55 	.globl _T2CON
                                     56 	.globl _TH1
                                     57 	.globl _TH0
                                     58 	.globl _TL1
                                     59 	.globl _TL0
                                     60 	.globl _TMOD
                                     61 	.globl _TCON
                                     62 	.globl _IRCON
                                     63 	.globl _IP1
                                     64 	.globl _IP0
                                     65 	.globl _IEN1
                                     66 	.globl _IEN0
                                     67 	.globl _SSSTAT
                                     68 	.globl _SSDAT
                                     69 	.globl _SSCONF
                                     70 	.globl _P0EXP
                                     71 	.globl _P0ALT
                                     72 	.globl _P0DIR
                                     73 	.globl _P0
                                     74 	.globl _RFCON
                                     75 	.globl _RFCTL
                                     76 	.globl _RFDAT
                                     77 	.globl _ledInit_PARM_2
                                     78 	.globl _IN5BUF
                                     79 	.globl _OUT5BUF
                                     80 	.globl _IN4BUF
                                     81 	.globl _OUT4BUF
                                     82 	.globl _IN3BUF
                                     83 	.globl _OUT3BUF
                                     84 	.globl _IN2BUF
                                     85 	.globl _OUT2BUF
                                     86 	.globl _IN1BUF
                                     87 	.globl _OUT1BUF
                                     88 	.globl _IN0BUF
                                     89 	.globl _OUT0BUF
                                     90 	.globl _SETUPBUF
                                     91 	.globl _ledSet_PARM_2
                                     92 	.globl _ledInit
                                     93 	.globl _ledSet
                                     94 ;--------------------------------------------------------
                                     95 ; special function registers
                                     96 ;--------------------------------------------------------
                                     97 	.area RSEG    (ABS,DATA)
      000000                         98 	.org 0x0000
                           0000E5    99 _RFDAT	=	0x00e5
                           0000E6   100 _RFCTL	=	0x00e6
                           000090   101 _RFCON	=	0x0090
                           000080   102 _P0	=	0x0080
                           000094   103 _P0DIR	=	0x0094
                           000095   104 _P0ALT	=	0x0095
                           0000C9   105 _P0EXP	=	0x00c9
                           0000BC   106 _SSCONF	=	0x00bc
                           0000BD   107 _SSDAT	=	0x00bd
                           0000BE   108 _SSSTAT	=	0x00be
                           0000A8   109 _IEN0	=	0x00a8
                           0000B8   110 _IEN1	=	0x00b8
                           0000A9   111 _IP0	=	0x00a9
                           0000B9   112 _IP1	=	0x00b9
                           0000C0   113 _IRCON	=	0x00c0
                           000088   114 _TCON	=	0x0088
                           000089   115 _TMOD	=	0x0089
                           00008A   116 _TL0	=	0x008a
                           00008B   117 _TL1	=	0x008b
                           00008C   118 _TH0	=	0x008c
                           00008D   119 _TH1	=	0x008d
                           0000C8   120 _T2CON	=	0x00c8
                           0000CC   121 _TL2	=	0x00cc
                           0000CD   122 _TH2	=	0x00cd
                           0000C1   123 _CCEN	=	0x00c1
                           0000C2   124 _CCL1	=	0x00c2
                           0000C3   125 _CCH1	=	0x00c3
                           0000C4   126 _CCL2	=	0x00c4
                           0000C5   127 _CCH2	=	0x00c5
                           0000C6   128 _CCL3	=	0x00c6
                           0000C7   129 _CCH3	=	0x00c7
                           0000CA   130 _CRCL	=	0x00ca
                           0000CB   131 _CRCH	=	0x00cb
                           0000F8   132 _FSR	=	0x00f8
                           0000F9   133 _FPCR	=	0x00f9
                           0000FA   134 _FCR	=	0x00fa
                           0000A0   135 _USBCON	=	0x00a0
                           0000D9   136 _USBSLP	=	0x00d9
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000090   142 _RFCE	=	0x0090
                           000091   143 _RFCSN	=	0x0091
                           000092   144 _RFCKEN	=	0x0092
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           0000C0   153 _RFRDY	=	0x00c0
                           0000C1   154 _RFIRQ	=	0x00c1
                           0000C2   155 _SDONE	=	0x00c2
                           0000C3   156 _USBWU	=	0x00c3
                           0000C4   157 _USBIRQ_F	=	0x00c4
                           0000C5   158 _WU	=	0x00c5
                           0000C6   159 _TF2	=	0x00c6
                           0000C7   160 _EXF2	=	0x00c7
                           0000A0   161 _USB_IV0	=	0x00a0
                           0000A1   162 _USB_IV1	=	0x00a1
                           0000A2   163 _USB_IV2	=	0x00a2
                           0000A3   164 _USB_IV3	=	0x00a3
                           0000A4   165 _USB_IV4	=	0x00a4
                           0000A5   166 _USB_SUSPEND	=	0x00a5
                           0000A6   167 _USB_WU	=	0x00a6
                           0000A7   168 _USB_SWRDT	=	0x00a7
                                    169 ;--------------------------------------------------------
                                    170 ; overlayable register banks
                                    171 ;--------------------------------------------------------
                                    172 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        173 	.ds 8
                                    174 ;--------------------------------------------------------
                                    175 ; internal ram data
                                    176 ;--------------------------------------------------------
                                    177 	.area DSEG    (DATA)
                                    178 ;--------------------------------------------------------
                                    179 ; overlayable items in internal ram 
                                    180 ;--------------------------------------------------------
                                    181 ;--------------------------------------------------------
                                    182 ; indirectly addressable internal ram data
                                    183 ;--------------------------------------------------------
                                    184 	.area ISEG    (DATA)
                                    185 ;--------------------------------------------------------
                                    186 ; absolute internal ram data
                                    187 ;--------------------------------------------------------
                                    188 	.area IABS    (ABS,DATA)
                                    189 	.area IABS    (ABS,DATA)
                                    190 ;--------------------------------------------------------
                                    191 ; bit data
                                    192 ;--------------------------------------------------------
                                    193 	.area BSEG    (BIT)
      000006                        194 _ledSet_PARM_2:
      000006                        195 	.ds 1
                                    196 ;--------------------------------------------------------
                                    197 ; paged external ram data
                                    198 ;--------------------------------------------------------
                                    199 	.area PSEG    (PAG,XDATA)
                                    200 ;--------------------------------------------------------
                                    201 ; external ram data
                                    202 ;--------------------------------------------------------
                                    203 	.area XSEG    (XDATA)
                           00C7E8   204 _SETUPBUF	=	0xc7e8
                           00C6C0   205 _OUT0BUF	=	0xc6c0
                           00C700   206 _IN0BUF	=	0xc700
                           00C640   207 _OUT1BUF	=	0xc640
                           00C680   208 _IN1BUF	=	0xc680
                           00C5C0   209 _OUT2BUF	=	0xc5c0
                           00C600   210 _IN2BUF	=	0xc600
                           00C540   211 _OUT3BUF	=	0xc540
                           00C580   212 _IN3BUF	=	0xc580
                           00C4C0   213 _OUT4BUF	=	0xc4c0
                           00C500   214 _IN4BUF	=	0xc500
                           00C440   215 _OUT5BUF	=	0xc440
                           00C480   216 _IN5BUF	=	0xc480
      008079                        217 _redPin:
      008079                        218 	.ds 1
      00807A                        219 _greenPin:
      00807A                        220 	.ds 1
      00807B                        221 _ledInit_PARM_2:
      00807B                        222 	.ds 1
      00807C                        223 _ledInit_redpin_1_3:
      00807C                        224 	.ds 1
      00807D                        225 _ledSet_led_1_5:
      00807D                        226 	.ds 1
                                    227 ;--------------------------------------------------------
                                    228 ; absolute external ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area XABS    (ABS,XDATA)
                                    231 ;--------------------------------------------------------
                                    232 ; external initialized ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area XISEG   (XDATA)
                                    235 	.area HOME    (CODE)
                                    236 	.area GSINIT0 (CODE)
                                    237 	.area GSINIT1 (CODE)
                                    238 	.area GSINIT2 (CODE)
                                    239 	.area GSINIT3 (CODE)
                                    240 	.area GSINIT4 (CODE)
                                    241 	.area GSINIT5 (CODE)
                                    242 	.area GSINIT  (CODE)
                                    243 	.area GSFINAL (CODE)
                                    244 	.area CSEG    (CODE)
                                    245 ;--------------------------------------------------------
                                    246 ; global & static initialisations
                                    247 ;--------------------------------------------------------
                                    248 	.area HOME    (CODE)
                                    249 	.area GSINIT  (CODE)
                                    250 	.area GSFINAL (CODE)
                                    251 	.area GSINIT  (CODE)
                                    252 ;--------------------------------------------------------
                                    253 ; Home
                                    254 ;--------------------------------------------------------
                                    255 	.area HOME    (CODE)
                                    256 	.area HOME    (CODE)
                                    257 ;--------------------------------------------------------
                                    258 ; code
                                    259 ;--------------------------------------------------------
                                    260 	.area CSEG    (CODE)
                                    261 ;------------------------------------------------------------
                                    262 ;Allocation info for local variables in function 'ledInit'
                                    263 ;------------------------------------------------------------
                                    264 ;greenpin                  Allocated with name '_ledInit_PARM_2'
                                    265 ;redpin                    Allocated with name '_ledInit_redpin_1_3'
                                    266 ;------------------------------------------------------------
                                    267 ;	src/led.c:33: void ledInit(unsigned char redpin, unsigned char greenpin)
                                    268 ;	-----------------------------------------
                                    269 ;	 function ledInit
                                    270 ;	-----------------------------------------
      001453                        271 _ledInit:
                           000007   272 	ar7 = 0x07
                           000006   273 	ar6 = 0x06
                           000005   274 	ar5 = 0x05
                           000004   275 	ar4 = 0x04
                           000003   276 	ar3 = 0x03
                           000002   277 	ar2 = 0x02
                           000001   278 	ar1 = 0x01
                           000000   279 	ar0 = 0x00
      001453 E5 82            [12]  280 	mov	a,dpl
      001455 90 80 7C         [24]  281 	mov	dptr,#_ledInit_redpin_1_3
      001458 F0               [24]  282 	movx	@dptr,a
                                    283 ;	src/led.c:35: redPin = redpin;
      001459 E0               [24]  284 	movx	a,@dptr
      00145A FF               [12]  285 	mov	r7,a
      00145B 90 80 79         [24]  286 	mov	dptr,#_redPin
      00145E F0               [24]  287 	movx	@dptr,a
                                    288 ;	src/led.c:36: greenPin = greenpin;
      00145F 90 80 7B         [24]  289 	mov	dptr,#_ledInit_PARM_2
      001462 E0               [24]  290 	movx	a,@dptr
      001463 FE               [12]  291 	mov	r6,a
      001464 90 80 7A         [24]  292 	mov	dptr,#_greenPin
      001467 F0               [24]  293 	movx	@dptr,a
                                    294 ;	src/led.c:39: P0DIR &= ~((1<<redPin) | (1<<greenPin));
      001468 8F F0            [24]  295 	mov	b,r7
      00146A 05 F0            [12]  296 	inc	b
      00146C 74 01            [12]  297 	mov	a,#0x01
      00146E 80 02            [24]  298 	sjmp	00105$
      001470                        299 00103$:
      001470 25 E0            [12]  300 	add	a,acc
      001472                        301 00105$:
      001472 D5 F0 FB         [24]  302 	djnz	b,00103$
      001475 FF               [12]  303 	mov	r7,a
      001476 8E F0            [24]  304 	mov	b,r6
      001478 05 F0            [12]  305 	inc	b
      00147A 74 01            [12]  306 	mov	a,#0x01
      00147C 80 02            [24]  307 	sjmp	00108$
      00147E                        308 00106$:
      00147E 25 E0            [12]  309 	add	a,acc
      001480                        310 00108$:
      001480 D5 F0 FB         [24]  311 	djnz	b,00106$
      001483 42 07            [12]  312 	orl	ar7,a
      001485 EF               [12]  313 	mov	a,r7
      001486 F4               [12]  314 	cpl	a
      001487 FF               [12]  315 	mov	r7,a
      001488 52 94            [12]  316 	anl	_P0DIR,a
                                    317 ;	src/led.c:41: P0 &= ~((1<<redPin) | (1<<greenPin));
      00148A EF               [12]  318 	mov	a,r7
      00148B 52 80            [12]  319 	anl	_P0,a
      00148D 22               [24]  320 	ret
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'ledSet'
                                    323 ;------------------------------------------------------------
                                    324 ;led                       Allocated with name '_ledSet_led_1_5'
                                    325 ;------------------------------------------------------------
                                    326 ;	src/led.c:44: void ledSet(led_t led, bool value)
                                    327 ;	-----------------------------------------
                                    328 ;	 function ledSet
                                    329 ;	-----------------------------------------
      00148E                        330 _ledSet:
      00148E E5 82            [12]  331 	mov	a,dpl
      001490 90 80 7D         [24]  332 	mov	dptr,#_ledSet_led_1_5
      001493 F0               [24]  333 	movx	@dptr,a
                                    334 ;	src/led.c:46: if(led&LED_RED)
      001494 E0               [24]  335 	movx	a,@dptr
      001495 FF               [12]  336 	mov	r7,a
      001496 30 E0 30         [24]  337 	jnb	acc.0,00105$
                                    338 ;	src/led.c:48: if (value)
      001499 30 06 17         [24]  339 	jnb	_ledSet_PARM_2,00102$
                                    340 ;	src/led.c:49: P0 |= (1<<redPin);
      00149C 90 80 79         [24]  341 	mov	dptr,#_redPin
      00149F E0               [24]  342 	movx	a,@dptr
      0014A0 FE               [12]  343 	mov	r6,a
      0014A1 8E F0            [24]  344 	mov	b,r6
      0014A3 05 F0            [12]  345 	inc	b
      0014A5 74 01            [12]  346 	mov	a,#0x01
      0014A7 80 02            [24]  347 	sjmp	00129$
      0014A9                        348 00127$:
      0014A9 25 E0            [12]  349 	add	a,acc
      0014AB                        350 00129$:
      0014AB D5 F0 FB         [24]  351 	djnz	b,00127$
      0014AE FE               [12]  352 	mov	r6,a
      0014AF 42 80            [12]  353 	orl	_P0,a
      0014B1 80 16            [24]  354 	sjmp	00105$
      0014B3                        355 00102$:
                                    356 ;	src/led.c:51: P0 &= ~(1<<redPin);
      0014B3 90 80 79         [24]  357 	mov	dptr,#_redPin
      0014B6 E0               [24]  358 	movx	a,@dptr
      0014B7 FE               [12]  359 	mov	r6,a
      0014B8 8E F0            [24]  360 	mov	b,r6
      0014BA 05 F0            [12]  361 	inc	b
      0014BC 74 01            [12]  362 	mov	a,#0x01
      0014BE 80 02            [24]  363 	sjmp	00132$
      0014C0                        364 00130$:
      0014C0 25 E0            [12]  365 	add	a,acc
      0014C2                        366 00132$:
      0014C2 D5 F0 FB         [24]  367 	djnz	b,00130$
      0014C5 F4               [12]  368 	cpl	a
      0014C6 FE               [12]  369 	mov	r6,a
      0014C7 52 80            [12]  370 	anl	_P0,a
      0014C9                        371 00105$:
                                    372 ;	src/led.c:54: if (led & LED_GREEN) 
      0014C9 EF               [12]  373 	mov	a,r7
      0014CA 30 E1 2E         [24]  374 	jnb	acc.1,00111$
                                    375 ;	src/led.c:56: if (value)
      0014CD 30 06 15         [24]  376 	jnb	_ledSet_PARM_2,00107$
                                    377 ;	src/led.c:57: P0 |= (1<<greenPin);
      0014D0 90 80 7A         [24]  378 	mov	dptr,#_greenPin
      0014D3 E0               [24]  379 	movx	a,@dptr
      0014D4 FF               [12]  380 	mov	r7,a
      0014D5 8F F0            [24]  381 	mov	b,r7
      0014D7 05 F0            [12]  382 	inc	b
      0014D9 74 01            [12]  383 	mov	a,#0x01
      0014DB 80 02            [24]  384 	sjmp	00137$
      0014DD                        385 00135$:
      0014DD 25 E0            [12]  386 	add	a,acc
      0014DF                        387 00137$:
      0014DF D5 F0 FB         [24]  388 	djnz	b,00135$
      0014E2 42 80            [12]  389 	orl	_P0,a
      0014E4 22               [24]  390 	ret
      0014E5                        391 00107$:
                                    392 ;	src/led.c:59: P0 &= ~(1<<greenPin);
      0014E5 90 80 7A         [24]  393 	mov	dptr,#_greenPin
      0014E8 E0               [24]  394 	movx	a,@dptr
      0014E9 FF               [12]  395 	mov	r7,a
      0014EA 8F F0            [24]  396 	mov	b,r7
      0014EC 05 F0            [12]  397 	inc	b
      0014EE 74 01            [12]  398 	mov	a,#0x01
      0014F0 80 02            [24]  399 	sjmp	00140$
      0014F2                        400 00138$:
      0014F2 25 E0            [12]  401 	add	a,acc
      0014F4                        402 00140$:
      0014F4 D5 F0 FB         [24]  403 	djnz	b,00138$
      0014F7 F4               [12]  404 	cpl	a
      0014F8 FF               [12]  405 	mov	r7,a
      0014F9 52 80            [12]  406 	anl	_P0,a
      0014FB                        407 00111$:
      0014FB 22               [24]  408 	ret
                                    409 	.area CSEG    (CODE)
                                    410 	.area CONST   (CODE)
                                    411 	.area XINIT   (CODE)
                                    412 	.area CABS    (ABS,CODE)
