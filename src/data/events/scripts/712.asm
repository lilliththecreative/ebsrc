
EVENT_712: ;$C387B6
	EVENT_UNKNOWN_C0A86F $019A
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A039)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_10F2 $FF
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(UNKNOWN_C3AFA3)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0D88
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0ED8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE 1*SECOND
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0DE8
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0E78
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0DC8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $00, $03
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0003
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0D90
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0EB8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $C0, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0D40
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0EB0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0D30
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_10, $0EA8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::UNKNOWN_20A
	EVENT_UNKNOWN_C0A685 $40, $00
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_9, $0D20
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_UNKNOWN_C46E46
	EVENT_PAUSE 1*FRAME
	EVENT_SET_X_VELOCITY $0160
	EVENT_SET_Y_VELOCITY $FFC0
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_Y_VELOCITY $FF80
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_Y_VELOCITY $FF00
	EVENT_PAUSE $40*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C46E46
	EVENT_HALT