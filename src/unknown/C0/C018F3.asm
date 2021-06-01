
UNKNOWN_C018F3: ;$C018F3
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E4370)
	STA .LOWORD(UNKNOWN_7E436E)
	LDA .LOWORD(UNKNOWN_7E4380)
	AND #$FFF8
	STA .LOWORD(UNKNOWN_7E4380)
	LDA .LOWORD(UNKNOWN_7E4382)
	AND #$FFF8
	STA .LOWORD(UNKNOWN_7E4382)
	JSL UNKNOWN_C08726
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5DD4)
	LDA #.LOWORD(GAME_STATE) + game_state::leader_x_coord
	STA $04
	LDA #.LOWORD(GAME_STATE) + game_state::leader_y_coord
	STA $02
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAX
	STX $10
	LDX $04
	LDA a:.LOWORD(RAM),X
	LDX $10
	JSL UNKNOWN_C068F4
	LDA #$0009
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
	LDA #$0062
	JSL SET_OAM_SIZE
	LDX $02
	LDA a:.LOWORD(RAM),X
	TAX
	STX $0E
	LDX $04
	LDA a:.LOWORD(RAM),X
	LDX $0E
	JSL UNKNOWN_C012ED
	LDA .LOWORD(GAME_STATE)+game_state::walking_style
	CMP #WALKING_STYLE::BICYCLE
	BNE @UNKNOWN0
	LDA #MUSIC::BICYCLE
	JSL CHANGE_MUSIC
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL UNKNOWN_C069AF
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0017
	STA a:.LOWORD(TM_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN2
	JSL UNKNOWN_EFD9F3
@UNKNOWN2:
	JSL UNKNOWN_C08744
	PLD
	RTL
