
UNKNOWN_C4D2A8:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA UNKNOWN_7EB4B2
	BNE @UNKNOWN2
	LDA #12
	STA UNKNOWN_7EB4B2
	LDX CUR_TEXT_PAL + BPP4PALETTE_SIZE * 8 + 1 * 2
	STX @LOCAL01
	LDA #130
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	DEC
	ASL
	PHA
	LDA @LOCAL00
	ASL
	TAX
	LDA CUR_TEXT_PAL,X
	PLX
	STA CUR_TEXT_PAL,X
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	CMP #136
	BCC @UNKNOWN0
	LDX @LOCAL01
	STX CUR_TEXT_PAL + BPP4PALETTE_SIZE * 8 + 7 * 2
	LDA #16
	JSL UNKNOWN_C0856B
@UNKNOWN2:
	DEC UNKNOWN_7EB4B2
	END_C_FUNCTION
