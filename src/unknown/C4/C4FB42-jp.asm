
UNKNOWN_C4FB42: ;$C4FB42
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7EB547)
	LDA $0E
	CLC
	ADC #$00E2
	PLD
	RTS
