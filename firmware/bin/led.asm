;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
; This file was generated Mon Jan 19 15:32:16 2015
;--------------------------------------------------------
	.module led
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _ledInit_PARM_2
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
	.globl _ledSet_PARM_2
	.globl _ledInit
	.globl _ledSet
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
_ledSet_PARM_2:
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
_redPin:
	.ds 1
_greenPin:
	.ds 1
_ledInit_PARM_2:
	.ds 1
_ledInit_redpin_1_3:
	.ds 1
_ledSet_led_1_5:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'ledInit'
;------------------------------------------------------------
;greenpin                  Allocated with name '_ledInit_PARM_2'
;redpin                    Allocated with name '_ledInit_redpin_1_3'
;------------------------------------------------------------
;	src/led.c:33: void ledInit(unsigned char redpin, unsigned char greenpin)
;	-----------------------------------------
;	 function ledInit
;	-----------------------------------------
_ledInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_ledInit_redpin_1_3
	movx	@dptr,a
;	src/led.c:35: redPin = redpin;
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_redPin
	movx	@dptr,a
;	src/led.c:36: greenPin = greenpin;
	mov	dptr,#_ledInit_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_greenPin
	movx	@dptr,a
;	src/led.c:39: P0DIR &= ~((1<<redPin) | (1<<greenPin));
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	mov	r7,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00108$
00106$:
	add	a,acc
00108$:
	djnz	b,00106$
	orl	ar7,a
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	_P0DIR,a
;	src/led.c:41: P0 &= ~((1<<redPin) | (1<<greenPin));
	mov	a,r7
	anl	_P0,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ledSet'
;------------------------------------------------------------
;led                       Allocated with name '_ledSet_led_1_5'
;------------------------------------------------------------
;	src/led.c:44: void ledSet(led_t led, bool value)
;	-----------------------------------------
;	 function ledSet
;	-----------------------------------------
_ledSet:
	mov	a,dpl
	mov	dptr,#_ledSet_led_1_5
	movx	@dptr,a
;	src/led.c:46: if(led&LED_RED)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00105$
;	src/led.c:48: if (value)
	jnb	_ledSet_PARM_2,00102$
;	src/led.c:49: P0 |= (1<<redPin);
	mov	dptr,#_redPin
	movx	a,@dptr
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00129$
00127$:
	add	a,acc
00129$:
	djnz	b,00127$
	mov	r6,a
	orl	_P0,a
	sjmp	00105$
00102$:
;	src/led.c:51: P0 &= ~(1<<redPin);
	mov	dptr,#_redPin
	movx	a,@dptr
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00132$
00130$:
	add	a,acc
00132$:
	djnz	b,00130$
	cpl	a
	mov	r6,a
	anl	_P0,a
00105$:
;	src/led.c:54: if (led & LED_GREEN) 
	mov	a,r7
	jnb	acc.1,00111$
;	src/led.c:56: if (value)
	jnb	_ledSet_PARM_2,00107$
;	src/led.c:57: P0 |= (1<<greenPin);
	mov	dptr,#_greenPin
	movx	a,@dptr
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00137$
00135$:
	add	a,acc
00137$:
	djnz	b,00135$
	orl	_P0,a
	ret
00107$:
;	src/led.c:59: P0 &= ~(1<<greenPin);
	mov	dptr,#_greenPin
	movx	a,@dptr
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00140$
00138$:
	add	a,acc
00140$:
	djnz	b,00138$
	cpl	a
	mov	r7,a
	anl	_P0,a
00111$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
