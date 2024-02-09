
CREATE_WINDOW: ;$C104EE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 20
	TAY
	STY $12
	JSR GET_ACTIVE_WINDOW_ADDRESS
	STA $02
	LDY $12
	TYA
	ASL
	CLC
	ADC #.LOWORD(WINDOW_EXISTENCE_TABLE)
	TAX
	STX $10
	LDA __BSS_START__,X
	CMP #$FFFF
	BEQ @UNKNOWN0
	STY CURRENT_FOCUS_WINDOW
	JSR UNKNOWN_C11383
	LDX $10
	LDA __BSS_START__,X
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	STX $10
	JMP @UNKNOWN8
@UNKNOWN0:
	JSR UNKNOWN_C3E4EF
	STA $0E
	CMP #$FFFF
	BEQL @UNKNOWN12
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	CLC
	ADC #.LOWORD(WINDOW_STATS_TABLE)
	TAX
	STX $10
	LDY $12
	CPY #$000A
	BNE @UNKNOWN4
	LDA WINDOW_HEAD
	CMP #$FFFF
	BNE @UNKNOWN2
	LDA #$FFFF
	STA __BSS_START__+2,X
	LDA $0E
	STA WINDOW_TAIL
	BRA @UNKNOWN3
@UNKNOWN2:
	LDA WINDOW_HEAD
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA $0E
	STA WINDOW_STATS_TABLE,X
	LDA WINDOW_HEAD
	LDX $10
	STA __BSS_START__+2,X
@UNKNOWN3:
	LDA #$FFFF
	STA __BSS_START__,X
	LDA $0E
	STA WINDOW_HEAD
	BRA @UNKNOWN7
@UNKNOWN4:
	LDA WINDOW_HEAD
	CMP #$FFFF
	BNE @UNKNOWN5
	LDA #$FFFF
	STA __BSS_START__,X
	LDA $0E
	STA WINDOW_HEAD
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA WINDOW_TAIL
	STA __BSS_START__,X
	LDA WINDOW_TAIL
	LDY #.SIZEOF(window_stats)
	JSL MULT168
	TAX
	LDA $0E
	STA WINDOW_STATS_TABLE+2,X
@UNKNOWN6:
	STA WINDOW_TAIL
	LDA #$FFFF
	LDX $10
	STA __BSS_START__+2,X
@UNKNOWN7:
	LDY $12
	TYA
	STA __BSS_START__+4,X
	TYA
	ASL
	TAX
	LDA $0E
	STA WINDOW_EXISTENCE_TABLE,X
	LOADPTR WINDOW_CONFIGURATION_TABLE, $06
	TYA
	ASL
	ASL
	ASL
	STA $04
	MOVE_INTX $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	LDX $10
	STA __BSS_START__+6,X
	LDA $04
	INC
	INC
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	STA __BSS_START__+8,X
	LDA $04
	INC
	INC
	INC
	INC
	MOVE_INTY $06, $0A
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	DEC
	DEC
	STA __BSS_START__+10,X
	LDA $04
	CLC
	ADC #$0006
	CLC
	ADC $06
	STA $06
	LDA [$06]
	DEC
	DEC
	STA __BSS_START__+12,X
	LDY #$03F0
	LDA $0E
	JSL MULT16
	CLC
	ADC #.LOWORD(UNKNOWN_7E5E7E)
	STA __BSS_START__+53,X
	LDY $12
	STY CURRENT_FOCUS_WINDOW
@UNKNOWN8:
	STZ __BSS_START__+16,X
	STZ __BSS_START__+14,X
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0080
	STA __BSS_START__+18,X
	REP #PROC_FLAGS::ACCUM8
	STZ __BSS_START__+19,X
	STZ __BSS_START__+21,X
	LDA $02
	CLC
	ADC #$0017
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	TXA
	CLC
	ADC #$0017
	TAY
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $02
	CLC
	ADC #$001B
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	TXA
	CLC
	ADC #$001B
	TAY
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $02
	CLC
	ADC #$0021
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	TXA
	CLC
	ADC #$0021
	TAY
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDA $02
	CLC
	ADC #$0025
	TAY
	MOVE_INT_YPTRSRC __BSS_START__, $06
	TXA
	CLC
	ADC #$0025
	TAY
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDX $02
	LDA __BSS_START__+31,X
	LDX $10
	STA __BSS_START__+31,X
	LDX $02
	LDA __BSS_START__+41,X
	LDX $10
	STA __BSS_START__+41,X
	LDA #$FFFF
	STA __BSS_START__+47,X
	STA __BSS_START__+45,X
	STA __BSS_START__+43,X
	LDA #$0001
	STA __BSS_START__+49,X
	STA __BSS_START__+51,X
	LDA #$0000
	STA $06
	LDA #$0000
	STA $08
	TXA
	CLC
	ADC #$0037
	TAY
	MOVE_INT_YPTRDEST $06, __BSS_START__
	LDY __BSS_START__+53,X
	STY $0E
	LDY __BSS_START__+12,X
	LDA __BSS_START__+10,X
	JSL MULT16
	STA $12
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA #$0040
	LDY $0E
	STA __BSS_START__,Y
	INY
	INY
	STY $0E
	LDA $12
	DEC
	STA $12
@UNKNOWN10:
	CMP #$0000
	BNE @UNKNOWN9
	LDA __BSS_START__+59,X
	AND #$00FF
	BEQ @UNKNOWN11
	AND #$00FF
	DEC
	ASL
	TAX
	LDA #$FFFF
	STA UNKNOWN_7E894E,X
@UNKNOWN11:
	LDX $10
	SEP #PROC_FLAGS::ACCUM8
	STZ __BSS_START__+60,X
	STZ __BSS_START__+59,X
	JSL UNKNOWN_C45E96
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA UNKNOWN_7E9623
	JSL UNKNOWN_C07C5B
@UNKNOWN12:
	PLD
	RTS
