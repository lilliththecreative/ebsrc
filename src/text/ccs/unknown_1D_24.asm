
CC_1D_24:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @LOCAL02
	LDY #.LOWORD(GAME_STATE) + game_state::unknownC4
	STY @LOCAL01
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDX @LOCAL02
	CPX #2
	BNE @UNKNOWN0
	MOVE_INT_CONSTANT NULL, @VIRTUAL06
	LDY @LOCAL01
	MOVE_INT_YPTRDEST @VIRTUAL06, __BSS_START__
@UNKNOWN0:
	LDA #NULL
	END_C_FUNCTION
