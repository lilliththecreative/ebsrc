
BTLACT_MIRROR:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDX CURRENT_TARGET
	LDA a:battler::id,X
	TAX
	STX @LOCAL03
	LDX CURRENT_TARGET
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BEQL @UNKNOWN2
	LDX CURRENT_TARGET
	LDA a:battler::npc_id,X
	AND #$00FF
	BNEL @UNKNOWN2
	LDA #100
	JSR RAND_LIMIT
	STA @LOCAL02
	LDX @LOCAL03
	TXA
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC #enemy_data::mirror_success
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	AND #$00FF
	STA @VIRTUAL02
	LDA @LOCAL02
	CMP @VIRTUAL02
	BCS @UNKNOWN2
	LDX @LOCAL03
	STX MIRROR_ENEMY
	LDA #DEFAULT_MIRROR_TURN_COUNT
	STA MIRROR_TURN_TIMER
	LDA CURRENT_ATTACKER
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #.SIZEOF(battler)
	LDA #.LOWORD(UNKNOWN_7EAA14)
	JSL MEMCPY16
	LDA CURRENT_ATTACKER
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA CURRENT_TARGET
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	JSL COPY_MIRROR_DATA
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_METAMORPHOSE_OK
	BRA @UNKNOWN3
@UNKNOWN2:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_METAMORPHOSE_NG
@UNKNOWN3:
	END_C_FUNCTION
