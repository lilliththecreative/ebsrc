
UNKNOWN_C0BF72:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	STA @LOCAL0B
	LDA #.LOWORD(UNKNOWN_7EF200)
	STA @LOCAL0A
	LDA #56
	STA UNKNOWN_7EF200 + pathfinding::radius
	STA UNKNOWN_7EF200 + pathfinding::radius + 2
	LDA UNKNOWN_7EF200 + pathfinding::radius
	LSR
	STA @VIRTUAL04
	STA UNKNOWN_7E4A92
	LDA UNKNOWN_7EF200 + pathfinding::radius + 2
	LSR
	STA @LOCAL09
	STA UNKNOWN_7E4A94
	LDA @LOCAL0B
	ASL
	STA @LOCAL0B
	CLC
	ADC #.LOWORD(ENTITY_ABS_X_TABLE)
	STA @VIRTUAL02
	STA @LOCAL08
	LOADPTR UNKNOWN_C42A1F, @LOCAL07
	LDA @LOCAL0B
	CLC
	ADC #.LOWORD(ENTITY_SIZES)
	TAX
	STX @LOCAL06
	LDA __BSS_START__,X
	ASL
	TAY
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	SEC
	SBC [@LOCAL07],Y
	LSR
	LSR
	LSR
	STA UNKNOWN_7E4A8E
	LDA @LOCAL0B
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAY
	STY @LOCAL0B
	LOADPTR UNKNOWN_C42A41, @VIRTUAL0A
	LDX @LOCAL06
	LDA __BSS_START__,X
	ASL
	STA @LOCAL05
	LOADPTR UNKNOWN_C42AEB, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL04
	LDA @LOCAL05
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	PHA
	LDA @LOCAL05
	PHA
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	PLA
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	LDA __BSS_START__,Y
	SEC
	SBC @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	LSR
	LSR
	LSR
	STA UNKNOWN_7E4A90
	LDA __BSS_START__,X
	ASL
	STA @LOCAL06
	TAY
	LDA @LOCAL08
	STA @VIRTUAL02
	LDX @VIRTUAL02
	LDA __BSS_START__,X
	SEC
	SBC [@LOCAL07],Y
	LSR
	LSR
	LSR
	SEC
	SBC @VIRTUAL04
	TAX
	LDA @LOCAL06
	MOVE_INTY @LOCAL04, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	PHA
	LDA @LOCAL06
	MOVE_INTY @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	LDY @LOCAL0B
	LDA __BSS_START__,Y
	SEC
	SBC @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	LSR
	LSR
	LSR
	SEC
	SBC @LOCAL09
	STA @LOCAL0B
	LDA @VIRTUAL04
	AND #$003F
	STA UNKNOWN_7EF200 + pathfinding::targets + 2
	LDA UNKNOWN_7E4A94
	AND #$003F
	STA UNKNOWN_7EF200 + pathfinding::targets
	LDA @LOCAL0B
	STA @LOCAL00
	LDA #1
	STA @LOCAL01
	LDA #252
	STA @LOCAL02
	LDA #50
	STA @LOCAL03
	TXY
	LDX #1
	LDA @LOCAL0A
	JSR UNKNOWN_C0BA35
	END_C_FUNCTION
