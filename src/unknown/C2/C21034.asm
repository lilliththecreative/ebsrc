
UNKNOWN_C21034: ;$C21034
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDY #$0000
	STY $0E
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA GAME_STATE + game_state::party_members,Y
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	TAX
	LDA a:char_struct::current_hp_fraction,X
	BNE @UNKNOWN1
	LDA a:char_struct::current_pp_fraction,X
	BNE @UNKNOWN1
	LDA a:char_struct::current_hp,X
	CMP a:char_struct::current_hp_target,X
	BNE @UNKNOWN1
	LDA a:char_struct::current_pp,X
	CMP a:char_struct::current_pp_target,X
	BEQ @UNKNOWN2
@UNKNOWN1:
	LDA #$0000
	BRA @UNKNOWN4
@UNKNOWN2:
	LDY $0E
	INY
	STY $0E
@UNKNOWN3:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	TYA
	CMP $02
	BCC @UNKNOWN0
	LDA #$0001
@UNKNOWN4:
	PLD
	RTL
