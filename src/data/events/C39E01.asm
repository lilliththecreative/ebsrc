
UNKNOWN_C39E01: ;$C39E01
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(BATTLE_SWIRL_COUNTDOWN)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_WRITE_WRAM_TEMPVAR .LOWORD(ENEMY_HAS_BEEN_TOUCHED)
	EVENT_SHORTCALL_CONDITIONAL_NOT .LOWORD(@UNKNOWN1)
	EVENT_SHORT_RETURN
@UNKNOWN1: ;$C39E0E
	EVENT_PAUSE 1*FRAME
	EVENT_SHORTJUMP .LOWORD(UNKNOWN_C39E01)
