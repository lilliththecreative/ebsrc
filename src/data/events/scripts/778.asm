
<<<<<<< HEAD
EVENT_778:
	EVENT_WRITE_WORD_WRAM .LOWORD(PENDING_INTERACTIONS), $0000
=======
EVENT_778: ;$C39E83
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7E5D9A), $0000
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
