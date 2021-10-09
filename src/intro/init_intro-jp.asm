
INIT_INTRO: ;$C4DAD2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY #$0000
	STY $10
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB4B6)
	LDA #$0002
	JSL UNKNOWN_C0AC0C
	JSL UNKNOWN_C0927C
	JSL UNKNOWN_C200D9
	JSL UNKNOWN_C432B1
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5DD8)
@UNKNOWN0:
	LDY $10
	TYA
	BEQ @UNKNOWN11
	CMP #$0001
	BEQ @UNKNOWN14
	CMP #$0002
	BEQ @UNKNOWN17
	CMP #$0003
	BEQ @UNKNOWN18
	CMP #$0004
	BEQ @UNKNOWN19
	CMP #$0005
	BEQ @UNKNOWN20
	CMP #$0006
	BNE @UNKNOWN6
	JMP @UNKNOWN21
@UNKNOWN6:
	CMP #$0007
	BNE @UNKNOWN7
	JMP @UNKNOWN22
@UNKNOWN7:
	CMP #$0008
	BNE @UNKNOWN8
	JMP @UNKNOWN23
@UNKNOWN8:
	CMP #$0009
	BNE @UNKNOWN9
	JMP @UNKNOWN24
@UNKNOWN9:
	CMP #$000A
	BNE @UNKNOWN10
	JMP @UNKNOWN25
@UNKNOWN10:
	JMP @UNKNOWN26
@UNKNOWN11:
	JSL LOGO_SCREEN
	TAX
	STX $0E
	JMP @UNKNOWN27
@UNKNOWN14:
	LDA #MUSIC::GAS_STATION
	JSL CHANGE_MUSIC
	JSL GAS_STATION
	TAX
	STX $0E
	JMP @UNKNOWN27
@UNKNOWN17:
	LDA #MUSIC::TITLE_SCREEN
	JSL CHANGE_MUSIC
	LDA #$0000
	JSL SHOW_TITLE_SCREEN
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN18:
	LDA #MUSIC::ATTRACT_MODE
	JSL CHANGE_MUSIC
	LDA #$0000
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN19:
	LDA #$0002
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN20:
	LDA #$0003
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN21:
	LDA #$0004
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN22:
	LDA #$0005
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN23:
	LDA #$0006
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN24:
	LDA #$0007
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN25:
	LDA #$0009
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN27
@UNKNOWN26:
	LDY #$0001
	STY $10
@UNKNOWN27:
	LDY $10
	INY
	STY $10
	LDX $0E
	BNE @UNKNOWN28
	JMP @UNKNOWN0
@UNKNOWN28:
	LDA #$0002
	JSL UNKNOWN_C0AC0C
	LDA a:.LOWORD(INIDISP_MIRROR)
	AND #$00FF
	CMP #$0080
	BEQ @UNKNOWN29
	LDY #$0000
	LDX #$0001
	LDA #$0004
	JSL FADE_OUT_WITH_MOSAIC
@UNKNOWN29:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA f:CGADSUB
	STA f:CGWSEL
	LDA #$0001
	STA a:.LOWORD(TM_MIRROR)
	STZ a:.LOWORD(TD_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E5DD8)
	PLD
	RTL
