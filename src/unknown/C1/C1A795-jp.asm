
UNKNOWN_C1A795:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	TAX
	DEC
	STA @LOCAL07
	LDA #1
	STA @LOCAL06
@UNKNOWN0:
	LDA #4
	JSR UNKNOWN_C193E7
	LDA #6
	JSR SET_WINDOW_FOCUS
	LDA @LOCAL06
	DEC
	JSR UNKNOWN_C11887
	LDA #1
	JSR SELECTION_MENU
	STA @LOCAL06
	JSR UNKNOWN_C19437
	LDA @LOCAL06
	BEQL @UNKNOWN23
	CREATE_WINDOW_NEAR #WINDOW::EQUIP_MENU_ITEMLIST
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_11, @VIRTUAL06
	LDA @LOCAL06
	DEC
	ASL
	ASL
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #4
	LDA #7
	JSL SET_WINDOW_TITLE
	LDA #0
	STA @VIRTUAL04
	STA @LOCAL05
	LDA #.LOWORD(-1)
	STA @LOCAL04
	LDA #0
	STA @VIRTUAL02
	JMP @UNKNOWN10
@UNKNOWN2:
	LDA @LOCAL07
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC @VIRTUAL02
	TAX
	LDA __BSS_START__,X
	AND #$00FF
	STA @LOCAL03
	BEQL @UNKNOWN9
	LDA @LOCAL03
	JSR GET_ITEM_TYPE
	CMP #2
	BNEL @UNKNOWN9
	LDA @LOCAL03
	JSL GET_ITEM_SUBTYPE
	CMP @LOCAL06
	BNEL @UNKNOWN9
	LDY @LOCAL07
	INY
	STY @LOCAL02
	LDX @LOCAL03
	TYA
	JSL UNKNOWN_C3EE14
	CMP #0
	BEQL @UNKNOWN9
	LOADPTR ITEM_CONFIGURATION_TABLE, @VIRTUAL06
	LDA @LOCAL03
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(item)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDX #.SIZEOF(item::name)
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ UNKNOWN_7E9C9F+.SIZEOF(item::name)
	LDX @VIRTUAL02
	INX
	LDY @LOCAL02
	REP #PROC_FLAGS::ACCUM8
	TYA
	JSL CHECK_ITEM_EQUIPPED
	CMP #0
	BEQ @UNKNOWN8
	PROMOTENEARPTR UNKNOWN_7E9C9F, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL STRLEN
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #34
	STA UNKNOWN_7E9C9F,X
	STZ UNKNOWN_7E9C9F+1,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL05
	STA @VIRTUAL04
	STA @LOCAL04
@UNKNOWN8:
	PROMOTENEARPTR UNKNOWN_7E9C9F, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDA @VIRTUAL02
	INC
	JSR UNKNOWN_C115F4
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #115
	STA __BSS_START__+14,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL05
	STA @VIRTUAL04
	INC @VIRTUAL04
	LDA @VIRTUAL04
	STA @LOCAL05
@UNKNOWN9:
	INC @VIRTUAL02
@UNKNOWN10:
	LDA @VIRTUAL02
	CMP #14
	BCCL @UNKNOWN2
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_13, @LOCAL00
	MOVE_INT_CONSTANT NULL, @LOCAL01
	LDA #.LOWORD(-1)
	JSR UNKNOWN_C115F4
	LDY @LOCAL04
	LDX #0
	LDA #1
	JSR UNKNOWN_C1181B
	LDA @LOCAL07
	SEP #PROC_FLAGS::ACCUM8
	INC
	STA UNKNOWN_7E9CD6
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL06
	CMP #1
	BEQ @UNKNOWN12
	CMP #2
	BEQ @UNKNOWN13
	CMP #3
	BEQ @UNKNOWN14
	CMP #4
	BEQ @UNKNOWN15
	BRA @UNKNOWN16
@UNKNOWN12:
	LOADPTR UNKNOWN_C22562, @LOCAL00
	JSR UNKNOWN_C11F5A
	BRA @UNKNOWN16
@UNKNOWN13:
	LOADPTR UNKNOWN_C225AC, @LOCAL00
	JSR UNKNOWN_C11F5A
	BRA @UNKNOWN16
@UNKNOWN14:
	LOADPTR UNKNOWN_C2260D, @LOCAL00
	JSR UNKNOWN_C11F5A
	BRA @UNKNOWN16
@UNKNOWN15:
	LOADPTR UNKNOWN_C22673, @LOCAL00
	JSR UNKNOWN_C11F5A
@UNKNOWN16:
	LDA #1
	STA UNKNOWN_7E9CD4
	JSR UNKNOWN_C193E7
	LDA #1
	JSR SELECTION_MENU
	TAX
	STX @LOCAL04
	JSR UNKNOWN_C19437
	JSR UNKNOWN_C11F8A
	LDX @LOCAL04
	CPX #.LOWORD(-1)
	BNE @UNKNOWN21
	LDA @LOCAL06
	CMP #1
	BEQ @UNKNOWN17
	CMP #2
	BEQ @UNKNOWN18
	CMP #3
	BEQ @UNKNOWN19
	CMP #4
	BEQ @UNKNOWN20
	BRA @UNKNOWN22
@UNKNOWN17:
	LDX #0
	LDA @LOCAL07
	INC
	JSL CHANGE_EQUIPPED_WEAPON
	BRA @UNKNOWN22
@UNKNOWN18:
	LDX #0
	LDA @LOCAL07
	INC
	JSL CHANGE_EQUIPPED_BODY
	BRA @UNKNOWN22
@UNKNOWN19:
	LDX #0
	LDA @LOCAL07
	INC
	JSL CHANGE_EQUIPPED_ARMS
	BRA @UNKNOWN22
@UNKNOWN20:
	LDX #0
	LDA @LOCAL07
	INC
	JSL CHANGE_EQUIPPED_OTHER
	BRA @UNKNOWN22
@UNKNOWN21:
	CPX #0
	BEQ @UNKNOWN22
	LDA @LOCAL07
	INC
	JSR EQUIP_ITEM
@UNKNOWN22:
	LDA #WINDOW::EQUIP_MENU_ITEMLIST
	JSR CLOSE_WINDOW
	LDA @LOCAL07
	INC
	JSL UNKNOWN_C1A778
	JMP @UNKNOWN0
@UNKNOWN23:
	END_C_FUNCTION
