
UNKNOWN_C0BD96:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
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
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA GAME_STATE+game_state::current_party_members
	STA @LOCAL0C
	LDA #.LOWORD(PATHFINDING_STATE)
	STA @LOCAL0B
	LDA #56
	STA PATHFINDING_STATE + pathfinding::radius
	STA PATHFINDING_STATE + pathfinding::radius + 2
	LDA PATHFINDING_STATE + pathfinding::radius
	LSR
	STA @VIRTUAL04
	STA PATHFINDING_TARGET_WIDTH
	LDA PATHFINDING_STATE + pathfinding::radius + 2
	LSR
	STA @VIRTUAL02
	STA @LOCAL0A
	LDA @VIRTUAL02
	STA PATHFINDING_TARGET_HEIGHT
	LDA @LOCAL0C
	ASL
	STA @LOCAL0C
	CLC
	ADC #.LOWORD(ENTITY_ABS_X_TABLE)
	TAY
	STY @LOCAL09
	LOADPTR UNKNOWN_C42A1F, @LOCAL08
	LDA @LOCAL0C
	CLC
	ADC #.LOWORD(ENTITY_SIZES)
	STA @LOCAL07
	LDA (@LOCAL07)
	ASL
	PHA
	LDA __BSS_START__,Y
	PLY
	SEC
	SBC [@LOCAL08],Y
	LSR
	LSR
	LSR
	STA PATHFINDING_TARGET_CENTRE_X
	LDA @LOCAL0C
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAX
	LOADPTR UNKNOWN_C42A41, @VIRTUAL0A
	LDA (@LOCAL07)
	ASL
	STA @LOCAL06
	LOADPTR UNKNOWN_C42AEB, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL05
	LDA @LOCAL06
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
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	LSR
	LSR
	LSR
	STA PATHFINDING_TARGET_CENTRE_Y
	LDA (@LOCAL07)
	ASL
	STA @LOCAL06
	PHA
	LDY @LOCAL09
	LDA __BSS_START__,Y
	PLY
	SEC
	SBC [@LOCAL08],Y
	LSR
	LSR
	LSR
	SEC
	SBC @VIRTUAL04
	STA @VIRTUAL04
	LDA @LOCAL06
	MOVE_INTY @LOCAL05, @VIRTUAL06
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
	LDA __BSS_START__,X
	SEC
	SBC @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	LSR
	LSR
	LSR
	LDX @LOCAL0A
	STX @VIRTUAL02
	SEC
	SBC @VIRTUAL02
	STA @VIRTUAL02
	STA @LOCAL00
	LDY @VIRTUAL04
	LDX #1
	LDA @LOCAL0B
	JSR UNKNOWN_C0B9BC
	LDA @VIRTUAL02
	STA @LOCAL00
	LDA #1
	STA @LOCAL01
	LDA #252
	STA @LOCAL02
	LDA #50
	STA @LOCAL03
	LDY @VIRTUAL04
	LDX #1
	LDA @LOCAL0B
	JSR UNKNOWN_C0BA35
	STA @LOCAL0C
	CMP #0
	BNEL @UNKNOWN1
	LDX PATHFINDING_STATE + pathfinding::pathfinders + pathfinder::object_index
	TXA
	ASL
	STA @VIRTUAL02
	STA @LOCAL04
	LDX @VIRTUAL02
	LDY ENTITY_SIZES,X
	TYA
	ASL
	TAX
	STX @LOCAL0B
	TXY
	LDA PATHFINDING_STATE + pathfinding::pathfinders + pathfinder::origin + 2
	ASL
	ASL
	ASL
	CLC
	ADC [@LOCAL08],Y
	STA @VIRTUAL04
	LDA PATHFINDING_TARGET_CENTRE_X
	SEC
	SBC PATHFINDING_TARGET_WIDTH
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL04
	LDX @VIRTUAL02
	STA ENTITY_ABS_X_TABLE,X
	LDX @LOCAL0B
	TXA
	MOVE_INTY @VIRTUAL0A, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	PHA
	TXA
	MOVE_INTX @LOCAL05, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	LDA PATHFINDING_STATE + pathfinding::pathfinders + pathfinder::origin
	ASL
	ASL
	ASL
	SEC
	SBC @VIRTUAL02
	PLY
	STY @VIRTUAL02
	CLC
	ADC @VIRTUAL02
	STA @VIRTUAL04
	LDA PATHFINDING_TARGET_CENTRE_Y
	SEC
	SBC PATHFINDING_TARGET_HEIGHT
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL04
	LDX @LOCAL04
	STX @VIRTUAL02
	STA ENTITY_ABS_Y_TABLE,X
	LDA @VIRTUAL02
	CLC
	ADC #.LOWORD(ENTITY_PATH_POINTS)
	TAX
	LDA __BSS_START__,X
	INC
	INC
	INC
	INC
	STA __BSS_START__,X
	LDA @VIRTUAL02
	CLC
	ADC #.LOWORD(ENTITY_PATH_POINT_COUNTS)
	TAX
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	LDA @LOCAL0C
@UNKNOWN1:
	PLD
	RTL