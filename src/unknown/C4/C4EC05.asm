
UNKNOWN_C4EC05: ;$C4EC05
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
.IF .DEFINED(JPN)
	RESERVE_STACK_SPACE 18
	STY $04
	STX $02
	TAX
	CPX #$0007
	BEQ @UNKNOWN0
	TXA
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::name
	PROMOTENEARPTRA @VIRTUAL06
=======
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::name
	PROMOTENEARPTRA $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA $02
	JSL UNKNOWN_C4EA9C
	TAX
	BRA @UNKNOWN1
@UNKNOWN0:
	PROMOTENEARPTR GAME_STATE + game_state::pet_name, $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(game_state::pet_name)
	LDA $02
	JSL UNKNOWN_C4EA9C
	TAX
@UNKNOWN1:
	TXY
	LDX $04
	LDA $02
	JSL UNKNOWN_C4EB04
.ELSE
	RESERVE_STACK_SPACE 16
	STY $04
	STX $02
	CMP #$0007
	BEQ @UNKNOWN0
	LDY $02
	LDX #UNK_SIZE
	STX $0E
	DEC
	ASL
	TAX
	LDA UNKNOWN_C3FDB5,X
	LDX $0E
	JSL UNKNOWN_C4EA9C
	LDY #UNK_SIZE
	LDX $04
	LDA $02
	JSL UNKNOWN_C4EB04
	BRA @UNKNOWN1
@UNKNOWN0:
	LDY $02
	LDX #$0006
	LDA #$01C0
	JSL UNKNOWN_C4EA9C
	LDY #$0006
	LDX $04
	LDA $02
	JSL UNKNOWN_C4EB04
@UNKNOWN1:
.ENDIF
	PLD
	RTL
