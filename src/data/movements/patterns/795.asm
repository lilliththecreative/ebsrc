
MOVEMENT_795: ;$C42370
	EBMOVE_SHORTCALL .LOWORD(UNKNOWN_C4220E)
	EBMOVE_SET_10F2 $05
	EBMOVE_SET_Y $0064
	EBMOVE_WRITE_WRAM_TEMPVAR $9F75
	EBMOVE_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EBMOVE_SET_X $0153
	EBMOVE_SET_X_VELOCITY $FECF
	EBMOVE_PAUSE $96
	EBMOVE_SET_VELOCITIES_ZERO
@UNKNOWN1:
	EBMOVE_SET_X $00A0
	EBMOVE_HALT