
UNKNOWN_C3A12E:
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_LOOP_TEMPVAR
		EVENT_PAUSE 1*FRAME
		EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
		EVENT_BREAK_IF_FALSE .LOWORD(@UNKNOWN1)
	EVENT_LOOP_END
	EVENT_SET_ANIMATION $01
	EVENT_UNKNOWN_C0A443_ME1
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_LOOP_TEMPVAR
		EVENT_PAUSE 1*FRAME
		EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
		EVENT_BREAK_IF_FALSE .LOWORD(@UNKNOWN1)
	EVENT_LOOP_END
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_ME3
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3A12E)
@UNKNOWN1:
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C3A12E)
