
UNKNOWN_C3B0B6:
	EVENT_LOOP $10
		EVENT_UNKNOWN_C0A691
		EVENT_ADD_TEMPVAR $0100
		EVENT_UNKNOWN_C0A685_ME2
		EVENT_PAUSE $20*FRAMES
	EVENT_LOOP_END
@UNKNOWN1:
	EVENT_LOOP $08
		EVENT_UNKNOWN_C0A691
		EVENT_ADD_TEMPVAR $FF00
		EVENT_UNKNOWN_C0A685_ME2
		EVENT_PAUSE $20*FRAMES
	EVENT_LOOP_END
	EVENT_LOOP $08
		EVENT_UNKNOWN_C0A691
		EVENT_ADD_TEMPVAR $0100
		EVENT_UNKNOWN_C0A685_ME2
		EVENT_PAUSE $20*FRAMES
	EVENT_LOOP_END
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
