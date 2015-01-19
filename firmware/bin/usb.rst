                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
                                      4 ; This file was generated Mon Jan 19 14:54:25 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module usb
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _ledSet
                                     13 	.globl _memcpy
                                     14 	.globl _USB_SWRDT
                                     15 	.globl _USB_WU
                                     16 	.globl _USB_SUSPEND
                                     17 	.globl _USB_IV4
                                     18 	.globl _USB_IV3
                                     19 	.globl _USB_IV2
                                     20 	.globl _USB_IV1
                                     21 	.globl _USB_IV0
                                     22 	.globl _EXF2
                                     23 	.globl _TF2
                                     24 	.globl _WU
                                     25 	.globl _USBIRQ_F
                                     26 	.globl _USBWU
                                     27 	.globl _SDONE
                                     28 	.globl _RFIRQ
                                     29 	.globl _RFRDY
                                     30 	.globl _P0_7
                                     31 	.globl _P0_6
                                     32 	.globl _P0_5
                                     33 	.globl _P0_4
                                     34 	.globl _P0_3
                                     35 	.globl _P0_2
                                     36 	.globl _P0_1
                                     37 	.globl _P0_0
                                     38 	.globl _RFCKEN
                                     39 	.globl _RFCSN
                                     40 	.globl _RFCE
                                     41 	.globl _USBSLP
                                     42 	.globl _USBCON
                                     43 	.globl _FCR
                                     44 	.globl _FPCR
                                     45 	.globl _FSR
                                     46 	.globl _CRCH
                                     47 	.globl _CRCL
                                     48 	.globl _CCH3
                                     49 	.globl _CCL3
                                     50 	.globl _CCH2
                                     51 	.globl _CCL2
                                     52 	.globl _CCH1
                                     53 	.globl _CCL1
                                     54 	.globl _CCEN
                                     55 	.globl _TH2
                                     56 	.globl _TL2
                                     57 	.globl _T2CON
                                     58 	.globl _TH1
                                     59 	.globl _TH0
                                     60 	.globl _TL1
                                     61 	.globl _TL0
                                     62 	.globl _TMOD
                                     63 	.globl _TCON
                                     64 	.globl _IRCON
                                     65 	.globl _IP1
                                     66 	.globl _IP0
                                     67 	.globl _IEN1
                                     68 	.globl _IEN0
                                     69 	.globl _SSSTAT
                                     70 	.globl _SSDAT
                                     71 	.globl _SSCONF
                                     72 	.globl _P0EXP
                                     73 	.globl _P0ALT
                                     74 	.globl _P0DIR
                                     75 	.globl _P0
                                     76 	.globl _RFCON
                                     77 	.globl _RFCTL
                                     78 	.globl _RFDAT
                                     79 	.globl _usbBulkSend_PARM_3
                                     80 	.globl _usbBulkSend_PARM_2
                                     81 	.globl _inflow
                                     82 	.globl _IN5BUF
                                     83 	.globl _OUT5BUF
                                     84 	.globl _IN4BUF
                                     85 	.globl _OUT4BUF
                                     86 	.globl _IN3BUF
                                     87 	.globl _OUT3BUF
                                     88 	.globl _IN2BUF
                                     89 	.globl _OUT2BUF
                                     90 	.globl _IN1BUF
                                     91 	.globl _OUT1BUF
                                     92 	.globl _IN0BUF
                                     93 	.globl _OUT0BUF
                                     94 	.globl _SETUPBUF
                                     95 	.globl _usbInit
                                     96 	.globl _usbDeinit
                                     97 	.globl _usbGetState
                                     98 	.globl _usbWuIsr
                                     99 	.globl _usbIsr
                                    100 	.globl _usbBulkOutIsr
                                    101 	.globl _usbBulkInIsr
                                    102 	.globl _usbSetupIsr
                                    103 	.globl _usbVendorIsr
                                    104 	.globl _usbClassIsr
                                    105 	.globl _usbBulkSend
                                    106 	.globl _usbSendIdString
                                    107 	.globl _usbIsVendorSetup
                                    108 	.globl _usbGetSetupPacket
                                    109 	.globl _usbAckSetup
                                    110 	.globl _usbDismissSetup
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           0000E5   116 _RFDAT	=	0x00e5
                           0000E6   117 _RFCTL	=	0x00e6
                           000090   118 _RFCON	=	0x0090
                           000080   119 _P0	=	0x0080
                           000094   120 _P0DIR	=	0x0094
                           000095   121 _P0ALT	=	0x0095
                           0000C9   122 _P0EXP	=	0x00c9
                           0000BC   123 _SSCONF	=	0x00bc
                           0000BD   124 _SSDAT	=	0x00bd
                           0000BE   125 _SSSTAT	=	0x00be
                           0000A8   126 _IEN0	=	0x00a8
                           0000B8   127 _IEN1	=	0x00b8
                           0000A9   128 _IP0	=	0x00a9
                           0000B9   129 _IP1	=	0x00b9
                           0000C0   130 _IRCON	=	0x00c0
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008A   133 _TL0	=	0x008a
                           00008B   134 _TL1	=	0x008b
                           00008C   135 _TH0	=	0x008c
                           00008D   136 _TH1	=	0x008d
                           0000C8   137 _T2CON	=	0x00c8
                           0000CC   138 _TL2	=	0x00cc
                           0000CD   139 _TH2	=	0x00cd
                           0000C1   140 _CCEN	=	0x00c1
                           0000C2   141 _CCL1	=	0x00c2
                           0000C3   142 _CCH1	=	0x00c3
                           0000C4   143 _CCL2	=	0x00c4
                           0000C5   144 _CCH2	=	0x00c5
                           0000C6   145 _CCL3	=	0x00c6
                           0000C7   146 _CCH3	=	0x00c7
                           0000CA   147 _CRCL	=	0x00ca
                           0000CB   148 _CRCH	=	0x00cb
                           0000F8   149 _FSR	=	0x00f8
                           0000F9   150 _FPCR	=	0x00f9
                           0000FA   151 _FCR	=	0x00fa
                           0000A0   152 _USBCON	=	0x00a0
                           0000D9   153 _USBSLP	=	0x00d9
                                    154 ;--------------------------------------------------------
                                    155 ; special function bits
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000090   159 _RFCE	=	0x0090
                           000091   160 _RFCSN	=	0x0091
                           000092   161 _RFCKEN	=	0x0092
                           000080   162 _P0_0	=	0x0080
                           000081   163 _P0_1	=	0x0081
                           000082   164 _P0_2	=	0x0082
                           000083   165 _P0_3	=	0x0083
                           000084   166 _P0_4	=	0x0084
                           000085   167 _P0_5	=	0x0085
                           000086   168 _P0_6	=	0x0086
                           000087   169 _P0_7	=	0x0087
                           0000C0   170 _RFRDY	=	0x00c0
                           0000C1   171 _RFIRQ	=	0x00c1
                           0000C2   172 _SDONE	=	0x00c2
                           0000C3   173 _USBWU	=	0x00c3
                           0000C4   174 _USBIRQ_F	=	0x00c4
                           0000C5   175 _WU	=	0x00c5
                           0000C6   176 _TF2	=	0x00c6
                           0000C7   177 _EXF2	=	0x00c7
                           0000A0   178 _USB_IV0	=	0x00a0
                           0000A1   179 _USB_IV1	=	0x00a1
                           0000A2   180 _USB_IV2	=	0x00a2
                           0000A3   181 _USB_IV3	=	0x00a3
                           0000A4   182 _USB_IV4	=	0x00a4
                           0000A5   183 _USB_SUSPEND	=	0x00a5
                           0000A6   184 _USB_WU	=	0x00a6
                           0000A7   185 _USB_SWRDT	=	0x00a7
                                    186 ;--------------------------------------------------------
                                    187 ; overlayable register banks
                                    188 ;--------------------------------------------------------
                                    189 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        190 	.ds 8
                                    191 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        192 	.ds 8
                                    193 ;--------------------------------------------------------
                                    194 ; overlayable bit register bank
                                    195 ;--------------------------------------------------------
                                    196 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        197 bits:
      000021                        198 	.ds 1
                           008000   199 	b0 = bits[0]
                           008100   200 	b1 = bits[1]
                           008200   201 	b2 = bits[2]
                           008300   202 	b3 = bits[3]
                           008400   203 	b4 = bits[4]
                           008500   204 	b5 = bits[5]
                           008600   205 	b6 = bits[6]
                           008700   206 	b7 = bits[7]
                                    207 ;--------------------------------------------------------
                                    208 ; internal ram data
                                    209 ;--------------------------------------------------------
                                    210 	.area DSEG    (DATA)
      000014                        211 _usbBulkInIsr_sloc0_1_0:
      000014                        212 	.ds 2
      000016                        213 _usbSetupIsr_sloc0_1_0:
      000016                        214 	.ds 2
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable items in internal ram 
                                    217 ;--------------------------------------------------------
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
      000003                        231 _launchBootloader:
      000003                        232 	.ds 1
      000004                        233 _vendorSetup:
      000004                        234 	.ds 1
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
      00806C                        256 _configuration:
      00806C                        257 	.ds 1
      00806D                        258 _inflow::
      00806D                        259 	.ds 7
      008074                        260 _usbBulkInIsr_ep_1_41:
      008074                        261 	.ds 1
      008075                        262 _usbBulkSend_PARM_2:
      008075                        263 	.ds 3
      008078                        264 _usbBulkSend_PARM_3:
      008078                        265 	.ds 1
                                    266 ;--------------------------------------------------------
                                    267 ; absolute external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XABS    (ABS,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; external initialized ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XISEG   (XDATA)
      008093                        274 _state:
      008093                        275 	.ds 1
      008094                        276 _radioChannel:
      008094                        277 	.ds 1
      008095                        278 _dataRate:
      008095                        279 	.ds 1
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT0 (CODE)
                                    282 	.area GSINIT1 (CODE)
                                    283 	.area GSINIT2 (CODE)
                                    284 	.area GSINIT3 (CODE)
                                    285 	.area GSINIT4 (CODE)
                                    286 	.area GSINIT5 (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area CSEG    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 ;	src/usb.c:48: static __bit launchBootloader = 0;
      0000C6 C2 03            [12]  298 	clr	_launchBootloader
                                    299 ;	src/usb.c:51: static bool vendorSetup=false;
      0000C8 C2 04            [12]  300 	clr	_vendorSetup
                                    301 ;--------------------------------------------------------
                                    302 ; Home
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area HOME    (CODE)
                                    306 ;--------------------------------------------------------
                                    307 ; code
                                    308 ;--------------------------------------------------------
                                    309 	.area CSEG    (CODE)
                                    310 ;------------------------------------------------------------
                                    311 ;Allocation info for local variables in function 'usbInit'
                                    312 ;------------------------------------------------------------
                                    313 ;i                         Allocated with name '_usbInit_i_1_32'
                                    314 ;------------------------------------------------------------
                                    315 ;	src/usb.c:57: void usbInit() 
                                    316 ;	-----------------------------------------
                                    317 ;	 function usbInit
                                    318 ;	-----------------------------------------
      000B3B                        319 _usbInit:
                           000007   320 	ar7 = 0x07
                           000006   321 	ar6 = 0x06
                           000005   322 	ar5 = 0x05
                           000004   323 	ar4 = 0x04
                           000003   324 	ar3 = 0x03
                           000002   325 	ar2 = 0x02
                           000001   326 	ar1 = 0x01
                           000000   327 	ar0 = 0x00
                                    328 ;	src/usb.c:61: state = POWERED;
      000B3B 90 80 93         [24]  329 	mov	dptr,#_state
      000B3E E4               [12]  330 	clr	a
      000B3F F0               [24]  331 	movx	@dptr,a
                                    332 ;	src/usb.c:64: USBCON = WU;
      000B40 75 A0 40         [24]  333 	mov	_USBCON,#0x40
                                    334 ;	src/usb.c:67: USBCS |= DISCON;
      000B43 90 C7 D6         [24]  335 	mov	dptr,#0xC7D6
      000B46 E0               [24]  336 	movx	a,@dptr
      000B47 44 04            [12]  337 	orl	a,#0x04
      000B49 F0               [24]  338 	movx	@dptr,a
                                    339 ;	src/usb.c:69: for(i=0;i<50000;i++);
      000B4A 7C 50            [12]  340 	mov	r4,#0x50
      000B4C 7D C3            [12]  341 	mov	r5,#0xC3
      000B4E 7E 00            [12]  342 	mov	r6,#0x00
      000B50 7F 00            [12]  343 	mov	r7,#0x00
      000B52                        344 00104$:
      000B52 1C               [12]  345 	dec	r4
      000B53 BC FF 09         [24]  346 	cjne	r4,#0xFF,00114$
      000B56 1D               [12]  347 	dec	r5
      000B57 BD FF 05         [24]  348 	cjne	r5,#0xFF,00114$
      000B5A 1E               [12]  349 	dec	r6
      000B5B BE FF 01         [24]  350 	cjne	r6,#0xFF,00114$
      000B5E 1F               [12]  351 	dec	r7
      000B5F                        352 00114$:
      000B5F EC               [12]  353 	mov	a,r4
      000B60 4D               [12]  354 	orl	a,r5
      000B61 4E               [12]  355 	orl	a,r6
      000B62 4F               [12]  356 	orl	a,r7
      000B63 70 ED            [24]  357 	jnz	00104$
                                    358 ;	src/usb.c:70: USBCS &= ~DISCON;
      000B65 90 C7 D6         [24]  359 	mov	dptr,#0xC7D6
      000B68 E0               [24]  360 	movx	a,@dptr
      000B69 54 FB            [12]  361 	anl	a,#0xFB
      000B6B F0               [24]  362 	movx	@dptr,a
                                    363 ;	src/usb.c:73: INBULKVAL=0;   //IN EP
      000B6C 90 C7 DE         [24]  364 	mov	dptr,#0xC7DE
      000B6F E4               [12]  365 	clr	a
      000B70 F0               [24]  366 	movx	@dptr,a
                                    367 ;	src/usb.c:74: IN_IEN=0;
      000B71 90 C7 AC         [24]  368 	mov	dptr,#0xC7AC
      000B74 F0               [24]  369 	movx	@dptr,a
                                    370 ;	src/usb.c:75: OUTBULKVAL=0;  //OUT EP
      000B75 90 C7 DF         [24]  371 	mov	dptr,#0xC7DF
      000B78 F0               [24]  372 	movx	@dptr,a
                                    373 ;	src/usb.c:76: OUT_IEN=0;
      000B79 90 C7 AD         [24]  374 	mov	dptr,#0xC7AD
      000B7C F0               [24]  375 	movx	@dptr,a
                                    376 ;	src/usb.c:77: INISOVAL=0;    //ISO EP
      000B7D 90 C7 E0         [24]  377 	mov	dptr,#0xC7E0
      000B80 F0               [24]  378 	movx	@dptr,a
                                    379 ;	src/usb.c:78: OUTISOVAL=0;
      000B81 90 C7 00         [24]  380 	mov	dptr,#0xC700
      000B84 F0               [24]  381 	movx	@dptr,a
                                    382 ;	src/usb.c:81: USBIEN = URESIE | SUSPIE;
      000B85 90 C7 AE         [24]  383 	mov	dptr,#0xC7AE
      000B88 74 18            [12]  384 	mov	a,#0x18
      000B8A F0               [24]  385 	movx	@dptr,a
                                    386 ;	src/usb.c:84: IN_IRQ = 0xFF;
      000B8B 90 C7 A9         [24]  387 	mov	dptr,#0xC7A9
      000B8E 74 FF            [12]  388 	mov	a,#0xFF
      000B90 F0               [24]  389 	movx	@dptr,a
                                    390 ;	src/usb.c:85: OUT_IRQ = 0xFF;
      000B91 90 C7 AA         [24]  391 	mov	dptr,#0xC7AA
      000B94 F0               [24]  392 	movx	@dptr,a
                                    393 ;	src/usb.c:86: USBIRQ = 0xFF;
      000B95 90 C7 AB         [24]  394 	mov	dptr,#0xC7AB
      000B98 F0               [24]  395 	movx	@dptr,a
                                    396 ;	src/usb.c:91: BOUT1ADDR = 32;
      000B99 90 C7 81         [24]  397 	mov	dptr,#0xC781
      000B9C 74 20            [12]  398 	mov	a,#0x20
      000B9E F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/usb.c:92: BOUT2ADDR = 64;
      000B9F 90 C7 82         [24]  401 	mov	dptr,#0xC782
      000BA2 23               [12]  402 	rl	a
      000BA3 F0               [24]  403 	movx	@dptr,a
                                    404 ;	src/usb.c:93: BOUT3ADDR = 96;
      000BA4 90 C7 83         [24]  405 	mov	dptr,#0xC783
      000BA7 74 60            [12]  406 	mov	a,#0x60
      000BA9 F0               [24]  407 	movx	@dptr,a
                                    408 ;	src/usb.c:94: BINSTADDR = 0x40; // EPOUT_Size/4 = 256/4 = 64
      000BAA 90 C7 88         [24]  409 	mov	dptr,#0xC788
      000BAD 74 40            [12]  410 	mov	a,#0x40
      000BAF F0               [24]  411 	movx	@dptr,a
                                    412 ;	src/usb.c:95: BIN1ADDR  = 32;
      000BB0 90 C7 89         [24]  413 	mov	dptr,#0xC789
      000BB3 03               [12]  414 	rr	a
      000BB4 F0               [24]  415 	movx	@dptr,a
                                    416 ;	src/usb.c:96: BIN2ADDR  = 64;
      000BB5 90 C7 8A         [24]  417 	mov	dptr,#0xC78A
      000BB8 23               [12]  418 	rl	a
      000BB9 F0               [24]  419 	movx	@dptr,a
                                    420 ;	src/usb.c:97: BIN3ADDR  = 96;
      000BBA 90 C7 8B         [24]  421 	mov	dptr,#0xC78B
      000BBD 74 60            [12]  422 	mov	a,#0x60
      000BBF F0               [24]  423 	movx	@dptr,a
                                    424 ;	src/usb.c:100: IEN1 |= 0x18;  
      000BC0 43 B8 18         [24]  425 	orl	_IEN1,#0x18
      000BC3 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'usbDeinit'
                                    429 ;------------------------------------------------------------
                                    430 ;	src/usb.c:103: void usbDeinit()
                                    431 ;	-----------------------------------------
                                    432 ;	 function usbDeinit
                                    433 ;	-----------------------------------------
      000BC4                        434 _usbDeinit:
                                    435 ;	src/usb.c:105: state = POWERED; //Deactivate all mechanism
      000BC4 90 80 93         [24]  436 	mov	dptr,#_state
      000BC7 E4               [12]  437 	clr	a
      000BC8 F0               [24]  438 	movx	@dptr,a
                                    439 ;	src/usb.c:108: IEN1 &= (~0x18);
      000BC9 AF B8            [24]  440 	mov	r7,_IEN1
      000BCB 74 E7            [12]  441 	mov	a,#0xE7
      000BCD 5F               [12]  442 	anl	a,r7
      000BCE F5 B8            [12]  443 	mov	_IEN1,a
                                    444 ;	src/usb.c:111: USB_SUSPEND = 1;
      000BD0 D2 A5            [12]  445 	setb	_USB_SUSPEND
      000BD2 22               [24]  446 	ret
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'usbGetState'
                                    449 ;------------------------------------------------------------
                                    450 ;	src/usb.c:114: usbState_t usbGetState()
                                    451 ;	-----------------------------------------
                                    452 ;	 function usbGetState
                                    453 ;	-----------------------------------------
      000BD3                        454 _usbGetState:
                                    455 ;	src/usb.c:116: return state;
      000BD3 90 80 93         [24]  456 	mov	dptr,#_state
      000BD6 E0               [24]  457 	movx	a,@dptr
      000BD7 F5 82            [12]  458 	mov	dpl,a
      000BD9 22               [24]  459 	ret
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'usbWuIsr'
                                    462 ;------------------------------------------------------------
                                    463 ;	src/usb.c:119: void usbWuIsr() __interrupt(11)
                                    464 ;	-----------------------------------------
                                    465 ;	 function usbWuIsr
                                    466 ;	-----------------------------------------
      000BDA                        467 _usbWuIsr:
                                    468 ;	src/usb.c:122: return;
      000BDA 32               [24]  469 	reti
                                    470 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    471 ;	eliminated unneeded push/pop psw
                                    472 ;	eliminated unneeded push/pop dpl
                                    473 ;	eliminated unneeded push/pop dph
                                    474 ;	eliminated unneeded push/pop b
                                    475 ;	eliminated unneeded push/pop acc
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'usbIsr'
                                    478 ;------------------------------------------------------------
                                    479 ;	src/usb.c:127: void usbIsr() __interrupt(12)  __using(1)
                                    480 ;	-----------------------------------------
                                    481 ;	 function usbIsr
                                    482 ;	-----------------------------------------
      000BDB                        483 _usbIsr:
                           00000F   484 	ar7 = 0x0F
                           00000E   485 	ar6 = 0x0E
                           00000D   486 	ar5 = 0x0D
                           00000C   487 	ar4 = 0x0C
                           00000B   488 	ar3 = 0x0B
                           00000A   489 	ar2 = 0x0A
                           000009   490 	ar1 = 0x09
                           000008   491 	ar0 = 0x08
      000BDB C0 21            [24]  492 	push	bits
      000BDD C0 E0            [24]  493 	push	acc
      000BDF C0 F0            [24]  494 	push	b
      000BE1 C0 82            [24]  495 	push	dpl
      000BE3 C0 83            [24]  496 	push	dph
      000BE5 C0 07            [24]  497 	push	(0+7)
      000BE7 C0 06            [24]  498 	push	(0+6)
      000BE9 C0 05            [24]  499 	push	(0+5)
      000BEB C0 04            [24]  500 	push	(0+4)
      000BED C0 03            [24]  501 	push	(0+3)
      000BEF C0 02            [24]  502 	push	(0+2)
      000BF1 C0 01            [24]  503 	push	(0+1)
      000BF3 C0 00            [24]  504 	push	(0+0)
      000BF5 C0 D0            [24]  505 	push	psw
      000BF7 75 D0 08         [24]  506 	mov	psw,#0x08
                                    507 ;	src/usb.c:130: switch (IVEC) {
      000BFA 90 C7 A8         [24]  508 	mov	dptr,#0xC7A8
      000BFD E0               [24]  509 	movx	a,@dptr
      000BFE FF               [12]  510 	mov	r7,a
      000BFF 60 63            [24]  511 	jz	00101$
      000C01 BF 04 03         [24]  512 	cjne	r7,#0x04,00200$
      000C04 02 0C B5         [24]  513 	ljmp	00111$
      000C07                        514 00200$:
      000C07 BF 08 03         [24]  515 	cjne	r7,#0x08,00201$
      000C0A 02 0D 01         [24]  516 	ljmp	00115$
      000C0D                        517 00201$:
      000C0D BF 0C 03         [24]  518 	cjne	r7,#0x0C,00202$
      000C10 02 0D 0A         [24]  519 	ljmp	00116$
      000C13                        520 00202$:
      000C13 BF 10 03         [24]  521 	cjne	r7,#0x10,00203$
      000C16 02 0D 13         [24]  522 	ljmp	00117$
      000C19                        523 00203$:
      000C19 BF 18 03         [24]  524 	cjne	r7,#0x18,00204$
      000C1C 02 0D 3E         [24]  525 	ljmp	00118$
      000C1F                        526 00204$:
      000C1F BF 1C 03         [24]  527 	cjne	r7,#0x1C,00205$
      000C22 02 0D 52         [24]  528 	ljmp	00119$
      000C25                        529 00205$:
      000C25 BF 20 03         [24]  530 	cjne	r7,#0x20,00206$
      000C28 02 0D 66         [24]  531 	ljmp	00120$
      000C2B                        532 00206$:
      000C2B BF 24 03         [24]  533 	cjne	r7,#0x24,00207$
      000C2E 02 0D 6E         [24]  534 	ljmp	00121$
      000C31                        535 00207$:
      000C31 BF 28 03         [24]  536 	cjne	r7,#0x28,00208$
      000C34 02 0D 76         [24]  537 	ljmp	00122$
      000C37                        538 00208$:
      000C37 BF 2C 03         [24]  539 	cjne	r7,#0x2C,00209$
      000C3A 02 0D 7E         [24]  540 	ljmp	00123$
      000C3D                        541 00209$:
      000C3D BF 30 03         [24]  542 	cjne	r7,#0x30,00210$
      000C40 02 0D 86         [24]  543 	ljmp	00124$
      000C43                        544 00210$:
      000C43 BF 34 03         [24]  545 	cjne	r7,#0x34,00211$
      000C46 02 0D 8E         [24]  546 	ljmp	00125$
      000C49                        547 00211$:
      000C49 BF 38 03         [24]  548 	cjne	r7,#0x38,00212$
      000C4C 02 0D 96         [24]  549 	ljmp	00126$
      000C4F                        550 00212$:
      000C4F BF 3C 03         [24]  551 	cjne	r7,#0x3C,00213$
      000C52 02 0D 9E         [24]  552 	ljmp	00127$
      000C55                        553 00213$:
      000C55 BF 40 03         [24]  554 	cjne	r7,#0x40,00214$
      000C58 02 0D A6         [24]  555 	ljmp	00128$
      000C5B                        556 00214$:
      000C5B BF 44 03         [24]  557 	cjne	r7,#0x44,00215$
      000C5E 02 0D AE         [24]  558 	ljmp	00129$
      000C61                        559 00215$:
      000C61 02 0D B4         [24]  560 	ljmp	00131$
                                    561 ;	src/usb.c:131: case IRQ_SUDAV:
      000C64                        562 00101$:
                                    563 ;	src/usb.c:133: if(IS_STANDARD(SETUPBUF[0]))
      000C64 90 C7 E8         [24]  564 	mov	dptr,#_SETUPBUF
      000C67 E0               [24]  565 	movx	a,@dptr
      000C68 FF               [12]  566 	mov	r7,a
      000C69 54 60            [12]  567 	anl	a,#0x60
      000C6B 60 02            [24]  568 	jz	00217$
      000C6D 80 0B            [24]  569 	sjmp	00109$
      000C6F                        570 00217$:
                                    571 ;	src/usb.c:134: usbSetupIsr();
      000C6F 75 D0 00         [24]  572 	mov	psw,#0x00
      000C72 12 0E D4         [24]  573 	lcall	_usbSetupIsr
      000C75 75 D0 08         [24]  574 	mov	psw,#0x08
      000C78 80 32            [24]  575 	sjmp	00110$
      000C7A                        576 00109$:
                                    577 ;	src/usb.c:135: else if(IS_VENDOR(SETUPBUF[0]))
      000C7A 90 C7 E8         [24]  578 	mov	dptr,#_SETUPBUF
      000C7D E0               [24]  579 	movx	a,@dptr
      000C7E FF               [12]  580 	mov	r7,a
      000C7F 53 0F 60         [24]  581 	anl	ar7,#0x60
      000C82 BF 40 0B         [24]  582 	cjne	r7,#0x40,00106$
                                    583 ;	src/usb.c:136: usbVendorIsr();
      000C85 75 D0 00         [24]  584 	mov	psw,#0x00
      000C88 12 13 62         [24]  585 	lcall	_usbVendorIsr
      000C8B 75 D0 08         [24]  586 	mov	psw,#0x08
      000C8E 80 1C            [24]  587 	sjmp	00110$
      000C90                        588 00106$:
                                    589 ;	src/usb.c:137: else if(IS_CLASS(SETUPBUF[0]))
      000C90 90 C7 E8         [24]  590 	mov	dptr,#_SETUPBUF
      000C93 E0               [24]  591 	movx	a,@dptr
      000C94 FF               [12]  592 	mov	r7,a
      000C95 53 0F 60         [24]  593 	anl	ar7,#0x60
      000C98 BF 20 0B         [24]  594 	cjne	r7,#0x20,00103$
                                    595 ;	src/usb.c:138: usbClassIsr();
      000C9B 75 D0 00         [24]  596 	mov	psw,#0x00
      000C9E 12 13 65         [24]  597 	lcall	_usbClassIsr
      000CA1 75 D0 08         [24]  598 	mov	psw,#0x08
      000CA4 80 06            [24]  599 	sjmp	00110$
      000CA6                        600 00103$:
                                    601 ;	src/usb.c:140: EP0CS = EP0STALL; //Stall to error
      000CA6 90 C7 B4         [24]  602 	mov	dptr,#0xC7B4
      000CA9 74 01            [12]  603 	mov	a,#0x01
      000CAB F0               [24]  604 	movx	@dptr,a
      000CAC                        605 00110$:
                                    606 ;	src/usb.c:142: USBIRQ = SUDAVIR;
      000CAC 90 C7 AB         [24]  607 	mov	dptr,#0xC7AB
      000CAF 74 01            [12]  608 	mov	a,#0x01
      000CB1 F0               [24]  609 	movx	@dptr,a
                                    610 ;	src/usb.c:143: break;
      000CB2 02 0D B4         [24]  611 	ljmp	00131$
                                    612 ;	src/usb.c:144: case IRQ_SOF:
      000CB5                        613 00111$:
                                    614 ;	src/usb.c:145: if((ledTimeout>=0) && (!ledTimeout--)) {
      000CB5 90 80 7E         [24]  615 	mov	dptr,#_ledTimeout
      000CB8 E0               [24]  616 	movx	a,@dptr
      000CB9 FE               [12]  617 	mov	r6,a
      000CBA A3               [24]  618 	inc	dptr
      000CBB E0               [24]  619 	movx	a,@dptr
      000CBC FF               [12]  620 	mov	r7,a
      000CBD 20 E7 38         [24]  621 	jb	acc.7,00113$
      000CC0 8E 0C            [24]  622 	mov	ar4,r6
      000CC2 8F 0D            [24]  623 	mov	ar5,r7
      000CC4 1E               [12]  624 	dec	r6
      000CC5 BE FF 01         [24]  625 	cjne	r6,#0xFF,00223$
      000CC8 1F               [12]  626 	dec	r7
      000CC9                        627 00223$:
      000CC9 90 80 7E         [24]  628 	mov	dptr,#_ledTimeout
      000CCC EE               [12]  629 	mov	a,r6
      000CCD F0               [24]  630 	movx	@dptr,a
      000CCE EF               [12]  631 	mov	a,r7
      000CCF A3               [24]  632 	inc	dptr
      000CD0 F0               [24]  633 	movx	@dptr,a
      000CD1 EC               [12]  634 	mov	a,r4
      000CD2 4D               [12]  635 	orl	a,r5
      000CD3 70 23            [24]  636 	jnz	00113$
                                    637 ;	src/usb.c:146: ledSet(LED_RED, false);
      000CD5 C2 05            [12]  638 	clr	_ledSet_PARM_2
      000CD7 75 82 01         [24]  639 	mov	dpl,#0x01
      000CDA 75 D0 00         [24]  640 	mov	psw,#0x00
      000CDD 12 14 8C         [24]  641 	lcall	_ledSet
      000CE0 75 D0 08         [24]  642 	mov	psw,#0x08
                                    643 ;	src/usb.c:147: ledSet(LED_GREEN, false);
      000CE3 C2 05            [12]  644 	clr	_ledSet_PARM_2
      000CE5 75 82 02         [24]  645 	mov	dpl,#0x02
      000CE8 75 D0 00         [24]  646 	mov	psw,#0x00
      000CEB 12 14 8C         [24]  647 	lcall	_ledSet
      000CEE 75 D0 08         [24]  648 	mov	psw,#0x08
                                    649 ;	src/usb.c:148: ledTimeout = 0;
      000CF1 90 80 7E         [24]  650 	mov	dptr,#_ledTimeout
      000CF4 E4               [12]  651 	clr	a
      000CF5 F0               [24]  652 	movx	@dptr,a
      000CF6 A3               [24]  653 	inc	dptr
      000CF7 F0               [24]  654 	movx	@dptr,a
      000CF8                        655 00113$:
                                    656 ;	src/usb.c:150: USBIRQ = SOFIR;
      000CF8 90 C7 AB         [24]  657 	mov	dptr,#0xC7AB
      000CFB 74 02            [12]  658 	mov	a,#0x02
      000CFD F0               [24]  659 	movx	@dptr,a
                                    660 ;	src/usb.c:151: break;
      000CFE 02 0D B4         [24]  661 	ljmp	00131$
                                    662 ;	src/usb.c:152: case IRQ_SUTOK:
      000D01                        663 00115$:
                                    664 ;	src/usb.c:153: USBIRQ = SUTOKIR;
      000D01 90 C7 AB         [24]  665 	mov	dptr,#0xC7AB
      000D04 74 04            [12]  666 	mov	a,#0x04
      000D06 F0               [24]  667 	movx	@dptr,a
                                    668 ;	src/usb.c:154: break;
      000D07 02 0D B4         [24]  669 	ljmp	00131$
                                    670 ;	src/usb.c:155: case IRQ_SUSPEND:
      000D0A                        671 00116$:
                                    672 ;	src/usb.c:156: USBIRQ = SUSPIR;
      000D0A 90 C7 AB         [24]  673 	mov	dptr,#0xC7AB
      000D0D 74 08            [12]  674 	mov	a,#0x08
      000D0F F0               [24]  675 	movx	@dptr,a
                                    676 ;	src/usb.c:157: break;
      000D10 02 0D B4         [24]  677 	ljmp	00131$
                                    678 ;	src/usb.c:158: case IRQ_USBRESET:
      000D13                        679 00117$:
                                    680 ;	src/usb.c:160: state = DEFAULT;
      000D13 90 80 93         [24]  681 	mov	dptr,#_state
      000D16 74 01            [12]  682 	mov	a,#0x01
      000D18 F0               [24]  683 	movx	@dptr,a
                                    684 ;	src/usb.c:163: INBULKVAL = IN0VAL;
      000D19 90 C7 DE         [24]  685 	mov	dptr,#0xC7DE
      000D1C F0               [24]  686 	movx	@dptr,a
                                    687 ;	src/usb.c:164: OUTBULKVAL= OUT0VAL;
      000D1D 90 C7 DF         [24]  688 	mov	dptr,#0xC7DF
      000D20 F0               [24]  689 	movx	@dptr,a
                                    690 ;	src/usb.c:167: OUT0BC = BCDUMMY;
      000D21 90 C7 C5         [24]  691 	mov	dptr,#0xC7C5
      000D24 F0               [24]  692 	movx	@dptr,a
                                    693 ;	src/usb.c:170: IN_IEN = IN0IE;
      000D25 90 C7 AC         [24]  694 	mov	dptr,#0xC7AC
      000D28 F0               [24]  695 	movx	@dptr,a
                                    696 ;	src/usb.c:171: OUT_IEN = OUT0IE;
      000D29 90 C7 AD         [24]  697 	mov	dptr,#0xC7AD
      000D2C F0               [24]  698 	movx	@dptr,a
                                    699 ;	src/usb.c:172: USBIEN |= SUDAVIE | SUTOKIE;
      000D2D 90 C7 AE         [24]  700 	mov	dptr,#0xC7AE
      000D30 E0               [24]  701 	movx	a,@dptr
      000D31 44 05            [12]  702 	orl	a,#0x05
      000D33 FF               [12]  703 	mov	r7,a
      000D34 F0               [24]  704 	movx	@dptr,a
                                    705 ;	src/usb.c:174: USBIRQ = URESIR;
      000D35 90 C7 AB         [24]  706 	mov	dptr,#0xC7AB
      000D38 74 10            [12]  707 	mov	a,#0x10
      000D3A F0               [24]  708 	movx	@dptr,a
                                    709 ;	src/usb.c:175: break;
      000D3B 02 0D B4         [24]  710 	ljmp	00131$
                                    711 ;	src/usb.c:176: case IRQ_EP0IN:
      000D3E                        712 00118$:
                                    713 ;	src/usb.c:177: usbBulkInIsr(0);
      000D3E 75 82 00         [24]  714 	mov	dpl,#0x00
      000D41 75 D0 00         [24]  715 	mov	psw,#0x00
      000D44 12 0D D2         [24]  716 	lcall	_usbBulkInIsr
      000D47 75 D0 08         [24]  717 	mov	psw,#0x08
                                    718 ;	src/usb.c:178: IN_IRQ = IN0IR;
      000D4A 90 C7 A9         [24]  719 	mov	dptr,#0xC7A9
      000D4D 74 01            [12]  720 	mov	a,#0x01
      000D4F F0               [24]  721 	movx	@dptr,a
                                    722 ;	src/usb.c:179: break;
                                    723 ;	src/usb.c:180: case IRQ_EP0OUT:
      000D50 80 62            [24]  724 	sjmp	00131$
      000D52                        725 00119$:
                                    726 ;	src/usb.c:181: usbBulkOutIsr(0);
      000D52 75 82 00         [24]  727 	mov	dpl,#0x00
      000D55 75 D0 00         [24]  728 	mov	psw,#0x00
      000D58 12 0D D1         [24]  729 	lcall	_usbBulkOutIsr
      000D5B 75 D0 08         [24]  730 	mov	psw,#0x08
                                    731 ;	src/usb.c:183: OUT_IRQ = OUT0IR;
      000D5E 90 C7 AA         [24]  732 	mov	dptr,#0xC7AA
      000D61 74 01            [12]  733 	mov	a,#0x01
      000D63 F0               [24]  734 	movx	@dptr,a
                                    735 ;	src/usb.c:184: break;
                                    736 ;	src/usb.c:185: case IRQ_EP1IN:
      000D64 80 4E            [24]  737 	sjmp	00131$
      000D66                        738 00120$:
                                    739 ;	src/usb.c:186: IN_IRQ = IN1IR;
      000D66 90 C7 A9         [24]  740 	mov	dptr,#0xC7A9
      000D69 74 02            [12]  741 	mov	a,#0x02
      000D6B F0               [24]  742 	movx	@dptr,a
                                    743 ;	src/usb.c:187: break;
                                    744 ;	src/usb.c:188: case IRQ_EP1OUT:
      000D6C 80 46            [24]  745 	sjmp	00131$
      000D6E                        746 00121$:
                                    747 ;	src/usb.c:189: OUT_IRQ = OUT1IR;
      000D6E 90 C7 AA         [24]  748 	mov	dptr,#0xC7AA
      000D71 74 02            [12]  749 	mov	a,#0x02
      000D73 F0               [24]  750 	movx	@dptr,a
                                    751 ;	src/usb.c:190: break;
                                    752 ;	src/usb.c:191: case IRQ_EP2IN:
      000D74 80 3E            [24]  753 	sjmp	00131$
      000D76                        754 00122$:
                                    755 ;	src/usb.c:192: IN_IRQ = IN2IR;
      000D76 90 C7 A9         [24]  756 	mov	dptr,#0xC7A9
      000D79 74 04            [12]  757 	mov	a,#0x04
      000D7B F0               [24]  758 	movx	@dptr,a
                                    759 ;	src/usb.c:193: break;
                                    760 ;	src/usb.c:194: case IRQ_EP2OUT:
      000D7C 80 36            [24]  761 	sjmp	00131$
      000D7E                        762 00123$:
                                    763 ;	src/usb.c:195: OUT_IRQ = OUT2IR;
      000D7E 90 C7 AA         [24]  764 	mov	dptr,#0xC7AA
      000D81 74 04            [12]  765 	mov	a,#0x04
      000D83 F0               [24]  766 	movx	@dptr,a
                                    767 ;	src/usb.c:196: break;
                                    768 ;	src/usb.c:197: case IRQ_EP3IN:
      000D84 80 2E            [24]  769 	sjmp	00131$
      000D86                        770 00124$:
                                    771 ;	src/usb.c:198: IN_IRQ = IN3IR;
      000D86 90 C7 A9         [24]  772 	mov	dptr,#0xC7A9
      000D89 74 08            [12]  773 	mov	a,#0x08
      000D8B F0               [24]  774 	movx	@dptr,a
                                    775 ;	src/usb.c:199: break;
                                    776 ;	src/usb.c:200: case IRQ_EP3OUT:
      000D8C 80 26            [24]  777 	sjmp	00131$
      000D8E                        778 00125$:
                                    779 ;	src/usb.c:201: OUT_IRQ = OUT3IR;
      000D8E 90 C7 AA         [24]  780 	mov	dptr,#0xC7AA
      000D91 74 08            [12]  781 	mov	a,#0x08
      000D93 F0               [24]  782 	movx	@dptr,a
                                    783 ;	src/usb.c:202: break;
                                    784 ;	src/usb.c:203: case IRQ_EP4IN:
      000D94 80 1E            [24]  785 	sjmp	00131$
      000D96                        786 00126$:
                                    787 ;	src/usb.c:204: IN_IRQ = IN4IR;
      000D96 90 C7 A9         [24]  788 	mov	dptr,#0xC7A9
      000D99 74 10            [12]  789 	mov	a,#0x10
      000D9B F0               [24]  790 	movx	@dptr,a
                                    791 ;	src/usb.c:205: break;
                                    792 ;	src/usb.c:206: case IRQ_EP4OUT:
      000D9C 80 16            [24]  793 	sjmp	00131$
      000D9E                        794 00127$:
                                    795 ;	src/usb.c:207: OUT_IRQ = OUT4IR;
      000D9E 90 C7 AA         [24]  796 	mov	dptr,#0xC7AA
      000DA1 74 10            [12]  797 	mov	a,#0x10
      000DA3 F0               [24]  798 	movx	@dptr,a
                                    799 ;	src/usb.c:208: break;
                                    800 ;	src/usb.c:209: case IRQ_EP5IN:
      000DA4 80 0E            [24]  801 	sjmp	00131$
      000DA6                        802 00128$:
                                    803 ;	src/usb.c:210: IN_IRQ = IN5IR;
      000DA6 90 C7 A9         [24]  804 	mov	dptr,#0xC7A9
      000DA9 74 20            [12]  805 	mov	a,#0x20
      000DAB F0               [24]  806 	movx	@dptr,a
                                    807 ;	src/usb.c:211: break;
                                    808 ;	src/usb.c:212: case IRQ_EP5OUT:
      000DAC 80 06            [24]  809 	sjmp	00131$
      000DAE                        810 00129$:
                                    811 ;	src/usb.c:213: OUT_IRQ = OUT5IR;  
      000DAE 90 C7 AA         [24]  812 	mov	dptr,#0xC7AA
      000DB1 74 20            [12]  813 	mov	a,#0x20
      000DB3 F0               [24]  814 	movx	@dptr,a
                                    815 ;	src/usb.c:215: }
      000DB4                        816 00131$:
      000DB4 D0 D0            [24]  817 	pop	psw
      000DB6 D0 00            [24]  818 	pop	(0+0)
      000DB8 D0 01            [24]  819 	pop	(0+1)
      000DBA D0 02            [24]  820 	pop	(0+2)
      000DBC D0 03            [24]  821 	pop	(0+3)
      000DBE D0 04            [24]  822 	pop	(0+4)
      000DC0 D0 05            [24]  823 	pop	(0+5)
      000DC2 D0 06            [24]  824 	pop	(0+6)
      000DC4 D0 07            [24]  825 	pop	(0+7)
      000DC6 D0 83            [24]  826 	pop	dph
      000DC8 D0 82            [24]  827 	pop	dpl
      000DCA D0 F0            [24]  828 	pop	b
      000DCC D0 E0            [24]  829 	pop	acc
      000DCE D0 21            [24]  830 	pop	bits
      000DD0 32               [24]  831 	reti
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'usbBulkOutIsr'
                                    834 ;------------------------------------------------------------
                                    835 ;ep                        Allocated with name '_usbBulkOutIsr_ep_1_39'
                                    836 ;------------------------------------------------------------
                                    837 ;	src/usb.c:221: void usbBulkOutIsr(char ep) {
                                    838 ;	-----------------------------------------
                                    839 ;	 function usbBulkOutIsr
                                    840 ;	-----------------------------------------
      000DD1                        841 _usbBulkOutIsr:
                           000007   842 	ar7 = 0x07
                           000006   843 	ar6 = 0x06
                           000005   844 	ar5 = 0x05
                           000004   845 	ar4 = 0x04
                           000003   846 	ar3 = 0x03
                           000002   847 	ar2 = 0x02
                           000001   848 	ar1 = 0x01
                           000000   849 	ar0 = 0x00
                                    850 ;	src/usb.c:223: return;  
      000DD1 22               [24]  851 	ret
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'usbBulkInIsr'
                                    854 ;------------------------------------------------------------
                                    855 ;sloc0                     Allocated with name '_usbBulkInIsr_sloc0_1_0'
                                    856 ;ep                        Allocated with name '_usbBulkInIsr_ep_1_41'
                                    857 ;lenToSend                 Allocated with name '_usbBulkInIsr_lenToSend_1_42'
                                    858 ;------------------------------------------------------------
                                    859 ;	src/usb.c:229: void usbBulkInIsr(char ep)
                                    860 ;	-----------------------------------------
                                    861 ;	 function usbBulkInIsr
                                    862 ;	-----------------------------------------
      000DD2                        863 _usbBulkInIsr:
      000DD2 E5 82            [12]  864 	mov	a,dpl
      000DD4 90 80 74         [24]  865 	mov	dptr,#_usbBulkInIsr_ep_1_41
      000DD7 F0               [24]  866 	movx	@dptr,a
                                    867 ;	src/usb.c:231: unsigned char lenToSend = (inflow[ep].len<64)?inflow[ep].len:64;
      000DD8 E0               [24]  868 	movx	a,@dptr
      000DD9 FF               [12]  869 	mov	r7,a
      000DDA C2 D5            [12]  870 	clr	F0
      000DDC 75 F0 07         [24]  871 	mov	b,#0x07
      000DDF EF               [12]  872 	mov	a,r7
      000DE0 30 E7 04         [24]  873 	jnb	acc.7,00122$
      000DE3 B2 D5            [12]  874 	cpl	F0
      000DE5 F4               [12]  875 	cpl	a
      000DE6 04               [12]  876 	inc	a
      000DE7                        877 00122$:
      000DE7 A4               [48]  878 	mul	ab
      000DE8 30 D5 0A         [24]  879 	jnb	F0,00123$
      000DEB F4               [12]  880 	cpl	a
      000DEC 24 01            [12]  881 	add	a,#0x01
      000DEE C5 F0            [12]  882 	xch	a,b
      000DF0 F4               [12]  883 	cpl	a
      000DF1 34 00            [12]  884 	addc	a,#0x00
      000DF3 C5 F0            [12]  885 	xch	a,b
      000DF5                        886 00123$:
      000DF5 24 6D            [12]  887 	add	a,#_inflow
      000DF7 FD               [12]  888 	mov	r5,a
      000DF8 74 80            [12]  889 	mov	a,#(_inflow >> 8)
      000DFA 35 F0            [12]  890 	addc	a,b
      000DFC FE               [12]  891 	mov	r6,a
      000DFD 74 01            [12]  892 	mov	a,#0x01
      000DFF 2D               [12]  893 	add	a,r5
      000E00 FB               [12]  894 	mov	r3,a
      000E01 E4               [12]  895 	clr	a
      000E02 3E               [12]  896 	addc	a,r6
      000E03 FC               [12]  897 	mov	r4,a
      000E04 8B 82            [24]  898 	mov	dpl,r3
      000E06 8C 83            [24]  899 	mov	dph,r4
      000E08 E0               [24]  900 	movx	a,@dptr
      000E09 F9               [12]  901 	mov	r1,a
      000E0A A3               [24]  902 	inc	dptr
      000E0B E0               [24]  903 	movx	a,@dptr
      000E0C FA               [12]  904 	mov	r2,a
      000E0D C3               [12]  905 	clr	c
      000E0E E9               [12]  906 	mov	a,r1
      000E0F 94 40            [12]  907 	subb	a,#0x40
      000E11 EA               [12]  908 	mov	a,r2
      000E12 64 80            [12]  909 	xrl	a,#0x80
      000E14 94 80            [12]  910 	subb	a,#0x80
      000E16 50 02            [24]  911 	jnc	00108$
      000E18 80 04            [24]  912 	sjmp	00109$
      000E1A                        913 00108$:
      000E1A 79 40            [12]  914 	mov	r1,#0x40
      000E1C 7A 00            [12]  915 	mov	r2,#0x00
      000E1E                        916 00109$:
                                    917 ;	src/usb.c:233: if(inflow[ep].rdy)
      000E1E 8D 82            [24]  918 	mov	dpl,r5
      000E20 8E 83            [24]  919 	mov	dph,r6
      000E22 E0               [24]  920 	movx	a,@dptr
      000E23 70 03            [24]  921 	jnz	00125$
      000E25 02 0E D3         [24]  922 	ljmp	00105$
      000E28                        923 00125$:
                                    924 ;	src/usb.c:235: usbBulkSend(ep, inflow[ep].buffer+inflow[ep].ptr, lenToSend);
      000E28 8D 82            [24]  925 	mov	dpl,r5
      000E2A 8E 83            [24]  926 	mov	dph,r6
      000E2C A3               [24]  927 	inc	dptr
      000E2D A3               [24]  928 	inc	dptr
      000E2E A3               [24]  929 	inc	dptr
      000E2F A3               [24]  930 	inc	dptr
      000E30 A3               [24]  931 	inc	dptr
      000E31 E0               [24]  932 	movx	a,@dptr
      000E32 F8               [12]  933 	mov	r0,a
      000E33 A3               [24]  934 	inc	dptr
      000E34 E0               [24]  935 	movx	a,@dptr
      000E35 FA               [12]  936 	mov	r2,a
      000E36 74 03            [12]  937 	mov	a,#0x03
      000E38 2D               [12]  938 	add	a,r5
      000E39 F5 14            [12]  939 	mov	_usbBulkInIsr_sloc0_1_0,a
      000E3B E4               [12]  940 	clr	a
      000E3C 3E               [12]  941 	addc	a,r6
      000E3D F5 15            [12]  942 	mov	(_usbBulkInIsr_sloc0_1_0 + 1),a
      000E3F C0 05            [24]  943 	push	ar5
      000E41 C0 06            [24]  944 	push	ar6
      000E43 85 14 82         [24]  945 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000E46 85 15 83         [24]  946 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000E49 E0               [24]  947 	movx	a,@dptr
      000E4A FD               [12]  948 	mov	r5,a
      000E4B A3               [24]  949 	inc	dptr
      000E4C E0               [24]  950 	movx	a,@dptr
      000E4D FE               [12]  951 	mov	r6,a
      000E4E ED               [12]  952 	mov	a,r5
      000E4F 28               [12]  953 	add	a,r0
      000E50 F8               [12]  954 	mov	r0,a
      000E51 EE               [12]  955 	mov	a,r6
      000E52 3A               [12]  956 	addc	a,r2
      000E53 FA               [12]  957 	mov	r2,a
      000E54 90 80 75         [24]  958 	mov	dptr,#_usbBulkSend_PARM_2
      000E57 E8               [12]  959 	mov	a,r0
      000E58 F0               [24]  960 	movx	@dptr,a
      000E59 EA               [12]  961 	mov	a,r2
      000E5A A3               [24]  962 	inc	dptr
      000E5B F0               [24]  963 	movx	@dptr,a
      000E5C 74 80            [12]  964 	mov	a,#0x80
      000E5E A3               [24]  965 	inc	dptr
      000E5F F0               [24]  966 	movx	@dptr,a
      000E60 90 80 78         [24]  967 	mov	dptr,#_usbBulkSend_PARM_3
      000E63 E9               [12]  968 	mov	a,r1
      000E64 F0               [24]  969 	movx	@dptr,a
      000E65 8F 82            [24]  970 	mov	dpl,r7
      000E67 C0 06            [24]  971 	push	ar6
      000E69 C0 05            [24]  972 	push	ar5
      000E6B C0 04            [24]  973 	push	ar4
      000E6D C0 03            [24]  974 	push	ar3
      000E6F C0 01            [24]  975 	push	ar1
      000E71 12 13 6C         [24]  976 	lcall	_usbBulkSend
      000E74 D0 01            [24]  977 	pop	ar1
      000E76 D0 03            [24]  978 	pop	ar3
      000E78 D0 04            [24]  979 	pop	ar4
      000E7A D0 05            [24]  980 	pop	ar5
      000E7C D0 06            [24]  981 	pop	ar6
                                    982 ;	src/usb.c:237: inflow[ep].len-=lenToSend;
      000E7E 8B 82            [24]  983 	mov	dpl,r3
      000E80 8C 83            [24]  984 	mov	dph,r4
      000E82 E0               [24]  985 	movx	a,@dptr
      000E83 FE               [12]  986 	mov	r6,a
      000E84 A3               [24]  987 	inc	dptr
      000E85 E0               [24]  988 	movx	a,@dptr
      000E86 FF               [12]  989 	mov	r7,a
      000E87 89 02            [24]  990 	mov	ar2,r1
      000E89 7D 00            [12]  991 	mov	r5,#0x00
      000E8B EE               [12]  992 	mov	a,r6
      000E8C C3               [12]  993 	clr	c
      000E8D 9A               [12]  994 	subb	a,r2
      000E8E FE               [12]  995 	mov	r6,a
      000E8F EF               [12]  996 	mov	a,r7
      000E90 9D               [12]  997 	subb	a,r5
      000E91 FF               [12]  998 	mov	r7,a
      000E92 8B 82            [24]  999 	mov	dpl,r3
      000E94 8C 83            [24] 1000 	mov	dph,r4
      000E96 EE               [12] 1001 	mov	a,r6
      000E97 F0               [24] 1002 	movx	@dptr,a
      000E98 EF               [12] 1003 	mov	a,r7
      000E99 A3               [24] 1004 	inc	dptr
      000E9A F0               [24] 1005 	movx	@dptr,a
                                   1006 ;	src/usb.c:238: inflow[ep].ptr+=lenToSend; 
      000E9B 85 14 82         [24] 1007 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000E9E 85 15 83         [24] 1008 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000EA1 E0               [24] 1009 	movx	a,@dptr
      000EA2 FB               [12] 1010 	mov	r3,a
      000EA3 A3               [24] 1011 	inc	dptr
      000EA4 E0               [24] 1012 	movx	a,@dptr
      000EA5 FC               [12] 1013 	mov	r4,a
      000EA6 EA               [12] 1014 	mov	a,r2
      000EA7 2B               [12] 1015 	add	a,r3
      000EA8 FA               [12] 1016 	mov	r2,a
      000EA9 ED               [12] 1017 	mov	a,r5
      000EAA 3C               [12] 1018 	addc	a,r4
      000EAB FD               [12] 1019 	mov	r5,a
      000EAC 85 14 82         [24] 1020 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000EAF 85 15 83         [24] 1021 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000EB2 EA               [12] 1022 	mov	a,r2
      000EB3 F0               [24] 1023 	movx	@dptr,a
      000EB4 ED               [12] 1024 	mov	a,r5
      000EB5 A3               [24] 1025 	inc	dptr
      000EB6 F0               [24] 1026 	movx	@dptr,a
                                   1027 ;	src/usb.c:240: if(inflow[ep].len == 0 && lenToSend != 64)
      000EB7 EE               [12] 1028 	mov	a,r6
      000EB8 4F               [12] 1029 	orl	a,r7
      000EB9 D0 06            [24] 1030 	pop	ar6
      000EBB D0 05            [24] 1031 	pop	ar5
      000EBD 70 14            [24] 1032 	jnz	00105$
      000EBF B9 40 02         [24] 1033 	cjne	r1,#0x40,00127$
      000EC2 80 0F            [24] 1034 	sjmp	00105$
      000EC4                       1035 00127$:
                                   1036 ;	src/usb.c:242: inflow[ep].rdy = 0;
      000EC4 8D 82            [24] 1037 	mov	dpl,r5
      000EC6 8E 83            [24] 1038 	mov	dph,r6
      000EC8 E4               [12] 1039 	clr	a
      000EC9 F0               [24] 1040 	movx	@dptr,a
                                   1041 ;	src/usb.c:243: inflow[ep].ptr = 0;
      000ECA 85 14 82         [24] 1042 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000ECD 85 15 83         [24] 1043 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000ED0 F0               [24] 1044 	movx	@dptr,a
      000ED1 A3               [24] 1045 	inc	dptr
      000ED2 F0               [24] 1046 	movx	@dptr,a
      000ED3                       1047 00105$:
                                   1048 ;	src/usb.c:248: return;
      000ED3 22               [24] 1049 	ret
                                   1050 ;------------------------------------------------------------
                                   1051 ;Allocation info for local variables in function 'usbSetupIsr'
                                   1052 ;------------------------------------------------------------
                                   1053 ;sloc0                     Allocated with name '_usbSetupIsr_sloc0_1_0'
                                   1054 ;setup                     Allocated with name '_usbSetupIsr_setup_1_45'
                                   1055 ;dLength                   Allocated with name '_usbSetupIsr_dLength_3_47'
                                   1056 ;dLength                   Allocated with name '_usbSetupIsr_dLength_3_48'
                                   1057 ;dLength                   Allocated with name '_usbSetupIsr_dLength_3_51'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	src/usb.c:252: void usbSetupIsr()
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function usbSetupIsr
                                   1062 ;	-----------------------------------------
      000ED4                       1063 _usbSetupIsr:
                                   1064 ;	src/usb.c:254: __xdata struct controllStruct *setup = (__xdata void*)SETUPBUF;
                                   1065 ;	src/usb.c:256: if(state >= DEFAULT)
      000ED4 90 80 93         [24] 1066 	mov	dptr,#_state
      000ED7 E0               [24] 1067 	movx	a,@dptr
      000ED8 FF               [12] 1068 	mov	r7,a
      000ED9 BF 01 00         [24] 1069 	cjne	r7,#0x01,00375$
      000EDC                       1070 00375$:
      000EDC 50 03            [24] 1071 	jnc	00376$
      000EDE 02 10 D4         [24] 1072 	ljmp	00128$
      000EE1                       1073 00376$:
                                   1074 ;	src/usb.c:259: if(SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == DEVICE_DESCRIPTOR)
      000EE1 90 C7 E9         [24] 1075 	mov	dptr,#(_SETUPBUF + 0x0001)
      000EE4 E0               [24] 1076 	movx	a,@dptr
      000EE5 FE               [12] 1077 	mov	r6,a
      000EE6 BE 06 02         [24] 1078 	cjne	r6,#0x06,00377$
      000EE9 80 03            [24] 1079 	sjmp	00378$
      000EEB                       1080 00377$:
      000EEB 02 0F 66         [24] 1081 	ljmp	00102$
      000EEE                       1082 00378$:
      000EEE 90 C7 EB         [24] 1083 	mov	dptr,#(_SETUPBUF + 0x0003)
      000EF1 E0               [24] 1084 	movx	a,@dptr
      000EF2 FE               [12] 1085 	mov	r6,a
      000EF3 BE 01 70         [24] 1086 	cjne	r6,#0x01,00102$
                                   1087 ;	src/usb.c:261: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
      000EF6 90 C7 EF         [24] 1088 	mov	dptr,#(_SETUPBUF + 0x0007)
      000EF9 E0               [24] 1089 	movx	a,@dptr
      000EFA FD               [12] 1090 	mov	r5,a
      000EFB 7E 00            [12] 1091 	mov	r6,#0x00
      000EFD 90 C7 EE         [24] 1092 	mov	dptr,#(_SETUPBUF + 0x0006)
      000F00 E0               [24] 1093 	movx	a,@dptr
      000F01 7B 00            [12] 1094 	mov	r3,#0x00
      000F03 2E               [12] 1095 	add	a,r6
      000F04 FE               [12] 1096 	mov	r6,a
      000F05 EB               [12] 1097 	mov	a,r3
      000F06 3D               [12] 1098 	addc	a,r5
      000F07 FD               [12] 1099 	mov	r5,a
                                   1100 ;	src/usb.c:263: inflow[0].buffer = usbDeviceDescriptor;
      000F08 90 80 72         [24] 1101 	mov	dptr,#(_inflow + 0x0005)
      000F0B 74 0C            [12] 1102 	mov	a,#_usbDeviceDescriptor
      000F0D F0               [24] 1103 	movx	@dptr,a
      000F0E 74 16            [12] 1104 	mov	a,#(_usbDeviceDescriptor >> 8)
      000F10 A3               [24] 1105 	inc	dptr
      000F11 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	src/usb.c:264: inflow[0].len = MIN(dLength, inflow[0].buffer[0]);
      000F12 8E 03            [24] 1108 	mov	ar3,r6
      000F14 8D 04            [24] 1109 	mov	ar4,r5
      000F16 90 80 72         [24] 1110 	mov	dptr,#(_inflow + 0x0005)
      000F19 E0               [24] 1111 	movx	a,@dptr
      000F1A F5 16            [12] 1112 	mov	_usbSetupIsr_sloc0_1_0,a
      000F1C A3               [24] 1113 	inc	dptr
      000F1D E0               [24] 1114 	movx	a,@dptr
      000F1E F5 17            [12] 1115 	mov	(_usbSetupIsr_sloc0_1_0 + 1),a
      000F20 90 16 0C         [24] 1116 	mov	dptr,#_usbDeviceDescriptor
      000F23 E4               [12] 1117 	clr	a
      000F24 93               [24] 1118 	movc	a,@a+dptr
      000F25 F8               [12] 1119 	mov	r0,a
      000F26 33               [12] 1120 	rlc	a
      000F27 95 E0            [12] 1121 	subb	a,acc
      000F29 FA               [12] 1122 	mov	r2,a
      000F2A C3               [12] 1123 	clr	c
      000F2B EB               [12] 1124 	mov	a,r3
      000F2C 98               [12] 1125 	subb	a,r0
      000F2D EC               [12] 1126 	mov	a,r4
      000F2E 64 80            [12] 1127 	xrl	a,#0x80
      000F30 8A F0            [24] 1128 	mov	b,r2
      000F32 63 F0 80         [24] 1129 	xrl	b,#0x80
      000F35 95 F0            [12] 1130 	subb	a,b
      000F37 40 0E            [24] 1131 	jc	00220$
      000F39 85 16 82         [24] 1132 	mov	dpl,_usbSetupIsr_sloc0_1_0
      000F3C 85 17 83         [24] 1133 	mov	dph,(_usbSetupIsr_sloc0_1_0 + 1)
      000F3F E4               [12] 1134 	clr	a
      000F40 93               [24] 1135 	movc	a,@a+dptr
      000F41 FC               [12] 1136 	mov	r4,a
      000F42 FE               [12] 1137 	mov	r6,a
      000F43 33               [12] 1138 	rlc	a
      000F44 95 E0            [12] 1139 	subb	a,acc
      000F46 FD               [12] 1140 	mov	r5,a
      000F47                       1141 00220$:
      000F47 90 80 6E         [24] 1142 	mov	dptr,#(_inflow + 0x0001)
      000F4A EE               [12] 1143 	mov	a,r6
      000F4B F0               [24] 1144 	movx	@dptr,a
      000F4C ED               [12] 1145 	mov	a,r5
      000F4D A3               [24] 1146 	inc	dptr
      000F4E F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	src/usb.c:265: inflow[0].ptr = 0;
      000F4F 90 80 70         [24] 1149 	mov	dptr,#(_inflow + 0x0003)
      000F52 E4               [12] 1150 	clr	a
      000F53 F0               [24] 1151 	movx	@dptr,a
      000F54 A3               [24] 1152 	inc	dptr
      000F55 F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	src/usb.c:266: inflow[0].rdy = 1;
      000F56 90 80 6D         [24] 1155 	mov	dptr,#_inflow
      000F59 04               [12] 1156 	inc	a
      000F5A F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	src/usb.c:269: EP0CS = HSNAK;
      000F5B 90 C7 B4         [24] 1159 	mov	dptr,#0xC7B4
      000F5E 04               [12] 1160 	inc	a
      000F5F F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	src/usb.c:270: usbBulkInIsr(0);
      000F60 75 82 00         [24] 1163 	mov	dpl,#0x00
                                   1164 ;	src/usb.c:271: return;
      000F63 02 0D D2         [24] 1165 	ljmp	_usbBulkInIsr
      000F66                       1166 00102$:
                                   1167 ;	src/usb.c:275: if (SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == STRING_DESCRIPTOR)
      000F66 90 C7 E9         [24] 1168 	mov	dptr,#(_SETUPBUF + 0x0001)
      000F69 E0               [24] 1169 	movx	a,@dptr
      000F6A FE               [12] 1170 	mov	r6,a
      000F6B BE 06 02         [24] 1171 	cjne	r6,#0x06,00382$
      000F6E 80 03            [24] 1172 	sjmp	00383$
      000F70                       1173 00382$:
      000F70 02 10 32         [24] 1174 	ljmp	00117$
      000F73                       1175 00383$:
      000F73 90 C7 EB         [24] 1176 	mov	dptr,#(_SETUPBUF + 0x0003)
      000F76 E0               [24] 1177 	movx	a,@dptr
      000F77 FE               [12] 1178 	mov	r6,a
      000F78 BE 03 02         [24] 1179 	cjne	r6,#0x03,00384$
      000F7B 80 03            [24] 1180 	sjmp	00385$
      000F7D                       1181 00384$:
      000F7D 02 10 32         [24] 1182 	ljmp	00117$
      000F80                       1183 00385$:
                                   1184 ;	src/usb.c:277: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
      000F80 90 C7 EF         [24] 1185 	mov	dptr,#(_SETUPBUF + 0x0007)
      000F83 E0               [24] 1186 	movx	a,@dptr
      000F84 FD               [12] 1187 	mov	r5,a
      000F85 7E 00            [12] 1188 	mov	r6,#0x00
      000F87 90 C7 EE         [24] 1189 	mov	dptr,#(_SETUPBUF + 0x0006)
      000F8A E0               [24] 1190 	movx	a,@dptr
      000F8B FC               [12] 1191 	mov	r4,a
      000F8C 7B 00            [12] 1192 	mov	r3,#0x00
      000F8E 2E               [12] 1193 	add	a,r6
      000F8F FE               [12] 1194 	mov	r6,a
      000F90 EB               [12] 1195 	mov	a,r3
      000F91 3D               [12] 1196 	addc	a,r5
      000F92 FD               [12] 1197 	mov	r5,a
                                   1198 ;	src/usb.c:279: if (SETUPBUF[2]==0)
      000F93 90 C7 EA         [24] 1199 	mov	dptr,#(_SETUPBUF + 0x0002)
      000F96 E0               [24] 1200 	movx	a,@dptr
      000F97 70 0C            [24] 1201 	jnz	00114$
                                   1202 ;	src/usb.c:280: inflow[0].buffer = usbStringDescriptor0;
      000F99 90 80 72         [24] 1203 	mov	dptr,#(_inflow + 0x0005)
      000F9C 74 57            [12] 1204 	mov	a,#_usbStringDescriptor0
      000F9E F0               [24] 1205 	movx	@dptr,a
      000F9F 74 16            [12] 1206 	mov	a,#(_usbStringDescriptor0 >> 8)
      000FA1 A3               [24] 1207 	inc	dptr
      000FA2 F0               [24] 1208 	movx	@dptr,a
      000FA3 80 41            [24] 1209 	sjmp	00115$
      000FA5                       1210 00114$:
                                   1211 ;	src/usb.c:281: else if (SETUPBUF[2]==1)
      000FA5 90 C7 EA         [24] 1212 	mov	dptr,#(_SETUPBUF + 0x0002)
      000FA8 E0               [24] 1213 	movx	a,@dptr
      000FA9 FC               [12] 1214 	mov	r4,a
      000FAA BC 01 0C         [24] 1215 	cjne	r4,#0x01,00111$
                                   1216 ;	src/usb.c:282: inflow[0].buffer = usbStringDescriptor1;
      000FAD 90 80 72         [24] 1217 	mov	dptr,#(_inflow + 0x0005)
      000FB0 74 5B            [12] 1218 	mov	a,#_usbStringDescriptor1
      000FB2 F0               [24] 1219 	movx	@dptr,a
      000FB3 74 16            [12] 1220 	mov	a,#(_usbStringDescriptor1 >> 8)
      000FB5 A3               [24] 1221 	inc	dptr
      000FB6 F0               [24] 1222 	movx	@dptr,a
      000FB7 80 2D            [24] 1223 	sjmp	00115$
      000FB9                       1224 00111$:
                                   1225 ;	src/usb.c:283: else if (SETUPBUF[2]==2)
      000FB9 90 C7 EA         [24] 1226 	mov	dptr,#(_SETUPBUF + 0x0002)
      000FBC E0               [24] 1227 	movx	a,@dptr
      000FBD FC               [12] 1228 	mov	r4,a
      000FBE BC 02 0C         [24] 1229 	cjne	r4,#0x02,00108$
                                   1230 ;	src/usb.c:284: inflow[0].buffer = usbStringDescriptor2;
      000FC1 90 80 72         [24] 1231 	mov	dptr,#(_inflow + 0x0005)
      000FC4 74 6D            [12] 1232 	mov	a,#_usbStringDescriptor2
      000FC6 F0               [24] 1233 	movx	@dptr,a
      000FC7 74 16            [12] 1234 	mov	a,#(_usbStringDescriptor2 >> 8)
      000FC9 A3               [24] 1235 	inc	dptr
      000FCA F0               [24] 1236 	movx	@dptr,a
      000FCB 80 19            [24] 1237 	sjmp	00115$
      000FCD                       1238 00108$:
                                   1239 ;	src/usb.c:285: else if (SETUPBUF[2]==0x1d) {
      000FCD 90 C7 EA         [24] 1240 	mov	dptr,#(_SETUPBUF + 0x0002)
      000FD0 E0               [24] 1241 	movx	a,@dptr
      000FD1 FC               [12] 1242 	mov	r4,a
      000FD2 BC 1D 0A         [24] 1243 	cjne	r4,#0x1D,00105$
                                   1244 ;	src/usb.c:286: usbSendIdString();
      000FD5 12 13 A5         [24] 1245 	lcall	_usbSendIdString
                                   1246 ;	src/usb.c:288: EP0CS = HSNAK;
      000FD8 90 C7 B4         [24] 1247 	mov	dptr,#0xC7B4
      000FDB 74 02            [12] 1248 	mov	a,#0x02
      000FDD F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	src/usb.c:289: return;
      000FDE 22               [24] 1251 	ret
      000FDF                       1252 00105$:
                                   1253 ;	src/usb.c:291: EP0CS = EP0STALL; //Stall to error
      000FDF 90 C7 B4         [24] 1254 	mov	dptr,#0xC7B4
      000FE2 74 01            [12] 1255 	mov	a,#0x01
      000FE4 F0               [24] 1256 	movx	@dptr,a
                                   1257 ;	src/usb.c:292: return;
      000FE5 22               [24] 1258 	ret
      000FE6                       1259 00115$:
                                   1260 ;	src/usb.c:295: inflow[0].len = MIN(dLength, inflow[0].buffer[0]);
      000FE6 8E 03            [24] 1261 	mov	ar3,r6
      000FE8 8D 04            [24] 1262 	mov	ar4,r5
      000FEA 90 80 72         [24] 1263 	mov	dptr,#(_inflow + 0x0005)
      000FED E0               [24] 1264 	movx	a,@dptr
      000FEE F9               [12] 1265 	mov	r1,a
      000FEF A3               [24] 1266 	inc	dptr
      000FF0 E0               [24] 1267 	movx	a,@dptr
      000FF1 FA               [12] 1268 	mov	r2,a
      000FF2 89 82            [24] 1269 	mov	dpl,r1
      000FF4 8A 83            [24] 1270 	mov	dph,r2
      000FF6 E4               [12] 1271 	clr	a
      000FF7 93               [24] 1272 	movc	a,@a+dptr
      000FF8 FA               [12] 1273 	mov	r2,a
      000FF9 F8               [12] 1274 	mov	r0,a
      000FFA 33               [12] 1275 	rlc	a
      000FFB 95 E0            [12] 1276 	subb	a,acc
      000FFD F9               [12] 1277 	mov	r1,a
      000FFE C3               [12] 1278 	clr	c
      000FFF EB               [12] 1279 	mov	a,r3
      001000 98               [12] 1280 	subb	a,r0
      001001 EC               [12] 1281 	mov	a,r4
      001002 64 80            [12] 1282 	xrl	a,#0x80
      001004 89 F0            [24] 1283 	mov	b,r1
      001006 63 F0 80         [24] 1284 	xrl	b,#0x80
      001009 95 F0            [12] 1285 	subb	a,b
      00100B 40 06            [24] 1286 	jc	00222$
      00100D EA               [12] 1287 	mov	a,r2
      00100E FE               [12] 1288 	mov	r6,a
      00100F 33               [12] 1289 	rlc	a
      001010 95 E0            [12] 1290 	subb	a,acc
      001012 FD               [12] 1291 	mov	r5,a
      001013                       1292 00222$:
      001013 90 80 6E         [24] 1293 	mov	dptr,#(_inflow + 0x0001)
      001016 EE               [12] 1294 	mov	a,r6
      001017 F0               [24] 1295 	movx	@dptr,a
      001018 ED               [12] 1296 	mov	a,r5
      001019 A3               [24] 1297 	inc	dptr
      00101A F0               [24] 1298 	movx	@dptr,a
                                   1299 ;	src/usb.c:296: inflow[0].ptr = 0;
      00101B 90 80 70         [24] 1300 	mov	dptr,#(_inflow + 0x0003)
      00101E E4               [12] 1301 	clr	a
      00101F F0               [24] 1302 	movx	@dptr,a
      001020 A3               [24] 1303 	inc	dptr
      001021 F0               [24] 1304 	movx	@dptr,a
                                   1305 ;	src/usb.c:297: inflow[0].rdy = 1;
      001022 90 80 6D         [24] 1306 	mov	dptr,#_inflow
      001025 04               [12] 1307 	inc	a
      001026 F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	src/usb.c:300: EP0CS = HSNAK;
      001027 90 C7 B4         [24] 1310 	mov	dptr,#0xC7B4
      00102A 04               [12] 1311 	inc	a
      00102B F0               [24] 1312 	movx	@dptr,a
                                   1313 ;	src/usb.c:301: usbBulkInIsr(0);
      00102C 75 82 00         [24] 1314 	mov	dpl,#0x00
                                   1315 ;	src/usb.c:302: return;
      00102F 02 0D D2         [24] 1316 	ljmp	_usbBulkInIsr
      001032                       1317 00117$:
                                   1318 ;	src/usb.c:306: if(SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == CONFIGURATION_DESCRIPTOR)
      001032 90 C7 E9         [24] 1319 	mov	dptr,#(_SETUPBUF + 0x0001)
      001035 E0               [24] 1320 	movx	a,@dptr
      001036 FE               [12] 1321 	mov	r6,a
      001037 BE 06 56         [24] 1322 	cjne	r6,#0x06,00120$
      00103A 90 C7 EB         [24] 1323 	mov	dptr,#(_SETUPBUF + 0x0003)
      00103D E0               [24] 1324 	movx	a,@dptr
      00103E FE               [12] 1325 	mov	r6,a
      00103F BE 02 4E         [24] 1326 	cjne	r6,#0x02,00120$
                                   1327 ;	src/usb.c:308: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
      001042 90 C7 EF         [24] 1328 	mov	dptr,#(_SETUPBUF + 0x0007)
      001045 E0               [24] 1329 	movx	a,@dptr
      001046 FD               [12] 1330 	mov	r5,a
      001047 7E 00            [12] 1331 	mov	r6,#0x00
      001049 90 C7 EE         [24] 1332 	mov	dptr,#(_SETUPBUF + 0x0006)
      00104C E0               [24] 1333 	movx	a,@dptr
      00104D 7B 00            [12] 1334 	mov	r3,#0x00
      00104F 2E               [12] 1335 	add	a,r6
      001050 FE               [12] 1336 	mov	r6,a
      001051 EB               [12] 1337 	mov	a,r3
      001052 3D               [12] 1338 	addc	a,r5
      001053 FD               [12] 1339 	mov	r5,a
                                   1340 ;	src/usb.c:310: inflow[0].buffer = usbConfigurationDescriptor;
      001054 90 80 72         [24] 1341 	mov	dptr,#(_inflow + 0x0005)
      001057 74 1E            [12] 1342 	mov	a,#_usbConfigurationDescriptor
      001059 F0               [24] 1343 	movx	@dptr,a
      00105A 74 16            [12] 1344 	mov	a,#(_usbConfigurationDescriptor >> 8)
      00105C A3               [24] 1345 	inc	dptr
      00105D F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	src/usb.c:311: inflow[0].len = MIN(dLength, sizeof(usbConfigurationDescriptor));
      00105E 8E 03            [24] 1348 	mov	ar3,r6
      001060 8D 04            [24] 1349 	mov	ar4,r5
      001062 C3               [12] 1350 	clr	c
      001063 EB               [12] 1351 	mov	a,r3
      001064 94 39            [12] 1352 	subb	a,#0x39
      001066 EC               [12] 1353 	mov	a,r4
      001067 64 80            [12] 1354 	xrl	a,#0x80
      001069 94 80            [12] 1355 	subb	a,#0x80
      00106B 40 04            [24] 1356 	jc	00224$
      00106D 7E 39            [12] 1357 	mov	r6,#0x39
      00106F 7D 00            [12] 1358 	mov	r5,#0x00
      001071                       1359 00224$:
      001071 90 80 6E         [24] 1360 	mov	dptr,#(_inflow + 0x0001)
      001074 EE               [12] 1361 	mov	a,r6
      001075 F0               [24] 1362 	movx	@dptr,a
      001076 ED               [12] 1363 	mov	a,r5
      001077 A3               [24] 1364 	inc	dptr
      001078 F0               [24] 1365 	movx	@dptr,a
                                   1366 ;	src/usb.c:312: inflow[0].ptr = 0;
      001079 90 80 70         [24] 1367 	mov	dptr,#(_inflow + 0x0003)
      00107C E4               [12] 1368 	clr	a
      00107D F0               [24] 1369 	movx	@dptr,a
      00107E A3               [24] 1370 	inc	dptr
      00107F F0               [24] 1371 	movx	@dptr,a
                                   1372 ;	src/usb.c:313: inflow[0].rdy = 1;
      001080 90 80 6D         [24] 1373 	mov	dptr,#_inflow
      001083 04               [12] 1374 	inc	a
      001084 F0               [24] 1375 	movx	@dptr,a
                                   1376 ;	src/usb.c:316: EP0CS = HSNAK;
      001085 90 C7 B4         [24] 1377 	mov	dptr,#0xC7B4
      001088 04               [12] 1378 	inc	a
      001089 F0               [24] 1379 	movx	@dptr,a
                                   1380 ;	src/usb.c:317: usbBulkInIsr(0);
      00108A 75 82 00         [24] 1381 	mov	dpl,#0x00
                                   1382 ;	src/usb.c:318: return;
      00108D 02 0D D2         [24] 1383 	ljmp	_usbBulkInIsr
      001090                       1384 00120$:
                                   1385 ;	src/usb.c:348: if (setup->request == SET_ADDRESS)
      001090 90 C7 E9         [24] 1386 	mov	dptr,#(_SETUPBUF + 0x0001)
      001093 E0               [24] 1387 	movx	a,@dptr
      001094 FE               [12] 1388 	mov	r6,a
      001095 BE 05 3C         [24] 1389 	cjne	r6,#0x05,00128$
                                   1390 ;	src/usb.c:351: if (setup->value == 0)
      001098 90 C7 EA         [24] 1391 	mov	dptr,#(_SETUPBUF + 0x0002)
      00109B E0               [24] 1392 	movx	a,@dptr
      00109C FD               [12] 1393 	mov	r5,a
      00109D A3               [24] 1394 	inc	dptr
      00109E E0               [24] 1395 	movx	a,@dptr
      00109F FE               [12] 1396 	mov	r6,a
      0010A0 4D               [12] 1397 	orl	a,r5
      0010A1 70 24            [24] 1398 	jnz	00123$
                                   1399 ;	src/usb.c:354: state = DEFAULT;
      0010A3 90 80 93         [24] 1400 	mov	dptr,#_state
      0010A6 74 01            [12] 1401 	mov	a,#0x01
      0010A8 F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	src/usb.c:357: INBULKVAL = IN0VAL;
      0010A9 90 C7 DE         [24] 1404 	mov	dptr,#0xC7DE
      0010AC F0               [24] 1405 	movx	@dptr,a
                                   1406 ;	src/usb.c:358: OUTBULKVAL= OUT0VAL;
      0010AD 90 C7 DF         [24] 1407 	mov	dptr,#0xC7DF
      0010B0 F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	src/usb.c:361: OUT0BC = BCDUMMY;
      0010B1 90 C7 C5         [24] 1410 	mov	dptr,#0xC7C5
      0010B4 F0               [24] 1411 	movx	@dptr,a
                                   1412 ;	src/usb.c:364: IN_IEN = IN0IE;
      0010B5 90 C7 AC         [24] 1413 	mov	dptr,#0xC7AC
      0010B8 F0               [24] 1414 	movx	@dptr,a
                                   1415 ;	src/usb.c:365: OUT_IEN = OUT0IE;
      0010B9 90 C7 AD         [24] 1416 	mov	dptr,#0xC7AD
      0010BC F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	src/usb.c:366: USBIEN |= SUDAVIE | SUTOKIE;
      0010BD 90 C7 AE         [24] 1419 	mov	dptr,#0xC7AE
      0010C0 E0               [24] 1420 	movx	a,@dptr
      0010C1 44 05            [12] 1421 	orl	a,#0x05
      0010C3 FE               [12] 1422 	mov	r6,a
      0010C4 F0               [24] 1423 	movx	@dptr,a
      0010C5 80 06            [24] 1424 	sjmp	00124$
      0010C7                       1425 00123$:
                                   1426 ;	src/usb.c:368: state = ADDRESS;  //The device is now addressed
      0010C7 90 80 93         [24] 1427 	mov	dptr,#_state
      0010CA 74 02            [12] 1428 	mov	a,#0x02
      0010CC F0               [24] 1429 	movx	@dptr,a
      0010CD                       1430 00124$:
                                   1431 ;	src/usb.c:371: EP0CS = HSNAK;
      0010CD 90 C7 B4         [24] 1432 	mov	dptr,#0xC7B4
      0010D0 74 02            [12] 1433 	mov	a,#0x02
      0010D2 F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	src/usb.c:372: return;
      0010D3 22               [24] 1436 	ret
      0010D4                       1437 00128$:
                                   1438 ;	src/usb.c:376: if (state >= ADDRESS)
      0010D4 BF 02 00         [24] 1439 	cjne	r7,#0x02,00402$
      0010D7                       1440 00402$:
      0010D7 50 03            [24] 1441 	jnc	00403$
      0010D9 02 12 28         [24] 1442 	ljmp	00166$
      0010DC                       1443 00403$:
                                   1444 ;	src/usb.c:380: if (SETUPBUF[1] == SET_CONFIGURATION)
      0010DC 90 C7 E9         [24] 1445 	mov	dptr,#(_SETUPBUF + 0x0001)
      0010DF E0               [24] 1446 	movx	a,@dptr
      0010E0 FE               [12] 1447 	mov	r6,a
      0010E1 BE 09 61         [24] 1448 	cjne	r6,#0x09,00133$
                                   1449 ;	src/usb.c:382: if (setup->value == 0)
      0010E4 90 C7 EA         [24] 1450 	mov	dptr,#(_SETUPBUF + 0x0002)
      0010E7 E0               [24] 1451 	movx	a,@dptr
      0010E8 FD               [12] 1452 	mov	r5,a
      0010E9 A3               [24] 1453 	inc	dptr
      0010EA E0               [24] 1454 	movx	a,@dptr
      0010EB FE               [12] 1455 	mov	r6,a
      0010EC 4D               [12] 1456 	orl	a,r5
      0010ED 70 25            [24] 1457 	jnz	00130$
                                   1458 ;	src/usb.c:384: state = ADDRESS;
      0010EF 90 80 93         [24] 1459 	mov	dptr,#_state
      0010F2 74 02            [12] 1460 	mov	a,#0x02
      0010F4 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	src/usb.c:387: INBULKVAL  &= ~(0x02 | 0x04);
      0010F5 90 C7 DE         [24] 1463 	mov	dptr,#0xC7DE
      0010F8 E0               [24] 1464 	movx	a,@dptr
      0010F9 54 F9            [12] 1465 	anl	a,#0xF9
      0010FB F0               [24] 1466 	movx	@dptr,a
                                   1467 ;	src/usb.c:388: OUTBULKVAL &= ~(0x02);
      0010FC 90 C7 DF         [24] 1468 	mov	dptr,#0xC7DF
      0010FF E0               [24] 1469 	movx	a,@dptr
      001100 54 FD            [12] 1470 	anl	a,#0xFD
      001102 F0               [24] 1471 	movx	@dptr,a
                                   1472 ;	src/usb.c:391: OUT_IEN &= ~0x02;
      001103 90 C7 AD         [24] 1473 	mov	dptr,#0xC7AD
      001106 E0               [24] 1474 	movx	a,@dptr
      001107 54 FD            [12] 1475 	anl	a,#0xFD
      001109 F0               [24] 1476 	movx	@dptr,a
                                   1477 ;	src/usb.c:392: IN_IEN  &= ~0x02;
      00110A 90 C7 AC         [24] 1478 	mov	dptr,#0xC7AC
      00110D E0               [24] 1479 	movx	a,@dptr
      00110E 54 FD            [12] 1480 	anl	a,#0xFD
      001110 FE               [12] 1481 	mov	r6,a
      001111 F0               [24] 1482 	movx	@dptr,a
      001112 80 2A            [24] 1483 	sjmp	00131$
      001114                       1484 00130$:
                                   1485 ;	src/usb.c:394: state = CONFIGURED;
      001114 90 80 93         [24] 1486 	mov	dptr,#_state
      001117 74 03            [12] 1487 	mov	a,#0x03
      001119 F0               [24] 1488 	movx	@dptr,a
                                   1489 ;	src/usb.c:397: INBULKVAL  |= 0x02 | 0x04;
      00111A 90 C7 DE         [24] 1490 	mov	dptr,#0xC7DE
      00111D E0               [24] 1491 	movx	a,@dptr
      00111E 44 06            [12] 1492 	orl	a,#0x06
      001120 F0               [24] 1493 	movx	@dptr,a
                                   1494 ;	src/usb.c:398: OUTBULKVAL |= 0x02;
      001121 90 C7 DF         [24] 1495 	mov	dptr,#0xC7DF
      001124 E0               [24] 1496 	movx	a,@dptr
      001125 44 02            [12] 1497 	orl	a,#0x02
      001127 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	src/usb.c:401: OUT_IEN |= 0x02;
      001128 90 C7 AD         [24] 1500 	mov	dptr,#0xC7AD
      00112B E0               [24] 1501 	movx	a,@dptr
      00112C 44 02            [12] 1502 	orl	a,#0x02
      00112E F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	src/usb.c:402: IN_IEN  |= 0x02;
      00112F 90 C7 AC         [24] 1505 	mov	dptr,#0xC7AC
      001132 E0               [24] 1506 	movx	a,@dptr
      001133 44 02            [12] 1507 	orl	a,#0x02
      001135 F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	src/usb.c:403: USBIEN  |= SOFIE;
      001136 90 C7 AE         [24] 1510 	mov	dptr,#0xC7AE
      001139 E0               [24] 1511 	movx	a,@dptr
      00113A 44 02            [12] 1512 	orl	a,#0x02
      00113C FE               [12] 1513 	mov	r6,a
      00113D F0               [24] 1514 	movx	@dptr,a
      00113E                       1515 00131$:
                                   1516 ;	src/usb.c:406: EP0CS = HSNAK;
      00113E 90 C7 B4         [24] 1517 	mov	dptr,#0xC7B4
      001141 74 02            [12] 1518 	mov	a,#0x02
      001143 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	src/usb.c:407: return;
      001144 22               [24] 1521 	ret
      001145                       1522 00133$:
                                   1523 ;	src/usb.c:410: if (setup->request == GET_CONFIGURATION)
      001145 90 C7 E9         [24] 1524 	mov	dptr,#(_SETUPBUF + 0x0001)
      001148 E0               [24] 1525 	movx	a,@dptr
      001149 FE               [12] 1526 	mov	r6,a
      00114A BE 08 1C         [24] 1527 	cjne	r6,#0x08,00138$
                                   1528 ;	src/usb.c:412: if (state == CONFIGURED)
      00114D BF 03 08         [24] 1529 	cjne	r7,#0x03,00135$
                                   1530 ;	src/usb.c:413: IN0BUF[0]=1;
      001150 90 C7 00         [24] 1531 	mov	dptr,#_IN0BUF
      001153 74 01            [12] 1532 	mov	a,#0x01
      001155 F0               [24] 1533 	movx	@dptr,a
      001156 80 05            [24] 1534 	sjmp	00136$
      001158                       1535 00135$:
                                   1536 ;	src/usb.c:415: IN0BUF[0]=0;
      001158 90 C7 00         [24] 1537 	mov	dptr,#_IN0BUF
      00115B E4               [12] 1538 	clr	a
      00115C F0               [24] 1539 	movx	@dptr,a
      00115D                       1540 00136$:
                                   1541 ;	src/usb.c:417: IN0BC=1;
      00115D 90 C7 B5         [24] 1542 	mov	dptr,#0xC7B5
      001160 74 01            [12] 1543 	mov	a,#0x01
      001162 F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	src/usb.c:419: EP0CS = HSNAK;
      001163 90 C7 B4         [24] 1546 	mov	dptr,#0xC7B4
      001166 04               [12] 1547 	inc	a
      001167 F0               [24] 1548 	movx	@dptr,a
                                   1549 ;	src/usb.c:420: return;
      001168 22               [24] 1550 	ret
      001169                       1551 00138$:
                                   1552 ;	src/usb.c:423: if(SETUPBUF[1] == GET_STATUS)
      001169 90 C7 E9         [24] 1553 	mov	dptr,#(_SETUPBUF + 0x0001)
      00116C E0               [24] 1554 	movx	a,@dptr
      00116D 60 03            [24] 1555 	jz	00411$
      00116F 02 12 28         [24] 1556 	ljmp	00166$
      001172                       1557 00411$:
                                   1558 ;	src/usb.c:425: if ((SETUPBUF[0] & REQUEST_RMASK) == REQUEST_ENDPOINT)
      001172 90 C7 E8         [24] 1559 	mov	dptr,#_SETUPBUF
      001175 E0               [24] 1560 	movx	a,@dptr
      001176 FE               [12] 1561 	mov	r6,a
      001177 53 06 07         [24] 1562 	anl	ar6,#0x07
      00117A BE 02 02         [24] 1563 	cjne	r6,#0x02,00412$
      00117D 80 03            [24] 1564 	sjmp	00413$
      00117F                       1565 00412$:
      00117F 02 12 14         [24] 1566 	ljmp	00161$
      001182                       1567 00413$:
                                   1568 ;	src/usb.c:427: if ((SETUPBUF[4]==0) || (state == CONFIGURED))
      001182 90 C7 EC         [24] 1569 	mov	dptr,#(_SETUPBUF + 0x0004)
      001185 E0               [24] 1570 	movx	a,@dptr
      001186 60 08            [24] 1571 	jz	00157$
      001188 BF 03 02         [24] 1572 	cjne	r7,#0x03,00415$
      00118B 80 03            [24] 1573 	sjmp	00416$
      00118D                       1574 00415$:
      00118D 02 12 28         [24] 1575 	ljmp	00166$
      001190                       1576 00416$:
      001190                       1577 00157$:
                                   1578 ;	src/usb.c:430: if (setup->index == 0x81)
      001190 90 C7 EC         [24] 1579 	mov	dptr,#(_SETUPBUF + 0x0004)
      001193 E0               [24] 1580 	movx	a,@dptr
      001194 FD               [12] 1581 	mov	r5,a
      001195 A3               [24] 1582 	inc	dptr
      001196 E0               [24] 1583 	movx	a,@dptr
      001197 FE               [12] 1584 	mov	r6,a
      001198 BD 81 0E         [24] 1585 	cjne	r5,#0x81,00155$
      00119B BE 00 0B         [24] 1586 	cjne	r6,#0x00,00155$
                                   1587 ;	src/usb.c:431: IN0BUF[0] = IN1CS;
      00119E 90 C7 B6         [24] 1588 	mov	dptr,#0xC7B6
      0011A1 E0               [24] 1589 	movx	a,@dptr
      0011A2 FC               [12] 1590 	mov	r4,a
      0011A3 90 C7 00         [24] 1591 	mov	dptr,#_IN0BUF
      0011A6 F0               [24] 1592 	movx	@dptr,a
      0011A7 80 5B            [24] 1593 	sjmp	00156$
      0011A9                       1594 00155$:
                                   1595 ;	src/usb.c:432: else if (setup->index == 0x82)
      0011A9 BD 82 0E         [24] 1596 	cjne	r5,#0x82,00152$
      0011AC BE 00 0B         [24] 1597 	cjne	r6,#0x00,00152$
                                   1598 ;	src/usb.c:433: IN0BUF[0] = IN2CS;
      0011AF 90 C7 B8         [24] 1599 	mov	dptr,#0xC7B8
      0011B2 E0               [24] 1600 	movx	a,@dptr
      0011B3 FC               [12] 1601 	mov	r4,a
      0011B4 90 C7 00         [24] 1602 	mov	dptr,#_IN0BUF
      0011B7 F0               [24] 1603 	movx	@dptr,a
      0011B8 80 4A            [24] 1604 	sjmp	00156$
      0011BA                       1605 00152$:
                                   1606 ;	src/usb.c:434: else if (setup->index == 0x83)
      0011BA BD 83 0E         [24] 1607 	cjne	r5,#0x83,00149$
      0011BD BE 00 0B         [24] 1608 	cjne	r6,#0x00,00149$
                                   1609 ;	src/usb.c:435: IN0BUF[0] = IN3CS;
      0011C0 90 C7 BA         [24] 1610 	mov	dptr,#0xC7BA
      0011C3 E0               [24] 1611 	movx	a,@dptr
      0011C4 FC               [12] 1612 	mov	r4,a
      0011C5 90 C7 00         [24] 1613 	mov	dptr,#_IN0BUF
      0011C8 F0               [24] 1614 	movx	@dptr,a
      0011C9 80 39            [24] 1615 	sjmp	00156$
      0011CB                       1616 00149$:
                                   1617 ;	src/usb.c:436: else if (setup->index == 0x01)
      0011CB BD 01 0E         [24] 1618 	cjne	r5,#0x01,00146$
      0011CE BE 00 0B         [24] 1619 	cjne	r6,#0x00,00146$
                                   1620 ;	src/usb.c:437: IN0BUF[0] = OUT1CS;
      0011D1 90 C7 C6         [24] 1621 	mov	dptr,#0xC7C6
      0011D4 E0               [24] 1622 	movx	a,@dptr
      0011D5 FC               [12] 1623 	mov	r4,a
      0011D6 90 C7 00         [24] 1624 	mov	dptr,#_IN0BUF
      0011D9 F0               [24] 1625 	movx	@dptr,a
      0011DA 80 28            [24] 1626 	sjmp	00156$
      0011DC                       1627 00146$:
                                   1628 ;	src/usb.c:438: else if (setup->index == 0x02)
      0011DC BD 02 0E         [24] 1629 	cjne	r5,#0x02,00143$
      0011DF BE 00 0B         [24] 1630 	cjne	r6,#0x00,00143$
                                   1631 ;	src/usb.c:439: IN0BUF[0] = OUT2CS;
      0011E2 90 C7 C8         [24] 1632 	mov	dptr,#0xC7C8
      0011E5 E0               [24] 1633 	movx	a,@dptr
      0011E6 FC               [12] 1634 	mov	r4,a
      0011E7 90 C7 00         [24] 1635 	mov	dptr,#_IN0BUF
      0011EA F0               [24] 1636 	movx	@dptr,a
      0011EB 80 17            [24] 1637 	sjmp	00156$
      0011ED                       1638 00143$:
                                   1639 ;	src/usb.c:440: else if (setup->index == 0x03)
      0011ED BD 03 0E         [24] 1640 	cjne	r5,#0x03,00140$
      0011F0 BE 00 0B         [24] 1641 	cjne	r6,#0x00,00140$
                                   1642 ;	src/usb.c:441: IN0BUF[0] = OUT3CS;
      0011F3 90 C7 CA         [24] 1643 	mov	dptr,#0xC7CA
      0011F6 E0               [24] 1644 	movx	a,@dptr
      0011F7 FE               [12] 1645 	mov	r6,a
      0011F8 90 C7 00         [24] 1646 	mov	dptr,#_IN0BUF
      0011FB F0               [24] 1647 	movx	@dptr,a
      0011FC 80 06            [24] 1648 	sjmp	00156$
      0011FE                       1649 00140$:
                                   1650 ;	src/usb.c:443: IN0BUF[0]=1;
      0011FE 90 C7 00         [24] 1651 	mov	dptr,#_IN0BUF
      001201 74 01            [12] 1652 	mov	a,#0x01
      001203 F0               [24] 1653 	movx	@dptr,a
      001204                       1654 00156$:
                                   1655 ;	src/usb.c:447: IN0BUF[1]=0;
      001204 90 C7 01         [24] 1656 	mov	dptr,#(_IN0BUF + 0x0001)
      001207 E4               [12] 1657 	clr	a
      001208 F0               [24] 1658 	movx	@dptr,a
                                   1659 ;	src/usb.c:448: IN0BC = 2; //2 bytes
      001209 90 C7 B5         [24] 1660 	mov	dptr,#0xC7B5
      00120C 74 02            [12] 1661 	mov	a,#0x02
      00120E F0               [24] 1662 	movx	@dptr,a
                                   1663 ;	src/usb.c:450: EP0CS = HSNAK; //HSNACK dis
      00120F 90 C7 B4         [24] 1664 	mov	dptr,#0xC7B4
      001212 F0               [24] 1665 	movx	@dptr,a
                                   1666 ;	src/usb.c:451: return;
      001213 22               [24] 1667 	ret
      001214                       1668 00161$:
                                   1669 ;	src/usb.c:458: IN0BUF[0]=0;
      001214 90 C7 00         [24] 1670 	mov	dptr,#_IN0BUF
      001217 E4               [12] 1671 	clr	a
      001218 F0               [24] 1672 	movx	@dptr,a
                                   1673 ;	src/usb.c:459: IN0BUF[1]=0;
      001219 90 C7 01         [24] 1674 	mov	dptr,#(_IN0BUF + 0x0001)
      00121C F0               [24] 1675 	movx	@dptr,a
                                   1676 ;	src/usb.c:460: IN0BC = 2; //2 bytes
      00121D 90 C7 B5         [24] 1677 	mov	dptr,#0xC7B5
      001220 74 02            [12] 1678 	mov	a,#0x02
      001222 F0               [24] 1679 	movx	@dptr,a
                                   1680 ;	src/usb.c:462: EP0CS = HSNAK; //HSNACK dis
      001223 90 C7 B4         [24] 1681 	mov	dptr,#0xC7B4
      001226 F0               [24] 1682 	movx	@dptr,a
                                   1683 ;	src/usb.c:463: return; 
      001227 22               [24] 1684 	ret
      001228                       1685 00166$:
                                   1686 ;	src/usb.c:468: if (state >= CONFIGURED)
      001228 BF 03 00         [24] 1687 	cjne	r7,#0x03,00429$
      00122B                       1688 00429$:
      00122B 50 03            [24] 1689 	jnc	00430$
      00122D 02 13 5B         [24] 1690 	ljmp	00216$
      001230                       1691 00430$:
                                   1692 ;	src/usb.c:470: if(SETUPBUF[1] == GET_INTERFACE)
      001230 90 C7 E9         [24] 1693 	mov	dptr,#(_SETUPBUF + 0x0001)
      001233 E0               [24] 1694 	movx	a,@dptr
      001234 FF               [12] 1695 	mov	r7,a
      001235 BF 0A 12         [24] 1696 	cjne	r7,#0x0A,00168$
                                   1697 ;	src/usb.c:473: IN0BUF[0]=0;
      001238 90 C7 00         [24] 1698 	mov	dptr,#_IN0BUF
      00123B E4               [12] 1699 	clr	a
      00123C F0               [24] 1700 	movx	@dptr,a
                                   1701 ;	src/usb.c:474: IN0BC = 1;
      00123D 90 C7 B5         [24] 1702 	mov	dptr,#0xC7B5
      001240 04               [12] 1703 	inc	a
      001241 F0               [24] 1704 	movx	@dptr,a
                                   1705 ;	src/usb.c:476: EP0CS |= HSNAK; //HSNACK dis
      001242 90 C7 B4         [24] 1706 	mov	dptr,#0xC7B4
      001245 E0               [24] 1707 	movx	a,@dptr
      001246 44 02            [12] 1708 	orl	a,#0x02
      001248 F0               [24] 1709 	movx	@dptr,a
                                   1710 ;	src/usb.c:477: return;    
      001249 22               [24] 1711 	ret
      00124A                       1712 00168$:
                                   1713 ;	src/usb.c:480: if(setup->request == CLEAR_FEATURE)
      00124A 90 C7 E9         [24] 1714 	mov	dptr,#(_SETUPBUF + 0x0001)
      00124D E0               [24] 1715 	movx	a,@dptr
      00124E FF               [12] 1716 	mov	r7,a
      00124F BF 01 02         [24] 1717 	cjne	r7,#0x01,00433$
      001252 80 03            [24] 1718 	sjmp	00434$
      001254                       1719 00433$:
      001254 02 12 D2         [24] 1720 	ljmp	00191$
      001257                       1721 00434$:
                                   1722 ;	src/usb.c:482: if (IS_ENDPOINT(setup->requestType) && (setup->value == ENDPOINT_HALT))
      001257 90 C7 E8         [24] 1723 	mov	dptr,#_SETUPBUF
      00125A E0               [24] 1724 	movx	a,@dptr
      00125B FE               [12] 1725 	mov	r6,a
      00125C 53 06 03         [24] 1726 	anl	ar6,#0x03
      00125F BE 02 70         [24] 1727 	cjne	r6,#0x02,00191$
      001262 90 C7 EA         [24] 1728 	mov	dptr,#(_SETUPBUF + 0x0002)
      001265 E0               [24] 1729 	movx	a,@dptr
      001266 FD               [12] 1730 	mov	r5,a
      001267 A3               [24] 1731 	inc	dptr
      001268 E0               [24] 1732 	movx	a,@dptr
      001269 FE               [12] 1733 	mov	r6,a
      00126A 4D               [12] 1734 	orl	a,r5
      00126B 70 65            [24] 1735 	jnz	00191$
                                   1736 ;	src/usb.c:484: if (setup->index == 0x81)
      00126D 90 C7 EC         [24] 1737 	mov	dptr,#(_SETUPBUF + 0x0004)
      001270 E0               [24] 1738 	movx	a,@dptr
      001271 FD               [12] 1739 	mov	r5,a
      001272 A3               [24] 1740 	inc	dptr
      001273 E0               [24] 1741 	movx	a,@dptr
      001274 FE               [12] 1742 	mov	r6,a
      001275 BD 81 0A         [24] 1743 	cjne	r5,#0x81,00185$
      001278 BE 00 07         [24] 1744 	cjne	r6,#0x00,00185$
                                   1745 ;	src/usb.c:485: IN1CS = 0;
      00127B 90 C7 B6         [24] 1746 	mov	dptr,#0xC7B6
      00127E E4               [12] 1747 	clr	a
      00127F F0               [24] 1748 	movx	@dptr,a
      001280 80 48            [24] 1749 	sjmp	00186$
      001282                       1750 00185$:
                                   1751 ;	src/usb.c:486: else if (setup->index == 0x82)
      001282 BD 82 0A         [24] 1752 	cjne	r5,#0x82,00182$
      001285 BE 00 07         [24] 1753 	cjne	r6,#0x00,00182$
                                   1754 ;	src/usb.c:487: IN2CS = 0;
      001288 90 C7 B8         [24] 1755 	mov	dptr,#0xC7B8
      00128B E4               [12] 1756 	clr	a
      00128C F0               [24] 1757 	movx	@dptr,a
      00128D 80 3B            [24] 1758 	sjmp	00186$
      00128F                       1759 00182$:
                                   1760 ;	src/usb.c:488: else if (setup->index == 0x83)
      00128F BD 83 0A         [24] 1761 	cjne	r5,#0x83,00179$
      001292 BE 00 07         [24] 1762 	cjne	r6,#0x00,00179$
                                   1763 ;	src/usb.c:489: IN3CS = 0;
      001295 90 C7 BA         [24] 1764 	mov	dptr,#0xC7BA
      001298 E4               [12] 1765 	clr	a
      001299 F0               [24] 1766 	movx	@dptr,a
      00129A 80 2E            [24] 1767 	sjmp	00186$
      00129C                       1768 00179$:
                                   1769 ;	src/usb.c:490: else if (setup->index == 0x01)
      00129C BD 01 0A         [24] 1770 	cjne	r5,#0x01,00176$
      00129F BE 00 07         [24] 1771 	cjne	r6,#0x00,00176$
                                   1772 ;	src/usb.c:491: OUT1CS = 0;
      0012A2 90 C7 C6         [24] 1773 	mov	dptr,#0xC7C6
      0012A5 E4               [12] 1774 	clr	a
      0012A6 F0               [24] 1775 	movx	@dptr,a
      0012A7 80 21            [24] 1776 	sjmp	00186$
      0012A9                       1777 00176$:
                                   1778 ;	src/usb.c:492: else if (setup->index == 0x02)
      0012A9 BD 02 0A         [24] 1779 	cjne	r5,#0x02,00173$
      0012AC BE 00 07         [24] 1780 	cjne	r6,#0x00,00173$
                                   1781 ;	src/usb.c:493: OUT2CS = 0;
      0012AF 90 C7 C8         [24] 1782 	mov	dptr,#0xC7C8
      0012B2 E4               [12] 1783 	clr	a
      0012B3 F0               [24] 1784 	movx	@dptr,a
      0012B4 80 14            [24] 1785 	sjmp	00186$
      0012B6                       1786 00173$:
                                   1787 ;	src/usb.c:494: else if (setup->index == 0x03)
      0012B6 BD 03 0A         [24] 1788 	cjne	r5,#0x03,00170$
      0012B9 BE 00 07         [24] 1789 	cjne	r6,#0x00,00170$
                                   1790 ;	src/usb.c:495: OUT3CS = 0;
      0012BC 90 C7 CA         [24] 1791 	mov	dptr,#0xC7CA
      0012BF E4               [12] 1792 	clr	a
      0012C0 F0               [24] 1793 	movx	@dptr,a
      0012C1 80 07            [24] 1794 	sjmp	00186$
      0012C3                       1795 00170$:
                                   1796 ;	src/usb.c:497: EP0CS = EP0STALL;
      0012C3 90 C7 B4         [24] 1797 	mov	dptr,#0xC7B4
      0012C6 74 01            [12] 1798 	mov	a,#0x01
      0012C8 F0               [24] 1799 	movx	@dptr,a
                                   1800 ;	src/usb.c:498: return;
      0012C9 22               [24] 1801 	ret
      0012CA                       1802 00186$:
                                   1803 ;	src/usb.c:501: EP0CS |= HSNAK; //HSNACK dis
      0012CA 90 C7 B4         [24] 1804 	mov	dptr,#0xC7B4
      0012CD E0               [24] 1805 	movx	a,@dptr
      0012CE 44 02            [12] 1806 	orl	a,#0x02
      0012D0 F0               [24] 1807 	movx	@dptr,a
                                   1808 ;	src/usb.c:502: return; 
      0012D1 22               [24] 1809 	ret
      0012D2                       1810 00191$:
                                   1811 ;	src/usb.c:506: if(setup->request == SET_FEATURE)
      0012D2 BF 03 02         [24] 1812 	cjne	r7,#0x03,00450$
      0012D5 80 03            [24] 1813 	sjmp	00451$
      0012D7                       1814 00450$:
      0012D7 02 13 5B         [24] 1815 	ljmp	00216$
      0012DA                       1816 00451$:
                                   1817 ;	src/usb.c:508: if (IS_ENDPOINT(setup->requestType) && (setup->value == ENDPOINT_HALT))
      0012DA 90 C7 E8         [24] 1818 	mov	dptr,#_SETUPBUF
      0012DD E0               [24] 1819 	movx	a,@dptr
      0012DE FF               [12] 1820 	mov	r7,a
      0012DF 53 07 03         [24] 1821 	anl	ar7,#0x03
      0012E2 BF 02 76         [24] 1822 	cjne	r7,#0x02,00216$
      0012E5 90 C7 EA         [24] 1823 	mov	dptr,#(_SETUPBUF + 0x0002)
      0012E8 E0               [24] 1824 	movx	a,@dptr
      0012E9 FE               [12] 1825 	mov	r6,a
      0012EA A3               [24] 1826 	inc	dptr
      0012EB E0               [24] 1827 	movx	a,@dptr
      0012EC FF               [12] 1828 	mov	r7,a
      0012ED 4E               [12] 1829 	orl	a,r6
      0012EE 70 6B            [24] 1830 	jnz	00216$
                                   1831 ;	src/usb.c:510: if (setup->index == 0x81)
      0012F0 90 C7 EC         [24] 1832 	mov	dptr,#(_SETUPBUF + 0x0004)
      0012F3 E0               [24] 1833 	movx	a,@dptr
      0012F4 FE               [12] 1834 	mov	r6,a
      0012F5 A3               [24] 1835 	inc	dptr
      0012F6 E0               [24] 1836 	movx	a,@dptr
      0012F7 FF               [12] 1837 	mov	r7,a
      0012F8 BE 81 0B         [24] 1838 	cjne	r6,#0x81,00208$
      0012FB BF 00 08         [24] 1839 	cjne	r7,#0x00,00208$
                                   1840 ;	src/usb.c:511: IN1CS = EPSTALL;
      0012FE 90 C7 B6         [24] 1841 	mov	dptr,#0xC7B6
      001301 74 01            [12] 1842 	mov	a,#0x01
      001303 F0               [24] 1843 	movx	@dptr,a
      001304 80 4D            [24] 1844 	sjmp	00209$
      001306                       1845 00208$:
                                   1846 ;	src/usb.c:512: else if (setup->index == 0x82)
      001306 BE 82 0B         [24] 1847 	cjne	r6,#0x82,00205$
      001309 BF 00 08         [24] 1848 	cjne	r7,#0x00,00205$
                                   1849 ;	src/usb.c:513: IN2CS = EPSTALL;
      00130C 90 C7 B8         [24] 1850 	mov	dptr,#0xC7B8
      00130F 74 01            [12] 1851 	mov	a,#0x01
      001311 F0               [24] 1852 	movx	@dptr,a
      001312 80 3F            [24] 1853 	sjmp	00209$
      001314                       1854 00205$:
                                   1855 ;	src/usb.c:514: else if (setup->index == 0x83)
      001314 BE 83 0B         [24] 1856 	cjne	r6,#0x83,00202$
      001317 BF 00 08         [24] 1857 	cjne	r7,#0x00,00202$
                                   1858 ;	src/usb.c:515: IN3CS = EPSTALL;
      00131A 90 C7 BA         [24] 1859 	mov	dptr,#0xC7BA
      00131D 74 01            [12] 1860 	mov	a,#0x01
      00131F F0               [24] 1861 	movx	@dptr,a
      001320 80 31            [24] 1862 	sjmp	00209$
      001322                       1863 00202$:
                                   1864 ;	src/usb.c:516: else if (setup->index == 0x01)
      001322 BE 01 0B         [24] 1865 	cjne	r6,#0x01,00199$
      001325 BF 00 08         [24] 1866 	cjne	r7,#0x00,00199$
                                   1867 ;	src/usb.c:517: OUT1CS = EPSTALL;
      001328 90 C7 C6         [24] 1868 	mov	dptr,#0xC7C6
      00132B 74 01            [12] 1869 	mov	a,#0x01
      00132D F0               [24] 1870 	movx	@dptr,a
      00132E 80 23            [24] 1871 	sjmp	00209$
      001330                       1872 00199$:
                                   1873 ;	src/usb.c:518: else if (setup->index == 0x02)
      001330 BE 02 0B         [24] 1874 	cjne	r6,#0x02,00196$
      001333 BF 00 08         [24] 1875 	cjne	r7,#0x00,00196$
                                   1876 ;	src/usb.c:519: OUT2CS = EPSTALL;
      001336 90 C7 C8         [24] 1877 	mov	dptr,#0xC7C8
      001339 74 01            [12] 1878 	mov	a,#0x01
      00133B F0               [24] 1879 	movx	@dptr,a
      00133C 80 15            [24] 1880 	sjmp	00209$
      00133E                       1881 00196$:
                                   1882 ;	src/usb.c:520: else if (setup->index == 0x03)
      00133E BE 03 0B         [24] 1883 	cjne	r6,#0x03,00193$
      001341 BF 00 08         [24] 1884 	cjne	r7,#0x00,00193$
                                   1885 ;	src/usb.c:521: OUT3CS = EPSTALL;
      001344 90 C7 CA         [24] 1886 	mov	dptr,#0xC7CA
      001347 74 01            [12] 1887 	mov	a,#0x01
      001349 F0               [24] 1888 	movx	@dptr,a
      00134A 80 07            [24] 1889 	sjmp	00209$
      00134C                       1890 00193$:
                                   1891 ;	src/usb.c:523: EP0CS = EP0STALL;
      00134C 90 C7 B4         [24] 1892 	mov	dptr,#0xC7B4
      00134F 74 01            [12] 1893 	mov	a,#0x01
      001351 F0               [24] 1894 	movx	@dptr,a
                                   1895 ;	src/usb.c:524: return;
      001352 22               [24] 1896 	ret
      001353                       1897 00209$:
                                   1898 ;	src/usb.c:527: EP0CS |= HSNAK; //HSNACK dis
      001353 90 C7 B4         [24] 1899 	mov	dptr,#0xC7B4
      001356 E0               [24] 1900 	movx	a,@dptr
      001357 44 02            [12] 1901 	orl	a,#0x02
      001359 F0               [24] 1902 	movx	@dptr,a
                                   1903 ;	src/usb.c:528: return; 
                                   1904 ;	src/usb.c:532: if(setup->request == SET_FEATURE)
      00135A 22               [24] 1905 	ret
      00135B                       1906 00216$:
                                   1907 ;	src/usb.c:539: EP0CS = EP0STALL; //Stall to error
      00135B 90 C7 B4         [24] 1908 	mov	dptr,#0xC7B4
      00135E 74 01            [12] 1909 	mov	a,#0x01
      001360 F0               [24] 1910 	movx	@dptr,a
      001361 22               [24] 1911 	ret
                                   1912 ;------------------------------------------------------------
                                   1913 ;Allocation info for local variables in function 'usbVendorIsr'
                                   1914 ;------------------------------------------------------------
                                   1915 ;	src/usb.c:542: void usbVendorIsr() 
                                   1916 ;	-----------------------------------------
                                   1917 ;	 function usbVendorIsr
                                   1918 ;	-----------------------------------------
      001362                       1919 _usbVendorIsr:
                                   1920 ;	src/usb.c:544: vendorSetup = true;
      001362 D2 04            [12] 1921 	setb	_vendorSetup
      001364 22               [24] 1922 	ret
                                   1923 ;------------------------------------------------------------
                                   1924 ;Allocation info for local variables in function 'usbClassIsr'
                                   1925 ;------------------------------------------------------------
                                   1926 ;	src/usb.c:547: void usbClassIsr() {
                                   1927 ;	-----------------------------------------
                                   1928 ;	 function usbClassIsr
                                   1929 ;	-----------------------------------------
      001365                       1930 _usbClassIsr:
                                   1931 ;	src/usb.c:553: EP0CS = EP0STALL;
      001365 90 C7 B4         [24] 1932 	mov	dptr,#0xC7B4
      001368 74 01            [12] 1933 	mov	a,#0x01
      00136A F0               [24] 1934 	movx	@dptr,a
      00136B 22               [24] 1935 	ret
                                   1936 ;------------------------------------------------------------
                                   1937 ;Allocation info for local variables in function 'usbBulkSend'
                                   1938 ;------------------------------------------------------------
                                   1939 ;buff                      Allocated with name '_usbBulkSend_PARM_2'
                                   1940 ;len                       Allocated with name '_usbBulkSend_PARM_3'
                                   1941 ;ep                        Allocated with name '_usbBulkSend_ep_1_76'
                                   1942 ;------------------------------------------------------------
                                   1943 ;	src/usb.c:558: void usbBulkSend(unsigned char ep, char* buff, unsigned char len) {
                                   1944 ;	-----------------------------------------
                                   1945 ;	 function usbBulkSend
                                   1946 ;	-----------------------------------------
      00136C                       1947 _usbBulkSend:
                                   1948 ;	src/usb.c:561: memcpy(IN0BUF, buff, len);
      00136C 90 80 75         [24] 1949 	mov	dptr,#_usbBulkSend_PARM_2
      00136F E0               [24] 1950 	movx	a,@dptr
      001370 FD               [12] 1951 	mov	r5,a
      001371 A3               [24] 1952 	inc	dptr
      001372 E0               [24] 1953 	movx	a,@dptr
      001373 FE               [12] 1954 	mov	r6,a
      001374 A3               [24] 1955 	inc	dptr
      001375 E0               [24] 1956 	movx	a,@dptr
      001376 FF               [12] 1957 	mov	r7,a
      001377 90 80 78         [24] 1958 	mov	dptr,#_usbBulkSend_PARM_3
      00137A E0               [24] 1959 	movx	a,@dptr
      00137B FC               [12] 1960 	mov	r4,a
      00137C FA               [12] 1961 	mov	r2,a
      00137D 7B 00            [12] 1962 	mov	r3,#0x00
      00137F 90 80 85         [24] 1963 	mov	dptr,#_memcpy_PARM_2
      001382 ED               [12] 1964 	mov	a,r5
      001383 F0               [24] 1965 	movx	@dptr,a
      001384 EE               [12] 1966 	mov	a,r6
      001385 A3               [24] 1967 	inc	dptr
      001386 F0               [24] 1968 	movx	@dptr,a
      001387 EF               [12] 1969 	mov	a,r7
      001388 A3               [24] 1970 	inc	dptr
      001389 F0               [24] 1971 	movx	@dptr,a
      00138A 90 80 88         [24] 1972 	mov	dptr,#_memcpy_PARM_3
      00138D EA               [12] 1973 	mov	a,r2
      00138E F0               [24] 1974 	movx	@dptr,a
      00138F EB               [12] 1975 	mov	a,r3
      001390 A3               [24] 1976 	inc	dptr
      001391 F0               [24] 1977 	movx	@dptr,a
      001392 90 C7 00         [24] 1978 	mov	dptr,#_IN0BUF
      001395 75 F0 00         [24] 1979 	mov	b,#0x00
      001398 C0 04            [24] 1980 	push	ar4
      00139A 12 15 38         [24] 1981 	lcall	_memcpy
      00139D D0 04            [24] 1982 	pop	ar4
                                   1983 ;	src/usb.c:563: IN0BC = len;
      00139F 90 C7 B5         [24] 1984 	mov	dptr,#0xC7B5
      0013A2 EC               [12] 1985 	mov	a,r4
      0013A3 F0               [24] 1986 	movx	@dptr,a
      0013A4 22               [24] 1987 	ret
                                   1988 ;------------------------------------------------------------
                                   1989 ;Allocation info for local variables in function 'usbSendIdString'
                                   1990 ;------------------------------------------------------------
                                   1991 ;i                         Allocated with name '_usbSendIdString_i_1_79'
                                   1992 ;------------------------------------------------------------
                                   1993 ;	src/usb.c:571: void usbSendIdString(void)
                                   1994 ;	-----------------------------------------
                                   1995 ;	 function usbSendIdString
                                   1996 ;	-----------------------------------------
      0013A5                       1997 _usbSendIdString:
                                   1998 ;	src/usb.c:575: IN0BUF[0] = 22;
      0013A5 90 C7 00         [24] 1999 	mov	dptr,#_IN0BUF
      0013A8 74 16            [12] 2000 	mov	a,#0x16
      0013AA F0               [24] 2001 	movx	@dptr,a
                                   2002 ;	src/usb.c:576: IN0BUF[1] = STRING_DESCRIPTOR;
      0013AB 90 C7 01         [24] 2003 	mov	dptr,#(_IN0BUF + 0x0001)
      0013AE 74 03            [12] 2004 	mov	a,#0x03
      0013B0 F0               [24] 2005 	movx	@dptr,a
                                   2006 ;	src/usb.c:578: for (i=0; i<5; i++)
      0013B1 7E 00            [12] 2007 	mov	r6,#0x00
      0013B3 7F 00            [12] 2008 	mov	r7,#0x00
      0013B5                       2009 00102$:
                                   2010 ;	src/usb.c:580: IN0BUF[2+(i*4)] = bin2hex[(chip_id[i]>>4)&0x0F];
      0013B5 8E 05            [24] 2011 	mov	ar5,r6
      0013B7 ED               [12] 2012 	mov	a,r5
      0013B8 2D               [12] 2013 	add	a,r5
      0013B9 25 E0            [12] 2014 	add	a,acc
      0013BB FD               [12] 2015 	mov	r5,a
      0013BC 24 02            [12] 2016 	add	a,#0x02
      0013BE 24 00            [12] 2017 	add	a,#_IN0BUF
      0013C0 FB               [12] 2018 	mov	r3,a
      0013C1 E4               [12] 2019 	clr	a
      0013C2 34 C7            [12] 2020 	addc	a,#(_IN0BUF >> 8)
      0013C4 FC               [12] 2021 	mov	r4,a
      0013C5 EE               [12] 2022 	mov	a,r6
      0013C6 24 80            [12] 2023 	add	a,#_chip_id
      0013C8 F9               [12] 2024 	mov	r1,a
      0013C9 EF               [12] 2025 	mov	a,r7
      0013CA 34 80            [12] 2026 	addc	a,#(_chip_id >> 8)
      0013CC FA               [12] 2027 	mov	r2,a
      0013CD 89 82            [24] 2028 	mov	dpl,r1
      0013CF 8A 83            [24] 2029 	mov	dph,r2
      0013D1 E0               [24] 2030 	movx	a,@dptr
      0013D2 C4               [12] 2031 	swap	a
      0013D3 54 0F            [12] 2032 	anl	a,#0x0F
      0013D5 F8               [12] 2033 	mov	r0,a
      0013D6 74 0F            [12] 2034 	mov	a,#0x0F
      0013D8 58               [12] 2035 	anl	a,r0
      0013D9 90 15 FC         [24] 2036 	mov	dptr,#_bin2hex
      0013DC 93               [24] 2037 	movc	a,@a+dptr
      0013DD F8               [12] 2038 	mov	r0,a
      0013DE 8B 82            [24] 2039 	mov	dpl,r3
      0013E0 8C 83            [24] 2040 	mov	dph,r4
      0013E2 F0               [24] 2041 	movx	@dptr,a
                                   2042 ;	src/usb.c:581: IN0BUF[3+(i*4)] = 0;
      0013E3 74 03            [12] 2043 	mov	a,#0x03
      0013E5 2D               [12] 2044 	add	a,r5
      0013E6 24 00            [12] 2045 	add	a,#_IN0BUF
      0013E8 F5 82            [12] 2046 	mov	dpl,a
      0013EA E4               [12] 2047 	clr	a
      0013EB 34 C7            [12] 2048 	addc	a,#(_IN0BUF >> 8)
      0013ED F5 83            [12] 2049 	mov	dph,a
      0013EF E4               [12] 2050 	clr	a
      0013F0 F0               [24] 2051 	movx	@dptr,a
                                   2052 ;	src/usb.c:582: IN0BUF[4+(i*4)] = bin2hex[chip_id[i]&0x0F];
      0013F1 74 04            [12] 2053 	mov	a,#0x04
      0013F3 2D               [12] 2054 	add	a,r5
      0013F4 24 00            [12] 2055 	add	a,#_IN0BUF
      0013F6 FB               [12] 2056 	mov	r3,a
      0013F7 E4               [12] 2057 	clr	a
      0013F8 34 C7            [12] 2058 	addc	a,#(_IN0BUF >> 8)
      0013FA FC               [12] 2059 	mov	r4,a
      0013FB 89 82            [24] 2060 	mov	dpl,r1
      0013FD 8A 83            [24] 2061 	mov	dph,r2
      0013FF E0               [24] 2062 	movx	a,@dptr
      001400 F9               [12] 2063 	mov	r1,a
      001401 74 0F            [12] 2064 	mov	a,#0x0F
      001403 59               [12] 2065 	anl	a,r1
      001404 90 15 FC         [24] 2066 	mov	dptr,#_bin2hex
      001407 93               [24] 2067 	movc	a,@a+dptr
      001408 FA               [12] 2068 	mov	r2,a
      001409 8B 82            [24] 2069 	mov	dpl,r3
      00140B 8C 83            [24] 2070 	mov	dph,r4
      00140D F0               [24] 2071 	movx	@dptr,a
                                   2072 ;	src/usb.c:583: IN0BUF[5+(i*4)] = 0;
      00140E 74 05            [12] 2073 	mov	a,#0x05
      001410 2D               [12] 2074 	add	a,r5
      001411 24 00            [12] 2075 	add	a,#_IN0BUF
      001413 F5 82            [12] 2076 	mov	dpl,a
      001415 E4               [12] 2077 	clr	a
      001416 34 C7            [12] 2078 	addc	a,#(_IN0BUF >> 8)
      001418 F5 83            [12] 2079 	mov	dph,a
      00141A E4               [12] 2080 	clr	a
      00141B F0               [24] 2081 	movx	@dptr,a
                                   2082 ;	src/usb.c:578: for (i=0; i<5; i++)
      00141C 0E               [12] 2083 	inc	r6
      00141D BE 00 01         [24] 2084 	cjne	r6,#0x00,00113$
      001420 0F               [12] 2085 	inc	r7
      001421                       2086 00113$:
      001421 C3               [12] 2087 	clr	c
      001422 EE               [12] 2088 	mov	a,r6
      001423 94 05            [12] 2089 	subb	a,#0x05
      001425 EF               [12] 2090 	mov	a,r7
      001426 64 80            [12] 2091 	xrl	a,#0x80
      001428 94 80            [12] 2092 	subb	a,#0x80
      00142A 50 03            [24] 2093 	jnc	00114$
      00142C 02 13 B5         [24] 2094 	ljmp	00102$
      00142F                       2095 00114$:
                                   2096 ;	src/usb.c:586: IN0BC = 22;
      00142F 90 C7 B5         [24] 2097 	mov	dptr,#0xC7B5
      001432 74 16            [12] 2098 	mov	a,#0x16
      001434 F0               [24] 2099 	movx	@dptr,a
      001435 22               [24] 2100 	ret
                                   2101 ;------------------------------------------------------------
                                   2102 ;Allocation info for local variables in function 'usbIsVendorSetup'
                                   2103 ;------------------------------------------------------------
                                   2104 ;	src/usb.c:591: bool usbIsVendorSetup(void)
                                   2105 ;	-----------------------------------------
                                   2106 ;	 function usbIsVendorSetup
                                   2107 ;	-----------------------------------------
      001436                       2108 _usbIsVendorSetup:
                                   2109 ;	src/usb.c:593: if (vendorSetup)
                                   2110 ;	src/usb.c:595: vendorSetup = false;
      001436 10 04 02         [24] 2111 	jbc	_vendorSetup,00108$
      001439 80 02            [24] 2112 	sjmp	00102$
      00143B                       2113 00108$:
                                   2114 ;	src/usb.c:596: return true;
      00143B D3               [12] 2115 	setb	c
      00143C 22               [24] 2116 	ret
      00143D                       2117 00102$:
                                   2118 ;	src/usb.c:598: return false;
      00143D C3               [12] 2119 	clr	c
      00143E 22               [24] 2120 	ret
                                   2121 ;------------------------------------------------------------
                                   2122 ;Allocation info for local variables in function 'usbGetSetupPacket'
                                   2123 ;------------------------------------------------------------
                                   2124 ;	src/usb.c:605: __xdata struct controllStruct * usbGetSetupPacket(void)
                                   2125 ;	-----------------------------------------
                                   2126 ;	 function usbGetSetupPacket
                                   2127 ;	-----------------------------------------
      00143F                       2128 _usbGetSetupPacket:
                                   2129 ;	src/usb.c:607: return (__xdata void*) SETUPBUF;
      00143F 90 C7 E8         [24] 2130 	mov	dptr,#_SETUPBUF
      001442 22               [24] 2131 	ret
                                   2132 ;------------------------------------------------------------
                                   2133 ;Allocation info for local variables in function 'usbAckSetup'
                                   2134 ;------------------------------------------------------------
                                   2135 ;	src/usb.c:610: void usbAckSetup(void)
                                   2136 ;	-----------------------------------------
                                   2137 ;	 function usbAckSetup
                                   2138 ;	-----------------------------------------
      001443                       2139 _usbAckSetup:
                                   2140 ;	src/usb.c:612: EP0CS = HSNAK; //HSNACK dis
      001443 90 C7 B4         [24] 2141 	mov	dptr,#0xC7B4
      001446 74 02            [12] 2142 	mov	a,#0x02
      001448 F0               [24] 2143 	movx	@dptr,a
      001449 22               [24] 2144 	ret
                                   2145 ;------------------------------------------------------------
                                   2146 ;Allocation info for local variables in function 'usbDismissSetup'
                                   2147 ;------------------------------------------------------------
                                   2148 ;	src/usb.c:615: void usbDismissSetup(void)
                                   2149 ;	-----------------------------------------
                                   2150 ;	 function usbDismissSetup
                                   2151 ;	-----------------------------------------
      00144A                       2152 _usbDismissSetup:
                                   2153 ;	src/usb.c:617: EP0CS = EP0STALL; //Stall to error
      00144A 90 C7 B4         [24] 2154 	mov	dptr,#0xC7B4
      00144D 74 01            [12] 2155 	mov	a,#0x01
      00144F F0               [24] 2156 	movx	@dptr,a
      001450 22               [24] 2157 	ret
                                   2158 	.area CSEG    (CODE)
                                   2159 	.area CONST   (CODE)
      0015FC                       2160 _bin2hex:
      0015FC 30                    2161 	.db #0x30	;  48	'0'
      0015FD 31                    2162 	.db #0x31	;  49	'1'
      0015FE 32                    2163 	.db #0x32	;  50	'2'
      0015FF 33                    2164 	.db #0x33	;  51	'3'
      001600 34                    2165 	.db #0x34	;  52	'4'
      001601 35                    2166 	.db #0x35	;  53	'5'
      001602 36                    2167 	.db #0x36	;  54	'6'
      001603 37                    2168 	.db #0x37	;  55	'7'
      001604 38                    2169 	.db #0x38	;  56	'8'
      001605 39                    2170 	.db #0x39	;  57	'9'
      001606 41                    2171 	.db #0x41	;  65	'A'
      001607 42                    2172 	.db #0x42	;  66	'B'
      001608 43                    2173 	.db #0x43	;  67	'C'
      001609 44                    2174 	.db #0x44	;  68	'D'
      00160A 45                    2175 	.db #0x45	;  69	'E'
      00160B 46                    2176 	.db #0x46	;  70	'F'
                                   2177 	.area XINIT   (CODE)
      00169E                       2178 __xinit__state:
      00169E 00                    2179 	.db #0x00	; 0
      00169F                       2180 __xinit__radioChannel:
      00169F FF                    2181 	.db #0xFF	; -1
      0016A0                       2182 __xinit__dataRate:
      0016A0 FF                    2183 	.db #0xFF	; -1
                                   2184 	.area CABS    (ABS,CODE)
