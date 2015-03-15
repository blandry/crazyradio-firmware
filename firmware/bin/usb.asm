;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
; This file was generated Sat Mar 14 13:10:12 2015
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ledSet
	.globl _memcpy
	.globl _USB_SWRDT
	.globl _USB_WU
	.globl _USB_SUSPEND
	.globl _USB_IV4
	.globl _USB_IV3
	.globl _USB_IV2
	.globl _USB_IV1
	.globl _USB_IV0
	.globl _EXF2
	.globl _TF2
	.globl _WU
	.globl _USBIRQ_F
	.globl _USBWU
	.globl _SDONE
	.globl _RFIRQ
	.globl _RFRDY
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _RFCKEN
	.globl _RFCSN
	.globl _RFCE
	.globl _USBSLP
	.globl _USBCON
	.globl _FCR
	.globl _FPCR
	.globl _FSR
	.globl _CRCH
	.globl _CRCL
	.globl _CCH3
	.globl _CCL3
	.globl _CCH2
	.globl _CCL2
	.globl _CCH1
	.globl _CCL1
	.globl _CCEN
	.globl _TH2
	.globl _TL2
	.globl _T2CON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _IRCON
	.globl _IP1
	.globl _IP0
	.globl _IEN1
	.globl _IEN0
	.globl _SSSTAT
	.globl _SSDAT
	.globl _SSCONF
	.globl _P0EXP
	.globl _P0ALT
	.globl _P0DIR
	.globl _P0
	.globl _RFCON
	.globl _RFCTL
	.globl _RFDAT
	.globl _usbBulkSend_PARM_3
	.globl _usbBulkSend_PARM_2
	.globl _inflow
	.globl _IN5BUF
	.globl _OUT5BUF
	.globl _IN4BUF
	.globl _OUT4BUF
	.globl _IN3BUF
	.globl _OUT3BUF
	.globl _IN2BUF
	.globl _OUT2BUF
	.globl _IN1BUF
	.globl _OUT1BUF
	.globl _IN0BUF
	.globl _OUT0BUF
	.globl _SETUPBUF
	.globl _usbInit
	.globl _usbDeinit
	.globl _usbGetState
	.globl _usbWuIsr
	.globl _usbIsr
	.globl _usbBulkOutIsr
	.globl _usbBulkInIsr
	.globl _usbSetupIsr
	.globl _usbVendorIsr
	.globl _usbClassIsr
	.globl _usbBulkSend
	.globl _usbSendIdString
	.globl _usbIsVendorSetup
	.globl _usbGetSetupPacket
	.globl _usbAckSetup
	.globl _usbDismissSetup
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_RFDAT	=	0x00e5
_RFCTL	=	0x00e6
_RFCON	=	0x0090
_P0	=	0x0080
_P0DIR	=	0x0094
_P0ALT	=	0x0095
_P0EXP	=	0x00c9
_SSCONF	=	0x00bc
_SSDAT	=	0x00bd
_SSSTAT	=	0x00be
_IEN0	=	0x00a8
_IEN1	=	0x00b8
_IP0	=	0x00a9
_IP1	=	0x00b9
_IRCON	=	0x00c0
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_T2CON	=	0x00c8
_TL2	=	0x00cc
_TH2	=	0x00cd
_CCEN	=	0x00c1
_CCL1	=	0x00c2
_CCH1	=	0x00c3
_CCL2	=	0x00c4
_CCH2	=	0x00c5
_CCL3	=	0x00c6
_CCH3	=	0x00c7
_CRCL	=	0x00ca
_CRCH	=	0x00cb
_FSR	=	0x00f8
_FPCR	=	0x00f9
_FCR	=	0x00fa
_USBCON	=	0x00a0
_USBSLP	=	0x00d9
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_RFCE	=	0x0090
_RFCSN	=	0x0091
_RFCKEN	=	0x0092
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_RFRDY	=	0x00c0
_RFIRQ	=	0x00c1
_SDONE	=	0x00c2
_USBWU	=	0x00c3
_USBIRQ_F	=	0x00c4
_WU	=	0x00c5
_TF2	=	0x00c6
_EXF2	=	0x00c7
_USB_IV0	=	0x00a0
_USB_IV1	=	0x00a1
_USB_IV2	=	0x00a2
_USB_IV3	=	0x00a3
_USB_IV4	=	0x00a4
_USB_SUSPEND	=	0x00a5
_USB_WU	=	0x00a6
_USB_SWRDT	=	0x00a7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_usbBulkInIsr_sloc0_1_0:
	.ds 2
_usbSetupIsr_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_launchBootloader:
	.ds 1
_vendorSetup:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_SETUPBUF	=	0xc7e8
_OUT0BUF	=	0xc6c0
_IN0BUF	=	0xc700
_OUT1BUF	=	0xc640
_IN1BUF	=	0xc680
_OUT2BUF	=	0xc5c0
_IN2BUF	=	0xc600
_OUT3BUF	=	0xc540
_IN3BUF	=	0xc580
_OUT4BUF	=	0xc4c0
_IN4BUF	=	0xc500
_OUT5BUF	=	0xc440
_IN5BUF	=	0xc480
_configuration:
	.ds 1
_inflow::
	.ds 7
_usbBulkInIsr_ep_1_41:
	.ds 1
_usbBulkSend_PARM_2:
	.ds 3
_usbBulkSend_PARM_3:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_state:
	.ds 1
_radioChannel:
	.ds 1
_dataRate:
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	src/usb.c:48: static __bit launchBootloader = 0;
	clr	_launchBootloader
;	src/usb.c:51: static bool vendorSetup=false;
	clr	_vendorSetup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'usbInit'
;------------------------------------------------------------
;i                         Allocated with name '_usbInit_i_1_32'
;------------------------------------------------------------
;	src/usb.c:57: void usbInit() 
;	-----------------------------------------
;	 function usbInit
;	-----------------------------------------
_usbInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/usb.c:61: state = POWERED;
	mov	dptr,#_state
	clr	a
	movx	@dptr,a
;	src/usb.c:64: USBCON = WU;
	mov	_USBCON,#0x40
;	src/usb.c:67: USBCS |= DISCON;
	mov	dptr,#0xC7D6
	movx	a,@dptr
	orl	a,#0x04
	movx	@dptr,a
;	src/usb.c:69: for(i=0;i<50000;i++);
	mov	r4,#0x50
	mov	r5,#0xC3
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	dec	r4
	cjne	r4,#0xFF,00114$
	dec	r5
	cjne	r5,#0xFF,00114$
	dec	r6
	cjne	r6,#0xFF,00114$
	dec	r7
00114$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00104$
;	src/usb.c:70: USBCS &= ~DISCON;
	mov	dptr,#0xC7D6
	movx	a,@dptr
	anl	a,#0xFB
	movx	@dptr,a
;	src/usb.c:73: INBULKVAL=0;   //IN EP
	mov	dptr,#0xC7DE
	clr	a
	movx	@dptr,a
;	src/usb.c:74: IN_IEN=0;
	mov	dptr,#0xC7AC
	movx	@dptr,a
;	src/usb.c:75: OUTBULKVAL=0;  //OUT EP
	mov	dptr,#0xC7DF
	movx	@dptr,a
;	src/usb.c:76: OUT_IEN=0;
	mov	dptr,#0xC7AD
	movx	@dptr,a
;	src/usb.c:77: INISOVAL=0;    //ISO EP
	mov	dptr,#0xC7E0
	movx	@dptr,a
;	src/usb.c:78: OUTISOVAL=0;
	mov	dptr,#0xC700
	movx	@dptr,a
;	src/usb.c:81: USBIEN = URESIE | SUSPIE;
	mov	dptr,#0xC7AE
	mov	a,#0x18
	movx	@dptr,a
;	src/usb.c:84: IN_IRQ = 0xFF;
	mov	dptr,#0xC7A9
	mov	a,#0xFF
	movx	@dptr,a
;	src/usb.c:85: OUT_IRQ = 0xFF;
	mov	dptr,#0xC7AA
	movx	@dptr,a
;	src/usb.c:86: USBIRQ = 0xFF;
	mov	dptr,#0xC7AB
	movx	@dptr,a
;	src/usb.c:91: BOUT1ADDR = 32;
	mov	dptr,#0xC781
	mov	a,#0x20
	movx	@dptr,a
;	src/usb.c:92: BOUT2ADDR = 64;
	mov	dptr,#0xC782
	rl	a
	movx	@dptr,a
;	src/usb.c:93: BOUT3ADDR = 96;
	mov	dptr,#0xC783
	mov	a,#0x60
	movx	@dptr,a
;	src/usb.c:94: BINSTADDR = 0x40; // EPOUT_Size/4 = 256/4 = 64
	mov	dptr,#0xC788
	mov	a,#0x40
	movx	@dptr,a
;	src/usb.c:95: BIN1ADDR  = 32;
	mov	dptr,#0xC789
	rr	a
	movx	@dptr,a
;	src/usb.c:96: BIN2ADDR  = 64;
	mov	dptr,#0xC78A
	rl	a
	movx	@dptr,a
;	src/usb.c:97: BIN3ADDR  = 96;
	mov	dptr,#0xC78B
	mov	a,#0x60
	movx	@dptr,a
;	src/usb.c:100: IEN1 |= 0x18;  
	orl	_IEN1,#0x18
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbDeinit'
;------------------------------------------------------------
;	src/usb.c:103: void usbDeinit()
;	-----------------------------------------
;	 function usbDeinit
;	-----------------------------------------
_usbDeinit:
;	src/usb.c:105: state = POWERED; //Deactivate all mechanism
	mov	dptr,#_state
	clr	a
	movx	@dptr,a
;	src/usb.c:108: IEN1 &= (~0x18);
	mov	r7,_IEN1
	mov	a,#0xE7
	anl	a,r7
	mov	_IEN1,a
;	src/usb.c:111: USB_SUSPEND = 1;
	setb	_USB_SUSPEND
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbGetState'
;------------------------------------------------------------
;	src/usb.c:114: usbState_t usbGetState()
;	-----------------------------------------
;	 function usbGetState
;	-----------------------------------------
_usbGetState:
;	src/usb.c:116: return state;
	mov	dptr,#_state
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbWuIsr'
;------------------------------------------------------------
;	src/usb.c:119: void usbWuIsr() __interrupt(11)
;	-----------------------------------------
;	 function usbWuIsr
;	-----------------------------------------
_usbWuIsr:
;	src/usb.c:122: return;
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'usbIsr'
;------------------------------------------------------------
;	src/usb.c:127: void usbIsr() __interrupt(12)  __using(1)
;	-----------------------------------------
;	 function usbIsr
;	-----------------------------------------
_usbIsr:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
;	src/usb.c:130: switch (IVEC) {
	mov	dptr,#0xC7A8
	movx	a,@dptr
	mov	r7,a
	jz	00101$
	cjne	r7,#0x04,00200$
	ljmp	00111$
00200$:
	cjne	r7,#0x08,00201$
	ljmp	00115$
00201$:
	cjne	r7,#0x0C,00202$
	ljmp	00116$
00202$:
	cjne	r7,#0x10,00203$
	ljmp	00117$
00203$:
	cjne	r7,#0x18,00204$
	ljmp	00118$
00204$:
	cjne	r7,#0x1C,00205$
	ljmp	00119$
00205$:
	cjne	r7,#0x20,00206$
	ljmp	00120$
00206$:
	cjne	r7,#0x24,00207$
	ljmp	00121$
00207$:
	cjne	r7,#0x28,00208$
	ljmp	00122$
00208$:
	cjne	r7,#0x2C,00209$
	ljmp	00123$
00209$:
	cjne	r7,#0x30,00210$
	ljmp	00124$
00210$:
	cjne	r7,#0x34,00211$
	ljmp	00125$
00211$:
	cjne	r7,#0x38,00212$
	ljmp	00126$
00212$:
	cjne	r7,#0x3C,00213$
	ljmp	00127$
00213$:
	cjne	r7,#0x40,00214$
	ljmp	00128$
00214$:
	cjne	r7,#0x44,00215$
	ljmp	00129$
00215$:
	ljmp	00131$
;	src/usb.c:131: case IRQ_SUDAV:
00101$:
;	src/usb.c:133: if(IS_STANDARD(SETUPBUF[0]))
	mov	dptr,#_SETUPBUF
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x60
	jz	00217$
	sjmp	00109$
00217$:
;	src/usb.c:134: usbSetupIsr();
	mov	psw,#0x00
	lcall	_usbSetupIsr
	mov	psw,#0x08
	sjmp	00110$
00109$:
;	src/usb.c:135: else if(IS_VENDOR(SETUPBUF[0]))
	mov	dptr,#_SETUPBUF
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x60
	cjne	r7,#0x40,00106$
;	src/usb.c:136: usbVendorIsr();
	mov	psw,#0x00
	lcall	_usbVendorIsr
	mov	psw,#0x08
	sjmp	00110$
00106$:
;	src/usb.c:137: else if(IS_CLASS(SETUPBUF[0]))
	mov	dptr,#_SETUPBUF
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x60
	cjne	r7,#0x20,00103$
;	src/usb.c:138: usbClassIsr();
	mov	psw,#0x00
	lcall	_usbClassIsr
	mov	psw,#0x08
	sjmp	00110$
00103$:
;	src/usb.c:140: EP0CS = EP0STALL; //Stall to error
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
00110$:
;	src/usb.c:142: USBIRQ = SUDAVIR;
	mov	dptr,#0xC7AB
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:143: break;
	ljmp	00131$
;	src/usb.c:144: case IRQ_SOF:
00111$:
;	src/usb.c:145: if((ledTimeout>=0) && (!ledTimeout--)) {
	mov	dptr,#_ledTimeout
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00113$
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00223$
	dec	r7
00223$:
	mov	dptr,#_ledTimeout
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jnz	00113$
;	src/usb.c:146: ledSet(LED_RED, false);
	clr	_ledSet_PARM_2
	mov	dpl,#0x01
	mov	psw,#0x00
	lcall	_ledSet
	mov	psw,#0x08
;	src/usb.c:147: ledSet(LED_GREEN, false);
	clr	_ledSet_PARM_2
	mov	dpl,#0x02
	mov	psw,#0x00
	lcall	_ledSet
	mov	psw,#0x08
;	src/usb.c:148: ledTimeout = 0;
	mov	dptr,#_ledTimeout
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00113$:
;	src/usb.c:150: USBIRQ = SOFIR;
	mov	dptr,#0xC7AB
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:151: break;
	ljmp	00131$
;	src/usb.c:152: case IRQ_SUTOK:
00115$:
;	src/usb.c:153: USBIRQ = SUTOKIR;
	mov	dptr,#0xC7AB
	mov	a,#0x04
	movx	@dptr,a
;	src/usb.c:154: break;
	ljmp	00131$
;	src/usb.c:155: case IRQ_SUSPEND:
00116$:
;	src/usb.c:156: USBIRQ = SUSPIR;
	mov	dptr,#0xC7AB
	mov	a,#0x08
	movx	@dptr,a
;	src/usb.c:157: break;
	ljmp	00131$
;	src/usb.c:158: case IRQ_USBRESET:
00117$:
;	src/usb.c:160: state = DEFAULT;
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:163: INBULKVAL = IN0VAL;
	mov	dptr,#0xC7DE
	movx	@dptr,a
;	src/usb.c:164: OUTBULKVAL= OUT0VAL;
	mov	dptr,#0xC7DF
	movx	@dptr,a
;	src/usb.c:167: OUT0BC = BCDUMMY;
	mov	dptr,#0xC7C5
	movx	@dptr,a
;	src/usb.c:170: IN_IEN = IN0IE;
	mov	dptr,#0xC7AC
	movx	@dptr,a
;	src/usb.c:171: OUT_IEN = OUT0IE;
	mov	dptr,#0xC7AD
	movx	@dptr,a
;	src/usb.c:172: USBIEN |= SUDAVIE | SUTOKIE;
	mov	dptr,#0xC7AE
	movx	a,@dptr
	orl	a,#0x05
	mov	r7,a
	movx	@dptr,a
;	src/usb.c:174: USBIRQ = URESIR;
	mov	dptr,#0xC7AB
	mov	a,#0x10
	movx	@dptr,a
;	src/usb.c:175: break;
	ljmp	00131$
;	src/usb.c:176: case IRQ_EP0IN:
00118$:
;	src/usb.c:177: usbBulkInIsr(0);
	mov	dpl,#0x00
	mov	psw,#0x00
	lcall	_usbBulkInIsr
	mov	psw,#0x08
;	src/usb.c:178: IN_IRQ = IN0IR;
	mov	dptr,#0xC7A9
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:179: break;
;	src/usb.c:180: case IRQ_EP0OUT:
	sjmp	00131$
00119$:
;	src/usb.c:181: usbBulkOutIsr(0);
	mov	dpl,#0x00
	mov	psw,#0x00
	lcall	_usbBulkOutIsr
	mov	psw,#0x08
;	src/usb.c:183: OUT_IRQ = OUT0IR;
	mov	dptr,#0xC7AA
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:184: break;
;	src/usb.c:185: case IRQ_EP1IN:
	sjmp	00131$
00120$:
;	src/usb.c:186: IN_IRQ = IN1IR;
	mov	dptr,#0xC7A9
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:187: break;
;	src/usb.c:188: case IRQ_EP1OUT:
	sjmp	00131$
00121$:
;	src/usb.c:189: OUT_IRQ = OUT1IR;
	mov	dptr,#0xC7AA
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:190: break;
;	src/usb.c:191: case IRQ_EP2IN:
	sjmp	00131$
00122$:
;	src/usb.c:192: IN_IRQ = IN2IR;
	mov	dptr,#0xC7A9
	mov	a,#0x04
	movx	@dptr,a
;	src/usb.c:193: break;
;	src/usb.c:194: case IRQ_EP2OUT:
	sjmp	00131$
00123$:
;	src/usb.c:195: OUT_IRQ = OUT2IR;
	mov	dptr,#0xC7AA
	mov	a,#0x04
	movx	@dptr,a
;	src/usb.c:196: break;
;	src/usb.c:197: case IRQ_EP3IN:
	sjmp	00131$
00124$:
;	src/usb.c:198: IN_IRQ = IN3IR;
	mov	dptr,#0xC7A9
	mov	a,#0x08
	movx	@dptr,a
;	src/usb.c:199: break;
;	src/usb.c:200: case IRQ_EP3OUT:
	sjmp	00131$
00125$:
;	src/usb.c:201: OUT_IRQ = OUT3IR;
	mov	dptr,#0xC7AA
	mov	a,#0x08
	movx	@dptr,a
;	src/usb.c:202: break;
;	src/usb.c:203: case IRQ_EP4IN:
	sjmp	00131$
00126$:
;	src/usb.c:204: IN_IRQ = IN4IR;
	mov	dptr,#0xC7A9
	mov	a,#0x10
	movx	@dptr,a
;	src/usb.c:205: break;
;	src/usb.c:206: case IRQ_EP4OUT:
	sjmp	00131$
00127$:
;	src/usb.c:207: OUT_IRQ = OUT4IR;
	mov	dptr,#0xC7AA
	mov	a,#0x10
	movx	@dptr,a
;	src/usb.c:208: break;
;	src/usb.c:209: case IRQ_EP5IN:
	sjmp	00131$
00128$:
;	src/usb.c:210: IN_IRQ = IN5IR;
	mov	dptr,#0xC7A9
	mov	a,#0x20
	movx	@dptr,a
;	src/usb.c:211: break;
;	src/usb.c:212: case IRQ_EP5OUT:
	sjmp	00131$
00129$:
;	src/usb.c:213: OUT_IRQ = OUT5IR;  
	mov	dptr,#0xC7AA
	mov	a,#0x20
	movx	@dptr,a
;	src/usb.c:215: }
00131$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'usbBulkOutIsr'
;------------------------------------------------------------
;ep                        Allocated with name '_usbBulkOutIsr_ep_1_39'
;------------------------------------------------------------
;	src/usb.c:221: void usbBulkOutIsr(char ep) {
;	-----------------------------------------
;	 function usbBulkOutIsr
;	-----------------------------------------
_usbBulkOutIsr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/usb.c:223: return;  
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbBulkInIsr'
;------------------------------------------------------------
;sloc0                     Allocated with name '_usbBulkInIsr_sloc0_1_0'
;ep                        Allocated with name '_usbBulkInIsr_ep_1_41'
;lenToSend                 Allocated with name '_usbBulkInIsr_lenToSend_1_42'
;------------------------------------------------------------
;	src/usb.c:229: void usbBulkInIsr(char ep)
;	-----------------------------------------
;	 function usbBulkInIsr
;	-----------------------------------------
_usbBulkInIsr:
	mov	a,dpl
	mov	dptr,#_usbBulkInIsr_ep_1_41
	movx	@dptr,a
;	src/usb.c:231: unsigned char lenToSend = (inflow[ep].len<64)?inflow[ep].len:64;
	movx	a,@dptr
	mov	r7,a
	clr	F0
	mov	b,#0x07
	mov	a,r7
	jnb	acc.7,00122$
	cpl	F0
	cpl	a
	inc	a
00122$:
	mul	ab
	jnb	F0,00123$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00123$:
	add	a,#_inflow
	mov	r5,a
	mov	a,#(_inflow >> 8)
	addc	a,b
	mov	r6,a
	mov	a,#0x01
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,#0x40
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
	sjmp	00109$
00108$:
	mov	r1,#0x40
	mov	r2,#0x00
00109$:
;	src/usb.c:233: if(inflow[ep].rdy)
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	jnz	00125$
	ljmp	00105$
00125$:
;	src/usb.c:235: usbBulkSend(ep, inflow[ep].buffer+inflow[ep].ptr, lenToSend);
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x03
	add	a,r5
	mov	_usbBulkInIsr_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_usbBulkInIsr_sloc0_1_0 + 1),a
	push	ar5
	push	ar6
	mov	dpl,_usbBulkInIsr_sloc0_1_0
	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,r0
	mov	r0,a
	mov	a,r6
	addc	a,r2
	mov	r2,a
	mov	dptr,#_usbBulkSend_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_usbBulkSend_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar1
	lcall	_usbBulkSend
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	src/usb.c:237: inflow[ep].len-=lenToSend;
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r1
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/usb.c:238: inflow[ep].ptr+=lenToSend; 
	mov	dpl,_usbBulkInIsr_sloc0_1_0
	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	add	a,r3
	mov	r2,a
	mov	a,r5
	addc	a,r4
	mov	r5,a
	mov	dpl,_usbBulkInIsr_sloc0_1_0
	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
	mov	a,r2
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/usb.c:240: if(inflow[ep].len == 0 && lenToSend != 64)
	mov	a,r6
	orl	a,r7
	pop	ar6
	pop	ar5
	jnz	00105$
	cjne	r1,#0x40,00127$
	sjmp	00105$
00127$:
;	src/usb.c:242: inflow[ep].rdy = 0;
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movx	@dptr,a
;	src/usb.c:243: inflow[ep].ptr = 0;
	mov	dpl,_usbBulkInIsr_sloc0_1_0
	mov	dph,(_usbBulkInIsr_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00105$:
;	src/usb.c:248: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbSetupIsr'
;------------------------------------------------------------
;sloc0                     Allocated with name '_usbSetupIsr_sloc0_1_0'
;setup                     Allocated with name '_usbSetupIsr_setup_1_45'
;dLength                   Allocated with name '_usbSetupIsr_dLength_3_47'
;dLength                   Allocated with name '_usbSetupIsr_dLength_3_48'
;dLength                   Allocated with name '_usbSetupIsr_dLength_3_51'
;------------------------------------------------------------
;	src/usb.c:252: void usbSetupIsr()
;	-----------------------------------------
;	 function usbSetupIsr
;	-----------------------------------------
_usbSetupIsr:
;	src/usb.c:254: __xdata struct controllStruct *setup = (__xdata void*)SETUPBUF;
;	src/usb.c:256: if(state >= DEFAULT)
	mov	dptr,#_state
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00375$
00375$:
	jnc	00376$
	ljmp	00128$
00376$:
;	src/usb.c:259: if(SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == DEVICE_DESCRIPTOR)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x06,00377$
	sjmp	00378$
00377$:
	ljmp	00102$
00378$:
	mov	dptr,#(_SETUPBUF + 0x0003)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00102$
;	src/usb.c:261: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
	mov	dptr,#(_SETUPBUF + 0x0007)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_SETUPBUF + 0x0006)
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
;	src/usb.c:263: inflow[0].buffer = usbDeviceDescriptor;
	mov	dptr,#(_inflow + 0x0005)
	mov	a,#_usbDeviceDescriptor
	movx	@dptr,a
	mov	a,#(_usbDeviceDescriptor >> 8)
	inc	dptr
	movx	@dptr,a
;	src/usb.c:264: inflow[0].len = MIN(dLength, inflow[0].buffer[0]);
	mov	ar3,r6
	mov	ar4,r5
	mov	dptr,#(_inflow + 0x0005)
	movx	a,@dptr
	mov	_usbSetupIsr_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_usbSetupIsr_sloc0_1_0 + 1),a
	mov	dptr,#_usbDeviceDescriptor
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r0
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00220$
	mov	dpl,_usbSetupIsr_sloc0_1_0
	mov	dph,(_usbSetupIsr_sloc0_1_0 + 1)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
00220$:
	mov	dptr,#(_inflow + 0x0001)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/usb.c:265: inflow[0].ptr = 0;
	mov	dptr,#(_inflow + 0x0003)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/usb.c:266: inflow[0].rdy = 1;
	mov	dptr,#_inflow
	inc	a
	movx	@dptr,a
;	src/usb.c:269: EP0CS = HSNAK;
	mov	dptr,#0xC7B4
	inc	a
	movx	@dptr,a
;	src/usb.c:270: usbBulkInIsr(0);
	mov	dpl,#0x00
;	src/usb.c:271: return;
	ljmp	_usbBulkInIsr
00102$:
;	src/usb.c:275: if (SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == STRING_DESCRIPTOR)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x06,00382$
	sjmp	00383$
00382$:
	ljmp	00117$
00383$:
	mov	dptr,#(_SETUPBUF + 0x0003)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x03,00384$
	sjmp	00385$
00384$:
	ljmp	00117$
00385$:
;	src/usb.c:277: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
	mov	dptr,#(_SETUPBUF + 0x0007)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_SETUPBUF + 0x0006)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
;	src/usb.c:279: if (SETUPBUF[2]==0)
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	jnz	00114$
;	src/usb.c:280: inflow[0].buffer = usbStringDescriptor0;
	mov	dptr,#(_inflow + 0x0005)
	mov	a,#_usbStringDescriptor0
	movx	@dptr,a
	mov	a,#(_usbStringDescriptor0 >> 8)
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00114$:
;	src/usb.c:281: else if (SETUPBUF[2]==1)
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00111$
;	src/usb.c:282: inflow[0].buffer = usbStringDescriptor1;
	mov	dptr,#(_inflow + 0x0005)
	mov	a,#_usbStringDescriptor1
	movx	@dptr,a
	mov	a,#(_usbStringDescriptor1 >> 8)
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00111$:
;	src/usb.c:283: else if (SETUPBUF[2]==2)
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x02,00108$
;	src/usb.c:284: inflow[0].buffer = usbStringDescriptor2;
	mov	dptr,#(_inflow + 0x0005)
	mov	a,#_usbStringDescriptor2
	movx	@dptr,a
	mov	a,#(_usbStringDescriptor2 >> 8)
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00108$:
;	src/usb.c:285: else if (SETUPBUF[2]==0x1d) {
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x1D,00105$
;	src/usb.c:286: usbSendIdString();
	lcall	_usbSendIdString
;	src/usb.c:288: EP0CS = HSNAK;
	mov	dptr,#0xC7B4
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:289: return;
	ret
00105$:
;	src/usb.c:291: EP0CS = EP0STALL; //Stall to error
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:292: return;
	ret
00115$:
;	src/usb.c:295: inflow[0].len = MIN(dLength, inflow[0].buffer[0]);
	mov	ar3,r6
	mov	ar4,r5
	mov	dptr,#(_inflow + 0x0005)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	clr	c
	mov	a,r3
	subb	a,r0
	mov	a,r4
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00222$
	mov	a,r2
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
00222$:
	mov	dptr,#(_inflow + 0x0001)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/usb.c:296: inflow[0].ptr = 0;
	mov	dptr,#(_inflow + 0x0003)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/usb.c:297: inflow[0].rdy = 1;
	mov	dptr,#_inflow
	inc	a
	movx	@dptr,a
;	src/usb.c:300: EP0CS = HSNAK;
	mov	dptr,#0xC7B4
	inc	a
	movx	@dptr,a
;	src/usb.c:301: usbBulkInIsr(0);
	mov	dpl,#0x00
;	src/usb.c:302: return;
	ljmp	_usbBulkInIsr
00117$:
;	src/usb.c:306: if(SETUPBUF[1] == GET_DESCRIPTOR && SETUPBUF[3] == CONFIGURATION_DESCRIPTOR)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x06,00120$
	mov	dptr,#(_SETUPBUF + 0x0003)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00120$
;	src/usb.c:308: unsigned short dLength = ((unsigned short)SETUPBUF[7]<<8) + ((unsigned short)SETUPBUF[6]<<0);
	mov	dptr,#(_SETUPBUF + 0x0007)
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_SETUPBUF + 0x0006)
	movx	a,@dptr
	mov	r3,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r5,a
;	src/usb.c:310: inflow[0].buffer = usbConfigurationDescriptor;
	mov	dptr,#(_inflow + 0x0005)
	mov	a,#_usbConfigurationDescriptor
	movx	@dptr,a
	mov	a,#(_usbConfigurationDescriptor >> 8)
	inc	dptr
	movx	@dptr,a
;	src/usb.c:311: inflow[0].len = MIN(dLength, sizeof(usbConfigurationDescriptor));
	mov	ar3,r6
	mov	ar4,r5
	clr	c
	mov	a,r3
	subb	a,#0x39
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00224$
	mov	r6,#0x39
	mov	r5,#0x00
00224$:
	mov	dptr,#(_inflow + 0x0001)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	src/usb.c:312: inflow[0].ptr = 0;
	mov	dptr,#(_inflow + 0x0003)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/usb.c:313: inflow[0].rdy = 1;
	mov	dptr,#_inflow
	inc	a
	movx	@dptr,a
;	src/usb.c:316: EP0CS = HSNAK;
	mov	dptr,#0xC7B4
	inc	a
	movx	@dptr,a
;	src/usb.c:317: usbBulkInIsr(0);
	mov	dpl,#0x00
;	src/usb.c:318: return;
	ljmp	_usbBulkInIsr
00120$:
;	src/usb.c:348: if (setup->request == SET_ADDRESS)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x05,00128$
;	src/usb.c:351: if (setup->value == 0)
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00123$
;	src/usb.c:354: state = DEFAULT;
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:357: INBULKVAL = IN0VAL;
	mov	dptr,#0xC7DE
	movx	@dptr,a
;	src/usb.c:358: OUTBULKVAL= OUT0VAL;
	mov	dptr,#0xC7DF
	movx	@dptr,a
;	src/usb.c:361: OUT0BC = BCDUMMY;
	mov	dptr,#0xC7C5
	movx	@dptr,a
;	src/usb.c:364: IN_IEN = IN0IE;
	mov	dptr,#0xC7AC
	movx	@dptr,a
;	src/usb.c:365: OUT_IEN = OUT0IE;
	mov	dptr,#0xC7AD
	movx	@dptr,a
;	src/usb.c:366: USBIEN |= SUDAVIE | SUTOKIE;
	mov	dptr,#0xC7AE
	movx	a,@dptr
	orl	a,#0x05
	mov	r6,a
	movx	@dptr,a
	sjmp	00124$
00123$:
;	src/usb.c:368: state = ADDRESS;  //The device is now addressed
	mov	dptr,#_state
	mov	a,#0x02
	movx	@dptr,a
00124$:
;	src/usb.c:371: EP0CS = HSNAK;
	mov	dptr,#0xC7B4
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:372: return;
	ret
00128$:
;	src/usb.c:376: if (state >= ADDRESS)
	cjne	r7,#0x02,00402$
00402$:
	jnc	00403$
	ljmp	00166$
00403$:
;	src/usb.c:380: if (SETUPBUF[1] == SET_CONFIGURATION)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x09,00133$
;	src/usb.c:382: if (setup->value == 0)
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00130$
;	src/usb.c:384: state = ADDRESS;
	mov	dptr,#_state
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:387: INBULKVAL  &= ~(0x02 | 0x04);
	mov	dptr,#0xC7DE
	movx	a,@dptr
	anl	a,#0xF9
	movx	@dptr,a
;	src/usb.c:388: OUTBULKVAL &= ~(0x02);
	mov	dptr,#0xC7DF
	movx	a,@dptr
	anl	a,#0xFD
	movx	@dptr,a
;	src/usb.c:391: OUT_IEN &= ~0x02;
	mov	dptr,#0xC7AD
	movx	a,@dptr
	anl	a,#0xFD
	movx	@dptr,a
;	src/usb.c:392: IN_IEN  &= ~0x02;
	mov	dptr,#0xC7AC
	movx	a,@dptr
	anl	a,#0xFD
	mov	r6,a
	movx	@dptr,a
	sjmp	00131$
00130$:
;	src/usb.c:394: state = CONFIGURED;
	mov	dptr,#_state
	mov	a,#0x03
	movx	@dptr,a
;	src/usb.c:397: INBULKVAL  |= 0x02 | 0x04;
	mov	dptr,#0xC7DE
	movx	a,@dptr
	orl	a,#0x06
	movx	@dptr,a
;	src/usb.c:398: OUTBULKVAL |= 0x02;
	mov	dptr,#0xC7DF
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	src/usb.c:401: OUT_IEN |= 0x02;
	mov	dptr,#0xC7AD
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	src/usb.c:402: IN_IEN  |= 0x02;
	mov	dptr,#0xC7AC
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	src/usb.c:403: USBIEN  |= SOFIE;
	mov	dptr,#0xC7AE
	movx	a,@dptr
	orl	a,#0x02
	mov	r6,a
	movx	@dptr,a
00131$:
;	src/usb.c:406: EP0CS = HSNAK;
	mov	dptr,#0xC7B4
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:407: return;
	ret
00133$:
;	src/usb.c:410: if (setup->request == GET_CONFIGURATION)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x08,00138$
;	src/usb.c:412: if (state == CONFIGURED)
	cjne	r7,#0x03,00135$
;	src/usb.c:413: IN0BUF[0]=1;
	mov	dptr,#_IN0BUF
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00136$
00135$:
;	src/usb.c:415: IN0BUF[0]=0;
	mov	dptr,#_IN0BUF
	clr	a
	movx	@dptr,a
00136$:
;	src/usb.c:417: IN0BC=1;
	mov	dptr,#0xC7B5
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:419: EP0CS = HSNAK;
	mov	dptr,#0xC7B4
	inc	a
	movx	@dptr,a
;	src/usb.c:420: return;
	ret
00138$:
;	src/usb.c:423: if(SETUPBUF[1] == GET_STATUS)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	jz	00411$
	ljmp	00166$
00411$:
;	src/usb.c:425: if ((SETUPBUF[0] & REQUEST_RMASK) == REQUEST_ENDPOINT)
	mov	dptr,#_SETUPBUF
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x07
	cjne	r6,#0x02,00412$
	sjmp	00413$
00412$:
	ljmp	00161$
00413$:
;	src/usb.c:427: if ((SETUPBUF[4]==0) || (state == CONFIGURED))
	mov	dptr,#(_SETUPBUF + 0x0004)
	movx	a,@dptr
	jz	00157$
	cjne	r7,#0x03,00415$
	sjmp	00416$
00415$:
	ljmp	00166$
00416$:
00157$:
;	src/usb.c:430: if (setup->index == 0x81)
	mov	dptr,#(_SETUPBUF + 0x0004)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x81,00155$
	cjne	r6,#0x00,00155$
;	src/usb.c:431: IN0BUF[0] = IN1CS;
	mov	dptr,#0xC7B6
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_IN0BUF
	movx	@dptr,a
	sjmp	00156$
00155$:
;	src/usb.c:432: else if (setup->index == 0x82)
	cjne	r5,#0x82,00152$
	cjne	r6,#0x00,00152$
;	src/usb.c:433: IN0BUF[0] = IN2CS;
	mov	dptr,#0xC7B8
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_IN0BUF
	movx	@dptr,a
	sjmp	00156$
00152$:
;	src/usb.c:434: else if (setup->index == 0x83)
	cjne	r5,#0x83,00149$
	cjne	r6,#0x00,00149$
;	src/usb.c:435: IN0BUF[0] = IN3CS;
	mov	dptr,#0xC7BA
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_IN0BUF
	movx	@dptr,a
	sjmp	00156$
00149$:
;	src/usb.c:436: else if (setup->index == 0x01)
	cjne	r5,#0x01,00146$
	cjne	r6,#0x00,00146$
;	src/usb.c:437: IN0BUF[0] = OUT1CS;
	mov	dptr,#0xC7C6
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_IN0BUF
	movx	@dptr,a
	sjmp	00156$
00146$:
;	src/usb.c:438: else if (setup->index == 0x02)
	cjne	r5,#0x02,00143$
	cjne	r6,#0x00,00143$
;	src/usb.c:439: IN0BUF[0] = OUT2CS;
	mov	dptr,#0xC7C8
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_IN0BUF
	movx	@dptr,a
	sjmp	00156$
00143$:
;	src/usb.c:440: else if (setup->index == 0x03)
	cjne	r5,#0x03,00140$
	cjne	r6,#0x00,00140$
;	src/usb.c:441: IN0BUF[0] = OUT3CS;
	mov	dptr,#0xC7CA
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_IN0BUF
	movx	@dptr,a
	sjmp	00156$
00140$:
;	src/usb.c:443: IN0BUF[0]=1;
	mov	dptr,#_IN0BUF
	mov	a,#0x01
	movx	@dptr,a
00156$:
;	src/usb.c:447: IN0BUF[1]=0;
	mov	dptr,#(_IN0BUF + 0x0001)
	clr	a
	movx	@dptr,a
;	src/usb.c:448: IN0BC = 2; //2 bytes
	mov	dptr,#0xC7B5
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:450: EP0CS = HSNAK; //HSNACK dis
	mov	dptr,#0xC7B4
	movx	@dptr,a
;	src/usb.c:451: return;
	ret
00161$:
;	src/usb.c:458: IN0BUF[0]=0;
	mov	dptr,#_IN0BUF
	clr	a
	movx	@dptr,a
;	src/usb.c:459: IN0BUF[1]=0;
	mov	dptr,#(_IN0BUF + 0x0001)
	movx	@dptr,a
;	src/usb.c:460: IN0BC = 2; //2 bytes
	mov	dptr,#0xC7B5
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:462: EP0CS = HSNAK; //HSNACK dis
	mov	dptr,#0xC7B4
	movx	@dptr,a
;	src/usb.c:463: return; 
	ret
00166$:
;	src/usb.c:468: if (state >= CONFIGURED)
	cjne	r7,#0x03,00429$
00429$:
	jnc	00430$
	ljmp	00216$
00430$:
;	src/usb.c:470: if(SETUPBUF[1] == GET_INTERFACE)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00168$
;	src/usb.c:473: IN0BUF[0]=0;
	mov	dptr,#_IN0BUF
	clr	a
	movx	@dptr,a
;	src/usb.c:474: IN0BC = 1;
	mov	dptr,#0xC7B5
	inc	a
	movx	@dptr,a
;	src/usb.c:476: EP0CS |= HSNAK; //HSNACK dis
	mov	dptr,#0xC7B4
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	src/usb.c:477: return;    
	ret
00168$:
;	src/usb.c:480: if(setup->request == CLEAR_FEATURE)
	mov	dptr,#(_SETUPBUF + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00433$
	sjmp	00434$
00433$:
	ljmp	00191$
00434$:
;	src/usb.c:482: if (IS_ENDPOINT(setup->requestType) && (setup->value == ENDPOINT_HALT))
	mov	dptr,#_SETUPBUF
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x03
	cjne	r6,#0x02,00191$
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00191$
;	src/usb.c:484: if (setup->index == 0x81)
	mov	dptr,#(_SETUPBUF + 0x0004)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	cjne	r5,#0x81,00185$
	cjne	r6,#0x00,00185$
;	src/usb.c:485: IN1CS = 0;
	mov	dptr,#0xC7B6
	clr	a
	movx	@dptr,a
	sjmp	00186$
00185$:
;	src/usb.c:486: else if (setup->index == 0x82)
	cjne	r5,#0x82,00182$
	cjne	r6,#0x00,00182$
;	src/usb.c:487: IN2CS = 0;
	mov	dptr,#0xC7B8
	clr	a
	movx	@dptr,a
	sjmp	00186$
00182$:
;	src/usb.c:488: else if (setup->index == 0x83)
	cjne	r5,#0x83,00179$
	cjne	r6,#0x00,00179$
;	src/usb.c:489: IN3CS = 0;
	mov	dptr,#0xC7BA
	clr	a
	movx	@dptr,a
	sjmp	00186$
00179$:
;	src/usb.c:490: else if (setup->index == 0x01)
	cjne	r5,#0x01,00176$
	cjne	r6,#0x00,00176$
;	src/usb.c:491: OUT1CS = 0;
	mov	dptr,#0xC7C6
	clr	a
	movx	@dptr,a
	sjmp	00186$
00176$:
;	src/usb.c:492: else if (setup->index == 0x02)
	cjne	r5,#0x02,00173$
	cjne	r6,#0x00,00173$
;	src/usb.c:493: OUT2CS = 0;
	mov	dptr,#0xC7C8
	clr	a
	movx	@dptr,a
	sjmp	00186$
00173$:
;	src/usb.c:494: else if (setup->index == 0x03)
	cjne	r5,#0x03,00170$
	cjne	r6,#0x00,00170$
;	src/usb.c:495: OUT3CS = 0;
	mov	dptr,#0xC7CA
	clr	a
	movx	@dptr,a
	sjmp	00186$
00170$:
;	src/usb.c:497: EP0CS = EP0STALL;
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:498: return;
	ret
00186$:
;	src/usb.c:501: EP0CS |= HSNAK; //HSNACK dis
	mov	dptr,#0xC7B4
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	src/usb.c:502: return; 
	ret
00191$:
;	src/usb.c:506: if(setup->request == SET_FEATURE)
	cjne	r7,#0x03,00450$
	sjmp	00451$
00450$:
	ljmp	00216$
00451$:
;	src/usb.c:508: if (IS_ENDPOINT(setup->requestType) && (setup->value == ENDPOINT_HALT))
	mov	dptr,#_SETUPBUF
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x03
	cjne	r7,#0x02,00216$
	mov	dptr,#(_SETUPBUF + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00216$
;	src/usb.c:510: if (setup->index == 0x81)
	mov	dptr,#(_SETUPBUF + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x81,00208$
	cjne	r7,#0x00,00208$
;	src/usb.c:511: IN1CS = EPSTALL;
	mov	dptr,#0xC7B6
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00209$
00208$:
;	src/usb.c:512: else if (setup->index == 0x82)
	cjne	r6,#0x82,00205$
	cjne	r7,#0x00,00205$
;	src/usb.c:513: IN2CS = EPSTALL;
	mov	dptr,#0xC7B8
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00209$
00205$:
;	src/usb.c:514: else if (setup->index == 0x83)
	cjne	r6,#0x83,00202$
	cjne	r7,#0x00,00202$
;	src/usb.c:515: IN3CS = EPSTALL;
	mov	dptr,#0xC7BA
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00209$
00202$:
;	src/usb.c:516: else if (setup->index == 0x01)
	cjne	r6,#0x01,00199$
	cjne	r7,#0x00,00199$
;	src/usb.c:517: OUT1CS = EPSTALL;
	mov	dptr,#0xC7C6
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00209$
00199$:
;	src/usb.c:518: else if (setup->index == 0x02)
	cjne	r6,#0x02,00196$
	cjne	r7,#0x00,00196$
;	src/usb.c:519: OUT2CS = EPSTALL;
	mov	dptr,#0xC7C8
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00209$
00196$:
;	src/usb.c:520: else if (setup->index == 0x03)
	cjne	r6,#0x03,00193$
	cjne	r7,#0x00,00193$
;	src/usb.c:521: OUT3CS = EPSTALL;
	mov	dptr,#0xC7CA
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00209$
00193$:
;	src/usb.c:523: EP0CS = EP0STALL;
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:524: return;
	ret
00209$:
;	src/usb.c:527: EP0CS |= HSNAK; //HSNACK dis
	mov	dptr,#0xC7B4
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	src/usb.c:528: return; 
;	src/usb.c:532: if(setup->request == SET_FEATURE)
	ret
00216$:
;	src/usb.c:539: EP0CS = EP0STALL; //Stall to error
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbVendorIsr'
;------------------------------------------------------------
;	src/usb.c:542: void usbVendorIsr() 
;	-----------------------------------------
;	 function usbVendorIsr
;	-----------------------------------------
_usbVendorIsr:
;	src/usb.c:544: vendorSetup = true;
	setb	_vendorSetup
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbClassIsr'
;------------------------------------------------------------
;	src/usb.c:547: void usbClassIsr() {
;	-----------------------------------------
;	 function usbClassIsr
;	-----------------------------------------
_usbClassIsr:
;	src/usb.c:553: EP0CS = EP0STALL;
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbBulkSend'
;------------------------------------------------------------
;buff                      Allocated with name '_usbBulkSend_PARM_2'
;len                       Allocated with name '_usbBulkSend_PARM_3'
;ep                        Allocated with name '_usbBulkSend_ep_1_76'
;------------------------------------------------------------
;	src/usb.c:558: void usbBulkSend(unsigned char ep, char* buff, unsigned char len) {
;	-----------------------------------------
;	 function usbBulkSend
;	-----------------------------------------
_usbBulkSend:
;	src/usb.c:561: memcpy(IN0BUF, buff, len);
	mov	dptr,#_usbBulkSend_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_usbBulkSend_PARM_3
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_IN0BUF
	mov	b,#0x00
	push	ar4
	lcall	_memcpy
	pop	ar4
;	src/usb.c:563: IN0BC = len;
	mov	dptr,#0xC7B5
	mov	a,r4
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbSendIdString'
;------------------------------------------------------------
;i                         Allocated with name '_usbSendIdString_i_1_79'
;------------------------------------------------------------
;	src/usb.c:571: void usbSendIdString(void)
;	-----------------------------------------
;	 function usbSendIdString
;	-----------------------------------------
_usbSendIdString:
;	src/usb.c:575: IN0BUF[0] = 22;
	mov	dptr,#_IN0BUF
	mov	a,#0x16
	movx	@dptr,a
;	src/usb.c:576: IN0BUF[1] = STRING_DESCRIPTOR;
	mov	dptr,#(_IN0BUF + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	src/usb.c:578: for (i=0; i<5; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	src/usb.c:580: IN0BUF[2+(i*4)] = bin2hex[(chip_id[i]>>4)&0x0F];
	mov	ar5,r6
	mov	a,r5
	add	a,r5
	add	a,acc
	mov	r5,a
	add	a,#0x02
	add	a,#_IN0BUF
	mov	r3,a
	clr	a
	addc	a,#(_IN0BUF >> 8)
	mov	r4,a
	mov	a,r6
	add	a,#_chip_id
	mov	r1,a
	mov	a,r7
	addc	a,#(_chip_id >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	swap	a
	anl	a,#0x0F
	mov	r0,a
	mov	a,#0x0F
	anl	a,r0
	mov	dptr,#_bin2hex
	movc	a,@a+dptr
	mov	r0,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	src/usb.c:581: IN0BUF[3+(i*4)] = 0;
	mov	a,#0x03
	add	a,r5
	add	a,#_IN0BUF
	mov	dpl,a
	clr	a
	addc	a,#(_IN0BUF >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/usb.c:582: IN0BUF[4+(i*4)] = bin2hex[chip_id[i]&0x0F];
	mov	a,#0x04
	add	a,r5
	add	a,#_IN0BUF
	mov	r3,a
	clr	a
	addc	a,#(_IN0BUF >> 8)
	mov	r4,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	mov	r1,a
	mov	a,#0x0F
	anl	a,r1
	mov	dptr,#_bin2hex
	movc	a,@a+dptr
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	movx	@dptr,a
;	src/usb.c:583: IN0BUF[5+(i*4)] = 0;
	mov	a,#0x05
	add	a,r5
	add	a,#_IN0BUF
	mov	dpl,a
	clr	a
	addc	a,#(_IN0BUF >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	src/usb.c:578: for (i=0; i<5; i++)
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
00113$:
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00114$
	ljmp	00102$
00114$:
;	src/usb.c:586: IN0BC = 22;
	mov	dptr,#0xC7B5
	mov	a,#0x16
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbIsVendorSetup'
;------------------------------------------------------------
;	src/usb.c:591: bool usbIsVendorSetup(void)
;	-----------------------------------------
;	 function usbIsVendorSetup
;	-----------------------------------------
_usbIsVendorSetup:
;	src/usb.c:593: if (vendorSetup)
;	src/usb.c:595: vendorSetup = false;
	jbc	_vendorSetup,00108$
	sjmp	00102$
00108$:
;	src/usb.c:596: return true;
	setb	c
	ret
00102$:
;	src/usb.c:598: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbGetSetupPacket'
;------------------------------------------------------------
;	src/usb.c:605: __xdata struct controllStruct * usbGetSetupPacket(void)
;	-----------------------------------------
;	 function usbGetSetupPacket
;	-----------------------------------------
_usbGetSetupPacket:
;	src/usb.c:607: return (__xdata void*) SETUPBUF;
	mov	dptr,#_SETUPBUF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbAckSetup'
;------------------------------------------------------------
;	src/usb.c:610: void usbAckSetup(void)
;	-----------------------------------------
;	 function usbAckSetup
;	-----------------------------------------
_usbAckSetup:
;	src/usb.c:612: EP0CS = HSNAK; //HSNACK dis
	mov	dptr,#0xC7B4
	mov	a,#0x02
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usbDismissSetup'
;------------------------------------------------------------
;	src/usb.c:615: void usbDismissSetup(void)
;	-----------------------------------------
;	 function usbDismissSetup
;	-----------------------------------------
_usbDismissSetup:
;	src/usb.c:617: EP0CS = EP0STALL; //Stall to error
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_bin2hex:
	.db #0x30	;  48	'0'
	.db #0x31	;  49	'1'
	.db #0x32	;  50	'2'
	.db #0x33	;  51	'3'
	.db #0x34	;  52	'4'
	.db #0x35	;  53	'5'
	.db #0x36	;  54	'6'
	.db #0x37	;  55	'7'
	.db #0x38	;  56	'8'
	.db #0x39	;  57	'9'
	.db #0x41	;  65	'A'
	.db #0x42	;  66	'B'
	.db #0x43	;  67	'C'
	.db #0x44	;  68	'D'
	.db #0x45	;  69	'E'
	.db #0x46	;  70	'F'
	.area XINIT   (CODE)
__xinit__state:
	.db #0x00	; 0
__xinit__radioChannel:
	.db #0xFF	; -1
__xinit__dataRate:
	.db #0xFF	; -1
	.area CABS    (ABS,CODE)
