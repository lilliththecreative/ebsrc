
<<<<<<< HEAD
LOCK_INPUT:
	BEGIN_C_FUNCTION
	END_STACK_VARS
	LDA #1
	STA TEXT_PROMPT_WAITING_FOR_INPUT
	END_C_FUNCTION
=======
LOCK_INPUT: ;$C100C7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$0001
	STA INPUT_LOCK_FLAG
	RTS
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
