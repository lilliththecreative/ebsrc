
EVENT_352:
	EVENT_SET_ANIMATION $FF
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0000
@UNKNOWN0:
	EVENT_LOOP $09
		EVENT_ADD ACTIONSCRIPT_VARS::V0, $0001
		EVENT_UNKNOWN_C47499
		EVENT_PAUSE 1*FIFTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_LOOP $09
		EVENT_ADD ACTIONSCRIPT_VARS::V0, $FFFF
		EVENT_UNKNOWN_C47499
		EVENT_PAUSE 1*FIFTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_TEMP_1
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN_C31CF4)
	EVENT_LOOP $09
		EVENT_ADD ACTIONSCRIPT_VARS::V0, $FFFF
		EVENT_UNKNOWN_C47499
		EVENT_PAUSE 1*FIFTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_LOOP $09
		EVENT_ADD ACTIONSCRIPT_VARS::V0, $0001
		EVENT_UNKNOWN_C47499
		EVENT_PAUSE 1*FIFTH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_TEST_EVENT_FLAG EVENT_FLAG::FLG_TEMP_1
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN0)
@UNKNOWN_C31CF4:
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
