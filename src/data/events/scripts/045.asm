
EVENT_45:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAB8)
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $1E70
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0150
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0010
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0010
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_QUEUE_TEXT MSG_EVT_SOFER_POKEY
	EVENT_PAUSE 1*FRAME
	EVENT_UNKNOWN_C0A685 $00, $01
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0011
	EVENT_GET_POSITION_OF_PARTY_MEMBER $FF
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_YIELD_TO_TEXT
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_HALT
