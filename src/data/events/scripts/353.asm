
EVENT_353: ;$C31CFB
	EVENT_SET_ANIMATION $FF
	EVENT_UNKNOWN_C4880C
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V1, $0000
@UNKNOWN0: ;$C31D05
	EVENT_PAUSE 1*TWENTIETH_OF_A_SECOND
	EVENT_UNKNOWN_C48A6D
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
