
UNKNOWN_C0BD96: ;$C0BD96
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 44
	LDA GAME_STATE+game_state::current_party_members
<<<<<<< HEAD
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
=======
	STA $2A
	LDA #.LOWORD(UNKNOWN_7EF200)
	STA $28
	LDA #$0038
	STA UNKNOWN_7EF200 + pathfinding::radius
	STA UNKNOWN_7EF200 + pathfinding::radius + 2
	LDA UNKNOWN_7EF200 + pathfinding::radius
	LSR
	STA $04
	STA UNKNOWN_7E4A92
	LDA UNKNOWN_7EF200 + pathfinding::radius + 2
	LSR
	STA $02
	STA $26
	LDA $02
	STA UNKNOWN_7E4A94
	LDA $2A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	STA $2A
	CLC
	ADC #.LOWORD(ENTITY_ABS_X_TABLE)
	TAY
	STY $24
	LOADPTR UNKNOWN_C42A1F, $20
	LDA $2A
	CLC
	ADC #.LOWORD(ENTITY_SIZES)
	STA $1E
	LDA ($1E)
	ASL
	PHA
	LDA __BSS_START__,Y
	PLY
	SEC
	SBC [$20],Y
	LSR
	LSR
	LSR
<<<<<<< HEAD
	STA PATHFINDING_TARGET_CENTRE_X
	LDA @LOCAL0C
=======
	STA UNKNOWN_7E4A8E
	LDA $2A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC #.LOWORD(ENTITY_ABS_Y_TABLE)
	TAX
	LOADPTR UNKNOWN_C42A41, $0A
	LDA ($1E)
	ASL
	STA $1C
	LOADPTR UNKNOWN_C42AEB, $06
	MOVE_INT $06, $18
	LDA $1C
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	LDA $1C
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA __BSS_START__,X
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	LSR
	LSR
	LSR
<<<<<<< HEAD
	STA PATHFINDING_TARGET_CENTRE_Y
	LDA (@LOCAL07)
=======
	STA UNKNOWN_7E4A90
	LDA ($1E)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	STA $1C
	PHA
	LDY $24
	LDA __BSS_START__,Y
	PLY
	SEC
	SBC [$20],Y
	LSR
	LSR
	LSR
	SEC
	SBC $04
	STA $04
	LDA $1C
	MOVE_INTY $18, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	LDA $1C
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA __BSS_START__,X
	SEC
	SBC $02
	PLY
	STY $02
	CLC
	ADC $02
	LSR
	LSR
	LSR
	LDX $26
	STX $02
	SEC
	SBC $02
	STA $02
	STA $0E
	LDY $04
	LDX #$0001
	LDA $28
	JSR UNKNOWN_C0B9BC
	LDA $02
	STA $0E
	LDA #$0001
	STA $10
	LDA #$00FC
	STA $12
	LDA #$0032
	STA $14
	LDY $04
	LDX #$0001
	LDA $28
	JSR UNKNOWN_C0BA35
	STA $2A
	CMP #$0000
	BNEL @UNKNOWN1
	LDX PATHFINDING_STATE + pathfinding::pathfinders + pathfinder::object_index
	TXA
	ASL
	STA $02
	STA $16
	LDX $02
	LDY ENTITY_SIZES,X
	TYA
	ASL
	TAX
	STX $28
	TXY
	LDA PATHFINDING_STATE + pathfinding::pathfinders + pathfinder::origin + 2
	ASL
	ASL
	ASL
	CLC
<<<<<<< HEAD
	ADC [@LOCAL08],Y
	STA @VIRTUAL04
	LDA PATHFINDING_TARGET_CENTRE_X
=======
	ADC [$20],Y
	STA $04
	LDA UNKNOWN_7E4A8E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	SEC
	SBC PATHFINDING_TARGET_WIDTH
	ASL
	ASL
	ASL
	CLC
	ADC $04
	LDX $02
	STA ENTITY_ABS_X_TABLE,X
	LDX $28
	TXA
	MOVE_INTY $0A, $06
	CLC
	ADC $06
	STA $06
	LDA [$06]
	PHA
	TXA
	MOVE_INTX $18, $06
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	LDA PATHFINDING_STATE + pathfinding::pathfinders + pathfinder::origin
=======
	ADC $06
	STA $06
	LDA [$06]
	STA $02
	LDA UNKNOWN_7EF200 + pathfinding::pathfinders + pathfinder::origin
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	ASL
	ASL
	SEC
	SBC $02
	PLY
	STY $02
	CLC
<<<<<<< HEAD
	ADC @VIRTUAL02
	STA @VIRTUAL04
	LDA PATHFINDING_TARGET_CENTRE_Y
=======
	ADC $02
	STA $04
	LDA UNKNOWN_7E4A90
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	SEC
	SBC PATHFINDING_TARGET_HEIGHT
	ASL
	ASL
	ASL
	CLC
	ADC $04
	LDX $16
	STX $02
	STA ENTITY_ABS_Y_TABLE,X
	LDA $02
	CLC
	ADC #.LOWORD(ENTITY_PATH_POINTS)
	TAX
	LDA __BSS_START__,X
	INC
	INC
	INC
	INC
	STA __BSS_START__,X
	LDA $02
	CLC
	ADC #.LOWORD(ENTITY_PATH_POINT_COUNTS)
	TAX
	LDA __BSS_START__,X
	DEC
	STA __BSS_START__,X
	LDA $2A
@UNKNOWN1:
	PLD
	RTL