                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
                                      4 ; This file was generated Mon Mar  2 13:45:47 2015
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
      000004                        231 _launchBootloader:
      000004                        232 	.ds 1
      000005                        233 _vendorSetup:
      000005                        234 	.ds 1
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
      0000C8 C2 04            [12]  298 	clr	_launchBootloader
                                    299 ;	src/usb.c:51: static bool vendorSetup=false;
      0000CA C2 05            [12]  300 	clr	_vendorSetup
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
      000B3D                        319 _usbInit:
                           000007   320 	ar7 = 0x07
                           000006   321 	ar6 = 0x06
                           000005   322 	ar5 = 0x05
                           000004   323 	ar4 = 0x04
                           000003   324 	ar3 = 0x03
                           000002   325 	ar2 = 0x02
                           000001   326 	ar1 = 0x01
                           000000   327 	ar0 = 0x00
                                    328 ;	src/usb.c:61: state = POWERED;
      000B3D 90 80 93         [24]  329 	mov	dptr,#_state
      000B40 E4               [12]  330 	clr	a
      000B41 F0               [24]  331 	movx	@dptr,a
                                    332 ;	src/usb.c:64: USBCON = WU;
      000B42 75 A0 40         [24]  333 	mov	_USBCON,#0x40
                                    334 ;	src/usb.c:67: USBCS |= DISCON;
      000B45 90 C7 D6         [24]  335 	mov	dptr,#0xC7D6
      000B48 E0               [24]  336 	movx	a,@dptr
      000B49 44 04            [12]  337 	orl	a,#0x04
      000B4B F0               [24]  338 	movx	@dptr,a
                                    339 ;	src/usb.c:69: for(i=0;i<50000;i++);
      000B4C 7C 50            [12]  340 	mov	r4,#0x50
      000B4E 7D C3            [12]  341 	mov	r5,#0xC3
      000B50 7E 00            [12]  342 	mov	r6,#0x00
      000B52 7F 00            [12]  343 	mov	r7,#0x00
      000B54                        344 00104$:
      000B54 1C               [12]  345 	dec	r4
      000B55 BC FF 09         [24]  346 	cjne	r4,#0xFF,00114$
      000B58 1D               [12]  347 	dec	r5
      000B59 BD FF 05         [24]  348 	cjne	r5,#0xFF,00114$
      000B5C 1E               [12]  349 	dec	r6
      000B5D BE FF 01         [24]  350 	cjne	r6,#0xFF,00114$
      000B60 1F               [12]  351 	dec	r7
      000B61                        352 00114$:
      000B61 EC               [12]  353 	mov	a,r4
      000B62 4D               [12]  354 	orl	a,r5
      000B63 4E               [12]  355 	orl	a,r6
      000B64 4F               [12]  356 	orl	a,r7
      000B65 70 ED            [24]  357 	jnz	00104$
                                    358 ;	src/usb.c:70: USBCS &= ~DISCON;
      000B67 90 C7 D6         [24]  359 	mov	dptr,#0xC7D6
      000B6A E0               [24]  360 	movx	a,@dptr
      000B6B 54 FB            [12]  361 	anl	a,#0xFB
      000B6D F0               [24]  362 	movx	@dptr,a
                                    363 ;	src/usb.c:73: INBULKVAL=0;   //IN EP
      000B6E 90 C7 DE         [24]  364 	mov	dptr,#0xC7DE
      000B71 E4               [12]  365 	clr	a
      000B72 F0               [24]  366 	movx	@dptr,a
                                    367 ;	src/usb.c:74: IN_IEN=0;
      000B73 90 C7 AC         [24]  368 	mov	dptr,#0xC7AC
      000B76 F0               [24]  369 	movx	@dptr,a
                                    370 ;	src/usb.c:75: OUTBULKVAL=0;  //OUT EP
      000B77 90 C7 DF         [24]  371 	mov	dptr,#0xC7DF
      000B7A F0               [24]  372 	movx	@dptr,a
                                    373 ;	src/usb.c:76: OUT_IEN=0;
      000B7B 90 C7 AD         [24]  374 	mov	dptr,#0xC7AD
      000B7E F0               [24]  375 	movx	@dptr,a
                                    376 ;	src/usb.c:77: INISOVAL=0;    //ISO EP
      000B7F 90 C7 E0         [24]  377 	mov	dptr,#0xC7E0
      000B82 F0               [24]  378 	movx	@dptr,a
                                    379 ;	src/usb.c:78: OUTISOVAL=0;
      000B83 90 C7 00         [24]  380 	mov	dptr,#0xC700
      000B86 F0               [24]  381 	movx	@dptr,a
                                    382 ;	src/usb.c:81: USBIEN = URESIE | SUSPIE;
      000B87 90 C7 AE         [24]  383 	mov	dptr,#0xC7AE
      000B8A 74 18            [12]  384 	mov	a,#0x18
      000B8C F0               [24]  385 	movx	@dptr,a
                                    386 ;	src/usb.c:84: IN_IRQ = 0xFF;
      000B8D 90 C7 A9         [24]  387 	mov	dptr,#0xC7A9
      000B90 74 FF            [12]  388 	mov	a,#0xFF
      000B92 F0               [24]  389 	movx	@dptr,a
                                    390 ;	src/usb.c:85: OUT_IRQ = 0xFF;
      000B93 90 C7 AA         [24]  391 	mov	dptr,#0xC7AA
      000B96 F0               [24]  392 	movx	@dptr,a
                                    393 ;	src/usb.c:86: USBIRQ = 0xFF;
      000B97 90 C7 AB         [24]  394 	mov	dptr,#0xC7AB
      000B9A F0               [24]  395 	movx	@dptr,a
                                    396 ;	src/usb.c:91: BOUT1ADDR = 32;
      000B9B 90 C7 81         [24]  397 	mov	dptr,#0xC781
      000B9E 74 20            [12]  398 	mov	a,#0x20
      000BA0 F0               [24]  399 	movx	@dptr,a
                                    400 ;	src/usb.c:92: BOUT2ADDR = 64;
      000BA1 90 C7 82         [24]  401 	mov	dptr,#0xC782
      000BA4 23               [12]  402 	rl	a
      000BA5 F0               [24]  403 	movx	@dptr,a
                                    404 ;	src/usb.c:93: BOUT3ADDR = 96;
      000BA6 90 C7 83         [24]  405 	mov	dptr,#0xC783
      000BA9 74 60            [12]  406 	mov	a,#0x60
      000BAB F0               [24]  407 	movx	@dptr,a
                                    408 ;	src/usb.c:94: BINSTADDR = 0x40; // EPOUT_Size/4 = 256/4 = 64
      000BAC 90 C7 88         [24]  409 	mov	dptr,#0xC788
      000BAF 74 40            [12]  410 	mov	a,#0x40
      000BB1 F0               [24]  411 	movx	@dptr,a
                                    412 ;	src/usb.c:95: BIN1ADDR  = 32;
      000BB2 90 C7 89         [24]  413 	mov	dptr,#0xC789
      000BB5 03               [12]  414 	rr	a
      000BB6 F0               [24]  415 	movx	@dptr,a
                                    416 ;	src/usb.c:96: BIN2ADDR  = 64;
      000BB7 90 C7 8A         [24]  417 	mov	dptr,#0xC78A
      000BBA 23               [12]  418 	rl	a
      000BBB F0               [24]  419 	movx	@dptr,a
                                    420 ;	src/usb.c:97: BIN3ADDR  = 96;
      000BBC 90 C7 8B         [24]  421 	mov	dptr,#0xC78B
      000BBF 74 60            [12]  422 	mov	a,#0x60
      000BC1 F0               [24]  423 	movx	@dptr,a
                                    424 ;	src/usb.c:100: IEN1 |= 0x18;  
      000BC2 43 B8 18         [24]  425 	orl	_IEN1,#0x18
      000BC5 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'usbDeinit'
                                    429 ;------------------------------------------------------------
                                    430 ;	src/usb.c:103: void usbDeinit()
                                    431 ;	-----------------------------------------
                                    432 ;	 function usbDeinit
                                    433 ;	-----------------------------------------
      000BC6                        434 _usbDeinit:
                                    435 ;	src/usb.c:105: state = POWERED; //Deactivate all mechanism
      000BC6 90 80 93         [24]  436 	mov	dptr,#_state
      000BC9 E4               [12]  437 	clr	a
      000BCA F0               [24]  438 	movx	@dptr,a
                                    439 ;	src/usb.c:108: IEN1 &= (~0x18);
      000BCB AF B8            [24]  440 	mov	r7,_IEN1
      000BCD 74 E7            [12]  441 	mov	a,#0xE7
      000BCF 5F               [12]  442 	anl	a,r7
      000BD0 F5 B8            [12]  443 	mov	_IEN1,a
                                    444 ;	src/usb.c:111: USB_SUSPEND = 1;
      000BD2 D2 A5            [12]  445 	setb	_USB_SUSPEND
      000BD4 22               [24]  446 	ret
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'usbGetState'
                                    449 ;------------------------------------------------------------
                                    450 ;	src/usb.c:114: usbState_t usbGetState()
                                    451 ;	-----------------------------------------
                                    452 ;	 function usbGetState
                                    453 ;	-----------------------------------------
      000BD5                        454 _usbGetState:
                                    455 ;	src/usb.c:116: return state;
      000BD5 90 80 93         [24]  456 	mov	dptr,#_state
      000BD8 E0               [24]  457 	movx	a,@dptr
      000BD9 F5 82            [12]  458 	mov	dpl,a
      000BDB 22               [24]  459 	ret
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'usbWuIsr'
                                    462 ;------------------------------------------------------------
                                    463 ;	src/usb.c:119: void usbWuIsr() __interrupt(11)
                                    464 ;	-----------------------------------------
                                    465 ;	 function usbWuIsr
                                    466 ;	-----------------------------------------
      000BDC                        467 _usbWuIsr:
                                    468 ;	src/usb.c:122: return;
      000BDC 32               [24]  469 	reti
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
      000BDD                        483 _usbIsr:
                           00000F   484 	ar7 = 0x0F
                           00000E   485 	ar6 = 0x0E
                           00000D   486 	ar5 = 0x0D
                           00000C   487 	ar4 = 0x0C
                           00000B   488 	ar3 = 0x0B
                           00000A   489 	ar2 = 0x0A
                           000009   490 	ar1 = 0x09
                           000008   491 	ar0 = 0x08
      000BDD C0 21            [24]  492 	push	bits
      000BDF C0 E0            [24]  493 	push	acc
      000BE1 C0 F0            [24]  494 	push	b
      000BE3 C0 82            [24]  495 	push	dpl
      000BE5 C0 83            [24]  496 	push	dph
      000BE7 C0 07            [24]  497 	push	(0+7)
      000BE9 C0 06            [24]  498 	push	(0+6)
      000BEB C0 05            [24]  499 	push	(0+5)
      000BED C0 04            [24]  500 	push	(0+4)
      000BEF C0 03            [24]  501 	push	(0+3)
      000BF1 C0 02            [24]  502 	push	(0+2)
      000BF3 C0 01            [24]  503 	push	(0+1)
      000BF5 C0 00            [24]  504 	push	(0+0)
      000BF7 C0 D0            [24]  505 	push	psw
      000BF9 75 D0 08         [24]  506 	mov	psw,#0x08
                                    507 ;	src/usb.c:130: switch (IVEC) {
      000BFC 90 C7 A8         [24]  508 	mov	dptr,#0xC7A8
      000BFF E0               [24]  509 	movx	a,@dptr
      000C00 FF               [12]  510 	mov	r7,a
      000C01 60 63            [24]  511 	jz	00101$
      000C03 BF 04 03         [24]  512 	cjne	r7,#0x04,00200$
      000C06 02 0C B7         [24]  513 	ljmp	00111$
      000C09                        514 00200$:
      000C09 BF 08 03         [24]  515 	cjne	r7,#0x08,00201$
      000C0C 02 0D 03         [24]  516 	ljmp	00115$
      000C0F                        517 00201$:
      000C0F BF 0C 03         [24]  518 	cjne	r7,#0x0C,00202$
      000C12 02 0D 0C         [24]  519 	ljmp	00116$
      000C15                        520 00202$:
      000C15 BF 10 03         [24]  521 	cjne	r7,#0x10,00203$
      000C18 02 0D 15         [24]  522 	ljmp	00117$
      000C1B                        523 00203$:
      000C1B BF 18 03         [24]  524 	cjne	r7,#0x18,00204$
      000C1E 02 0D 40         [24]  525 	ljmp	00118$
      000C21                        526 00204$:
      000C21 BF 1C 03         [24]  527 	cjne	r7,#0x1C,00205$
      000C24 02 0D 54         [24]  528 	ljmp	00119$
      000C27                        529 00205$:
      000C27 BF 20 03         [24]  530 	cjne	r7,#0x20,00206$
      000C2A 02 0D 68         [24]  531 	ljmp	00120$
      000C2D                        532 00206$:
      000C2D BF 24 03         [24]  533 	cjne	r7,#0x24,00207$
      000C30 02 0D 70         [24]  534 	ljmp	00121$
      000C33                        535 00207$:
      000C33 BF 28 03         [24]  536 	cjne	r7,#0x28,00208$
      000C36 02 0D 78         [24]  537 	ljmp	00122$
      000C39                        538 00208$:
      000C39 BF 2C 03         [24]  539 	cjne	r7,#0x2C,00209$
      000C3C 02 0D 80         [24]  540 	ljmp	00123$
      000C3F                        541 00209$:
      000C3F BF 30 03         [24]  542 	cjne	r7,#0x30,00210$
      000C42 02 0D 88         [24]  543 	ljmp	00124$
      000C45                        544 00210$:
      000C45 BF 34 03         [24]  545 	cjne	r7,#0x34,00211$
      000C48 02 0D 90         [24]  546 	ljmp	00125$
      000C4B                        547 00211$:
      000C4B BF 38 03         [24]  548 	cjne	r7,#0x38,00212$
      000C4E 02 0D 98         [24]  549 	ljmp	00126$
      000C51                        550 00212$:
      000C51 BF 3C 03         [24]  551 	cjne	r7,#0x3C,00213$
      000C54 02 0D A0         [24]  552 	ljmp	00127$
      000C57                        553 00213$:
      000C57 BF 40 03         [24]  554 	cjne	r7,#0x40,00214$
      000C5A 02 0D A8         [24]  555 	ljmp	00128$
      000C5D                        556 00214$:
      000C5D BF 44 03         [24]  557 	cjne	r7,#0x44,00215$
      000C60 02 0D B0         [24]  558 	ljmp	00129$
      000C63                        559 00215$:
      000C63 02 0D B6         [24]  560 	ljmp	00131$
                                    561 ;	src/usb.c:131: case IRQ_SUDAV:
      000C66                        562 00101$:
                                    563 ;	src/usb.c:133: if(IS_STANDARD(SETUPBUF[0]))
      000C66 90 C7 E8         [24]  564 	mov	dptr,#_SETUPBUF
      000C69 E0               [24]  565 	movx	a,@dptr
      000C6A FF               [12]  566 	mov	r7,a
      000C6B 54 60            [12]  567 	anl	a,#0x60
      000C6D 60 02            [24]  568 	jz	00217$
      000C6F 80 0B            [24]  569 	sjmp	00109$
      000C71                        570 00217$:
                                    571 ;	src/usb.c:134: usbSetupIsr();
      000C71 75 D0 00         [24]  572 	mov	psw,#0x00
      000C74 12 0E D6         [24]  573 	lcall	_usbSetupIsr
      000C77 75 D0 08         [24]  574 	mov	psw,#0x08
      000C7A 80 32            [24]  575 	sjmp	00110$
      000C7C                        576 00109$:
                                    577 ;	src/usb.c:135: else if(IS_VENDOR(SETUPBUF[0]))
      000C7C 90 C7 E8         [24]  578 	mov	dptr,#_SETUPBUF
      000C7F E0               [24]  579 	movx	a,@dptr
      000C80 FF               [12]  580 	mov	r7,a
      000C81 53 0F 60         [24]  581 	anl	ar7,#0x60
      000C84 BF 40 0B         [24]  582 	cjne	r7,#0x40,00106$
                                    583 ;	src/usb.c:136: usbVendorIsr();
      000C87 75 D0 00         [24]  584 	mov	psw,#0x00
      000C8A 12 13 64         [24]  585 	lcall	_usbVendorIsr
      000C8D 75 D0 08         [24]  586 	mov	psw,#0x08
      000C90 80 1C            [24]  587 	sjmp	00110$
      000C92                        588 00106$:
                                    589 ;	src/usb.c:137: else if(IS_CLASS(SETUPBUF[0]))
      000C92 90 C7 E8         [24]  590 	mov	dptr,#_SETUPBUF
      000C95 E0               [24]  591 	movx	a,@dptr
      000C96 FF               [12]  592 	mov	r7,a
      000C97 53 0F 60         [24]  593 	anl	ar7,#0x60
      000C9A BF 20 0B         [24]  594 	cjne	r7,#0x20,00103$
                                    595 ;	src/usb.c:138: usbClassIsr();
      000C9D 75 D0 00         [24]  596 	mov	psw,#0x00
      000CA0 12 13 67         [24]  597 	lcall	_usbClassIsr
      000CA3 75 D0 08         [24]  598 	mov	psw,#0x08
      000CA6 80 06            [24]  599 	sjmp	00110$
      000CA8                        600 00103$:
                                    601 ;	src/usb.c:140: EP0CS = EP0STALL; //Stall to error
      000CA8 90 C7 B4         [24]  602 	mov	dptr,#0xC7B4
      000CAB 74 01            [12]  603 	mov	a,#0x01
      000CAD F0               [24]  604 	movx	@dptr,a
      000CAE                        605 00110$:
                                    606 ;	src/usb.c:142: USBIRQ = SUDAVIR;
      000CAE 90 C7 AB         [24]  607 	mov	dptr,#0xC7AB
      000CB1 74 01            [12]  608 	mov	a,#0x01
      000CB3 F0               [24]  609 	movx	@dptr,a
                                    610 ;	src/usb.c:143: break;
      000CB4 02 0D B6         [24]  611 	ljmp	00131$
                                    612 ;	src/usb.c:144: case IRQ_SOF:
      000CB7                        613 00111$:
                                    614 ;	src/usb.c:145: if((ledTimeout>=0) && (!ledTimeout--)) {
      000CB7 90 80 7E         [24]  615 	mov	dptr,#_ledTimeout
      000CBA E0               [24]  616 	movx	a,@dptr
      000CBB FE               [12]  617 	mov	r6,a
      000CBC A3               [24]  618 	inc	dptr
      000CBD E0               [24]  619 	movx	a,@dptr
      000CBE FF               [12]  620 	mov	r7,a
      000CBF 20 E7 38         [24]  621 	jb	acc.7,00113$
      000CC2 8E 0C            [24]  622 	mov	ar4,r6
      000CC4 8F 0D            [24]  623 	mov	ar5,r7
      000CC6 1E               [12]  624 	dec	r6
      000CC7 BE FF 01         [24]  625 	cjne	r6,#0xFF,00223$
      000CCA 1F               [12]  626 	dec	r7
      000CCB                        627 00223$:
      000CCB 90 80 7E         [24]  628 	mov	dptr,#_ledTimeout
      000CCE EE               [12]  629 	mov	a,r6
      000CCF F0               [24]  630 	movx	@dptr,a
      000CD0 EF               [12]  631 	mov	a,r7
      000CD1 A3               [24]  632 	inc	dptr
      000CD2 F0               [24]  633 	movx	@dptr,a
      000CD3 EC               [12]  634 	mov	a,r4
      000CD4 4D               [12]  635 	orl	a,r5
      000CD5 70 23            [24]  636 	jnz	00113$
                                    637 ;	src/usb.c:146: ledSet(LED_RED, false);
      000CD7 C2 06            [12]  638 	clr	_ledSet_PARM_2
      000CD9 75 82 01         [24]  639 	mov	dpl,#0x01
      000CDC 75 D0 00         [24]  640 	mov	psw,#0x00
      000CDF 12 14 8E         [24]  641 	lcall	_ledSet
      000CE2 75 D0 08         [24]  642 	mov	psw,#0x08
                                    643 ;	src/usb.c:147: ledSet(LED_GREEN, false);
      000CE5 C2 06            [12]  644 	clr	_ledSet_PARM_2
      000CE7 75 82 02         [24]  645 	mov	dpl,#0x02
      000CEA 75 D0 00         [24]  646 	mov	psw,#0x00
      000CED 12 14 8E         [24]  647 	lcall	_ledSet
      000CF0 75 D0 08         [24]  648 	mov	psw,#0x08
                                    649 ;	src/usb.c:148: ledTimeout = 0;
      000CF3 90 80 7E         [24]  650 	mov	dptr,#_ledTimeout
      000CF6 E4               [12]  651 	clr	a
      000CF7 F0               [24]  652 	movx	@dptr,a
      000CF8 A3               [24]  653 	inc	dptr
      000CF9 F0               [24]  654 	movx	@dptr,a
      000CFA                        655 00113$:
                                    656 ;	src/usb.c:150: USBIRQ = SOFIR;
      000CFA 90 C7 AB         [24]  657 	mov	dptr,#0xC7AB
      000CFD 74 02            [12]  658 	mov	a,#0x02
      000CFF F0               [24]  659 	movx	@dptr,a
                                    660 ;	src/usb.c:151: break;
      000D00 02 0D B6         [24]  661 	ljmp	00131$
                                    662 ;	src/usb.c:152: case IRQ_SUTOK:
      000D03                        663 00115$:
                                    664 ;	src/usb.c:153: USBIRQ = SUTOKIR;
      000D03 90 C7 AB         [24]  665 	mov	dptr,#0xC7AB
      000D06 74 04            [12]  666 	mov	a,#0x04
      000D08 F0               [24]  667 	movx	@dptr,a
                                    668 ;	src/usb.c:154: break;
      000D09 02 0D B6         [24]  669 	ljmp	00131$
                                    670 ;	src/usb.c:155: case IRQ_SUSPEND:
      000D0C                        671 00116$:
                                    672 ;	src/usb.c:156: USBIRQ = SUSPIR;
      000D0C 90 C7 AB         [24]  673 	mov	dptr,#0xC7AB
      000D0F 74 08            [12]  674 	mov	a,#0x08
      000D11 F0               [24]  675 	movx	@dptr,a
                                    676 ;	src/usb.c:157: break;
      000D12 02 0D B6         [24]  677 	ljmp	00131$
                                    678 ;	src/usb.c:158: case IRQ_USBRESET:
      000D15                        679 00117$:
                                    680 ;	src/usb.c:160: state = DEFAULT;
      000D15 90 80 93         [24]  681 	mov	dptr,#_state
      000D18 74 01            [12]  682 	mov	a,#0x01
      000D1A F0               [24]  683 	movx	@dptr,a
                                    684 ;	src/usb.c:163: INBULKVAL = IN0VAL;
      000D1B 90 C7 DE         [24]  685 	mov	dptr,#0xC7DE
      000D1E F0               [24]  686 	movx	@dptr,a
                                    687 ;	src/usb.c:164: OUTBULKVAL= OUT0VAL;
      000D1F 90 C7 DF         [24]  688 	mov	dptr,#0xC7DF
      000D22 F0               [24]  689 	movx	@dptr,a
                                    690 ;	src/usb.c:167: OUT0BC = BCDUMMY;
      000D23 90 C7 C5         [24]  691 	mov	dptr,#0xC7C5
      000D26 F0               [24]  692 	movx	@dptr,a
                                    693 ;	src/usb.c:170: IN_IEN = IN0IE;
      000D27 90 C7 AC         [24]  694 	mov	dptr,#0xC7AC
      000D2A F0               [24]  695 	movx	@dptr,a
                                    696 ;	src/usb.c:171: OUT_IEN = OUT0IE;
      000D2B 90 C7 AD         [24]  697 	mov	dptr,#0xC7AD
      000D2E F0               [24]  698 	movx	@dptr,a
                                    699 ;	src/usb.c:172: USBIEN |= SUDAVIE | SUTOKIE;
      000D2F 90 C7 AE         [24]  700 	mov	dptr,#0xC7AE
      000D32 E0               [24]  701 	movx	a,@dptr
      000D33 44 05            [12]  702 	orl	a,#0x05
      000D35 FF               [12]  703 	mov	r7,a
      000D36 F0               [24]  704 	movx	@dptr,a
                                    705 ;	src/usb.c:174: USBIRQ = URESIR;
      000D37 90 C7 AB         [24]  706 	mov	dptr,#0xC7AB
      000D3A 74 10            [12]  707 	mov	a,#0x10
      000D3C F0               [24]  708 	movx	@dptr,a
                                    709 ;	src/usb.c:175: break;
      000D3D 02 0D B6         [24]  710 	ljmp	00131$
                                    711 ;	src/usb.c:176: case IRQ_EP0IN:
      000D40                        712 00118$:
                                    713 ;	src/usb.c:177: usbBulkInIsr(0);
      000D40 75 82 00         [24]  714 	mov	dpl,#0x00
      000D43 75 D0 00         [24]  715 	mov	psw,#0x00
      000D46 12 0D D4         [24]  716 	lcall	_usbBulkInIsr
      000D49 75 D0 08         [24]  717 	mov	psw,#0x08
                                    718 ;	src/usb.c:178: IN_IRQ = IN0IR;
      000D4C 90 C7 A9         [24]  719 	mov	dptr,#0xC7A9
      000D4F 74 01            [12]  720 	mov	a,#0x01
      000D51 F0               [24]  721 	movx	@dptr,a
                                    722 ;	src/usb.c:179: break;
                                    723 ;	src/usb.c:180: case IRQ_EP0OUT:
      000D52 80 62            [24]  724 	sjmp	00131$
      000D54                        725 00119$:
                                    726 ;	src/usb.c:181: usbBulkOutIsr(0);
      000D54 75 82 00         [24]  727 	mov	dpl,#0x00
      000D57 75 D0 00         [24]  728 	mov	psw,#0x00
      000D5A 12 0D D3         [24]  729 	lcall	_usbBulkOutIsr
      000D5D 75 D0 08         [24]  730 	mov	psw,#0x08
                                    731 ;	src/usb.c:183: OUT_IRQ = OUT0IR;
      000D60 90 C7 AA         [24]  732 	mov	dptr,#0xC7AA
      000D63 74 01            [12]  733 	mov	a,#0x01
      000D65 F0               [24]  734 	movx	@dptr,a
                                    735 ;	src/usb.c:184: break;
                                    736 ;	src/usb.c:185: case IRQ_EP1IN:
      000D66 80 4E            [24]  737 	sjmp	00131$
      000D68                        738 00120$:
                                    739 ;	src/usb.c:186: IN_IRQ = IN1IR;
      000D68 90 C7 A9         [24]  740 	mov	dptr,#0xC7A9
      000D6B 74 02            [12]  741 	mov	a,#0x02
      000D6D F0               [24]  742 	movx	@dptr,a
                                    743 ;	src/usb.c:187: break;
                                    744 ;	src/usb.c:188: case IRQ_EP1OUT:
      000D6E 80 46            [24]  745 	sjmp	00131$
      000D70                        746 00121$:
                                    747 ;	src/usb.c:189: OUT_IRQ = OUT1IR;
      000D70 90 C7 AA         [24]  748 	mov	dptr,#0xC7AA
      000D73 74 02            [12]  749 	mov	a,#0x02
      000D75 F0               [24]  750 	movx	@dptr,a
                                    751 ;	src/usb.c:190: break;
                                    752 ;	src/usb.c:191: case IRQ_EP2IN:
      000D76 80 3E            [24]  753 	sjmp	00131$
      000D78                        754 00122$:
                                    755 ;	src/usb.c:192: IN_IRQ = IN2IR;
      000D78 90 C7 A9         [24]  756 	mov	dptr,#0xC7A9
      000D7B 74 04            [12]  757 	mov	a,#0x04
      000D7D F0               [24]  758 	movx	@dptr,a
                                    759 ;	src/usb.c:193: break;
                                    760 ;	src/usb.c:194: case IRQ_EP2OUT:
      000D7E 80 36            [24]  761 	sjmp	00131$
      000D80                        762 00123$:
                                    763 ;	src/usb.c:195: OUT_IRQ = OUT2IR;
      000D80 90 C7 AA         [24]  764 	mov	dptr,#0xC7AA
      000D83 74 04            [12]  765 	mov	a,#0x04
      000D85 F0               [24]  766 	movx	@dptr,a
                                    767 ;	src/usb.c:196: break;
                                    768 ;	src/usb.c:197: case IRQ_EP3IN:
      000D86 80 2E            [24]  769 	sjmp	00131$
      000D88                        770 00124$:
                                    771 ;	src/usb.c:198: IN_IRQ = IN3IR;
      000D88 90 C7 A9         [24]  772 	mov	dptr,#0xC7A9
      000D8B 74 08            [12]  773 	mov	a,#0x08
      000D8D F0               [24]  774 	movx	@dptr,a
                                    775 ;	src/usb.c:199: break;
                                    776 ;	src/usb.c:200: case IRQ_EP3OUT:
      000D8E 80 26            [24]  777 	sjmp	00131$
      000D90                        778 00125$:
                                    779 ;	src/usb.c:201: OUT_IRQ = OUT3IR;
      000D90 90 C7 AA         [24]  780 	mov	dptr,#0xC7AA
      000D93 74 08            [12]  781 	mov	a,#0x08
      000D95 F0               [24]  782 	movx	@dptr,a
                                    783 ;	src/usb.c:202: break;
                                    784 ;	src/usb.c:203: case IRQ_EP4IN:
      000D96 80 1E            [24]  785 	sjmp	00131$
      000D98                        786 00126$:
                                    787 ;	src/usb.c:204: IN_IRQ = IN4IR;
      000D98 90 C7 A9         [24]  788 	mov	dptr,#0xC7A9
      000D9B 74 10            [12]  789 	mov	a,#0x10
      000D9D F0               [24]  790 	movx	@dptr,a
                                    791 ;	src/usb.c:205: break;
                                    792 ;	src/usb.c:206: case IRQ_EP4OUT:
      000D9E 80 16            [24]  793 	sjmp	00131$
      000DA0                        794 00127$:
                                    795 ;	src/usb.c:207: OUT_IRQ = OUT4IR;
      000DA0 90 C7 AA         [24]  796 	mov	dptr,#0xC7AA
      000DA3 74 10            [12]  797 	mov	a,#0x10
      000DA5 F0               [24]  798 	movx	@dptr,a
                                    799 ;	src/usb.c:208: break;
                                    800 ;	src/usb.c:209: case IRQ_EP5IN:
      000DA6 80 0E            [24]  801 	sjmp	00131$
      000DA8                        802 00128$:
                                    803 ;	src/usb.c:210: IN_IRQ = IN5IR;
      000DA8 90 C7 A9         [24]  804 	mov	dptr,#0xC7A9
      000DAB 74 20            [12]  805 	mov	a,#0x20
      000DAD F0               [24]  806 	movx	@dptr,a
                                    807 ;	src/usb.c:211: break;
                                    808 ;	src/usb.c:212: case IRQ_EP5OUT:
      000DAE 80 06            [24]  809 	sjmp	00131$
      000DB0                        810 00129$:
                                    811 ;	src/usb.c:213: OUT_IRQ = OUT5IR;  
      000DB0 90 C7 AA         [24]  812 	mov	dptr,#0xC7AA
      000DB3 74 20            [12]  813 	mov	a,#0x20
      000DB5 F0               [24]  814 	movx	@dptr,a
                                    815 ;	src/usb.c:215: }
      000DB6                        816 00131$:
      000DB6 D0 D0            [24]  817 	pop	psw
      000DB8 D0 00            [24]  818 	pop	(0+0)
      000DBA D0 01            [24]  819 	pop	(0+1)
      000DBC D0 02            [24]  820 	pop	(0+2)
      000DBE D0 03            [24]  821 	pop	(0+3)
      000DC0 D0 04            [24]  822 	pop	(0+4)
      000DC2 D0 05            [24]  823 	pop	(0+5)
      000DC4 D0 06            [24]  824 	pop	(0+6)
      000DC6 D0 07            [24]  825 	pop	(0+7)
      000DC8 D0 83            [24]  826 	pop	dph
      000DCA D0 82            [24]  827 	pop	dpl
      000DCC D0 F0            [24]  828 	pop	b
      000DCE D0 E0            [24]  829 	pop	acc
      000DD0 D0 21            [24]  830 	pop	bits
      000DD2 32               [24]  831 	reti
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'usbBulkOutIsr'
                                    834 ;------------------------------------------------------------
                                    835 ;ep                        Allocated with name '_usbBulkOutIsr_ep_1_39'
                                    836 ;------------------------------------------------------------
                                    837 ;	src/usb.c:221: void usbBulkOutIsr(char ep) {
                                    838 ;	-----------------------------------------
                                    839 ;	 function usbBulkOutIsr
                                    840 ;	-----------------------------------------
      000DD3                        841 _usbBulkOutIsr:
                           000007   842 	ar7 = 0x07
                           000006   843 	ar6 = 0x06
                           000005   844 	ar5 = 0x05
                           000004   845 	ar4 = 0x04
                           000003   846 	ar3 = 0x03
                           000002   847 	ar2 = 0x02
                           000001   848 	ar1 = 0x01
                           000000   849 	ar0 = 0x00
                                    850 ;	src/usb.c:223: return;  
      000DD3 22               [24]  851 	ret
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
      000DD4                        863 _usbBulkInIsr:
      000DD4 E5 82            [12]  864 	mov	a,dpl
      000DD6 90 80 74         [24]  865 	mov	dptr,#_usbBulkInIsr_ep_1_41
      000DD9 F0               [24]  866 	movx	@dptr,a
                                    867 ;	src/usb.c:231: unsigned char lenToSend = (inflow[ep].len<64)?inflow[ep].len:64;
      000DDA E0               [24]  868 	movx	a,@dptr
      000DDB FF               [12]  869 	mov	r7,a
      000DDC C2 D5            [12]  870 	clr	F0
      000DDE 75 F0 07         [24]  871 	mov	b,#0x07
      000DE1 EF               [12]  872 	mov	a,r7
      000DE2 30 E7 04         [24]  873 	jnb	acc.7,00122$
      000DE5 B2 D5            [12]  874 	cpl	F0
      000DE7 F4               [12]  875 	cpl	a
      000DE8 04               [12]  876 	inc	a
      000DE9                        877 00122$:
      000DE9 A4               [48]  878 	mul	ab
      000DEA 30 D5 0A         [24]  879 	jnb	F0,00123$
      000DED F4               [12]  880 	cpl	a
      000DEE 24 01            [12]  881 	add	a,#0x01
      000DF0 C5 F0            [12]  882 	xch	a,b
      000DF2 F4               [12]  883 	cpl	a
      000DF3 34 00            [12]  884 	addc	a,#0x00
      000DF5 C5 F0            [12]  885 	xch	a,b
      000DF7                        886 00123$:
      000DF7 24 6D            [12]  887 	add	a,#_inflow
      000DF9 FD               [12]  888 	mov	r5,a
      000DFA 74 80            [12]  889 	mov	a,#(_inflow >> 8)
      000DFC 35 F0            [12]  890 	addc	a,b
      000DFE FE               [12]  891 	mov	r6,a
      000DFF 74 01            [12]  892 	mov	a,#0x01
      000E01 2D               [12]  893 	add	a,r5
      000E02 FB               [12]  894 	mov	r3,a
      000E03 E4               [12]  895 	clr	a
      000E04 3E               [12]  896 	addc	a,r6
      000E05 FC               [12]  897 	mov	r4,a
      000E06 8B 82            [24]  898 	mov	dpl,r3
      000E08 8C 83            [24]  899 	mov	dph,r4
      000E0A E0               [24]  900 	movx	a,@dptr
      000E0B F9               [12]  901 	mov	r1,a
      000E0C A3               [24]  902 	inc	dptr
      000E0D E0               [24]  903 	movx	a,@dptr
      000E0E FA               [12]  904 	mov	r2,a
      000E0F C3               [12]  905 	clr	c
      000E10 E9               [12]  906 	mov	a,r1
      000E11 94 40            [12]  907 	subb	a,#0x40
      000E13 EA               [12]  908 	mov	a,r2
      000E14 64 80            [12]  909 	xrl	a,#0x80
      000E16 94 80            [12]  910 	subb	a,#0x80
      000E18 50 02            [24]  911 	jnc	00108$
      000E1A 80 04            [24]  912 	sjmp	00109$
      000E1C                        913 00108$:
      000E1C 79 40            [12]  914 	mov	r1,#0x40
      000E1E 7A 00            [12]  915 	mov	r2,#0x00
      000E20                        916 00109$:
                                    917 ;	src/usb.c:233: if(inflow[ep].rdy)
      000E20 8D 82            [24]  918 	mov	dpl,r5
      000E22 8E 83            [24]  919 	mov	dph,r6
      000E24 E0               [24]  920 	movx	a,@dptr
      000E25 70 03            [24]  921 	jnz	00125$
      000E27 02 0E D5         [24]  922 	ljmp	00105$
      000E2A                        923 00125$:
                                    924 ;	src/usb.c:235: usbBulkSend(ep, inflow[ep].buffer+inflow[ep].ptr, lenToSend);
      000E2A 8D 82            [24]  925 	mov	dpl,r5
      000E2C 8E 83            [24]  926 	mov	dph,r6
      000E2E A3               [24]  927 	inc	dptr
      000E2F A3               [24]  928 	inc	dptr
      000E30 A3               [24]  929 	inc	dptr
      000E31 A3               [24]  930 	inc	dptr
      000E32 A3               [24]  931 	inc	dptr
      000E33 E0               [24]  932 	movx	a,@dptr
      000E34 F8               [12]  933 	mov	r0,a
      000E35 A3               [24]  934 	inc	dptr
      000E36 E0               [24]  935 	movx	a,@dptr
      000E37 FA               [12]  936 	mov	r2,a
      000E38 74 03            [12]  937 	mov	a,#0x03
      000E3A 2D               [12]  938 	add	a,r5
      000E3B F5 14            [12]  939 	mov	_usbBulkInIsr_sloc0_1_0,a
      000E3D E4               [12]  940 	clr	a
      000E3E 3E               [12]  941 	addc	a,r6
      000E3F F5 15            [12]  942 	mov	(_usbBulkInIsr_sloc0_1_0 + 1),a
      000E41 C0 05            [24]  943 	push	ar5
      000E43 C0 06            [24]  944 	push	ar6
      000E45 85 14 82         [24]  945 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000E48 85 15 83         [24]  946 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000E4B E0               [24]  947 	movx	a,@dptr
      000E4C FD               [12]  948 	mov	r5,a
      000E4D A3               [24]  949 	inc	dptr
      000E4E E0               [24]  950 	movx	a,@dptr
      000E4F FE               [12]  951 	mov	r6,a
      000E50 ED               [12]  952 	mov	a,r5
      000E51 28               [12]  953 	add	a,r0
      000E52 F8               [12]  954 	mov	r0,a
      000E53 EE               [12]  955 	mov	a,r6
      000E54 3A               [12]  956 	addc	a,r2
      000E55 FA               [12]  957 	mov	r2,a
      000E56 90 80 75         [24]  958 	mov	dptr,#_usbBulkSend_PARM_2
      000E59 E8               [12]  959 	mov	a,r0
      000E5A F0               [24]  960 	movx	@dptr,a
      000E5B EA               [12]  961 	mov	a,r2
      000E5C A3               [24]  962 	inc	dptr
      000E5D F0               [24]  963 	movx	@dptr,a
      000E5E 74 80            [12]  964 	mov	a,#0x80
      000E60 A3               [24]  965 	inc	dptr
      000E61 F0               [24]  966 	movx	@dptr,a
      000E62 90 80 78         [24]  967 	mov	dptr,#_usbBulkSend_PARM_3
      000E65 E9               [12]  968 	mov	a,r1
      000E66 F0               [24]  969 	movx	@dptr,a
      000E67 8F 82            [24]  970 	mov	dpl,r7
      000E69 C0 06            [24]  971 	push	ar6
      000E6B C0 05            [24]  972 	push	ar5
      000E6D C0 04            [24]  973 	push	ar4
      000E6F C0 03            [24]  974 	push	ar3
      000E71 C0 01            [24]  975 	push	ar1
      000E73 12 13 6E         [24]  976 	lcall	_usbBulkSend
      000E76 D0 01            [24]  977 	pop	ar1
      000E78 D0 03            [24]  978 	pop	ar3
      000E7A D0 04            [24]  979 	pop	ar4
      000E7C D0 05            [24]  980 	pop	ar5
      000E7E D0 06            [24]  981 	pop	ar6
                                    982 ;	src/usb.c:237: inflow[ep].len-=lenToSend;
      000E80 8B 82            [24]  983 	mov	dpl,r3
      000E82 8C 83            [24]  984 	mov	dph,r4
      000E84 E0               [24]  985 	movx	a,@dptr
      000E85 FE               [12]  986 	mov	r6,a
      000E86 A3               [24]  987 	inc	dptr
      000E87 E0               [24]  988 	movx	a,@dptr
      000E88 FF               [12]  989 	mov	r7,a
      000E89 89 02            [24]  990 	mov	ar2,r1
      000E8B 7D 00            [12]  991 	mov	r5,#0x00
      000E8D EE               [12]  992 	mov	a,r6
      000E8E C3               [12]  993 	clr	c
      000E8F 9A               [12]  994 	subb	a,r2
      000E90 FE               [12]  995 	mov	r6,a
      000E91 EF               [12]  996 	mov	a,r7
      000E92 9D               [12]  997 	subb	a,r5
      000E93 FF               [12]  998 	mov	r7,a
      000E94 8B 82            [24]  999 	mov	dpl,r3
      000E96 8C 83            [24] 1000 	mov	dph,r4
      000E98 EE               [12] 1001 	mov	a,r6
      000E99 F0               [24] 1002 	movx	@dptr,a
      000E9A EF               [12] 1003 	mov	a,r7
      000E9B A3               [24] 1004 	inc	dptr
      000E9C F0               [24] 1005 	movx	@dptr,a
                                   1006 ;	src/usb.c:238: inflow[ep].ptr+=lenToSend; 
      000E9D 85 14 82         [24] 1007 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000EA0 85 15 83         [24] 1008 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000EA3 E0               [24] 1009 	movx	a,@dptr
      000EA4 FB               [12] 1010 	mov	r3,a
      000EA5 A3               [24] 1011 	inc	dptr
      000EA6 E0               [24] 1012 	movx	a,@dptr
      000EA7 FC               [12] 1013 	mov	r4,a
      000EA8 EA               [12] 1014 	mov	a,r2
      000EA9 2B               [12] 1015 	add	a,r3
      000EAA FA               [12] 1016 	mov	r2,a
      000EAB ED               [12] 1017 	mov	a,r5
      000EAC 3C               [12] 1018 	addc	a,r4
      000EAD FD               [12] 1019 	mov	r5,a
      000EAE 85 14 82         [24] 1020 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000EB1 85 15 83         [24] 1021 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000EB4 EA               [12] 1022 	mov	a,r2
      000EB5 F0               [24] 1023 	movx	@dptr,a
      000EB6 ED               [12] 1024 	mov	a,r5
      000EB7 A3               [24] 1025 	inc	dptr
      000EB8 F0               [24] 1026 	movx	@dptr,a
                                   1027 ;	src/usb.c:240: if(inflow[ep].len == 0 && lenToSend != 64)
      000EB9 EE               [12] 1028 	mov	a,r6
      000EBA 4F               [12] 1029 	orl	a,r7
      000EBB D0 06            [24] 1030 	pop	ar6
      000EBD D0 05            [24] 1031 	pop	ar5
      000EBF 70 14            [24] 1032 	jnz	00105$
      000EC1 B9 40 02         [24] 1033 	cjne	r1,#0x40,00127$
      000EC4 80 0F            [24] 1034 	sjmp	00105$
      000EC6                       1035 00127$:
                                   1036 ;	src/usb.c:242: inflow[ep].rdy = 0;
      000EC6 8D 82            [24] 1037 	mov	dpl,r5
      000EC8 8E 83            [24] 1038 	mov	dph,r6
      000ECA E4               [12] 1039 	clr	a
      000ECB F0               [24] 1040 	movx	@dptr,a
                                   1041 ;	src/usb.c:243: inflow[ep].ptr = 0;
      000ECC 85 14 82         [24] 1042 	mov	dpl,_usbBulkInIsr_sloc0_1_0
      000ECF 85 15 83         [24] 1043 	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
      000ED2 F0               [24] 1044 	movx	@dptr,a
      000ED3 A3               [24] 1045 	inc	dptr
      000ED4 F0               [24] 1046 	movx	@dptr,a
      000ED5                       1047 00105$:
                                   1048 ;	src/usb.c:248: return;
      000ED5 22               [24] 1049 	ret
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
      000ED6                       1063 _usbSetupIsr:
                                   1064 ;	src/usb.c:254: __xdata struct controllStruct *setup = (__xdata void*)SETUPBUF;
                                   1065 ;	src/usb.c:256: if(state >= DEFAULT)
      000ED6 90 80 93         [24] 1066 	mov	dptr,#_state
      000ED9 E0               [24] 1067 	movx	a,@dptr
      000EDA FF               [12] 1068 	mov	r7,a
      000EDB BF 01 00         [24] 1069 	cjne	r7,#0x01,00375$
      000EDE                       1070 00375$:
      000EDE 50 03            [24] 1071 	jnc	00376$
      000EE0 02 10 D6         [24] 1072 	ljmp	00128$
      000EE3                       1073 00376$:
                                   1074 ;	src/usb.c:259: if(SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == DEVICE_DESCRIPTOR)
      000EE3 90 C7 E9         [24] 1075 	mov	dptr,#(_SETUPBUF + 0x0001)
      000EE6 E0               [24] 1076 	movx	a,@dptr
      000EE7 FE               [12] 1077 	mov	r6,a
      000EE8 BE 06 02         [24] 1078 	cjne	r6,#0x06,00377$
      000EEB 80 03            [24] 1079 	sjmp	00378$
      000EED                       1080 00377$:
      000EED 02 0F 68         [24] 1081 	ljmp	00102$
      000EF0                       1082 00378$:
      000EF0 90 C7 EB         [24] 1083 	mov	dptr,#(_SETUPBUF + 0x0003)
      000EF3 E0               [24] 1084 	movx	a,@dptr
      000EF4 FE               [12] 1085 	mov	r6,a
      000EF5 BE 01 70         [24] 1086 	cjne	r6,#0x01,00102$
                                   1087 ;	src/usb.c:261: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
      000EF8 90 C7 EF         [24] 1088 	mov	dptr,#(_SETUPBUF + 0x0007)
      000EFB E0               [24] 1089 	movx	a,@dptr
      000EFC FD               [12] 1090 	mov	r5,a
      000EFD 7E 00            [12] 1091 	mov	r6,#0x00
      000EFF 90 C7 EE         [24] 1092 	mov	dptr,#(_SETUPBUF + 0x0006)
      000F02 E0               [24] 1093 	movx	a,@dptr
      000F03 7B 00            [12] 1094 	mov	r3,#0x00
      000F05 2E               [12] 1095 	add	a,r6
      000F06 FE               [12] 1096 	mov	r6,a
      000F07 EB               [12] 1097 	mov	a,r3
      000F08 3D               [12] 1098 	addc	a,r5
      000F09 FD               [12] 1099 	mov	r5,a
                                   1100 ;	src/usb.c:263: inflow[0].buffer = usbDeviceDescriptor;
      000F0A 90 80 72         [24] 1101 	mov	dptr,#(_inflow + 0x0005)
      000F0D 74 0E            [12] 1102 	mov	a,#_usbDeviceDescriptor
      000F0F F0               [24] 1103 	movx	@dptr,a
      000F10 74 16            [12] 1104 	mov	a,#(_usbDeviceDescriptor >> 8)
      000F12 A3               [24] 1105 	inc	dptr
      000F13 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	src/usb.c:264: inflow[0].len = MIN(dLength, inflow[0].buffer[0]);
      000F14 8E 03            [24] 1108 	mov	ar3,r6
      000F16 8D 04            [24] 1109 	mov	ar4,r5
      000F18 90 80 72         [24] 1110 	mov	dptr,#(_inflow + 0x0005)
      000F1B E0               [24] 1111 	movx	a,@dptr
      000F1C F5 16            [12] 1112 	mov	_usbSetupIsr_sloc0_1_0,a
      000F1E A3               [24] 1113 	inc	dptr
      000F1F E0               [24] 1114 	movx	a,@dptr
      000F20 F5 17            [12] 1115 	mov	(_usbSetupIsr_sloc0_1_0 + 1),a
      000F22 90 16 0E         [24] 1116 	mov	dptr,#_usbDeviceDescriptor
      000F25 E4               [12] 1117 	clr	a
      000F26 93               [24] 1118 	movc	a,@a+dptr
      000F27 F8               [12] 1119 	mov	r0,a
      000F28 33               [12] 1120 	rlc	a
      000F29 95 E0            [12] 1121 	subb	a,acc
      000F2B FA               [12] 1122 	mov	r2,a
      000F2C C3               [12] 1123 	clr	c
      000F2D EB               [12] 1124 	mov	a,r3
      000F2E 98               [12] 1125 	subb	a,r0
      000F2F EC               [12] 1126 	mov	a,r4
      000F30 64 80            [12] 1127 	xrl	a,#0x80
      000F32 8A F0            [24] 1128 	mov	b,r2
      000F34 63 F0 80         [24] 1129 	xrl	b,#0x80
      000F37 95 F0            [12] 1130 	subb	a,b
      000F39 40 0E            [24] 1131 	jc	00220$
      000F3B 85 16 82         [24] 1132 	mov	dpl,_usbSetupIsr_sloc0_1_0
      000F3E 85 17 83         [24] 1133 	mov	dph,(_usbSetupIsr_sloc0_1_0 + 1)
      000F41 E4               [12] 1134 	clr	a
      000F42 93               [24] 1135 	movc	a,@a+dptr
      000F43 FC               [12] 1136 	mov	r4,a
      000F44 FE               [12] 1137 	mov	r6,a
      000F45 33               [12] 1138 	rlc	a
      000F46 95 E0            [12] 1139 	subb	a,acc
      000F48 FD               [12] 1140 	mov	r5,a
      000F49                       1141 00220$:
      000F49 90 80 6E         [24] 1142 	mov	dptr,#(_inflow + 0x0001)
      000F4C EE               [12] 1143 	mov	a,r6
      000F4D F0               [24] 1144 	movx	@dptr,a
      000F4E ED               [12] 1145 	mov	a,r5
      000F4F A3               [24] 1146 	inc	dptr
      000F50 F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	src/usb.c:265: inflow[0].ptr = 0;
      000F51 90 80 70         [24] 1149 	mov	dptr,#(_inflow + 0x0003)
      000F54 E4               [12] 1150 	clr	a
      000F55 F0               [24] 1151 	movx	@dptr,a
      000F56 A3               [24] 1152 	inc	dptr
      000F57 F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	src/usb.c:266: inflow[0].rdy = 1;
      000F58 90 80 6D         [24] 1155 	mov	dptr,#_inflow
      000F5B 04               [12] 1156 	inc	a
      000F5C F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	src/usb.c:269: EP0CS = HSNAK;
      000F5D 90 C7 B4         [24] 1159 	mov	dptr,#0xC7B4
      000F60 04               [12] 1160 	inc	a
      000F61 F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	src/usb.c:270: usbBulkInIsr(0);
      000F62 75 82 00         [24] 1163 	mov	dpl,#0x00
                                   1164 ;	src/usb.c:271: return;
      000F65 02 0D D4         [24] 1165 	ljmp	_usbBulkInIsr
      000F68                       1166 00102$:
                                   1167 ;	src/usb.c:275: if (SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == STRING_DESCRIPTOR)
      000F68 90 C7 E9         [24] 1168 	mov	dptr,#(_SETUPBUF + 0x0001)
      000F6B E0               [24] 1169 	movx	a,@dptr
      000F6C FE               [12] 1170 	mov	r6,a
      000F6D BE 06 02         [24] 1171 	cjne	r6,#0x06,00382$
      000F70 80 03            [24] 1172 	sjmp	00383$
      000F72                       1173 00382$:
      000F72 02 10 34         [24] 1174 	ljmp	00117$
      000F75                       1175 00383$:
      000F75 90 C7 EB         [24] 1176 	mov	dptr,#(_SETUPBUF + 0x0003)
      000F78 E0               [24] 1177 	movx	a,@dptr
      000F79 FE               [12] 1178 	mov	r6,a
      000F7A BE 03 02         [24] 1179 	cjne	r6,#0x03,00384$
      000F7D 80 03            [24] 1180 	sjmp	00385$
      000F7F                       1181 00384$:
      000F7F 02 10 34         [24] 1182 	ljmp	00117$
      000F82                       1183 00385$:
                                   1184 ;	src/usb.c:277: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
      000F82 90 C7 EF         [24] 1185 	mov	dptr,#(_SETUPBUF + 0x0007)
      000F85 E0               [24] 1186 	movx	a,@dptr
      000F86 FD               [12] 1187 	mov	r5,a
      000F87 7E 00            [12] 1188 	mov	r6,#0x00
      000F89 90 C7 EE         [24] 1189 	mov	dptr,#(_SETUPBUF + 0x0006)
      000F8C E0               [24] 1190 	movx	a,@dptr
      000F8D FC               [12] 1191 	mov	r4,a
      000F8E 7B 00            [12] 1192 	mov	r3,#0x00
      000F90 2E               [12] 1193 	add	a,r6
      000F91 FE               [12] 1194 	mov	r6,a
      000F92 EB               [12] 1195 	mov	a,r3
      000F93 3D               [12] 1196 	addc	a,r5
      000F94 FD               [12] 1197 	mov	r5,a
                                   1198 ;	src/usb.c:279: if (SETUPBUF[2]==0)
      000F95 90 C7 EA         [24] 1199 	mov	dptr,#(_SETUPBUF + 0x0002)
      000F98 E0               [24] 1200 	movx	a,@dptr
      000F99 70 0C            [24] 1201 	jnz	00114$
                                   1202 ;	src/usb.c:280: inflow[0].buffer = usbStringDescriptor0;
      000F9B 90 80 72         [24] 1203 	mov	dptr,#(_inflow + 0x0005)
      000F9E 74 59            [12] 1204 	mov	a,#_usbStringDescriptor0
      000FA0 F0               [24] 1205 	movx	@dptr,a
      000FA1 74 16            [12] 1206 	mov	a,#(_usbStringDescriptor0 >> 8)
      000FA3 A3               [24] 1207 	inc	dptr
      000FA4 F0               [24] 1208 	movx	@dptr,a
      000FA5 80 41            [24] 1209 	sjmp	00115$
      000FA7                       1210 00114$:
                                   1211 ;	src/usb.c:281: else if (SETUPBUF[2]==1)
      000FA7 90 C7 EA         [24] 1212 	mov	dptr,#(_SETUPBUF + 0x0002)
      000FAA E0               [24] 1213 	movx	a,@dptr
      000FAB FC               [12] 1214 	mov	r4,a
      000FAC BC 01 0C         [24] 1215 	cjne	r4,#0x01,00111$
                                   1216 ;	src/usb.c:282: inflow[0].buffer = usbStringDescriptor1;
      000FAF 90 80 72         [24] 1217 	mov	dptr,#(_inflow + 0x0005)
      000FB2 74 5D            [12] 1218 	mov	a,#_usbStringDescriptor1
      000FB4 F0               [24] 1219 	movx	@dptr,a
      000FB5 74 16            [12] 1220 	mov	a,#(_usbStringDescriptor1 >> 8)
      000FB7 A3               [24] 1221 	inc	dptr
      000FB8 F0               [24] 1222 	movx	@dptr,a
      000FB9 80 2D            [24] 1223 	sjmp	00115$
      000FBB                       1224 00111$:
                                   1225 ;	src/usb.c:283: else if (SETUPBUF[2]==2)
      000FBB 90 C7 EA         [24] 1226 	mov	dptr,#(_SETUPBUF + 0x0002)
      000FBE E0               [24] 1227 	movx	a,@dptr
      000FBF FC               [12] 1228 	mov	r4,a
      000FC0 BC 02 0C         [24] 1229 	cjne	r4,#0x02,00108$
                                   1230 ;	src/usb.c:284: inflow[0].buffer = usbStringDescriptor2;
      000FC3 90 80 72         [24] 1231 	mov	dptr,#(_inflow + 0x0005)
      000FC6 74 6F            [12] 1232 	mov	a,#_usbStringDescriptor2
      000FC8 F0               [24] 1233 	movx	@dptr,a
      000FC9 74 16            [12] 1234 	mov	a,#(_usbStringDescriptor2 >> 8)
      000FCB A3               [24] 1235 	inc	dptr
      000FCC F0               [24] 1236 	movx	@dptr,a
      000FCD 80 19            [24] 1237 	sjmp	00115$
      000FCF                       1238 00108$:
                                   1239 ;	src/usb.c:285: else if (SETUPBUF[2]==0x1d) {
      000FCF 90 C7 EA         [24] 1240 	mov	dptr,#(_SETUPBUF + 0x0002)
      000FD2 E0               [24] 1241 	movx	a,@dptr
      000FD3 FC               [12] 1242 	mov	r4,a
      000FD4 BC 1D 0A         [24] 1243 	cjne	r4,#0x1D,00105$
                                   1244 ;	src/usb.c:286: usbSendIdString();
      000FD7 12 13 A7         [24] 1245 	lcall	_usbSendIdString
                                   1246 ;	src/usb.c:288: EP0CS = HSNAK;
      000FDA 90 C7 B4         [24] 1247 	mov	dptr,#0xC7B4
      000FDD 74 02            [12] 1248 	mov	a,#0x02
      000FDF F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	src/usb.c:289: return;
      000FE0 22               [24] 1251 	ret
      000FE1                       1252 00105$:
                                   1253 ;	src/usb.c:291: EP0CS = EP0STALL; //Stall to error
      000FE1 90 C7 B4         [24] 1254 	mov	dptr,#0xC7B4
      000FE4 74 01            [12] 1255 	mov	a,#0x01
      000FE6 F0               [24] 1256 	movx	@dptr,a
                                   1257 ;	src/usb.c:292: return;
      000FE7 22               [24] 1258 	ret
      000FE8                       1259 00115$:
                                   1260 ;	src/usb.c:295: inflow[0].len = MIN(dLength, inflow[0].buffer[0]);
      000FE8 8E 03            [24] 1261 	mov	ar3,r6
      000FEA 8D 04            [24] 1262 	mov	ar4,r5
      000FEC 90 80 72         [24] 1263 	mov	dptr,#(_inflow + 0x0005)
      000FEF E0               [24] 1264 	movx	a,@dptr
      000FF0 F9               [12] 1265 	mov	r1,a
      000FF1 A3               [24] 1266 	inc	dptr
      000FF2 E0               [24] 1267 	movx	a,@dptr
      000FF3 FA               [12] 1268 	mov	r2,a
      000FF4 89 82            [24] 1269 	mov	dpl,r1
      000FF6 8A 83            [24] 1270 	mov	dph,r2
      000FF8 E4               [12] 1271 	clr	a
      000FF9 93               [24] 1272 	movc	a,@a+dptr
      000FFA FA               [12] 1273 	mov	r2,a
      000FFB F8               [12] 1274 	mov	r0,a
      000FFC 33               [12] 1275 	rlc	a
      000FFD 95 E0            [12] 1276 	subb	a,acc
      000FFF F9               [12] 1277 	mov	r1,a
      001000 C3               [12] 1278 	clr	c
      001001 EB               [12] 1279 	mov	a,r3
      001002 98               [12] 1280 	subb	a,r0
      001003 EC               [12] 1281 	mov	a,r4
      001004 64 80            [12] 1282 	xrl	a,#0x80
      001006 89 F0            [24] 1283 	mov	b,r1
      001008 63 F0 80         [24] 1284 	xrl	b,#0x80
      00100B 95 F0            [12] 1285 	subb	a,b
      00100D 40 06            [24] 1286 	jc	00222$
      00100F EA               [12] 1287 	mov	a,r2
      001010 FE               [12] 1288 	mov	r6,a
      001011 33               [12] 1289 	rlc	a
      001012 95 E0            [12] 1290 	subb	a,acc
      001014 FD               [12] 1291 	mov	r5,a
      001015                       1292 00222$:
      001015 90 80 6E         [24] 1293 	mov	dptr,#(_inflow + 0x0001)
      001018 EE               [12] 1294 	mov	a,r6
      001019 F0               [24] 1295 	movx	@dptr,a
      00101A ED               [12] 1296 	mov	a,r5
      00101B A3               [24] 1297 	inc	dptr
      00101C F0               [24] 1298 	movx	@dptr,a
                                   1299 ;	src/usb.c:296: inflow[0].ptr = 0;
      00101D 90 80 70         [24] 1300 	mov	dptr,#(_inflow + 0x0003)
      001020 E4               [12] 1301 	clr	a
      001021 F0               [24] 1302 	movx	@dptr,a
      001022 A3               [24] 1303 	inc	dptr
      001023 F0               [24] 1304 	movx	@dptr,a
                                   1305 ;	src/usb.c:297: inflow[0].rdy = 1;
      001024 90 80 6D         [24] 1306 	mov	dptr,#_inflow
      001027 04               [12] 1307 	inc	a
      001028 F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	src/usb.c:300: EP0CS = HSNAK;
      001029 90 C7 B4         [24] 1310 	mov	dptr,#0xC7B4
      00102C 04               [12] 1311 	inc	a
      00102D F0               [24] 1312 	movx	@dptr,a
                                   1313 ;	src/usb.c:301: usbBulkInIsr(0);
      00102E 75 82 00         [24] 1314 	mov	dpl,#0x00
                                   1315 ;	src/usb.c:302: return;
      001031 02 0D D4         [24] 1316 	ljmp	_usbBulkInIsr
      001034                       1317 00117$:
                                   1318 ;	src/usb.c:306: if(SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == CONFIGURATION_DESCRIPTOR)
      001034 90 C7 E9         [24] 1319 	mov	dptr,#(_SETUPBUF + 0x0001)
      001037 E0               [24] 1320 	movx	a,@dptr
      001038 FE               [12] 1321 	mov	r6,a
      001039 BE 06 56         [24] 1322 	cjne	r6,#0x06,00120$
      00103C 90 C7 EB         [24] 1323 	mov	dptr,#(_SETUPBUF + 0x0003)
      00103F E0               [24] 1324 	movx	a,@dptr
      001040 FE               [12] 1325 	mov	r6,a
      001041 BE 02 4E         [24] 1326 	cjne	r6,#0x02,00120$
                                   1327 ;	src/usb.c:308: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
      001044 90 C7 EF         [24] 1328 	mov	dptr,#(_SETUPBUF + 0x0007)
      001047 E0               [24] 1329 	movx	a,@dptr
      001048 FD               [12] 1330 	mov	r5,a
      001049 7E 00            [12] 1331 	mov	r6,#0x00
      00104B 90 C7 EE         [24] 1332 	mov	dptr,#(_SETUPBUF + 0x0006)
      00104E E0               [24] 1333 	movx	a,@dptr
      00104F 7B 00            [12] 1334 	mov	r3,#0x00
      001051 2E               [12] 1335 	add	a,r6
      001052 FE               [12] 1336 	mov	r6,a
      001053 EB               [12] 1337 	mov	a,r3
      001054 3D               [12] 1338 	addc	a,r5
      001055 FD               [12] 1339 	mov	r5,a
                                   1340 ;	src/usb.c:310: inflow[0].buffer = usbConfigurationDescriptor;
      001056 90 80 72         [24] 1341 	mov	dptr,#(_inflow + 0x0005)
      001059 74 20            [12] 1342 	mov	a,#_usbConfigurationDescriptor
      00105B F0               [24] 1343 	movx	@dptr,a
      00105C 74 16            [12] 1344 	mov	a,#(_usbConfigurationDescriptor >> 8)
      00105E A3               [24] 1345 	inc	dptr
      00105F F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	src/usb.c:311: inflow[0].len = MIN(dLength, sizeof(usbConfigurationDescriptor));
      001060 8E 03            [24] 1348 	mov	ar3,r6
      001062 8D 04            [24] 1349 	mov	ar4,r5
      001064 C3               [12] 1350 	clr	c
      001065 EB               [12] 1351 	mov	a,r3
      001066 94 39            [12] 1352 	subb	a,#0x39
      001068 EC               [12] 1353 	mov	a,r4
      001069 64 80            [12] 1354 	xrl	a,#0x80
      00106B 94 80            [12] 1355 	subb	a,#0x80
      00106D 40 04            [24] 1356 	jc	00224$
      00106F 7E 39            [12] 1357 	mov	r6,#0x39
      001071 7D 00            [12] 1358 	mov	r5,#0x00
      001073                       1359 00224$:
      001073 90 80 6E         [24] 1360 	mov	dptr,#(_inflow + 0x0001)
      001076 EE               [12] 1361 	mov	a,r6
      001077 F0               [24] 1362 	movx	@dptr,a
      001078 ED               [12] 1363 	mov	a,r5
      001079 A3               [24] 1364 	inc	dptr
      00107A F0               [24] 1365 	movx	@dptr,a
                                   1366 ;	src/usb.c:312: inflow[0].ptr = 0;
      00107B 90 80 70         [24] 1367 	mov	dptr,#(_inflow + 0x0003)
      00107E E4               [12] 1368 	clr	a
      00107F F0               [24] 1369 	movx	@dptr,a
      001080 A3               [24] 1370 	inc	dptr
      001081 F0               [24] 1371 	movx	@dptr,a
                                   1372 ;	src/usb.c:313: inflow[0].rdy = 1;
      001082 90 80 6D         [24] 1373 	mov	dptr,#_inflow
      001085 04               [12] 1374 	inc	a
      001086 F0               [24] 1375 	movx	@dptr,a
                                   1376 ;	src/usb.c:316: EP0CS = HSNAK;
      001087 90 C7 B4         [24] 1377 	mov	dptr,#0xC7B4
      00108A 04               [12] 1378 	inc	a
      00108B F0               [24] 1379 	movx	@dptr,a
                                   1380 ;	src/usb.c:317: usbBulkInIsr(0);
      00108C 75 82 00         [24] 1381 	mov	dpl,#0x00
                                   1382 ;	src/usb.c:318: return;
      00108F 02 0D D4         [24] 1383 	ljmp	_usbBulkInIsr
      001092                       1384 00120$:
                                   1385 ;	src/usb.c:348: if (setup->request == SET_ADDRESS)
      001092 90 C7 E9         [24] 1386 	mov	dptr,#(_SETUPBUF + 0x0001)
      001095 E0               [24] 1387 	movx	a,@dptr
      001096 FE               [12] 1388 	mov	r6,a
      001097 BE 05 3C         [24] 1389 	cjne	r6,#0x05,00128$
                                   1390 ;	src/usb.c:351: if (setup->value == 0)
      00109A 90 C7 EA         [24] 1391 	mov	dptr,#(_SETUPBUF + 0x0002)
      00109D E0               [24] 1392 	movx	a,@dptr
      00109E FD               [12] 1393 	mov	r5,a
      00109F A3               [24] 1394 	inc	dptr
      0010A0 E0               [24] 1395 	movx	a,@dptr
      0010A1 FE               [12] 1396 	mov	r6,a
      0010A2 4D               [12] 1397 	orl	a,r5
      0010A3 70 24            [24] 1398 	jnz	00123$
                                   1399 ;	src/usb.c:354: state = DEFAULT;
      0010A5 90 80 93         [24] 1400 	mov	dptr,#_state
      0010A8 74 01            [12] 1401 	mov	a,#0x01
      0010AA F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	src/usb.c:357: INBULKVAL = IN0VAL;
      0010AB 90 C7 DE         [24] 1404 	mov	dptr,#0xC7DE
      0010AE F0               [24] 1405 	movx	@dptr,a
                                   1406 ;	src/usb.c:358: OUTBULKVAL= OUT0VAL;
      0010AF 90 C7 DF         [24] 1407 	mov	dptr,#0xC7DF
      0010B2 F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	src/usb.c:361: OUT0BC = BCDUMMY;
      0010B3 90 C7 C5         [24] 1410 	mov	dptr,#0xC7C5
      0010B6 F0               [24] 1411 	movx	@dptr,a
                                   1412 ;	src/usb.c:364: IN_IEN = IN0IE;
      0010B7 90 C7 AC         [24] 1413 	mov	dptr,#0xC7AC
      0010BA F0               [24] 1414 	movx	@dptr,a
                                   1415 ;	src/usb.c:365: OUT_IEN = OUT0IE;
      0010BB 90 C7 AD         [24] 1416 	mov	dptr,#0xC7AD
      0010BE F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	src/usb.c:366: USBIEN |= SUDAVIE | SUTOKIE;
      0010BF 90 C7 AE         [24] 1419 	mov	dptr,#0xC7AE
      0010C2 E0               [24] 1420 	movx	a,@dptr
      0010C3 44 05            [12] 1421 	orl	a,#0x05
      0010C5 FE               [12] 1422 	mov	r6,a
      0010C6 F0               [24] 1423 	movx	@dptr,a
      0010C7 80 06            [24] 1424 	sjmp	00124$
      0010C9                       1425 00123$:
                                   1426 ;	src/usb.c:368: state = ADDRESS;  //The device is now addressed
      0010C9 90 80 93         [24] 1427 	mov	dptr,#_state
      0010CC 74 02            [12] 1428 	mov	a,#0x02
      0010CE F0               [24] 1429 	movx	@dptr,a
      0010CF                       1430 00124$:
                                   1431 ;	src/usb.c:371: EP0CS = HSNAK;
      0010CF 90 C7 B4         [24] 1432 	mov	dptr,#0xC7B4
      0010D2 74 02            [12] 1433 	mov	a,#0x02
      0010D4 F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	src/usb.c:372: return;
      0010D5 22               [24] 1436 	ret
      0010D6                       1437 00128$:
                                   1438 ;	src/usb.c:376: if (state >= ADDRESS)
      0010D6 BF 02 00         [24] 1439 	cjne	r7,#0x02,00402$
      0010D9                       1440 00402$:
      0010D9 50 03            [24] 1441 	jnc	00403$
      0010DB 02 12 2A         [24] 1442 	ljmp	00166$
      0010DE                       1443 00403$:
                                   1444 ;	src/usb.c:380: if (SETUPBUF[1] == SET_CONFIGURATION)
      0010DE 90 C7 E9         [24] 1445 	mov	dptr,#(_SETUPBUF + 0x0001)
      0010E1 E0               [24] 1446 	movx	a,@dptr
      0010E2 FE               [12] 1447 	mov	r6,a
      0010E3 BE 09 61         [24] 1448 	cjne	r6,#0x09,00133$
                                   1449 ;	src/usb.c:382: if (setup->value == 0)
      0010E6 90 C7 EA         [24] 1450 	mov	dptr,#(_SETUPBUF + 0x0002)
      0010E9 E0               [24] 1451 	movx	a,@dptr
      0010EA FD               [12] 1452 	mov	r5,a
      0010EB A3               [24] 1453 	inc	dptr
      0010EC E0               [24] 1454 	movx	a,@dptr
      0010ED FE               [12] 1455 	mov	r6,a
      0010EE 4D               [12] 1456 	orl	a,r5
      0010EF 70 25            [24] 1457 	jnz	00130$
                                   1458 ;	src/usb.c:384: state = ADDRESS;
      0010F1 90 80 93         [24] 1459 	mov	dptr,#_state
      0010F4 74 02            [12] 1460 	mov	a,#0x02
      0010F6 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	src/usb.c:387: INBULKVAL  &= ~(0x02 | 0x04);
      0010F7 90 C7 DE         [24] 1463 	mov	dptr,#0xC7DE
      0010FA E0               [24] 1464 	movx	a,@dptr
      0010FB 54 F9            [12] 1465 	anl	a,#0xF9
      0010FD F0               [24] 1466 	movx	@dptr,a
                                   1467 ;	src/usb.c:388: OUTBULKVAL &= ~(0x02);
      0010FE 90 C7 DF         [24] 1468 	mov	dptr,#0xC7DF
      001101 E0               [24] 1469 	movx	a,@dptr
      001102 54 FD            [12] 1470 	anl	a,#0xFD
      001104 F0               [24] 1471 	movx	@dptr,a
                                   1472 ;	src/usb.c:391: OUT_IEN &= ~0x02;
      001105 90 C7 AD         [24] 1473 	mov	dptr,#0xC7AD
      001108 E0               [24] 1474 	movx	a,@dptr
      001109 54 FD            [12] 1475 	anl	a,#0xFD
      00110B F0               [24] 1476 	movx	@dptr,a
                                   1477 ;	src/usb.c:392: IN_IEN  &= ~0x02;
      00110C 90 C7 AC         [24] 1478 	mov	dptr,#0xC7AC
      00110F E0               [24] 1479 	movx	a,@dptr
      001110 54 FD            [12] 1480 	anl	a,#0xFD
      001112 FE               [12] 1481 	mov	r6,a
      001113 F0               [24] 1482 	movx	@dptr,a
      001114 80 2A            [24] 1483 	sjmp	00131$
      001116                       1484 00130$:
                                   1485 ;	src/usb.c:394: state = CONFIGURED;
      001116 90 80 93         [24] 1486 	mov	dptr,#_state
      001119 74 03            [12] 1487 	mov	a,#0x03
      00111B F0               [24] 1488 	movx	@dptr,a
                                   1489 ;	src/usb.c:397: INBULKVAL  |= 0x02 | 0x04;
      00111C 90 C7 DE         [24] 1490 	mov	dptr,#0xC7DE
      00111F E0               [24] 1491 	movx	a,@dptr
      001120 44 06            [12] 1492 	orl	a,#0x06
      001122 F0               [24] 1493 	movx	@dptr,a
                                   1494 ;	src/usb.c:398: OUTBULKVAL |= 0x02;
      001123 90 C7 DF         [24] 1495 	mov	dptr,#0xC7DF
      001126 E0               [24] 1496 	movx	a,@dptr
      001127 44 02            [12] 1497 	orl	a,#0x02
      001129 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	src/usb.c:401: OUT_IEN |= 0x02;
      00112A 90 C7 AD         [24] 1500 	mov	dptr,#0xC7AD
      00112D E0               [24] 1501 	movx	a,@dptr
      00112E 44 02            [12] 1502 	orl	a,#0x02
      001130 F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	src/usb.c:402: IN_IEN  |= 0x02;
      001131 90 C7 AC         [24] 1505 	mov	dptr,#0xC7AC
      001134 E0               [24] 1506 	movx	a,@dptr
      001135 44 02            [12] 1507 	orl	a,#0x02
      001137 F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	src/usb.c:403: USBIEN  |= SOFIE;
      001138 90 C7 AE         [24] 1510 	mov	dptr,#0xC7AE
      00113B E0               [24] 1511 	movx	a,@dptr
      00113C 44 02            [12] 1512 	orl	a,#0x02
      00113E FE               [12] 1513 	mov	r6,a
      00113F F0               [24] 1514 	movx	@dptr,a
      001140                       1515 00131$:
                                   1516 ;	src/usb.c:406: EP0CS = HSNAK;
      001140 90 C7 B4         [24] 1517 	mov	dptr,#0xC7B4
      001143 74 02            [12] 1518 	mov	a,#0x02
      001145 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	src/usb.c:407: return;
      001146 22               [24] 1521 	ret
      001147                       1522 00133$:
                                   1523 ;	src/usb.c:410: if (setup->request == GET_CONFIGURATION)
      001147 90 C7 E9         [24] 1524 	mov	dptr,#(_SETUPBUF + 0x0001)
      00114A E0               [24] 1525 	movx	a,@dptr
      00114B FE               [12] 1526 	mov	r6,a
      00114C BE 08 1C         [24] 1527 	cjne	r6,#0x08,00138$
                                   1528 ;	src/usb.c:412: if (state == CONFIGURED)
      00114F BF 03 08         [24] 1529 	cjne	r7,#0x03,00135$
                                   1530 ;	src/usb.c:413: IN0BUF[0]=1;
      001152 90 C7 00         [24] 1531 	mov	dptr,#_IN0BUF
      001155 74 01            [12] 1532 	mov	a,#0x01
      001157 F0               [24] 1533 	movx	@dptr,a
      001158 80 05            [24] 1534 	sjmp	00136$
      00115A                       1535 00135$:
                                   1536 ;	src/usb.c:415: IN0BUF[0]=0;
      00115A 90 C7 00         [24] 1537 	mov	dptr,#_IN0BUF
      00115D E4               [12] 1538 	clr	a
      00115E F0               [24] 1539 	movx	@dptr,a
      00115F                       1540 00136$:
                                   1541 ;	src/usb.c:417: IN0BC=1;
      00115F 90 C7 B5         [24] 1542 	mov	dptr,#0xC7B5
      001162 74 01            [12] 1543 	mov	a,#0x01
      001164 F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	src/usb.c:419: EP0CS = HSNAK;
      001165 90 C7 B4         [24] 1546 	mov	dptr,#0xC7B4
      001168 04               [12] 1547 	inc	a
      001169 F0               [24] 1548 	movx	@dptr,a
                                   1549 ;	src/usb.c:420: return;
      00116A 22               [24] 1550 	ret
      00116B                       1551 00138$:
                                   1552 ;	src/usb.c:423: if(SETUPBUF[1] == GET_STATUS)
      00116B 90 C7 E9         [24] 1553 	mov	dptr,#(_SETUPBUF + 0x0001)
      00116E E0               [24] 1554 	movx	a,@dptr
      00116F 60 03            [24] 1555 	jz	00411$
      001171 02 12 2A         [24] 1556 	ljmp	00166$
      001174                       1557 00411$:
                                   1558 ;	src/usb.c:425: if ((SETUPBUF[0] & REQUEST_RMASK) == REQUEST_ENDPOINT)
      001174 90 C7 E8         [24] 1559 	mov	dptr,#_SETUPBUF
      001177 E0               [24] 1560 	movx	a,@dptr
      001178 FE               [12] 1561 	mov	r6,a
      001179 53 06 07         [24] 1562 	anl	ar6,#0x07
      00117C BE 02 02         [24] 1563 	cjne	r6,#0x02,00412$
      00117F 80 03            [24] 1564 	sjmp	00413$
      001181                       1565 00412$:
      001181 02 12 16         [24] 1566 	ljmp	00161$
      001184                       1567 00413$:
                                   1568 ;	src/usb.c:427: if ((SETUPBUF[4]==0) || (state == CONFIGURED))
      001184 90 C7 EC         [24] 1569 	mov	dptr,#(_SETUPBUF + 0x0004)
      001187 E0               [24] 1570 	movx	a,@dptr
      001188 60 08            [24] 1571 	jz	00157$
      00118A BF 03 02         [24] 1572 	cjne	r7,#0x03,00415$
      00118D 80 03            [24] 1573 	sjmp	00416$
      00118F                       1574 00415$:
      00118F 02 12 2A         [24] 1575 	ljmp	00166$
      001192                       1576 00416$:
      001192                       1577 00157$:
                                   1578 ;	src/usb.c:430: if (setup->index == 0x81)
      001192 90 C7 EC         [24] 1579 	mov	dptr,#(_SETUPBUF + 0x0004)
      001195 E0               [24] 1580 	movx	a,@dptr
      001196 FD               [12] 1581 	mov	r5,a
      001197 A3               [24] 1582 	inc	dptr
      001198 E0               [24] 1583 	movx	a,@dptr
      001199 FE               [12] 1584 	mov	r6,a
      00119A BD 81 0E         [24] 1585 	cjne	r5,#0x81,00155$
      00119D BE 00 0B         [24] 1586 	cjne	r6,#0x00,00155$
                                   1587 ;	src/usb.c:431: IN0BUF[0] = IN1CS;
      0011A0 90 C7 B6         [24] 1588 	mov	dptr,#0xC7B6
      0011A3 E0               [24] 1589 	movx	a,@dptr
      0011A4 FC               [12] 1590 	mov	r4,a
      0011A5 90 C7 00         [24] 1591 	mov	dptr,#_IN0BUF
      0011A8 F0               [24] 1592 	movx	@dptr,a
      0011A9 80 5B            [24] 1593 	sjmp	00156$
      0011AB                       1594 00155$:
                                   1595 ;	src/usb.c:432: else if (setup->index == 0x82)
      0011AB BD 82 0E         [24] 1596 	cjne	r5,#0x82,00152$
      0011AE BE 00 0B         [24] 1597 	cjne	r6,#0x00,00152$
                                   1598 ;	src/usb.c:433: IN0BUF[0] = IN2CS;
      0011B1 90 C7 B8         [24] 1599 	mov	dptr,#0xC7B8
      0011B4 E0               [24] 1600 	movx	a,@dptr
      0011B5 FC               [12] 1601 	mov	r4,a
      0011B6 90 C7 00         [24] 1602 	mov	dptr,#_IN0BUF
      0011B9 F0               [24] 1603 	movx	@dptr,a
      0011BA 80 4A            [24] 1604 	sjmp	00156$
      0011BC                       1605 00152$:
                                   1606 ;	src/usb.c:434: else if (setup->index == 0x83)
      0011BC BD 83 0E         [24] 1607 	cjne	r5,#0x83,00149$
      0011BF BE 00 0B         [24] 1608 	cjne	r6,#0x00,00149$
                                   1609 ;	src/usb.c:435: IN0BUF[0] = IN3CS;
      0011C2 90 C7 BA         [24] 1610 	mov	dptr,#0xC7BA
      0011C5 E0               [24] 1611 	movx	a,@dptr
      0011C6 FC               [12] 1612 	mov	r4,a
      0011C7 90 C7 00         [24] 1613 	mov	dptr,#_IN0BUF
      0011CA F0               [24] 1614 	movx	@dptr,a
      0011CB 80 39            [24] 1615 	sjmp	00156$
      0011CD                       1616 00149$:
                                   1617 ;	src/usb.c:436: else if (setup->index == 0x01)
      0011CD BD 01 0E         [24] 1618 	cjne	r5,#0x01,00146$
      0011D0 BE 00 0B         [24] 1619 	cjne	r6,#0x00,00146$
                                   1620 ;	src/usb.c:437: IN0BUF[0] = OUT1CS;
      0011D3 90 C7 C6         [24] 1621 	mov	dptr,#0xC7C6
      0011D6 E0               [24] 1622 	movx	a,@dptr
      0011D7 FC               [12] 1623 	mov	r4,a
      0011D8 90 C7 00         [24] 1624 	mov	dptr,#_IN0BUF
      0011DB F0               [24] 1625 	movx	@dptr,a
      0011DC 80 28            [24] 1626 	sjmp	00156$
      0011DE                       1627 00146$:
                                   1628 ;	src/usb.c:438: else if (setup->index == 0x02)
      0011DE BD 02 0E         [24] 1629 	cjne	r5,#0x02,00143$
      0011E1 BE 00 0B         [24] 1630 	cjne	r6,#0x00,00143$
                                   1631 ;	src/usb.c:439: IN0BUF[0] = OUT2CS;
      0011E4 90 C7 C8         [24] 1632 	mov	dptr,#0xC7C8
      0011E7 E0               [24] 1633 	movx	a,@dptr
      0011E8 FC               [12] 1634 	mov	r4,a
      0011E9 90 C7 00         [24] 1635 	mov	dptr,#_IN0BUF
      0011EC F0               [24] 1636 	movx	@dptr,a
      0011ED 80 17            [24] 1637 	sjmp	00156$
      0011EF                       1638 00143$:
                                   1639 ;	src/usb.c:440: else if (setup->index == 0x03)
      0011EF BD 03 0E         [24] 1640 	cjne	r5,#0x03,00140$
      0011F2 BE 00 0B         [24] 1641 	cjne	r6,#0x00,00140$
                                   1642 ;	src/usb.c:441: IN0BUF[0] = OUT3CS;
      0011F5 90 C7 CA         [24] 1643 	mov	dptr,#0xC7CA
      0011F8 E0               [24] 1644 	movx	a,@dptr
      0011F9 FE               [12] 1645 	mov	r6,a
      0011FA 90 C7 00         [24] 1646 	mov	dptr,#_IN0BUF
      0011FD F0               [24] 1647 	movx	@dptr,a
      0011FE 80 06            [24] 1648 	sjmp	00156$
      001200                       1649 00140$:
                                   1650 ;	src/usb.c:443: IN0BUF[0]=1;
      001200 90 C7 00         [24] 1651 	mov	dptr,#_IN0BUF
      001203 74 01            [12] 1652 	mov	a,#0x01
      001205 F0               [24] 1653 	movx	@dptr,a
      001206                       1654 00156$:
                                   1655 ;	src/usb.c:447: IN0BUF[1]=0;
      001206 90 C7 01         [24] 1656 	mov	dptr,#(_IN0BUF + 0x0001)
      001209 E4               [12] 1657 	clr	a
      00120A F0               [24] 1658 	movx	@dptr,a
                                   1659 ;	src/usb.c:448: IN0BC = 2; //2 bytes
      00120B 90 C7 B5         [24] 1660 	mov	dptr,#0xC7B5
      00120E 74 02            [12] 1661 	mov	a,#0x02
      001210 F0               [24] 1662 	movx	@dptr,a
                                   1663 ;	src/usb.c:450: EP0CS = HSNAK; //HSNACK dis
      001211 90 C7 B4         [24] 1664 	mov	dptr,#0xC7B4
      001214 F0               [24] 1665 	movx	@dptr,a
                                   1666 ;	src/usb.c:451: return;
      001215 22               [24] 1667 	ret
      001216                       1668 00161$:
                                   1669 ;	src/usb.c:458: IN0BUF[0]=0;
      001216 90 C7 00         [24] 1670 	mov	dptr,#_IN0BUF
      001219 E4               [12] 1671 	clr	a
      00121A F0               [24] 1672 	movx	@dptr,a
                                   1673 ;	src/usb.c:459: IN0BUF[1]=0;
      00121B 90 C7 01         [24] 1674 	mov	dptr,#(_IN0BUF + 0x0001)
      00121E F0               [24] 1675 	movx	@dptr,a
                                   1676 ;	src/usb.c:460: IN0BC = 2; //2 bytes
      00121F 90 C7 B5         [24] 1677 	mov	dptr,#0xC7B5
      001222 74 02            [12] 1678 	mov	a,#0x02
      001224 F0               [24] 1679 	movx	@dptr,a
                                   1680 ;	src/usb.c:462: EP0CS = HSNAK; //HSNACK dis
      001225 90 C7 B4         [24] 1681 	mov	dptr,#0xC7B4
      001228 F0               [24] 1682 	movx	@dptr,a
                                   1683 ;	src/usb.c:463: return; 
      001229 22               [24] 1684 	ret
      00122A                       1685 00166$:
                                   1686 ;	src/usb.c:468: if (state >= CONFIGURED)
      00122A BF 03 00         [24] 1687 	cjne	r7,#0x03,00429$
      00122D                       1688 00429$:
      00122D 50 03            [24] 1689 	jnc	00430$
      00122F 02 13 5D         [24] 1690 	ljmp	00216$
      001232                       1691 00430$:
                                   1692 ;	src/usb.c:470: if(SETUPBUF[1] == GET_INTERFACE)
      001232 90 C7 E9         [24] 1693 	mov	dptr,#(_SETUPBUF + 0x0001)
      001235 E0               [24] 1694 	movx	a,@dptr
      001236 FF               [12] 1695 	mov	r7,a
      001237 BF 0A 12         [24] 1696 	cjne	r7,#0x0A,00168$
                                   1697 ;	src/usb.c:473: IN0BUF[0]=0;
      00123A 90 C7 00         [24] 1698 	mov	dptr,#_IN0BUF
      00123D E4               [12] 1699 	clr	a
      00123E F0               [24] 1700 	movx	@dptr,a
                                   1701 ;	src/usb.c:474: IN0BC = 1;
      00123F 90 C7 B5         [24] 1702 	mov	dptr,#0xC7B5
      001242 04               [12] 1703 	inc	a
      001243 F0               [24] 1704 	movx	@dptr,a
                                   1705 ;	src/usb.c:476: EP0CS |= HSNAK; //HSNACK dis
      001244 90 C7 B4         [24] 1706 	mov	dptr,#0xC7B4
      001247 E0               [24] 1707 	movx	a,@dptr
      001248 44 02            [12] 1708 	orl	a,#0x02
      00124A F0               [24] 1709 	movx	@dptr,a
                                   1710 ;	src/usb.c:477: return;    
      00124B 22               [24] 1711 	ret
      00124C                       1712 00168$:
                                   1713 ;	src/usb.c:480: if(setup->request == CLEAR_FEATURE)
      00124C 90 C7 E9         [24] 1714 	mov	dptr,#(_SETUPBUF + 0x0001)
      00124F E0               [24] 1715 	movx	a,@dptr
      001250 FF               [12] 1716 	mov	r7,a
      001251 BF 01 02         [24] 1717 	cjne	r7,#0x01,00433$
      001254 80 03            [24] 1718 	sjmp	00434$
      001256                       1719 00433$:
      001256 02 12 D4         [24] 1720 	ljmp	00191$
      001259                       1721 00434$:
                                   1722 ;	src/usb.c:482: if (IS_ENDPOINT(setup->requestType) && (setup->value == ENDPOINT_HALT))
      001259 90 C7 E8         [24] 1723 	mov	dptr,#_SETUPBUF
      00125C E0               [24] 1724 	movx	a,@dptr
      00125D FE               [12] 1725 	mov	r6,a
      00125E 53 06 03         [24] 1726 	anl	ar6,#0x03
      001261 BE 02 70         [24] 1727 	cjne	r6,#0x02,00191$
      001264 90 C7 EA         [24] 1728 	mov	dptr,#(_SETUPBUF + 0x0002)
      001267 E0               [24] 1729 	movx	a,@dptr
      001268 FD               [12] 1730 	mov	r5,a
      001269 A3               [24] 1731 	inc	dptr
      00126A E0               [24] 1732 	movx	a,@dptr
      00126B FE               [12] 1733 	mov	r6,a
      00126C 4D               [12] 1734 	orl	a,r5
      00126D 70 65            [24] 1735 	jnz	00191$
                                   1736 ;	src/usb.c:484: if (setup->index == 0x81)
      00126F 90 C7 EC         [24] 1737 	mov	dptr,#(_SETUPBUF + 0x0004)
      001272 E0               [24] 1738 	movx	a,@dptr
      001273 FD               [12] 1739 	mov	r5,a
      001274 A3               [24] 1740 	inc	dptr
      001275 E0               [24] 1741 	movx	a,@dptr
      001276 FE               [12] 1742 	mov	r6,a
      001277 BD 81 0A         [24] 1743 	cjne	r5,#0x81,00185$
      00127A BE 00 07         [24] 1744 	cjne	r6,#0x00,00185$
                                   1745 ;	src/usb.c:485: IN1CS = 0;
      00127D 90 C7 B6         [24] 1746 	mov	dptr,#0xC7B6
      001280 E4               [12] 1747 	clr	a
      001281 F0               [24] 1748 	movx	@dptr,a
      001282 80 48            [24] 1749 	sjmp	00186$
      001284                       1750 00185$:
                                   1751 ;	src/usb.c:486: else if (setup->index == 0x82)
      001284 BD 82 0A         [24] 1752 	cjne	r5,#0x82,00182$
      001287 BE 00 07         [24] 1753 	cjne	r6,#0x00,00182$
                                   1754 ;	src/usb.c:487: IN2CS = 0;
      00128A 90 C7 B8         [24] 1755 	mov	dptr,#0xC7B8
      00128D E4               [12] 1756 	clr	a
      00128E F0               [24] 1757 	movx	@dptr,a
      00128F 80 3B            [24] 1758 	sjmp	00186$
      001291                       1759 00182$:
                                   1760 ;	src/usb.c:488: else if (setup->index == 0x83)
      001291 BD 83 0A         [24] 1761 	cjne	r5,#0x83,00179$
      001294 BE 00 07         [24] 1762 	cjne	r6,#0x00,00179$
                                   1763 ;	src/usb.c:489: IN3CS = 0;
      001297 90 C7 BA         [24] 1764 	mov	dptr,#0xC7BA
      00129A E4               [12] 1765 	clr	a
      00129B F0               [24] 1766 	movx	@dptr,a
      00129C 80 2E            [24] 1767 	sjmp	00186$
      00129E                       1768 00179$:
                                   1769 ;	src/usb.c:490: else if (setup->index == 0x01)
      00129E BD 01 0A         [24] 1770 	cjne	r5,#0x01,00176$
      0012A1 BE 00 07         [24] 1771 	cjne	r6,#0x00,00176$
                                   1772 ;	src/usb.c:491: OUT1CS = 0;
      0012A4 90 C7 C6         [24] 1773 	mov	dptr,#0xC7C6
      0012A7 E4               [12] 1774 	clr	a
      0012A8 F0               [24] 1775 	movx	@dptr,a
      0012A9 80 21            [24] 1776 	sjmp	00186$
      0012AB                       1777 00176$:
                                   1778 ;	src/usb.c:492: else if (setup->index == 0x02)
      0012AB BD 02 0A         [24] 1779 	cjne	r5,#0x02,00173$
      0012AE BE 00 07         [24] 1780 	cjne	r6,#0x00,00173$
                                   1781 ;	src/usb.c:493: OUT2CS = 0;
      0012B1 90 C7 C8         [24] 1782 	mov	dptr,#0xC7C8
      0012B4 E4               [12] 1783 	clr	a
      0012B5 F0               [24] 1784 	movx	@dptr,a
      0012B6 80 14            [24] 1785 	sjmp	00186$
      0012B8                       1786 00173$:
                                   1787 ;	src/usb.c:494: else if (setup->index == 0x03)
      0012B8 BD 03 0A         [24] 1788 	cjne	r5,#0x03,00170$
      0012BB BE 00 07         [24] 1789 	cjne	r6,#0x00,00170$
                                   1790 ;	src/usb.c:495: OUT3CS = 0;
      0012BE 90 C7 CA         [24] 1791 	mov	dptr,#0xC7CA
      0012C1 E4               [12] 1792 	clr	a
      0012C2 F0               [24] 1793 	movx	@dptr,a
      0012C3 80 07            [24] 1794 	sjmp	00186$
      0012C5                       1795 00170$:
                                   1796 ;	src/usb.c:497: EP0CS = EP0STALL;
      0012C5 90 C7 B4         [24] 1797 	mov	dptr,#0xC7B4
      0012C8 74 01            [12] 1798 	mov	a,#0x01
      0012CA F0               [24] 1799 	movx	@dptr,a
                                   1800 ;	src/usb.c:498: return;
      0012CB 22               [24] 1801 	ret
      0012CC                       1802 00186$:
                                   1803 ;	src/usb.c:501: EP0CS |= HSNAK; //HSNACK dis
      0012CC 90 C7 B4         [24] 1804 	mov	dptr,#0xC7B4
      0012CF E0               [24] 1805 	movx	a,@dptr
      0012D0 44 02            [12] 1806 	orl	a,#0x02
      0012D2 F0               [24] 1807 	movx	@dptr,a
                                   1808 ;	src/usb.c:502: return; 
      0012D3 22               [24] 1809 	ret
      0012D4                       1810 00191$:
                                   1811 ;	src/usb.c:506: if(setup->request == SET_FEATURE)
      0012D4 BF 03 02         [24] 1812 	cjne	r7,#0x03,00450$
      0012D7 80 03            [24] 1813 	sjmp	00451$
      0012D9                       1814 00450$:
      0012D9 02 13 5D         [24] 1815 	ljmp	00216$
      0012DC                       1816 00451$:
                                   1817 ;	src/usb.c:508: if (IS_ENDPOINT(setup->requestType) && (setup->value == ENDPOINT_HALT))
      0012DC 90 C7 E8         [24] 1818 	mov	dptr,#_SETUPBUF
      0012DF E0               [24] 1819 	movx	a,@dptr
      0012E0 FF               [12] 1820 	mov	r7,a
      0012E1 53 07 03         [24] 1821 	anl	ar7,#0x03
      0012E4 BF 02 76         [24] 1822 	cjne	r7,#0x02,00216$
      0012E7 90 C7 EA         [24] 1823 	mov	dptr,#(_SETUPBUF + 0x0002)
      0012EA E0               [24] 1824 	movx	a,@dptr
      0012EB FE               [12] 1825 	mov	r6,a
      0012EC A3               [24] 1826 	inc	dptr
      0012ED E0               [24] 1827 	movx	a,@dptr
      0012EE FF               [12] 1828 	mov	r7,a
      0012EF 4E               [12] 1829 	orl	a,r6
      0012F0 70 6B            [24] 1830 	jnz	00216$
                                   1831 ;	src/usb.c:510: if (setup->index == 0x81)
      0012F2 90 C7 EC         [24] 1832 	mov	dptr,#(_SETUPBUF + 0x0004)
      0012F5 E0               [24] 1833 	movx	a,@dptr
      0012F6 FE               [12] 1834 	mov	r6,a
      0012F7 A3               [24] 1835 	inc	dptr
      0012F8 E0               [24] 1836 	movx	a,@dptr
      0012F9 FF               [12] 1837 	mov	r7,a
      0012FA BE 81 0B         [24] 1838 	cjne	r6,#0x81,00208$
      0012FD BF 00 08         [24] 1839 	cjne	r7,#0x00,00208$
                                   1840 ;	src/usb.c:511: IN1CS = EPSTALL;
      001300 90 C7 B6         [24] 1841 	mov	dptr,#0xC7B6
      001303 74 01            [12] 1842 	mov	a,#0x01
      001305 F0               [24] 1843 	movx	@dptr,a
      001306 80 4D            [24] 1844 	sjmp	00209$
      001308                       1845 00208$:
                                   1846 ;	src/usb.c:512: else if (setup->index == 0x82)
      001308 BE 82 0B         [24] 1847 	cjne	r6,#0x82,00205$
      00130B BF 00 08         [24] 1848 	cjne	r7,#0x00,00205$
                                   1849 ;	src/usb.c:513: IN2CS = EPSTALL;
      00130E 90 C7 B8         [24] 1850 	mov	dptr,#0xC7B8
      001311 74 01            [12] 1851 	mov	a,#0x01
      001313 F0               [24] 1852 	movx	@dptr,a
      001314 80 3F            [24] 1853 	sjmp	00209$
      001316                       1854 00205$:
                                   1855 ;	src/usb.c:514: else if (setup->index == 0x83)
      001316 BE 83 0B         [24] 1856 	cjne	r6,#0x83,00202$
      001319 BF 00 08         [24] 1857 	cjne	r7,#0x00,00202$
                                   1858 ;	src/usb.c:515: IN3CS = EPSTALL;
      00131C 90 C7 BA         [24] 1859 	mov	dptr,#0xC7BA
      00131F 74 01            [12] 1860 	mov	a,#0x01
      001321 F0               [24] 1861 	movx	@dptr,a
      001322 80 31            [24] 1862 	sjmp	00209$
      001324                       1863 00202$:
                                   1864 ;	src/usb.c:516: else if (setup->index == 0x01)
      001324 BE 01 0B         [24] 1865 	cjne	r6,#0x01,00199$
      001327 BF 00 08         [24] 1866 	cjne	r7,#0x00,00199$
                                   1867 ;	src/usb.c:517: OUT1CS = EPSTALL;
      00132A 90 C7 C6         [24] 1868 	mov	dptr,#0xC7C6
      00132D 74 01            [12] 1869 	mov	a,#0x01
      00132F F0               [24] 1870 	movx	@dptr,a
      001330 80 23            [24] 1871 	sjmp	00209$
      001332                       1872 00199$:
                                   1873 ;	src/usb.c:518: else if (setup->index == 0x02)
      001332 BE 02 0B         [24] 1874 	cjne	r6,#0x02,00196$
      001335 BF 00 08         [24] 1875 	cjne	r7,#0x00,00196$
                                   1876 ;	src/usb.c:519: OUT2CS = EPSTALL;
      001338 90 C7 C8         [24] 1877 	mov	dptr,#0xC7C8
      00133B 74 01            [12] 1878 	mov	a,#0x01
      00133D F0               [24] 1879 	movx	@dptr,a
      00133E 80 15            [24] 1880 	sjmp	00209$
      001340                       1881 00196$:
                                   1882 ;	src/usb.c:520: else if (setup->index == 0x03)
      001340 BE 03 0B         [24] 1883 	cjne	r6,#0x03,00193$
      001343 BF 00 08         [24] 1884 	cjne	r7,#0x00,00193$
                                   1885 ;	src/usb.c:521: OUT3CS = EPSTALL;
      001346 90 C7 CA         [24] 1886 	mov	dptr,#0xC7CA
      001349 74 01            [12] 1887 	mov	a,#0x01
      00134B F0               [24] 1888 	movx	@dptr,a
      00134C 80 07            [24] 1889 	sjmp	00209$
      00134E                       1890 00193$:
                                   1891 ;	src/usb.c:523: EP0CS = EP0STALL;
      00134E 90 C7 B4         [24] 1892 	mov	dptr,#0xC7B4
      001351 74 01            [12] 1893 	mov	a,#0x01
      001353 F0               [24] 1894 	movx	@dptr,a
                                   1895 ;	src/usb.c:524: return;
      001354 22               [24] 1896 	ret
      001355                       1897 00209$:
                                   1898 ;	src/usb.c:527: EP0CS |= HSNAK; //HSNACK dis
      001355 90 C7 B4         [24] 1899 	mov	dptr,#0xC7B4
      001358 E0               [24] 1900 	movx	a,@dptr
      001359 44 02            [12] 1901 	orl	a,#0x02
      00135B F0               [24] 1902 	movx	@dptr,a
                                   1903 ;	src/usb.c:528: return; 
                                   1904 ;	src/usb.c:532: if(setup->request == SET_FEATURE)
      00135C 22               [24] 1905 	ret
      00135D                       1906 00216$:
                                   1907 ;	src/usb.c:539: EP0CS = EP0STALL; //Stall to error
      00135D 90 C7 B4         [24] 1908 	mov	dptr,#0xC7B4
      001360 74 01            [12] 1909 	mov	a,#0x01
      001362 F0               [24] 1910 	movx	@dptr,a
      001363 22               [24] 1911 	ret
                                   1912 ;------------------------------------------------------------
                                   1913 ;Allocation info for local variables in function 'usbVendorIsr'
                                   1914 ;------------------------------------------------------------
                                   1915 ;	src/usb.c:542: void usbVendorIsr() 
                                   1916 ;	-----------------------------------------
                                   1917 ;	 function usbVendorIsr
                                   1918 ;	-----------------------------------------
      001364                       1919 _usbVendorIsr:
                                   1920 ;	src/usb.c:544: vendorSetup = true;
      001364 D2 05            [12] 1921 	setb	_vendorSetup
      001366 22               [24] 1922 	ret
                                   1923 ;------------------------------------------------------------
                                   1924 ;Allocation info for local variables in function 'usbClassIsr'
                                   1925 ;------------------------------------------------------------
                                   1926 ;	src/usb.c:547: void usbClassIsr() {
                                   1927 ;	-----------------------------------------
                                   1928 ;	 function usbClassIsr
                                   1929 ;	-----------------------------------------
      001367                       1930 _usbClassIsr:
                                   1931 ;	src/usb.c:553: EP0CS = EP0STALL;
      001367 90 C7 B4         [24] 1932 	mov	dptr,#0xC7B4
      00136A 74 01            [12] 1933 	mov	a,#0x01
      00136C F0               [24] 1934 	movx	@dptr,a
      00136D 22               [24] 1935 	ret
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
      00136E                       1947 _usbBulkSend:
                                   1948 ;	src/usb.c:561: memcpy(IN0BUF, buff, len);
      00136E 90 80 75         [24] 1949 	mov	dptr,#_usbBulkSend_PARM_2
      001371 E0               [24] 1950 	movx	a,@dptr
      001372 FD               [12] 1951 	mov	r5,a
      001373 A3               [24] 1952 	inc	dptr
      001374 E0               [24] 1953 	movx	a,@dptr
      001375 FE               [12] 1954 	mov	r6,a
      001376 A3               [24] 1955 	inc	dptr
      001377 E0               [24] 1956 	movx	a,@dptr
      001378 FF               [12] 1957 	mov	r7,a
      001379 90 80 78         [24] 1958 	mov	dptr,#_usbBulkSend_PARM_3
      00137C E0               [24] 1959 	movx	a,@dptr
      00137D FC               [12] 1960 	mov	r4,a
      00137E FA               [12] 1961 	mov	r2,a
      00137F 7B 00            [12] 1962 	mov	r3,#0x00
      001381 90 80 85         [24] 1963 	mov	dptr,#_memcpy_PARM_2
      001384 ED               [12] 1964 	mov	a,r5
      001385 F0               [24] 1965 	movx	@dptr,a
      001386 EE               [12] 1966 	mov	a,r6
      001387 A3               [24] 1967 	inc	dptr
      001388 F0               [24] 1968 	movx	@dptr,a
      001389 EF               [12] 1969 	mov	a,r7
      00138A A3               [24] 1970 	inc	dptr
      00138B F0               [24] 1971 	movx	@dptr,a
      00138C 90 80 88         [24] 1972 	mov	dptr,#_memcpy_PARM_3
      00138F EA               [12] 1973 	mov	a,r2
      001390 F0               [24] 1974 	movx	@dptr,a
      001391 EB               [12] 1975 	mov	a,r3
      001392 A3               [24] 1976 	inc	dptr
      001393 F0               [24] 1977 	movx	@dptr,a
      001394 90 C7 00         [24] 1978 	mov	dptr,#_IN0BUF
      001397 75 F0 00         [24] 1979 	mov	b,#0x00
      00139A C0 04            [24] 1980 	push	ar4
      00139C 12 15 3A         [24] 1981 	lcall	_memcpy
      00139F D0 04            [24] 1982 	pop	ar4
                                   1983 ;	src/usb.c:563: IN0BC = len;
      0013A1 90 C7 B5         [24] 1984 	mov	dptr,#0xC7B5
      0013A4 EC               [12] 1985 	mov	a,r4
      0013A5 F0               [24] 1986 	movx	@dptr,a
      0013A6 22               [24] 1987 	ret
                                   1988 ;------------------------------------------------------------
                                   1989 ;Allocation info for local variables in function 'usbSendIdString'
                                   1990 ;------------------------------------------------------------
                                   1991 ;i                         Allocated with name '_usbSendIdString_i_1_79'
                                   1992 ;------------------------------------------------------------
                                   1993 ;	src/usb.c:571: void usbSendIdString(void)
                                   1994 ;	-----------------------------------------
                                   1995 ;	 function usbSendIdString
                                   1996 ;	-----------------------------------------
      0013A7                       1997 _usbSendIdString:
                                   1998 ;	src/usb.c:575: IN0BUF[0] = 22;
      0013A7 90 C7 00         [24] 1999 	mov	dptr,#_IN0BUF
      0013AA 74 16            [12] 2000 	mov	a,#0x16
      0013AC F0               [24] 2001 	movx	@dptr,a
                                   2002 ;	src/usb.c:576: IN0BUF[1] = STRING_DESCRIPTOR;
      0013AD 90 C7 01         [24] 2003 	mov	dptr,#(_IN0BUF + 0x0001)
      0013B0 74 03            [12] 2004 	mov	a,#0x03
      0013B2 F0               [24] 2005 	movx	@dptr,a
                                   2006 ;	src/usb.c:578: for (i=0; i<5; i++)
      0013B3 7E 00            [12] 2007 	mov	r6,#0x00
      0013B5 7F 00            [12] 2008 	mov	r7,#0x00
      0013B7                       2009 00102$:
                                   2010 ;	src/usb.c:580: IN0BUF[2+(i*4)] = bin2hex[(chip_id[i]>>4)&0x0F];
      0013B7 8E 05            [24] 2011 	mov	ar5,r6
      0013B9 ED               [12] 2012 	mov	a,r5
      0013BA 2D               [12] 2013 	add	a,r5
      0013BB 25 E0            [12] 2014 	add	a,acc
      0013BD FD               [12] 2015 	mov	r5,a
      0013BE 24 02            [12] 2016 	add	a,#0x02
      0013C0 24 00            [12] 2017 	add	a,#_IN0BUF
      0013C2 FB               [12] 2018 	mov	r3,a
      0013C3 E4               [12] 2019 	clr	a
      0013C4 34 C7            [12] 2020 	addc	a,#(_IN0BUF >> 8)
      0013C6 FC               [12] 2021 	mov	r4,a
      0013C7 EE               [12] 2022 	mov	a,r6
      0013C8 24 80            [12] 2023 	add	a,#_chip_id
      0013CA F9               [12] 2024 	mov	r1,a
      0013CB EF               [12] 2025 	mov	a,r7
      0013CC 34 80            [12] 2026 	addc	a,#(_chip_id >> 8)
      0013CE FA               [12] 2027 	mov	r2,a
      0013CF 89 82            [24] 2028 	mov	dpl,r1
      0013D1 8A 83            [24] 2029 	mov	dph,r2
      0013D3 E0               [24] 2030 	movx	a,@dptr
      0013D4 C4               [12] 2031 	swap	a
      0013D5 54 0F            [12] 2032 	anl	a,#0x0F
      0013D7 F8               [12] 2033 	mov	r0,a
      0013D8 74 0F            [12] 2034 	mov	a,#0x0F
      0013DA 58               [12] 2035 	anl	a,r0
      0013DB 90 15 FE         [24] 2036 	mov	dptr,#_bin2hex
      0013DE 93               [24] 2037 	movc	a,@a+dptr
      0013DF F8               [12] 2038 	mov	r0,a
      0013E0 8B 82            [24] 2039 	mov	dpl,r3
      0013E2 8C 83            [24] 2040 	mov	dph,r4
      0013E4 F0               [24] 2041 	movx	@dptr,a
                                   2042 ;	src/usb.c:581: IN0BUF[3+(i*4)] = 0;
      0013E5 74 03            [12] 2043 	mov	a,#0x03
      0013E7 2D               [12] 2044 	add	a,r5
      0013E8 24 00            [12] 2045 	add	a,#_IN0BUF
      0013EA F5 82            [12] 2046 	mov	dpl,a
      0013EC E4               [12] 2047 	clr	a
      0013ED 34 C7            [12] 2048 	addc	a,#(_IN0BUF >> 8)
      0013EF F5 83            [12] 2049 	mov	dph,a
      0013F1 E4               [12] 2050 	clr	a
      0013F2 F0               [24] 2051 	movx	@dptr,a
                                   2052 ;	src/usb.c:582: IN0BUF[4+(i*4)] = bin2hex[chip_id[i]&0x0F];
      0013F3 74 04            [12] 2053 	mov	a,#0x04
      0013F5 2D               [12] 2054 	add	a,r5
      0013F6 24 00            [12] 2055 	add	a,#_IN0BUF
      0013F8 FB               [12] 2056 	mov	r3,a
      0013F9 E4               [12] 2057 	clr	a
      0013FA 34 C7            [12] 2058 	addc	a,#(_IN0BUF >> 8)
      0013FC FC               [12] 2059 	mov	r4,a
      0013FD 89 82            [24] 2060 	mov	dpl,r1
      0013FF 8A 83            [24] 2061 	mov	dph,r2
      001401 E0               [24] 2062 	movx	a,@dptr
      001402 F9               [12] 2063 	mov	r1,a
      001403 74 0F            [12] 2064 	mov	a,#0x0F
      001405 59               [12] 2065 	anl	a,r1
      001406 90 15 FE         [24] 2066 	mov	dptr,#_bin2hex
      001409 93               [24] 2067 	movc	a,@a+dptr
      00140A FA               [12] 2068 	mov	r2,a
      00140B 8B 82            [24] 2069 	mov	dpl,r3
      00140D 8C 83            [24] 2070 	mov	dph,r4
      00140F F0               [24] 2071 	movx	@dptr,a
                                   2072 ;	src/usb.c:583: IN0BUF[5+(i*4)] = 0;
      001410 74 05            [12] 2073 	mov	a,#0x05
      001412 2D               [12] 2074 	add	a,r5
      001413 24 00            [12] 2075 	add	a,#_IN0BUF
      001415 F5 82            [12] 2076 	mov	dpl,a
      001417 E4               [12] 2077 	clr	a
      001418 34 C7            [12] 2078 	addc	a,#(_IN0BUF >> 8)
      00141A F5 83            [12] 2079 	mov	dph,a
      00141C E4               [12] 2080 	clr	a
      00141D F0               [24] 2081 	movx	@dptr,a
                                   2082 ;	src/usb.c:578: for (i=0; i<5; i++)
      00141E 0E               [12] 2083 	inc	r6
      00141F BE 00 01         [24] 2084 	cjne	r6,#0x00,00113$
      001422 0F               [12] 2085 	inc	r7
      001423                       2086 00113$:
      001423 C3               [12] 2087 	clr	c
      001424 EE               [12] 2088 	mov	a,r6
      001425 94 05            [12] 2089 	subb	a,#0x05
      001427 EF               [12] 2090 	mov	a,r7
      001428 64 80            [12] 2091 	xrl	a,#0x80
      00142A 94 80            [12] 2092 	subb	a,#0x80
      00142C 50 03            [24] 2093 	jnc	00114$
      00142E 02 13 B7         [24] 2094 	ljmp	00102$
      001431                       2095 00114$:
                                   2096 ;	src/usb.c:586: IN0BC = 22;
      001431 90 C7 B5         [24] 2097 	mov	dptr,#0xC7B5
      001434 74 16            [12] 2098 	mov	a,#0x16
      001436 F0               [24] 2099 	movx	@dptr,a
      001437 22               [24] 2100 	ret
                                   2101 ;------------------------------------------------------------
                                   2102 ;Allocation info for local variables in function 'usbIsVendorSetup'
                                   2103 ;------------------------------------------------------------
                                   2104 ;	src/usb.c:591: bool usbIsVendorSetup(void)
                                   2105 ;	-----------------------------------------
                                   2106 ;	 function usbIsVendorSetup
                                   2107 ;	-----------------------------------------
      001438                       2108 _usbIsVendorSetup:
                                   2109 ;	src/usb.c:593: if (vendorSetup)
                                   2110 ;	src/usb.c:595: vendorSetup = false;
      001438 10 05 02         [24] 2111 	jbc	_vendorSetup,00108$
      00143B 80 02            [24] 2112 	sjmp	00102$
      00143D                       2113 00108$:
                                   2114 ;	src/usb.c:596: return true;
      00143D D3               [12] 2115 	setb	c
      00143E 22               [24] 2116 	ret
      00143F                       2117 00102$:
                                   2118 ;	src/usb.c:598: return false;
      00143F C3               [12] 2119 	clr	c
      001440 22               [24] 2120 	ret
                                   2121 ;------------------------------------------------------------
                                   2122 ;Allocation info for local variables in function 'usbGetSetupPacket'
                                   2123 ;------------------------------------------------------------
                                   2124 ;	src/usb.c:605: __xdata struct controllStruct * usbGetSetupPacket(void)
                                   2125 ;	-----------------------------------------
                                   2126 ;	 function usbGetSetupPacket
                                   2127 ;	-----------------------------------------
      001441                       2128 _usbGetSetupPacket:
                                   2129 ;	src/usb.c:607: return (__xdata void*) SETUPBUF;
      001441 90 C7 E8         [24] 2130 	mov	dptr,#_SETUPBUF
      001444 22               [24] 2131 	ret
                                   2132 ;------------------------------------------------------------
                                   2133 ;Allocation info for local variables in function 'usbAckSetup'
                                   2134 ;------------------------------------------------------------
                                   2135 ;	src/usb.c:610: void usbAckSetup(void)
                                   2136 ;	-----------------------------------------
                                   2137 ;	 function usbAckSetup
                                   2138 ;	-----------------------------------------
      001445                       2139 _usbAckSetup:
                                   2140 ;	src/usb.c:612: EP0CS = HSNAK; //HSNACK dis
      001445 90 C7 B4         [24] 2141 	mov	dptr,#0xC7B4
      001448 74 02            [12] 2142 	mov	a,#0x02
      00144A F0               [24] 2143 	movx	@dptr,a
      00144B 22               [24] 2144 	ret
                                   2145 ;------------------------------------------------------------
                                   2146 ;Allocation info for local variables in function 'usbDismissSetup'
                                   2147 ;------------------------------------------------------------
                                   2148 ;	src/usb.c:615: void usbDismissSetup(void)
                                   2149 ;	-----------------------------------------
                                   2150 ;	 function usbDismissSetup
                                   2151 ;	-----------------------------------------
      00144C                       2152 _usbDismissSetup:
                                   2153 ;	src/usb.c:617: EP0CS = EP0STALL; //Stall to error
      00144C 90 C7 B4         [24] 2154 	mov	dptr,#0xC7B4
      00144F 74 01            [12] 2155 	mov	a,#0x01
      001451 F0               [24] 2156 	movx	@dptr,a
      001452 22               [24] 2157 	ret
                                   2158 	.area CSEG    (CODE)
                                   2159 	.area CONST   (CODE)
      0015FE                       2160 _bin2hex:
      0015FE 30                    2161 	.db #0x30	;  48	'0'
      0015FF 31                    2162 	.db #0x31	;  49	'1'
      001600 32                    2163 	.db #0x32	;  50	'2'
      001601 33                    2164 	.db #0x33	;  51	'3'
      001602 34                    2165 	.db #0x34	;  52	'4'
      001603 35                    2166 	.db #0x35	;  53	'5'
      001604 36                    2167 	.db #0x36	;  54	'6'
      001605 37                    2168 	.db #0x37	;  55	'7'
      001606 38                    2169 	.db #0x38	;  56	'8'
      001607 39                    2170 	.db #0x39	;  57	'9'
      001608 41                    2171 	.db #0x41	;  65	'A'
      001609 42                    2172 	.db #0x42	;  66	'B'
      00160A 43                    2173 	.db #0x43	;  67	'C'
      00160B 44                    2174 	.db #0x44	;  68	'D'
      00160C 45                    2175 	.db #0x45	;  69	'E'
      00160D 46                    2176 	.db #0x46	;  70	'F'
                                   2177 	.area XINIT   (CODE)
      0016A0                       2178 __xinit__state:
      0016A0 00                    2179 	.db #0x00	; 0
      0016A1                       2180 __xinit__radioChannel:
      0016A1 FF                    2181 	.db #0xFF	; -1
      0016A2                       2182 __xinit__dataRate:
      0016A2 FF                    2183 	.db #0xFF	; -1
                                   2184 	.area CABS    (ABS,CODE)
