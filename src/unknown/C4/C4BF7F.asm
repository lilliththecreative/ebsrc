
UNKNOWN_C4BF7F:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @LOCAL08
	STA @LOCAL07
	CMP #3
	BCCL @UNKNOWN6
	LDA __BSS_START__+4,X
	STA @VIRTUAL04
	LDA __BSS_START__+6,X
	STA @VIRTUAL02
	STA @LOCAL06
	LDA __BSS_START__,X
	STA @VIRTUAL02
	LDA @VIRTUAL04
	SEC
	SBC @VIRTUAL02
	STA @LOCAL05
	LDA @LOCAL06
	STA @VIRTUAL02
	SEC
	SBC __BSS_START__+2,X
	STA @LOCAL04
	LDA #1
	STA @LOCAL03
	LDA #2
	STA @LOCAL02
	JMP @UNKNOWN4
@UNKNOWN1:
	LDA @LOCAL02
	ASL
	ASL
	STA @VIRTUAL02
	LDX @LOCAL08
	TXA
	CLC
	ADC @VIRTUAL02
	TAY
	LDA __BSS_START__,Y
	STA @LOCAL01
	LDA __BSS_START__+2,Y
	TAY
	STY @LOCAL00
	LDA @LOCAL01
	STA @VIRTUAL02
	LDA @VIRTUAL04
	CLC
	ADC @LOCAL05
	CMP @VIRTUAL02
	BNE @UNKNOWN2
	LDA @LOCAL06
	STA @VIRTUAL02
	CLC
	ADC @LOCAL04
	STY @VIRTUAL02
	CMP @VIRTUAL02
	BNE @UNKNOWN2
	LDA @LOCAL03
	ASL
	ASL
	STA @VIRTUAL04
	TXA
	CLC
	ADC @VIRTUAL04
	STA @VIRTUAL02
	LDA @LOCAL01
	LDX @VIRTUAL02
	STA __BSS_START__,X
	TYA
	LDX @VIRTUAL02
	STA __BSS_START__+2,X
	BRA @UNKNOWN3
@UNKNOWN2:
	INC @LOCAL03
	LDA @LOCAL03
	ASL
	ASL
	STA @VIRTUAL02
	TXA
	CLC
	ADC @VIRTUAL02
	STA @LOCAL05
	LDA @LOCAL01
	STA (@LOCAL05)
	TYA
	LDY #2
	STA (@LOCAL05),Y
	LDA @LOCAL01
	SEC
	SBC @VIRTUAL04
	STA @LOCAL05
	LDA @LOCAL06
	STA @VIRTUAL02
	LDY @LOCAL00
	TYA
	SEC
	SBC @VIRTUAL02
	STA @LOCAL04
@UNKNOWN3:
	LDA @LOCAL01
	STA @VIRTUAL04
	STY @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL06
	INC @LOCAL02
@UNKNOWN4:
	LDA @LOCAL02
	CMP @LOCAL07
	BCCL @UNKNOWN1
	LDA @LOCAL03
	INC
	STA @LOCAL07
@UNKNOWN6:
	LDA @LOCAL07
	END_C_FUNCTION
