
UNKNOWN_C4605A: ;$C4605A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	STX $10
	LDA #$0000
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	ASL
	PHA
	LDX $10
	TXA
	PLX
	CMP ENTITY_NPC_IDS,X
	BNE @UNKNOWN1
	LDA $0E
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	CMP #$001E
	BCC @UNKNOWN0
	LDA #$FFFF
@UNKNOWN3:
	PLD
	RTL
