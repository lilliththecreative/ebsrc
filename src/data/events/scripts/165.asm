
EVENT_165: ;$C3C7AE
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_SURFACE_FLAGS SURFACE_FLAGS::OBSCURE_LOWER_BODY | SURFACE_FLAGS::OBSCURE_UPPER_BODY
	EVENT_SET_POSITION_CHANGE_CALLBACK .LOWORD(UNKNOWN_C0A03A)
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A00C)
	EVENT_SET_Z $0000
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48C02
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_PAUSE $F0*FRAMES
	EVENT_PAUSE 1*SECOND
	EVENT_SET_ANIMATION $00
	EVENT_UNKNOWN_C0A685 $00, $02
	EVENT_WRITE_WORD_TEMPVAR DIRECTION::LEFT
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3AA1E)
	EVENT_PAUSE 4*MILLISECONDS
	EVENT_LOOP $20
		EVENT_PAUSE 1*FRAME
		EVENT_SET_X_VELOCITY_RELATIVE $0010
	EVENT_LOOP_END
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE $14*FRAMES
	EVENT_LOOP $40
		EVENT_PAUSE 1*FRAME
		EVENT_SET_X_VELOCITY_RELATIVE $0010
	EVENT_LOOP_END
	EVENT_PAUSE $78*FRAMES
	EVENT_LOOP $40
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_PREPARE_NEW_ENTITY_AT_TELEPORT_DESTINATION $BB
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
