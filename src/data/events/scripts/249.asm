
EVENT_249: ;$C30590
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
@UNKNOWN1: ;$C3059E
	EVENT_PAUSE 1*FRAME
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_TEMP_1
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C0A685 $80, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A50
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0F58
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A20
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A18
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0F48
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0A30
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE $20*FRAMES
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $09F0
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0F28
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
