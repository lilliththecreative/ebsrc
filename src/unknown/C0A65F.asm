
UNKNOWN_C0A65F: ;$C0A65F
	LDX $88
	TAY
	LDA .LOWORD(UNKNOWN_30X2_TABLE_41),X
	BMI @UNKNOWN0
	TYA
	STA .LOWORD(UNKNOWN_30X2_TABLE_34),X
@UNKNOWN0:
	TYA
	RTL