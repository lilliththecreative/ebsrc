
UNKNOWN_C017EA: ;$C017EA
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDY #$0000
	TYA
	STA $10
	LDX PAD_STATE
	LDA PAD_PRESS
	STA $02
	AND #$1000
	BEQ @UNKNOWN0
	LDA UNKNOWN_7E4384
	EOR #$0001
	STA UNKNOWN_7E4384
@UNKNOWN0:
	TXA
	AND #PAD::DOWN
	BEQ @UNKNOWN1
	LDY #$0001
	BRA @UNKNOWN2
@UNKNOWN1:
	TXA
	AND #PAD::UP
	BEQ @UNKNOWN2
	LDY #$FFFF
@UNKNOWN2:
	TXA
	AND #PAD::LEFT
	BEQ @UNKNOWN3
	LDA #$FFFF
	STA $10
	BRA @UNKNOWN4
@UNKNOWN3:
	TXA
	AND #PAD::RIGHT
	BEQ @UNKNOWN4
	LDA #$0001
	STA $10
@UNKNOWN4:
	TXA
	AND #$0020
	BEQ @UNKNOWN5
	LDA $10
	ASL
	ASL
	STA $10
	TYA
	ASL
	ASL
	TAY
@UNKNOWN5:
	TXA
	AND #$0010
	BEQ @UNKNOWN6
	LDA $10
	ASL
	STA $10
	TYA
	ASL
	TAY
@UNKNOWN6:
	TXA
	AND #$0040
	BEQ @UNKNOWN7
	LDA $10
	ASL
	STA $10
	TYA
	ASL
	TAY
@UNKNOWN7:
	TXA
	AND #$4000
	BNE @UNKNOWN8
	LDA $0E
	STA $04
	AND #$0080
	BEQ @UNKNOWN8
	LDY #$0000
	TYA
	STA $10
@UNKNOWN8:
	LDA $10
	CLC
	ADC SCREEN_X_PIXELS
	TAX
	STX SCREEN_X_PIXELS
	TYA
	CLC
<<<<<<< HEAD
	ADC SCREEN_Y_PIXELS
	STA @LOCAL01
	STA SCREEN_Y_PIXELS
	CPX SCREEN_X_PIXELS_COPY
=======
	ADC UNKNOWN_7E4382
	STA $10
	STA UNKNOWN_7E4382
	CPX UNKNOWN_7E437C
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	BNE @UNKNOWN9
	CMP SCREEN_Y_PIXELS_COPY
	BEQ @UNKNOWN10
@UNKNOWN9:
	LDA SCREEN_Y_PIXELS
	SEC
	SBC #$0070
	TAX
	LDA SCREEN_X_PIXELS
	SEC
	SBC #$0080
	JSR REFRESH_MAP_AT_POSITION
	BRA @UNKNOWN11
@UNKNOWN10:
	LDA $02
	AND #$0080
	BEQ @UNKNOWN11
<<<<<<< HEAD
	LDA #.LOWORD(-1)
	STA LOADED_MAP_PALETTE
	STA LOADED_MAP_TILE_COMBO
	TXA
	AND #$FFF8
	STA SCREEN_X_PIXELS
	LDA @LOCAL01
=======
	LDA #$FFFF
	STA UNKNOWN_7E4370
	STA UNKNOWN_7E436E
	TXA
	AND #$FFF8
	STA UNKNOWN_7E4380
	LDA $10
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$FFF8
	STA SCREEN_Y_PIXELS
	JSL UNKNOWN_C08726
	LDA SCREEN_Y_PIXELS
	LSR
	LSR
	LSR
	TAX
	LDA SCREEN_X_PIXELS
	LSR
	LSR
	LSR
	JSL LOAD_MAP_AT_POSITION
	JSL UNKNOWN_C08744
@UNKNOWN11:
<<<<<<< HEAD
	LDA SCREEN_X_PIXELS
	STA SCREEN_X_PIXELS_COPY
	LDA SCREEN_Y_PIXELS
	STA SCREEN_Y_PIXELS_COPY
	END_C_FUNCTION
=======
	LDA UNKNOWN_7E4380
	STA UNKNOWN_7E437C
	LDA UNKNOWN_7E4382
	STA UNKNOWN_7E437E
	PLD
	RTL
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
