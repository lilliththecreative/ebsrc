
UNKNOWN_E14DE8: ;$E14DE8
	REP #$31
	RESERVE_STACK_SPACE_CLOBBER 20
	LDY #$0001
	STY $12
	LDX #$0000
	STX $10
	BRA @UNKNOWN6
@UNKNOWN0:
	LDY $12
	STY $02
	LDX $10
	TXA
	CLC
	ADC $02
	TAX
	STX $10
	STX $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN1
	BPL @UNKNOWN3
	BRA @UNKNOWN2
@UNKNOWN1:
	BMI @UNKNOWN3
@UNKNOWN2:
	LDX #BATTLER_COUNT - 1
	STX $10
@UNKNOWN3:
	STX $02
	LDA #BATTLER_COUNT
	CLC
	SBC $02
	BVS @UNKNOWN4
	BPL @UNKNOWN6
	BRA @UNKNOWN5
@UNKNOWN4:
	BMI @UNKNOWN6
@UNKNOWN5:
	LDX #$0000
	STX $10
@UNKNOWN6:
	LDX $10
	TXA
	LDY #.SIZEOF(battler)
	JSL MULT168
	STA $0E
	TAX
	LDA .LOWORD(BATTLERS_TABLE) + battler::consciousness,X
	AND #$00FF
	BEQ @UNKNOWN0
	LDA $0E
	CLC
	ADC #.LOWORD(BATTLERS_TABLE)
	JSL NULL_C1E1A2
	JSL UNKNOWN_C12DD5
@UNKNOWN7:	
	JSL READ_JOYPAD
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::RIGHT
	BEQ @UNKNOWN8
	LDY #$0001
	STY $12
	BRA @UNKNOWN10
@UNKNOWN8:
	LDA a:.LOWORD(PAD_1_HELD)
	AND #PAD::LEFT
	BEQ @UNKNOWN9
	LDY #$FFFF
	STY $12
	BRA @UNKNOWN10
@UNKNOWN9:
	LDA a:.LOWORD(PAD_1_PRESS)
	BEQ @UNKNOWN7
	JSL REDIRECT_CLOSE_FOCUS_WINDOW
	BRA @RETURN
@UNKNOWN10:
	STY $02
	LDX $10
	TXA
	CLC
	ADC $02
	TAX
	STX $10
	STX $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN11
	BPL @UNKNOWN13
	BRA @UNKNOWN12
@UNKNOWN11:
	BMI @UNKNOWN13
@UNKNOWN12:
	LDX #BATTLER_COUNT - 1
	STX $10
@UNKNOWN13:
	STX $02
	LDA #BATTLER_COUNT
	CLC
	SBC $02
	BVS @UNKNOWN14
	BPL @UNKNOWN16
	BRA @UNKNOWN15
@UNKNOWN14:
	BMI @UNKNOWN16
@UNKNOWN15:
	LDX #$0000
	STX $10
@UNKNOWN16:
	JSL REDIRECT_CLOSE_FOCUS_WINDOW
	JMP @UNKNOWN6
@RETURN:
	PLD
	RTL
