
UNKNOWN_C45C90:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	END_STACK_VARS
	STA @VIRTUAL04
	MOVE_INT @PARAM01, @VIRTUAL0A
@UNKNOWN0:
	LDA DMA_TRANSFER_FLAG
	BNE @UNKNOWN0
	LDY #8
	LDA UNKNOWN_7E9E23
	JSL MODULUS16
	STA @VIRTUAL02
	LDA UNKNOWN_7E9E25
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E9D23)
	STA @LOCAL03
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	LDY #0
	STY @LOCAL02
	BRA @UNKNOWN2
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	EOR #$FF
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @VIRTUAL02
	SEP #PROC_FLAGS::ACCUM8
	STA @VIRTUAL01
	SEP #PROC_FLAGS::INDEX8
	LDY @VIRTUAL01
	LDA @VIRTUAL00
	JSL ASR8_UNKNOWN1
	EOR #$FF
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL03
	PHA
	REP #PROC_FLAGS::INDEX8
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	AND @VIRTUAL00
	PLX
	STA __BSS_START__,X
	LDY #256
	LDA [@VIRTUAL06],Y
	EOR #$FF
	STA @VIRTUAL00
	SEP #PROC_FLAGS::INDEX8
	LDY @VIRTUAL01
	LDA @VIRTUAL00
	JSL ASR8_UNKNOWN1
	EOR #$FF
	STA @VIRTUAL00
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL03
	CLC
	ADC #16
	REP #PROC_FLAGS::INDEX8
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA __BSS_START__,X
	AND @VIRTUAL00
	STA __BSS_START__,X
	LDY @LOCAL02
	INY
	STY @LOCAL02
	REP #PROC_FLAGS::ACCUM8
	INC @VIRTUAL06
	LDA @LOCAL03
	INC
	STA @LOCAL03
@UNKNOWN2:
	CPY #16
	BCC @UNKNOWN1
	LDA @VIRTUAL04
	CLC
	ADC UNKNOWN_7E9E23
	STA UNKNOWN_7E9E23
.IF .DEFINED(JPN)
	CMP #32
.ELSE
	CMP #64
.ENDIF
	BCC @UNKNOWN3
	SEC
.IF .DEFINED(JPN)
	SBC #32
.ELSE
	SBC #64
.ENDIF
	STA UNKNOWN_7E9E23
@UNKNOWN3:
	LDA UNKNOWN_7E9E23
	LSR
	LSR
	LSR
	STA @LOCAL01
	CMP UNKNOWN_7E9E25
	BEQ @UNKNOWN6
	STA UNKNOWN_7E9E25
	LDA #8
	SEC
	SBC @VIRTUAL02
	TAY
	STY @LOCAL02
	LDA @LOCAL01
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC #.LOWORD(UNKNOWN_7E9D23)
	TAX
	STX @LOCAL03
	MOVE_INT @VIRTUAL0A, @VIRTUAL06
	LDA #0
	STA @LOCAL00
	BRA @UNKNOWN5
@UNKNOWN4:
	SEP #PROC_FLAGS::ACCUM8
	LDA [@VIRTUAL06]
	EOR #$FF
	STA @VIRTUAL00
	LDY @LOCAL02
	SEP #PROC_FLAGS::INDEX8
	STY @VIRTUAL01
	LDA @VIRTUAL00
	JSL ASL16_ENTRY2
	EOR #$FF
	STA @VIRTUAL00
	REP #PROC_FLAGS::INDEX8
	LDX @LOCAL03
	STA __BSS_START__,X
	LDY #256
	LDA [@VIRTUAL06],Y
	EOR #$FF
	STA @VIRTUAL00
	SEP #PROC_FLAGS::INDEX8
	LDY @VIRTUAL01
	LDA @VIRTUAL00
	JSL ASL16_ENTRY2
	EOR #$FF
	STA @VIRTUAL00
	REP #PROC_FLAGS::INDEX8
	LDX @LOCAL03
	STA __BSS_START__+16,X
	REP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	INC
	STA @LOCAL00
	INC @VIRTUAL06
	INX
	STX @LOCAL03
@UNKNOWN5:
	CMP #16
	BCC @UNKNOWN4
@UNKNOWN6:
	END_C_FUNCTION
