
UNKNOWN_EFE759:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA DEBUG_MODE_NUMBER
	CMP #2
	BNE @UNKNOWN0
	LDA DEBUG_ENEMIES_ENABLED_FLAG
	BEQ @UNKNOWN0
	LDA #.LOWORD(-1)
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #0
@UNKNOWN1:
	END_C_FUNCTION
