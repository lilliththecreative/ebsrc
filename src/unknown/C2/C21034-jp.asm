
UNKNOWN_C21034: ;$C21034
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $0E
	BRA @UNKNOWN3
@UNKNOWN0:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAX
	LDA a:.LOWORD(RAM)+66,X
	BNE @UNKNOWN1
	LDA a:.LOWORD(RAM)+72,X
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
	LDA $0E
	INC
	STA $0E
@UNKNOWN3:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BCC @UNKNOWN0
	LDA #$0001
@UNKNOWN4:
	PLD
	RTL
