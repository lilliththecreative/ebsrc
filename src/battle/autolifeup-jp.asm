
AUTOLIFEUP: ;$C4A15D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA #$270F
	STA $14
	LDA #$0000
	STA $04
	STA $02
	STA $12
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	TAY
	STY $10
	CPY #$0001
	BCC @UNKNOWN2
	CPY #$0004
	BGT @UNKNOWN2
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA CHAR_STRUCT+char_struct::unknown94,X
	AND #$00FF
	BNE @UNKNOWN2
	LDA CHAR_STRUCT+char_struct::afflictions,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN2
	LDA CHAR_STRUCT+char_struct::current_hp_target,X
	STA $0E
	LDA CHAR_STRUCT+char_struct::max_hp,X
	LSR
	LSR
	STA $02
	LDA $0E
	CMP $02
	BCS @UNKNOWN2
	CMP $14
	BCS @UNKNOWN2
	STA $14
	LDY $10
	STY $04
@UNKNOWN2:
	LDA $12
	STA $02
	INC $02
	LDA $02
	STA $12
@UNKNOWN3:
	LDA $02
	CMP #$0006
	BCC @UNKNOWN0
	LDA $04
	BEQ @UNKNOWN4
	LDA $04
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA CHAR_STRUCT+char_struct::unknown94,X
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	PLD
	RTL
