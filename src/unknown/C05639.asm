
UNKNOWN_C05639: ;$C05639
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	TAY
	TXA
	ASL
	TAX
	LDA f:UNKNOWN_C42A41+136,X
	STA $14
	LDA .LOWORD(UNKNOWN_7E5DA4)
	STA $12
	LDA .LOWORD(UNKNOWN_7E5DAC)
	LSR
	LSR
	LSR
	STA $04
	AND #$003F
	STA $02
	TYA
	LSR
	LSR
	LSR
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA $E000,X
	AND #$00FF
	STA $02
	LDA $12
	ORA $02
	STA $02
	STA $10
	TYA
	CLC
	ADC #$0007
	LSR
	LSR
	LSR
	TAX
	STX $12
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $04
	AND #$003F
	STA $02
	TXA
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	TAX
	LDA $E000,X
	AND #$00FF
	PHA
	LDA $10
	STA $02
	PLY
	STY $02
	ORA $02
	STA $02
	STA $10
	LDX $12
	INX
	STX $12
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP $14
	BCC @UNKNOWN0
	LDA $02
	STA .LOWORD(UNKNOWN_7E5DA4)
	PLD
	RTS