
<<<<<<< HEAD
EVENT_788:
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(TITLE_SCREEN_QUICK_MODE)
=======
EVENT_788: ;$C42290
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(UNKNOWN_7E9F75)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@NOPAUSE)
.IF .DEFINED(PROTOTYPE19950327)
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_2
.ENDIF
	EVENT_PAUSE $3C
@NOPAUSE:
.IF !.DEFINED(PROTOTYPE19950327)
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_2
.ENDIF
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_3
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_4
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_5
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_6
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_7
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_8
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_9
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_10
	EVENT_UNKNOWN_C09E71 EVENT_SCRIPT::TITLE_SCREEN_11
	EVENT_PAUSE $96
	EVENT_PAUSE $1E
	EVENT_PAUSE $3C
	EVENT_PAUSE $1E
	EVENT_PAUSE $A5
	EVENT_PAUSE $A1
	EVENT_PAUSE $8C
	EVENT_PAUSE $1D
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
