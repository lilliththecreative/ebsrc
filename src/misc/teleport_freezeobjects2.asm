
;void Teleport_FreezeObjects2(void)
TELEPORT_FREEZEOBJECTS2: ;$C0EA68
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDY #$0000
	BRA @UNKNOWN2
@UNKNOWN0:
	TYA
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	STA $0E
	AND #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	CMP #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	BEQ @UNKNOWN1
	LDA $0E
	ORA #$C000
	STA a:.LOWORD(RAM),X
@UNKNOWN1:
	INY
@UNKNOWN2:
	CPY #$0017
	BCC @UNKNOWN0
	PLD
	RTS