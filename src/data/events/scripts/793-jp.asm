
EVENT_793:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EVENT_SET_ANIMATION $00
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(TITLE_SCREEN_QUICK_MODE)
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_X $0021
	EVENT_SET_Y $0026
	EVENT_HALT
@UNKNOWN1:
	EVENT_SET_X $FF61
	EVENT_SET_Y $0046
	EVENT_SET_X_VELOCITY $02BC
	EVENT_LOOP $8C
	EVENT_PAUSE 1
	EVENT_SET_X_VELOCITY_RELATIVE $FFFB
	EVENT_LOOP_END
	EVENT_SET_X $0021
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C42232)
	EVENT_HALT
