
EVENT_146: ;$C3C6DD
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY | SURFACE_FLAGS::OBSCURE_UPPER_BODY
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A03A)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A00C)
	EVENT_SET_Z $0000
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_Z_VELOCITY $0040
	EVENT_PAUSE $C8*FRAMES
	EVENT_SET_SURFACE_FLAGS $00
	EVENT_PAUSE $28*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*SECOND
	EVENT_PAUSE $28*FRAMES
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::RIGHT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_LOOP $20
		EVENT_PAUSE 1*FRAME
		EVENT_SET_X_VELOCITY_RELATIVE $FFF0
	EVENT_LOOP_END
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $28*FRAMES
	EVENT_LOOP $20
		EVENT_PAUSE 1*FRAME
		EVENT_SET_X_VELOCITY_RELATIVE $FFE0
	EVENT_LOOP_END
	EVENT_LOOP $20
		EVENT_SET_Z_VELOCITY_RELATIVE $0010
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_PAUSE 1*HALF_OF_A_SECOND
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $BC
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
