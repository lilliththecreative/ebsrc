
UNKNOWN_C47B77:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA #.LOWORD(-1)
	STA BG3_Y_POS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA @LOCAL02
	LDA ENTITY_SCRIPT_VAR1_TABLE,X
	STA @VIRTUAL04
	LOADPTR ANIMATION_SEQUENCE_POINTERS, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA @LOCAL02
	ASL
	ASL
	ASL
	STA @VIRTUAL02
	LDY #1792
	LDA @VIRTUAL04
	JSL MULT16
	STORE_INT1632 @VIRTUAL0A
	LDA @VIRTUAL02
	INC
	INC
	INC
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STORE_INT1632 @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	CLC
	VAR_ADD_CONST_INT_ASSIGN $7F0008, @VIRTUAL06
	COPY_TO_VRAM1P @VIRTUAL06, VRAM::TEXT_LAYER_TILEMAP, $0700, 0
	.A16
	LDA @VIRTUAL02
	CLC
	ADC #6
	MOVE_INTX @LOCAL01, @VIRTUAL06
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	PHA
	LDA @VIRTUAL04
	INC
	PLY
	STY @VIRTUAL04
	CMP @VIRTUAL04
	BNE @UNKNOWN0
	LDA #0
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @VIRTUAL02
	CLC
	ADC #7
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
@UNKNOWN1:
	END_C_FUNCTION
