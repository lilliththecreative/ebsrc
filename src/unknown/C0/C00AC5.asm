
UNKNOWN_C00AC5:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL05
	TXA
	LSR
	LSR
	STA @VIRTUAL04
	LDA @LOCAL05
	AND #$8000
	BEQ @UNKNOWN0
	LDA @LOCAL05
	LSR
	LSR
	ORA #$E000
	TAY
	STY @LOCAL04
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @LOCAL05
	LSR
	LSR
	TAY
	STY @LOCAL04
@UNKNOWN1:
	TYA
	AND #$000F
	TAX
	STX @LOCAL05
	TYA
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7E4390,X
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL04
	AND #$000F
	STA @LOCAL03
	TAX
	LDA @VIRTUAL04
	SEP #PROC_FLAGS::ACCUM8
	STA UNKNOWN_7E43A0,X
	REP #PROC_FLAGS::ACCUM8
	TYA
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	LDA @VIRTUAL04
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
	STA @LOCAL02
	LDA @LOCAL03
	OPTIMIZED_MULT @VIRTUAL04, 32
	CLC
	ADC #.LOWORD(UNKNOWN_7EF000)
	STA @LOCAL03
	LDA @VIRTUAL04
	CMP #$0140
	BCC @UNKNOWN2
	JMP @UNKNOWN8
@UNKNOWN2:
	LDX @LOCAL05
	STX @VIRTUAL02
	LDA @VIRTUAL02
	STA @LOCAL01
	STZ @LOCAL00
	BRA @UNKNOWN7
@UNKNOWN3:
	TYA
	AND #$0007
	BNE @UNKNOWN4
	TYA
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	LDA @VIRTUAL04
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
	STA @LOCAL02
@UNKNOWN4:
	CPY #256
	BCS @UNKNOWN5
	LDA UNKNOWN_7E436E
	CMP @LOCAL02
	BNE @UNKNOWN5
	LDX @VIRTUAL04
	TYA
	JSR UNKNOWN_C0A156
	STA @LOCAL05
	LDA @LOCAL01
	STA @VIRTUAL02
	ASL
	TAY
	LDA @LOCAL05
	STA (@LOCAL03),Y
	BRA @UNKNOWN6
@UNKNOWN5:
	LDA @LOCAL01
	STA @VIRTUAL02
	ASL
	TAY
	LDA #0
	STA (@LOCAL03),Y
@UNKNOWN6:
	LDA @VIRTUAL02
	INC
	AND #$000F
	STA @VIRTUAL02
	STA @LOCAL01
	LDY @LOCAL04
	INY
	STY @LOCAL04
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
	ASL
	TAY
	LDA #0
	STA (@LOCAL03),Y
	LDA @LOCAL05
	INC
	STA @LOCAL05
@UNKNOWN10:
	CMP #16
	BCC @UNKNOWN9
@UNKNOWN11:
	END_C_FUNCTION
