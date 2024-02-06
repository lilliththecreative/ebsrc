
REMOVE_NPC_TARGETTING:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX #.LOWORD(BATTLERS_TABLE)
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA a:battler::npc_id,X
	AND #$00FF
	BEQ @UNKNOWN1
	LOADPTR POWERS_OF_TWO_32BIT, @VIRTUAL06
	LDA @LOCAL00
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL0A
	LDA @VIRTUAL0A
	EOR #$FFFF
	STA @VIRTUAL0A
	LDA @VIRTUAL0A+2
	EOR #$FFFF
	STA @VIRTUAL0A+2
	MOVE_INT BATTLER_TARGET_FLAGS, @VIRTUAL06
	AND_INT_ASSIGN @VIRTUAL06 ,@VIRTUAL0A
	MOVE_INT @VIRTUAL06, BATTLER_TARGET_FLAGS
@UNKNOWN1:
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN2:
	CMP #BATTLER_COUNT
	BCC @UNKNOWN0
	END_C_FUNCTION
