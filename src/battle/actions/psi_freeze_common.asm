
PSI_FREEZE_COMMON: ;$C295CF
    @TMPDAMAGE = $12
    @DAMAGEDONE = $14
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	TAX
	STX @DAMAGEDONE
	JSR a:.LOWORD(ATK_FAIL_CHK)
	CMP #$0000
	BNE PSI_FREEZE_COMMON_RETURN
	JSR a:.LOWORD(PSI_SHIELD_NULLIFY)
	CMP #$0000
	BNE PSI_FREEZE_COMMON_RETURN
	LDX @DAMAGEDONE
	TXA
	JSR a:.LOWORD(TWENTY_FIVE_PERCENT_VARIANCE)
	STA @TMPDAMAGE
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::freeze_resist,X
	AND #$00FF
	TAX
	LDA @TMPDAMAGE
	JSR a:.LOWORD(CALC_RESIST_DAMAGE)
	TAX
	STX @DAMAGEDONE
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #$0001
	BEQ PSI_FREEZE_COMMON_WEAKEN_SHIELD
	LDX @DAMAGEDONE
	BEQ PSI_FREEZE_COMMON_WEAKEN_SHIELD
	LDA #$0064
	JSR a:.LOWORD(RAND_LIMIT)
	CMP #$0019
	BCS PSI_FREEZE_COMMON_WEAKEN_SHIELD
	LDY #STATUS_2::SOLIDIFIED
	LDX #STATUS_GROUP::TEMPORARY
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(INFLICT_STATUS_BATTLE)
	CMP #$0000
	BEQ PSI_FREEZE_COMMON_WEAKEN_SHIELD
	LOADPTR TEXT_BATTLE_BODY_SOLIDIFIED, $0E
	JSL DISPLAY_IN_BATTLE_TEXT
PSI_FREEZE_COMMON_WEAKEN_SHIELD:
	JSR a:.LOWORD(WEAKEN_SHIELD)
PSI_FREEZE_COMMON_RETURN:
	PLD
	RTS
