
UNKNOWN_C064A6: ;$C064A6
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDX CURRENT_ENTITY_SLOT
	STX $0E
	TXA
	ASL
	TAX
	LDA ENTITY_COLLIDED_OBJECTS,X
	CMP #ENTITY_COLLISION_DISABLED
	BEQ @UNKNOWN0
	LDX $0E
	TXA
	JSL UNKNOWN_C09EFF_ENTRY2
	LDX $0E
	TXY
	LDX ENTITY_MOVEMENT_PROSPECTIVE_Y
	LDA ENTITY_MOVEMENT_PROSPECTIVE_X
	JSL UNKNOWN_C0613C
@UNKNOWN0:
	PLD
	RTL
