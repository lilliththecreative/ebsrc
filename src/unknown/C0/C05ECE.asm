
UNKNOWN_C05ECE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	STA @LOCAL01
	JSL UNKNOWN_C09EFF
	CMP #0
	BNE @UNKNOWN0
	LDA #0
	BRA @UNKNOWN2
@UNKNOWN0:
	LDY @LOCAL01
	LDX UNKNOWN_7E284A
	LDA UNKNOWN_7E2848
	JSL UNKNOWN_C05F82
	AND #$00D0
	STA @VIRTUAL02
	LDA @LOCAL01
	ASL
	TAX
	STX @LOCAL00
	TXA
	CLC
	ADC #.LOWORD(ENTITY_OBSTACLE_FLAGS)
	STA @VIRTUAL04
	LDA @VIRTUAL02
	LDX @VIRTUAL04
	STA __BSS_START__,X
	LDA @VIRTUAL02
	BEQ @UNKNOWN1
	LDA #0
	BRA @UNKNOWN2
@UNKNOWN1:
	LDX @LOCAL00
	LDY ENTITY_ENEMY_ID,X
	LDX @LOCAL01
	LDA @VIRTUAL02
	JSL UNKNOWN_C05DE7
	PHA
	LDA @VIRTUAL02
	PLY
	STY @VIRTUAL02
	ORA @VIRTUAL02
	LDX @VIRTUAL04
	STA __BSS_START__,X
@UNKNOWN2:
	END_C_FUNCTION
