
PROCESS_ITEM_TRANSFORMATIONS:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA BATTLE_SWIRL_FLAG
	CLC
	ADC BATTLE_SWIRL_COUNTDOWN
	BNEL @UNKNOWN8
	LDA UNKNOWN_7EB4B6
	BNEL @UNKNOWN8
	LDA GAME_STATE + game_state::unknownB0
	CMP #2
	BEQL @UNKNOWN8
	SEP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7E9F2C
	DEC
	STA UNKNOWN_7E9F2C
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNEL @UNKNOWN8
	SEP #PROC_FLAGS::ACCUM8
	LDA #60
	STA UNKNOWN_7E9F2C
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(LOADED_TIMED_ITEM_TRANSFORMATIONS)
	STA @VIRTUAL02
	LDA #1
	STA @LOCAL03
	LDA #0
	STA @VIRTUAL04
	STA @LOCAL02
	JMP @UNKNOWN7
@UNKNOWN4:
	LDA @LOCAL03
	BEQ @UNKNOWN5
	LDY @VIRTUAL02
	INY
	STY @LOCAL01
	LDA __BSS_START__,Y
	AND #$00FF
	BEQ @UNKNOWN5
	LDX @VIRTUAL02
	INX
	INX
	STX @LOCAL00
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN5
	LDA #2
	JSL RAND_MOD
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL00
	LDY @LOCAL01
	LDA __BSS_START__,Y
	CLC
	ADC @VIRTUAL00
	DEC
	LDX @LOCAL00
	STA __BSS_START__,X
	LDX @VIRTUAL02
	REP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	AND #$00FF
	JSL PLAY_SOUND
	STZ @LOCAL03
@UNKNOWN5:
	LDX @VIRTUAL02
	INX
	INX
	INX
	LDA __BSS_START__,X
	AND #$00FF
	BEQ @UNKNOWN6
	SEP #PROC_FLAGS::ACCUM8
	DEC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN6
	LOADPTR TIMED_ITEM_TRANSFORMATION_TABLE, @VIRTUAL06
	LDA @VIRTUAL04
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(timed_item_transformation)
	TAY
	STY @LOCAL00
	TYA
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	TAX
	LDA #$00FF
	JSL TAKE_ITEM_FROM_CHARACTER
	STA @LOCAL01
	LDY @LOCAL00
	TYA
	INC
	INC
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	TAX
	LDA @LOCAL01
	JSL GIVE_ITEM_TO_CHARACTER
@UNKNOWN6:
	INC @VIRTUAL02
	INC @VIRTUAL02
	INC @VIRTUAL02
	INC @VIRTUAL02
	LDA @LOCAL02
	STA @VIRTUAL04
	INC @VIRTUAL04
	LDA @VIRTUAL04
	STA @LOCAL02
@UNKNOWN7:
	LDA @VIRTUAL04
	CMP #4
	BCCL @UNKNOWN4
@UNKNOWN8:
	END_C_FUNCTION
