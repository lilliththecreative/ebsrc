
UNKNOWN_C14012: ;$C14012
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 14
	LDX .LOWORD(UNKNOWN_7E97B8)
	INX
	STX .LOWORD(UNKNOWN_7E97B8)
	STX $02
	LDA #$000A
	CLC
	SBC $02
	BVS @UNKNOWN0
	BPL @UNKNOWN2
	BRA @UNKNOWN1
@UNKNOWN0:
	BMI @UNKNOWN2
@UNKNOWN1:
	STZ .LOWORD(UNKNOWN_7E97B8)
@UNKNOWN2:
	LDA .LOWORD(UNKNOWN_7E97B8)
	OPTIMIZED_MULT $04, 27
	CLC
	ADC #.LOWORD(UNKNOWN_7E96AA)
	PLD
	RTS