
UNKNOWN_EF0DFA: ;$EF0DFA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LOADPTR TIMED_DELIVERY_TABLE, $06
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),X
	STA $04
	ASL
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$000F
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	STA $14
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAX
	LDA a:.LOWORD(UNKNOWN_30X2_TABLE_3),X
	STA $04
	ASL
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #$000D
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $12
	STA $06
	LDA $14
	STA $08
	MOVE_INT $06, $0E
	LDA #$000A
	JSL UNKNOWN_C064E3
	PLD
	RTL
