
SAVE_REPLAY_SAVE_SLOT: ;$EFE771
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	JSL TEST_SRAM_SIZE
	CMP #$0000
	BEQL @INSUFFICIENT_SRAM
<<<<<<< HEAD
	LOADPTR UNKNOWN_316000, @VIRTUAL06
	LOADPTR __BSS_START__ & $FF0000, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL00
=======
	LOADPTR UNKNOWN_316000, $06
	LOADPTR UNKNOWN_7E0000, $0A
	MOVE_INT $06, $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #.LOWORD(GAME_STATE)
	STORE_INT1632 $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $12
	LDA #.SIZEOF(game_state)
	JSL MEMCPY24
<<<<<<< HEAD
	LOADPTR UNKNOWN_3161D9, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #.LOWORD(PARTY_CHARACTERS)
	STORE_INT1632 @VIRTUAL06
=======
	LOADPTR UNKNOWN_3161D9, $06
	MOVE_INT $06, $0E
	LDA #.LOWORD(CHAR_STRUCT)
	STORE_INT1632 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $12
	LDA #.SIZEOF(char_struct) * (TOTAL_PARTY_COUNT)
	JSL MEMCPY24
<<<<<<< HEAD
	LOADPTR UNKNOWN_316413, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #.LOWORD(EVENT_FLAGS)
	STORE_INT1632 @VIRTUAL06
=======
	LOADPTR UNKNOWN_316413, $06
	MOVE_INT $06, $0E
	LDA #.LOWORD(EVENT_FLAG)
	STORE_INT1632 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $12
	LDA #$0080
	JSL MEMCPY24
	LOADPTR UNKNOWN_316493, $06
	MOVE_INT $06, $0E
	LDA #.LOWORD(TIMER)
	STORE_INT1632 $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $12
	LDA #$0004
	JSL MEMCPY24
	LOADPTR UNKNOWN_326000, $0E
	JSL UNKNOWN_C083C1
@INSUFFICIENT_SRAM:
	PLD
	RTL
