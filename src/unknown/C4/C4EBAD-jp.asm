
UNKNOWN_C4EBAD: ;$C4EBAD
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFE8
	TCD
	PLA
	STY $04
	STX $02
	STA $16
	LDA #$2381
	STA $06
	LDA #$00E1
	STA $08
	LDA $06
	STA $12
	LDA $08
	STA $14
	LDA $16
	ASL
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STORE_INT1632 $0A
	PUSH32 $0A
	LDA #$0000
	STA $0A
	LDA #$00FF
	STA $0C
	LDA $12
	STA $06
	LDA $14
	STA $08
	AND_INT_ASSIGN $06, $0A
	PULL32 $0A
	CLC
	LDA $06
	ADC $0A
	STA $06
	LDA $08
	ADC $0C
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0020
	LDA $02
	JSL $C4BBE0
	TAX
	TXY
	LDX $04
	LDA $02
	JSL $C4BC65
	PLD
	RTL
