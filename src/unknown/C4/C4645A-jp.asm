
UNKNOWN_C4645A: ;$C4645A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	CMP #$00FF
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	.A16
	CMP #$FFFF
	BEQ @UNKNOWN3
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_16)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$7FFF
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	ASL
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_16)
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$7FFF
	STA a:.LOWORD(RAM),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BCC @UNKNOWN1
@UNKNOWN3:
	PLD
	RTL
