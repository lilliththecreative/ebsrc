
CHECK_ALL_BLOCKS_SIGNATURE: ;$EF0683
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDX #$0000
	STX $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	JSR CHECK_BLOCK_SIGNATURE
	LDX $0E
	INX
	STX $0E
@UNKNOWN1:
	CPX #SAVE_COUNT*SAVE_COPY_COUNT
	BCC @UNKNOWN0
	PLD
	RTS
