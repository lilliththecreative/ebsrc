
UNKNOWN_C240A4:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	MOVE_INT @PARAM00, @VIRTUAL06
	BRA @UNKNOWN1
@UNKNOWN0:
	JSL WINDOW_TICK
@UNKNOWN1:
	JSL UNKNOWN_C2EACF
	CMP #0
	BNE @UNKNOWN0
	LDA #.LOWORD(BATTLERS_TABLE) + (.SIZEOF(battler) * 8)
	STA CURRENT_TARGET
	LDX #8
	STX @LOCAL00
	BRA @UNKNOWN5
@UNKNOWN2:
	TXA
	JSL IS_CHAR_TARGETTED
	CMP #0
	BEQ @UNKNOWN4
	JSL FIX_TARGET_NAME
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQ @UNKNOWN4
	PHA
	MOVE_INT @VIRTUAL06, UNKNOWN_7E00BC
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN4:
	LDA CURRENT_TARGET
	CLC
	ADC #.SIZEOF(battler)
	STA CURRENT_TARGET
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN5:
	CPX #BATTLER_COUNT
	BCC @UNKNOWN2
	LDA #.LOWORD(BATTLERS_TABLE)
	STA CURRENT_TARGET
	LDX #0
	STX @LOCAL00
	BRA @UNKNOWN9
@UNKNOWN6:
	TXA
	JSL IS_CHAR_TARGETTED
	CMP #0
	BEQ @UNKNOWN8
	JSL FIX_TARGET_NAME
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	CMP32 @VIRTUAL06, @VIRTUAL0A
	BEQ @UNKNOWN8
	PHA
	MOVE_INT @VIRTUAL06, UNKNOWN_7E00BC
	PLA
	JSL UNKNOWN_C09279
@UNKNOWN8:
	LDA CURRENT_TARGET
	CLC
	ADC #.SIZEOF(battler)
	STA CURRENT_TARGET
	LDX @LOCAL00
	INX
	STX @LOCAL00
@UNKNOWN9:
	CPX #8
	BCC @UNKNOWN6
	END_C_FUNCTION
