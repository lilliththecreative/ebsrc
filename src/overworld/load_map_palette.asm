
LOAD_MAP_PAL: ;$C007B6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 32
	STA $1E
	LDY #$0240
	STY $1C
	LOADPTR MAP_PALETTE_PTR_TABLE, $06
	LDA $1E
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	TXA
	LDY #$00C0
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL02
	LDA @VIRTUAL06+2
	STA @LOCAL02+2
	LDA PHOTOGRAPH_MAP_LOADING_MODE
=======
	ADC $06
	STA $06
	STA $16
	LDA $08
	STA $18
	LDA UNKNOWN_7EB4EF
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BNE @UNKNOWN4
@UNKNOWN0:
	MOVE_INT $16, $06
	MOVE_INT $06, $0E
	LDX #$00C0
	LDY $1C
	TYA
	JSL MEMCPY16
	LDY $1C
	LDA __BSS_START__,Y
	BEQL @UNKNOWN5
	AND #$7FFF
	JSL GET_EVENT_FLAG
	STA $1A
	LDX #$0000
	LDY $1C
	LDA __BSS_START__,Y
	CMP #$8000
	BLTEQ @UNKNOWN2
	LDX #$0001
@UNKNOWN2:
	STX $02
	LDA $1A
	CMP $02
	BNEL @UNKNOWN5
	MOVE_INT f:MAP_PALETTE_PTR_TABLE, $06
	MOVE_INT $06, $16
	LDA __BSS_START__+32,Y
	STA $16
	BRA @UNKNOWN0
@UNKNOWN4:
<<<<<<< HEAD
	LOADPTR BUFFER, @VIRTUAL06
	LOADPTR COMPRESSED_PALETTE_UNKNOWN, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
=======
	LOADPTR UNKNOWN_7F0000, $06
	LOADPTR COMPRESSED_PALETTE_UNKNOWN, $0E
	MOVE_INT $06, $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL DECOMP
	MOVE_INT $06, $0A
	LDA CUR_PHOTO_DISPLAY
	LDY #.SIZEOF(photographer_config_entry)
	JSL MULT168
	CLC
	ADC #photographer_config_entry::credits_map_palettes_offset
	TAX
	LDA f:PHOTOGRAPHER_CFG_TABLE,X
	STORE_INT1632 $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $0E
	LDX #$00C0
	LDY $1C
	TYA
	JSL MEMCPY16
@UNKNOWN5:
	PLD
	RTL
