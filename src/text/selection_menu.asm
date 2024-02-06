
SELECTION_MENU:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL0C
	LDA CURRENT_FOCUS_WINDOW
	STA @LOCAL0B
	CMP #.LOWORD(-1)
	BNE @UNKNOWN0
	LDA #0
	JMP @UNKNOWN44
@UNKNOWN0:
	LDA CURRENT_FOCUS_WINDOW
	ASL
	TAX
	LDA WINDOW_EXISTENCE_TABLE,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	STA @LOCAL0A
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	LDA UNKNOWN_7E5E79
	AND #$00FF
	BEQ @UNKNOWN1
	LDA UNKNOWN_7E9688
	LDY #window_stats::current_option
	STA (@LOCAL0A),Y
	LDA UNKNOWN_7E968A
	LDY #window_stats::selected_option
	STA (@LOCAL0A),Y
.ENDIF
@UNKNOWN1:
	LDY #window_stats::selected_option
	LDA (@LOCAL0A),Y
	CMP #.LOWORD(-1)
	BEQ @UNKNOWN4
	TAX
	STX @LOCAL09
	STA @LOCAL08
	LDY #window_stats::current_option
	LDA (@LOCAL0A),Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA @VIRTUAL04
	BRA @UNKNOWN3
@UNKNOWN2:
	DEX
	STX @LOCAL09
	LDX @VIRTUAL04
	LDA __BSS_START__+2,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA @VIRTUAL04
@UNKNOWN3:
	LDX @LOCAL09
	BNE @UNKNOWN2
	JSR SET_INSTANT_PRINTING
	LDX @VIRTUAL04
	LDY a:menu_option::text_y,X
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	TAX
	INX
	LDA @VIRTUAL04
	JSL UNKNOWN_C43CD2
	LDA @VIRTUAL04
	CLC
	ADC #menu_option::label
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #0
	LDA #.LOWORD(-1)
	JSL UNKNOWN_C43BB9
	BRA @UNKNOWN5
@UNKNOWN4:
	STZ @LOCAL08
	LDY #window_stats::current_option
	LDA (@LOCAL0A),Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA @VIRTUAL04
@UNKNOWN5:
	STZ @LOCAL09
	LDA @VIRTUAL04
	CLC
	ADC #menu_option::script
	TAY
	STY @LOCAL07
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	CMP @VIRTUAL0A+2
	BNE @UNKNOWN6
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
@UNKNOWN6:
	BEQ @UNKNOWN7
	JSR SET_INSTANT_PRINTING
	LDY @LOCAL07
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	JSL DISPLAY_TEXT
@UNKNOWN7:
	MOVE_INT_CONSTANT NULL, @VIRTUAL0A
	LDA @LOCAL0A
	CLC
	ADC #window_stats::cursor_move_callback
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	CMP @VIRTUAL0A+2
	BNE @UNKNOWN8
	LDA @VIRTUAL06
	CMP @VIRTUAL0A
@UNKNOWN8:
	BEQ @UNKNOWN11
	LDX @VIRTUAL04
	LDA a:menu_option::unknown0,X
	CMP #1
	BNE @UNKNOWN9
	LDA @LOCAL08
	INC
	BRA @UNKNOWN10
@UNKNOWN9:
	LDX @VIRTUAL04
	LDA a:menu_option::userdata,X
@UNKNOWN10:
	STA @LOCAL06
	LDA @LOCAL0A
	CLC
	ADC #window_stats::cursor_move_callback
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, @VIRTUAL06
	LDA @LOCAL06
	PHA
	MOVE_INT @VIRTUAL06, UNKNOWN_7E00BC
	PLA
	JSL UNKNOWN_C09279
	LDA @LOCAL0B
	JSR SET_WINDOW_FOCUS
@UNKNOWN11:
	JSR CLEAR_INSTANT_PRINTING
.IF .DEFINED(USA) && (!.DEFINED(PROTOTYPE19950327))
	LDA UNKNOWN_7E5E79
	AND #$00FF
	BEQ @UNKNOWN12
	LDA UNKNOWN_7E9684
	LDX @VIRTUAL04
	STA a:menu_option::text_x,X
	LDA UNKNOWN_7E9686
	LDX @VIRTUAL04
	STA a:menu_option::text_y,X
.ENDIF
@UNKNOWN12:
	LDX @VIRTUAL04
	LDY a:menu_option::text_y,X
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	TAX
	LDA @VIRTUAL04
	JSL UNKNOWN_C43CD2
	LDA #1
	JSR UNKNOWN_C10FEA
	LDA #33
	JSR UNKNOWN_C10D60
	LDA #0
	JSR UNKNOWN_C10FEA
	JSL WINDOW_TICK
	LDA #1
	STA @VIRTUAL02
@UNKNOWN13:
	LDA @VIRTUAL02
	EOR #$0001
	STA @VIRTUAL02
	STA @LOCAL05
	LDY #window_stats::text_y
	LDA (@LOCAL0A),Y
	ASL
	LDY #window_stats::window_y
	CLC
	ADC (@LOCAL0A),Y
	ASL
	ASL
	ASL
	ASL
	ASL
	STA @VIRTUAL02
	LDY #window_stats::window_x
	LDA (@LOCAL0A),Y
	LDY #window_stats::text_x
	CLC
	ADC (@LOCAL0A),Y
	CLC
	ADC @VIRTUAL02
	CLC
	ADC #VRAM::TEXT_LAYER_TILEMAP + TILEMAP_COORDS 0, 1
	STA @LOCAL07
	LDA @LOCAL05
	STA @VIRTUAL02
	ASL
	STA @LOCAL04
	LOADPTR UNKNOWN_C3E3F8+14, @VIRTUAL06
	LDA @LOCAL04
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDY @LOCAL07
	LDX #2
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL PREPARE_VRAM_COPY
	.A16
	LOADPTR UNKNOWN_C3E3F8+18, @VIRTUAL06
	LDA @LOCAL04
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDA @LOCAL07
	CLC
	ADC #32
	TAY
	LDX #2
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL PREPARE_VRAM_COPY
	.A16
	LDX #0
	STX @LOCAL07
	JMP @UNKNOWN37
@UNKNOWN14:
	JSL UNKNOWN_C12E42
	LDA PAD_PRESS
	AND #PAD::UP
	BEQ @UNKNOWN15
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	STA @LOCAL07
	STZ @LOCAL00
	LDA #SFX::CURSOR3
	STA @LOCAL00+2
	LDA @LOCAL07
	STA @LOCAL01
	LDY #window_stats::height
	LDA (@LOCAL0A),Y
	LSR
	STA @LOCAL02
	LDY #.LOWORD(-1)
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	TAX
	LDA @LOCAL07
	JSL MOVE_CURSOR
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN15:
	LDA PAD_PRESS
	AND #PAD::LEFT
	BEQ @UNKNOWN16
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	STA @LOCAL09
	LDA #.LOWORD(-1)
	STA @LOCAL00
	LDA #SFX::CURSOR2
	STA @LOCAL00+2
	LDY #window_stats::width
	LDA (@LOCAL0A),Y
	STA @LOCAL01
	LDA @LOCAL09
	STA @LOCAL02
	LDY #0
	TAX
	STX @LOCAL03
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	LDX @LOCAL03
	JSL MOVE_CURSOR
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN16:
	LDA PAD_PRESS
	AND #PAD::DOWN
	BEQ @UNKNOWN17
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	STA @LOCAL07
	STZ @LOCAL00
	LDA #SFX::CURSOR3
	STA @LOCAL00+2
	LDA @LOCAL07
	STA @LOCAL01
	LDA #.LOWORD(-1)
	STA @LOCAL02
	LDY #1
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	TAX
	LDA @LOCAL07
	JSL MOVE_CURSOR
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN17:
	LDA PAD_PRESS
	AND #PAD::RIGHT
	BEQ @UNKNOWN18
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	STA @LOCAL09
	LDA #1
	STA @LOCAL00
	LDA #SFX::CURSOR2
	STA @LOCAL00+2
	LDA #.LOWORD(-1)
	STA @LOCAL01
	LDA @LOCAL09
	STA @LOCAL02
	LDY #0
	TAX
	STX @LOCAL06
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	LDX @LOCAL06
	JSL MOVE_CURSOR
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN18:
	LDA PAD_HELD
	AND #PAD::UP
	BEQ @UNKNOWN19
	STZ @LOCAL00
	LDA #SFX::CURSOR3
	STA @LOCAL00+2
	LDY #.LOWORD(-1)
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	TAX
	STX @LOCAL05
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	LDX @LOCAL05
	JSL UNKNOWN_C20B65
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN19:
	LDA PAD_HELD
	AND #PAD::LEFT
	BEQ @UNKNOWN20
	LDA #.LOWORD(-1)
	STA @LOCAL00
	LDA #SFX::CURSOR2
	STA @LOCAL00+2
	LDY #0
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	TAX
	STX @LOCAL05
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	LDX @LOCAL05
	JSL UNKNOWN_C20B65
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN20:
	LDA PAD_HELD
	AND #PAD::DOWN
	BEQ @UNKNOWN21
	STZ @LOCAL00
	LDA #SFX::CURSOR3
	STA @LOCAL00+2
	LDY #1
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	TAX
	STX @LOCAL03
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	LDX @LOCAL03
	JSL UNKNOWN_C20B65
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN21:
	LDA PAD_HELD
	AND #PAD::RIGHT
	BEQ @UNKNOWN22
	LDA #1
	STA @LOCAL00
	LDA #SFX::CURSOR2
	STA @LOCAL00+2
	LDY #0
	LDX @VIRTUAL04
	LDA a:menu_option::text_y,X
	TAX
	STX @LOCAL06
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	LDX @LOCAL06
	JSL UNKNOWN_C20B65
	STA @LOCAL06
	JMP @UNKNOWN39
@UNKNOWN22:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQL @UNKNOWN33
	JSR SET_INSTANT_PRINTING
	LDX @VIRTUAL04
	LDA a:menu_option::page,X
	BEQL @UNKNOWN30
	LDX @VIRTUAL04
	LDA a:menu_option::sound_effect,X
	AND #$00FF
	JSL PLAY_SOUND
	LDX @VIRTUAL04
	LDY a:menu_option::text_y,X
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	TAX
	LDA @VIRTUAL04
	JSL UNKNOWN_C43CD2
	LDA #47
	JSR UNKNOWN_C10D60
	LDA #6
	JSR UNKNOWN_C10FEA
	LDA UNKNOWN_7E5E6E
	BEQ @UNKNOWN27
	LDA f:UNKNOWN_7EB49D
	AND #$00FF
	CMP #1
	BNE @UNKNOWN26
	LDA CURRENT_FOCUS_WINDOW
	CMP #WINDOW::FILE_SELECT_MAIN
	BNE @UNKNOWN25
	JSL UNKNOWN_C43B15
	BRA @UNKNOWN28
@UNKNOWN25:
	LDA @VIRTUAL04
	CLC
	ADC #menu_option::label
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #1
	LDA #4
	JSL UNKNOWN_C43BB9
	BRA @UNKNOWN28
@UNKNOWN26:
	LDA @VIRTUAL04
	CLC
	ADC #menu_option::label
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #1
	LDA #.LOWORD(-1)
	JSL UNKNOWN_C43BB9
	BRA @UNKNOWN28
@UNKNOWN27:
	JSL UNKNOWN_C43B15
@UNKNOWN28:
	LDA #0
	JSR UNKNOWN_C10FEA
	JSR CLEAR_INSTANT_PRINTING
	LDA @LOCAL08
	LDY #window_stats::selected_option
	STA (@LOCAL0A),Y
	LDX @VIRTUAL04
	LDA a:menu_option::unknown0,X
	CMP #1
	BNE @UNKNOWN29
	LDA @LOCAL08
	INC
	JMP @UNKNOWN44
@UNKNOWN29:
	LDX @VIRTUAL04
	LDA a:menu_option::userdata,X
	JMP @UNKNOWN44
@UNKNOWN30:
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	JSR UNKNOWN_C10FA3
	LDA @LOCAL0A
	CLC
	ADC #window_stats::menu_page_number
	TAX
	STX @LOCAL09
	LDA __BSS_START__,X
	STA @LOCAL07
	LDX @VIRTUAL04
	LDA a:menu_option::previous,X
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	TAX
	LDA @LOCAL07
	CMP MENU_OPTIONS + menu_option::page,X
	BNE @UNKNOWN31
	LDA #1
	LDX @LOCAL09
	STA __BSS_START__,X
	BRA @UNKNOWN32
@UNKNOWN31:
	INC
	LDX @LOCAL09
	STA __BSS_START__,X
@UNKNOWN32:
	JSR CLEAR_INSTANT_PRINTING
	LDA @LOCAL0B
.IF .DEFINED(PROTOTYPE19950327)
	JSL UNKNOWN_C209A0
.ELSE
	JSL UNKNOWN_EF0115
.ENDIF
	JSL WINDOW_TICK
	JSR PRINT_MENU_ITEMS
	JSR SET_INSTANT_PRINTING
	JMP @UNKNOWN5
@UNKNOWN33:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN34
	LDA @LOCAL0C
	CMP #1
	BNE @UNKNOWN34
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	LDA #0
	JMP @UNKNOWN44
@UNKNOWN34:
	INC @LOCAL09
	LDA WINDOW_EXISTENCE_TABLE
	CMP WINDOW_TAIL
	BNE @UNKNOWN36
	LDA @LOCAL09
	CMP #60
	BLTEQ @UNKNOWN36
	LDA WINDOW_EXISTENCE_TABLE + WINDOW::CARRIED_MONEY * 2
	CMP #.LOWORD(-1)
	BNE @UNKNOWN35
	JSR UNKNOWN_C1134B
@UNKNOWN35:
	LDA #0
	JSR SET_WINDOW_FOCUS
	JMP @UNKNOWN5
@UNKNOWN36:
	LDX @LOCAL07
	INX
	STX @LOCAL07
@UNKNOWN37:
	CPX #10
	BCCL @UNKNOWN14
	JMP @UNKNOWN13
@UNKNOWN39:
	CMP #.LOWORD(-1)
	BEQL @UNKNOWN5
	LDA #0
	STA @VIRTUAL02
	LDY #window_stats::current_option
	LDA (@LOCAL0A),Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA @LOCAL09
	LDA @LOCAL06
	AND #$00FF
	TAX
	LDA @LOCAL06
	AND #$FF00
	XBA
	AND #$00FF
	STA @LOCAL06
	BRA @UNKNOWN42
@UNKNOWN41:
	INC @VIRTUAL02
	LDY #menu_option::next
	LDA (@LOCAL09),Y
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(menu_option)
	CLC
	ADC #.LOWORD(MENU_OPTIONS)
	STA @LOCAL09
@UNKNOWN42:
	LDY #menu_option::text_x
	TXA
	CMP (@LOCAL09),Y
	BNE @UNKNOWN41
	LDY #menu_option::text_y
	LDA @LOCAL06
	CMP (@LOCAL09),Y
	BNE @UNKNOWN41
	LDY #menu_option::page
	LDA (@LOCAL09),Y
	TAY
	STY @LOCAL08
	TYA
	LDY #window_stats::menu_page_number
	CMP (@LOCAL0A),Y
	BEQ @UNKNOWN43
	LDY @LOCAL08
	BNE @UNKNOWN41
@UNKNOWN43:
	LDX @VIRTUAL04
	LDY a:menu_option::text_y,X
	LDX @VIRTUAL04
	LDA a:menu_option::text_x,X
	TAX
	LDA @VIRTUAL04
	JSL UNKNOWN_C43CD2
	LDA #47
	JSR UNKNOWN_C10D60
	LDA @VIRTUAL02
	STA @LOCAL08
	LDA @LOCAL09
	STA @VIRTUAL04
	JMP @UNKNOWN5
@UNKNOWN44:
	END_C_FUNCTION
