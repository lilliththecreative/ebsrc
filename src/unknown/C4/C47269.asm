
UNKNOWN_C47269:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_ABS_X_TABLE,X
	LDY ENTITY_ABS_Y_TABLE,X
	CMP ENTITY_SCRIPT_VAR0_TABLE,X
	BCS @UNKNOWN0
	LDA #3
	BRA @UNKNOWN4
@UNKNOWN0:
	CMP ENTITY_SCRIPT_VAR1_TABLE,X
	BLTEQ @UNKNOWN1
	LDA #7
	BRA @UNKNOWN4
@UNKNOWN1:
	TYA
	CMP ENTITY_SCRIPT_VAR2_TABLE,X
	BCS @UNKNOWN2
	LDA #5
	BRA @UNKNOWN4
@UNKNOWN2:
	TYA
	CMP ENTITY_SCRIPT_VAR3_TABLE,X
	BLTEQ @UNKNOWN3
	LDA #1
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA #0
@UNKNOWN4:
	END_C_FUNCTION
