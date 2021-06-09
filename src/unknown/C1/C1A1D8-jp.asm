
UNKNOWN_C1A1D8: ;$C1A1D8
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE 24
	TAX
	TXY
	DEY
	STY $16
	JSR SET_9622_ONE
	CREATE_WINDOW_NEAR #WINDOW::UNKNOWN2D
	LDA #$0002
	JSR a:.LOWORD(UNKNOWN_C10EB4)
	LDX #$0000
	LDA #$0001
	JSR UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_8, $0E
	LDA #$0006
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_offense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	BEQ @UNKNOWN1
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN0
	LDA #$0001
	STA $02
@UNKNOWN0:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN1:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN2
	BPL @UNKNOWN4
	BRA @UNKNOWN3
@UNKNOWN2:
	BMI @UNKNOWN4
@UNKNOWN3:
	LDA #$0000
	BRA @UNKNOWN9
@UNKNOWN4:
	LDA $14
	CLC
	SBC #$00FF
	BVC @UNKNOWN5
	BPL @UNKNOWN7
	BRA @UNKNOWN6
@UNKNOWN5:
	BMI @UNKNOWN7
@UNKNOWN6:
	LDX #$00FF
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN8:
	TXA
@UNKNOWN9:
	STA $06
	STZ $08
	BPL @UNKNOWN10
	DEC $08
@UNKNOWN10:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0001
	LDA #$0000
	JSR UNKNOWN_C438A5
	LOADPTR STATUS_EQUIP_WINDOW_TEXT_9, $0E
	LDA #$0007
	JSR a:.LOWORD(DISPLAY_CONFIG_MENU_TITLE)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_defense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	BEQ @UNKNOWN12
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN11
	LDA #$0001
	STA $02
@UNKNOWN11:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::BODY,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN12:
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	BEQ @UNKNOWN14
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN13
	LDA #$0001
	STA $02
@UNKNOWN13:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::ARMS,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN14:
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	BEQ @UNKNOWN16
	LDA #$0000
	STA $02
	LDY $16
	CPY #$0003
	BNE @UNKNOWN15
	LDA #$0001
	STA $02
@UNKNOWN15:
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::OTHER,X
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #.LOWORD(CHAR_STRUCT) + char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC $02
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN16:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN17
	BPL @UNKNOWN19
	BRA @UNKNOWN18
@UNKNOWN17:
	BMI @UNKNOWN19
@UNKNOWN18:
	LDA #$0000
	BRA @UNKNOWN24
@UNKNOWN19:
	LDA $14
	CLC
	SBC #$00FF
	BVC @UNKNOWN20
	BPL @UNKNOWN22
	BRA @UNKNOWN21
@UNKNOWN20:
	BMI @UNKNOWN22
@UNKNOWN21:
	LDX #$00FF
	BRA @UNKNOWN23
@UNKNOWN22:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN23:
	TXA
@UNKNOWN24:
	STA $06
	STZ $08
	BPL @UNKNOWN25
	DEC $08
@UNKNOWN25:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDA .LOWORD(UNKNOWN_7E9CD4)
	BNE @UNKNOWN26
	JMP a:.LOWORD(@UNKNOWN53)
@UNKNOWN26:
	LDX #$0000
	LDA #$000A
	JSR UNKNOWN_C438A5
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA #$014E
	JSR PRINT_LETTER
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_offense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(UNKNOWN_7E9CD0)
	AND #$00FF
	BEQ @UNKNOWN28
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN27
	LDX #$0001
	STX $12
@UNKNOWN27:
	LDA .LOWORD(UNKNOWN_7E9CD0)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN28:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN29
	BPL @UNKNOWN31
	BRA @UNKNOWN30
@UNKNOWN29:
	BMI @UNKNOWN31
@UNKNOWN30:
	LDA #$0000
	BRA @UNKNOWN36
@UNKNOWN31:
	LDA $14
	CLC
	SBC #$00FF
	BVC @UNKNOWN32
	BPL @UNKNOWN34
	BRA @UNKNOWN33
@UNKNOWN32:
	BMI @UNKNOWN34
@UNKNOWN33:
	LDX #$00FF
	BRA @UNKNOWN35
@UNKNOWN34:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN35:
	TXA
@UNKNOWN36:
	STA $06
	STZ $08
	BPL @UNKNOWN37
	DEC $08
@UNKNOWN37:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
	LDX #$0001
	LDA #$000A
	JSR UNKNOWN_C438A5
	LDA #$0001
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDA #$014E
	JSR PRINT_LETTER
	LDA #$0000
	JSR a:.LOWORD(UNKNOWN_C10FEA)
	LDY $16
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::base_defense,X
	AND #$00FF
	STA $14
	LDA .LOWORD(UNKNOWN_7E9CD1)
	AND #$00FF
	BEQ @UNKNOWN39
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN38
	LDX #$0001
	STX $12
@UNKNOWN38:
	LDA .LOWORD(UNKNOWN_7E9CD1)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN39:
	LDA .LOWORD(UNKNOWN_7E9CD2)
	AND #$00FF
	BEQ @UNKNOWN41
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN40
	LDX #$0001
	STX $12
@UNKNOWN40:
	LDA .LOWORD(UNKNOWN_7E9CD2)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN41:
	LDA .LOWORD(UNKNOWN_7E9CD3)
	AND #$00FF
	BEQ @UNKNOWN43
	LDX #$0000
	STX $12
	LDY $16
	CPY #$0003
	BNE @UNKNOWN42
	LDX #$0001
	STX $12
@UNKNOWN42:
	LDA .LOWORD(UNKNOWN_7E9CD3)
	AND #$00FF
	DEC
	STA $04
	TYA
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	OPTIMIZED_MULT $04, .SIZEOF(item)
	LDX $12
	STX $04
	CLC
	ADC $04
	CLC
	ADC #item::strength
	TAX
	SEP #PROC_FLAGS::ACCUM8
	LDA f:ITEM_CONFIGURATION_TABLE,X
	REP #PROC_FLAGS::ACCUM8
	SEC
	AND #$00FF
	SBC #$0080
	EOR #$FF80
	STA $02
	LDA $14
	CLC
	ADC $02
	STA $14
@UNKNOWN43:
	LDA $14
	STA $02
	LDA #$0000
	CLC
	SBC $02
	BVC @UNKNOWN44
	BPL @UNKNOWN46
	BRA @UNKNOWN45
@UNKNOWN44:
	BMI @UNKNOWN46
@UNKNOWN45:
	LDA #$0000
	BRA @UNKNOWN51
@UNKNOWN46:
	LDA $14
	CLC
	SBC #$00FF
	BVC @UNKNOWN47
	BPL @UNKNOWN49
	BRA @UNKNOWN48
@UNKNOWN47:
	BMI @UNKNOWN49
@UNKNOWN48:
	LDX #$00FF
	BRA @UNKNOWN50
@UNKNOWN49:
	LDA $14
	REP #PROC_FLAGS::ACCUM8
	AND #$00FF
	TAX
@UNKNOWN50:
	TXA
@UNKNOWN51:
	STA $06
	STZ $08
	BPL @UNKNOWN52
	DEC $08
@UNKNOWN52:
	MOVE_INT $06, $0E
	JSR a:.LOWORD(PRINT_NUMBER)
@UNKNOWN53:
	JSR CLEAR_9622
	PLD
	RTL
