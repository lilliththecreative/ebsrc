
UNKNOWN_C2272F: ;$C2272F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY #$0000
	STY $10
	TYA
	STA $0E
	BRA @UNKNOWN2
@UNKNOWN0:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::unknown96,X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN1
	CPX #$0002
	BEQ @UNKNOWN1
	LDY $10
	INY
	STY $10
@UNKNOWN1:
	LDA $0E
	INC
	STA $0E
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BCC @UNKNOWN0
	LDY $10
	TYA
	PLD
	RTL
