
EVENT_140: ;$C3C5C6
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA38)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V4, $0001
	EVENT_LOOP $05
		EVENT_LOOP $3C
			EVENT_UNKNOWN_C468A9
			EVENT_AND_TEMPVAR $00A0
			EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
			EVENT_PAUSE 1*FRAME
		EVENT_LOOP_END
	EVENT_LOOP_END
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
@UNKNOWN1: ;$C3C5E5
	EVENT_UNKNOWN_C0A857 EVENT_FLAG::FLG_TEMP_8
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
