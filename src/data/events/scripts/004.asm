
EVENT_4:
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A0BB)
	EVENT_SET_ANIMATION $00
	EVENT_START_TASK .LOWORD(UNKNOWN_C3A09F)
@UNKNOWN1:
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(ENTITY_DIRECTIONS)+2
	EVENT_SET_DIRECTION
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
