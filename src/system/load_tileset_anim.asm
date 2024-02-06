
LOAD_TILESET_ANIM:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	.IF .DEFINED(JPN)
		@PTRBASE := @VIRTUAL06
		@PTRFINAL := @VIRTUAL0A
	.ELSE
		@PTRBASE := @VIRTUAL0A
		@PTRFINAL := @VIRTUAL06
	.ENDIF
	STZ LOADED_ANIMATED_TILE_COUNT
	LDA UNKNOWN_7E4372
	OPTIMIZED_MULT @VIRTUAL04, 4
	STA @LOCAL04
	LOADPTR MAP_DATA_WEIRD_TILE_ANIMATION_PTR_TABLE, @VIRTUAL0A
	LDA @LOCAL04
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	DEREFERENCE_PTR_TO @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL03
	LDA [@VIRTUAL06]
	AND #$00FF
	BEQL @UNKNOWN3
	LOADPTR MAP_DATA_TILE_ANIMATION_PTR_TABLE, @PTRBASE
	LDA @LOCAL04
	CLC
	ADC @PTRBASE
	STA @PTRBASE
	DEREFERENCE_PTR_TO @PTRBASE, @PTRFINAL
	MOVE_INT @PTRFINAL, @LOCAL00
	LOADPTR UNKNOWN_7EC000, @LOCAL01
	JSL DECOMP
	MOVE_INT @LOCAL03, @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	STA LOADED_ANIMATED_TILE_COUNT
	STA @VIRTUAL02
	INC @VIRTUAL06
	LDY #0
	STY @LOCAL02
	BRA @UNKNOWN2
@UNKNOWN1:
	TYA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(overworld_tileset_anim)
	CLC
	ADC #.LOWORD(OVERWORLD_TILESET_ANIM)
	TAX
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDA [@VIRTUAL0A] ;overworld_tileset_anim_entry::unknown0
	AND #$00FF
	STA a:overworld_tileset_anim::unknown0,X
	SEP #PROC_FLAGS::ACCUM8
	LDY #overworld_tileset_anim_entry::frame_delay
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA a:overworld_tileset_anim::frames_until_update,X
	STA a:overworld_tileset_anim::frame_delay,X
	LDY #overworld_tileset_anim_entry::copy_size
	LDA [@VIRTUAL06],Y
	STA a:overworld_tileset_anim::copy_size,X
	LDY #overworld_tileset_anim_entry::source_offset
	LDA [@VIRTUAL06],Y
	STA a:overworld_tileset_anim::source_offset2,X
	STA a:overworld_tileset_anim::source_offset,X
	LDY #overworld_tileset_anim_entry::destination_address
	LDA [@VIRTUAL06],Y
	STA a:overworld_tileset_anim::destination_address,X
	STZ a:overworld_tileset_anim::destination_address2,X
	LDA #.SIZEOF(overworld_tileset_anim_entry)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDY @LOCAL02
	INY
	STY @LOCAL02
@UNKNOWN2:
	TYA
	CMP @VIRTUAL02
	BCC @UNKNOWN1
@UNKNOWN3:
	END_C_FUNCTION
