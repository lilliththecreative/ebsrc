
UNKNOWN_C49C56: ;$C49C56
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	CLC
	ADC .LOWORD(UNKNOWN_7E3C16)
	STA .LOWORD(UNKNOWN_7E3C16)
	STZ .LOWORD(UNKNOWN_7E3C14)
	LSR
	LSR
	LSR
	CLC
	ADC .LOWORD(UNKNOWN_7E9F2D)
	STA .LOWORD(UNKNOWN_7E9F2D)
	CMP #$0020
	BCC @UNKNOWN0
	SEC
	SBC #$0020
	STA .LOWORD(UNKNOWN_7E9F2D)
@UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E3C16)
	LSR
	LSR
	LSR
	STA $12
	LDY #$01A0
	JSL $C09014
	CLC
	ADC #$3918
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $0E
	LDY #$01A0
	LDA $12
	STA $02
	LDA #$0004
	SEC
	SBC $02
	JSL $C09014
	TAX
	LDA #$3918
	JSL $C08EC3
	LDA .LOWORD(UNKNOWN_7E3C16)
	LSR
	LSR
	LSR
	STA $12
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA $0E
	LDY #$01A0
	REP #PROC_FLAGS::ACCUM8
	LDA $12
	JSL $C09014
	TAX
	LDY #$01A0
	LDA $12
	STA $02
	LDA #$0004
	SEC
	SBC $02
	JSL $C09014
	CLC
	ADC #$3918
	JSL MEMSET16
	LDA .LOWORD(UNKNOWN_7E3C16)
	AND #$0007
	STA .LOWORD(UNKNOWN_7E3C16)
	PLD
	RTL
