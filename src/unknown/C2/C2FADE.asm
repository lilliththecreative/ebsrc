
UNKNOWN_C2FADE: ;$C2FADE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TXY
	TAX
	STX BATTLE_SPRITE_PALETTE_EFFECT_SPEED
	TYA
	ASL
	TAX
<<<<<<< HEAD
	LDA BATTLE_SPRITE_PALETTE_EFFECT_SPEED
	STA BATTLE_SPRITE_PALETTE_EFFECT_FRAMES_LEFT,X
	LDX #0
	STX @LOCAL01
=======
	LDA UNKNOWN_7EB37C
	STA UNKNOWN_7EAEF4,X
	LDX #$0000
	STX $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BRA @UNKNOWN1
@UNKNOWN0:
	STX $02
	TYA
	OPTIMIZED_MULT $04, 48
	CLC
	ADC $02
	ASL
	STA $0E
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(BATTLE_SPRITE_PALETTE_EFFECT_DELTAS)
	STA @VIRTUAL02
	LDX @VIRTUAL02
=======
	ADC #.LOWORD(UNKNOWN_7EAEFC)
	STA $02
	LDX $02
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA __BSS_START__,X
	EOR #$FFFF
	INC
	LDX $02
	STA __BSS_START__,X
	LDA $0E
	TAX
<<<<<<< HEAD
	STZ BATTLE_SPRITE_PALETTE_EFFECT_COUNTERS,X
	LDX @LOCAL01
=======
	STZ UNKNOWN_7EB07C,X
	LDX $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	INX
	STX $10
@UNKNOWN1:
	CPX #$0030
	BCC @UNKNOWN0
	PLD
	RTL
