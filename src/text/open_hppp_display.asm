
OPEN_HPPP_DISPLAY:
	BEGIN_C_FUNCTION_FAR
	END_STACK_VARS
	JSL UNKNOWN_C0943C
	LDA #SFX::CURSOR1
	JSL PLAY_SOUND
	JSR UNKNOWN_C1134B
@UNKNOWN0:
	JSL WINDOW_TICK
	LDA PAD_PRESS
	AND #PAD::A_BUTTON | PAD::L_BUTTON
	BEQ @UNKNOWN1
	JSL OPEN_MENU_BUTTON
	BRA @UNKNOWN2
@UNKNOWN1:
	LDA PAD_PRESS
	AND #PAD::B_BUTTON | PAD::SELECT_BUTTON
	BEQ @UNKNOWN0
	LDA #SFX::CURSOR2
	JSL PLAY_SOUND
	JSR CLEAR_INSTANT_PRINTING
	JSR HIDE_HPPP_WINDOWS
	JSR UNKNOWN_C1008E
	JSL WINDOW_TICK
	JSL UNKNOWN_C09451
@UNKNOWN2:
	END_C_FUNCTION
