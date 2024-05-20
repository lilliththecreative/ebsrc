
BTLACT_DEFENSE_DOWN_A:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	JSR FAIL_ATTACK_ON_NPCS
	CMP #0
	BNE @UNKNOWN5
	JSR SUCCESS_LUCK80
	CMP #0
	BEQ @UNKNOWN4
	LDX CURRENT_TARGET
	LDY a:battler::defense,X
	STY @LOCAL02
	LDA CURRENT_TARGET
	JSR HEXADECIMATE_DEFENSE
	LDX CURRENT_TARGET
	LDY @LOCAL02
	TYA
	SEC
	SBC a:battler::defense,X
	STA @LOCAL02
	STA @VIRTUAL02
	LDA #0
	CLC
	SBC @VIRTUAL02
	BRANCHLTEQS @UNKNOWN2
	LDA #0
	STA @LOCAL02
@UNKNOWN2:
	LOADPTR MSG_BTL_DEFENSE_DOWN, @LOCAL00
	MOVE_INT1632S @LOCAL02, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL DISPLAY_TEXT_WAIT
	BRA @UNKNOWN5
@UNKNOWN4:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_KIKANAI
@UNKNOWN5:
	END_C_FUNCTION
