
UNKNOWN_C46631:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	CMP #<-1
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	JSL UNKNOWN_C4608C
	.A16
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN3
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA __BSS_START__,X
	BRA @UNKNOWN3
@UNKNOWN0:
	LDX #.LOWORD(ENTITY_TICK_CALLBACK_HIGH) + 23 * 2
	LDA __BSS_START__,X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA __BSS_START__,X
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN1:
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
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA __BSS_START__,X
	AND #$FFFF ^ (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)
	STA __BSS_START__,X
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN2:
	LDA GAME_STATE+game_state::party_count
	AND #$00FF
	STA @VIRTUAL02
	LDA @LOCAL00
	CMP @VIRTUAL02
	BCC @UNKNOWN1
@UNKNOWN3:
	END_C_FUNCTION
