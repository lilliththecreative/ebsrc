
FIND_CONDIMENT:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int item
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	AND #$00FF
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	CLC
	ADC #item::type
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #$003C
	CMP #$0020
	BNE @UNKNOWN3
	LDX CURRENT_ATTACKER
	LDA __BSS_START__,X
	TAY
	DEY
	STY @LOCAL02
	LDX #0
	STX @LOCAL01
	BRA @UNKNOWN2
@UNKNOWN0:
	AND #$00FF
	STA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	CLC
	ADC #item::type
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #$003C
	CMP #$0028
	BNE @UNKNOWN1
	LDA @LOCAL00
	BRA @UNKNOWN4
@UNKNOWN1:
	LDX @LOCAL01
	INX
	STX @LOCAL01
@UNKNOWN2:
	CPX #.SIZEOF(char_struct::items)
	BCS @UNKNOWN3
	STX @VIRTUAL02
	LDY @LOCAL02
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	BNE @UNKNOWN0
@UNKNOWN3:
	LDA #FALSE
@UNKNOWN4:
	END_C_FUNCTION
