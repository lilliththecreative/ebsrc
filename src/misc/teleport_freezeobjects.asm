
;void Teleport_FreezeObjects(void)
TELEPORT_FREEZEOBJECTS: ;$C0EA3E
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $0E
	BRA @UNKNOWN1
@UNKNOWN0:
	ASL
	CLC
	ADC #.LOWORD(ENTITY_TICK_CALLBACK_HIGH)
	TAX
	LDA a:.LOWORD(RAM),X
	ORA #OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED
	STA a:.LOWORD(RAM),X
	LDA $0E
	INC
	STA $0E
@UNKNOWN1:
	CMP #$0017
	BCC @UNKNOWN0
	PLD
	RTS