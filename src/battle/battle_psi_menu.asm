
; A: unknown_A97D*
BATTLE_PSI_MENU:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
.IF .DEFINED(USA)
	@LOCAL04_2 := @LOCAL05
	STACK_RESERVE_INT16 "LOCALEB"
.ELSE
	@LOCAL04_2 := @LOCAL04
.ENDIF
	STACK_RESERVE_INT16 "LOCAL06"
	STACK_RESERVE_PARAM_INT16 ;NEAR A97DStruct*
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	STA @VIRTUAL04
	STA @LOCAL06
.IF .DEFINED(USA)
	STZ @LOCALEB
.ENDIF
@UNKNOWN0:
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN10
	LDA #$0000
	STA @LOCAL05
	BRA @UNKNOWN2
@UNKNOWN1:
	TAX
	INX
	STX @LOCAL04
	LOADPTR PSI_CATEGORIES, @VIRTUAL06
	LDA @LOCAL05
	OPTIMIZED_MULT @VIRTUAL04, PSI_CATEGORY_NAME_SIZE
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	MOVE_INT_CONSTANT NULL, @LOCAL01
	TXA
	JSR UNKNOWN_C115F4
	LDX @LOCAL04
	TXA
	STA @LOCAL05
@UNKNOWN2:
	CMP #$0003
	BCC @UNKNOWN1
	LDY #$0000
	TYX
	LDA #$0001
	JSR UNKNOWN_C1180D
@UNKNOWN3:
	LDA #$0010
	JSR SET_WINDOW_FOCUS
.IF .DEFINED(USA)
	LDA @LOCALEB
	BNE @UNKNOWN4
.ENDIF
	JSR PRINT_MENU_ITEMS
.IF .DEFINED(USA)
@UNKNOWN4:
	INC @LOCALEB
.ENDIF
	LOADPTR UNKNOWN_C1CAF5, @LOCAL00
	JSR UNKNOWN_C11F5A
	LDA #$0001
	JSR SELECTION_MENU
	STA @VIRTUAL02
	JSR UNKNOWN_C11F8A
	LDA @VIRTUAL02
	BEQL @UNKNOWN18
	LDA @LOCAL06
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA a:unknown_A97D::unknown0,X
	AND #$00FF
	TAX
	LDA @VIRTUAL02
	JSR UNKNOWN_C1CB7F
	CMP #$0000
	BEQ @UNKNOWN3
@UNKNOWN6:
	CREATE_WINDOW_NEAR #WINDOW::TEXT_STANDARD
	LDA @VIRTUAL02
	JSL UNKNOWN_C1CAF5
	LOADPTR UNKNOWN_C1C8BC, @LOCAL00
	JSR UNKNOWN_C11F5A
	LDA #$0001
	JSR SELECTION_MENU
	TAY
	STY @LOCAL04_2
	JSR UNKNOWN_C11F8A
	LDY @LOCAL04_2
	BEQL @UNKNOWN14
.IF .DEFINED(PROTOTYPE19950327) || .DEFINED(JPN)
	LDX #$0006
	TYA
	JSR UNKNOWN_C1CA72
.ENDIF
	LOADPTR BATTLE_ACTION_TABLE, @VIRTUAL06
.IF .DEFINED(PROTOTYPE19950327) || .DEFINED(JPN)
	LDY @LOCAL04_2
.ENDIF
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 15
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, 12
	STA @LOCAL03
	LDA @LOCAL06
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA a:unknown_A97D::unknown0,X
	AND #$00FF
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA @LOCAL03
	INC
	INC
	INC
	MOVE_INTY @VIRTUAL06, @VIRTUAL0A
	CLC
	ADC @VIRTUAL0A
	STA @VIRTUAL0A
	LDA [@VIRTUAL0A]
	AND #$00FF
	CMP CHAR_STRUCT+char_struct::current_pp_target,X
	BLTEQ @UNKNOWN8
	CREATE_WINDOW_NEAR #WINDOW::TEXT_BATTLE
	LDA #$0002
	JSR ENABLE_BLINKING_TRIANGLE
	DISPLAY_TEXT_PTR MSG_BTL_PSI_CANNOT_MENU
	JSR CLEAR_BLINKING_PROMPT
	JSR CLOSE_FOCUS_WINDOW
	LDX #$0000
	STX @LOCAL02
	JMP @UNKNOWN15
@UNKNOWN8:
	LDA @LOCAL03
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA [@VIRTUAL06]
	AND #$00FF
	TAX
	CPX #$0001
	BEQ @UNKNOWN9
	CPX #$0003
	BNE @UNKNOWN10
@UNKNOWN9:
	LDY @LOCAL04_2
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 15
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	OPTIMIZED_MULT @VIRTUAL04, 12
	TAX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	BNE @UNKNOWN10
	LDA #$0010
	JSR CLOSE_WINDOW
	LDA #$0004
	JSR CLOSE_WINDOW
	LDA #$0001
	JSR CLOSE_WINDOW
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN26
	JSR SET_INSTANT_PRINTING
	LDA #$0006
	JSR UNKNOWN_C10FEA
	LDY @LOCAL04_2
	TYA
	JSR UNKNOWN_C1CA06
	LDA #$0000
	JSR UNKNOWN_C10FEA
@UNKNOWN10:
	LOADPTR PSI_ABILITY_TABLE, @VIRTUAL06
	LDY @LOCAL04_2
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 15
	INC
	INC
	INC
	INC
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	LDA @LOCAL06
	STA @VIRTUAL04
	LDX @VIRTUAL04
	LDA a:unknown_A97D::unknown0,X
	AND #$00FF
	TAX
	LDA [@VIRTUAL06]
	JSR DETERMINE_TARGETTING
	TAX
	STX @LOCAL02
	LDA [@VIRTUAL06]
	OPTIMIZED_MULT @VIRTUAL04, 12
	TAX
	LDA f:BATTLE_ACTION_TABLE,X
	AND #$00FF
	BNE @UNKNOWN11
	LDA #$0026
	JSR CLOSE_WINDOW
	BRA @UNKNOWN12
@UNKNOWN11:
	LDA #$0010
	JSR CLOSE_WINDOW
	LDA #$0004
	JSR CLOSE_WINDOW
	LDA #$0001
	JSR CLOSE_WINDOW
@UNKNOWN12:
	LDX @LOCAL02
	TXA
	AND #$00FF
	BEQL @UNKNOWN0
	BRA @UNKNOWN15
@UNKNOWN14:
	LDX #$0001
	STX @LOCAL02
@UNKNOWN15:
	CPX #$0000
	BEQL @UNKNOWN6
	LDA #$0004
	JSR CLOSE_WINDOW
	LDY @LOCAL04_2
	BEQL @UNKNOWN3
	TYA
	SEP #PROC_FLAGS::ACCUM8
	LDX @LOCAL06
	STX @VIRTUAL04
	STA a:unknown_A97D::unknown1,X
	REP #PROC_FLAGS::ACCUM8
	TYA
	OPTIMIZED_MULT @VIRTUAL04, 15
	TAX
	INX
	INX
	INX
	INX
	LDA f:PSI_ABILITY_TABLE,X
	LDX @LOCAL06
	STX @VIRTUAL04
	STA a:unknown_A97D::unknown2,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$08
	PHA
	LDX @LOCAL02
	REP #PROC_FLAGS::ACCUM8
	TXA
	SEP #PROC_FLAGS::INDEX8
	PLY
	JSL ASR8_UNKNOWN1
	SEP #PROC_FLAGS::ACCUM8
	REP #PROC_FLAGS::INDEX8
	LDX @VIRTUAL04
	STA a:unknown_A97D::unknown4,X
	LDX @LOCAL02
	REP #PROC_FLAGS::ACCUM8
	TXA
	SEP #PROC_FLAGS::ACCUM8
	LDX @VIRTUAL04
	STA a:unknown_A97D::unknown5,X
	REP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA @VIRTUAL02
@UNKNOWN18:
	LDA #$0001
	JSR CLOSE_WINDOW
	LDA #$0010
	JSR CLOSE_WINDOW
	LDA @VIRTUAL02
	END_C_FUNCTION
