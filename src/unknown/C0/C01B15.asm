
<<<<<<< HEAD
UNKNOWN_C01B15:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	CMP #.LOWORD(OVERWORLD_SPRITEMAPS)
=======
UNKNOWN_C01B15: ;$C01B15
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	CMP #.LOWORD(SPRITE_TABLE_7E467E)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BCC @UNKNOWN3
	CMP #.LOWORD(OVERWORLD_SPRITEMAPS) + 179 * .SIZEOF(spritemap) + 1
	BGT @UNKNOWN3
	SEC
<<<<<<< HEAD
	SBC #.LOWORD(OVERWORLD_SPRITEMAPS)
	STA @LOCAL01
	LDA #0
	STA @VIRTUAL02
=======
	SBC #.LOWORD(SPRITE_TABLE_7E467E)
	STA $10
	LDA #$0000
	STA $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA $10
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(OVERWORLD_SPRITEMAPS + spritemap::special_flags)
=======
	ADC #.LOWORD(SPRITE_TABLE_7E467E+4)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TAX
	STX $0E
	LDA __BSS_START__,X
	AND #$00FF
	TAY
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #>-1
	STA OVERWORLD_SPRITEMAPS + spritemap::y_offset,X
=======
	LDA #$00FF
	STA SPRITE_TABLE_7E467E,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #>-1
	STA OVERWORLD_SPRITEMAPS + spritemap::tile,X
=======
	LDA #$00FF
	STA SPRITE_TABLE_7E467E+1,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #>-1
	STA OVERWORLD_SPRITEMAPS + spritemap::flags,X
=======
	LDA #$00FF
	STA SPRITE_TABLE_7E467E+2,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	TAX
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #>-1
	STA OVERWORLD_SPRITEMAPS + spritemap::x_offset,X
	LDX @LOCAL00 ;address was precalculated because it was also being read from
=======
	LDA #$00FF
	STA SPRITE_TABLE_7E467E+3,X
	LDX $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	LDA $10
	CLC
	ADC #$0005
	STA $10
	TYA
	AND #$0080
	BEQ @UNKNOWN1
	INC $02
@UNKNOWN2:
	LDA $02
	CMP #$0002
	BCC @UNKNOWN1
@UNKNOWN3:
	PLD
	RTL
