
UNKNOWN_C0E6FE: ;$C0E6FE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA .LOWORD(UNKNOWN_7E1A42)
	ASL
	TAY
	STY $10
	LDA .LOWORD(UNKNOWN_30X2_TABLE_4),Y
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAX
	STX .LOWORD(UNKNOWN_7E4DC6)
	LDA a:.LOWORD(RAM)+60,X
	STA $04
	STA $0E
	LDA $04
	STA $04
	ASL
	ADC $04
	ASL
	ASL
	CLC
	ADC #.LOWORD(PLAYER_POSITION_BUFFER)
	TAX
	LDY $10
	LDA .LOWORD(UNKNOWN_30X2_TABLE_3),Y
	STA $02
	LDA a:.LOWORD(RAM),X
	STA .LOWORD(ENTITY_ABS_X_TABLE),Y
	LDA a:.LOWORD(RAM)+2,X
	STA .LOWORD(ENTITY_ABS_Y_TABLE),Y
	LDA a:.LOWORD(RAM)+8,X
	STA .LOWORD(ENTITY_DIRECTIONS),Y
	LDA a:.LOWORD(RAM)+4,X
	STA .LOWORD(UNKNOWN_30X2_TABLE_37),Y
	LDY .LOWORD(UNKNOWN_7E1A42)
	LDA a:.LOWORD(RAM)+6,X
	TAX
	LDA $02
	JSL UNKNOWN_C07A56
	LDA $0E
	STA $04
	LDX $04
	LDA $02
	JSR a:.LOWORD(UNKNOWN_C0E214)
	AND #$00FF
	LDX .LOWORD(UNKNOWN_7E4DC6)
	STA a:.LOWORD(RAM)+60,X
	PLD
	RTL
