;A = battler* target, X = ???
LOSE_HP_STATUS: ;$C2BCE6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $02
	TAY
	LDA a:battler::hp_target,Y
	STA $0E
	STA $04
	LDA $02
	CMP $04
	BLTEQ @UNKNOWN0
	LDA #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $0E
	SEC
	SBC $02
@UNKNOWN1:
	TAX
	TYA
	JSR SET_HP
	PLD
	RTL
