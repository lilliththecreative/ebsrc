
UNKNOWN_C10BA1: ;$C10BA1
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 16
	TAX
	STX $0E
	LDA CURRENT_FOCUS_WINDOW
	CMP #$FFFF
	BEQ @UNKNOWN0
	JSR UNKNOWN_C10A85
@UNKNOWN0:
	LDX $0E
	STX $8D0C
	LDA $8D0C
	BEQ @UNKNOWN1
	LDA $AF2D
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA $AF2B
@UNKNOWN2:
	STA $02
	LDX #$0000
	STX $0E
	BRA @UNKNOWN6
@UNKNOWN3:
	LDA $8D0C
	BEQ @UNKNOWN4
	LDA $AF57,X
	AND #$00FF
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $A1F8,X
	BRA @UNKNOWN5
@UNKNOWN4:
	LDA $AF4F,X
	AND #$00FF
	BRK
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA $A1F8,X
@UNKNOWN5:
	LDX $0E
	INX
	STX $0E
@UNKNOWN6:
	REP #PROC_FLAGS::ACCUM8
	TXA
	CMP $02
	BCC @UNKNOWN3
	LDA #$0001
	STA $AF77
	SEP #PROC_FLAGS::ACCUM8
	STA $991B
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS