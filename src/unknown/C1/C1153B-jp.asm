
UNKNOWN_C1153B: ;$C1153B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STX $02
	STA $04
	MOVE_INT $28, $06
	MOVE_INT $24, $0A
	MOVE_INT $0A, $0E
	MOVE_INT $06, $12
	TYX
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C114B1)
	TAX
	LDA $04
	STA a:u89D4_entry::unknown12,X
	LDA #$0002
	STA a:u89D4_entry::unknown0,X
	TXA
	PLD
	RTS
