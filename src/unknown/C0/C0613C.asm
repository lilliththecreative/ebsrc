
UNKNOWN_C0613C: ;$C0613C
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 32
	STY $1E
	STX $02
	STX $1C
	TAY
	LDA #ENTITY_COLLISION_NO_OBJECT
	STA $1A
	LDA $1E
	ASL
	TAX
	LDA ENTITY_HITBOX_ENABLED,X
	BEQL @UNKNOWN13
	LDA ENTITY_DIRECTIONS,X
	CMP #DIRECTION::RIGHT
	BEQ @UNKNOWN1
	CMP #DIRECTION::LEFT
	BNE @UNKNOWN2
@UNKNOWN1:
	LDA $1E
	ASL
	TAX
<<<<<<< HEAD
	LDA ENTITY_HITBOX_LEFT_RIGHT_WIDTHS,X
	STA @LOCAL05
	LDA ENTITY_HITBOX_LEFT_RIGHT_HEIGHTS,X
	STA @VIRTUAL04
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA ENTITY_HITBOX_UP_DOWN_WIDTHS,X
	STA @LOCAL05
	LDA ENTITY_HITBOX_UP_DOWN_HEIGHTS,X
	STA @VIRTUAL04
=======
	LDA UNKNOWN_7E33DE,X
	STA $18
	LDA UNKNOWN_7E1A4A,X
	STA $04
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA UNKNOWN_7E3366,X
	STA $18
	LDA UNKNOWN_7E33A2,X
	STA $04
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN3:
	LDA $18
	STA $02
	TYA
	SEC
	SBC $02
	STA $16
	LDA $18
	ASL
	STA $14
	LDA $1C
	STA $02
	SEC
	SBC $04
	STA $1C
	LDA #$0000
	STA $02
	STA $12
	JMP @UNKNOWN12
@UNKNOWN4:
	LDA $02
	CMP $1E
	BEQL @UNKNOWN11
	LDA $02
	CMP #$0017
	BEQL @UNKNOWN11
	LDA $02
	ASL
	TAX
	LDA ENTITY_SCRIPT_TABLE,X
	CMP #$FFFF
	BEQL @UNKNOWN11
	LDA ENTITY_COLLIDED_OBJECTS,X
	CMP #ENTITY_COLLISION_DISABLED
	BEQ @UNKNOWN11
	LDA ENTITY_HITBOX_ENABLED,X
	BEQ @UNKNOWN11
	LDA ENTITY_DIRECTIONS,X
	CMP #DIRECTION::RIGHT
	BEQ @UNKNOWN8
	CMP #DIRECTION::LEFT
	BNE @UNKNOWN9
@UNKNOWN8:
	LDA $02
	ASL
	TAX
<<<<<<< HEAD
	LDY ENTITY_HITBOX_LEFT_RIGHT_WIDTHS,X
	LDA ENTITY_HITBOX_LEFT_RIGHT_HEIGHTS,X
	STA @LOCAL01
	BRA @UNKNOWN10
@UNKNOWN9:
	LDY ENTITY_HITBOX_UP_DOWN_WIDTHS,X
	LDA ENTITY_HITBOX_UP_DOWN_HEIGHTS,X
	STA @LOCAL01
=======
	LDY UNKNOWN_7E33DE,X
	LDA UNKNOWN_7E1A4A,X
	STA $10
	BRA @UNKNOWN10
@UNKNOWN9:
	LDY UNKNOWN_7E3366,X
	LDA UNKNOWN_7E33A2,X
	STA $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN10:
	LDA $02
	ASL
	TAX
	LDA $10
	STA $02
	LDA ENTITY_ABS_Y_TABLE,X
	SEC
	SBC $02
	STA $0E
	SEC
	SBC $04
	CMP $1C
	BCS @UNKNOWN11
	LDA $10
	CLC
	ADC $0E
	CMP $1C
	BLTEQ @UNKNOWN11
	STY $02
	LDA ENTITY_ABS_X_TABLE,X
	SEC
	SBC $02
	STA $0E
	TYA
	ASL
	TAX
	LDA $0E
	SEC
	SBC $14
	CMP $16
	BCS @UNKNOWN11
	STX $02
	LDA $0E
	CLC
	ADC $02
	CMP $16
	BLTEQ @UNKNOWN11
	LDA $12
	STA $02
	STA $1A
	BRA @UNKNOWN13
@UNKNOWN11:
	LDA $12
	STA $02
	INC $02
	LDA $02
	STA $12
@UNKNOWN12:
	LDA $02
	CMP #$001E
	BNEL @UNKNOWN4
@UNKNOWN13:
	LDA $1E
	ASL
	TAX
	LDA $1A
	STA ENTITY_COLLIDED_OBJECTS,X
	LDA $1A
	PLD
	RTL
