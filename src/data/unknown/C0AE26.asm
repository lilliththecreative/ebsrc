
;an HDMA table (indirect) for battle backgrounds
UNKNOWN_C0AE26:
	.BYTE $E4
	.WORD .LOWORD(ANIMATED_BACKGROUND_LAYER_1_HDMA_BUFFER)
	.BYTE $FC
	.WORD .LOWORD(ANIMATED_BACKGROUND_LAYER_1_HDMA_BUFFER) + 200
	.BYTE $00
