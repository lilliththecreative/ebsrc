
MOVEMENT_CODE_0C: ;$C099C3
	STY $94
	LDY $8A
MOVEMENT_CODE_0C_UNK1:
	LDX $88
	JSR a:.LOWORD(UNKNOWN_C09D12)
	LDA #$FFFF
	STA .LOWORD(ENTITY_SLEEP_FRAMES),Y
	LDA .LOWORD(ENTITY_SCRIPT_INDEX_TABLE),X
	BPL @UNKNOWN0
	JMP .LOWORD(MOVEMENT_CODE_00)
@UNKNOWN0:
	LDY $94
	RTS