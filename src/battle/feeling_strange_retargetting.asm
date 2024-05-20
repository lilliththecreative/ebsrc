
FEELING_STRANGE_RETARGETTING:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	END_STACK_VARS
	MOVE_INT_CONSTANT 0, BATTLER_TARGET_FLAGS
	LDX CURRENT_ATTACKER
	LDA a:battler::action_targetting,X
	AND #$00FF
	AND #$0007
	CMP #ACTION_TARGET::ONE
	BEQ @UNKNOWN0
	CMP #ACTION_TARGET::RANDOM
	BEQ @UNKNOWN1
	CMP #ACTION_TARGET::ALL
	BEQ @UNKNOWN2
	BRA @UNKNOWN5
@UNKNOWN0:
	JSL TARGET_ALL
	MOVE_INT BATTLER_TARGET_FLAGS, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL RANDOM_TARGETTING
	MOVE_INT @VIRTUAL06, BATTLER_TARGET_FLAGS
	BRA @UNKNOWN5
@UNKNOWN1:
	JSL RAND
	LDY #3
	JSL MODULUS16
	JSL TARGET_ROW
	BRA @UNKNOWN5
@UNKNOWN2:
	JSL RAND
	AND #$0001
	BEQ @UNKNOWN3
	JSL TARGET_ALLIES
	BRA @UNKNOWN4
@UNKNOWN3:
	JSL TARGET_ALL_ENEMIES
@UNKNOWN4:
	LDX CURRENT_ATTACKER
	LDA a:battler::current_action,X
	JSL GET_SHIELD_TARGETTING
	CMP #0
	BNE @UNKNOWN5
	LDX CURRENT_ATTACKER
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BNE @UNKNOWN5
	JSL REMOVE_NPC_TARGETTING
@UNKNOWN5:
	END_C_FUNCTION
