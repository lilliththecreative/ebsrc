
GIYGAS_HURT_PRAYER:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int damage
	END_STACK_VARS
	TAX
	STX @LOCAL00
	LDA #1*SECOND
	JSR WAIT
	LDA #.LOWORD(BATTLERS_TABLE) + (.SIZEOF(battler) * 8)
	STA CURRENT_TARGET
	JSL FIX_TARGET_NAME
	LDA #1*SECOND
	STA GREEN_FLASH_DURATION
	LDA #1
	STA UNKNOWN_7EAA8E
	LDX @LOCAL00
	TXA
	JSR TWENTY_FIVE_PERCENT_VARIANCE
	LDX #$00FF
	JSR CALC_RESIST_DAMAGE
	LDA #1*SECOND
	JSR WAIT
	END_C_FUNCTION
