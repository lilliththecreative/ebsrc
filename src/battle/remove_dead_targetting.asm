
REMOVE_DEAD_TARGETTING:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	TXA
	JSL IS_CHAR_TARGETTED
	CMP #0
	BEQ @UNKNOWN1
	LDX @LOCAL00
	TXA
	LDY #.SIZEOF(battler)
	JSL MULT168
	TAX
	LDA BATTLERS_TABLE+battler::afflictions,X
	AND #$00FF
	CMP #STATUS_0::UNCONSCIOUS
	BNE @UNKNOWN1
	LDX @LOCAL00
	TXA
	JSL REMOVE_TARGET
@UNKNOWN1:
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN2:
	CPX #BATTLER_COUNT
	BCC @UNKNOWN0
	END_C_FUNCTION
