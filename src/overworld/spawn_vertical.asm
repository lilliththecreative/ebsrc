
SPAWN_VERTICAL:
	BEGIN_C_FUNCTION_FAR
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
	TXY
	STY @LOCAL05
	TAX
	STX @LOCAL04
	LDA #EVENT_FLAG::FLG_SYS_MONSTER_OFF
	JSL GET_EVENT_FLAG
	CMP #0
	BNEL @UNKNOWN14
	LDA #EVENT_FLAG::FLG_WIN_GIEGU
	JSL GET_EVENT_FLAG
	CMP #0
	BNEL @UNKNOWN14
	LDA UNKNOWN_7E4A5A
	BEQL @UNKNOWN14
	LDX @LOCAL04
	TXA
	AND #$0007
	BNEL @UNKNOWN14
	CPX #$FFF0
	BCC @UNKNOWN4
	LDX #0
@UNKNOWN4:
	CPX #MAP_WIDTH_TILES8
	BCC @UNKNOWN5
	JMP @UNKNOWN14
@UNKNOWN5:
	TXA
	ASL
	PHP
	LSR
	LSR
	LSR
	LSR
	PLP
	BCC @UNKNOWN6
.IF .DEFINED(JPN)
	ORA #$E000
.ELSE
	ORA #$F000
.ENDIF
@UNKNOWN6:
	STA @LOCAL03
	LDY @LOCAL05
	TYA
	ASL
	PHP
	LSR
	LSR
	LSR
	LSR
	PLP
	BCC @UNKNOWN7
.IF .DEFINED(JPN)
	ORA #$E000
.ELSE
	ORA #$F000
.ENDIF
@UNKNOWN7:
	STA @LOCAL02
	STA @VIRTUAL04
	BRA @UNKNOWN12
@UNKNOWN8:
	LDA @VIRTUAL04
	STA @LOCAL01
	LDA #8
	STA UNKNOWN_7E4A62
	STA UNKNOWN_7E4A64
	LDA #1
	STA @VIRTUAL02
@UNKNOWN9:
	LDX @VIRTUAL04
	LDA @LOCAL03
	JSL UNKNOWN_C0263D
	STA @LOCAL05
	LDY @VIRTUAL04
	INY
	STY @LOCAL00
	TYX
	LDA @LOCAL03
	JSL UNKNOWN_C0263D
	TAX
	LDA @LOCAL05
	BEQ @UNKNOWN11
	CPX @LOCAL05
	BNE @UNKNOWN11
	LDA UNKNOWN_7E4A64
	CLC
	ADC #8
	STA UNKNOWN_7E4A64
	LDY @LOCAL00
	STY @VIRTUAL04
	INC @VIRTUAL02
	LDA @VIRTUAL02
	CMP #6
	BNE @UNKNOWN9
	BRA @UNKNOWN11
@UNKNOWN10:
	LDY @LOCAL05
	LDX @LOCAL01
	LDA @LOCAL03
	JSR UNKNOWN_C02668
@UNKNOWN11:
	LDX @VIRTUAL02
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
	CPX #0
	BNE @UNKNOWN10
	INC @VIRTUAL04
@UNKNOWN12:
	LDA @LOCAL02
	CLC
	ADC #5
	CLC
	SBC @VIRTUAL04
	BRANCHGTS @UNKNOWN8
@UNKNOWN14:
	END_C_FUNCTION
