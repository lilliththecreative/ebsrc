
EVENT_224:
	EVENT_SET_X $1DD0
	EVENT_SET_Y $00D8
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1D80
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $00D8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C30295)
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_YIELD_TO_TEXT
	EVENT_PAUSE $01
	EVENT_WRITE_WORD_WRAM .LOWORD(PENDING_INTERACTIONS), $0000
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1DD0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_END_LAST_TASK
	EVENT_UNKNOWN_C0AA6E DIRECTION::LEFT, $00
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
