
BTLACT_FEELSTRANGE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	JSR FAIL_ATTACK_ON_NPCS
	CMP #0
	BNE @UNKNOWN1
	LDY #STATUS_3::STRANGE
	LDX #STATUS_GROUP::STRANGENESS
	LDA CURRENT_TARGET
	JSR INFLICT_STATUS_BATTLE
	CMP #0
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_HEN_ON
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
@UNKNOWN1:
	END_C_FUNCTION
