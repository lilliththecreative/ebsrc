
SET_DIRECTION8: ;$C0A651
	JSL MOVEMENT_DATA_READ8
	STY $94
	JSL SET_DIRECTION
	STA ENTITY_MOVING_DIRECTIONS,X
	RTL
