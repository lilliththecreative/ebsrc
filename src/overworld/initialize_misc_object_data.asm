
;void InitMiscObjData(void)
INITIALIZE_MISC_OBJECT_DATA: ;$C01A69
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDY #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	TYA
	ASL
	TAX
	STZ ENTITY_MOVEMENT_SPEEDS,X
	LDA #ENTITY_COLLISION_NO_OBJECT
	STA ENTITY_COLLIDED_OBJECTS,X
	STA ENTITY_NPC_IDS,X
	INY
@UNKNOWN1:
	CPY #$001E
	BCC @UNKNOWN0
	RTL
