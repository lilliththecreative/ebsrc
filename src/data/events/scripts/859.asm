
EVENT_859:
	EVENT_PAUSE $02
	EVENT_UNKNOWN_C09F3B_ENTRY2
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN0)
	EVENT_END
@UNKNOWN0:
	EVENT_UNKNOWN_C4CB4F
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V0
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_START_TASK .LOWORD(UNKNOWN_C427E0)
@UNKNOWN1:
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V1
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN2)
	EVENT_START_TASK .LOWORD(UNKNOWN_C42802)
@UNKNOWN2:
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V2
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN3)
	EVENT_START_TASK .LOWORD(UNKNOWN_C42815)
@UNKNOWN3:
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V3
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN4)
	EVENT_START_TASK .LOWORD(UNKNOWN_C42828)
@UNKNOWN4:
	EVENT_PAUSE $01
	EVENT_WRITE_VAR_TO_TEMPVAR ACTIONSCRIPT_VARS::V4
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN4)
	EVENT_UNKNOWN_C09F71
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7EB4A8), $FFFF
	EVENT_END
