
LOAD_REPLAY_SAVE_SLOT: ;$EFE8C7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	JSL TEST_SRAM_SIZE
	CMP #$0000
	BEQL @INSUFFICIENT_SRAM
<<<<<<< HEAD
	LOADPTR UNKNOWN_316000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LOADPTR __BSS_START__ & $FF0000, @VIRTUAL0A
=======
	LOADPTR UNKNOWN_316000, $06
	MOVE_INT $06, $16
	LOADPTR UNKNOWN_7E0000, $0A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #.LOWORD(GAME_STATE)
	STORE_INT1632 $06
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDA #.SIZEOF(game_state)
	JSL MEMCPY24
<<<<<<< HEAD
	LOADPTR UNKNOWN_3161D9, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #.LOWORD(PARTY_CHARACTERS)
	STORE_INT1632 @VIRTUAL06
=======
	LOADPTR UNKNOWN_3161D9, $06
	MOVE_INT $06, $16
	LDA #.LOWORD(CHAR_STRUCT)
	STORE_INT1632 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDA #.SIZEOF(char_struct)*6
	JSL MEMCPY24
<<<<<<< HEAD
	LOADPTR UNKNOWN_316413, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA #.LOWORD(EVENT_FLAGS)
	STORE_INT1632 @VIRTUAL06
=======
	LOADPTR UNKNOWN_316413, $06
	MOVE_INT $06, $16
	LDA #.LOWORD(EVENT_FLAG)
	STORE_INT1632 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADD_INT_ASSIGN $06, $0A
	MOVE_INT $06, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDA #$0080
	JSL MEMCPY24
	LOADPTR UNKNOWN_316493, $06
	MOVE_INT $06, $16
	MOVE_INT $0A, $06
	LDA #$00A7
	STORE_INT1632 $0A
	CLC
	ADD_INT_ASSIGN $0A, $06
	MOVE_INT $0A, $0E
	MOVE_INT $16, $06
	MOVE_INT $06, $12
	LDA #$0004
	JSL MEMCPY24
	SEP #PROC_FLAGS::ACCUM8
	LDA FRAME_COUNTER_BACKUP
	STA FRAME_COUNTER
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT RAND_A_BACKUP, RAND_A
	JSL UNKNOWN_C083B8
	LOADPTR UNKNOWN_326000, $0E
	JSL UNKNOWN_C083E3
@INSUFFICIENT_SRAM:
	PLD
	RTL
