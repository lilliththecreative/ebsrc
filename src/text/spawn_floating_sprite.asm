
SPAWN_FLOATING_SPRITE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_PARAM_INT16 ;int
	END_STACK_VARS
	TXY
	STA @VIRTUAL02
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN6
	LDA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN6
	LDA ENTITY_SIZES,X
	STA @LOCAL03
	LOADPTR FLOATING_SPRITE_TABLE, @VIRTUAL06
	TYA
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(floating_sprite)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA ENTITY_ABS_X_TABLE,X
	STA UNKNOWN_7EB3F8
	LDA ENTITY_ABS_Y_TABLE,X
	STA UNKNOWN_7EB3FA
	LDA @LOCAL03
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDY #floating_sprite::unknown2
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	JSR UNKNOWN_C4B329
	SEP #PROC_FLAGS::ACCUM8
	LDY #floating_sprite::unknown3
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	AND #$0080
	BEQ @UNKNOWN2
	LDX #$FF00
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #0
@UNKNOWN3:
	STX @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	LDY #floating_sprite::unknown3
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	ORA @VIRTUAL04
	CLC
	ADC UNKNOWN_7EB3F8
	STA UNKNOWN_7EB3F8
	SEP #PROC_FLAGS::ACCUM8
	LDY #floating_sprite::unknown4
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	AND #$0080
	BEQ @UNKNOWN4
	LDX #$FF00
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX #0
@UNKNOWN5:
	STX @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	LDY #floating_sprite::unknown4
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	ORA @VIRTUAL04
	CLC
	ADC UNKNOWN_7EB3FA
	STA @LOCAL02
	STA UNKNOWN_7EB3FA
	LDA UNKNOWN_7EB3F8
	STA @LOCAL00
	LDA @LOCAL02
	STA @LOCAL01
	LDY #.LOWORD(-1)
	LDX #EVENT_SCRIPT::EVENT_785
	LDA [@VIRTUAL06] ;floating_sprite::sprite
	JSL CREATE_ENTITY
	ASL
	TAX
	STX @LOCAL02
	LDA @VIRTUAL02
	ORA #$C000
	STA ENTITY_DRAW_PRIORITY,X
	LDA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_SURFACE_FLAGS,X
	LDX @LOCAL02
	STA ENTITY_SURFACE_FLAGS,X
@UNKNOWN6:
	END_C_FUNCTION
