
UNKNOWN_C4621C: ;$C4621C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	BEQ @UNKNOWN0
	CMP #$0001
	BEQ @UNKNOWN1
	CMP #$0002
	BEQ @UNKNOWN2
	BRA @UNKNOWN3
@UNKNOWN0:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	TAY
	STY $0E
	BRA @UNKNOWN3
@UNKNOWN1:
	TXA
	JSL UNKNOWN_C4605A
	TAY
	STY $0E
	BRA @UNKNOWN3
@UNKNOWN2:
	TXA
	JSL UNKNOWN_C46028
	TAY
	STY $0E
@UNKNOWN3:
	LDY $0E
	TYA
	PLD
	RTS
