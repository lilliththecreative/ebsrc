
UNKNOWN_C064E3: ;$C064E3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STA $0E
	MOVE_INT $1E, $06
	LDA $0E
	CMP .LOWORD(CURRENT_QUEUED_INTERACTION_TYPE)
	BEQ @UNKNOWN0
	LDA .LOWORD(NEXT_QUEUED_INTERACTION)
	OPTIMIZED_MULT $04, .SIZEOF(queued_interaction)
	TAX
	LDA $0E
	STA .LOWORD(QUEUED_INTERACTIONS) + queued_interaction::type,X
	LDA .LOWORD(NEXT_QUEUED_INTERACTION)
	OPTIMIZED_MULT $04, .SIZEOF(queued_interaction)
	CLC
	ADC #.LOWORD(QUEUED_INTERACTIONS) + queued_interaction::text_ptr
	TAY
	MOVE_INT_YPTRDEST $06, a:.LOWORD(RAM)
	LDA .LOWORD(NEXT_QUEUED_INTERACTION)
	INC
	AND #$0003
	STA .LOWORD(NEXT_QUEUED_INTERACTION)
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5D9A)
@UNKNOWN0:
	PLD
	RTL
