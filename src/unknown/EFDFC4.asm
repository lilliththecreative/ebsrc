
UNKNOWN_EFDFC4: ;$EFDFC4
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	PHD
	PHA
	TDC
	ADC #$FFE4
	TCD
	PLA
	STX $1A
	STA $02
	STA $18
	LDA .LOWORD(DEBUG_MODE_NUMBER)
	CMP #$0003
	BEQ @UNKNOWN0
	JMP @UNKNOWN5
@UNKNOWN0:
	LDA #$0040
	JSL UNKNOWN_C086DE
	STA $16
	LDA $1A
	CMP #$8000
	BCS @UNKNOWN4
	LDA $02
	AND #$001F
	STA $14
	LDA #$0000
	STA $04
	BRA @UNKNOWN3
@UNKNOWN1:
	LDA $02
	CMP #$8000
	BCS @UNKNOWN2
	LDA $02
	AND #$003F
	STA $02
	LDA $1A
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
	LDY $1A
	LDX $18
	STX $02
	JSR a:.LOWORD(UNKNOWN_EFDF0B)
	STA $12
	LDA $14
	ASL
	TAY
	LDA $12
	STA ($16),Y
@UNKNOWN2:
	LDA $14
	INC
	AND #$001F
	STA $14
	INC $02
	LDA $02
	STA $18
	INC $04
@UNKNOWN3:
	LDA $04
	CMP #$0020
	BCC @UNKNOWN1
@UNKNOWN4:
	LDA $16
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $1A
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$7C00
	TAY
	LDX #$0040
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C08616
@UNKNOWN5:
	PLD
	RTL