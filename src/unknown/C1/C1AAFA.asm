
UNKNOWN_C1AAFA: ;$C1AAFA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 26
	LDA #$0000
	STA $02
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C193E7)
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::PHONE_MENU
	LOADPTR STATUS_EQUIP_WINDOW_TEXT+608, $0E
	LDX #$0003
	LDA #$0005
	JSL READ_NAME
	LDY #$0001
	STY $18
	BRA @UNKNOWN2
@UNKNOWN0:
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN1
	LDA $16
	CLC
	ADC #psi_teleport_destination::event_flag
	CLC
	ADC $06
	STA $06
	LDA [$06]
	JSL GET_EVENT_FLAG
	CMP #$0000
	BEQ @UNKNOWN1
	MOVE_INT $0A, $06
	MOVE_INT $06, $0E
	LDX #.SIZEOF(psi_teleport_destination::name)
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(UNKNOWN_7E9CB8)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_7E9C9F)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	MOVE_INT_CONSTANT NULL, $12
	LDY $18
	TYA
	JSR a:.LOWORD(UNKNOWN_C115F4)
@UNKNOWN1:
	LDY $18
	INY
	STY $18
@UNKNOWN2:
	LOADPTR PSI_TELEPORT_DEST_TABLE, $06
	TYA
	LDY #.SIZEOF(psi_teleport_destination)
	JSL MULT168
	STA $16
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	SEP #PROC_FLAGS::ACCUM8
	LDA [$0A]
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN0)
@UNKNOWN3:
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C12BD5)
	CMP #$0000
	BEQ @UNKNOWN4
	LDY #$0001
	LDX #$0000
	TYA
	JSR a:.LOWORD(UNKNOWN_C1180D)
	LDA #$0001
	JSR a:.LOWORD(SELECTION_MENU)
	STA $02
@UNKNOWN4:
	JSR a:.LOWORD(CLOSE_FOCUS_WINDOW)
	JSR a:.LOWORD(UNKNOWN_C19437)
	LDA #.LOWORD(UNKNOWN_7E9C8A)
	JSL UNKNOWN_C20ABC
	LDA $02
	PLD
	RTS