
BTLACT_STEAL: ;$C2889E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN1
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::npc_id,X
	AND #$00FF
	BNE @UNKNOWN1
	LDA .LOWORD(MIRROR_ENEMY)
	BEQ @UNKNOWN0
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	BNE @UNKNOWN0
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(RAM),X
	CMP #$0004
	BEQ @UNKNOWN1
@UNKNOWN0:
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::current_action_argument,X
	AND #$00FF
	BEQ @UNKNOWN1
	AND #$00FF
	TAX
	LDA #$00FF
	JSL TAKE_ITEM_FROM_CHARACTER
@UNKNOWN1:
	RTL
