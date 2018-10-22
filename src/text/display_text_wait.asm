
DISPLAY_TEXT_WAIT: ;$C1DC66
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	TDC
	ADC #$FFEE
	TCD
	LDA $24
	STA $06
	LDA $26
	STA $08
	LDA $20
	STA $0A
	LDA $22
	STA $0C
	LDX #$98B1
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BEQ @UNKNOWN0
	LDA a:.LOWORD(PAD_1_STATE)
	AND #PAD::B_BUTTON
	BEQ @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA a:.LOWORD(RAM),X
	JSL UNKNOWN_C20293
@UNKNOWN0:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSR a:.LOWORD(UNKNOWN_C1AD0A)
	.A16
	LDA .LOWORD(BATTLE_MODE_FLAG)
	BEQ @UNKNOWN1
	LDA #$0002
	JSR a:.LOWORD(ENABLE_BLINKING_TRIANGLE)
@UNKNOWN1:
	LDA $0A
	STA $06
	LDA $0C
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
	JSR a:.LOWORD(CLEAR_BLINKING_PROMPT)
	PLD
	RTL