
<<<<<<< HEAD
CORRUPTION_CHECK:
	BEGIN_C_FUNCTION
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_INT16
	END_STACK_VARS
	LDA CORRUPTION_CHECK_RESULTS
=======
CORRUPTION_CHECK: ;$C1ECDC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 20
	LDA UNKNOWN_7E9F79
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	AND #$00FF
	BEQ @RETURN
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20A20
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN2F
	LDX #$0000
	STX $12
	BRA @LOOP_ENTRY
@LOOP_BEGIN:
	SEP #PROC_FLAGS::ACCUM8
	LDA f:UNKNOWN_EF05A6,X
	AND CORRUPTION_CHECK_RESULTS
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	BEQ @SIGNATURE_MATCH
	TXA
	INC
	STORE_INT1632S $06
	MOVE_INT $06, $0E
	JSR UNKNOWN_C1AD0A
	DISPLAY_TEXT_PTR MSG_SYS_SRAM_CRASH
@SIGNATURE_MATCH:
	LDX $12
	INX
	STX $12
@LOOP_ENTRY:
	STX $02
	LDA #$0003
	CLC
	SBC $02
	BRANCHGTS @LOOP_BEGIN
	JSR CLOSE_FOCUS_WINDOW
	SEP #PROC_FLAGS::ACCUM8
	STZ CORRUPTION_CHECK_RESULTS
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(WINDOW_TEXT_ATTRIBUTES_BACKUP)
	JSL UNKNOWN_C20ABC
@RETURN:
	PLD
	RTS
