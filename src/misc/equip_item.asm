
EQUIP_ITEM:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	STX @LOCAL01
	STA @LOCAL00
	TXA
	DEC
	STA @VIRTUAL02
	LDA @LOCAL00
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	CLC
	ADC #item::type
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #EQUIPMENT_SLOT::ALL<<2
	BEQ @UNKNOWN0
	CMP #EQUIPMENT_SLOT::BODY<<2
	BEQ @UNKNOWN1
	CMP #EQUIPMENT_SLOT::ARMS<<2
	BEQ @UNKNOWN2
	CMP #EQUIPMENT_SLOT::OTHER<<2
	BEQ @UNKNOWN3
	BRA @UNKNOWN4
@UNKNOWN0:
	LDX @LOCAL01
	LDA @LOCAL00
	JSL CHANGE_EQUIPPED_WEAPON
	BRA @UNKNOWN5
@UNKNOWN1:
	LDX @LOCAL01
	LDA @LOCAL00
	JSL CHANGE_EQUIPPED_BODY
	BRA @UNKNOWN5
@UNKNOWN2:
	LDX @LOCAL01
	LDA @LOCAL00
	JSL CHANGE_EQUIPPED_ARMS
	BRA @UNKNOWN5
@UNKNOWN3:
	LDX @LOCAL01
	LDA @LOCAL00
	JSL CHANGE_EQUIPPED_OTHER
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA #0
@UNKNOWN5:
	END_C_FUNCTION
