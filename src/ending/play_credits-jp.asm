
PLAY_CREDITS: ;$C4F554
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	LDA #$0001
	STA .LOWORD(UNKNOWN_7EB4B6)
	JSL UNKNOWN_C4F07D
	JSL OAM_CLEAR
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C0886C
	JSL COUNT_PHOTO_FLAGS
	CMP #$0000
	BEQ @UNKNOWN0
	JSL COUNT_PHOTO_FLAGS
	TAY
	LDA #CREDITS_LENGTH
	JSL DIVISION16S_DIVISOR_POSITIVE
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA #CREDITS_LENGTH
@UNKNOWN1:
	STA $04
	STA $02
	LDA #.LOWORD(UNKNOWN_C0F41E)
	JSL UNKNOWN_C0851C
	LDY #$0000
	STY $14
	JMP a:.LOWORD(@UNKNOWN12)
@UNKNOWN2:
	TYA
	JSL UNKNOWN_C4F264
	CMP #$0000
	BNE @UNKNOWN3
	JMP a:.LOWORD(@UNKNOWN11)
@UNKNOWN3:
	LDX #$FFFF
	LDA #$0040
	JSL UNKNOWN_C496E7
	.A16
	LDX #$0040
	STX $12
	BRA @UNKNOWN5
@UNKNOWN4:
	JSL UNKNOWN_C426ED
	JSL UNKNOWN_C4F01D
	JSL UNKNOWN_C1004E
	LDX $12
	DEX
	STX $12
@UNKNOWN5:
	BNE @UNKNOWN4
	JSL UNKNOWN_C49740
	LDY $14
	TYA
	JSL UNKNOWN_C4F46F
	BRA @UNKNOWN7
@UNKNOWN6:
	JSL UNKNOWN_C4F01D
	JSL UNKNOWN_C1004E
@UNKNOWN7:
	LDA $02
	CMP a:.LOWORD(BG3_Y_POS)
	BEQ @UNKNOWN8
	BCS @UNKNOWN6
@UNKNOWN8:
	LOADPTR UNKNOWN_7F0000+32, $0E
	LDX #$01E0
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
	.A16
	LDX #$FFFF
	LDA #$0040
	JSL UNKNOWN_C496E7
	LDX #$0000
	STX $12
	BRA @UNKNOWN10
@UNKNOWN9:
	JSL UNKNOWN_C426ED
	JSL UNKNOWN_C4F01D
	JSL UNKNOWN_C1004E
	LDX $12
	INX
	STX $12
@UNKNOWN10:
	CPX #$0040
	BCC @UNKNOWN9
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	STA $0E
	LDX #$01E0
	REP #PROC_FLAGS::ACCUM8
	LDA #$0220
	JSL MEMSET16
	LDA #$0018
	JSL UNKNOWN_C0856B
	JSL UNKNOWN_C4F01D
	JSL UNKNOWN_C1004E
	LDA $02
	CLC
	ADC $04
	STA $02
@UNKNOWN11:
	LDY $14
	INY
	STY $14
@UNKNOWN12:
	CPY #$0020
	BCS @UNKNOWN13
	BEQ @UNKNOWN13
	JMP a:.LOWORD(@UNKNOWN2)
@UNKNOWN13:
	BRA @UNKNOWN15
@UNKNOWN14:
	JSL UNKNOWN_C4F01D
	JSL UNKNOWN_C1004E
@UNKNOWN15:
	LDA a:.LOWORD(BG3_Y_POS)
	CMP #CREDITS_LENGTH
	BCC @UNKNOWN14
	JSL UNKNOWN_C08522
	LDX #$0000
	STX $12
	BRA @UNKNOWN17
@UNKNOWN16:
	JSL UNKNOWN_C1004E
	LDX $12
	INX
	STX $12
@UNKNOWN17:
	CPX #$07D0
	BCC @UNKNOWN16
	LDY #$0000
	LDX #$0002
	LDA #$0001
	JSL UNKNOWN_C08814
	LDX #$0000
	LDA #$00B3
	JSL UNKNOWN_C4249A
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C00013
	JSL UNKNOWN_C021E6
	LDA #$0017
	STA .LOWORD(UNKNOWN_7E0A4C)
	LDA #$0018
	STA .LOWORD(UNKNOWN_7E0A4E)
	LDY #$0000
	TYX
	LDA #EVENT_SCRIPT::EVENT_001
	JSL CREATE_ENTITY
	JSL UNKNOWN_C02D29
	JSL UNKNOWN_C03A24
	LDA #.LOWORD(BG2_BUFFER)
	STA $06
	PHB
	SEP #PROC_FLAGS::ACCUM8
	PLA
	STA $08
	STZ $09
	LDX #$0000
	BRA @UNKNOWN19
@UNKNOWN18:
	REP #PROC_FLAGS::ACCUM8
	LDA #$0000
	STA [$06]
	INC $06
	INC $06
	INX
@UNKNOWN19:
	CPX #$0200
	BCC @UNKNOWN18
	JSL UNDRAW_FLYOVER_TEXT
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0017
	STA a:.LOWORD(TM_MIRROR)
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(UNKNOWN_C0DC4E)
	JSL UNKNOWN_C0851C
	STZ .LOWORD(UNKNOWN_7EB4B6)
	PLD
	RTL
