
UNKNOWN_C20F58: ;$C20F58
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	STACK_RESERVE_VARS
	STACK_RESERVE_RETURN_INT32
	END_STACK_VARS
	LDA HALF_HPPP_METER_SPEED
	AND #$00FF
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::INDEX8
<<<<<<< HEAD
	LDY #1
	MOVE_INT HP_METER_SPEED, @VIRTUAL06
=======
	LDY #$0001
	MOVE_INT UNKNOWN_7E9627, @VIRTUAL06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL ASR32
	MOVE_INT @VIRTUAL06, @RETURNVAL
	BRA @UNKNOWN1
@UNKNOWN0:
	MOVE_INT HP_METER_SPEED, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @RETURNVAL
@UNKNOWN1:
	REP #PROC_FLAGS::INDEX8
	PLD
	RTS
