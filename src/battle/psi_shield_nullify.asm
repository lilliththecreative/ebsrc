
PSI_SHIELD_NULLIFY:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	LDA #1
	STA UNKNOWN_7EAA94
	LDX CURRENT_ATTACKER
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::current_action_argument,X
	JSL REDIRECT_C1ACF8
	.A16
	LDX CURRENT_ATTACKER
	LDA a:battler::current_action,X
	OPTIMIZED_MULT $04, 12
	TAX
	INX
	INX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	CMP #ACTION_TYPE::PSI
	BEQ @UNKNOWN2
	LDA #0
	BRA @RETURN
@UNKNOWN2:
	LDX CURRENT_TARGET
	LDA a:battler::afflictions + STATUS_GROUP::SHIELD,X
	AND #$00FF
	CMP #STATUS_6::PSI_SHIELD_POWER
	BEQ @REFLECT_PSI
	CMP #STATUS_6::PSI_SHIELD
	BEQ @ABSORB_PSI
	BRA @UNKNOWN6
@REFLECT_PSI:
	.A16
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_PSYPOWER_TURN
	LDA #1
	STA UNKNOWN_7EAA96
	JSR SWAP_ATTACKER_WITH_TARGET
	BRA @UNKNOWN6
@ABSORB_PSI:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_PSYCO_TURN
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
	BNE @UNKNOWN5
	LDX CURRENT_TARGET
	SEP #PROC_FLAGS::ACCUM8
	STZ a:battler::afflictions + STATUS_GROUP::SHIELD,X
	REP #PROC_FLAGS::ACCUM8
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_SHIELD_OFF
@UNKNOWN5:
	LDA #1
	BRA @RETURN
@UNKNOWN6:
	LDA #0
@RETURN:
	END_C_FUNCTION
