
UNKNOWN_EFE873: ;$EFE873
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL TEST_SRAM_SIZE
	CMP #$0000
	BEQ @GOOD_SRAM_SIZE
	MOVE_INT RAND_A_BACKUP, RAND_A
	SEP #PROC_FLAGS::ACCUM8
	LDA FRAME_COUNTER_BACKUP
	STA FRAME_COUNTER
@GOOD_SRAM_SIZE:
	REP #PROC_FLAGS::ACCUM8
	RTL
