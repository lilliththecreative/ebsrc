
; A = NPC id, X = movement id
CREATE_PREPARED_ENTITY_NPC: ;$C464B5
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA $02
	LOADPTR NPC_CONFIG_TABLE, $06
	LDA $02
	OPTIMIZED_MULT $04, 17
	CLC
	ADC $06
	STA $06
	LDA ENTITY_PREPARED_X_COORDINATE
	STA $0E
	LDA ENTITY_PREPARED_Y_COORDINATE
	STA $10
	LDY #$FFFF
	STY $14
	LDY #$0001
	LDA [$06],Y
	LDY $14
	JSL CREATE_ENTITY
	STA $12
	ASL
	TAX
	LDA ENTITY_PREPARED_DIRECTION
	STA ENTITY_DIRECTIONS,X
<<<<<<< HEAD
	LDA @VIRTUAL02
	STA ENTITY_NPC_IDS,X
	LDA @LOCAL02
	END_C_FUNCTION
=======
	LDA $02
	STA ENTITY_TPT_ENTRIES,X
	LDA $12
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
