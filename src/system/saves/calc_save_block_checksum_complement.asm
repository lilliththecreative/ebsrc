
CALC_SAVE_BLOCK_XOR_CHECKSUM:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16 ;int slot
	STACK_RESERVE_RETURN_INT16 ;int
	END_STACK_VARS
	LDY #.SIZEOF(save_block)
	JSL MULT16
	STORE_INT1632 @VIRTUAL06
	CLC
	VAR_ADD_CONST_INT_ASSIGN SAVE_BASE + save_block::game_state, @VIRTUAL06
	LDX #0
	TXA
	STA @LOCAL00
	BRA @UNKNOWN1
@UNKNOWN0:
	LDA [@VIRTUAL06]
	STA @VIRTUAL02
	TXA
	EOR @VIRTUAL02
	TAX
	INC @VIRTUAL06
	INC @VIRTUAL06
	LDA @LOCAL00
	INC
	STA @LOCAL00
@UNKNOWN1:
	CMP #(.SIZEOF(save_block) - .SIZEOF(save_header)) / 2
	BCC @UNKNOWN0
	TXA
	END_C_FUNCTION
