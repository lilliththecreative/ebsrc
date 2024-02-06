
CC_1A_05:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
.IF .DEFINED(USA)
	STACK_RESERVE_INT16
.ENDIF
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
.IF .DEFINED(USA)
	STX @LOCAL01
.IF !.DEFINED(PROTOTYPE19950327)
	TAY
	STY @LOCAL00
.ENDIF
.ENDIF
	LDA #1
	CLC
	SBC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	BRANCHLTEQS @UNKNOWN2
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX CC_ARGUMENT_GATHERING_LOOP_COUNTER
	STA CC_ARGUMENT_STORAGE,X
	REP #PROC_FLAGS::ACCUM8
	INC CC_ARGUMENT_GATHERING_LOOP_COUNTER
	LDA #.LOWORD(CC_1A_05)
	BRA @UNKNOWN6
@UNKNOWN2:
	LDA CC_ARGUMENT_STORAGE
	AND #$00FF
.IF .DEFINED(JPN)
	TAY
	STY @LOCAL00
	CPX #0
.ELSE
.IF .DEFINED(PROTOTYPE19950327)
	TAY
	STY @LOCAL00
.ELSE
	STA @VIRTUAL02
.ENDIF
	LDA CURRENT_FOCUS_WINDOW
	CMP #1
	BNE @UNKNOWN3
	LDA #1
	JSL UNKNOWN_EF0115
.IF !.DEFINED(PROTOTYPE19950327)
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	STZ a:window_stats::text_y,X
	TAX
	STZ a:window_stats::text_x,X
	LDY @LOCAL00
	TYA
	CLC
	ADC #6
	JSL UNKNOWN_C20A20
.ENDIF
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E5E71
@UNKNOWN3:
	LDX @LOCAL01
.ENDIF
	BEQ @UNKNOWN4
.IF .DEFINED(USA)
	REP #PROC_FLAGS::ACCUM8
.ENDIF
	TXA
	BRA @UNKNOWN5
@UNKNOWN4:
	JSR GET_ARGUMENT_MEMORY
	LDA @VIRTUAL06
@UNKNOWN5:
.IF .DEFINED(JPN) || .DEFINED(PROTOTYPE19950327)
	LDY @LOCAL00
	TYX
.ELSE
	LDX @VIRTUAL02
.ENDIF
	JSR INVENTORY_GET_ITEM_NAME
	LDA #NULL
@UNKNOWN6:
	END_C_FUNCTION
