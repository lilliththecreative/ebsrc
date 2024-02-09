
UNKNOWN_C1952F: ;$C1952F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 21
	TAX
	DEC
	STA $02
	JSL SET_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::STATUS_MENU
	JSL WINDOW_TICK_WITHOUT_INSTANT_PRINTING
<<<<<<< HEAD
	LDA #1
	STA FORCE_LEFT_TEXT_ALIGNMENT
=======
	LDA #$0001
	STA UNKNOWN_7E5E71
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	DISPLAY_TEXT_PTR STATUS_WINDOW_TEXT
	STZ FORCE_LEFT_TEXT_ALIGNMENT
	LDA GAME_STATE+game_state::player_controlled_party_count
	AND #$00FF
	CMP #$0001
	BEQ @UNKNOWN0
<<<<<<< HEAD
	LDA #8
	STA PAGINATION_WINDOW
=======
	LDA #$0008
	STA UNKNOWN_7E5E7A
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
@UNKNOWN0:
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAY
	STY $13
	TYA
	CLC
<<<<<<< HEAD
	ADC #.LOWORD(PARTY_CHARACTERS)
	PROMOTENEARPTRA @VIRTUAL06
=======
	ADC #.LOWORD(CHAR_STRUCT)
	PROMOTENEARPTRA $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDX #.SIZEOF(char_struct::name)
	LDA #$0008
	JSL SET_WINDOW_TITLE
<<<<<<< HEAD
	LDA #1
	STA FORCE_LEFT_TEXT_ALIGNMENT
=======
	LDA #$0001
	STA UNKNOWN_7E5E71
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR UNKNOWN_C10EB4
	LDX #$0000
	LDA #$0026
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::level,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::level,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDA #$0002
	JSR UNKNOWN_C10EB4
	LDX #$0003
	LDA #$005E
	JSL UNKNOWN_C43D75
<<<<<<< HEAD
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::current_hp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
=======
	LDY $13
	LDA CHAR_STRUCT+char_struct::current_hp,Y
	STORE_INT1632 $06
	MOVE_INT $06, $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR PRINT_NUMBER
	LDX #$0003
	LDA #$0072
	JSL UNKNOWN_C43D75
	LDA #$005F ;'\'
	JSR PRINT_LETTER
	LDX #$0003
	LDA #$0079
	JSL UNKNOWN_C43D75
<<<<<<< HEAD
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::max_hp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
=======
	LDY $13
	LDA CHAR_STRUCT+char_struct::max_hp,Y
	STORE_INT1632 $06
	MOVE_INT $06, $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR PRINT_NUMBER
	LDX #$0004
	LDA #$005E
	JSL UNKNOWN_C43D75
<<<<<<< HEAD
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::current_pp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
=======
	LDY $13
	LDA CHAR_STRUCT+char_struct::current_pp,Y
	STORE_INT1632 $06
	MOVE_INT $06, $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR PRINT_NUMBER
	LDX #$0004
	LDA #$0072
	JSL UNKNOWN_C43D75
	LDA #$005F ;'\'
	JSR PRINT_LETTER
	LDX #$0004
	LDA #$0079
	JSL UNKNOWN_C43D75
<<<<<<< HEAD
	LDY @LOCAL02
	LDA PARTY_CHARACTERS+char_struct::max_pp,Y
	STORE_INT1632 @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
=======
	LDY $13
	LDA CHAR_STRUCT+char_struct::max_pp,Y
	STORE_INT1632 $06
	MOVE_INT $06, $0E
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSR PRINT_NUMBER
	LDX #$0000
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::offense,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::offense,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDX #$0001
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::defense,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::defense,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDX #$0002
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::speed,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::speed,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDX #$0003
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::guts,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::guts,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDX #$0004
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::vitality,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::vitality,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDX #$0005
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::iq,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::iq,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDX #$0006
	LDA #$00C7
	JSL UNKNOWN_C43D75
	LDY $13
	SEP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA PARTY_CHARACTERS+char_struct::luck,Y
	STORE_INT832 @VIRTUAL06
=======
	LDA CHAR_STRUCT+char_struct::luck,Y
	STORE_INT832 $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
	LDA #$0006
	JSR UNKNOWN_C10EB4
	LDX #$0005
	LDA #$0061
	JSL UNKNOWN_C43D75
	LDY $13
	TYA
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS) + char_struct::exp
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
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
	JSR PRINT_NUMBER
	LDX #$0006
	LDA #$000A
	JSL UNKNOWN_C43D75
	LDA $02
	INC
	JSL GET_REQUIRED_EXP
	MOVE_INT $06, $0E
	JSR PRINT_NUMBER
<<<<<<< HEAD
	STZ FORCE_LEFT_TEXT_ALIGNMENT
	LDX #0
	STX @LOCAL02
=======
	STZ UNKNOWN_7E5E71
	LDX #$0000
	STX $13
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JMP @UNKNOWN10
@UNKNOWN4:
	STX $04
	LDA $02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::afflictions
	CLC
	ADC $04
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
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
	JSR PRINT_STRING
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
	ADC #.LOWORD(PARTY_CHARACTERS)+char_struct::afflictions
	JSL UNKNOWN_C223D9
	JSL UNKNOWN_C43F77
	LDA $02
	CMP #$0002
	BEQ @UNKNOWN12
<<<<<<< HEAD
	LDA #1
	STA FORCE_LEFT_TEXT_ALIGNMENT
	LDX #7
	LDA #36
=======
	LDA #$0001
	STA UNKNOWN_7E5E71
	LDX #$0007
	LDA #$0024
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL UNKNOWN_C43D75
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_4, $0E
	LDA #$0023
	JSR PRINT_STRING
	STZ FORCE_LEFT_TEXT_ALIGNMENT
@UNKNOWN12:
	JSL CLEAR_INSTANT_PRINTING
	PLD
	RTL
