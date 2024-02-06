
ADJUST_POSITION_HORIZONTAL:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16 ;int direction
	STACK_RESERVE_PARAM_INT16 ;int flags
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_RETURN_INT32
	END_STACK_VARS
	TAY
	MOVE_INT @PARAM02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	TXA
	AND #SURFACE_FLAGS::DEEP_WATER
	CMP #SURFACE_FLAGS::SHALLOW_WATER
	BEQ @IN_SHALLOW_WATER
	CMP #SURFACE_FLAGS::DEEP_WATER
	BEQL @IN_DEEP_WATER
	JMP @NOT_IN_WATER
@IN_SHALLOW_WATER:
	TYA
	ASL
	ASL
	STA @VIRTUAL02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	ASR8_INT @VIRTUAL06
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT_CONSTANT SHALLOW_WATER_SPEED, @VIRTUAL0A
	JSL MULT32
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @LOCAL01, @VIRTUAL06
	PHA
	LDA @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	ASR8_INT @VIRTUAL06
	PULL32 @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @RETURNVAL
	JMP @UNKNOWN14
@IN_DEEP_WATER:
	TYA
	ASL
	ASL
	STA @VIRTUAL02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	ASR8_INT @VIRTUAL06
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT_CONSTANT DEEP_WATER_SPEED, @VIRTUAL0A
	JSL MULT32
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @LOCAL01, @VIRTUAL06
	PHA
	LDA @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	ASR8_INT @VIRTUAL06
	PULL32 @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @RETURNVAL
	JMP @UNKNOWN14
@NOT_IN_WATER:
	LDA UNKNOWN_7E0081
	BEQ @UNKNOWN8
	TYA
	ASL
	ASL
	STA @VIRTUAL02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @RETURNVAL
	JMP @UNKNOWN14
@UNKNOWN8:
	LDA GAME_STATE + game_state::party_status
	AND #$00FF
	CMP #3
	BNEL @UNKNOWN13
	LDA GAME_STATE+game_state::walking_style
	STA @LOCAL00
	BNEL @UNKNOWN13
	TYA
	ASL
	ASL
	STA @VIRTUAL02
	LDA @LOCAL00
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	ASR8_INT @VIRTUAL06
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT_CONSTANT SKIP_SANDWICH_SPEED, @VIRTUAL0A
	JSL MULT32
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @LOCAL01, @VIRTUAL06
	PHA
	LDA @VIRTUAL06
	PHA
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	ASR8_INT @VIRTUAL06
	PULL32 @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @RETURNVAL
	BRA @UNKNOWN14
@UNKNOWN13:
	TYA
	ASL
	ASL
	STA @VIRTUAL02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL0A
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @RETURNVAL
@UNKNOWN14:
	END_C_FUNCTION
