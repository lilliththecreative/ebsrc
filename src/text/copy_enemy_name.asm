
COPY_ENEMY_NAME:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT8
	STACK_RESERVE_PARAM_INT32 ;const char* src
	STACK_RESERVE_PARAM_INT16 ;NEAR char* dest
	STACK_RESERVE_PARAM_INT16 ;int length
	STACK_RESERVE_RETURN_INT16 ;NEAR char*
	END_STACK_VARS
	STX @VIRTUAL02
	TAY
	MOVE_INT @PARAM00, @VIRTUAL06
	BRA @UNKNOWN5
@UNKNOWN0:
	LDA [@VIRTUAL06]
	AND #$00FF
	TAX
	BEQ @UNKNOWN6
	CPX #CHAR::NESS_PLACEHOLDER
	BNE @UNKNOWN3
	LDX #0
	BRA @UNKNOWN2
@UNKNOWN1:
	SEP #PROC_FLAGS::ACCUM8
	LDA CHAR_STRUCT+char_struct::name,X
	STA @LOCAL00
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @UNKNOWN4
	SEP #PROC_FLAGS::ACCUM8
	LDA @LOCAL00
	STA __BSS_START__,Y
	INY
	INX
@UNKNOWN2:
	CPX #.SIZEOF(char_struct::name)
	BCC @UNKNOWN1
	BRA @UNKNOWN4
@UNKNOWN3:
	SEP #PROC_FLAGS::ACCUM8
	STA __BSS_START__,Y
	INY
@UNKNOWN4:
	REP #PROC_FLAGS::ACCUM8
	INC @VIRTUAL06
@UNKNOWN5:
	LDX @VIRTUAL02
	LDA @VIRTUAL02
	DEC
	STA @VIRTUAL02
	CPX #0
	BNE @UNKNOWN0
@UNKNOWN6:
	SEP #PROC_FLAGS::ACCUM8
	LDA #0
	STA __BSS_START__,Y
	REP #PROC_FLAGS::ACCUM8
	TYA
	END_C_FUNCTION
