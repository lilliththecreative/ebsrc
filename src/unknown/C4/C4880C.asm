
UNKNOWN_C4880C:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDA #0
	JSL UNKNOWN_C4838A
	TAY
	LOADPTR UNKNOWN_7F4000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDX #0
	BRA @UNKNOWN3
@UNKNOWN0:
	LDA #0
	STA @LOCAL06
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA #0
	STA [@VIRTUAL06]
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN2:
	CMP #8
	BCC @UNKNOWN1
	INX
@UNKNOWN3:
	CPX #29
	BCC @UNKNOWN0
	TYA
	CLC
	ADC #30
	STA @VIRTUAL04
	LDX #0
	STX @LOCAL05
	TXA
	STA @VIRTUAL02
	STA @LOCAL04
	BRA @UNKNOWN5
@UNKNOWN4:
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @VIRTUAL02
	JSL UNKNOWN_C4810E
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDX @LOCAL05
	INX
	STX @LOCAL05
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL04
@UNKNOWN5:
	CPX #4
	BCC @UNKNOWN4
	PROMOTENEARPTR CHAR_STRUCT + char_struct::name, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL STRLEN
	TAY
	STY @LOCAL03
	CPY #6
	BNE @UNKNOWN6
	DEY
	STY @LOCAL03
@UNKNOWN6:
	LDX #0
	STX @LOCAL05
	BRA @UNKNOWN8
@UNKNOWN7:
	MOVE_INT @LOCAL07, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL04
	STA @VIRTUAL02
	JSL UNKNOWN_C4810E
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDX @LOCAL05
	INX
	STX @LOCAL05
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL04
@UNKNOWN8:
	LDY @LOCAL03
	STY @VIRTUAL02
	TXA
	CMP @VIRTUAL02
	BCC @UNKNOWN7
	LDX #0
	STX @LOCAL05
	BRA @UNKNOWN10
@UNKNOWN9:
	MOVE_INT @LOCAL07, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL04
	STA @VIRTUAL02
	JSL UNKNOWN_C4810E
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDX @LOCAL05
	INX
	STX @LOCAL05
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL04
@UNKNOWN10:
	CPX #6
	BCC @UNKNOWN9
	LDX #0
	STX @LOCAL05
	BRA @UNKNOWN12
@UNKNOWN11:
	MOVE_INT @LOCAL07, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @LOCAL04
	STA @VIRTUAL02
	JSL UNKNOWN_C4810E
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDX @LOCAL05
	INX
	STX @LOCAL05
	INC @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL04
@UNKNOWN12:
	CPX #205
	BCC @UNKNOWN11
	LDX #0
	BRA @UNKNOWN16
@UNKNOWN13:
	LDA #0
	STA @LOCAL06
	BRA @UNKNOWN15
@UNKNOWN14:
	LDA #0
	MOVE_INTY @LOCAL07, @VIRTUAL06
	STA [@VIRTUAL06]
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL07
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN15:
	CMP #8
	BCC @UNKNOWN14
	INX
@UNKNOWN16:
	CPX #30
	BCC @UNKNOWN13
	LOADPTR UNKNOWN_7F1000, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LOADPTR UNKNOWN_7F4000, @VIRTUAL0A
	LDA #0
	STA @LOCAL06
	BRA @UNKNOWN18
@UNKNOWN17:
	LDA #$0C10
	STA [@VIRTUAL06]
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA @LOCAL06
	INC
	STA @LOCAL06
@UNKNOWN18:
	CMP #8
	BCC @UNKNOWN17
	LDA #0
	STA @LOCAL04
	BRA @UNKNOWN22
@UNKNOWN19:
	LDX #0
	BRA @UNKNOWN21
@UNKNOWN20:
	LDY #16
	LDA [@VIRTUAL0A],Y
	LSR
	AND #$0005
	STA @VIRTUAL02
	LDA [@VIRTUAL0A]
	ASL
	AND #$000A
	ORA @VIRTUAL02
	TAY
	STA [@VIRTUAL06]
	MOVE_INT @VIRTUAL06, @LOCAL01
	TYA
	CLC
	ADC #$0C10
	STA [@LOCAL01]
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA [@LOCAL01]
	CLC
	ADC #$0C10
	STA [@LOCAL01]
	MOVE_INT @LOCAL02, @VIRTUAL06
	INC @VIRTUAL06
	INC @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	INC @VIRTUAL0A
	INC @VIRTUAL0A
	INX
@UNKNOWN21:
	CPX #8
	BCC @UNKNOWN20
	LDA @LOCAL04
	INC
	STA @LOCAL04
@UNKNOWN22:
	LDA @VIRTUAL04
	CLC
	ADC #30
	STA @VIRTUAL02
	LDA @LOCAL04
	CMP @VIRTUAL02
	BCC @UNKNOWN19
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA @VIRTUAL04
	ASL
	STA ENTITY_SCRIPT_VAR0_TABLE,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #8
	STA UNKNOWN_7F0000
	LDA #30
	STA UNKNOWN_7F0000+1
	REP #PROC_FLAGS::ACCUM8
	END_C_FUNCTION
