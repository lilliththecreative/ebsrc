
UNKNOWN_C4FD18:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	BEQ @MONO
	LOADPTR STEREO_MONO_DATA+7, @LOCAL00
	BRA @LOAD
@MONO:
	LOADPTR STEREO_MONO_DATA, @LOCAL00
@LOAD:
	LDX @LOCAL00+2
	LDA @LOCAL00
	JSL LOAD_SPC700_DATA
	END_C_FUNCTION
