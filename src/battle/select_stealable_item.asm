
SELECT_STEALABLE_ITEM:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	JSR FIND_STEALABLE_ITEMS
	TAX
	STX @LOCAL00
	BNE @UNKNOWN0
	LDA #0
	BRA @UNKNOWN2
@UNKNOWN0:
	JSL RAND
	AND #$0080
	BEQ @UNKNOWN1
	LDA #0
	BRA @UNKNOWN2
@UNKNOWN1:
	LDX @LOCAL00
	TXA
	JSR RAND_LIMIT
	TAX
	LDA STEALABLE_ITEM_CANDIDATES,X
	AND #$00FF
@UNKNOWN2:
	END_C_FUNCTION
