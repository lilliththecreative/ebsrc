
PALETTE_DMA_PARAMETERS:
	.WORD $FE80
	.WORD $0100
	.WORD .LOWORD(CUR_TEXT_PAL)
	.WORD $0000

	.WORD $0000
	.WORD $0100
	.WORD .LOWORD(CUR_TEXT_PAL) + $100
	.WORD $0080

	.WORD $0000
	.WORD $0200
	.WORD .LOWORD(CUR_TEXT_PAL)
	.WORD $0000
