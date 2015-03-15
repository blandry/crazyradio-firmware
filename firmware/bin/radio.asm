;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
; This file was generated Sat Mar 14 13:10:11 2015
;--------------------------------------------------------
	.module radio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _radioFlushRx
	.globl _radioFlushTx
	.globl _spiRadioReceive
	.globl _spiRadioSend
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
	.globl _radioSendPacketNoAck_PARM_2
	.globl _radioSendPacket_PARM_4
	.globl _radioSendPacket_PARM_3
	.globl _radioSendPacket_PARM_2
	.globl _radioTxPacketNoAck_PARM_2
	.globl _radioTxPacket_PARM_2
	.globl _radioWriteReg_PARM_2
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
	.globl _radioSetContCarrier_PARM_1
	.globl _radioInit
	.globl _radioDeinit
	.globl _radioNop
	.globl _radioReadReg
	.globl _radioWriteReg
	.globl _radioTxPacket
	.globl _radioTxPacketNoAck
	.globl _radioRxPacket
	.globl _radioSendPacket
	.globl _radioSendPacketNoAck
	.globl _radioUpdateRetr
	.globl _radioUpdateRfSetup
	.globl _radioSetChannel
	.globl _radioSetDataRate
	.globl _radioGetDataRate
	.globl _radioSetPower
	.globl _radioSetArd
	.globl _radioSetArc
	.globl _radioSetContCarrier
	.globl _radioSetAddress
	.globl _radioGetRpd
	.globl _radioGetTxRetry
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
_radioSetContCarrier_PARM_1:
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
_spiRadioSend_dt_1_25:
	.ds 1
_radioReadReg_addr_1_33:
	.ds 1
_radioWriteReg_PARM_2:
	.ds 1
_radioWriteReg_addr_1_35:
	.ds 1
_radioTxPacket_PARM_2:
	.ds 1
_radioTxPacket_payload_1_37:
	.ds 2
_radioTxPacketNoAck_PARM_2:
	.ds 1
_radioTxPacketNoAck_payload_1_40:
	.ds 2
_radioRxPacket_payload_1_43:
	.ds 2
_radioRxPacket_len_1_44:
	.ds 2
_radioSendPacket_PARM_2:
	.ds 1
_radioSendPacket_PARM_3:
	.ds 2
_radioSendPacket_PARM_4:
	.ds 3
_radioSendPacket_payload_1_47:
	.ds 2
_radioSendPacketNoAck_PARM_2:
	.ds 1
_radioSendPacketNoAck_payload_1_50:
	.ds 2
_radioUpdateRetr_ard_1_52:
	.ds 1
_radioUpdateRfSetup_setup_1_54:
	.ds 1
_radioSetChannel_channel_1_55:
	.ds 1
_radioSetDataRate_dr_1_57:
	.ds 1
_radioSetPower_power_1_60:
	.ds 1
_radioSetArd_ard_1_62:
	.ds 1
_radioSetArc_arc_1_64:
	.ds 1
_radioSetAddress_address_1_68:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_radioConf:
	.ds 5
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
;Allocation info for local variables in function 'spiRadioSend'
;------------------------------------------------------------
;dt                        Allocated with name '_spiRadioSend_dt_1_25'
;------------------------------------------------------------
;	src/radio.c:81: char spiRadioSend(char dt)
;	-----------------------------------------
;	 function spiRadioSend
;	-----------------------------------------
_spiRadioSend:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_spiRadioSend_dt_1_25
	movx	@dptr,a
;	src/radio.c:84: RFDAT = dt;
	movx	a,@dptr
	mov	_RFDAT,a
;	src/radio.c:86: RFRDY = 0;
	clr	_RFRDY
;	src/radio.c:89: while(!RFRDY);
00101$:
;	src/radio.c:90: RFRDY=0;
	jbc	_RFRDY,00112$
	sjmp	00101$
00112$:
;	src/radio.c:93: return RFDAT;
	mov	dpl,_RFDAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spiRadioReceive'
;------------------------------------------------------------
;	src/radio.c:96: char spiRadioReceive()
;	-----------------------------------------
;	 function spiRadioReceive
;	-----------------------------------------
_spiRadioReceive:
;	src/radio.c:98: return spiRadioSend(0x00);
	mov	dpl,#0x00
	ljmp	_spiRadioSend
;------------------------------------------------------------
;Allocation info for local variables in function 'radioInit'
;------------------------------------------------------------
;i                         Allocated with name '_radioInit_i_1_28'
;------------------------------------------------------------
;	src/radio.c:101: void radioInit()
;	-----------------------------------------
;	 function radioInit
;	-----------------------------------------
_radioInit:
;	src/radio.c:105: RFCON = 0x06;
	mov	_RFCON,#0x06
;	src/radio.c:106: RFCTL = 0x10;  //SPI enable @8MHz
	mov	_RFCTL,#0x10
;	src/radio.c:109: radioWriteReg(REG_CONFIG, 0x7E);
	mov	dptr,#_radioWriteReg_PARM_2
	mov	a,#0x7E
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_radioWriteReg
;	src/radio.c:111: for(i=0;i<1000;i++);
	mov	r6,#0xE8
	mov	r7,#0x03
00104$:
	dec	r6
	cjne	r6,#0xFF,00114$
	dec	r7
00114$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	src/radio.c:113: radioWriteReg(REG_FEATURE, 0x06);
	mov	dptr,#_radioWriteReg_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_radioWriteReg
;	src/radio.c:114: radioWriteReg(REG_DYNPD, 0x01);
	mov	dptr,#_radioWriteReg_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x1C
	lcall	_radioWriteReg
;	src/radio.c:117: radioUpdateRfSetup();
	lcall	_radioUpdateRfSetup
;	src/radio.c:118: radioUpdateRetr();
	ljmp	_radioUpdateRetr
;------------------------------------------------------------
;Allocation info for local variables in function 'radioDeinit'
;------------------------------------------------------------
;	src/radio.c:121: void radioDeinit()
;	-----------------------------------------
;	 function radioDeinit
;	-----------------------------------------
_radioDeinit:
;	src/radio.c:124: radioWriteReg(REG_CONFIG, 0x00);
	mov	dptr,#_radioWriteReg_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_radioWriteReg
;	src/radio.c:127: RFCON = 0x00;  //Radio unclocked
	mov	_RFCON,#0x00
;	src/radio.c:128: RFCTL = 0x00;  //SPI disable
	mov	_RFCTL,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioNop'
;------------------------------------------------------------
;status                    Allocated with name '_radioNop_status_1_30'
;------------------------------------------------------------
;	src/radio.c:133: char radioNop()
;	-----------------------------------------
;	 function radioNop
;	-----------------------------------------
_radioNop:
;	src/radio.c:137: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:138: status = spiRadioSend(CMD_NOP);
	mov	dpl,#0xFF
	lcall	_spiRadioSend
	mov	r7,dpl
;	src/radio.c:139: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:141: return status;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioFlushTx'
;------------------------------------------------------------
;status                    Allocated with name '_radioFlushTx_status_1_31'
;------------------------------------------------------------
;	src/radio.c:144: char radioFlushTx()
;	-----------------------------------------
;	 function radioFlushTx
;	-----------------------------------------
_radioFlushTx:
;	src/radio.c:148: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:149: status = spiRadioSend(CMD_FLUSH_TX);
	mov	dpl,#0xE1
	lcall	_spiRadioSend
	mov	r7,dpl
;	src/radio.c:150: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:152: return status;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioFlushRx'
;------------------------------------------------------------
;status                    Allocated with name '_radioFlushRx_status_1_32'
;------------------------------------------------------------
;	src/radio.c:155: char radioFlushRx()
;	-----------------------------------------
;	 function radioFlushRx
;	-----------------------------------------
_radioFlushRx:
;	src/radio.c:159: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:160: status = spiRadioSend(CMD_FLUSH_RX);
	mov	dpl,#0xE2
	lcall	_spiRadioSend
	mov	r7,dpl
;	src/radio.c:161: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:163: return status;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioReadReg'
;------------------------------------------------------------
;addr                      Allocated with name '_radioReadReg_addr_1_33'
;value                     Allocated with name '_radioReadReg_value_1_34'
;------------------------------------------------------------
;	src/radio.c:166: char radioReadReg(char addr)
;	-----------------------------------------
;	 function radioReadReg
;	-----------------------------------------
_radioReadReg:
	mov	a,dpl
	mov	dptr,#_radioReadReg_addr_1_33
	movx	@dptr,a
;	src/radio.c:170: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:171: spiRadioSend(CMD_R_REG | (addr&0x1F));
	mov	dptr,#_radioReadReg_addr_1_33
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x1F
	mov	dpl,r7
	lcall	_spiRadioSend
;	src/radio.c:172: value = spiRadioSend(0xA5);
	mov	dpl,#0xA5
	lcall	_spiRadioSend
	mov	r7,dpl
;	src/radio.c:173: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:175: return value;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioWriteReg'
;------------------------------------------------------------
;value                     Allocated with name '_radioWriteReg_PARM_2'
;addr                      Allocated with name '_radioWriteReg_addr_1_35'
;status                    Allocated with name '_radioWriteReg_status_1_36'
;------------------------------------------------------------
;	src/radio.c:178: char radioWriteReg(char addr, char value)
;	-----------------------------------------
;	 function radioWriteReg
;	-----------------------------------------
_radioWriteReg:
	mov	a,dpl
	mov	dptr,#_radioWriteReg_addr_1_35
	movx	@dptr,a
;	src/radio.c:182: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:183: status = spiRadioSend(CMD_W_REG | (addr&0x1F));
	mov	dptr,#_radioWriteReg_addr_1_35
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1F
	anl	a,r7
	orl	a,#0x20
	mov	dpl,a
	lcall	_spiRadioSend
;	src/radio.c:184: spiRadioSend(value);
	mov	dptr,#_radioWriteReg_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_spiRadioSend
	pop	ar7
;	src/radio.c:185: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:187: return value;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioTxPacket'
;------------------------------------------------------------
;len                       Allocated with name '_radioTxPacket_PARM_2'
;payload                   Allocated with name '_radioTxPacket_payload_1_37'
;i                         Allocated with name '_radioTxPacket_i_1_38'
;i                         Allocated with name '_radioTxPacket_i_2_39'
;------------------------------------------------------------
;	src/radio.c:191: void radioTxPacket(__xdata char *payload, char len)
;	-----------------------------------------
;	 function radioTxPacket
;	-----------------------------------------
_radioTxPacket:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_radioTxPacket_payload_1_37
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:196: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:197: spiRadioSend(CMD_W_TX_PAYLOAD);
	mov	dpl,#0xA0
	lcall	_spiRadioSend
;	src/radio.c:198: for(i=0;i<len;i++)
	mov	dptr,#_radioTxPacket_payload_1_37
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_radioTxPacket_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	mov	a,r5
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	src/radio.c:199: spiRadioSend(payload[i]);
	mov	a,r3
	add	a,r6
	mov	dpl,a
	mov	a,r4
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_spiRadioSend
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:198: for(i=0;i<len;i++)
	inc	r3
	cjne	r3,#0x00,00106$
	inc	r4
	sjmp	00106$
00101$:
;	src/radio.c:200: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:203: CE_PULSE();
	setb	_RFCE
	mov	r6,#0x32
	mov	r7,#0x00
00102$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00126$
	dec	r7
00126$:
	mov	a,r4
	orl	a,r5
	jnz	00102$
	clr	_RFCE
;	src/radio.c:205: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioTxPacketNoAck'
;------------------------------------------------------------
;len                       Allocated with name '_radioTxPacketNoAck_PARM_2'
;payload                   Allocated with name '_radioTxPacketNoAck_payload_1_40'
;i                         Allocated with name '_radioTxPacketNoAck_i_1_41'
;i                         Allocated with name '_radioTxPacketNoAck_i_2_42'
;------------------------------------------------------------
;	src/radio.c:209: void radioTxPacketNoAck(__xdata char *payload, char len)
;	-----------------------------------------
;	 function radioTxPacketNoAck
;	-----------------------------------------
_radioTxPacketNoAck:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_radioTxPacketNoAck_payload_1_40
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:214: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:215: spiRadioSend(CMD_W_TX_PAYLOAD_NO_ACK);
	mov	dpl,#0xD0
	lcall	_spiRadioSend
;	src/radio.c:216: for(i=0;i<len;i++)
	mov	dptr,#_radioTxPacketNoAck_payload_1_40
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_radioTxPacketNoAck_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	mov	a,r5
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	src/radio.c:217: spiRadioSend(payload[i]);
	mov	a,r3
	add	a,r6
	mov	dpl,a
	mov	a,r4
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_spiRadioSend
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:216: for(i=0;i<len;i++)
	inc	r3
	cjne	r3,#0x00,00106$
	inc	r4
	sjmp	00106$
00101$:
;	src/radio.c:218: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:221: CE_PULSE();
	setb	_RFCE
	mov	r6,#0x32
	mov	r7,#0x00
00102$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xFF,00126$
	dec	r7
00126$:
	mov	a,r4
	orl	a,r5
	jnz	00102$
	clr	_RFCE
;	src/radio.c:223: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioRxPacket'
;------------------------------------------------------------
;payload                   Allocated with name '_radioRxPacket_payload_1_43'
;len                       Allocated with name '_radioRxPacket_len_1_44'
;i                         Allocated with name '_radioRxPacket_i_1_44'
;------------------------------------------------------------
;	src/radio.c:228: char radioRxPacket(__xdata char *payload)
;	-----------------------------------------
;	 function radioRxPacket
;	-----------------------------------------
_radioRxPacket:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_radioRxPacket_payload_1_43
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:234: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:235: spiRadioSend(CMD_RX_PL_WID);
	mov	dpl,#0x60
	lcall	_spiRadioSend
;	src/radio.c:236: len = spiRadioReceive();
	lcall	_spiRadioReceive
	mov	a,dpl
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dptr,#_radioRxPacket_len_1_44
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:237: RADIO_DIS_CS();  
	setb	_RFCSN
;	src/radio.c:239: if (len>0 && len<33)
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	clr	c
	mov	a,r6
	subb	a,#0x21
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	src/radio.c:242: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:243: spiRadioSend(CMD_R_RX_PAYLOAD);
	mov	dpl,#0x61
	push	ar7
	push	ar6
	lcall	_spiRadioSend
	pop	ar6
	pop	ar7
;	src/radio.c:244: for(i=0;i<len;i++)
	mov	dptr,#_radioRxPacket_payload_1_43
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
;	src/radio.c:245: payload[i] = spiRadioReceive();
	push	ar6
	push	ar7
	mov	a,r2
	add	a,r4
	mov	r0,a
	mov	a,r3
	addc	a,r5
	mov	r1,a
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_spiRadioReceive
	mov	r7,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r0
	mov	dph,r1
	mov	a,r7
	movx	@dptr,a
;	src/radio.c:244: for(i=0;i<len;i++)
	inc	r2
	cjne	r2,#0x00,00127$
	inc	r3
00127$:
	pop	ar7
	pop	ar6
	sjmp	00107$
00101$:
;	src/radio.c:246: RADIO_DIS_CS();
	setb	_RFCSN
	sjmp	00104$
00103$:
;	src/radio.c:248: len=0;
	mov	dptr,#_radioRxPacket_len_1_44
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00104$:
;	src/radio.c:254: return len;
	mov	dptr,#_radioRxPacket_len_1_44
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSendPacket'
;------------------------------------------------------------
;len                       Allocated with name '_radioSendPacket_PARM_2'
;ackPayload                Allocated with name '_radioSendPacket_PARM_3'
;ackLen                    Allocated with name '_radioSendPacket_PARM_4'
;payload                   Allocated with name '_radioSendPacket_payload_1_47'
;status                    Allocated with name '_radioSendPacket_status_1_48'
;------------------------------------------------------------
;	src/radio.c:260: unsigned char radioSendPacket(__xdata char *payload, char len, 
;	-----------------------------------------
;	 function radioSendPacket
;	-----------------------------------------
_radioSendPacket:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_radioSendPacket_payload_1_47
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:266: radioTxPacket(payload, len);
	mov	dptr,#_radioSendPacket_payload_1_47
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_radioSendPacket_PARM_2
	movx	a,@dptr
	mov	dptr,#_radioTxPacket_PARM_2
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_radioTxPacket
;	src/radio.c:268: while(((status=radioNop())&0x70) == 0);
00101$:
	lcall	_radioNop
	mov	r7,dpl
	mov	ar6,r7
	mov	a,r6
	anl	a,#0x70
	jz	00101$
;	src/radio.c:271: radioWriteReg(REG_STATUS, 0x70);
	mov	dptr,#_radioWriteReg_PARM_2
	mov	a,#0x70
	movx	@dptr,a
	mov	dpl,#0x07
	push	ar7
	lcall	_radioWriteReg
	pop	ar7
;	src/radio.c:274: if (status&BIT_MAX_RT) {
	mov	a,r7
	jnb	acc.4,00105$
;	src/radio.c:275: radioFlushTx();
	lcall	_radioFlushTx
;	src/radio.c:276: return 0;
	mov	dpl,#0x00
	ret
00105$:
;	src/radio.c:280: if (status&BIT_RX_DR)
	mov	a,r7
	jnb	acc.6,00107$
;	src/radio.c:281: *ackLen = radioRxPacket(ackPayload);
	mov	dptr,#_radioSendPacket_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_radioSendPacket_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_radioRxPacket
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
	sjmp	00108$
00107$:
;	src/radio.c:283: *ackLen = 0;
	mov	dptr,#_radioSendPacket_PARM_4
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
00108$:
;	src/radio.c:285: radioFlushRx();
	push	ar7
	lcall	_radioFlushRx
	pop	ar7
;	src/radio.c:287: return status&BIT_TX_DS;
	anl	ar7,#0x20
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSendPacketNoAck'
;------------------------------------------------------------
;len                       Allocated with name '_radioSendPacketNoAck_PARM_2'
;payload                   Allocated with name '_radioSendPacketNoAck_payload_1_50'
;------------------------------------------------------------
;	src/radio.c:291: void radioSendPacketNoAck(__xdata char *payload, char len)
;	-----------------------------------------
;	 function radioSendPacketNoAck
;	-----------------------------------------
_radioSendPacketNoAck:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_radioSendPacketNoAck_payload_1_50
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:294: while((radioNop()&0x01) != 0);
00101$:
	lcall	_radioNop
	mov	a,dpl
	mov	r7,a
	jb	acc.0,00101$
;	src/radio.c:297: radioTxPacketNoAck(payload, len);
	mov	dptr,#_radioSendPacketNoAck_payload_1_50
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_radioSendPacketNoAck_PARM_2
	movx	a,@dptr
	mov	dptr,#_radioTxPacketNoAck_PARM_2
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	ljmp	_radioTxPacketNoAck
;------------------------------------------------------------
;Allocation info for local variables in function 'radioUpdateRetr'
;------------------------------------------------------------
;ard                       Allocated with name '_radioUpdateRetr_ard_1_52'
;nbytes                    Allocated with name '_radioUpdateRetr_nbytes_1_52'
;------------------------------------------------------------
;	src/radio.c:303: void radioUpdateRetr()
;	-----------------------------------------
;	 function radioUpdateRetr
;	-----------------------------------------
_radioUpdateRetr:
;	src/radio.c:308: if (radioConf.ard & ARD_PLOAD)
	mov	dptr,#(_radioConf + 0x0003)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00104$
;	src/radio.c:310: nbytes = ((radioConf.ard&0x7F)>32)?32:(radioConf.ard&0x7F);
	mov	ar6,r7
	anl	ar6,#0x7F
	mov	a,r6
	add	a,#0xff - 0x20
	jnc	00110$
	mov	r6,#0x20
	sjmp	00115$
00110$:
	mov	a,#0x7F
	anl	a,r7
	mov	r6,a
;	src/radio.c:311: for (ard=0; ardStep[radioConf.dataRate][ard]<nbytes; ard++)
00115$:
	mov	r5,#0x00
00107$:
	mov	dptr,#_radioConf
	movx	a,@dptr
	mov	r4,a
	clr	F0
	mov	b,#0x06
	mov	a,r4
	jnb	acc.7,00127$
	cpl	F0
	cpl	a
	inc	a
00127$:
	mul	ab
	jnb	F0,00128$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00128$:
	add	a,#_ardStep
	mov	r3,a
	mov	a,#(_ardStep >> 8)
	addc	a,b
	mov	r4,a
	mov	a,r5
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	c
	subb	a,r6
	jnc	00116$
	inc	r5
	sjmp	00107$
00104$:
;	src/radio.c:314: ard = radioConf.ard & 0x0F;
	mov	dptr,#_radioUpdateRetr_ard_1_52
	mov	a,#0x0F
	anl	a,r7
	movx	@dptr,a
;	src/radio.c:316: radioWriteReg(REG_SETUP_RETR, (ard<<4) | (radioConf.arc&0x0F)); 
;	src/radio.c:314: ard = radioConf.ard & 0x0F;
	sjmp	00105$
00116$:
	mov	dptr,#_radioUpdateRetr_ard_1_52
	mov	a,r5
	movx	@dptr,a
00105$:
;	src/radio.c:316: radioWriteReg(REG_SETUP_RETR, (ard<<4) | (radioConf.arc&0x0F)); 
	mov	dptr,#_radioUpdateRetr_ard_1_52
	movx	a,@dptr
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	dptr,#(_radioConf + 0x0002)
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	mov	dptr,#_radioWriteReg_PARM_2
	orl	a,r7
	movx	@dptr,a
	mov	dpl,#0x04
	ljmp	_radioWriteReg
;------------------------------------------------------------
;Allocation info for local variables in function 'radioUpdateRfSetup'
;------------------------------------------------------------
;setup                     Allocated with name '_radioUpdateRfSetup_setup_1_54'
;------------------------------------------------------------
;	src/radio.c:319: void radioUpdateRfSetup()
;	-----------------------------------------
;	 function radioUpdateRfSetup
;	-----------------------------------------
_radioUpdateRfSetup:
;	src/radio.c:323: setup = setupDataRate[radioConf.dataRate];
	mov	dptr,#_radioConf
	movx	a,@dptr
	mov	dptr,#_setupDataRate
	movc	a,@a+dptr
	mov	r7,a
;	src/radio.c:324: setup |= radioConf.power<<1;
	mov	dptr,#(_radioConf + 0x0001)
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	orl	ar7,a
	mov	dptr,#_radioUpdateRfSetup_setup_1_54
	mov	a,r7
	movx	@dptr,a
;	src/radio.c:326: if (radioConf.contCarrier)
	mov	dptr,#(_radioConf + 0x0004)
	movx	a,@dptr
	jz	00102$
;	src/radio.c:327: setup |= 0x90;
	mov	dptr,#_radioUpdateRfSetup_setup_1_54
	mov	a,#0x90
	orl	a,r7
	movx	@dptr,a
00102$:
;	src/radio.c:329: radioWriteReg(REG_RF_SETUP, setup);
	mov	dptr,#_radioUpdateRfSetup_setup_1_54
	movx	a,@dptr
	mov	dptr,#_radioWriteReg_PARM_2
	movx	@dptr,a
	mov	dpl,#0x06
	ljmp	_radioWriteReg
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSetChannel'
;------------------------------------------------------------
;channel                   Allocated with name '_radioSetChannel_channel_1_55'
;------------------------------------------------------------
;	src/radio.c:333: void radioSetChannel(char channel)
;	-----------------------------------------
;	 function radioSetChannel
;	-----------------------------------------
_radioSetChannel:
	mov	a,dpl
	mov	dptr,#_radioSetChannel_channel_1_55
	movx	@dptr,a
;	src/radio.c:336: if(channel<0 || channel>125)
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00101$
	clr	c
	mov	a,#(0x7D ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
00101$:
;	src/radio.c:337: return;
	ret
00102$:
;	src/radio.c:340: RADIO_DIS_CE();
	clr	_RFCE
;	src/radio.c:341: radioWriteReg(REG_RF_CH, channel);
	mov	dptr,#_radioWriteReg_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_radioWriteReg
;	src/radio.c:344: if(radioConf.contCarrier)
	mov	dptr,#(_radioConf + 0x0004)
	movx	a,@dptr
	jz	00106$
;	src/radio.c:345: RADIO_EN_CE();
	setb	_RFCE
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSetDataRate'
;------------------------------------------------------------
;dr                        Allocated with name '_radioSetDataRate_dr_1_57'
;------------------------------------------------------------
;	src/radio.c:349: void radioSetDataRate(unsigned char dr)
;	-----------------------------------------
;	 function radioSetDataRate
;	-----------------------------------------
_radioSetDataRate:
	mov	a,dpl
	mov	dptr,#_radioSetDataRate_dr_1_57
	movx	@dptr,a
;	src/radio.c:351: if (dr>=3)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00108$
00108$:
	jc	00102$
;	src/radio.c:352: return;
	ret
00102$:
;	src/radio.c:354: radioConf.dataRate = dr;
	mov	dptr,#_radioConf
	mov	a,r7
	movx	@dptr,a
;	src/radio.c:356: radioUpdateRfSetup();
	lcall	_radioUpdateRfSetup
;	src/radio.c:357: radioUpdateRetr();
	ljmp	_radioUpdateRetr
;------------------------------------------------------------
;Allocation info for local variables in function 'radioGetDataRate'
;------------------------------------------------------------
;	src/radio.c:360: char radioGetDataRate()
;	-----------------------------------------
;	 function radioGetDataRate
;	-----------------------------------------
_radioGetDataRate:
;	src/radio.c:362: return radioConf.dataRate;
	mov	dptr,#_radioConf
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSetPower'
;------------------------------------------------------------
;power                     Allocated with name '_radioSetPower_power_1_60'
;------------------------------------------------------------
;	src/radio.c:365: void radioSetPower(char power)
;	-----------------------------------------
;	 function radioSetPower
;	-----------------------------------------
_radioSetPower:
	mov	a,dpl
	mov	dptr,#_radioSetPower_power_1_60
	movx	@dptr,a
;	src/radio.c:367: radioConf.power = power&0x03;
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x03
	mov	dptr,#(_radioConf + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	src/radio.c:369: radioUpdateRfSetup();
	ljmp	_radioUpdateRfSetup
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSetArd'
;------------------------------------------------------------
;ard                       Allocated with name '_radioSetArd_ard_1_62'
;------------------------------------------------------------
;	src/radio.c:372: void radioSetArd(char ard)
;	-----------------------------------------
;	 function radioSetArd
;	-----------------------------------------
_radioSetArd:
	mov	a,dpl
	mov	dptr,#_radioSetArd_ard_1_62
	movx	@dptr,a
;	src/radio.c:374: radioConf.ard = ard;
	movx	a,@dptr
	mov	dptr,#(_radioConf + 0x0003)
	movx	@dptr,a
;	src/radio.c:376: radioUpdateRetr(); 
	ljmp	_radioUpdateRetr
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSetArc'
;------------------------------------------------------------
;arc                       Allocated with name '_radioSetArc_arc_1_64'
;------------------------------------------------------------
;	src/radio.c:379: void radioSetArc(char arc)
;	-----------------------------------------
;	 function radioSetArc
;	-----------------------------------------
_radioSetArc:
	mov	a,dpl
	mov	dptr,#_radioSetArc_arc_1_64
	movx	@dptr,a
;	src/radio.c:381: radioConf.arc = arc;
	movx	a,@dptr
	mov	dptr,#(_radioConf + 0x0002)
	movx	@dptr,a
;	src/radio.c:383: radioUpdateRetr();
	ljmp	_radioUpdateRetr
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSetContCarrier'
;------------------------------------------------------------
;	src/radio.c:386: void radioSetContCarrier(bool contCarrier)
;	-----------------------------------------
;	 function radioSetContCarrier
;	-----------------------------------------
_radioSetContCarrier:
;	src/radio.c:388: radioConf.contCarrier = contCarrier?1:0;
	jnb	_radioSetContCarrier_PARM_1,00105$
	mov	r7,#0x01
	sjmp	00106$
00105$:
	mov	r7,#0x00
00106$:
	mov	dptr,#(_radioConf + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	src/radio.c:390: RADIO_DIS_CE();
	clr	_RFCE
;	src/radio.c:392: radioUpdateRfSetup();
	lcall	_radioUpdateRfSetup
;	src/radio.c:394: if(contCarrier)
	jnb	_radioSetContCarrier_PARM_1,00103$
;	src/radio.c:395: RADIO_EN_CE();
	setb	_RFCE
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioSetAddress'
;------------------------------------------------------------
;address                   Allocated with name '_radioSetAddress_address_1_68'
;i                         Allocated with name '_radioSetAddress_i_1_69'
;------------------------------------------------------------
;	src/radio.c:399: void radioSetAddress(__xdata char* address)
;	-----------------------------------------
;	 function radioSetAddress
;	-----------------------------------------
_radioSetAddress:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_radioSetAddress_address_1_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:403: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:404: spiRadioSend(CMD_W_REG | REG_TX_ADDR);
	mov	dpl,#0x30
	lcall	_spiRadioSend
;	src/radio.c:405: for(i=0; i<5; i++)
	mov	dptr,#_radioSetAddress_address_1_68
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
;	src/radio.c:406: spiRadioSend(address[i]);
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spiRadioSend
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:405: for(i=0; i<5; i++)
	inc	r4
	cjne	r4,#0x00,00123$
	inc	r5
00123$:
	clr	c
	mov	a,r4
	subb	a,#0x05
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
;	src/radio.c:407: RADIO_DIS_CS();
	setb	_RFCSN
;	src/radio.c:409: RADIO_EN_CS();
	clr	_RFCSN
;	src/radio.c:410: spiRadioSend(CMD_W_REG | REG_RX_ADDR_P0);
	mov	dpl,#0x2A
	push	ar7
	push	ar6
	lcall	_spiRadioSend
	pop	ar6
	pop	ar7
;	src/radio.c:411: for(i=0; i<5; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
;	src/radio.c:412: spiRadioSend(address[i]);
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spiRadioSend
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:411: for(i=0; i<5; i++)
	inc	r4
	cjne	r4,#0x00,00125$
	inc	r5
00125$:
	clr	c
	mov	a,r4
	subb	a,#0x05
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	src/radio.c:413: RADIO_DIS_CS();
	setb	_RFCSN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioGetRpd'
;------------------------------------------------------------
;	src/radio.c:417: uint8_t radioGetRpd(void)
;	-----------------------------------------
;	 function radioGetRpd
;	-----------------------------------------
_radioGetRpd:
;	src/radio.c:419: return radioReadReg(REG_RPD);
	mov	dpl,#0x09
	ljmp	_radioReadReg
;------------------------------------------------------------
;Allocation info for local variables in function 'radioGetTxRetry'
;------------------------------------------------------------
;	src/radio.c:423: uint8_t radioGetTxRetry(void)
;	-----------------------------------------
;	 function radioGetTxRetry
;	-----------------------------------------
_radioGetTxRetry:
;	src/radio.c:425: return radioReadReg(REG_OBSERVE_TX)&0x0F;
	mov	dpl,#0x08
	lcall	_radioReadReg
	mov	a,dpl
	anl	a,#0x0F
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_ardStep:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x0F	; 15
	.db #0x20	; 32
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x05	; 5
	.db #0x20	; 32
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_setupDataRate:
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x08	; 8
	.area XINIT   (CODE)
__xinit__radioConf:
	.db #0x02	;  2
	.db #0x03	;  3
	.db #0x03	;  3
	.db #0xA0	; -96
	.db #0x00	;  0
	.area CABS    (ABS,CODE)
