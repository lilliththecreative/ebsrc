
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
	LDA .LOWORD(GAME_STATE) + game_state::party_members,X
	AND #$00FF
	TAY
	STY $10
	CPY #$0001
	BCC @UNKNOWN2
	CPY #$0004
	BEQ @UNKNOWN1
	BCS @UNKNOWN2
@UNKNOWN1:
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	STX $0E
	LDA .LOWORD(CHAR_STRUCT)+94,X
	AND #$00FF
	BNE @UNKNOWN2
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::afflictions
	CLC
	ADC $14
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	CMP $16
	BNE @UNKNOWN2
	LDX $0E
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,X
	CMP $12
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
	LDA #$0001
	STA .LOWORD(CHAR_STRUCT)+94,X
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	PLD
	RTL
