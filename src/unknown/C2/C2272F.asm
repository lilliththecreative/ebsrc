
UNKNOWN_C2272F: ;$C2272F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$0000
	STA $10
	TAY
	STY $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA GAME_STATE + game_state::unknown96,Y
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA PARTY_CHARACTERS+char_struct::afflictions,X
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN1
	CPX #$0002
	BEQ @UNKNOWN1
	LDA $10
	INC
	STA $10
@UNKNOWN1:
	LDY $0E
	INY
	STY $0E
@UNKNOWN2:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	TYA
	CMP $02
	BCC @UNKNOWN0
	LDA $10
	PLD
	RTL
