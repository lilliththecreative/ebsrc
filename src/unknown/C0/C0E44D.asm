
UNKNOWN_C0E44D:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA TELEPORT_STYLE
	CMP #TELEPORT_STYLE::PSI_BETTER
	BEQ @UNKNOWN3
	LDA PAD_STATE
	STA @LOCAL00
	AND #PAD::UP
	BEQ @UNKNOWN0
	DEC UNKNOWN_7E9F69
@UNKNOWN0:
	LDA @LOCAL00
	AND #PAD::DOWN
	BEQ @UNKNOWN1
	INC UNKNOWN_7E9F69
@UNKNOWN1:
	LDA @LOCAL00
	AND #PAD::LEFT
	BEQ @UNKNOWN2
	DEC UNKNOWN_7E9F67
@UNKNOWN2:
	LDA @LOCAL00
	AND #PAD::RIGHT
	BEQ @UNKNOWN3
	INC UNKNOWN_7E9F67
@UNKNOWN3:
	END_C_FUNCTION
