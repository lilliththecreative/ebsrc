
; short unknownC05F33(short x, short y, short entityID)
UNKNOWN_C05F33: ;$C05F33
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	STX $12
	STA $10
	TYA
	ASL
	TAX
	LDY ENTITY_SIZES,X
<<<<<<< HEAD
	STY @LOCAL00
	STZ TEMP_ENTITY_SURFACE_FLAGS
=======
	STY $0E
	STZ UNKNOWN_7E5DA4
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TYA
	ASL
	STA $02
	LDX $02
	LDA $10
	SEC
	SBC f:UNKNOWN_C42A1F,X
<<<<<<< HEAD
	STA CHECKED_COLLISION_LEFT_X
	LDX @LOCAL02
=======
	STA UNKNOWN_7E5DAC
	LDX $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	TXA
	LDX $02
	SEC
	SBC f:UNKNOWN_C42A41,X
	LDX $02
	CLC
	ADC f:UNKNOWN_C42AEB,X
	STA CHECKED_COLLISION_TOP_Y
	TYX
	JSR UNKNOWN_C05639
	LDY $0E
	TYX
	LDA CHECKED_COLLISION_TOP_Y
	JSR UNKNOWN_C056D0
<<<<<<< HEAD
	LDA TEMP_ENTITY_SURFACE_FLAGS
	END_C_FUNCTION
=======
	LDA UNKNOWN_7E5DA4
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
