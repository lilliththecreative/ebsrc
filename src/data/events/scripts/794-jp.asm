
EVENT_794: ;$C42355
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EVENT_SET_ANIMATION $02
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(TITLE_SCREEN_QUICK_MODE)
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_X $0072
	EVENT_SET_Y $0026
	EVENT_HALT
@UNKNOWN1:
	EVENT_SET_X $0132
	EVENT_SET_Y $0046
	EVENT_SET_X_VELOCITY $FD44
	EVENT_LOOP $8C
	EVENT_PAUSE 1
	EVENT_SET_X_VELOCITY_RELATIVE $0005
	EVENT_LOOP_END
	EVENT_SET_X $0072
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C42232)
	EVENT_HALT