
UNKNOWN_C09D1F:
	PHX
	JSR UNKNOWN_C09D3E
	LDA UNKNOWN_7E125A,Y
	CPX #$FFFF
	BEQ @UNKNOWN0
	STA UNKNOWN_7E125A,X
	PLX
	BRA @UNKNOWN1
@UNKNOWN0:
	PLX
	STA ENTITY_SCRIPT_INDEX_TABLE,X
@UNKNOWN1:
	CPY UNKNOWN_7E0A58
	BNE @UNKNOWN2
	STA UNKNOWN_7E0A58
@UNKNOWN2:
	RTS
