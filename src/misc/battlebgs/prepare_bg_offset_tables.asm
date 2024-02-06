
PREPARE_BG_OFFSET_TABLES:
	PHD
	PHA
	TDC
	SEC
	SBC #$000B
	AND #$FF00
	TCD
	PLA
	STA $00
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA f:M7A
	XBA
	STA f:M7A
	STZ $02
	STY $03
	STZ $04
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	LDX #$01C0 ;buffer size for 1 layer
	LDY UNKNOWN_7E1AD2
	BEQ @UNKNOWN0
	TXA
	LDX #$0380 ;buffer size for 2 layers
@UNKNOWN0:
	STA $07
	STX $09
	LDA UNKNOWN_7E1ACC
	CMP #$0002
	BCC @UNKNOWN2
	BEQL @UNKNOWN7
	JMP @UNKNOWN10
@UNKNOWN2:
	LDA UNKNOWN_7E1ACE
	BEQ @UNKNOWN3
	DEC
	ASL
	ASL
	TAX
	LDA __BSS_START__+51,X
	CLC
	ADC $03
	AND #$00FF
	STA $03
	LDA __BSS_START__+49,X
@UNKNOWN3:
	STA $05
	LDA UNKNOWN_7E1ACC
	BNE @UNKNOWN5
	LDY $07
@UNKNOWN4:
	LDX $03
	LDA f:SINE_LOOKUP_TABLE,X
	STA f:M7B
	LDA f:MPYM
	CLC
	ADC $05
	STA UNKNOWN_7E3C46,Y
	LDA $02
	CLC
	ADC $00
	STA $02
	INY
	INY
	CPY $09
	BCC @UNKNOWN4
	PLD
	RTL
@UNKNOWN5:
	LDY $07
@UNKNOWN6:
	LDX $03
	LDA f:SINE_LOOKUP_TABLE,X
	STA f:M7B
	LDA f:MPYM
	CLC
	ADC $05
	STA UNKNOWN_7E3C46,Y
	LDA $02
	CLC
	ADC $00
	STA $02
	LDX $03
	LDA f:SINE_LOOKUP_TABLE,X
	STA f:M7B
	LDA $05
	SEC
	SBC f:MPYM
	STA UNKNOWN_7E3C46 + 2,Y
	LDA $02
	CLC
	ADC $00
	STA $02
	INY
	INY
	INY
	INY
	CPY $09
	BCC @UNKNOWN6
	PLD
	RTL
@UNKNOWN7:
	LDA UNKNOWN_7E1ACE
	BEQ @UNKNOWN8
	DEC
	ASL
	ASL
	TAX
	LDA __BSS_START__+51,X
@UNKNOWN8:
	XBA
	AND #$FF00
	STA $05
	LDY $07
@UNKNOWN9:
	LDX $03
	LDA f:SINE_LOOKUP_TABLE,X
	STA f:M7B
	LDA $05
	CLC
	ADC UNKNOWN_7E1AD4
	STA $05
	XBA
	AND #$00FF
	CLC
	ADC f:MPYM
	STA UNKNOWN_7E3C46,Y
	LDA $02
	CLC
	ADC $00
	STA $02
	INY
	INY
	CPY $09
	BCC @UNKNOWN9
	PLD
	RTL
@UNKNOWN10:
	LDA UNKNOWN_7E1ACE
	BEQ @UNKNOWN11
	DEC
	ASL
	ASL
	TAX
	LDA __BSS_START__+51,X
@UNKNOWN11:
	XBA
	AND #$FF00
	STA $05
	LDY $07
@UNKNOWN12:
	LDX $03
	LDA f:SINE_LOOKUP_TABLE,X
	STA f:M7B
	LDA $05
	CLC
	ADC UNKNOWN_7E1AD4
	STA $05
	XBA
	AND #$00FF
	CLC
	ADC f:MPYM
	STA UNKNOWN_7E3C46,Y
	LDA $02
	CLC
	ADC $00
	STA $02
	LDX $03
	LDA f:SINE_LOOKUP_TABLE,X
	STA f:M7B
	LDA $05
	CLC
	ADC UNKNOWN_7E1AD4
	STA $05
	XBA
	AND #$00FF
	SEC
	SBC f:MPYM
	STA UNKNOWN_7E3C46 + 2,Y
	LDA $02
	CLC
	ADC $00
	STA $02
	INY
	INY
	INY
	INY
	CPY $09
	BCC @UNKNOWN12
	PLD
	RTL
