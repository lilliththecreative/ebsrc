
UNKNOWN_C22351: ;$C22351
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	DEX
	STX $10
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	STA $02
	LDA #$000E
	CLC
	SBC $02
	BRANCHLTEQS @UNKNOWN4
	LDA $0E
	STA $02
	LDX $10
	TXA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::items
	CLC
	ADC $02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	BNE @UNKNOWN0
@UNKNOWN4:
	LDA $0E
	PLD
	RTL
