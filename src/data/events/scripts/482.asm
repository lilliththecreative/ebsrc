
EVENT_482: ;$C33EC4
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB26)
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_7, $0001
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0000
	EVENT_SHORTJUMP_UNKNOWN .LOWORD(@UNKNOWN3)
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_8, $0001
	EVENT_UNKNOWN_C0A943 $09
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB44)
@UNKNOWN1: ;$C33EE4
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A8DC
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_X_VELOCITY $0000
	EVENT_SET_Y_VELOCITY $0000
@UNKNOWN2: ;$C33EF3
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_9AF9_TEMPVAR EVENT_9AF9_TABLE::UNKNOWN_3
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_UNKNOWN_C46E46
	EVENT_HALT
@UNKNOWN3: ;$C33EFF
	EVENT_SET_Z_VELOCITY $FE00
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SET_Z_VELOCITY $0000
	EVENT_WRITE_WORD_TO_9AF9_ENTRY EVENT_9AF9_TABLE::UNKNOWN_3, $0001
	EVENT_END_UNKNOWN