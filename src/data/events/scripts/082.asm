
EVENT_82:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $80, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1B10
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0368
	EVENT_UNKNOWN_C46ADB
	EVENT_UNKNOWN_C46B0A
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_PLAY_SOUND SFX::UNKNOWN61
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
