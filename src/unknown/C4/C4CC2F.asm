
UNKNOWN_C4CC2F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STZ @LOCAL07
	LDA #0
	STA @VIRTUAL04
	MOVE_INT UNKNOWN_7EB4AA, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL06
	LDA #0
	STA @VIRTUAL02
	STA @LOCAL05
	JMP @UNKNOWN4
@UNKNOWN0:
	LDY #4
	LDA [@LOCAL06],Y
	CMP #2
	BNEL @UNKNOWN3
	INC @VIRTUAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA #18
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL03
	LDA @VIRTUAL06+2
	STA @LOCAL04
	LDA [@LOCAL03]
	CMP #2
	BNE @UNKNOWN2
	INC @LOCAL07
	JMP @UNKNOWN3
@UNKNOWN2:
	MOVE_INT @LOCAL06, @VIRTUAL0A
	LDA #16
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	STA @LOCAL02
	LDY #6
	LDA [@LOCAL06],Y
	LSR
	LSR
	LSR
	TAX
	LDY #8
	LDA @LOCAL02
	JSL MODULUS16
	ASL
	STA @VIRTUAL02
	TXA
	ASL
	ASL
	ASL
	ASL
	ASL
	TAY
	LDA @LOCAL02
	LSR
	LSR
	LSR
	JSL MULT16
	CLC
	ADC @VIRTUAL02
	STA @LOCAL02
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA #12
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STX @LOCAL00
	LDA @LOCAL02
	TAY
	STY @LOCAL01
	LDY #10
	LDA [@LOCAL06],Y
	TAX
	LDA [@VIRTUAL06]
	LDY @LOCAL01
	JSL UNKNOWN_C428D1
	LDY #0
	LDA [@LOCAL06],Y
	TAX
	LDA [@VIRTUAL06]
	JSL UNKNOWN_C429AE
	LDA [@VIRTUAL0A]
	INC
	INC
	STA [@VIRTUAL0A]
	LDY #8
	CMP [@LOCAL06],Y
	BCC @UNKNOWN3
	LDA #1
	STA [@VIRTUAL0A]
	LDA [@LOCAL03]
	INC
	STA [@LOCAL03]
@UNKNOWN3:
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA #20
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL06
	LDA @VIRTUAL06+2
	STA @LOCAL06+2
	LDA @LOCAL05
	STA @VIRTUAL02
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL05
@UNKNOWN4:
	LDA @VIRTUAL02
	CMP UNKNOWN_7EB4A6
	BCCL @UNKNOWN0
	LDA @VIRTUAL04
	SEC
	SBC @LOCAL07
	END_C_FUNCTION
