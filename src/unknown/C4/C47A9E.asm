
UNKNOWN_C47A9E:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CURRENT_ENTITY_SLOT
	ASL
	TAX
	LDA ENTITY_SCRIPT_VAR0_TABLE,X
	STA @LOCAL03
	LOADPTR ANIMATION_SEQUENCE_POINTERS, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL02
	LDA @LOCAL03
	ASL
	ASL
	ASL
	STA @LOCAL03
	LOADPTR UNKNOWN_7F0000, @VIRTUAL0A
	LDA @LOCAL03
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	DEREFERENCE_PTR_TO @VIRTUAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL0A, @LOCAL01
.ELSE
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
.ENDIF
	JSL DECOMP
	LDA @LOCAL03
	INC
	INC
	INC
	INC
	MOVE_INTX @LOCAL02, @VIRTUAL06
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
.IF .DEFINED(JPN)
	MOVE_INT @VIRTUAL0A, @LOCAL00
.ELSE
	STA @LOCAL02
	LDA @VIRTUAL06+2
	STA @LOCAL02+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
.ENDIF
	LDY #VRAM::TEXT_LAYER_TILES
.IF .DEFINED(USA)
	MOVE_INT @LOCAL02, @VIRTUAL06
.ENDIF
	LDA [@VIRTUAL06]
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL TRANSFER_TO_VRAM
	.A16
	LDA [@VIRTUAL06]
	STORE_INT1632 @VIRTUAL06
	CLC
	ADD_INT_ASSIGN @VIRTUAL06, @VIRTUAL0A
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #BPP2PALETTE_SIZE
	LDA #.LOWORD(CUR_TEXT_PAL)
	JSL MEMCPY16
	SEP #PROC_FLAGS::ACCUM8
	LDA #$18
	STA UNKNOWN_7E0030
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(-1)
	STA BG3_Y_POS
	END_C_FUNCTION
