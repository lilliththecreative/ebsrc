
UNKNOWN_C019E2: ;$C019E2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00FF
	STA .LOWORD(UNKNOWN_7E43C0),X
	STA .LOWORD(UNKNOWN_7E43B0),X
	STA .LOWORD(UNKNOWN_7E43A0),X
	STA .LOWORD(UNKNOWN_7E4390),X
	INX
@UNKNOWN1:
	CPX #$0010
	BCC @UNKNOWN0
	REP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(BG1_X_POS)
	SEC
	SBC #$0080
	LSR
	LSR
	LSR
	STA $04
	LDA a:.LOWORD(BG1_Y_POS)
	SEC
	SBC #$0080
	LSR
	LSR
	LSR
	STA $02
	STA $10
	LDY #$0000
	STY $0E
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA $10
	STA $02
	STY $02
	CLC
	ADC $02
	TAX
	LDA $04
	JSR a:.LOWORD(UNKNOWN_C00AC5)
	LDY $0E
	INY
	STY $0E
@UNKNOWN3:
	CPY #$003C
	BCC @UNKNOWN2
	LDY #$0000
	STY $0E
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA $10
	STA $02
	STY $02
	CLC
	ADC $02
	TAX
	LDA $04
	JSR a:.LOWORD(UNKNOWN_C00CF3)
	LDY $0E
	INY
	STY $0E
@UNKNOWN5:
	CPY #$003C
	BCC @UNKNOWN4
	PLD
	RTL
