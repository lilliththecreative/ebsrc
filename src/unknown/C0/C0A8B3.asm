
UNKNOWN_C0A8B3: ;$C0A8B3
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	STY $94
	PLX
	JSL UNKNOWN_C46C5E
	RTL
