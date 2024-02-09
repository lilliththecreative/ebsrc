
; args - A - direction, X surface flags
ADJUST_POSITION_HORIZONTAL: ;$C02D8F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	MOVE_INT $22, $06
	MOVE_INT $06, $10
	TXA
	AND #SURFACE_FLAGS::DEEP_WATER
	CMP #SURFACE_FLAGS::SHALLOW_WATER
	BEQ @IN_SHALLOW_WATER
	CMP #SURFACE_FLAGS::DEEP_WATER
	BEQL @IN_DEEP_WATER
	JMP @NOT_IN_WATER
@IN_SHALLOW_WATER:
	TYA
	ASL
	ASL
	STA $02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	ASR8_INT $06
	MOVE_INT $06, $0A
	MOVE_INT $0A, $06
	MOVE_INT_CONSTANT SHALLOW_WATER_SPEED, $0A
	JSL MULT32
	MOVE_INT $06, $0A
	MOVE_INT $10, $06
	PHA
	LDA $06
	PHA
	MOVE_INT $0A, $06
	ASR8_INT $06
	PULL32 $0A
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $1A
	JMP @UNKNOWN14
@IN_DEEP_WATER:
	TYA
	ASL
	ASL
	STA $02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	ASR8_INT $06
	MOVE_INT $06, $0A
	MOVE_INT $0A, $06
	MOVE_INT_CONSTANT DEEP_WATER_SPEED, $0A
	JSL MULT32
	MOVE_INT $06, $0A
	MOVE_INT $10, $06
	PHA
	LDA $06
	PHA
	MOVE_INT $0A, $06
	ASR8_INT $06
	PULL32 $0A
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $1A
	JMP @UNKNOWN14
@NOT_IN_WATER:
	LDA DEMO_FRAMES_LEFT
	BEQ @UNKNOWN8
	TYA
	ASL
	ASL
	STA $02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $0A
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $1A
	JMP @UNKNOWN14
@UNKNOWN8:
	LDA GAME_STATE + game_state::party_status
	AND #$00FF
	CMP #$0003
	BNEL @UNKNOWN13
	LDA GAME_STATE+game_state::walking_style
	STA $0E
	BNEL @UNKNOWN13
	TYA
	ASL
	ASL
	STA $02
	LDA $0E
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	ASR8_INT $06
	MOVE_INT $06, $0A
	MOVE_INT $0A, $06
	MOVE_INT_CONSTANT SKIP_SANDWICH_SPEED, $0A
	JSL MULT32
	MOVE_INT $06, $0A
	MOVE_INT $10, $06
	PHA
	LDA $06
	PHA
	MOVE_INT $0A, $06
	ASR8_INT $06
	PULL32 $0A
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $1A
	BRA @UNKNOWN14
@UNKNOWN13:
	TYA
	ASL
	ASL
	STA $02
	LDA GAME_STATE+game_state::walking_style
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #.LOWORD(HORIZONTAL_MOVEMENT_SPEEDS)
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $0A
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $1A
@UNKNOWN14:
	PLD
	RTS
