
UNKNOWN_C4EE9D: ;$C4EE9D
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 16
	LDA #$0000
	STA $02
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA $02
	ASL
	TAX
<<<<<<< HEAD
	LDY UNUSED_7EB4D5,X
	STY @LOCAL00
	LDX #5
	LDA @VIRTUAL02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	LDY @LOCAL00
=======
	LDY UNKNOWN_7EB4D5,X
	STY $0E
	LDX #$0005
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	LDY $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR UNKNOWN_C4EDA3
	INC $02
@UNKNOWN1:
	LDA $02
	CMP #$0004
	BCC @UNKNOWN0
<<<<<<< HEAD
	LDY UNUSED_7EB4DD
	LDX #6
=======
	LDY UNKNOWN_7EB4DD
	LDX #$0006
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	LDA #.LOWORD(GAME_STATE) + game_state::pet_name
	JSR UNKNOWN_C4EDA3
	PLD
	RTS
