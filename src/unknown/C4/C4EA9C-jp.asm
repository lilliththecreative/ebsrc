
UNKNOWN_C4EA9C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @VIRTUAL02
	STX @LOCAL02
	STA @LOCAL01
	MOVE_INT @PARAM02, @VIRTUAL0A
	LOADPTR UNKNOWN_7F4000, @VIRTUAL06
	LDA @LOCAL01
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @LOCAL00
	AND #$00FF
	STA @LOCAL01
	AND #$1C00
	STA @VIRTUAL04
	LDA @LOCAL01
	AND #$000F
	STA @VIRTUAL02
	LDA @LOCAL01
	AND #$03F0
	ASL
	CLC
	ADC @VIRTUAL02
	CLC
	ADC @VIRTUAL04
	STA @LOCAL01
	CLC
	ADC UNKNOWN_7EB4D1
	STA [@VIRTUAL06]
	LDA @LOCAL01
	CLC
	ADC UNKNOWN_7EB4D1
	CLC
	ADC #16
	LDY #64
	STA [@VIRTUAL06],Y
	INC @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL0A
	INX
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL0A]
	STA @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN2
	LDA @LOCAL02
	STA @VIRTUAL02
	TXA
	CMP @VIRTUAL02
	BCC @UNKNOWN0
@UNKNOWN2:
	TXA
	END_C_FUNCTION
