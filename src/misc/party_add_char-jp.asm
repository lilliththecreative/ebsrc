
ADD_CHAR_TO_PARTY: ;$C228F8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	STY $12
	LDA #$0000
	STA $02
	JMP a:.LOWORD(@UNKNOWN14)
@UNKNOWN0:
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:game_state::party_members,X
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	STY $04
	CMP $04
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN16)
@UNKNOWN1:
	STY $04
	CMP $04
	BEQ @UNKNOWN2
	BCS @UNKNOWN3
@UNKNOWN2:
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN3
	JMP @UNKNOWN13
@UNKNOWN3:
	LDX $02
	STX $10
	BRA @UNKNOWN7
@UNKNOWN4:
	LDX $10
	STX $04
	LDA #$0006
	CLC
	SBC $04
	BVC @UNKNOWN5
	BMI @UNKNOWN6
	JMP @UNKNOWN16
@UNKNOWN5:
	BPL @UNKNOWN6
	JMP @UNKNOWN16
@UNKNOWN6:
	INX
	STX $10
@UNKNOWN7:
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	LDA a:game_state::party_members,X
	AND #$00FF
	BNE @UNKNOWN4
	BRA @UNKNOWN9
@UNKNOWN8:
	TXA
	DEC
	STA $0E
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	PHA
	LDA $0E
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:game_state::party_members,X
	PLX
	STA a:game_state::party_members,X
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	TAX
	STX $10
@UNKNOWN9:
	LDX $10
	TXA
	CLC
	SBC $02
	BVS @UNKNOWN10
	BPL @UNKNOWN8
	BRA @UNKNOWN11
@UNKNOWN10:
	BMI @UNKNOWN8
@UNKNOWN11:
	LDA $02
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA a:game_state::party_members,X
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL UNKNOWN_C0369B
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA a:.LOWORD(RAM),X
	LDY $12
	CPY #$0004
	BEQ @UNKNOWN12
	BCS @UNKNOWN16
@UNKNOWN12:
	JSL UNKNOWN_C216DB
	JSL UNKNOWN_C3EBCA
	BRA @UNKNOWN16
@UNKNOWN13:
	INC $02
@UNKNOWN14:
	LDA #$0006
	CLC
	SBC $02
	BVS @UNKNOWN15
	BMI @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN15:
	BPL @UNKNOWN16
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN16:
	PLD
	RTL
