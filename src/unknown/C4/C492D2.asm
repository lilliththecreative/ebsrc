
UNKNOWN_C492D2:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA #.LOWORD(PALETTES) + BPP4PALETTE_SIZE * 2
	STA @LOCAL02
	LDA #0
	STA @VIRTUAL04
	JMP @UNKNOWN1
@UNKNOWN0:
	LDA @VIRTUAL04
	ASL
	STA @LOCAL01
	LOADPTR BUFFER + $7C00, @VIRTUAL06
	LDA @LOCAL01
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA @LOCAL01
	TAX
	LDA [@VIRTUAL06]
	CLC
	ADC BUFFER + $7900,X
	TAY
	STA [@VIRTUAL06]
	LOADPTR BUFFER + $7D00, @VIRTUAL06
	LDA @LOCAL01
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA @LOCAL01
	TAX
	LDA [@VIRTUAL06]
	CLC
	ADC BUFFER + $7A00,X
	STA @VIRTUAL02
	STA [@VIRTUAL06]
	LOADPTR BUFFER + $7E00, @VIRTUAL06
	LDA @LOCAL01
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA @LOCAL01
	TAX
	LDA [@VIRTUAL06]
	CLC
	ADC BUFFER + $7B00,X
	TAX
	STA [@VIRTUAL06]
	TYA
	XBA
	AND #$00FF
	AND #$001F
	TAY
	LDA @VIRTUAL02
	XBA
	AND #$00FF
	AND #$001F
	ASL
	ASL
	ASL
	ASL
	ASL
	STA @LOCAL01
	TXA
	XBA
	AND #$00FF
	AND #$001F
	XBA
	AND #$FF00
	ASL
	ASL
	STA @VIRTUAL02
	STA @LOCAL00
	LDA @LOCAL01
	STA @VIRTUAL02
	TYA
	ORA @VIRTUAL02
	LDX @LOCAL00
	STX @VIRTUAL02
	ORA @VIRTUAL02
	STA (@LOCAL02)
	INC @LOCAL02
	INC @LOCAL02
	INC @VIRTUAL04
@UNKNOWN1:
	LDA @VIRTUAL04
	CMP #BPP4PALETTE_SIZE * 3
	BCCL @UNKNOWN0
	LDA #8
	JSL UNKNOWN_C0856B
	END_C_FUNCTION
