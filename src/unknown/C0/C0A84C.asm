
UNKNOWN_C0A84C:
	JSL MOVEMENT_DATA_READ16
	STY $94
	JSL GET_EVENT_FLAG
	RTL
