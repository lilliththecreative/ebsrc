
UNKNOWN_C0B0EF: ;$C0B0EF
	PHA
	PHX
	ASL
	ASL
	ASL
	ASL
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00E4
	STA SWIRL_WINDOW_HDMA_TABLE
	LDY #.LOWORD(SWIRL_WINDOW_HDMA_BUFFER)
	STY SWIRL_WINDOW_HDMA_TABLE + 1
	LDA #$00FC
	STA SWIRL_WINDOW_HDMA_TABLE + 3
	LDA #$0000
	STA SWIRL_WINDOW_HDMA_TABLE + 6
	LDA #$007E
	STA f:A1B0,X
	STA f:DASB0,X
	LDA #$0026
	STA f:BBAD0,X
	PLA
	STA f:DMAP0,X
	LDY #.LOWORD(SWIRL_WINDOW_HDMA_BUFFER) + 200
	AND #$0004
	BEQ @UNKNOWN0
	LDY #.LOWORD(SWIRL_WINDOW_HDMA_BUFFER) + 400
@UNKNOWN0:
	STY SWIRL_WINDOW_HDMA_TABLE + 4
	PLA
	REP #PROC_FLAGS::ACCUM8
	LDA #.LOWORD(SWIRL_WINDOW_HDMA_TABLE)
	STA f:A1T0L,X
	SEP #PROC_FLAGS::ACCUM8
	PLX
	LDA HDMAEN_MIRROR
	ORA f:DMA_FLAGS,X
	STA HDMAEN_MIRROR
	REP #PROC_FLAGS::ACCUM8
	RTL
