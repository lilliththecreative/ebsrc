
EVENT_621:
	EVENT_SHORTCALL .LOWORD(@UNKNOWN1)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
@UNKNOWN1:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_UNKNOWN_C0A685 $00, $05
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0005
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1628
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0150
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1618
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0140
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1608
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0120
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1608
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $00F8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1610
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $00D8
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1638
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $00C0
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $1658
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0080
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SHORT_RETURN
