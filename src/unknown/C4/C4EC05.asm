
UNKNOWN_C4EC05: ;$C4EC05
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STY $04
	STX $02
	CMP #$0007
	BEQ @UNKNOWN0
	LDY $02
	LDX #$0006
	STX $0E
	DEC
	ASL
	TAX
	LDA UNKNOWN_C3FDB5,X
	LDX $0E
	JSL UNKNOWN_C4EA9C
	LDY #$0006
	LDX $04
	LDA $02
	JSL UNKNOWN_C4EB04
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY $02
	LDX #$0006
	LDA #$01C0
	JSL UNKNOWN_C4EA9C
	LDY #$0006
	LDX $04
	LDA $02
	JSL UNKNOWN_C4EB04
@UNKNOWN1:
	PLD
	RTL