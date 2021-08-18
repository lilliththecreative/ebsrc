
CC_1D_17: ;$C15E5C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXA
	STA $12
	LDA #$0003
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BVC @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	LDA $12
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1D_17)
	JMP a:.LOWORD(@UNKNOWN7)
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0018
	MOVE_INT832 $12, $06
	JSL ASL32_ENTRY2
	LDA $08
	PHA
	LDA $06
	PHA
	LDY #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+2
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	LDA $08
	PHA
	LDA $06
	PHA
	LDY #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)+1
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	MOVE_INT $06, $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CC_ARGUMENT_STORAGE)
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	PLA
	STA $0A
	PLA
	STA $0C
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	PLA
	STA $0A
	PLA
	STA $0C
	LDA $06
	ORA $0A
	STA $06
	LDA $08
	ORA $0C
	STA $08
	MOVE_INT_CONSTANT NULL, $0A
	LDA $08
	CMP $0C
	BNE @ARG_IS_ZERO
	LDA $06
	CMP $0A
@ARG_IS_ZERO:
	BNE @ARG_IS_NONZERO
	JSR a:.LOWORD(GET_ARGUMENT_MEMORY)
@ARG_IS_NONZERO:
	LDA #$0000
	STA $12
	MOVE_INT $06, $0A
	MOVE_INT .LOWORD(GAME_STATE)+game_state::bank_balance, $06
	LDA $06
	CMP $0A
	LDA $08
	SBC $0C
	BCS @UNKNOWN5
	LDA #$0001
	STA $12
@UNKNOWN5:
	MOVE_INT832 $12, $06
	BPL @UNKNOWN6
	DEC $08
@UNKNOWN6:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(SET_WORKING_MEMORY)
	LDA #NULL
@UNKNOWN7:
	PLD
	RTS
