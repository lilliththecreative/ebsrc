
FIND_PATH_TO_PARTY:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int
	END_STACK_VARS
.IF .DEFINED(JPN) ;B? 8? hope your font is good
	@LOCAL0BALT := @LOCAL08
	@LOCAL08ALT := @LOCAL0B
.ELSE
	@LOCAL08ALT := @LOCAL08
	@LOCAL0BALT := @LOCAL0B
.ENDIF
	STA @LOCAL0C
	LDA GAME_STATE+game_state::current_party_members
	STA @LOCAL0B
	LDA #.LOWORD(UNKNOWN_7EF200)
	STA @LOCAL0A
	STX UNKNOWN_7EF200 + pathfinding::radius
	STY UNKNOWN_7EF200 + pathfinding::radius + 2
	LDA UNKNOWN_7EF200 + pathfinding::radius
	LSR
	STA @VIRTUAL04
	STA UNKNOWN_7E4A92
	LDA UNKNOWN_7EF200 + pathfinding::radius + 2
	LSR
	STA @VIRTUAL02
	STA @LOCAL09
	LDA @VIRTUAL02
	STA UNKNOWN_7E4A94
	LDA @LOCAL0B
	ASL
	STA @LOCAL0BALT
	CLC
	ADC #.LOWORD(ENTITY_ABS_X_TABLE)
	TAY
	STY @LOCAL08ALT
	LOADPTR UNKNOWN_C42A1F, @VIRTUAL0A
	LDA @LOCAL0BALT
	CLC
	ADC #.LOWORD(ENTITY_SIZES)
	STA @LOCAL07
	LDA (@LOCAL07)
	ASL
	MOVE_INTX @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	LDA __BSS_START__,Y
	SEC
	SBC @VIRTUAL02
	LSR
	LSR
	LSR
	STA UNKNOWN_7E4A8E
	LDA @LOCAL0BALT
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAX
	LOADPTR UNKNOWN_C42A41, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL06
	LDA (@LOCAL07)
	ASL
	STA @LOCAL05
	LOADPTR UNKNOWN_C42AEB, @LOCAL04
	LDA @LOCAL05
	TAY
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL02
	CLC
	ADC [@LOCAL04],Y
	LSR
	LSR
	LSR
	STA UNKNOWN_7E4A90
	LDA (@LOCAL07)
	ASL
	STA @LOCAL05
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	STA @VIRTUAL02
	LDY @LOCAL08ALT
	LDA __BSS_START__,Y
	SEC
	SBC @VIRTUAL02
	LSR
	LSR
	LSR
	SEC
	SBC @VIRTUAL04
	STA @VIRTUAL04
	LDA @LOCAL05
	TAY
	PHA
	MOVE_INT @LOCAL06, @VIRTUAL06
	PLA
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL02
	CLC
	ADC [@LOCAL04],Y
	LSR
	LSR
	LSR
	LDX @LOCAL09
	STX @VIRTUAL02
	SEC
	SBC @VIRTUAL02
	STA @VIRTUAL02
	STA @LOCAL00
	LDY @VIRTUAL04
	LDX @LOCAL0C
	LDA @LOCAL0A
	JSR UNKNOWN_C0B9BC
	LDA @VIRTUAL02
	STA @LOCAL00
	STZ_BADOPT @LOCAL01
	LDA #64
	STA @LOCAL02
	LDA #50
	STA @LOCAL03
	LDY @VIRTUAL04
	LDX @LOCAL0C
	LDA @LOCAL0A
	JSR UNKNOWN_C0BA35
	END_C_FUNCTION
