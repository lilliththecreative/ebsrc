
BOSS_BATTLE_CHECK:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16 ;bool
	END_STACK_VARS
	LDX #.LOWORD(BATTLERS_TABLE)
	STX @LOCAL01
	LDY #$0000
	STY @LOCAL00
	BRA @BEGIN_LOOP
@NEXT_ENEMY:
	LDA a:battler::consciousness,X
	AND #$00FF
	BEQ @NOT_BOSS
	LDA a:battler::ally_or_enemy,X
	AND #$00FF
	CMP #$0001
	BNE @NOT_BOSS
	LDA a:battler::id,X
	LDY #.SIZEOF(enemy_data)
	JSL MULT168
	CLC
	ADC #enemy_data::boss
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	AND #$00FF
	BEQ @NOT_BOSS
	LDA #$0000
	BRA @RETURN
@NOT_BOSS:
	LDY @LOCAL00
	INY
	STY @LOCAL00
	LDX @LOCAL01
	TXA
	CLC
	ADC #.SIZEOF(battler)
	TAX
	STX @LOCAL01
@BEGIN_LOOP:
	CPY #$0020
	BCC @NEXT_ENEMY
	LDA #$0001
@RETURN:
	END_C_FUNCTION
