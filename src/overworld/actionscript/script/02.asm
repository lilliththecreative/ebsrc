
MOVEMENT_CODE_02: ;$C09627
	STY $94
	LDX $8A
	LDY ENTITY_SCRIPT_STACK_OFFSETS,X
	DEY
	SEP #PROC_FLAGS::ACCUM8
	LDA ($84),Y
	DEC
	STA ($84),Y
	REP #PROC_FLAGS::ACCUM8
	BNE @UNKNOWN0
	DEY
	DEY
	TYA
	STA ENTITY_SCRIPT_STACK_OFFSETS,X
	LDY $94
	RTS
@UNKNOWN0:
	DEY
	DEY
	LDA ($84),Y
	TAY
	RTS
