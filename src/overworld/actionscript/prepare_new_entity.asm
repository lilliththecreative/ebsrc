
ACTIONSCRIPT_PREPARE_NEW_ENTITY:
	JSL MOVEMENT_DATA_READ16
	STY $94
	PHA
	JSL MOVEMENT_DATA_READ16
	STY $94
	PHA
	JSL MOVEMENT_DATA_READ8
	STY $94
	PLY
	PLX
	JSL PREPARE_NEW_ENTITY
	RTL
