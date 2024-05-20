
UNKNOWN_C4939C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT8
	STACK_RESERVE_PARAM_INT16 "PALETTEID" ;int
	STACK_RESERVE_PARAM_INT8
	STACK_RESERVE_PARAM_INT8
	END_STACK_VARS
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	LDA @PARAM02
	STA @VIRTUAL01
	LDA @PARAM01
	STA @LOCAL04
	REP #PROC_FLAGS::ACCUM8
	STZ MAP_PALETTE_ANIMATION_LOADED
	LOADPTR MAP_PALETTE_PTR_TABLE, @VIRTUAL06
	LDA @VIRTUAL00
	AND #$00FF
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	LDA @LOCAL04
	AND #$00FF
	LDY #192
	JSL MULT168
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL02
	LDA @VIRTUAL06+2
	STA @LOCAL02+2
	LDA @VIRTUAL01
	AND #$00FF
	BNE @UNKNOWN0
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #MAP_PALETTES_SIZE
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 2
	JSL MEMCPY16
	JMP @UNKNOWN4
@UNKNOWN0:
	LOADPTR BUFFER + $7800, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #192
	JSL MEMCPY24
	LDA @VIRTUAL01
	AND #$00FF
	JSL UNKNOWN_C49208
	LDA #0
	STA @LOCAL03
	BRA @UNKNOWN2
@UNKNOWN1:
	JSL WAIT_UNTIL_NEXT_FRAME
	JSL UNKNOWN_C492D2
	LDA @LOCAL03
	INC
	STA @LOCAL03
@UNKNOWN2:
	LDA @VIRTUAL01
	AND #$00FF
	STA @VIRTUAL02
	LDA @LOCAL03
	CMP @VIRTUAL02
	BCC @UNKNOWN1
	MOVE_INT @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #MAP_PALETTES_SIZE
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 2
	JSL MEMCPY16
	LOADPTR SPRITE_GROUP_PALETTES, @LOCAL00
	LDX #SPRITE_PALETTES_SIZE
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 8
	JSL MEMCPY16
	JSL UNKNOWN_C00480
	JSL LOAD_SPECIAL_SPRITE_PALETTE
	LDA #24
	JSL UNKNOWN_C0856B
@UNKNOWN3:
	LDA PALETTE_UPLOAD_MODE
	AND #$00FF
	BNE @UNKNOWN3
@UNKNOWN4:
	END_C_FUNCTION
