
CC_1F_63: ;$C16DE8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TXA
	STA $12
	LDA #$0003
	CLC
	SBC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	BRANCHLTEQS @UNKNOWN2
	LDA $12
	SEP #PROC_FLAGS::ACCUM8
	LDX .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	STA .LOWORD(CC_ARGUMENT_STORAGE),X
	REP #PROC_FLAGS::ACCUM8
	INC .LOWORD(CC_ARGUMENT_GATHERING_LOOP_COUNTER)
	LDA #.LOWORD(CC_1F_63)
	JMP @UNKNOWN3
@UNKNOWN2:
	SEP #PROC_FLAGS::INDEX8
	LDY #$0018
	MOVE_INT1632 $12, $06
	JSL ASL32_ENTRY2
	PUSH32 $06
	LDY #$0010
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 .LOWORD(CC_ARGUMENT_STORAGE)+2, $06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	PUSH32 $06
	LDY #$0008
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 .LOWORD(CC_ARGUMENT_STORAGE)+1, $06
	REP #PROC_FLAGS::ACCUM8
	JSL ASL32_ENTRY2
	MOVE_INT $06, $0A
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT832 .LOWORD(CC_ARGUMENT_STORAGE), $06
	REP #PROC_FLAGS::ACCUM8
	OR_INT_ASSIGN $06, $0A
	PULL32 $0A
	OR_INT_ASSIGN $06, $0A
	PULL32 $0A
	OR_INT_ASSIGN $06, $0A
	LDA #$00FF
	JSL UNKNOWN_C46594
	MOVE_INT $06, $0E
	LDA #$000A
	JSL UNKNOWN_C064E3
	LDA #NULL
@UNKNOWN3:
	PLD
	RTS
