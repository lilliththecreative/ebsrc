
HEAL_STRANGENESS:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDA CURRENT_TARGET
	CLC
	ADC #battler::afflictions + STATUS_GROUP::STRANGENESS
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	CMP #1
	BNE @RETURN
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_HEN_OFF
@RETURN:
	END_C_FUNCTION
