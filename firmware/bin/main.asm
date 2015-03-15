;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
; This file was generated Sat Mar 14 13:10:11 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ledSet
	.globl _ledInit
	.globl _usbDismissSetup
	.globl _usbAckSetup
	.globl _usbGetSetupPacket
	.globl _usbIsVendorSetup
	.globl _usbGetState
	.globl _usbDeinit
	.globl _usbInit
	.globl _radioGetTxRetry
	.globl _radioGetRpd
	.globl _radioSetContCarrier
	.globl _radioSetArc
	.globl _radioSetArd
	.globl _radioSetPower
	.globl _radioSetAddress
	.globl _radioGetDataRate
	.globl _radioSetDataRate
	.globl _radioSetChannel
	.globl _radioSendPacketNoAck
	.globl _radioSendPacket
	.globl _radioDeinit
	.globl _radioInit
	.globl _initId
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
	.globl _rbuffer
	.globl _tbuffer
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
	.globl _handleUsbVendorSetup
	.globl _launchBootloader
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
_handleUsbVendorSetup_sloc0_1_0:
	.ds 2
_handleUsbVendorSetup_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_contCarrier:
	.ds 1
_needAck:
	.ds 1
_udpMode:
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
_tbuffer::
	.ds 33
_rbuffer::
	.ds 33
_scannLength:
	.ds 1
_main_tlen_1_45:
	.ds 1
_main_rlen_1_45:
	.ds 1
_main_ack_1_45:
	.ds 1
_handleUsbVendorSetup_i_3_66:
	.ds 2
_handleUsbVendorSetup_rlen_3_66:
	.ds 1
_handleUsbVendorSetup_inc_3_66:
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_usbWuIsr
	.ds	5
	ljmp	_usbIsr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	src/main.c:62: static bool contCarrier=false;
	clr	_contCarrier
;	src/main.c:63: static bool needAck = true;
	setb	_needAck
;	src/main.c:64: static bool udpMode = false;
	clr	_udpMode
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;status                    Allocated with name '_main_status_1_45'
;leds                      Allocated with name '_main_leds_1_45'
;tlen                      Allocated with name '_main_tlen_1_45'
;rlen                      Allocated with name '_main_rlen_1_45'
;ack                       Allocated with name '_main_ack_1_45'
;------------------------------------------------------------
;	src/main.c:66: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:82: initId();
	lcall	_initId
;	src/main.c:85: ledInit(CR_LED_RED, CR_LED_GREEN);
	mov	dptr,#_ledInit_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_ledInit
;	src/main.c:89: ledSet(LED_GREEN | LED_RED, true);
	setb	_ledSet_PARM_2
	mov	dpl,#0x03
	lcall	_ledSet
;	src/main.c:97: radioInit();
	lcall	_radioInit
;	src/main.c:103: usbInit();
	lcall	_usbInit
;	src/main.c:106: IEN0 |= 0x80;
	orl	_IEN0,#0x80
;	src/main.c:109: while (usbGetState() != ADDRESS);
00106$:
	lcall	_usbGetState
	mov	r7,dpl
	cjne	r7,#0x02,00106$
;	src/main.c:112: ledSet(LED_GREEN | LED_RED, false);
	clr	_ledSet_PARM_2
	mov	dpl,#0x03
	lcall	_ledSet
;	src/main.c:115: while (usbGetState() != CONFIGURED);
00109$:
	lcall	_usbGetState
	mov	r7,dpl
	cjne	r7,#0x03,00109$
;	src/main.c:118: OUT1BC=0xFF;
	mov	dptr,#0xC7C7
	mov	a,#0xFF
	movx	@dptr,a
;	src/main.c:120: while(1)
00132$:
;	src/main.c:124: if (!(OUT1CS&EPBSY) && !contCarrier)
	mov	dptr,#0xC7C6
	movx	a,@dptr
	mov	r7,a
	jnb	acc.1,00189$
	ljmp	00127$
00189$:
	jnb	_contCarrier,00190$
	ljmp	00127$
00190$:
;	src/main.c:128: IN1CS = 0x02;
	mov	dptr,#0xC7B6
	mov	a,#0x02
	movx	@dptr,a
;	src/main.c:131: tlen = OUT1BC;
	mov	dptr,#0xC7C7
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_tlen_1_45
	movx	@dptr,a
;	src/main.c:132: if (tlen>32) tlen=32;
	clr	c
	mov	a,#(0x20 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
	mov	dptr,#_main_tlen_1_45
	mov	a,#0x20
	movx	@dptr,a
00113$:
;	src/main.c:135: memcpy(tbuffer, OUT1BUF, tlen);
	mov	dptr,#_main_tlen_1_45
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_OUT1BUF
	movx	@dptr,a
	mov	a,#(_OUT1BUF >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_tbuffer
	mov	b,#0x00
	push	ar7
	lcall	_memcpy
	pop	ar7
;	src/main.c:136: if (needAck)
	jb	_needAck,00192$
	ljmp	00124$
00192$:
;	src/main.c:138: status = radioSendPacket(tbuffer, tlen, rbuffer, &rlen);
	mov	dptr,#_radioSendPacket_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_radioSendPacket_PARM_3
	mov	a,#_rbuffer
	movx	@dptr,a
	mov	a,#(_rbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_radioSendPacket_PARM_4
	mov	a,#_main_rlen_1_45
	movx	@dptr,a
	mov	a,#(_main_rlen_1_45 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_tbuffer
	lcall	_radioSendPacket
	mov	r6,dpl
;	src/main.c:143: ledTimeout = 2;
	mov	dptr,#_ledTimeout
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:144: ledSet(LED_GREEN | LED_RED, false);
	clr	_ledSet_PARM_2
	mov	dpl,#0x03
	push	ar6
	lcall	_ledSet
	pop	ar6
;	src/main.c:145: if(status)
	mov	a,r6
	jz	00115$
;	src/main.c:146: ledSet(LED_GREEN, true);
	setb	_ledSet_PARM_2
	mov	dpl,#0x02
	push	ar6
	lcall	_ledSet
	pop	ar6
	sjmp	00116$
00115$:
;	src/main.c:148: ledSet(LED_RED, true);
	setb	_ledSet_PARM_2
	mov	dpl,#0x01
	push	ar6
	lcall	_ledSet
	pop	ar6
00116$:
;	src/main.c:150: OUT1BC=BCDUMMY;
	mov	dptr,#0xC7C7
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:154: ack=status?1:0;
	mov	a,r6
	jz	00136$
	mov	r5,#0x01
	sjmp	00137$
00136$:
	mov	r5,#0x00
00137$:
	mov	dptr,#_main_ack_1_45
	mov	a,r5
	movx	@dptr,a
;	src/main.c:155: if (ack)
	mov	a,r5
	jz	00120$
;	src/main.c:157: if (radioGetRpd()) ack |= 0x02;
	push	ar6
	push	ar5
	lcall	_radioGetRpd
	mov	a,dpl
	pop	ar5
	pop	ar6
	jz	00118$
	mov	dptr,#_main_ack_1_45
	mov	a,#0x02
	orl	a,r5
	movx	@dptr,a
00118$:
;	src/main.c:158: ack |= radioGetTxRetry()<<4;
	push	ar6
	lcall	_radioGetTxRetry
	mov	r5,dpl
	pop	ar6
	mov	a,r5
	swap	a
	anl	a,#0xF0
	mov	r5,a
	mov	dptr,#_main_ack_1_45
	movx	a,@dptr
	mov	r4,a
	orl	a,r5
	movx	@dptr,a
00120$:
;	src/main.c:160: IN1BUF[0]=ack;
	mov	dptr,#_main_ack_1_45
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_IN1BUF
	movx	@dptr,a
;	src/main.c:161: if(!(status&BIT_TX_DS)) rlen=0;
	mov	a,r6
	jb	acc.5,00122$
	mov	dptr,#_main_rlen_1_45
	clr	a
	movx	@dptr,a
00122$:
;	src/main.c:162: memcpy(IN1BUF+1, rbuffer, rlen);
	mov	dptr,#_main_rlen_1_45
	movx	a,@dptr
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_rbuffer
	movx	@dptr,a
	mov	a,#(_rbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_IN1BUF + 0x0001)
	mov	b,#0x00
	lcall	_memcpy
;	src/main.c:164: IN1BC = rlen+1;
	mov	dptr,#_main_rlen_1_45
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#0xC7B7
	mov	a,r6
	movx	@dptr,a
	sjmp	00127$
00124$:
;	src/main.c:168: radioSendPacketNoAck(tbuffer, tlen);
	mov	dptr,#_radioSendPacketNoAck_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_tbuffer
	lcall	_radioSendPacketNoAck
;	src/main.c:170: ledTimeout = 2;
	mov	dptr,#_ledTimeout
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:171: ledSet(LED_GREEN | LED_RED, false);
	clr	_ledSet_PARM_2
	mov	dpl,#0x03
	lcall	_ledSet
;	src/main.c:172: ledSet(LED_GREEN, true);
	setb	_ledSet_PARM_2
	mov	dpl,#0x02
	lcall	_ledSet
;	src/main.c:175: OUT1BC=BCDUMMY;
	mov	dptr,#0xC7C7
	mov	a,#0x01
	movx	@dptr,a
00127$:
;	src/main.c:180: if(usbIsVendorSetup())
	lcall	_usbIsVendorSetup
	jc	00198$
	ljmp	00132$
00198$:
;	src/main.c:181: handleUsbVendorSetup();
	lcall	_handleUsbVendorSetup
	ljmp	00132$
;------------------------------------------------------------
;Allocation info for local variables in function 'handleUsbVendorSetup'
;------------------------------------------------------------
;sloc0                     Allocated with name '_handleUsbVendorSetup_sloc0_1_0'
;sloc1                     Allocated with name '_handleUsbVendorSetup_sloc1_1_0'
;setup                     Allocated with name '_handleUsbVendorSetup_setup_1_54'
;i                         Allocated with name '_handleUsbVendorSetup_i_3_66'
;rlen                      Allocated with name '_handleUsbVendorSetup_rlen_3_66'
;status                    Allocated with name '_handleUsbVendorSetup_status_3_66'
;inc                       Allocated with name '_handleUsbVendorSetup_inc_3_66'
;start                     Allocated with name '_handleUsbVendorSetup_start_3_66'
;stop                      Allocated with name '_handleUsbVendorSetup_stop_3_66'
;------------------------------------------------------------
;	src/main.c:186: void handleUsbVendorSetup()
;	-----------------------------------------
;	 function handleUsbVendorSetup
;	-----------------------------------------
_handleUsbVendorSetup:
;	src/main.c:188: __xdata struct controllStruct *setup = usbGetSetupPacket();
	lcall	_usbGetSetupPacket
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:191: if (usbGetState() >= CONFIGURED)
	push	ar7
	push	ar6
	lcall	_usbGetState
	mov	r5,dpl
	pop	ar6
	pop	ar7
	cjne	r5,#0x03,00258$
00258$:
	jnc	00259$
	ljmp	00157$
00259$:
;	src/main.c:193: if(setup->request == LAUNCH_BOOTLOADER)
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0xFF,00154$
;	src/main.c:196: usbAckSetup();
	lcall	_usbAckSetup
;	src/main.c:198: launchBootloader();
;	src/main.c:201: return;
	ljmp	_launchBootloader
00154$:
;	src/main.c:203: else if(setup->request == SET_RADIO_CHANNEL)
	cjne	r5,#0x01,00151$
;	src/main.c:205: radioSetChannel(setup->value);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	lcall	_radioSetChannel
;	src/main.c:207: usbAckSetup();
;	src/main.c:208: return;
	ljmp	_usbAckSetup
00151$:
;	src/main.c:210: else if(setup->request == SET_DATA_RATE)
	cjne	r5,#0x03,00148$
;	src/main.c:212: radioSetDataRate(setup->value);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	lcall	_radioSetDataRate
;	src/main.c:214: usbAckSetup();
;	src/main.c:215: return;
	ljmp	_usbAckSetup
00148$:
;	src/main.c:217: else if(setup->request == SET_RADIO_ADDRESS)
	cjne	r5,#0x02,00145$
;	src/main.c:219: if(setup->length != 5)
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r3,#0x05,00268$
	cjne	r4,#0x00,00268$
	sjmp	00102$
00268$:
;	src/main.c:221: usbDismissSetup();
;	src/main.c:222: return;
	ljmp	_usbDismissSetup
00102$:
;	src/main.c:226: OUT0BC = BCDUMMY;
	mov	dptr,#0xC7C5
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:227: while (EP0CS & OUTBSY);
00103$:
	mov	dptr,#0xC7B4
	movx	a,@dptr
	mov	r4,a
	jb	acc.3,00103$
;	src/main.c:230: radioSetAddress(OUT0BUF);
	mov	dptr,#_OUT0BUF
	lcall	_radioSetAddress
;	src/main.c:233: usbAckSetup();
;	src/main.c:234: return;
	ljmp	_usbAckSetup
00145$:
;	src/main.c:236: else if(setup->request == SET_RADIO_POWER)
	cjne	r5,#0x04,00142$
;	src/main.c:238: radioSetPower(setup->value);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	lcall	_radioSetPower
;	src/main.c:240: usbAckSetup();
;	src/main.c:241: return;
	ljmp	_usbAckSetup
00142$:
;	src/main.c:243: else if(setup->request == SET_RADIO_ARD)
	cjne	r5,#0x05,00139$
;	src/main.c:245: radioSetArd(setup->value);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	lcall	_radioSetArd
;	src/main.c:247: usbAckSetup();
;	src/main.c:248: return;
	ljmp	_usbAckSetup
00139$:
;	src/main.c:250: else if(setup->request == SET_RADIO_ARC)
	cjne	r5,#0x06,00136$
;	src/main.c:252: radioSetArc(setup->value);
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	lcall	_radioSetArc
;	src/main.c:254: usbAckSetup();
;	src/main.c:255: return;
	ljmp	_usbAckSetup
00136$:
;	src/main.c:257: else if(setup->request == SET_CONT_CARRIER)
	cjne	r5,#0x20,00133$
;	src/main.c:259: radioSetContCarrier((setup->value)?true:false);
	mov	a,#0x02
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	orl	a,r1
	add	a,#0xff
	mov	_radioSetContCarrier_PARM_1,c
	push	ar4
	push	ar3
	lcall	_radioSetContCarrier
	pop	ar3
	pop	ar4
;	src/main.c:260: contCarrier = (setup->value)?true:false;
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	orl	a,r1
	add	a,#0xff
	mov	_contCarrier,c
;	src/main.c:262: ledTimeout = -1;
	mov	dptr,#_ledTimeout
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/main.c:263: ledSet(LED_RED, (setup->value)?true:false);
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	orl	a,r3
	add	a,#0xff
	mov	_ledSet_PARM_2,c
	mov	dpl,#0x01
	lcall	_ledSet
;	src/main.c:265: usbAckSetup();
;	src/main.c:266: return;
	ljmp	_usbAckSetup
00133$:
;	src/main.c:268: else if(setup->request == ACK_ENABLE)
	cjne	r5,#0x10,00130$
;	src/main.c:270: needAck = (setup->value)?true:false;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	orl	a,r3
	add	a,#0xff
	mov	_needAck,c
;	src/main.c:272: usbAckSetup();
;	src/main.c:273: return;
	ljmp	_usbAckSetup
00130$:
;	src/main.c:275: else if(setup->request == CHANNEL_SCANN && setup->requestType == 0x40)
	clr	a
	cjne	r5,#0x21,00280$
	inc	a
00280$:
	mov	r5,a
	jnz	00282$
	ljmp	00126$
00282$:
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x40,00283$
	sjmp	00284$
00283$:
	ljmp	00126$
00284$:
;	src/main.c:280: char inc = 1;
	mov	dptr,#_handleUsbVendorSetup_inc_3_66
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:282: scannLength = 0;
	mov	dptr,#_scannLength
	clr	a
	movx	@dptr,a
;	src/main.c:284: if(setup->length < 1)
	mov	a,#0x06
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
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
	subb	a,#0x01
	mov	a,r2
	subb	a,#0x00
	jnc	00107$
;	src/main.c:286: usbDismissSetup();
;	src/main.c:287: return;
	ljmp	_usbDismissSetup
00107$:
;	src/main.c:291: start = setup->value;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
;	src/main.c:292: stop = (setup->index>125)?125:setup->index;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,#0x7D
	subb	a,r0
	clr	a
	subb	a,r2
	jnc	00164$
	mov	_handleUsbVendorSetup_sloc0_1_0,#0x7D
	mov	(_handleUsbVendorSetup_sloc0_1_0 + 1),#0x00
	sjmp	00165$
00164$:
	mov	_handleUsbVendorSetup_sloc0_1_0,r0
	mov	(_handleUsbVendorSetup_sloc0_1_0 + 1),r2
00165$:
	mov	r2,_handleUsbVendorSetup_sloc0_1_0
;	src/main.c:294: if (radioGetDataRate() == DATA_RATE_2M)
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_radioGetDataRate
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r0,#0x02,00109$
;	src/main.c:295: inc = 2; //2M channel are 2MHz wide
	mov	dptr,#_handleUsbVendorSetup_inc_3_66
	mov	a,#0x02
	movx	@dptr,a
00109$:
;	src/main.c:298: OUT0BC = BCDUMMY;
	mov	dptr,#0xC7C5
	mov	a,#0x01
	movx	@dptr,a
;	src/main.c:299: while (EP0CS & OUTBSY);
00110$:
	mov	dptr,#0xC7B4
	movx	a,@dptr
	mov	r0,a
	jb	acc.3,00110$
;	src/main.c:301: memcpy(tbuffer, OUT0BUF, setup->length);
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_OUT0BUF
	movx	@dptr,a
	mov	a,#(_OUT0BUF >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_tbuffer
	mov	b,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_memcpy
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	src/main.c:302: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
	mov	dptr,#_handleUsbVendorSetup_i_3_66
	mov	a,r1
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_handleUsbVendorSetup_inc_3_66
	movx	a,@dptr
	mov	_handleUsbVendorSetup_sloc0_1_0,a
;	src/main.c:336: usbDismissSetup();
	pop	ar2
;	src/main.c:302: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
00160$:
	mov	ar0,r2
	mov	r1,#0x00
	inc	r0
	cjne	r0,#0x00,00290$
	inc	r1
00290$:
	mov	dptr,#_handleUsbVendorSetup_i_3_66
	movx	a,@dptr
	mov	_handleUsbVendorSetup_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_handleUsbVendorSetup_sloc1_1_0 + 1),a
	clr	c
	mov	a,_handleUsbVendorSetup_sloc1_1_0
	subb	a,r0
	mov	a,(_handleUsbVendorSetup_sloc1_1_0 + 1)
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00291$
	ljmp	00118$
00291$:
	mov	dptr,#_scannLength
	movx	a,@dptr
	mov	r1,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xbf
	jc	00292$
	ljmp	00118$
00292$:
;	src/main.c:304: radioSetChannel(i);
	mov	r1,_handleUsbVendorSetup_sloc1_1_0
	mov	dpl,r1
	push	ar4
	push	ar3
	push	ar2
	lcall	_radioSetChannel
	pop	ar2
	pop	ar3
	pop	ar4
;	src/main.c:305: status = radioSendPacket(tbuffer, setup->length, rbuffer, &rlen);
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_radioSendPacket_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	dptr,#_radioSendPacket_PARM_3
	mov	a,#_rbuffer
	movx	@dptr,a
	mov	a,#(_rbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_radioSendPacket_PARM_4
	mov	a,#_handleUsbVendorSetup_rlen_3_66
	movx	@dptr,a
	mov	a,#(_handleUsbVendorSetup_rlen_3_66 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_tbuffer
	push	ar4
	push	ar3
	push	ar2
	lcall	_radioSendPacket
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
;	src/main.c:307: if (status)
	mov	a,r1
	jz	00114$
;	src/main.c:308: IN0BUF[scannLength++] = i;
	mov	dptr,#_scannLength
	movx	a,@dptr
	mov	r0,a
	inc	a
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,#(_IN0BUF >> 8)
	mov	a,_handleUsbVendorSetup_sloc1_1_0
	mov	r0,a
	movx	@dptr,a
00114$:
;	src/main.c:310: ledTimeout = 2;
	mov	dptr,#_ledTimeout
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/main.c:311: ledSet(LED_GREEN | LED_RED, false);
	clr	_ledSet_PARM_2
	mov	dpl,#0x03
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_ledSet
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	src/main.c:312: if(status)
	mov	a,r1
	jz	00116$
;	src/main.c:313: ledSet(LED_GREEN, true);
	setb	_ledSet_PARM_2
	mov	dpl,#0x02
	push	ar4
	push	ar3
	push	ar2
	lcall	_ledSet
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00161$
00116$:
;	src/main.c:315: ledSet(LED_RED, true);
	setb	_ledSet_PARM_2
	mov	dpl,#0x01
	push	ar4
	push	ar3
	push	ar2
	lcall	_ledSet
	pop	ar2
	pop	ar3
	pop	ar4
00161$:
;	src/main.c:302: for (i=start; i<stop+1 && scannLength<MAX_SCANN_LENGTH; i+=inc)
	push	ar2
	mov	a,_handleUsbVendorSetup_sloc0_1_0
	mov	_handleUsbVendorSetup_sloc1_1_0,a
	rlc	a
	subb	a,acc
	mov	(_handleUsbVendorSetup_sloc1_1_0 + 1),a
	mov	dptr,#_handleUsbVendorSetup_i_3_66
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_handleUsbVendorSetup_i_3_66
	mov	a,_handleUsbVendorSetup_sloc1_1_0
	add	a,r1
	movx	@dptr,a
	mov	a,(_handleUsbVendorSetup_sloc1_1_0 + 1)
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	pop	ar2
	ljmp	00160$
00118$:
;	src/main.c:319: usbAckSetup();
;	src/main.c:320: return;
	ljmp	_usbAckSetup
00126$:
;	src/main.c:322: else if(setup->request == CHANNEL_SCANN && setup->requestType == 0xC0)
	mov	a,r5
	jz	00157$
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0xC0,00157$
;	src/main.c:326: IN0BC = (setup->length>scannLength)?scannLength:setup->length;
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_scannLength
	movx	a,@dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00166$
	sjmp	00167$
00166$:
	mov	ar4,r6
	mov	ar5,r7
00167$:
	mov	dptr,#0xC7B5
	mov	a,r4
	movx	@dptr,a
;	src/main.c:327: while (EP0CS & INBSY);
00119$:
	mov	dptr,#0xC7B4
	movx	a,@dptr
	mov	r7,a
	jb	acc.2,00119$
;	src/main.c:330: usbAckSetup();
;	src/main.c:331: return;
	ljmp	_usbAckSetup
00157$:
;	src/main.c:336: usbDismissSetup();
	ljmp	_usbDismissSetup
;------------------------------------------------------------
;Allocation info for local variables in function 'launchBootloader'
;------------------------------------------------------------
;bootloader                Allocated with name '_launchBootloader_bootloader_1_70'
;------------------------------------------------------------
;	src/main.c:341: void launchBootloader()
;	-----------------------------------------
;	 function launchBootloader
;	-----------------------------------------
_launchBootloader:
;	src/main.c:346: IEN0 = 0x00;
	mov	_IEN0,#0x00
;	src/main.c:349: usbDeinit();
	lcall	_usbDeinit
;	src/main.c:352: radioDeinit();
	lcall	_radioDeinit
;	src/main.c:355: bootloader();
	ljmp	0x7800
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
