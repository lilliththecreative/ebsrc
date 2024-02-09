
RECOVER_HP: ;$C27294
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	STX $16
	STA $02
	LDX $02
	LDA a:battler::consciousness,X
	AND #$00FF
	CMP #$0001
	BNE @UNKNOWN2
	LDX $02
	LDA a:battler::afflictions,X
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN1
	LDX $16
	STX $04
	TXA
	LDX $02
	CLC
	ADC a:battler::hp_target,X
	TAY
	STY $16
	TYX
	LDA $02
	JSR SET_HP
	LDX $02
	LDY $16
	TYA
	CMP a:battler::hp_max,X
	BCC @UNKNOWN0
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_HPMAX_KAIFUKU
	BRA @UNKNOWN2
@UNKNOWN0:
	LOADPTR MSG_BTL_HP_KAIFUKU, $0E
	MOVE_INT1632 $04, $06
	MOVE_INT $06, $12
	JSL DISPLAY_TEXT_WAIT
	BRA @UNKNOWN2
@UNKNOWN1:
	DISPLAY_BATTLE_TEXT_PTR MSG_BTL_HEAL_NG
@UNKNOWN2:
	PLD
	RTS
