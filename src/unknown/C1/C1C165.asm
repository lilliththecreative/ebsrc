
UNKNOWN_C1C165:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	TAY
	LDX #0
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA __BSS_START__,Y
	AND #$00FF
	BEQ @UNKNOWN2
	AND #$00FF
	DEC
	ASL
	STA @VIRTUAL02
	TXA
	STA @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	ADC @VIRTUAL04
	ASL
	CLC
	ADC @VIRTUAL02
	TAX
	LDA f:UNKNOWN_C3F0B0,X
	BEQ @UNKNOWN1
	LDA #0
	BRA @UNKNOWN4
@UNKNOWN1:
	LDA #1
	BRA @UNKNOWN4
@UNKNOWN2:
	INX
	INY
@UNKNOWN3:
	CPX #7
	BCC @UNKNOWN0
	LDA #1
@UNKNOWN4:
	END_C_FUNCTION
