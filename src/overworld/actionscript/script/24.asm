
MOVEMENT_CODE_24: ;$C09620
	LDX $8A
<<<<<<< HEAD
UNKNOWN_C09622:
	LDA ENTITY_SCRIPT_TEMPVARS,X
=======
UNKNOWN_C09622: ;$C09622
	LDA ENTITY_TEMPVARS,X
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA MOVEMENT_CODE_01_ENTRY2
