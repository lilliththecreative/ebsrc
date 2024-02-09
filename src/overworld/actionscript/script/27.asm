
<<<<<<< HEAD
MOVEMENT_CODE_27:
	LDA #.LOWORD(ENTITY_SCRIPT_TEMPVARS)
=======
MOVEMENT_CODE_27: ;$C09A97
	LDA #.LOWORD(ENTITY_TEMPVARS)
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	CLC
	ADC $8A
	BRA MOVEMENT_CODE_0D_UNK2
