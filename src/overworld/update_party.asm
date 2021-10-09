
;void UpdateParty(void)
UPDATE_PARTY: ;$C034D6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 78
	LDA .LOWORD(GAME_STATE)+game_state::party_count
	AND #$00FF
	STA $4C
	LDA #$0000
	STA $4A
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	PHA
	LDA $4A
	TAX
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_members,X
	AND #$00FF
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::position_index,X
	PLX
	STA $0E,X
	LDA $4A
	INC
	STA $4A
@UNKNOWN1:
	CMP $4C
	BCC @UNKNOWN0
	LDY #$0000
	STY $48
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA .LOWORD(GAME_STATE) + game_state::unknown96,Y
	AND #$00FF
	STA $46
	CMP #$0005
	BCC @UNKNOWN3
	CLC
	ADC #$0300
	STA $46
	BRA @UNKNOWN5
@UNKNOWN3:
	TYA
	ASL
	TAX
	LDA .LOWORD(GAME_STATE) + game_state::unknownA2,X
	ASL
	TAX
	LDA .LOWORD(ENTITY_SCRIPT_VAR1_TABLE),X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::afflictions,X
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN4
	CPX #$0002
	BNE @UNKNOWN5
@UNKNOWN4:
	LDA $46
	CLC
	ADC #$0100
	STA $46
@UNKNOWN5:
	LDY $48
	TYA
	ASL
	TAX
	LDA $46
	STA $1A,X
	LDA .LOWORD(GAME_STATE) + game_state::unknownA2,X
	STA $26,X
	LDA .LOWORD(GAME_STATE) + game_state::player_controlled_party_members,Y
	AND #$00FF
	STA $32,X
	INY
	STY $48
@UNKNOWN6:
	CPY $4C
	BCC @UNKNOWN2
	STZ $44
	JMP @UNKNOWN12
@UNKNOWN7:
	STZ $42
	JMP @UNKNOWN10
@UNKNOWN8:
	LDA $42
	ASL
	STA $02
	TDC
	CLC
	ADC #$001A
	CLC
	ADC $02
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $46
	LDA $02
	STA $04
	INC $04
	INC $04
	TDC
	CLC
	ADC #$001A
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	STA $4A
	LDA $46
	CMP $4A
	BCC @UNKNOWN9
	BEQ @UNKNOWN9
	LDA $4A
	STA a:.LOWORD(RAM),Y
	LDA $46
	STA a:.LOWORD(RAM),X
	TDC
	CLC
	ADC #$0026
	CLC
	ADC $02
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $40
	TDC
	CLC
	ADC #$0026
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	STA a:.LOWORD(RAM),Y
	LDA $40
	STA a:.LOWORD(RAM),X
	TDC
	CLC
	ADC #$0032
	CLC
	ADC $02
	TAY
	LDA a:.LOWORD(RAM),Y
	STA $4A
	TDC
	CLC
	ADC #$0032
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	STA a:.LOWORD(RAM),Y
	LDA $4A
	STA a:.LOWORD(RAM),X
@UNKNOWN9:
	INC $42
@UNKNOWN10:
	LDA $4C
	DEC
	CMP $42
	BEQ @UNKNOWN11
	BCC @UNKNOWN11
	JMP @UNKNOWN8
@UNKNOWN11:
	INC $44
@UNKNOWN12:
	LDA $4C
	DEC
	CMP $44
	BEQ @UNKNOWN13
	BCC @UNKNOWN13
	JMP @UNKNOWN7
@UNKNOWN13:
	LDA #$0000
	STA $46
	BRA @UNKNOWN15
@UNKNOWN14:
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAY
	LDA $46
	ASL
	STA $04
	LDX $04
	SEP #PROC_FLAGS::ACCUM8
	LDA $1A,X
	STA a:.LOWORD(RAM) + game_state::unknown96,Y
	REP #PROC_FLAGS::ACCUM8
	LDA $04
	CLC
	ADC #.LOWORD(GAME_STATE) + game_state::unknownA2
	TAX
	STX $3E
	LDX $04
	LDA $26,X
	LDX $3E
	STA a:.LOWORD(RAM),X
	TDC
	CLC
	ADC #$0032
	CLC
	ADC $04
	STA $02
	LDX $02
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	STA a:.LOWORD(RAM) + game_state::player_controlled_party_members,Y
	LDX $02
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	PHA
	LDX $04
	LDA $0E,X
	PLX
	STA .LOWORD(CHAR_STRUCT)+char_struct::position_index,X
	LDX $3E
	LDA a:.LOWORD(RAM),X
	ASL
	TAX
	LDA $04
	STA .LOWORD(ENTITY_SCRIPT_VAR5_TABLE),X
	LDA $46
	INC
	STA $46
@UNKNOWN15:
	CMP $4C
	BCC @UNKNOWN14
	LDA .LOWORD(GAME_STATE) +game_state::unknownA2
	STA .LOWORD(GAME_STATE)+game_state::current_party_members
	JSL UNKNOWN_C032EC
	JSL UNKNOWN_C02C3E
	JSL UNKNOWN_C47F87
	PLD
	RTL