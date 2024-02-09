
AUTOHEALING: ;$C4A0CF
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STX $16
	STA $14
	LDA #$270F
	STA $12
	LDA #$0000
	STA $04
	STA $02
	BRA @UNKNOWN3
@UNKNOWN0:
	LDX $02
	LDA GAME_STATE + game_state::party_members,X
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
<<<<<<< HEAD
	STX @LOCAL00
	LDA PARTY_CHARACTERS+char_struct::unknown94,X
=======
	STX $0E
	LDA CHAR_STRUCT+char_struct::unknown94,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BNE @UNKNOWN2
	TXA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::afflictions
	CLC
	ADC $14
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP $16
	BNE @UNKNOWN2
<<<<<<< HEAD
	LDX @LOCAL00
	LDA PARTY_CHARACTERS+char_struct::current_hp_target,X
	CMP @LOCAL02
=======
	LDX $0E
	LDA CHAR_STRUCT+char_struct::current_hp_target,X
	CMP $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BCS @UNKNOWN2
	STA $12
	LDY $10
	STY $04
@UNKNOWN2:
	INC $02
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
<<<<<<< HEAD
	LDA #$01
	STA PARTY_CHARACTERS+char_struct::unknown94,X
=======
	LDA #$0001
	STA CHAR_STRUCT+char_struct::unknown94,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	PLD
	RTL
