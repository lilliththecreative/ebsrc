
EVENT_496: ;$C34249
	EVENT_SET_10F2 $FF
	EVENT_RAND
	EVENT_AND_TEMPVAR $007F
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_UNKNOWN_43 $00
	EVENT_SET_10F2 $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C46D23
	EVENT_WRITE_WORD_TEMPVAR $0004
	EVENT_UNKNOWN_C0A65F
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SHORTCALL .LOWORD(EVENT_495_ENTRY_2)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
