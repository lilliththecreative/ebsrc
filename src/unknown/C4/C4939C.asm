
;A = ID of palette
UNKNOWN_C4939C: ;$C4939C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 29
	SEP #PROC_FLAGS::ACCUM8
	STA $00
	LDA $2C
	STA $01
	LDA $2B
	STA $1C
	REP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E4474)
	LOADPTR MAP_PALETTE_PTR_TABLE, $06
	LDA $00
	AND #$00FF
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	DEREFERENCE_PTR_TO $06, $06
	LDA $1C
	AND #$00FF
	LDY #$00C0
	JSL MULT168
	CLC
	ADC $06
	STA $06
	STA $16
	LDA $08
	STA $18
	LDA $01
	AND #$00FF
	BNE @UNKNOWN0
	MOVE_INT $06, $0E
	LDX #MAP_PALETTES_SIZE
	LDA #.LOWORD(CUR_MAP_PAL)
	JSL MEMCPY16
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN0:
	LOADPTR UNKNOWN_7F7800, $0E
	MOVE_INT $06, $12
	LDA #$00C0
	JSL MEMCPY24
	LDA $01
	AND #$00FF
	JSL UNKNOWN_C49208
	LDA #$0000
	STA $1A
	BRA @UNKNOWN2
@UNKNOWN1:
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL UNKNOWN_C492D2
	LDA $1A
	INC
	STA $1A
@UNKNOWN2:
	LDA $01
	AND #$00FF
	STA $02
	LDA $1A
	CMP $02
	BCC @UNKNOWN1
	MOVE_INT $16, $06
	MOVE_INT $06, $0E
	LDX #MAP_PALETTES_SIZE
	LDA #.LOWORD(CUR_MAP_PAL)
	JSL MEMCPY16
	LOADPTR SPRITE_GROUP_PALETTES, $0E
	LDX #SPRITE_PALETTES_SIZE
	LDA #.LOWORD(CUR_SPRITE_PALS)
	JSL MEMCPY16
	JSL UNKNOWN_C00480
	JSL LOAD_SPECIAL_SPRITE_PALETTE
	LDA #$0018
	JSL UNKNOWN_C0856B
@UNKNOWN3:
	LDA a:.LOWORD(UNKNOWN_7E0030)
	AND #$00FF
	BNE @UNKNOWN3
@UNKNOWN4:
	PLD
	RTL
