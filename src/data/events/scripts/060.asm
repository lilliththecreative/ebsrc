
EVENT_60: ;$C3B2FA
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AAAA)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0000
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_UNKNOWN_C46C45
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V2, $0018
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V3, $0018
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB8A)
	EVENT_QUEUE_TEXT MSG_INSEKI_MIZUNO_B1
	EVENT_PAUSE 1*FRAME
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE 2*FIFTEENTHS_OF_A_SECOND
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0005
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V5, $0002
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0C40
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0860
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0C40
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0848
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V6, $0C58
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V7, $0848
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AB59)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
