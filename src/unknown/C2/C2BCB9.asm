;A = battler* target, X = ???
UNKNOWN_C2BCB9: ;$C2BCB9
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	STX $02
	TAY
	LDA a:battler::pp_target,Y
	STA $0E
	STA $04
	LDA $02
	CMP $04
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	LDA #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $0E
	SEC
	SBC $02
@UNKNOWN1:
	TAX
	TYA
	JSR a:.LOWORD(SET_PP)
	PLD
	RTL