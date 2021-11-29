
UNKNOWN_C1952F: ;$C1952F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 21
	TAX
	DEC
	STA $02
	JSL SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::STATUS_MENU
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	DISPLAY_TEXT_PTR STATUS_WINDOW_TEXT
	STZ .LOWORD(UNKNOWN_7E5E71)
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
	LDA #$0008
	STA .LOWORD(UNKNOWN_7E5E7A)
@UNKNOWN0:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	STY $13
	TYA
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA #$0008
	JSL READ_NAME
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0000
	LDA #$0026
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::level,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0003
	LDA #$005E
	JSL UNKNOWN_C43D75
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_hp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0003
	LDA #$0072
	JSL UNKNOWN_C43D75
	LDA #$005F ;'\'
	JSR a:.LOWORD(PRINT_LETTER)
	LDX #$0003
	LDA #$0079
	JSL UNKNOWN_C43D75
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0004
	LDA #$005E
	JSL UNKNOWN_C43D75
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::current_pp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0004
	LDA #$0072
	JSL UNKNOWN_C43D75
	LDA #$005F ;'\'
	JSR a:.LOWORD(PRINT_LETTER)
	LDX #$0004
	LDA #$0079
	JSL UNKNOWN_C43D75
	LDY $13
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,Y
	STA $06
	STZ $08
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0000
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::offense,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0001
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::defense,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0002
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::speed,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0003
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::guts,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0004
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::vitality,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0005
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::iq,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0006
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(CHAR_STRUCT)+char_struct::luck,Y
	STA $06
	STZ $07
	STZ $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDA #$0006
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0005
	LDA #$0061
	JSL UNKNOWN_C43D75
	LDY $13
	TYA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::exp
	TAY
	MOVE_INT_YPTRSRC a:.LOWORD(RAM), $06
	MOVE_INT_CONSTANT EXP_LIMIT, $0A
	CLC
	LDA $06
	SBC $0A
	LDA $08
	SBC $0C
	BRANCHLTEQS @UNKNOWN3
	MOVE_INT $0A, $06
@UNKNOWN3:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0006
	LDA #$000A
	JSL UNKNOWN_C43D75
	LDA $02
	INC
	JSL GET_REQUIRED_EXP
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	STZ .LOWORD(UNKNOWN_7E5E71)
	LDX #$0000
	STX $13
	JMP @UNKNOWN10
@UNKNOWN4:
	STX $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	CLC
	ADC $04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:.LOWORD(RAM),X
	STA $12
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN9
	LDX $13
	TXA
	BEQ @UNKNOWN5
	CMP #$0001
	BEQ @UNKNOWN6
	CMP #$0005
	BEQ @UNKNOWN7
	BRA @UNKNOWN11
@UNKNOWN5:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_5, $06
	LDA $12
	AND #$00FF
	DEC
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $06
	STA $06
	BRA @UNKNOWN8
@UNKNOWN6:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_5, $06
	LDA $12
	AND #$00FF
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #$0060
	CLC
	ADC $06
	STA $06
	BRA @UNKNOWN8
@UNKNOWN7:
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_6, $06
@UNKNOWN8:
	LDX #$0001
	TXA
	JSL UNKNOWN_C438A5
	MOVE_INT $06, $0E
	LDA #$0100
	JSR a:.LOWORD(PRINT_STRING)
	BRA @UNKNOWN11
@UNKNOWN9:
	LDX $13
	INX
	STX $13
@UNKNOWN10:
	CPX #$0007
	BCCL @UNKNOWN4
@UNKNOWN11:
	LDX #$0001
	LDA #$000B
	JSL UNKNOWN_C438A5
	LDX #$0000
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::afflictions
	JSL UNKNOWN_C223D9
	JSL UNKNOWN_C43F77
	LDA $02
	CMP #$0002
	BEQ @UNKNOWN12
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E5E71)
	LDX #$0007
	LDA #$0024
	JSL UNKNOWN_C43D75
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_4, $0E
	LDA #$0023
	JSR a:.LOWORD(PRINT_STRING)
	STZ .LOWORD(UNKNOWN_7E5E71)
@UNKNOWN12:
	JSL CLEAR_INSTANT_PRINTING
	PLD
	RTL
