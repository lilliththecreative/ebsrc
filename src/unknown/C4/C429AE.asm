
UNKNOWN_C429AE:
	PHA
	TXA
	ASL
	TAX
	LDA ENTITY_TILE_HEIGHTS,X
	STA $00
	LDA #$0000
	STA UNKNOWN_7E0091
	LDA ENTITY_BYTE_WIDTHS,X
	STA DMA_COPY_SIZE
	LDA #$007F
	STA DMA_COPY_RAM_SRC + 2
	PLA
	STA DMA_COPY_RAM_SRC
	LDA ENTITY_VRAM_ADDRESS,X
	STA DMA_COPY_VRAM_DEST
@UNKNOWN0:
	JSL UNKNOWN_C0A56E
	DEC $00
	BEQ @UNKNOWN1
	LDA DMA_COPY_RAM_SRC
	CLC
	ADC DMA_COPY_SIZE
	STA DMA_COPY_RAM_SRC
	BRA @UNKNOWN0
@UNKNOWN1:
	RTL
