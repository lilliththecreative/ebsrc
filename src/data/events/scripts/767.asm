
EVENT_767: ;$C39B25
	EVENT_CALL_C09F82 $0000, $0001
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A360)
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_C0C7DB
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A15E)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3A262)
	EVENT_UNKNOWN_C0A685 $40, $00
UNKNOWN_C39B48: ;$C39B48
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_CALL_C09F82 $0000, $0002, $0004, $0006
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0C83B
	EVENT_CALL_C09F82 $0004, $0006, $0008
	EVENT_UNKNOWN_C0CA4E
	EVENT_SET_VELOCITIES_ZERO
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_CALL_C09F82 $001E, $003C, $005A, $0078
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C39B48)