
BTLACT_SOLIDIFY_2:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	JSR SUCCESS_LUCK80
	CMP #0
	BEQ @UNKNOWN0
	LDY #STATUS_2::SOLIDIFIED
	LDX #STATUS_GROUP::TEMPORARY
	LDA CURRENT_TARGET
	JSR INFLICT_STATUS_BATTLE
	CMP #0
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KOORI_ON
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
@UNKNOWN1:
	END_C_FUNCTION
