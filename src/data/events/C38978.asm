
UNKNOWN_C38978:
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C38992)
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_ANIM_PORT_0
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3898C)
	EVENT_WRITE_WORD_TEMPVAR $0006
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C38995)
UNKNOWN_C3898C:
	EVENT_WRITE_WORD_TEMPVAR $0002
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C38995)
UNKNOWN_C38992:
	EVENT_WRITE_WORD_TEMPVAR $0004
UNKNOWN_C38995:
	EVENT_SET_DIRECTION
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C38978)
