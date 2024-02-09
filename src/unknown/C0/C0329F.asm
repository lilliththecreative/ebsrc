
UNKNOWN_C0329F: ;$C0329F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	STX $10
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	STZ PARTY_CHARACTERS + char_struct::afflictions,X
=======
	STZ CHAR_STRUCT+char_struct::afflictions,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	STA $02
	LDX $10
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::afflictions
=======
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0007
	BCC @UNKNOWN0
	PLD
	RTL
