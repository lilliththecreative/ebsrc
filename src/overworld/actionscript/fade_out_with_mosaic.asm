
ACTIONSCRIPT_FADE_OUT_WITH_MOSAIC: ;$C0AA07
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	PHA
	STY $94
	JSL MOVEMENT_DATA_READ16
	STY $94
	TAY
	PLX
	PLA
	JSL FADE_OUT_WITH_MOSAIC
	RTL
