
UNKNOWN_C0C83B: ;$C0C83B
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 30
	STA $1C
	LDY .LOWORD(UNKNOWN_7E1A42)
	STY $1A
	TYA
	ASL
	TAX
	LDA $1C
	STA .LOWORD(UNKNOWN_7E1A86),X
	AND #$0001
	BEQ @UNKNOWN1
	MOVE_INT_CONSTANT $B505, $0A
	LDA .LOWORD(UNKNOWN_30X2_TABLE_35),X
	STA $06
	STZ $08
	JSL MULT32
	LDA $07
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT816 $09, $08
	BPL @UNKNOWN0
	DEC $09
@UNKNOWN0:
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	BRA @UNKNOWN3
@UNKNOWN1:
	MOVE_INT_CONSTANT $10000, $0A
	LDA .LOWORD(UNKNOWN_30X2_TABLE_35),X
	STA $06
	STZ $08
	JSL MULT32
	LDA $07
	STA $06
	SEP #PROC_FLAGS::ACCUM8
	MOVE_INT816 $09, $08
	BPL @UNKNOWN2
	DEC $09
@UNKNOWN2:
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
@UNKNOWN3:
	LDA $1C
	BEQ @UNKNOWN10
	CMP #$0001
	BEQ @UNKNOWN11
	CMP #$0002
	BNE @UNKNOWN4
	JMP @UNKNOWN12
@UNKNOWN4:
	CMP #$0003
	BNE @UNKNOWN5
	JMP @UNKNOWN13
@UNKNOWN5:
	CMP #$0004
	BNE @UNKNOWN6
	JMP @UNKNOWN14
@UNKNOWN6:
	CMP #$0005
	BNE @UNKNOWN7
	JMP @UNKNOWN15
@UNKNOWN7:
	CMP #$0006
	BNE @UNKNOWN8
	JMP @UNKNOWN16
@UNKNOWN8:
	CMP #$0007
	BNE @UNKNOWN9
	JMP @UNKNOWN17
@UNKNOWN9:
	JMP @UNKNOWN18
@UNKNOWN10:
	MOVE_INT_CONSTANT NULL, $12
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN11:
	MOVE_INT $0E, $06
	MOVE_INT $06, $12
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN12:
	MOVE_INT $0E, $06
	MOVE_INT $06, $12
	MOVE_INT_CONSTANT NULL, $16
	JMP @UNKNOWN18
@UNKNOWN13:
	MOVE_INT $0E, $06
	MOVE_INT $06, $12
	MOVE_INT $0E, $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN14:
	MOVE_INT_CONSTANT NULL, $12
	MOVE_INT $0E, $06
	MOVE_INT $06, $16
	JMP @UNKNOWN18
@UNKNOWN15:
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $12
	MOVE_INT $0E, $06
	MOVE_INT $06, $16
	BRA @UNKNOWN18
@UNKNOWN16:
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $12
	MOVE_INT_CONSTANT NULL, $16
	BRA @UNKNOWN18
@UNKNOWN17:
	MOVE_INT $0E, $06
	SEC
	NEGATE_INT_ASSIGN $06
	MOVE_INT $06, $12
	MOVE_INT $06, $16
@UNKNOWN18:
	LDY $1A
	TYA
	ASL
	TAX
	LDA $14
	STA .LOWORD(ENTITY_DELTA_X_TABLE),X
	LDA $12
	STA .LOWORD(ENTITY_DELTA_X_FRACTION_TABLE),X
	LDA $18
	STA .LOWORD(ENTITY_DELTA_Y_TABLE),X
	LDA $16
	STA .LOWORD(ENTITY_DELTA_Y_FRACTION_TABLE),X
	PLD
	RTL
