
EVENT_763:
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_ANIMATION $FF
	EVENT_FADE_OUT_WITH_MOSAIC $0001, $0001, $0000
	EVENT_LOAD_BATTLEBGS BATTLEBG_LAYER::MAGIC_CAKE1, BATTLEBG_LAYER::MAGIC_CAKE2
	EVENT_SET_X $0080
	EVENT_SET_Y $0070
	EVENT_FADE_IN $01, $01
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48BDA
	EVENT_PAUSE $78*FRAMES
	EVENT_PAUSE $78*FRAMES
	EVENT_PAUSE $78*FRAMES
	EVENT_FADE_OUT_WITH_MOSAIC $0001, $0008, $0000
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
