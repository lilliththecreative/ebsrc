
EVENT_784:
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_START_TASK .LOWORD(EVENT_8_ENTRY_2)
	EVENT_UNKNOWN_C0AA6E DIRECTION::DOWN, $00
	EVENT_CHOOSE_RANDOM $003C, $0078, $00B4
	EVENT_WRITE_TEMPVAR_WAITTIMER
	EVENT_SET_X_VELOCITY $0020
@UNKNOWN1:
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $14*FRAMES
	EVENT_SET_X_VELOCITY $FFE0
	EVENT_PAUSE $80*FRAMES
	EVENT_PAUSE $80*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $14*FRAMES
	EVENT_SET_X_VELOCITY $0020
	EVENT_PAUSE $80*FRAMES
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN1)
