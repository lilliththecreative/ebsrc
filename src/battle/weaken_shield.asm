
WEAKEN_SHIELD:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	STZ UNKNOWN_7EAA94
	LDA UNKNOWN_7EAA96
	BEQ @UNKNOWN1
	JSR SWAP_ATTACKER_WITH_TARGET
	LDA CURRENT_TARGET
	CLC
	ADC #battler::shield_hp
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BNE @UNKNOWN0
	LDX CURRENT_TARGET
	SEP #PROC_FLAGS::ACCUM8
	STZ a:battler::afflictions + STATUS_GROUP::SHIELD,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_SHIELD_OFF
@UNKNOWN0:
	STZ UNKNOWN_7EAA96
@UNKNOWN1:
	END_C_FUNCTION
