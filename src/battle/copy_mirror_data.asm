
COPY_MIRROR_DATA:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32 "LOCAL00"
	STACK_RESERVE_INT32 "LOCAL01"
	STACK_RESERVE_INT16 "LOCAL02"
	STACK_RESERVE_INT16 "LOCAL03"
	STACK_RESERVE_INT32 "LOCAL04"
	STACK_RESERVE_INT32 "LOCAL05"
	STACK_RESERVE_INT32 "LOCAL06"
	STACK_RESERVE_INT16 "LOCAL07"
	STACK_RESERVE_INT32 "LOCAL08"
	STACK_RESERVE_INT16 "LOCAL09"
	STACK_RESERVE_INT32 "LOCAL0A"
	STACK_RESERVE_INT16 "LOCAL0B"
	STACK_RESERVE_INT32 "LOCAL0C"
	STACK_RESERVE_INT16 "LOCAL0D"
	STACK_RESERVE_INT32 "LOCAL0E"
	STACK_RESERVE_INT16 "LOCAL0F"
	STACK_RESERVE_INT32 "LOCAL10"
	STACK_RESERVE_INT16 "LOCAL11"
	STACK_RESERVE_INT32 "LOCAL12"
	STACK_RESERVE_INT32 "LOCAL13"
	STACK_RESERVE_INT32 "LOCAL14"
	STACK_RESERVE_PARAM_INT32 ;FAR battler*
	STACK_RESERVE_PARAM_INT32 ;FAR battler*
	END_STACK_VARS
	MOVE_INT @PARAM01, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL14
	MOVE_INT @PARAM00, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL13
	LDA #battler::hp
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL12
	LDA @VIRTUAL06+2
	STA @LOCAL12+2
	LDA [@LOCAL12]
	STA @LOCAL11
	LDA #battler::pp
	MOVE_INTX @LOCAL13, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL10
	LDA @VIRTUAL06+2
	STA @LOCAL10+2
	LDA [@LOCAL10]
	STA @LOCAL0F
	LDA #battler::hp_target
	MOVE_INTX @LOCAL13, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL0E
	LDA @VIRTUAL06+2
	STA @LOCAL0E+2
	LDA [@LOCAL0E]
	STA @LOCAL0D
	LDA #battler::pp_target
	MOVE_INTX @LOCAL13, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL0C
	LDA @VIRTUAL06+2
	STA @LOCAL0C+2
	LDA [@LOCAL0C]
	STA @LOCAL0B
	LDA #battler::hp_max
	MOVE_INTX @LOCAL13, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL0A
	LDA @VIRTUAL06+2
	STA @LOCAL0A+2
	LDA [@LOCAL0A]
	STA @LOCAL09
	LDA #battler::pp_max
	MOVE_INTX @LOCAL13, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL08
	LDA @VIRTUAL06+2
	STA @LOCAL08+2
	LDA [@LOCAL08]
	STA @LOCAL07
	LDA #battler::ally_or_enemy
	MOVE_INTX @LOCAL13, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL06
	LDA @VIRTUAL06+2
	STA @LOCAL06+2
	LDA [@LOCAL06]
	AND #$00FF
	STA @VIRTUAL04
	LDA #battler::row
	MOVE_INTX @LOCAL13, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL05
	LDA @VIRTUAL06+2
	STA @LOCAL05+2
	LDA [@LOCAL05]
	AND #$00FF
	STA @VIRTUAL02
	MOVE_INT @LOCAL13, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	LDA [@LOCAL04]
	TAY
	STY @LOCAL03
	LDA #battler::has_taken_turn
	MOVE_INTX @LOCAL13, @VIRTUAL06
	MOVE_INTX @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	TAX
	STX @LOCAL02
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL14, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #.SIZEOF(battler)
	JSL MEMCPY24
	LDA @LOCAL11
	STA [@LOCAL12]
	LDA @LOCAL0F
	STA [@LOCAL10]
	LDA @LOCAL0D
	STA [@LOCAL0E]
	LDA @LOCAL0B
	STA [@LOCAL0C]
	LDA @LOCAL09
	STA [@LOCAL0A]
	LDA @LOCAL07
	STA [@LOCAL08]
	LDA @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	STA [@LOCAL06]
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	STA [@LOCAL05]
	LDY @LOCAL03
	REP #PROC_FLAGS::ACCUM8
	TYA
	STA [@LOCAL04]
	LDX @LOCAL02
	TXA
	SEP #PROC_FLAGS::ACCUM8
	STA [@VIRTUAL0A]
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTL
