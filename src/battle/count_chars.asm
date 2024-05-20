
COUNT_CHARS:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_PARAM_INT16 ;int side
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STA @VIRTUAL04
	LDA #$0000
	STA @VIRTUAL02
	LDX #.LOWORD(BATTLERS_TABLE)
	TAY
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP @VIRTUAL04
	BNE @UNKNOWN1
	LDA a:battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN1
	LDA a:battler::afflictions,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN1
	CMP #$0002
	BEQ @UNKNOWN1
	INC @VIRTUAL02
@UNKNOWN1:
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	INY
@UNKNOWN2:
	CPY #$0020
	BCC @UNKNOWN0
	LDA @VIRTUAL02
	END_C_FUNCTION
