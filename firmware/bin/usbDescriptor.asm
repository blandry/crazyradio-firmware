;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Jul 12 2014) (Linux)
; This file was generated Mon Mar  2 13:45:47 2015
;--------------------------------------------------------
	.module usbDescriptor
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _usbStringDescriptor2
	.globl _usbStringDescriptor1
	.globl _usbStringDescriptor0
	.globl _usbConfigurationDescriptor
	.globl _usbDeviceDescriptor
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
	.area CSEG    (CODE)
	.area CONST   (CODE)
_usbDeviceDescriptor:
	.db #0x12	;  18
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x02	;  2
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x40	;  64
	.db #0x15	;  21
	.db #0x19	;  25
	.db #0x77	;  119	'w'
	.db #0x77	;  119	'w'
	.db #0x53	;  83	'S'
	.db #0x99	; -103
	.db #0x01	;  1
	.db #0x02	;  2
	.db #0x1D	;  29
	.db #0x01	;  1
_usbConfigurationDescriptor:
	.db #0x09	;  9
	.db #0x02	;  2
	.db #0x20	;  32
	.db #0x00	;  0
	.db #0x01	;  1
	.db #0x01	;  1
	.db #0x00	;  0
	.db #0x80	; -128
	.db #0x32	;  50	'2'
	.db #0x09	;  9
	.db #0x04	;  4
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x02	;  2
	.db #0xFF	; -1
	.db #0xFF	; -1
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x07	;  7
	.db #0x05	;  5
	.db #0x81	; -127
	.db #0x02	;  2
	.db #0x40	;  64
	.db #0x00	;  0
	.db #0x06	;  6
	.db #0x07	;  7
	.db #0x05	;  5
	.db #0x01	;  1
	.db #0x02	;  2
	.db #0x40	;  64
	.db #0x00	;  0
	.db #0x06	;  6
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_usbStringDescriptor0:
	.db #0x04	;  4
	.db #0x03	;  3
	.db #0x09	;  9
	.db #0x04	;  4
_usbStringDescriptor1:
	.db #0x12	;  18
	.db #0x03	;  3
	.db #0x42	;  66	'B'
	.db #0x00	;  0
	.db #0x69	;  105	'i'
	.db #0x00	;  0
	.db #0x74	;  116	't'
	.db #0x00	;  0
	.db #0x63	;  99	'c'
	.db #0x00	;  0
	.db #0x72	;  114	'r'
	.db #0x00	;  0
	.db #0x61	;  97	'a'
	.db #0x00	;  0
	.db #0x7A	;  122	'z'
	.db #0x00	;  0
	.db #0x65	;  101	'e'
	.db #0x00	;  0
_usbStringDescriptor2:
	.db #0x2C	;  44
	.db #0x03	;  3
	.db #0x43	;  67	'C'
	.db #0x00	;  0
	.db #0x72	;  114	'r'
	.db #0x00	;  0
	.db #0x61	;  97	'a'
	.db #0x00	;  0
	.db #0x7A	;  122	'z'
	.db #0x00	;  0
	.db #0x79	;  121	'y'
	.db #0x00	;  0
	.db #0x72	;  114	'r'
	.db #0x00	;  0
	.db #0x61	;  97	'a'
	.db #0x00	;  0
	.db #0x64	;  100	'd'
	.db #0x00	;  0
	.db #0x69	;  105	'i'
	.db #0x00	;  0
	.db #0x6F	;  111	'o'
	.db #0x00	;  0
	.db #0x20	;  32
	.db #0x00	;  0
	.db #0x55	;  85	'U'
	.db #0x00	;  0
	.db #0x53	;  83	'S'
	.db #0x00	;  0
	.db #0x42	;  66	'B'
	.db #0x00	;  0
	.db #0x20	;  32
	.db #0x00	;  0
	.db #0x44	;  68	'D'
	.db #0x00	;  0
	.db #0x6F	;  111	'o'
	.db #0x00	;  0
	.db #0x6E	;  110	'n'
	.db #0x00	;  0
	.db #0x67	;  103	'g'
	.db #0x00	;  0
	.db #0x6C	;  108	'l'
	.db #0x00	;  0
	.db #0x65	;  101	'e'
	.db #0x00	;  0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
