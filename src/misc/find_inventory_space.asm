
FIND_INVENTORY_SPACE:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	DEC
	STA @LOCAL00
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA @LOCAL00
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	BNE @UNKNOWN1
	LDA @LOCAL00
	INC
	BRA @UNKNOWN5
@UNKNOWN1:
	INC @VIRTUAL02
@UNKNOWN2:
	LDA #.SIZEOF(char_struct::items)
	CLC
	SBC @VIRTUAL02
	BRANCHGTS @UNKNOWN0
	LDA #FALSE
@UNKNOWN5:
	END_C_FUNCTION
