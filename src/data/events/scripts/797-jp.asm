
EVENT_797:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EVENT_SET_ANIMATION $05
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(UNKNOWN_7E9F75)
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_X $00C6
	EVENT_SET_Y $0026
	EVENT_HALT
@UNKNOWN1:
	EVENT_SET_X $01FA
	EVENT_SET_Y $0046
	EVENT_SET_X_VELOCITY $FBA0
	EVENT_LOOP $8C
	EVENT_PAUSE 1
	EVENT_SET_X_VELOCITY_RELATIVE $0008
	EVENT_LOOP_END
	EVENT_SET_X $00C6
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C42232)
	EVENT_HALT
