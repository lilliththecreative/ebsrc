
UNKNOWN_C12C36: ;$C12C36
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #$0003
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LOADPTR UNKNOWN_C3E84E+20, $06
	LDY #$0000
	STY $10
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA [$06]
	INC $06
	INC $06
	JSR a:.LOWORD(UNKNOWN_C10D60)
	LDX #$0001
	STX $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	JSL UNKNOWN_C12DD5
@UNKNOWN2:
	LDX $0E
	TXA
	DEX
	STX $0E
	CMP #$0000
	BNE @UNKNOWN1
	LDY $10
	INY
	STY $10
@UNKNOWN3:
	CPY #$0004
	BCC @UNKNOWN0
	LDX #$0008
	STX $0E
	BRA @UNKNOWN5
@UNKNOWN4:
	JSL UNKNOWN_C12E42
@UNKNOWN5:
	LDX $0E
	TXA
	DEX
	STX $0E
	CMP #$0000
	BNE @UNKNOWN4
	LDY #$0000
	STY $10
	BRA @UNKNOWN9
@UNKNOWN6:
	LDA [$06]
	INC $06
	INC $06
	JSR a:.LOWORD(UNKNOWN_C10D60)
	LDX #$0001
	STX $0E
	BRA @UNKNOWN8
@UNKNOWN7:
	JSL UNKNOWN_C12DD5
@UNKNOWN8:
	LDX $0E
	TXA
	DEX
	STX $0E
	CMP #$0000
	BNE @UNKNOWN7
	LDY $10
	INY
	STY $10
@UNKNOWN9:
	CPY #$0005
	BCC @UNKNOWN6
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	PLD
	RTL