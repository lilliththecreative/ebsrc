
<<<<<<< HEAD
EVENT_894:
	EVENT_WRITE_WORD_WRAM .LOWORD(UNREAD_7E00AD), $0001
=======
EVENT_894: ;$C3A099
	EVENT_WRITE_WORD_WRAM .LOWORD(UNKNOWN_7E00AD), $0001
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	EVENT_HALT
