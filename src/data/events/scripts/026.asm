
EVENT_26:
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3A426)
	EVENT_SET_TICK_CALLBACK UNKNOWN_C0D7E0
	EVENT_UNKNOWN_C0A6B8
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(UNKNOWN_C3A47C)
	EVENT_SET_VAR ACTIONSCRIPT_VARS::V0, $0004
	EVENT_SET_DIRECTION8 DIRECTION::UP
	EVENT_SET_VELOCITIES_ZERO
@UNKNOWN0:
	EVENT_UNKNOWN_C0C48F
	EVENT_PAUSE $08
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN0)
	EVENT_UNKNOWN_C0A685 $00, $40
	EVENT_DISABLE_CURRENT_ENTITY_COLLISION
	EVENT_UNKNOWN_C0A443_MOVEMENT_ENTRY_1
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C0A443_ENTRY3
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C0A443_MOVEMENT_ENTRY_1
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C0A443_ENTRY3
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C0A443_MOVEMENT_ENTRY_1
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C46B65
	EVENT_UNKNOWN_C0C62B
@UNKNOWN1:
	EVENT_UNKNOWN_C47044
	EVENT_UNKNOWN_C0D0E6
	EVENT_SHORTCALL_CONDITIONAL .LOWORD(@UNKNOWN1)
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_ANIMATION $FF
	EVENT_PAUSE $08
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A443_MOVEMENT_ENTRY_1
	EVENT_PAUSE $04
	EVENT_UNKNOWN_C0A443_ENTRY3
	EVENT_PAUSE $04
	EVENT_CLEAR_CURRENT_ENTITY_COLLISION
	EVENT_PAUSE $3C
	EVENT_SHORTJUMP .LOWORD(@UNKNOWN0)
