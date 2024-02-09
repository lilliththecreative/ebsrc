
<<<<<<< HEAD:src/system/antipiracy/final_battle_antipiracy_check.asm
FINAL_BATTLE_ANTIPIRACY_CHECK:
=======
UNKNOWN_C3FDC5: ;$C3FDC5
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers):src/unknown/C3/C3FDC5.asm
	REP #PROC_FLAGS::ACCUM8
	LDX #$0033
	LDA #$0000
@UNKNOWN0:
	CLC
	ADC f:CHECK_HARDWARE,X
	DEX
	BPL @UNKNOWN0
	SEC
	SBC f:ANTIPIRACY_CHECKSUM_2
	BEQ @UNKNOWN3
	SEP #PROC_FLAGS::ACCUM8
	.I8
	LDX #$0000
	RTS
	LDA #$0000
@UNKNOWN1:
	STA f:SRAM,X
	INX
	BPL @UNKNOWN1
	LDA #$0034
	STA DMA_QUEUE_INDEX
@UNKNOWN2:
	BRA @UNKNOWN2
@UNKNOWN3:
	RTL
