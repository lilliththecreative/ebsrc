
UNKNOWN_C0C30C: ;$C0C30C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAY
	STY $10
	TYA
	ASL
	TAX
<<<<<<< HEAD
	STX @LOCAL00
	LDA ENTITY_NPC_IDS,X
	STA @VIRTUAL04
=======
	STX $0E
	LDA ENTITY_TPT_ENTRIES,X
	STA $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	ASL
	ASL
	ASL
	ASL
	ADC $04
	CLC
	ADC #npc_config::event_flag
	TAX
	LDA f:NPC_CONFIG_TABLE,X
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN0
	LDX $0E
	STZ ENTITY_DIRECTIONS,X
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #DIRECTION::DOWN
	LDX $0E
	STA ENTITY_DIRECTIONS,X
@UNKNOWN1:
	LDY $10
	TYA
	JSL UNKNOWN_C0A443_ENTRY2
	PLD
	RTL
