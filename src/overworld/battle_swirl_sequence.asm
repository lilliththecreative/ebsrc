
;void battleSwirlSequence()
BATTLE_SWIRL_SEQUENCE: ;$C2E8E0
	@SWIRL_MUSIC = $10
	@SWIRL_GREEN = $04
	@SWIRL_BLUE = $12
	@SWIRL_RED = $14
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDA #$0001
	STA $16
	LDA #$0004
	STA @SWIRL_RED
	STA @SWIRL_GREEN
	LDY #$0000
	STY @SWIRL_BLUE
	LDA BATTLE_INITIATIVE
	BEQ @UNKNOWN0
	CMP #INITIATIVE::PARTY_FIRST
	BEQ @UNKNOWN1
	CMP #INITIATIVE::ENEMIES_FIRST
	BEQ @UNKNOWN2
	BRA @UNKNOWN3
@UNKNOWN0:
	LDX #MUSIC::BATTLE_SWIRL4
	STX @SWIRL_MUSIC
	LDA #$000E
	STA $02
	STA $0E
	BRA @UNKNOWN3
@UNKNOWN1:
	LDX #MUSIC::BATTLE_SWIRL4
	STX @SWIRL_MUSIC
	LDA #$001C
	STA @SWIRL_RED
	LDA #$0005
	STA @SWIRL_GREEN
	LDY #$000C
	STY @SWIRL_BLUE
	LDA #$0006
	STA $02
	STA $0E
	BRA @UNKNOWN3
@UNKNOWN2:
	LDX #MUSIC::BATTLE_SWIRL2
	STX @SWIRL_MUSIC
	STZ @SWIRL_RED
	LDA #$001F
	STA @SWIRL_GREEN
	TAY
	STY @SWIRL_BLUE
	LDA #$0006
	STA $02
	STA $0E
@UNKNOWN3:
	LDA CURRENT_BATTLE_GROUP
	CMP #ENEMY_GROUP::BOSS_FRANK
	BCC @UNKNOWN4
	LDA #$0003
	STA $16
	LDA #$000E
	STA $02
	STA $0E
	LDX #MUSIC::BATTLE_SWIRL1
	STX @SWIRL_MUSIC
@UNKNOWN4:
	LDX @SWIRL_MUSIC
	TXA
	JSL CHANGE_MUSIC
	JSL UNKNOWN_C04F47
	LDA $0E
	STA $02
	AND #$0004
	BEQ @UNKNOWN6
	LDY @SWIRL_BLUE
	LDX @SWIRL_GREEN
	LDA @SWIRL_RED
	JSL SET_COLDATA
	LDA $02
	AND #$0008
	BEQ @UNKNOWN5
	LDX #CGADSUB_BITS::COLOUR_MATH_ADDSUB | CGADSUB_BITS::COLOUR_MATH_DIV2 | CGADSUB_BITS::COLOUR_MATH_MAINISBACKDROP | CGADSUB_BITS::COLOUR_MATH_MAINISOBJ47 | CGADSUB_BITS::COLOUR_MATH_MAINISBG4 | CGADSUB_BITS::COLOUR_MATH_MAINISBG3 | CGADSUB_BITS::COLOUR_MATH_MAINISBG2 | CGADSUB_BITS::COLOUR_MATH_MAINISBG1
	LDA #CGWSEL_BITS::COLOUR_MATH_ENABLE_MATHWIN | CGWSEL_BITS::MAIN_SCREEN_BLACK_NEVER | CGWSEL_BITS::SUBSCREEN_BGOBJ_DISABLE | CGWSEL_BITS::USE_PALETTE
	JSL SET_COLOUR_ADDSUB_MODE
	BRA @UNKNOWN6
@UNKNOWN5:
	LDX #CGADSUB_BITS::COLOUR_MATH_ADDSUB | CGADSUB_BITS::COLOUR_MATH_MAINISBACKDROP | CGADSUB_BITS::COLOUR_MATH_MAINISOBJ47 | CGADSUB_BITS::COLOUR_MATH_MAINISBG4 | CGADSUB_BITS::COLOUR_MATH_MAINISBG3 | CGADSUB_BITS::COLOUR_MATH_MAINISBG2 | CGADSUB_BITS::COLOUR_MATH_MAINISBG1
	LDA #CGWSEL_BITS::COLOUR_MATH_ENABLE_MATHWIN | CGWSEL_BITS::MAIN_SCREEN_BLACK_NEVER | CGWSEL_BITS::SUBSCREEN_BGOBJ_DISABLE | CGWSEL_BITS::USE_PALETTE
	JSL SET_COLOUR_ADDSUB_MODE
@UNKNOWN6:
	LDY #$001E
	LDX $02
	LDA $16
	JSL UNKNOWN_C2E8C4
	LDA $02
	AND #$0004
	BEQ @UNKNOWN7
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0020
	STA SWIRL_MASK_SETTINGS
	BRA @UNKNOWN8
@UNKNOWN7:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$000F
	STA SWIRL_MASK_SETTINGS
@UNKNOWN8:
	STZ SWIRL_AUTO_RESTORE
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
