
CLEAR_CURRENT_ENTITY_COLLISION:
	LDX $88
	LDA #ENTITY_COLLISION_NO_OBJECT
	STA ENTITY_COLLIDED_OBJECTS,X
	RTL
