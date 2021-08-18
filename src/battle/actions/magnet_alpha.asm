
BTLACT_MAGNET_A: ;$C29F5E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::pp_target,X
	BNE @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR TEXT_BATTLE_DOES_NOT_HAVE_ANY_PP
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA #$0004
	JSR a:.LOWORD(RAND_LIMIT)
	TAX
	STX $16
	LDA #$0004
	JSR a:.LOWORD(RAND_LIMIT)
	STA $02
	LDX $16
	TXA
	CLC
	ADC $02
	STA $02
	INC $02
	INC $02
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:battler::pp_target,X
	CMP $02
	BCS @UNKNOWN1
	STA $02
@UNKNOWN1:
	LOADPTR TEXT_BATTLE_DRAINED_PP, $0E
	MOVE_INT832 $02, $06
	BPL @UNKNOWN2
	DEC $08
@UNKNOWN2:
	MOVE_INT $06, $12
	JSL DISPLAY_TEXT_WAIT
	LDX $02
	LDA .LOWORD(CURRENT_TARGET)
	JSR a:.LOWORD(REDUCE_PP)
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA $02
	CLC
	ADC a:battler::pp_target,X
	TAX
	LDA .LOWORD(CURRENT_ATTACKER)
	JSR a:.LOWORD(SET_PP)
@UNKNOWN3:
	PLD
	RTL
