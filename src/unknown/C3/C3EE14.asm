
UNKNOWN_C3EE14: ;$C3EE14
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TXY
	TAX
	STX $0E
	TYA
	LDY #.SIZEOF(item)
	JSL MULT168
	CLC
	ADC #item::flags
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	LDX $0E
	DEX
	AND f:ITEM_USABLE_FLAGS,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN0
	LDA #$0001
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #$0000
@UNKNOWN1:
	PLD
	RTL
