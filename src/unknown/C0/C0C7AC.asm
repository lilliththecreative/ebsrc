
UNKNOWN_C0C7AC: ;$C0C7AC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA CURRENT_ENTITY_SLOT
	STA $02
	JSL UNKNOWN_C09EFF
	CMP #$0000
	BEQ @UNKNOWN0
<<<<<<< HEAD
	LDY @VIRTUAL02
	LDX ENTITY_MOVEMENT_PROSPECTIVE_Y
	LDA ENTITY_MOVEMENT_PROSPECTIVE_X
=======
	LDY $02
	LDX UNKNOWN_7E284A
	LDA UNKNOWN_7E2848
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C05F33
	STA $0E
	LDA $02
	ASL
	TAX
	LDA $0E
	STA ENTITY_SURFACE_FLAGS,X
@UNKNOWN0:
	PLD
	RTL
