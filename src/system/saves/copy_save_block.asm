
COPY_SAVE_BLOCK: ;$EF06A2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	.IF .DEFINED(JPN)
		@PARAM1STORAGE = $1A
		@INTTMP1 = $16
		@FRAMESIZE = 28
	.ELSE
		@PARAM1STORAGE = $1E
		@INTTMP1 = $1A
		@FRAMESIZE = 32
	.ENDIF
	RESERVE_STACK_SPACE @FRAMESIZE
	STA @PARAM1STORAGE
	LOADPTR SAVE_BASE, $06
	LDY #$0500
	LDA @PARAM1STORAGE
	JSL MULT16
	STORE_INT1632 $0A
	CLC
	ADD_INT_ASSIGN $0A, $06
	MOVE_INT $0A, @INTTMP1
	MOVE_INT $06, $0A
	LDY #$0500
	TXA
	JSL MULT16
	STORE_INT1632 $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	.IF .DEFINED(JPN)
		MOVE_INT $16, $0A
		MOVE_INT $0A, $0E
		MOVE_INT $06, $12
	.ELSE
		MOVE_INT $06, $16
		MOVE_INT $1A, $0A
		MOVE_INT $0A, $06
		MOVE_INT $06, $0E
		MOVE_INT $16, $06
		MOVE_INT $06, $12
	.ENDIF
	LDA #$0500
	JSL MEMCPY24
	PLD
	RTS
