
UNKNOWN_C09C02:
	LDA LAST_ALLOCATED_SCRIPT
	BMI @UNKNOWN2
	LDY #.LOWORD(-1)
	LDA LAST_ENTITY
	BMI @UNKNOWN2
@UNKNOWN0:
	TAX
	CPX ENTITY_ALLOCATION_MIN_SLOT
	BCC @UNKNOWN1
	CPX ENTITY_ALLOCATION_MAX_SLOT
	BCC @UNKNOWN3
@UNKNOWN1:
	TXY
	LDA ENTITY_NEXT_ENTITY_TABLE,X
	BPL @UNKNOWN0
@UNKNOWN2:
	SEC
	RTS
@UNKNOWN3:
	TYA
	BPL @UNKNOWN4
	LDA ENTITY_NEXT_ENTITY_TABLE,X
	STA LAST_ENTITY
	CLC
	RTS
@UNKNOWN4:
	LDA ENTITY_NEXT_ENTITY_TABLE,X
	STA ENTITY_NEXT_ENTITY_TABLE,Y
	CLC
	RTS
