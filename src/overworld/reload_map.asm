
RELOAD_MAP:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #.LOWORD(-1)
	STA LOADED_MAP_PALETTE
	STA LOADED_MAP_TILE_COMBO
	LDA SCREEN_X_PIXELS
	AND #$FFF8
	STA SCREEN_X_PIXELS
	LDA SCREEN_Y_PIXELS
	AND #$FFF8
	STA SCREEN_Y_PIXELS
	JSL UNKNOWN_C08726
	LDA #.LOWORD(-1)
	STA CURRENT_MAP_MUSIC_TRACK
	LDA #.LOWORD(GAME_STATE) + game_state::leader_x_coord
	STA @VIRTUAL04
	LDA #.LOWORD(GAME_STATE) + game_state::leader_y_coord
	STA @VIRTUAL02
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	TAX
	STX @LOCAL01
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	LDX @LOCAL01
	JSL UNKNOWN_C068F4
	LDA #$9
	JSL UNKNOWN_C08D79
	LDY #$0000
	LDX #$3800
	LDA #BG_TILEMAP_SIZE::HORIZONTAL
	JSL SET_BG1_VRAM_LOCATION
	LDY #$2000
	LDX #$5800
	LDA #BG_TILEMAP_SIZE::HORIZONTAL
	JSL SET_BG2_VRAM_LOCATION
	LDY #$6000
	LDX #$7C00
	LDA #BG_TILEMAP_SIZE::NORMAL
	JSL SET_BG3_VRAM_LOCATION
	LDA #$62
	JSL SET_OAM_SIZE
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	TAX
	STX @LOCAL00
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	LDX @LOCAL00
	JSL RELOAD_MAP_AT_POSITION
	LDA GAME_STATE+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BNE @UNKNOWN0
	LDA #MUSIC::BICYCLE
	JSL CHANGE_MUSIC
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C069AF
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$17
	STA TM_MIRROR
	REP #PROC_FLAGS::ACCUM8
	LDA DEBUG
	BEQ @UNKNOWN2
	JSL UNKNOWN_EFD9F3
@UNKNOWN2:
	JSL UNKNOWN_C08744
	END_C_FUNCTION
