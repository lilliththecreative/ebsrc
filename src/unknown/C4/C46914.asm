
UNKNOWN_C46914:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_NPC_IDS,X
	STA @LOCAL00
	CMP #.LOWORD(-1)
	BNE @UNKNOWN0
	LDA #4
	BRA @UNKNOWN1
@UNKNOWN0:
	LOADPTR NPC_CONFIG_TABLE, @VIRTUAL06
	LDA @LOCAL00
	OPTIMIZED_MULT @VIRTUAL04, .SIZEOF(npc_config)
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDY #npc_config::direction
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
@UNKNOWN1:
	END_C_FUNCTION
