
UNKNOWN_C11354:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	TAX
	LDA MENU_OPTIONS,X
	BNE @UNKNOWN1
	LDA @LOCAL00
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN2:
	CMP #NUM_MENU_OPTIONS
	BNE @UNKNOWN0
	LDA #.LOWORD(-1)
@UNKNOWN3:
	END_C_FUNCTION
