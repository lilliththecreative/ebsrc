
UNKNOWN_C497C0:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STY @LOCAL02
	STA @VIRTUAL02
	PROMOTENEARPTR UNKNOWN_7E4476, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	TXA
	JSL UNKNOWN_C4954C
	LDY @LOCAL02
	TYX
	LDA @VIRTUAL02
	JSL UNKNOWN_C496E7
	LDA @VIRTUAL02
	CMP #1
	BEQ @UNKNOWN2
	LDA #0
	STA @LOCAL01
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UPDATE_MAP_PALETTE_ANIMATION
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA @LOCAL01
	INC
	STA @LOCAL01
@UNKNOWN1:
	CMP @VIRTUAL02
	BCC @UNKNOWN0
@UNKNOWN2:
	JSL UNKNOWN_C49740
	LDA #24
	JSL UNKNOWN_C0856B
	END_C_FUNCTION
