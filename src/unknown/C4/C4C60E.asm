
UNKNOWN_C4C60E:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	LDX #.LOWORD(-1)
	LDA @VIRTUAL02
	JSL UNKNOWN_C496E7
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UPDATE_MAP_PALETTE_ANIMATION
	JSL OAM_CLEAR
	JSL RUN_ACTIONSCRIPT_FRAME
	JSL UPDATE_SCREEN
	JSL WAIT_UNTIL_NEXT_FRAME
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	CMP @VIRTUAL02
	BCC @UNKNOWN0
	JSL UNKNOWN_C49740
	END_C_FUNCTION
