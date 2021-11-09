
DISPLAY_CHECK_POSITION_DEBUG_OVERLAY: ;$EFDCBC
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 18
	LDA #.LOWORD(GAME_STATE)+game_state::leader_x_coord
	STA $04
	LDX $04
	LDA a:.LOWORD(RAM),X
	XBA
	AND #$00FF
	JSR a:.LOWORD(INTEGER_TO_HEX_DEBUG_TILES)
	TAX
	LOADPTR_REVERSE $7E7F44, $0E
	TXY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	.A16
	LDA #.LOWORD(GAME_STATE)+game_state::leader_y_coord
	STA $02
	LDX $02
	LDA a:.LOWORD(RAM),X
	XBA
	AND #$00FF
	JSR a:.LOWORD(INTEGER_TO_HEX_DEBUG_TILES)
	.A16
	TAX
	LOADPTR_REVERSE $7E7F4A, $0E
	TXY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	LDX $04
	LDA a:.LOWORD(RAM),X
	LSR
	LSR
	LSR
	JSR a:.LOWORD(INTEGER_TO_HEX_DEBUG_TILES)
	.A16
	TAX
	LOADPTR_REVERSE $7E7F24, $0E
	TXY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	LDX $02
	LDA a:.LOWORD(RAM),X
	LSR
	LSR
	LSR
	JSR a:.LOWORD(INTEGER_TO_HEX_DEBUG_TILES)
	.A16
	TAX
	LOADPTR_REVERSE $7E7F2A, $0E
	TXY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	LDX $04
	LDA a:.LOWORD(RAM),X
	JSR a:.LOWORD(INTEGER_TO_HEX_DEBUG_TILES)
	.A16
	TAX
	LOADPTR_REVERSE $7E7F04, $0E
	TXY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	LDX $02
	LDA a:.LOWORD(RAM),X
	JSR a:.LOWORD(INTEGER_TO_HEX_DEBUG_TILES)
	.A16
	TAX
	LOADPTR_REVERSE $7E7F0A, $0E
	TXY
	LDX #$0008
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	.A16
	LDX $04
	LDA a:.LOWORD(RAM),X
	XBA
	AND #$00FF
	PHA
	LDY #MAP_WIDTH_TILES
	LDX $02
	LDA a:.LOWORD(RAM),X
	JSL DIVISION16S_DIVISOR_POSITIVE
	ASL
	ASL
	ASL
	ASL
	ASL
	PLY
	STY $02
	CLC
	ADC $02
	TAX
	LDA MAP_DATA_PER_SECTOR_MUSIC,X
	AND #$00FF
	TAX
	JSR a:.LOWORD(INTEGER_TO_HEX_DEBUG_TILES)
	TAX
	LOADPTR_REVERSE UNKNOWN_7E7C42, $0E
	TXY
	INY
	INY
	INY
	INY
	LDX #$0004
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	LDA .LOWORD(CURRENT_SECTOR_ATTRIBUTES)
	JSR a:.LOWORD(INTEGER_TO_BINARY_DEBUG_TILES)
	.A16
	TAX
	LOADPTR_REVERSE UNKNOWN_7E7C62, $0E
	TXY
	LDX #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	LDA .LOWORD(GAME_STATE)+game_state::trodden_tile_type
	JSR a:.LOWORD(INTEGER_TO_BINARY_DEBUG_TILES)
	.A16
	TAX
	LOADPTR_REVERSE UNKNOWN_7E7C82, $0E
	TXY
	LDX #$0010
	SEP #PROC_FLAGS::ACCUM8
	LDA #$00
	JSL PREPARE_VRAM_COPY_ENTRY_B
	PLD
	RTS