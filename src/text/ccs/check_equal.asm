
CC_0B: ;$C14558
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $02
	LDA #$0000
	STA $12
	JSR a:.LOWORD(GET_WORKING_MEMORY)
	LDA $06
	CMP $02
	BNE @UNKNOWN0
	LDA #$0001
	STA $12
@UNKNOWN0:
	MOVE_INT1632S $12, $06
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
	PLD
	RTS
