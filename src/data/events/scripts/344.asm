
EVENT_344:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0008
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0006
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0004
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0002
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0001
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C34B62)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0005
	EVENT_UNKNOWN_C0AA6E DIRECTION::RIGHT, $00
	EVENT_LOOP $20
		EVENT_SET_X_VELOCITY_RELATIVE $0020
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_PAUSE $20*FRAMES
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
