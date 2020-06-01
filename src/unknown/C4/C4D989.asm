
UNKNOWN_C4D989: ;$C4D989
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 22
	STA $02
	JSL UNKNOWN_C0927C
	JSL UNKNOWN_C01A86
	LDX #$0000
	LDA #$8000
	JSL ALLOC_SPRITE_MEM
	JSL UNKNOWN_C01A69
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E4A58)
	STZ .LOWORD(UNKNOWN_7E4A5A)
	LDA #$0000
	JSL SET_BOUNDARY_BEHAVIOR
	LDA #$0017
	STA .LOWORD(UNKNOWN_7E0A4C)
	LDA #$0018
	STA .LOWORD(UNKNOWN_7E0A4E)
	LDY #$0000
	TYX
	LDA #$0001
	JSL UNKNOWN_C092F5_ENTRY2
	JSL UNKNOWN_C02D29
	LDX #$0000
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	STZ .LOWORD(GAME_STATE) + game_state::party_members,X
	INX
@UNKNOWN1:
	CPX #.SIZEOF(game_state::party_members)
	BCC @UNKNOWN0
	LDX #$0B08
	REP #PROC_FLAGS::ACCUM8
	LDA #$1D60
	JSL UNKNOWN_C0B65F
	JSL UNKNOWN_C03A24
	SEP #PROC_FLAGS::ACCUM8
	STZ $0E
	LDX #$0200
	REP #PROC_FLAGS::ACCUM8
	LDA #$0200
	JSL MEMSET16
	JSL UNKNOWN_C0004B
	SEP #PROC_FLAGS::ACCUM8
	STZ a:.LOWORD(TM_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL UNKNOWN_C2EA15
	JSL UNKNOWN_C4A7B0
	STZ .LOWORD(UNKNOWN_7E9641)
	LDX #$0000
	STX $14
	TXY
	STY $12
	LOADPTR ATTRACT_MODE_TXT, $0A
	LDA $02
	ASL
	ASL
	CLC
	ADC $0A
	STA $0A
	DEREFERENCE_PTR_TO $0A, $06
	MOVE_INT $06, $0E
	JSL DISPLAY_TEXT
	BRA @UNKNOWN7
@UNKNOWN2:
	JSL UNKNOWN_C4A7B0
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::A_BUTTON
	BNE @UNKNOWN3
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::B_BUTTON
	BNE @UNKNOWN3
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD::START_BUTTON
	BEQ @UNKNOWN4
@UNKNOWN3:
	LDY #$0001
	STY $12
	BRA @UNKNOWN8
@UNKNOWN4:
	JSL UNKNOWN_C1004E
	LDX $14
	BEQ @UNKNOWN5
	CPX #$0001
	BNE @UNKNOWN6
@UNKNOWN5:
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0013
	STA a:.LOWORD(TM_MIRROR)
@UNKNOWN6:
	INX
	STX $14
@UNKNOWN7:
	REP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(UNKNOWN_7E9641)
	BEQ @UNKNOWN2
@UNKNOWN8:
	JSL UNKNOWN_C2EA74
	BRA @UNKNOWN10
@UNKNOWN9:
	JSL UNKNOWN_C1004E
	JSL UNKNOWN_C4A7B0
@UNKNOWN10:
	JSL UNKNOWN_C2EACF
	CMP #$0000
	BNE @UNKNOWN9
	LDX #$0001
	TXA
	JSL UNKNOWN_C0887A
	BRA @UNKNOWN12
@UNKNOWN11:
	JSL UNKNOWN_C1004E
@UNKNOWN12:
	LDA a:.LOWORD(UNKNOWN_7E0028)
	AND #$00FF
	BNE @UNKNOWN11
	JSL UNKNOWN_C2EAAA
	STZ .LOWORD(UNKNOWN_7E9641)
	JSL UNKNOWN_C021E6
	LDY $12
	TYA
	PLD
	RTL
