
SHOW_TITLE_SCREEN:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @VIRTUAL02
	STA UNKNOWN_7E9F75
	JSL UNKNOWN_C08726
	LDA @VIRTUAL02
	BNE @UNKNOWN0
	JSL UNKNOWN_C0927C
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY #0
	LDX #1
	TXA
	JSL FADE_OUT_WITH_MOSAIC
	LDA #0
	STA @LOCAL02
	BRA @UNKNOWN2
@UNKNOWN3:
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #$8000
	STA __BSS_START__,X
	LDA @LOCAL02
	INC
	STA @LOCAL02
@UNKNOWN2:
	CMP #MAX_ENTITIES
	BCC @UNKNOWN3
@UNKNOWN1:
	LDA #9
	JSL UNKNOWN_C08D79
	LDA #1
	JSL SET_OAM_SIZE
	LDY #$0000
	LDX #$3800
	TYA ;BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG1_VRAM_LOCATION
	LDY #$1000
	LDX #$3C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG2_VRAM_LOCATION
	STZ BG3_X_POS
	STZ BG3_Y_POS
	STZ BG2_Y_POS
	STZ BG2_X_POS
	STZ BG1_Y_POS
	STZ BG1_X_POS
	JSL UPDATE_SCREEN
	JSL UNKNOWN_C0EBE0
	LDA @VIRTUAL02
	BNE @UNKNOWN4
	LDX #$10
	BRA @UNKNOWN5
@UNKNOWN4:
	LDX #$13
@UNKNOWN5:
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA TM_MIRROR
	JSL UNKNOWN_C08744
	JSL OAM_CLEAR
@UNKNOWN6:
	.A16
	LDX #1
	TXA
	JSL FADE_IN
	LDY #0
	TYX
	LDA #EVENT_SCRIPT::TITLE_SCREEN_1
	JSL INIT_ENTITY_WIPE
	STZ UNKNOWN_7E9641
	LDY #0
	STY @LOCAL01
	BRA @UNKNOWN13__
@UNKNOWN12:
	LDA @VIRTUAL02
	BNE @UNKNOWN13_
	LDA PAD_PRESS
	AND #PAD::A_BUTTON
	BNE @UNKNOWN13
	LDA PAD_PRESS
	AND #PAD::B_BUTTON
	BNE @UNKNOWN13
	LDA PAD_PRESS
	AND #PAD::START_BUTTON
	BEQ @UNKNOWN13_
@UNKNOWN13:
	LDY #1
	STY @LOCAL01
	BRA @UNKNOWN13___
@UNKNOWN13_:
	JSL UNKNOWN_C1004E
@UNKNOWN13__:
	LDA UNKNOWN_7E9641
	BEQ @UNKNOWN12
@UNKNOWN13___:
	LDX #1
	TXA
	JSL FADE_OUT
	BRA @UNKNOWN15
@UNKNOWN14:
	JSL UNKNOWN_C1004E
@UNKNOWN15:
	LDA UNKNOWN_7E0028
	AND #$00FF
	BNE @UNKNOWN14
	LDA @VIRTUAL02
	BNE @UNKNOWN18
	STZ UNKNOWN_7E9641
	LDA #0
	JSL UNKNOWN_C474A8
	JSL UNKNOWN_C0927C
	LDY @LOCAL01
	TYA
	BRA @UNKNOWN23
@UNKNOWN18:
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN22
@UNKNOWN19:
	TXA
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #EVENT_SCRIPT::TITLE_SCREEN_1
	BCC @UNKNOWN21
	CMP #EVENT_SCRIPT::TITLE_SCREEN_7
	BGT @UNKNOWN21
	LDX @LOCAL00
	TXA
	JSL UNKNOWN_C09C35
@UNKNOWN21:
	LDX @LOCAL00
	TXA
	ASL
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAY
	LDA __BSS_START__,Y
	AND #$7FFF
	STA __BSS_START__,Y
	INX
	STX @LOCAL00
@UNKNOWN22:
	CPX #MAX_ENTITIES
	BCC @UNKNOWN19
	JSL UNKNOWN_C08726
	JSL RELOAD_MAP
	JSL UNDRAW_FLYOVER_TEXT
	SEP #PROC_FLAGS::ACCUM8
	LDA #$17
	STA TM_MIRROR
	LDX #1
	REP #PROC_FLAGS::ACCUM8
	TXA
	JSL FADE_IN
@UNKNOWN23:
	END_C_FUNCTION
