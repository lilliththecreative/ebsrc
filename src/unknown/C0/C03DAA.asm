
;A = ???, Y = entity ID
UNKNOWN_C03DAA: ;$C03DAA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA CURRENT_ENTITY_SLOT
	STA $02
	ASL
	TAY
<<<<<<< HEAD
	STY @LOCAL00
	LDA #.LOWORD(-1)
	STA ENTITY_ANIMATION_FINGERPRINTS,Y
=======
	STY $0E
	LDA #$FFFF
	STA UNKNOWN_7E3456,Y
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TYA
	CLC
	ADC #.LOWORD(ENTITY_SCRIPT_VAR3_TABLE)
	STA $04
	LDA #$0008
	LDX $04
	STA __BSS_START__,X
	JSL RAND
	AND #$000F
	LDY $0E
	STA ENTITY_SCRIPT_VAR2_TABLE,Y
	LDA $02
	JSL UNKNOWN_C0A780
	LDY $0E
	LDA ENTITY_SCRIPT_VAR1_TABLE,Y
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	TAX
	LDA $02
	STA a:char_struct::unknown59,X
	LDY $0E
	LDA ENTITY_SCRIPT_VAR0_TABLE,Y
	STA a:char_struct::unknown53,X
	STZ a:char_struct::unknown57,X
	LDA #$FFFF
	STA a:char_struct::unknown92,X
	LDA a:char_struct::afflictions + STATUS_GROUP::PERSISTENT_EASYHEAL,X
	AND #$00FF
	CMP #STATUS_0::UNCONSCIOUS
	BNE @UNKNOWN0
	LDA #$0010
	LDX $04
	STA __BSS_START__,X
@UNKNOWN0:
	LDA GAME_STATE + game_state::current_party_members
	ASL
<<<<<<< HEAD
	STA FOOTSTEP_SOUND_IGNORE_ENTITY
	END_C_FUNCTION
=======
	STA UNKNOWN_7E2898
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
