
UNKNOWN_C06ACA:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL01
	LDA UNKNOWN_7E0A34
	BEQ @UNKNOWN0
	LDA GAME_STATE + game_state::unknownB0
	CMP #2
	BEQ @UNKNOWN0
	LDA UNKNOWN_7E5D9A
	BNE @UNKNOWN0
	LDA BATTLE_SWIRL_FLAG
	ORA BATTLE_SWIRL_COUNTDOWN
	BNE @UNKNOWN0
	LDA @LOCAL01
	AND #$7FFF
	STA @LOCAL01
	LDA #1
	STA UNKNOWN_7E5DC2
	LOADPTR DOOR_DATA & $FF0000, @VIRTUAL06
	LDA @LOCAL01
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL00
	LDA @VIRTUAL06+2
	STA @LOCAL00+2
	LDA #2
	JSL UNKNOWN_C064E3
	JSL UNKNOWN_C07C5B
@UNKNOWN0:
	PLD
	RTS
