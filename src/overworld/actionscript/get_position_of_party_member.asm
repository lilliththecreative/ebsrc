
ACTIONSCRIPT_GET_POSITION_OF_PARTY_MEMBER:
	JSL MOVEMENT_DATA_READ8
	STY $94
	JSL GET_POSITION_OF_PARTY_MEMBER
	RTL
