
EVENT_800:
	EVENT_WRITE_VAR_TO_WAIT_TIMER ACTIONSCRIPT_VARS::V0
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY4)
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY | SURFACE_FLAGS::OBSCURE_UPPER_BODY
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_SET_DIRECTION8 DIRECTION::DOWN
@UNKNOWN1:
	EVENT_WRITE_WRAM_TEMPVAR $0099
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_UNKNOWN_C0AAAC
	EVENT_HALT
