
MOVEMENT_798: ;$C423C1
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EBMOVE_SET_10F2 $08
	EBMOVE_SET_Y $0064
	EBMOVE_WRITE_WRAM_TEMPVAR $9F75
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EBMOVE_SET_X $03AB
	EBMOVE_SET_X_VELOCITY $FB39
	EBMOVE_PAUSE $96
	EBMOVE_SET_VELOCITIES_ZERO
@UNKNOWN1:
	EBMOVE_SET_X $00DE
	EBMOVE_HALT
