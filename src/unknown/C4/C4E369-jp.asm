
UNKNOWN_C4E369:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LOADPTR $7F0000, @VIRTUAL06
	LDY #0
	LDX #1
	TXA
	JSL FADE_OUT_WITH_MOSAIC
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C021E6
	LDA #0
	STA @LOCAL03
	BRA @UNKNOWN3
@UNKNOWN1:
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN2
	TXA
	CLC
	ADC #.LOWORD(ENTITY_SPRITEMAP_POINTER_HIGH)
	TAX
	LDA __BSS_START__,X
	ORA #$8000
	STA __BSS_START__,X
@UNKNOWN2:
	LDA @LOCAL03
	INC
	STA @LOCAL03
@UNKNOWN3:
	CMP #MAX_ENTITIES
	BCC @UNKNOWN1
	LDX #BATTLEBG_LAYER::NONE
	LDA #BATTLEBG_LAYER::UNKNOWN279
	JSL LOAD_BACKGROUND_ANIMATION
	LDY #VRAM::CAST_TILES
	LDX #VRAM::CAST_TILEMAP
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG3_VRAM_LOCATION
	LDA #$62
	JSL SET_OAM_SIZE
	STZ BG3_X_POS
	STZ BG3_Y_POS
	STZ BG2_Y_POS
	STZ BG2_X_POS
	STZ BG1_Y_POS
	STZ BG1_X_POS
	JSL UPDATE_SCREEN
	LDA #0
	STA [@VIRTUAL06]
	COPY_TO_VRAM1P @VIRTUAL06, VRAM::CAST_TILEMAP, 2048, 3
	.A16
	LOADPTR $7F0000, @VIRTUAL06
	LOADPTR TEXT_WINDOW_GFX, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DECOMP
	.A16
	LOADPTR CAST_NAMES_GFX, @LOCAL00
	LOADPTR $7F0200, @LOCAL01
	JSL DECOMP
	COPY_TO_VRAM1P @VIRTUAL06, VRAM::CAST_TILES, 8192, 0
	JSL UNKNOWN_C47F87
	.A16
	LOADPTR UNKNOWN_E1D815, @LOCAL00
	LDX #BPP2PALETTE_SIZE * 4
	LDA #.LOWORD(CUR_TEXT_PAL) + BPP2PALETTE_SIZE * 1
	JSL MEMCPY16
	LOADPTR SPRITE_GROUP_PALETTES, @LOCAL00
	LDX #BPP4PALETTE_SIZE * 8
	LDA #.LOWORD(CUR_TEXT_PAL) + BPP4PALETTE_SIZE * 8
	JSL MEMCPY16
	LOADPTR UNKNOWN_E1E4E6, @LOCAL00
	LOADPTR $7F7000, @LOCAL01
	JSL DECOMP
	STZ CUR_TEXT_PAL + 6
	STZ CUR_TEXT_PAL
	LDY #.LOWORD(CUR_TEXT_PAL) + 2
	LDA __BSS_START__,Y
	STA @LOCAL02
	LDX #.LOWORD(CUR_TEXT_PAL) + 4
	LDA __BSS_START__,X
	STA __BSS_START__,Y
	LDA @LOCAL02
	STA __BSS_START__,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$18
	STA UNKNOWN_7E0030
	LDA #$14
	STA TM_MIRROR
	LDA #$16
	STA TM_MIRROR
	REP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7EB4CF
	STZ UNKNOWN_7EB4D1
	JSL UNKNOWN_C08744
	END_C_FUNCTION
