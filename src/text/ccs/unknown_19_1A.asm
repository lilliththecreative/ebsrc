
CC_19_1A:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	CPX #0
	BEQ @UNKNOWN0
	TXA
	BRA @UNKNOWN1
@UNKNOWN0:
	JSR GET_ARGUMENT_MEMORY
	LDA @VIRTUAL06
@UNKNOWN1:
.IF .DEFINED(JPN)
	DEC
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:game_state::escargo_express_items,X
.ELSE
	TAX
	DEX
	SEP #PROC_FLAGS::ACCUM8
	LDA GAME_STATE+game_state::escargo_express_items,X
.ENDIF
	STORE_INT832 @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSR SET_WORKING_MEMORY
	LDA #NULL
	END_C_FUNCTION
