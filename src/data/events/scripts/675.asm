
EVENT_675: ;$C37EC1
	EVENT_UNKNOWN_C0A864 $FF
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C09FAE_ENTRY2)
	EVENT_SET_ANIMATION $FF
	EVENT_SET_TICK_CALLBACK UNKNOWN_C48C2B
	EVENT_START_TASK .LOWORD(@UNKNOWN1)
	EVENT_LOOP $02
		EVENT_SET_Y_RELATIVE $FFFD
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $0003
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $0003
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $FFFD
		EVENT_PAUSE $06*FRAMES
	EVENT_LOOP_END
	EVENT_LOOP $03
		EVENT_SET_Y_RELATIVE $FFFE
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $0002
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $0002
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $FFFE
		EVENT_PAUSE $06*FRAMES
	EVENT_LOOP_END
	EVENT_LOOP $05
		EVENT_SET_Y_RELATIVE $FFFF
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $0001
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $0001
		EVENT_PAUSE $06*FRAMES
		EVENT_SET_Y_RELATIVE $FFFF
		EVENT_PAUSE $06*FRAMES
	EVENT_LOOP_END
	EVENT_CLEAR_TICK_CALLBACK
	EVENT_YIELD_TO_TEXT
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
@UNKNOWN1: ;$C37F1F
	EVENT_LOOP $06
		EVENT_SET_X_RELATIVE $0003
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFD
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFD
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $0003
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_LOOP $09
		EVENT_SET_X_RELATIVE $0002
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFE
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFE
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $0002
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_LOOP $0F
		EVENT_SET_X_RELATIVE $0001
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFF
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $FFFF
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
		EVENT_SET_X_RELATIVE $0001
		EVENT_PAUSE 1*THIRTIETH_OF_A_SECOND
	EVENT_LOOP_END
	EVENT_END_TASK
