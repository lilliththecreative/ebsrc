
UNKNOWN_C1ACA1:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @LOCAL03
	STA @LOCAL02
	PROMOTENEARPTR BATTLE_TARGET_NAME, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL02
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	TXA
	JSL MEMCPY24
	LDX @LOCAL03
	SEP #PROC_FLAGS::ACCUM8
	STZ BATTLE_TARGET_NAME,X
	REP #PROC_FLAGS::ACCUM8
.IF .DEFINED(USA)
	LDA #.LOWORD(-1)
	STA TARGET_ENEMY_ID
.ENDIF
	END_C_FUNCTION
