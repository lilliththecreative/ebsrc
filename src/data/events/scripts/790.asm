
EVENT_790:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EVENT_SET_ANIMATION $00
.IF .DEFINED(PROTOTYPE19950327)
	EVENT_SET_Y $006C
.ELSE
	EVENT_SET_Y $0064
.ENDIF
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(TITLE_SCREEN_QUICK_MODE)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SET_X $FD6B
	EVENT_SET_X_VELOCITY $04A2
	EVENT_PAUSE $96
	EVENT_SET_VELOCITIES_ZERO
@UNKNOWN1:
	EVENT_SET_X $0022
	EVENT_HALT
