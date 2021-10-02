
INFLICT_STATUS_NONBATTLE: ;$C458FE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STY $02
	PHA
	LDA $02
	STA $12
	PLA
	TXY
	STY $10
	TAX
	STX $0E
	CPY #$0008
	BNE @UNKNOWN0
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	DEC
	STA .LOWORD(GAME_STATE) + game_state::party_status
	REP #PROC_FLAGS::ACCUM8
	TXA
	BRA @RETURN
@UNKNOWN0:
	TXA
	JSL UNKNOWN_C2239D
	CMP #$0000
	BEQ @FAILURE
	LDY $10
	TYA
	DEC
	STA $02
	LDX $0E
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::afflictions
	CLC
	ADC $02
	TAX
	LDA $12
	STA $02
	SEP #PROC_FLAGS::ACCUM8
	DEC
	STA a:.LOWORD(RAM),X
	JSL UNKNOWN_C3EE4D
	LDX $0E
	TXA
	BRA @RETURN
@FAILURE:
	.A16
	LDA #$0000
@RETURN:
	PLD
	RTL
