
EVENT_303: ;$C3126E
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE $14*FRAMES
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $000F
	EVENT_UNKNOWN_C0A943 $FE
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
UNKNOWN_C3128B: ;$C3128B
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::UNKNOWN_003
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(UNKNOWN_C3128B)
UNKNOWN_C31296: ;$C31296
	EVENT_UNKNOWN_C0A943 $FE
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
UNKNOWN_C3129E: ;$C3129E
	EVENT_PAUSE 1*FRAME
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A943 $FE
	EVENT_UNKNOWN_C0A8C6
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3129E)
