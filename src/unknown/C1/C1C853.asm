
UNKNOWN_C1C853: ;$C1C853
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	STY $12
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
<<<<<<< HEAD
	LDA #1
	STA PAGINATION_WINDOW
=======
	LDA #$0001
	STA UNKNOWN_7E5E7A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN0:
	LDY $12
	TYA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::name
	PROMOTENEARPTRA @VIRTUAL06
=======
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::name
	PROMOTENEARPTRA $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA #$0001
	JSL SET_WINDOW_TITLE
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $0E
	LDA #$000F
	STA $0F
	LDY $12
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSR GENERATE_PSI_LIST
	PLD
	RTL
