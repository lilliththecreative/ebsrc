
UNKNOWN_C11FBC: ;$C11FBC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	TXY
	TAX
	BNE @UNKNOWN0
	SEP #PROC_FLAGS::ACCUM8
	LDA BATTLER_FRONT_ROW_X_POSITIONS,Y
	BRA @UNKNOWN1
@UNKNOWN0:
	SEP #PROC_FLAGS::ACCUM8
	LDA BATTLER_BACK_ROW_X_POSITIONS,Y
@UNKNOWN1:
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	RTS
