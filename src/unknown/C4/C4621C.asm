
UNKNOWN_C4621C:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	BEQ @UNKNOWN0
	CMP #1
	BEQ @UNKNOWN1
	CMP #2
	BEQ @UNKNOWN2
	BRA @UNKNOWN3
@UNKNOWN0:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	TAY
	STY @LOCAL00
	BRA @UNKNOWN3
@UNKNOWN1:
	TXA
	JSL UNKNOWN_C4605A
	TAY
	STY @LOCAL00
	BRA @UNKNOWN3
@UNKNOWN2:
	TXA
	JSL UNKNOWN_C46028
	TAY
	STY @LOCAL00
@UNKNOWN3:
	LDY @LOCAL00
	TYA
	END_C_FUNCTION
