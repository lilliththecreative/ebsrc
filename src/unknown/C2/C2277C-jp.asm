
UNKNOWN_C2277C: ;$C2277C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY #$0000
	STY $10
	BRA @UNKNOWN2
@UNKNOWN0:
	TYA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	STA $0E
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::afflictions,X
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN1
	CPX #$0002
	BEQ @UNKNOWN1
	LDA $0E
	BRA @UNKNOWN3
@UNKNOWN1:
	LDY $10
	INY
	STY $10
@UNKNOWN2:
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	TYA
	CMP $02
	BCC @UNKNOWN0
	LDA #$0000
@UNKNOWN3:
	PLD
	RTL
