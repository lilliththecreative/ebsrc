
BTLACT_LEVEL_2_ATK:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX CURRENT_ATTACKER
	LDA a:battler::offense,X
	ASL
	LDX CURRENT_TARGET
	SEC
	SBC a:battler::defense,X
	STA @LOCAL00
	CLC
	SBC #0
	BRANCHLTEQS @UNKNOWN2
	LDA @LOCAL00
	JSR TWENTY_FIVE_PERCENT_VARIANCE
	STA @LOCAL00
@UNKNOWN2:
	LDA @LOCAL00
	CLC
	SBC #0
	BRANCHGTS @UNKNOWN5
	LDA #1
	STA @LOCAL00
@UNKNOWN5:
	LDX #$00FF
	LDA @LOCAL00
	JSR CALC_RESIST_DAMAGE
	END_C_FUNCTION

