
MOVEMENT_26: ;$C3A780
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EBMOVE_UNKNOWN_08 UNKNOWN_C0D7E0
	EBMOVE_CALLROUTINE UNKNOWN_C0A6B8
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EBMOVE_WRITE_WORD_TO_9AF9_ENTRY $00, $0004
	EBMOVE_CALLROUTINE UNKNOWN_C0A651, $00
	EBMOVE_SET_VELOCITIES_ZERO
@UNKNOWN0: ;$C3A798
	EBMOVE_CALLROUTINE UNKNOWN_C0C48F
	EBMOVE_PAUSE $08
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN0)
	EBMOVE_CALLROUTINE UNKNOWN_C0A685, $00, $40
	EBMOVE_CALLROUTINE UNKNOWN_C0A6D1
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_MOVEMENT_ENTRY_1
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_ENTRY3
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_MOVEMENT_ENTRY_1
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_ENTRY3
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_MOVEMENT_ENTRY_1
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C46B65
	EBMOVE_CALLROUTINE UNKNOWN_C0C62B
@UNKNOWN1: ;$C3A7D1
	EBMOVE_CALLROUTINE UNKNOWN_C47044
	EBMOVE_CALLROUTINE UNKNOWN_C0D0E6
	EBMOVE_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EBMOVE_SET_VELOCITIES_ZERO
	EBMOVE_SET_10F2 $FF
	EBMOVE_PAUSE $08
	EBMOVE_SET_10F2 $00
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_MOVEMENT_ENTRY_1
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0A3A4_ENTRY3
	EBMOVE_PAUSE $04
	EBMOVE_CALLROUTINE UNKNOWN_C0A6DA
	EBMOVE_PAUSE $3C
	EBMOVE_SHORTJUMP .LOWORD(@UNKNOWN0)