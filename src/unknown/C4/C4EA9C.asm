
UNKNOWN_C4EA9C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STX @VIRTUAL04
	STA @VIRTUAL02
	STA @LOCAL00
	LOADPTR UNKNOWN_7F4000, @VIRTUAL06
	TYA
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @VIRTUAL02
	AND #$000F
	PHA
	LDA @VIRTUAL02
	AND #$03F0
	ASL
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	CLC
	ADC UNKNOWN_7EB4D1
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	STA [@VIRTUAL0A]
	CLC
	ADC #16
	LDY #64
	STA [@VIRTUAL06],Y
	INC @VIRTUAL06
	INC @VIRTUAL06
	LDA @LOCAL00
	STA @VIRTUAL02
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL00
@UNKNOWN1:
	LDX @VIRTUAL04
	LDA @VIRTUAL04
	DEC
	STA @VIRTUAL04
	CPX #0
	BNE @UNKNOWN0
	END_C_FUNCTION
