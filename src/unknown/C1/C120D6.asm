
UNKNOWN_C120D6:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
.IF !.DEFINED(PROTOTYPE19950327)
	STACK_RESERVE_INT16
.ENDIF
	STACK_RESERVE_INT16 "LOCAL02"
	STACK_RESERVE_INT16 "LOCAL03"
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
.IF .DEFINED(JPN)
	@TO_TEXT_LENGTH = 8
	@ROW_TEXT_LENGTH = 4
	@CURSOR_POS_Y = 19
.ELSE
	.IF .DEFINED(PROTOTYPE19950327)
		@CURSOR_POS_Y = 10
	.ELSE
		@CURSOR_POS_Y = 17
	.ENDIF
	@TO_TEXT_LENGTH = 3
	@ROW_TEXT_LENGTH = 13
.ENDIF
	STX @LOCAL03
	TAY
	STY @LOCAL02
	JSR SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN31
	LOADPTR BATTLE_TO_TEXT, @LOCAL00
	LDA #@TO_TEXT_LENGTH
	JSR PRINT_STRING
	LDX @LOCAL03
	CPX #.LOWORD(-1)
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	BEQL @UNKNOWN3
.ELSE
	BEQ @UNKNOWN3
.ENDIF
	STX @VIRTUAL02
	LDY @LOCAL02
	TYA
	LDY NUM_BATTLERS_IN_FRONT_ROW
	JSL MULT16
	CLC
	ADC @VIRTUAL02
	INC
	JSL UNKNOWN_C23E8A
.IF .DEFINED(USA)
	LDA #0
	JSL UNKNOWN_C3E75D
.ENDIF
	JSR RETURN_BATTLE_ATTACKER_ADDRESS
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #$00FF
	JSR PRINT_STRING
.IF .DEFINED(PROTOTYPE19950327)
	LDX #0
	LDA #@CURSOR_POS_Y
	JSL UNKNOWN_C438A5
.ELSE
	LDY @LOCAL02
	BEQ @UNKNOWN1
	LDX @LOCAL03
	LDA BACK_ROW_BATTLERS,X
	AND #$00FF
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battler)
	CLC
	ADC #.LOWORD(BATTLERS_TABLE) + battler::afflictions
	BRA @UNKNOWN2
@UNKNOWN1:
	LDX @LOCAL03
	LDA FRONT_ROW_BATTLERS,X
	AND #$00FF
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(battler)
	CLC
	ADC #.LOWORD(BATTLERS_TABLE) + battler::afflictions
@UNKNOWN2:
	TAY
	STY @LOCAL01
	LDX #0
	LDA #@CURSOR_POS_Y
	JSR UNKNOWN_C438A5
	LDX #0
	LDY @LOCAL01
	TYA
	JSL UNKNOWN_C223D9
.IF .DEFINED(JPN)
	JSR PRINT_LETTER
.ELSE
	JSL UNKNOWN_C43F77
.ENDIF
.ENDIF
	BRA @UNKNOWN6
@UNKNOWN3:
	LDY @LOCAL02
	BEQ @UNKNOWN4
	LOADPTR BATTLE_BACK_ROW_TEXT, @VIRTUAL06
	BRA @UNKNOWN5
@UNKNOWN4:
	LOADPTR BATTLE_FRONT_ROW_TEXT, @VIRTUAL06
@UNKNOWN5:
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA #@ROW_TEXT_LENGTH
	JSR PRINT_STRING
@UNKNOWN6:
	JSR CLEAR_INSTANT_PRINTING
	END_C_FUNCTION
