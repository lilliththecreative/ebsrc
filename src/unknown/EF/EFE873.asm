
UNKNOWN_EFE873:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	JSL TEST_SRAM_SIZE
	CMP #0
	BEQ @GOOD_SRAM_SIZE
	MOVE_INT UNKNOWN_7EB56D, RAND_A
	SEP #PROC_FLAGS::ACCUM8
	LDA UNKNOWN_7EB571
	STA UNKNOWN_7E0002
@GOOD_SRAM_SIZE:
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
