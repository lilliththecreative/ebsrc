
UNKNOWN_C20F9A: ;$C20F9A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $02
	BRA @UNKNOWN4
@UNKNOWN0:
	LDA $02
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
	TAY
	LDA a:char_struct::afflictions,Y
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN1
	LDA a:char_struct::current_hp,Y
	BNE @UNKNOWN1
	LDA #$0001
	STA a:char_struct::current_hp_target,Y
@UNKNOWN1:
	LDA a:.LOWORD(RAM)+66,Y
	BEQ @UNKNOWN2
	LDA a:char_struct::current_hp,Y
	STA $0E
	TYA
	CLC
	ADC #char_struct::current_hp_target
	TAX
	LDA a:.LOWORD(RAM),X
	STA $04
	LDA $0E
	CMP $04
	BCC @UNKNOWN2
	BEQ @UNKNOWN2
	STA a:.LOWORD(RAM),X
@UNKNOWN2:
	LDA a:.LOWORD(RAM)+72,Y
	BEQ @UNKNOWN3
	LDA a:char_struct::current_pp,Y
	STA $0E
	TYA
	CLC
	ADC #$004C
	TAX
	LDA a:.LOWORD(RAM),X
	STA $04
	LDA $0E
	CMP $04
	BCC @UNKNOWN3
	BEQ @UNKNOWN3
	STA a:.LOWORD(RAM),X
@UNKNOWN3:
	INC $02
@UNKNOWN4:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $04
	LDA $02
	CMP $04
	BCS @UNKNOWN5
	BEQ @UNKNOWN5
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9696)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
