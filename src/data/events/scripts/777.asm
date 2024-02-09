
<<<<<<< HEAD
EVENT_777:
	EVENT_WRITE_WORD_WRAM .LOWORD(PENDING_INTERACTIONS), $0001
=======
EVENT_777: ;$C39E7B
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7E5D9A), $0001
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	EVENT_SHORTJUMP .LOWORD(EVENT_35)
