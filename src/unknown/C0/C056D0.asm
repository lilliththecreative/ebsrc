
UNKNOWN_C056D0:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	STA @LOCAL02
	LDY TEMP_ENTITY_SURFACE_FLAGS
	TXA
	ASL
	TAX
	LDA f:UNKNOWN_C42AC9,X
	STA @VIRTUAL04
	LDA f:UNKNOWN_C42AA7,X
	ASL
	ASL
	ASL
	CLC
	ADC CHECKED_COLLISION_LEFT_X
	DEC
	LSR
	LSR
	LSR
	STA @VIRTUAL02
	STA @LOCAL01
	LDA @VIRTUAL02
	AND #$003F
	STA @VIRTUAL02
	LDA @LOCAL02
	LSR
	LSR
	LSR
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	TAX
	LDA LOADED_COLLISION_TILES,X
	AND #$00FF
	STA @VIRTUAL02
	TYA
	ORA @VIRTUAL02
	TAY
	LDA @LOCAL02
	CLC
	ADC #7
	LSR
	LSR
	LSR
	TAX
	STX @LOCAL02
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA @LOCAL01
	STA @VIRTUAL02
	AND #$003F
	STA @VIRTUAL02
	TXA
	AND #$003F
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC @VIRTUAL02
	TAX
	LDA LOADED_COLLISION_TILES,X
	AND #$00FF
	STA @VIRTUAL02
	TYA
	ORA @VIRTUAL02
	TAY
	LDX @LOCAL02
	INX
	STX @LOCAL02
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	CMP @VIRTUAL04
	BCC @UNKNOWN0
	STY TEMP_ENTITY_SURFACE_FLAGS
	END_C_FUNCTION
