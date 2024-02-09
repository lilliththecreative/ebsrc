
HIDE_HPPP_WINDOWS: ;$C10A1D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	JSR UNKNOWN_C3E6F8
	SEP #PROC_FLAGS::ACCUM8
	STZ RENDER_HPPP_WINDOWS
	REP #PROC_FLAGS::ACCUM8
	LDA BATTLE_MODE_FLAG
	BNE @UNKNOWN2
	LDY #$0000
	STY $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	TYA
	JSL UNDRAW_HP_PP_WINDOW
	LDY $0E
.IF .DEFINED(JPN)
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
.ELSE
	LDA GAME_STATE + game_state::party_members,Y
.ENDIF
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	TAX
	LDA __BSS_START__ + char_struct::current_hp_target,X
	STA __BSS_START__ + char_struct::current_hp,X
	LDA __BSS_START__ + char_struct::current_pp_target,X
	STA __BSS_START__ + char_struct::current_pp,X
	STZ __BSS_START__ + char_struct::current_pp_fraction,X
	STZ __BSS_START__ + char_struct::current_hp_fraction,X
	LDY $0E
	INY
	STY $0E
@UNKNOWN1:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	TYA
	CMP $02
	BNE @UNKNOWN0
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #1
	STA REDRAW_ALL_WINDOWS
=======
	LDA #$0001
	STA UNKNOWN_7E9623
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS
