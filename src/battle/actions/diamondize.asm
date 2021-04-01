
BTLACT_DIAMONDIZE: ;$C289CE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	JSR a:.LOWORD(ATK_FAIL_CHK)
	CMP #$0000
	BEQ @UNKNOWN0
	JMP a:.LOWORD(@UNKNOWN4)
@UNKNOWN0:
	LDX .LOWORD(CURRENT_TARGET)
	SEP #PROC_FLAGS::ACCUM8
	LDA a:battler::paralysis_resist,X
	JSR a:.LOWORD(SUCCESS_255)
	.A16
	CMP #$0000
	BNE @UNKNOWN1
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN1:
	LDY #STATUS_0::DIAMONDIZED
	LDX #STATUS_GROUP::PERSISTENT_EASYHEAL
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(INFLICT_STATUS_BATTLE)
	CMP #$0000
	BNE @UNKNOWN2
	JMP a:.LOWORD(@UNKNOWN3)
@UNKNOWN2:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	LDX .LOWORD(CURRENT_TARGET)
	STA a:battler::afflictions + STATUS_GROUP::SHIELD,X
	LDX .LOWORD(CURRENT_TARGET)
	STA a:battler::afflictions + STATUS_GROUP::HOMESICKNESS,X
	LDX .LOWORD(CURRENT_TARGET)
	STA a:battler::afflictions + STATUS_GROUP::CONCENTRATION,X
	LDX .LOWORD(CURRENT_TARGET)
	STA a:battler::afflictions + STATUS_GROUP::STRANGENESS,X
	LDX .LOWORD(CURRENT_TARGET)
	STA a:battler::afflictions + STATUS_GROUP::TEMPORARY,X
	LDX .LOWORD(CURRENT_TARGET)
	STA a:battler::afflictions + STATUS_GROUP::PERSISTENT_HARDHEAL,X
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CURRENT_TARGET)
	CLC
	ADC #battler::exp
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $0A
	MOVE_INT .LOWORD(BATTLE_EXP_SCRATCH), $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, .LOWORD(BATTLE_EXP_SCRATCH)
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::money,X
	CLC
	ADC .LOWORD(BATTLE_MONEY_SCRATCH)
	STA .LOWORD(BATTLE_MONEY_SCRATCH)
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_WAS_DIAMONDIZED
	BRA @UNKNOWN4
@UNKNOWN3:
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_IT_DIDNT_WORK_ON_X
@UNKNOWN4:
	PLD
	RTL
