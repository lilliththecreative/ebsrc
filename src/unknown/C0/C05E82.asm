
UNKNOWN_C05E82:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX CURRENT_ENTITY_SLOT
	STX @LOCAL01
	TXA
	JSR UNKNOWN_C05E3B
	STA @LOCAL00
	CMP #$FF00
	BNE @UNKNOWN0
	LDA #0
	BRA @UNKNOWN2
@UNKNOWN0:
	CMP #0
	BEQ @UNKNOWN1
	LDA #0
	BRA @UNKNOWN2
@UNKNOWN1:
	LDX @LOCAL01
	TXA
	ASL
	TAY
	CLC
	ADC #.LOWORD(ENTITY_OBSTACLE_FLAGS)
	STA @VIRTUAL02
	LDA ENTITY_ENEMY_ID,Y
	TAY
	LDA @LOCAL00
	JSL UNKNOWN_C05DE7
	STA @VIRTUAL04
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	ORA @VIRTUAL04
	LDX @VIRTUAL02
	STA __BSS_START__,X
@UNKNOWN2:
	END_C_FUNCTION
