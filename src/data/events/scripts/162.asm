
EVENT_162: ;$C3C747
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_UNKNOWN_C0A679 $00
	EVENT_UNKNOWN_WRITE_11A6 .LOWORD(UNKNOWN_C0A03A)
	EVENT_UNKNOWN_WRITE_121E .LOWORD(UNKNOWN_C0A00C)
	EVENT_SET_Z $0000
	EVENT_SET_10F2 $00
	EVENT_UNKNOWN_08 UNKNOWN_C48C02
	EVENT_UNKNOWN_C0A3A4_ME2
	EVENT_SET_Z_VELOCITY $0020
	EVENT_PAUSE $F0*FRAMES
	EVENT_SET_VELOCITIES_ZERO
	EVENT_PAUSE 1*SECOND
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
		EVENT_SET_Z_VELOCITY_RELATIVE $0008
		EVENT_PAUSE 1*FRAME
	EVENT_LOOP_END
	EVENT_PAUSE 4*FIFTHS_OF_A_SECOND
	EVENT_FADE_OUT $01, $01
	EVENT_SHORTCALL .LOWORD(UNKNOWN_C3ABE0)
	EVENT_UNKNOWN_C0A907 $BB
	EVENT_UNKNOWN_C46E46
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
