
UNKNOWN_C42631:
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8
	STZ UNKNOWN_7E3C22
	STZ UNKNOWN_7E3C24
	STZ UNKNOWN_7E3C26
	STZ UNKNOWN_7E3C28
	TAY
	TXA
	CLC
	ADC #$0080
	AND #$00FF
	TAX
	PHX
	TYA
	JSL COSINE_SINE
	STA UNKNOWN_7E3C22 + 1
	LDA UNKNOWN_7E3C22 + 1
	BPL @UNKNOWN0
	LDA #$FF00
	ORA UNKNOWN_7E3C24
	STA UNKNOWN_7E3C24
@UNKNOWN0:
	PLX
	TYA
	JSL COSINE
	STA UNKNOWN_7E3C26 + 1
	LDA UNKNOWN_7E3C26 + 1
	BPL @UNKNOWN1
	LDA #$FF00
	ORA UNKNOWN_7E3C28
	STA UNKNOWN_7E3C28
@UNKNOWN1:
	LDA BG1_X_POS
	STA UNKNOWN_7E3C2C
	LDA BG1_Y_POS
	STA UNKNOWN_7E3C30
	STZ UNKNOWN_7E3C2A
	STZ UNKNOWN_7E3C2E
	RTL
