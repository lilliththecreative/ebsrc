
EVENT_805:
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A055)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $00
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::DOWN
	EVENT_SET_DIRECTION
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_LOOP $0B
		EVENT_PAUSE $14*FRAMES
	EVENT_LOOP_END
	EVENT_SET_Y_VELOCITY $0055
	EVENT_PAUSE $A8*FRAMES
	EVENT_SPAWN_ENTITY_UNKNOWN OVERWORLD_SPRITE::BUBBLE_MONKEY, EVENT_SCRIPT::EVENT_806
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
