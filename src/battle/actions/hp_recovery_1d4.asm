
BTLACT_HP_RECOVERY_1D4: ;$C2A0AE
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	LDA #$0004
	JSR RAND_LIMIT
	TAX
	INX
	LDA CURRENT_TARGET
	JSR RECOVER_HP
	RTL
