
UNKNOWN_C4E7AE:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_ARRAY 16, 1
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	STACK_RESERVE_INT32
	END_STACK_VARS
	LDA #0
	STA @VIRTUAL02
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	STZ @LOCAL00
	LDX #16
	REP #PROC_FLAGS::ACCUM8
	TDC
	CLC
	ADC #@LOCAL02
	JSL MEMSET16
	TDC
	CLC
	ADC #@LOCAL02
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDA @VIRTUAL02
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(PARTY_CHARACTERS)
	PROMOTENEARPTRA @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #5
	JSL MEMCPY24
	LDA @VIRTUAL02
	ASL
	TAX
	LDA UNKNOWN_C3FDB5,X
	TAY
	LDX #UNK_SIZE
	TDC
	CLC
	ADC #@LOCAL02
	JSR UNKNOWN_C4E583
	INC @VIRTUAL02
@UNKNOWN1:
	LDA @VIRTUAL02
	CMP #4
	BCC @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	STZ @LOCAL00
	LDX #16
	REP #PROC_FLAGS::ACCUM8
	TDC
	CLC
	ADC #@LOCAL02
	JSL MEMSET16
	TDC
	CLC
	ADC #@LOCAL02
	PROMOTENEARPTRA @VIRTUAL0A
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	PROMOTENEARPTR GAME_STATE + game_state::pet_name, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #6
	JSL MEMCPY24
	LDY #448
	LDX #6
	TDC
	CLC
	ADC #@LOCAL02
	JSR UNKNOWN_C4E583
	LOADPTR CAST_SEQUENCE_FORMATTING, @LOCAL07
	MOVE_INT @LOCAL07, @VIRTUAL06
	LDA #39
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL06
	LDA @VIRTUAL06+2
	STA @LOCAL06+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #16
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL MEMSET24
	.A16
	PROMOTENEARPTR PARTY_CHARACTERS + (.SIZEOF(char_struct) * 1) + char_struct::name, @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL05
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL05, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #5
	JSL MEMCPY24
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LOADPTR CHARACTER_GUARDIAN_TEXT_1, @LOCAL01
	JSL STRCAT
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA [@VIRTUAL06]
	TAY
	STY @LOCAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDY #2
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	TDC
	CLC
	ADC #@LOCAL02
	LDY @LOCAL04
	JSR UNKNOWN_C4E583
	MOVE_INT @LOCAL07, @VIRTUAL06
	LDA #36
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL06
	LDA @VIRTUAL06+2
	STA @LOCAL06+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #16
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL MEMSET24
	.A16
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	MOVE_INT @LOCAL05, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #5
	JSL MEMCPY24
	.A16
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LOADPTR CHARACTER_GUARDIAN_TEXT_2, @LOCAL01
	JSL STRCAT
	MOVE_INT @LOCAL06, @VIRTUAL06
	LDA [@VIRTUAL06]
	TAY
	STY @LOCAL04
	MOVE_INT @LOCAL06, @VIRTUAL06
	SEP #PROC_FLAGS::ACCUM8
	LDY #2
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	TDC
	CLC
	ADC #@LOCAL02
	LDY @LOCAL04
	JSR UNKNOWN_C4E583
	MOVE_INT @LOCAL07, @VIRTUAL06
	LDA #108
	CLC
	ADC @VIRTUAL06
	STA @VIRTUAL06
	STA @LOCAL06
	LDA @VIRTUAL06+2
	STA @LOCAL06+2
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LDX #16
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	JSL MEMSET24
	.A16
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	PROMOTENEARPTR PARTY_CHARACTERS + (.SIZEOF(char_struct) * (PARTY_MEMBER::POO - 1)), @VIRTUAL06
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT @VIRTUAL06, @LOCAL01
	LDA #5
	JSL MEMCPY24
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @LOCAL00
	LOADPTR CHARACTER_GUARDIAN_TEXT_3, @LOCAL01
	JSL STRCAT
	MOVE_INT @LOCAL06, @VIRTUAL06
	MOVE_INT @VIRTUAL06, @VIRTUAL0A
	LDA [@VIRTUAL0A]
	TAY
	STY @LOCAL03
	SEP #PROC_FLAGS::ACCUM8
	LDY #2
	LDA [@VIRTUAL06],Y
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
	TDC
	CLC
	ADC #@LOCAL02
	LDY @LOCAL03
	JSR UNKNOWN_C4E583
	END_C_FUNCTION
