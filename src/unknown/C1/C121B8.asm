
UNKNOWN_C121B8:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
.IF .DEFINED(USA)
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
.ENDIF
	STACK_RESERVE_INT16 "LOCAL05"
	STACK_RESERVE_INT16 "LOCAL06"
	STACK_RESERVE_INT16 "LOCAL07"
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STX @LOCAL07
	STA @LOCAL06
	STZ @LOCAL05
.IF .DEFINED(USA)
	STZ @LOCAL04
.ENDIF
	LDA NUM_BATTLERS_IN_FRONT_ROW
	BEQ @UNKNOWN0
	LDX #0
	BRA @UNKNOWN1
@UNKNOWN0:
	LDX #1
@UNKNOWN1:
	STX @VIRTUAL04
	LDA GIYGAS_PHASE
	BEQ @UNKNOWN2
	LDA #1
	STA @VIRTUAL04
@UNKNOWN2:
	LDX @LOCAL04
	LDA @VIRTUAL04
	JSR UNKNOWN_C11FBC
	STA @LOCAL03
	LDX @LOCAL04
	LDA @VIRTUAL04
	JSR ENEMY_FLASHING_ON
	LDA @LOCAL05
	BNE @UNKNOWN3
	LDX @LOCAL04
	LDA @VIRTUAL04
	JSR UNKNOWN_C120D6
@UNKNOWN3:
	INC @LOCAL05
	JSL WINDOW_TICK
@UNKNOWN4:
	JSL UNKNOWN_C12E42
	LDA PAD_PRESS
	AND #PAD::UP
	BEQ @UNKNOWN5
	LDA @VIRTUAL04
	BNE @UNKNOWN5
	LDA NUM_BATTLERS_IN_BACK_ROW
	BNEL @UNKNOWN16
@UNKNOWN5:
	LDA PAD_PRESS
	AND #PAD::DOWN
	BEQ @UNKNOWN6
	LDA @VIRTUAL04
	CMP #1
	BNE @UNKNOWN6
	LDA NUM_BATTLERS_IN_FRONT_ROW
	BNEL @UNKNOWN16
@UNKNOWN6:
	LDA #SFX::CURSOR2
	STA @LOCAL02
	LDA PAD_PRESS
	AND #PAD::LEFT
	BEQ @UNKNOWN9
	LDA @VIRTUAL04
	STA @VIRTUAL02
	LDY @LOCAL07
	LDX @LOCAL03
	LDA @VIRTUAL02
	JSR UNKNOWN_C12070
	TAX
	STX @LOCAL01
	CPX #.LOWORD(-1)
	BNEL @UNKNOWN17
	LDA @VIRTUAL04
	EOR #$0001
	STA @VIRTUAL02
	LDY @LOCAL07
	LDX @LOCAL03
	LDA @VIRTUAL02
	JSR UNKNOWN_C12070
	TAX
	STX @LOCAL01
	CPX #.LOWORD(-1)
	BEQL @UNKNOWN2
	JMP @UNKNOWN17
@UNKNOWN9:
	LDA PAD_PRESS
	AND #PAD::RIGHT
	BEQ @UNKNOWN12
	LDA @VIRTUAL04
	STA @VIRTUAL02
	LDY @LOCAL07
	LDX @LOCAL03
	LDA @VIRTUAL02
	JSR UNKNOWN_C12012
	TAX
	STX @LOCAL01
	CPX #.LOWORD(-1)
	BNEL @UNKNOWN17
	LDA @VIRTUAL04
	EOR #$0001
	STA @VIRTUAL02
	LDY @LOCAL07
	LDX @LOCAL03
	LDA @VIRTUAL02
	JSR UNKNOWN_C12012
	TAX
	STX @LOCAL01
	CPX #.LOWORD(-1)
	BEQL @UNKNOWN2
	JMP @UNKNOWN17
@UNKNOWN12:
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN13
	JSR ENEMY_FLASHING_OFF
	LDY NUM_BATTLERS_IN_FRONT_ROW
	LDA @VIRTUAL04
	JSL MULT16
	CLC
	ADC @LOCAL04
	TAX
	INX
	STX @LOCAL00
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JMP @UNKNOWN18
@UNKNOWN13:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQL @UNKNOWN4
	LDA @LOCAL06
	CMP #1
	BNEL @UNKNOWN4
	JSR ENEMY_FLASHING_OFF
	LDX #0
	STX @LOCAL00
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	BRA @UNKNOWN18
@UNKNOWN16:
	LDA #SFX::CURSOR3
	STA @LOCAL02
	LDA @VIRTUAL04
	EOR #$0001
	STA @VIRTUAL02
	LDY @LOCAL07
	LDX @LOCAL03
	DEX
	LDA @VIRTUAL02
	JSR UNKNOWN_C12012
	TAX
	STX @LOCAL01
	CPX #.LOWORD(-1)
	BNE @UNKNOWN17
	LDY @LOCAL07
	LDX @LOCAL03
	INX
	LDA @VIRTUAL02
	JSR UNKNOWN_C12070
	TAX
	STX @LOCAL01
	CPX #.LOWORD(-1)
	BEQL @UNKNOWN2
@UNKNOWN17:
.IF .DEFINED(USA)
	STZ @LOCAL05
	JSL CLEAR_INSTANT_PRINTING
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN31
	JSL WINDOW_TICK
	JSL SET_INSTANT_PRINTING
	LDX @LOCAL01
.ENDIF
	STX @LOCAL04
	LDA @VIRTUAL02
	STA @VIRTUAL04
	LDA @LOCAL02
	JSL PLAY_SOUND
	JMP @UNKNOWN2
@UNKNOWN18:
	JSR CLOSE_FOCUS_WINDOW
	LDX @LOCAL00
	TXA
	END_C_FUNCTION
