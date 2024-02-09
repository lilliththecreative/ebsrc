
<<<<<<< HEAD
UNKNOWN_C09C8F:
	LDA LAST_ENTITY
=======
UNKNOWN_C09C8F: ;$C09C8F
	LDA UNKNOWN_7E0A52
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	STA ENTITY_NEXT_ENTITY_TABLE,X
	STX LAST_ENTITY
	RTS
