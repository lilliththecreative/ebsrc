
UNKNOWN_C47143:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	TXY
	STY @LOCAL04
	STA @VIRTUAL04
	LDA CURRENT_ENTITY_SLOT
	STA @VIRTUAL02
	STA @LOCAL03
	LDA @VIRTUAL02
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR6_TABLE,X
	SEC
	SBC ENTITY_ABS_X_TABLE,X
	STA @LOCAL02
	STA @VIRTUAL02
	LDA #0
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @UNKNOWN2
	LDA @LOCAL02
	EOR #$FFFF
	INC
	STA @LOCAL02
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA @LOCAL02
	STA @LOCAL02
@UNKNOWN3:
	LDA @LOCAL03
	STA @VIRTUAL02
	ASL
	TAX
	LDA @LOCAL02
	CMP ENTITY_SCRIPT_VAR5_TABLE,X
	BCS @UNKNOWN8
	LDA ENTITY_SCRIPT_VAR7_TABLE,X
	SEC
	SBC ENTITY_ABS_Y_TABLE,X
	STA @LOCAL02
	STA @VIRTUAL02
	LDA #0
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @UNKNOWN6
	LDA @LOCAL02
	EOR #$FFFF
	INC
	STA @LOCAL02
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA @LOCAL02
	STA @LOCAL02
@UNKNOWN7:
	LDA @LOCAL03
	STA @VIRTUAL02
	ASL
	TAX
	LDA @LOCAL02
	CMP ENTITY_SCRIPT_VAR5_TABLE,X
	BCS @UNKNOWN8
	LDA #TRUE
	BRA @UNKNOWN11
@UNKNOWN8:
	JSL UNKNOWN_C46ADB
	TAX
	STX @LOCAL02
	TXA
	JSL UNKNOWN_C47044
	LDY @LOCAL04
	BNE @UNKNOWN10
	LDX @LOCAL02
	TXA
	JSL UNKNOWN_C46B0A
	TAX
	STX @LOCAL01
	LDA @VIRTUAL04
	BEQ @UNKNOWN9
	TXA
	JSL UNKNOWN_C46B37
	TAX
	STX @LOCAL01
@UNKNOWN9:
	LDA @VIRTUAL02
	ASL
	CLC
	ADC #.LOWORD(ENTITY_DIRECTIONS)
	TAY
	LDA __BSS_START__,Y
	STA @LOCAL00
	TXA
	STA __BSS_START__,Y
	LDA @LOCAL00
	JSL UNKNOWN_C46AA3
	TAY
	STY @LOCAL04
	LDX @LOCAL01
	TXA
	JSL UNKNOWN_C46AA3
	STA @VIRTUAL04
	LDY @LOCAL04
	TYA
	CMP @VIRTUAL04
	BEQ @UNKNOWN10
	LDA @VIRTUAL02
	JSL UNKNOWN_C0A443_ENTRY2
@UNKNOWN10:
	LDA #FALSE
@UNKNOWN11:
	END_C_FUNCTION
