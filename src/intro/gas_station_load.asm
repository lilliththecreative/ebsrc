
GAS_STATION_LOAD: ;$C0F0D2
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 22
	STZ BG2_Y_POS
	STZ BG2_X_POS
	STZ BG1_Y_POS
	STZ BG1_X_POS
<<<<<<< HEAD
	LOADPTR BUFFER, @VIRTUAL06
	LOADPTR GAS_STATION_GRAPHICS, @LOCAL00
	MOVE_INT @VIRTUAL06, @LOCAL01
=======
	LOADPTR UNKNOWN_7F0000, $06
	LOADPTR GAS_STATION_GRAPHICS, $0E
	MOVE_INT $06, $12
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL DECOMP
	COPY_TO_VRAM1P $06, $0000, $C000, $00
	.A16
	LOADPTR GAS_STATION_ARRANGEMENT, $0E
	MOVE_INT $06, $12
	JSL DECOMP
	COPY_TO_VRAM1P $06, $7800, $800, $00
	.A16
<<<<<<< HEAD
	LOADPTR GAS_STATION_PALETTE, @LOCAL00
	PROMOTENEARPTR .LOWORD(PALETTES), @VIRTUAL06
=======
	LOADPTR GAS_STATION_PALETTE, $0E
	PROMOTENEARPTR $0200, $06
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	MOVE_INT $06, $12
	JSL DECOMP
	JSL UNKNOWN_C4A377
	JSL UNKNOWN_C496F9
<<<<<<< HEAD
	LOADPTR BUFFER + BPP4PALETTE_SIZE * 2, @LOCAL00
	LDX #BPP4PALETTE_SIZE
=======
	LOADPTR UNKNOWN_7F0000+$40, $0E
	LDX #$0020
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0000
	JSL MEMSET24
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT $0E
	LDX #$0040
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #.LOWORD(PALETTES)
=======
	LDA #$0200
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMSET16
	SEP #PROC_FLAGS::ACCUM8
	STZ_BADOPT $0E
	LDX #$01A0
	REP #PROC_FLAGS::ACCUM8
<<<<<<< HEAD
	LDA #.LOWORD(PALETTES) + 3 * BPP4PALETTE_SIZE
=======
	LDA #$0260
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	JSL MEMSET16
	LDX #$FFFF
	LDA #$01E0
	JSL UNKNOWN_C496E7
	SEP #PROC_FLAGS::ACCUM8
	LDA #$0001
	STA TM_MIRROR
	LDA #$0002
	STA TD_MIRROR
	STA f:CGWSEL
	LDA #$0003
	STA f:CGADSUB
<<<<<<< HEAD
	LDA #PALETTE_UPLOAD::FULL
	STA PALETTE_UPLOAD_MODE
=======
	LDA #$0018
	STA UNKNOWN_7E0030
>>>>>>> parent of e89e3811 (switch to new stack macro, delete old one and replace some magic numbers)
	REP #PROC_FLAGS::ACCUM8
	PLD
	RTS
