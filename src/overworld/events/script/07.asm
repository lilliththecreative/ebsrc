
MOVEMENT_CODE_07: ;$C099DD
	STY $94
	JSR a:.LOWORD(UNKNOWN_C09D03)
	BCS @UNKNOWN0
	STY .LOWORD(UNKNOWN_7E0A58)
	LDX $8A
	LDA .LOWORD(UNKNOWN_7E125A),X
	STA .LOWORD(UNKNOWN_7E125A),Y
	TYA
	STA .LOWORD(UNKNOWN_7E125A),X
	TYX
	STZ .LOWORD(UNKNOWN_7E12E6),X
	STZ .LOWORD(ENTITY_SLEEP_FRAMES),X
	LDY $94
	LDA [$80],Y
	STA .LOWORD(ENTITY_PROGRAM_COUNTER),X
	LDA $82
	STA .LOWORD(ENTITY_PROGRAM_COUNTER_BANK),X
	INY
	INY
	RTS
@UNKNOWN0:
	LDY $94
	INY
	INY
	RTS
