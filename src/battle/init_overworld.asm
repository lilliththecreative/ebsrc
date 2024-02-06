
INIT_BATTLE_OVERWORLD:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA BATTLE_DEBUG
	BEQL @UNKNOWN8
	LDA DEBUG
	BEQ @UNKNOWN1
	JSL UNKNOWN_EFE708
	CMP #$FFFF
	BEQ @UNKNOWN5
@UNKNOWN1:
	JSL INSTANT_WIN_CHECK
	CMP #0
	BEQ @UNKNOWN2
	JSL INSTANT_WIN_HANDLER
	STZ BATTLE_DEBUG
	BRA @UNKNOWN5
@UNKNOWN2:
	JSL INIT_BATTLE_COMMON
	TAX
	STX @LOCAL01
	JSL UNKNOWN_C07B52
	STZ OVERWORLD_STATUS_SUPPRESSION
	LDA TELEPORT_DESTINATION
	BNE @UNKNOWN4
	LDX @LOCAL01
	BEQ @UNKNOWN3
	LDA DEBUG
	BEQ @UNKNOWN8
	JSL DEBUG_CHECK_VIEW_CHARACTER_MODE
	CMP #0
	BNE @UNKNOWN8
@UNKNOWN3:
	JSL RELOAD_MAP
	LDX #1
	TXA
	JSL FADE_IN
	BRA @UNKNOWN5
@UNKNOWN4:
	JSL TELEPORT_MAINLOOP
@UNKNOWN5:
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN7
@UNKNOWN6:
	ASL
	TAX
	LDA #ENTITY_COLLISION_NO_OBJECT
	STA ENTITY_COLLIDED_OBJECTS,X
	STZ UNKNOWN_30X2_TABLE_41,X
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	AND #$7FFF
	STA __BSS_START__,X
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN7:
	CMP #23
	BNE @UNKNOWN6
	STZ OVERWORLD_STATUS_SUPPRESSION
	JSL UNKNOWN_C09451
	LDA #120
	STA UNKNOWN_7E5D58
	LDA #$FFFF
	STA TOUCHED_ENEMY
@UNKNOWN8:
	END_C_FUNCTION
