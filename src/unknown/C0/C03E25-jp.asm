
UNKNOWN_C03E25:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL01
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	LDX @LOCAL01
	STX @VIRTUAL02
	INC @VIRTUAL02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	CMP @VIRTUAL02
	BNE @UNKNOWN0
	LDA @LOCAL00
	BNE @UNKNOWN2
	LDA #.LOWORD(-1)
	BRA @UNKNOWN3
@UNKNOWN2:
	DEC
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
@UNKNOWN3:
	END_C_FUNCTION
