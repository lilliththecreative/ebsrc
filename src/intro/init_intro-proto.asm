
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
	STZ a:.LOWORD(BG3_X_POS)
	STZ a:.LOWORD(BG3_Y_POS)
	STZ a:.LOWORD(BG2_Y_POS)
	STZ a:.LOWORD(BG2_X_POS)
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL UPDATE_SCREEN
	STZ a:.LOWORD(BG3_X_POS)
	STZ a:.LOWORD(BG3_Y_POS)
	STZ a:.LOWORD(BG2_Y_POS)
	STZ a:.LOWORD(BG2_X_POS)
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL UPDATE_SCREEN
@UNKNOWN0:
	LDY $10
	TYA
	BEQ @UNKNOWN6
	CMP #$0001
	BEQ @UNKNOWN7
	CMP #$0002
	BEQ @UNKNOWN8
	CMP #$0003
	BEQ @UNKNOWN9
	CMP #$0004
	BEQ @UNKNOWN10
	CMP #$0005
	BEQ @UNKNOWN11
	CMP #$0006
	BNE @UNKNOWN1
	JMP @UNKNOWN12
@UNKNOWN1:
	CMP #$0007
	BNE @UNKNOWN2
	JMP @UNKNOWN13
@UNKNOWN2:
	CMP #$0008
	BNE @UNKNOWN3
	JMP @UNKNOWN14
@UNKNOWN3:
	CMP #$0009
	BNE @UNKNOWN4
	JMP @UNKNOWN15
@UNKNOWN4:
	CMP #$000A
	BNE @UNKNOWN5
	JMP @UNKNOWN16
@UNKNOWN5:
	JMP @UNKNOWN17
@UNKNOWN6:
	JSL LOGO_SCREEN
	TAX
	STX $0E
	JMP @UNKNOWN18
@UNKNOWN7:
	LDA #MUSIC::GAS_STATION
	JSL CHANGE_MUSIC
	JSL GAS_STATION
	TAX
	STX $0E
	JMP @UNKNOWN18
@UNKNOWN8:
	LDA #MUSIC::TITLE_SCREEN
	JSL CHANGE_MUSIC
	LDA #$0000
	JSL SHOW_TITLE_SCREEN
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN9:
	LDA #MUSIC::ATTRACT_MODE
	JSL CHANGE_MUSIC
	LDA #$0000
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN10:
	LDA #$0002
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN11:
	LDA #$0003
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN12:
	LDA #$0004
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN13:
	LDA #$0005
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN14:
	LDA #$0006
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN15:
	LDA #$0007
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN16:
	LDA #$0009
	JSL UNKNOWN_C4D989
	TAX
	STX $0E
	BRA @UNKNOWN18
@UNKNOWN17:
	LDY #$0001
	STY $10
@UNKNOWN18:
	LDY $10
	INY
	STY $10
	LDX $0E
	BNE @UNKNOWN19
	JMP @UNKNOWN0
@UNKNOWN19:
	LDA #$0002
	JSL UNKNOWN_C0AC0C
	LDA a:.LOWORD(INIDISP_MIRROR)
	AND #$00FF
	CMP #$0080
	BEQ @UNKNOWN20
	LDY #$0000
	LDX #$0001
	LDA #$0004
	JSL FADE_OUT_WITH_MOSAIC
@UNKNOWN20:
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
