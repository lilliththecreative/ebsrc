
EVENT_713: ;$C388C3
	EVENT_UNKNOWN_43 $00
	EVENT_UNKNOWN_C0A679 $00
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A679 $00
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3899E)
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C38978)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_PAUSE 1*SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_PAUSE $14*FRAMES
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_PAUSE $10*FRAMES
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_PAUSE 1*SIXTH_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_PAUSE $06*FRAMES
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0000
	EVENT_PAUSE $78*FRAMES
	EVENT_UNKNOWN_C46E46
UNKNOWN_C3890F: ;$C3890F
	EVENT_UNKNOWN_C0A86F $006A
	EVENT_SET_Y_RELATIVE $FFE8
	EVENT_SET_X_RELATIVE $FFF8
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_20A
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C3890F)
	EVENT_UNKNOWN_43 $03
UNKNOWN_C38928: ;$C38928
	EVENT_UNKNOWN_C0A86F $006A
	EVENT_SET_Y_RELATIVE $FFE8
	EVENT_SET_X_RELATIVE $0008
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C38928)