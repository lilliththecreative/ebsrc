
UNKNOWN_C0C0B4: ;$C0C0B4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STA $12
	LDY .LOWORD(UNKNOWN_7E1A42)
	STY $10
	LDX .LOWORD(GAME_STATE)+game_state::leader_y_coord
	LDA .LOWORD(GAME_STATE)+game_state::leader_x_coord
	JSL LOAD_SECTOR_ATTRS
	AND #$0007
	TAX
	LDA f:UNKNOWN_C3DFE8,X
	AND #$00FF
	BNE @UNKNOWN0
	JMP @UNKNOWN6
@UNKNOWN0:
	LDY $10
	TYA
	ASL
	STA $04
	CLC
	ADC #$2C5E
	STA $02
	LDA #$FFFF
	LDX $02
	STA a:.LOWORD(RAM),X
	LDY #$0030
	TYX
	LDA #$0001
	JSL UNKNOWN_C0BC74
	CMP #$0000
	BEQ @UNKNOWN1
	JMP @UNKNOWN6
@UNKNOWN1:
	LDA #$0000
	LDX $02
	STA a:.LOWORD(RAM),X
	LDA $04
	CLC
	ADC #.LOWORD(UNKNOWN_30X2_TABLE_46)
	TAX
	LDA a:.LOWORD(RAM),X
	INC
	INC
	INC
	INC
	STA a:.LOWORD(RAM),X
	LDA $04
	CLC
	ADC #.LOWORD(UNKNOWN_7E2E3E)
	TAY
	LDA a:.LOWORD(RAM),Y
	DEC
	STA a:.LOWORD(RAM),Y
	BNE @UNKNOWN2
	LDA #$0001
	BRA @UNKNOWN7
@UNKNOWN2:
	LDA a:.LOWORD(RAM),X
	STA $02
	LDA $12
	STA $04
	ASL
	ASL
	ADC $04
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$4A96
	STA $0E
	STA a:.LOWORD(RAM),X
	LDA a:.LOWORD(RAM),Y
	TAY
	LDX #$0000
	STX $10
	BRA @UNKNOWN4
@UNKNOWN3:
	LDA $0E
	PHA
	LDX $02
	LDA a:.LOWORD(RAM),X
	PLX
	STA a:.LOWORD(RAM),X
	LDA $0E
	PHA
	LDX $02
	LDA a:.LOWORD(RAM)+2,X
	PLX
	STA a:.LOWORD(RAM)+2,X
	INC $02
	INC $02
	INC $02
	INC $02
	LDA $0E
	INC
	INC
	INC
	INC
	STA $0E
	DEY
	LDX $10
	INX
	STX $10
@UNKNOWN4:
	CPY #$0000
	BEQ @UNKNOWN5
	CPX #$0014
	BCC @UNKNOWN3
@UNKNOWN5:
	LDA #$0000
	BRA @UNKNOWN7
@UNKNOWN6:
	LDA #$0001
@UNKNOWN7:
	PLD
	RTL