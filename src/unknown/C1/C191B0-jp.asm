
UNKNOWN_C191B0: ;$C191B0
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 18
	TAX
	DEX
	STX $10
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA a:game_state::escargo_express_items,X
	STA $01
	BRA @UNKNOWN1
@UNKNOWN0:
	.A16
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA $00
	STA a:game_state::escargo_express_items,X
	REP #PROC_FLAGS::ACCUM8
	LDA $0E
	TAX
	STX $10
@UNKNOWN1:
	LDX $10
	SEP #PROC_FLAGS::ACCUM8
	LDA .LOWORD(GAME_STATE)+game_state::escargo_express_items+1,X
	STA $00
	REP #PROC_FLAGS::ACCUM8
	LDA $00
	AND #$00FF
	BEQ @UNKNOWN2
	TXA
	INC
	STA $0E
	CMP #$0024
	BCC @UNKNOWN0
@UNKNOWN2:
	TXA
	CLC
	ADC #.LOWORD(GAME_STATE)
	TAX
	SEP #PROC_FLAGS::ACCUM8
	STZ a:game_state::escargo_express_items,X
	REP #PROC_FLAGS::ACCUM8
	LDA $01
	AND #$00FF
	PLD
	RTS
