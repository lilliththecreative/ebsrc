
EVENT_80:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_UNKNOWN_C0A685 $40, $00
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0001
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_HALT
