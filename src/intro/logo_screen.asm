
LOGO_SCREEN: ;$C0F009
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA #$0000
	JSR a:.LOWORD(LOGO_SCREEN_LOAD)
	LDY #$0000
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C087CE
	LDA .LOWORD(DEBUG)
	BEQ @UNKNOWN0
	LDA #$00B4
	JSR a:.LOWORD(UNKNOWN_C0EFE1)
	BRA @UNKNOWN3
@UNKNOWN0:
	LDX #$0000
	STX $0E
	BRA @UNKNOWN2
@UNKNOWN1:
	JSL READ_JOYPAD
	LDX $0E
	INX
	STX $0E
@UNKNOWN2:
	CPX #$00B4
	BCC @UNKNOWN1
@UNKNOWN3:
	LDY #$0000
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C08814
	LDA #$0001
	JSR a:.LOWORD(LOGO_SCREEN_LOAD)
	LDY #$0000
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C087CE
	LDA #$0078
	JSR a:.LOWORD(UNKNOWN_C0EFE1)
	CMP #$0000
	BEQ @UNKNOWN4
	LDY #$0000
	LDX #$0001
	LDA #$0002
	JSL UNKNOWN_C08814
	LDA #$0001
	BRA @UNKNOWN6
@UNKNOWN4:
	LDY #$0000
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C08814
	LDA #$0002
	JSR a:.LOWORD(LOGO_SCREEN_LOAD)
	LDY #$0000
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C087CE
	LDA #$0078
	JSR a:.LOWORD(UNKNOWN_C0EFE1)
	CMP #$0000
	BEQ @UNKNOWN5
	LDY #$0000
	LDX #$0001
	LDA #$0002
	JSL UNKNOWN_C08814
	LDA #$0001
	BRA @UNKNOWN6
@UNKNOWN5:
	LDY #$0000
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C08814
	LDA #$0000
@UNKNOWN6:
	PLD
	RTL