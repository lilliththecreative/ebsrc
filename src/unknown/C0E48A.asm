
UNKNOWN_C0E48A: ;$C0E48A
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDX #$9F4F
	LDA #$0000
	STA a:.LOWORD(RAM),X
	LDY #$9F4B
	STA a:.LOWORD(RAM),Y
	LDA .LOWORD(GAME_STATE)+game_state::leader_direction
	BEQ @UNKNOWN0
	CMP #$0001
	BEQ @UNKNOWN1
	CMP #$0002
	BEQ @UNKNOWN2
	CMP #$0003
	BEQ @UNKNOWN3
	CMP #$0004
	BEQ @UNKNOWN4
	CMP #$0005
	BEQ @UNKNOWN5
	CMP #$0006
	BEQ @UNKNOWN6
	CMP #$0007
	BEQ @UNKNOWN7
	BRA @UNKNOWN8
@UNKNOWN0:
	LDA #$FFFB
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN8
@UNKNOWN1:
	LDA #$FFFB
	STA a:.LOWORD(RAM),X
	LDA #$0005
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN8
@UNKNOWN2:
	LDA #$0005
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN8
@UNKNOWN3:
	LDA #$0005
	STA a:.LOWORD(RAM),X
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN8
@UNKNOWN4:
	LDA #$0005
	STA a:.LOWORD(RAM),X
	BRA @UNKNOWN8
@UNKNOWN5:
	LDA #$0005
	STA a:.LOWORD(RAM),X
	LDA #$FFFB
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN8
@UNKNOWN6:
	LDA #$FFFB
	STA a:.LOWORD(RAM),Y
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA #$FFFB
	STA a:.LOWORD(RAM),Y
	STA a:.LOWORD(RAM),X
@UNKNOWN8:
	RTS
