
UNKNOWN_C0CEBE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STA @LOCAL01
	LDA CURRENT_ENTITY_SLOT
	STA @LOCAL00
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR4_TABLE,X
	STA @VIRTUAL02
	STA @VIRTUAL04
	LDA @LOCAL01
	CMP @VIRTUAL02
	BEQ @UNKNOWN5
	CMP @VIRTUAL02
	BLTEQ @UNKNOWN1
	SEC
	SBC @VIRTUAL02
	CMP #$8000
	BCS @UNKNOWN0
	LDX #0
	BRA @UNKNOWN3
@UNKNOWN0:
	LDX #.LOWORD(-1)
	BRA @UNKNOWN3
@UNKNOWN1:
	STA @VIRTUAL04
	LDA @VIRTUAL02
	SEC
	SBC @VIRTUAL04
	CMP #$8000
	BCS @UNKNOWN2
	LDX #.LOWORD(-1)
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #0
@UNKNOWN3:
	BNE @UNKNOWN4
	LDA @VIRTUAL02
	CLC
	ADC #$0800
	STA @VIRTUAL04
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA @VIRTUAL02
	SEC
	SBC #$0800
	STA @VIRTUAL04
@UNKNOWN5:
	LDA @LOCAL00
	ASL
	TAX
	CLC
	ADC #.LOWORD(ENTITY_MOVEMENT_SPEEDS)
	TAY
	LDA __BSS_START__,Y
	CMP ENTITY_SCRIPT_VAR3_TABLE,X
	BCS @UNKNOWN6
	CLC
	ADC #16
	STA __BSS_START__,Y
@UNKNOWN6:
	LDA @VIRTUAL02
	JSL UNKNOWN_C46B0A
	TAX
	STX @LOCAL01
	LDA @VIRTUAL04
	JSL UNKNOWN_C46B0A
	STA @VIRTUAL02
	LDX @LOCAL01
	TXA
	CMP @VIRTUAL02
	BEQ @UNKNOWN7
	LDA @LOCAL00
	JSL UNKNOWN_C0A443_ENTRY2
@UNKNOWN7:
	LDA @VIRTUAL04
	END_C_FUNCTION
