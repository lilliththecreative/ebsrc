
BTLACT_HYPNOSIS_A: ;$C29F06
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	JSR a:.LOWORD(ATK_FAIL_CHK)
	CMP #$0000
	BNE @UNKNOWN1
	LDX .LOWORD(CURRENT_TARGET)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::hypnosis_resist,X
	JSR a:.LOWORD(SUCCESS_255)
	.A16
	CMP #$0000
	BEQ @UNKNOWN0
	LDY #STATUS_2::ASLEEP
	LDX #STATUS_GROUP::TEMPORARY
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(INFLICT_STATUS_BATTLE)
	.A16
	CMP #$0000
	BEQ @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_FELL_ASLEEP
	BRA @UNKNOWN1
@UNKNOWN0:
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_IT_DIDNT_WORK_ON_X
@UNKNOWN1:
	PLD
	RTL