
UNKNOWN_C46712:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA GAME_STATE + game_state::unknownA2
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA __BSS_START__,X
	LDA #$0001
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
.IF .DEFINED(JPN)
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknownA2,X
.ELSE
	TAX
	LDA GAME_STATE + game_state::unknownA2,X
.ENDIF
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #SPRITEMAP_FLAGS::DRAW_DISABLED
	STA __BSS_START__,X
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA @VIRTUAL02
	LDA @LOCAL00
	CMP @VIRTUAL02
	BCC @UNKNOWN0
	END_C_FUNCTION
