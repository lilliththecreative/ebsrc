
UNKNOWN_C00BDC:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	LSR
	LSR
	STA @VIRTUAL04
	TXA
	AND #$8000
	BEQ @UNKNOWN0
	TXA
	LSR
	LSR
	ORA #$E000
	TAY
	STY @LOCAL06
	BRA @UNKNOWN1
@UNKNOWN0:
	TXA
	LSR
	LSR
	TAY
	STY @LOCAL06
@UNKNOWN1:
	LDA @VIRTUAL04
	AND #$000F
	STA @LOCAL05
	TAX
	LDA @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7E43B0,X
	REP #PROC_FLAGS::ACCUM8
	TYA
	AND #$000F
	TAX
	STX @LOCAL04
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7E43C0,X
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL04
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	TYA
	AND #$FFFC
	OPTIMIZED_MULT @VIRTUAL04, 8
	CLC
	ADC @VIRTUAL02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	LSR
	LSR
	LSR
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA @LOCAL03
	LDA @LOCAL05
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7EF000)
	STA @LOCAL02
	LDA @VIRTUAL04
	CMP #256
	BCC @UNKNOWN2
	JMP @UNKNOWN8
@UNKNOWN2:
	LDX @LOCAL04
	TXA
	OPTIMIZED_MULT @VIRTUAL04, 16
	STA @VIRTUAL02
	STA @LOCAL01
	STZ @LOCAL00
	BRA @UNKNOWN7
@UNKNOWN3:
	TYA
	AND #$0003
	BNE @UNKNOWN4
	LDA @VIRTUAL04
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	TYA
	AND #$FFFC
	OPTIMIZED_MULT @VIRTUAL04, 8
	CLC
	ADC @VIRTUAL02
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:GLOBAL_MAP_TILESETPALETTE_DATA,X
	LSR
	LSR
	LSR
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	STA @LOCAL03
@UNKNOWN4:
	CPY #320
	BCS @UNKNOWN5
	LDA UNKNOWN_7E436E
	CMP @LOCAL03
	BNE @UNKNOWN5
	TYX
	LDA @VIRTUAL04
	JSR UNKNOWN_C0A156
	STA @LOCAL05
	LDA @LOCAL01
	STA @VIRTUAL02
	ASL
	TAY
	LDA @LOCAL05
	STA (@LOCAL02),Y
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA @LOCAL01
	STA @VIRTUAL02
	ASL
	TAY
	LDA #0
	STA (@LOCAL02),Y
@UNKNOWN6:
	LDA @VIRTUAL02
	CLC
	ADC #16
	AND #$00FF
	STA @VIRTUAL02
	STA @LOCAL01
	LDY @LOCAL06
	INY
	STY @LOCAL06
	INC @LOCAL00
@UNKNOWN7:
	LDA @LOCAL00
	CMP #16
	BCC @UNKNOWN3
	BRA @UNKNOWN11
@UNKNOWN8:
	LDA #0
	STA @LOCAL05
	BRA @UNKNOWN10
@UNKNOWN9:
	OPTIMIZED_MULT @VIRTUAL04, 32
	TAY
	LDA #0
	STA (@LOCAL02),Y
	LDA @LOCAL05
	INC
	STA @LOCAL05
@UNKNOWN10:
	CMP #16
	BCC @UNKNOWN9
@UNKNOWN11:
	END_C_FUNCTION
