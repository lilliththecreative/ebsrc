
UNKNOWN_C1DCCB: ;$C1DCCB
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 15
	STA $04
	JSL UNKNOWN_C200D9
	LDA #$0001
	STA .LOWORD(BATTLE_MODE_FLAG)
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY #$0001
	LDX $04
	LDA $02
	JSR a:.LOWORD(RESET_CHAR_LEVEL_ONE)
	LDY #$0000
	LDX #$0064
	LDA $02
	JSR a:.LOWORD(RECOVER_HP_AMTPERCENT)
	LDY #$0000
	LDX #$0064
	LDA $02
	JSR a:.LOWORD(RECOVER_PP_AMTPERCENT)
	LDA $02
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_hp_target,Y
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,Y
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_pp_target,Y
	STA .LOWORD(CHAR_STRUCT)+char_struct::current_pp,Y
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #$0007
	REP #PROC_FLAGS::ACCUM8
	TYA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::afflictions
	JSL MEMSET16
	INC $02
@UNKNOWN1:
	LDA $02
	CMP #$0004
	BCC @UNKNOWN0
	BEQ @UNKNOWN0
	PLD
	RTL