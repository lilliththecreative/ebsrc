
UNKNOWN_C4605A:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	TAX
	STX @LOCAL01
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	ASL
	PHA
	LDX @LOCAL01
	TXA
	PLX
	CMP ENTITY_TPT_ENTRIES,X
	BNE @UNKNOWN1
	LDA @LOCAL00
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN2:
	CMP #MAX_ENTITIES
	BCC @UNKNOWN0
	LDA #.LOWORD(-1)
@UNKNOWN3:
	END_C_FUNCTION
