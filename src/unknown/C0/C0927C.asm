
UNKNOWN_C0927C:
	LDA #.LOWORD(UNKNOWN_C0DB0F)
	STA UNKNOWN_7E0A5E
	LDX #$FFFF
	STX FIRST_ENTITY
	STX ENTITY_NEXT_ENTITY_TABLE+58
	STX UNKNOWN_7E125A+138
	INX
	STX UNKNOWN_7E0A52
	STX UNKNOWN_7E0A54
	CLC
	LDX #$0038
@UNKNOWN0:
	TXA
	ADC #$0002
	STA ENTITY_NEXT_ENTITY_TABLE,X
	DEX
	DEX
	BPL @UNKNOWN0
	LDX #$0088
@UNKNOWN1:
	TXA
	ADC #$0002
	STA UNKNOWN_7E125A,X
	DEX
	DEX
	BPL @UNKNOWN1
	LDX #$003A
	LDA #$FFFF
@UNKNOWN2:
	STA ENTITY_SCRIPT_TABLE,X
	DEX
	DEX
	BPL @UNKNOWN2
	LDX #$003A
@UNKNOWN3:
	STZ ENTITY_SPRITEMAP_POINTER_HIGH,X
	STZ ENTITY_TICK_CALLBACK_HIGH,X
	DEX
	DEX
	BPL @UNKNOWN3
	LDX #$0006
@UNKNOWN4:
	STZ UNKNOWN_7E1A12,X
	STZ UNKNOWN_7E1A1A,X
	STZ UNKNOWN_7E1A22,X
	STZ UNKNOWN_7E1A32,X
	STZ UNKNOWN_7E1A2A,X
	STZ UNKNOWN_7E1A3A,X
	STZ UNKNOWN_7E1A02,X
	STZ UNKNOWN_7E1A0A,X
	STZ ENTITY_DRAW_PRIORITY,X
	DEX
	DEX
	BPL @UNKNOWN4
	JSR CLEAR_ENTITY_DRAW_SORTING_TABLE
	STZ UNKNOWN_7E0A60
	RTL
