
UNKNOWN_C1F14F: ;$C1F14F
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 24
	LDX #$0000
	TXY
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7EB49E),X
	AND #$00FF
	BNE @UNKNOWN1
	INY
@UNKNOWN1:
	INX
@UNKNOWN2:
	STX $02
	LDA #$0003
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN0
	CPY #$0001
	BNEL @UNKNOWN11
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_COPY_MENU_ONE_FILE
	JSR SET_INSTANT_PRINTING
	LOADPTR FILE_SELECT_TEXT_COPY_TO_WHERE, $0E
	LDA #$000B
	JSR a:.LOWORD(PRINT_STRING)
	LDA #$0000
	STA $02
	BRA @UNKNOWN8
@UNKNOWN6:
	LDX $02
	LDA .LOWORD(UNKNOWN_7EB49E),X
	AND #$00FF
	BNE @UNKNOWN7
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #$0031
	STA .LOWORD(UNKNOWN_7E9C9F)
	LDA #$005B
	STA .LOWORD(UNKNOWN_7E9C9F)+1
	STZ .LOWORD(UNKNOWN_7E9C9F)+2
	REP #PROC_FLAGS::ACCUM8
	PROMOTENEARPTR .LOWORD(UNKNOWN_7E9C9F), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY #$0001
	LDX #$0000
	LDA $02
	INC
	JSR a:.LOWORD(UNKNOWN_C1153B)
@UNKNOWN7:
	INC $02
@UNKNOWN8:
	LDA #$0003
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN6
	JMP @UNKNOWN16
@UNKNOWN11:
	CREATE_WINDOW_NEAR #WINDOW::FILE_SELECT_COPY_MENU_TWO_FILES
	JSR SET_INSTANT_PRINTING
	LOADPTR FILE_SELECT_TEXT_COPY_TO_WHERE, $0E
	LDA #$000B
	JSR a:.LOWORD(PRINT_STRING)
	MOVE_INT_CONSTANT $10000, $02
	BRA @UNKNOWN14
@UNKNOWN12:
	LDX $02
	LDA .LOWORD(UNKNOWN_7EB49E),X
	AND #$00FF
	BNE @UNKNOWN13
	LDA $02
	SEP #PROC_FLAGS::ACCUM8
	CLC
	ADC #$0031
	STA .LOWORD(UNKNOWN_7E9C9F)
	LDA #$005B
	STA .LOWORD(UNKNOWN_7E9C9F)+1
	STZ .LOWORD(UNKNOWN_7E9C9F)+2
	LDX $04
	REP #PROC_FLAGS::ACCUM8
	INC $04
	PROMOTENEARPTR .LOWORD(UNKNOWN_7E9C9F), $06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	TXY
	LDX #$0000
	LDA $02
	INC
	JSR a:.LOWORD(UNKNOWN_C1153B)
@UNKNOWN13:
	INC $02
@UNKNOWN14:
	LDA #$0003
	CLC
	SBC $02
	BRANCHGTS @UNKNOWN12
@UNKNOWN16:
	JSR a:.LOWORD(PRINT_MENU_ITEMS)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	TAY
	STY $16
	BEQ @UNKNOWN17
	LDA .LOWORD(CURRENT_SAVE_SLOT)
	AND #$00FF
	TAX
	DEX
	TYA
	DEC
	JSL COPY_SAVE
@UNKNOWN17:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	LDY $16
	TYA
	PLD
	RTS
