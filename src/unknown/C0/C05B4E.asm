
UNKNOWN_C05B4E:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL00
	STZ UNKNOWN_7E5DA4
	INC UNKNOWN_7E5DB4
	TXA
	LSR
	ASL
	TAX
	LDA f:UNKNOWN_C200D1,X
	JSR UNKNOWN_C05769
	CMP #0
	BEQ @UNKNOWN0
	LDA #$FF00
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX @LOCAL00
	TXA
@UNKNOWN1:
	END_C_FUNCTION
