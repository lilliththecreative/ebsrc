
ANIMATION_SEQUENCE_POINTERS: ;$CC2DE1
	.DWORD NULL
	.BYTE $00, $00, $00, $00

	.DWORD ANIMATIONDATA_CARPAINTER_LIGHTNING_REFLECT
	.BYTE $10, $1C, $06, $03

	.DWORD ANIMATIONDATA_CARPAINTER_LIGHTNING_STRIKE
	.BYTE $A0, $05, $07, $10

	.DWORD ANIMATIONDATA_STARMAN_JR_TELEPORT
	.BYTE $C0, $03, $08, $08

	.DWORD ANIMATIONDATA_BOOM
	.BYTE $A0, $0A, $02, $10

	.DWORD ANIMATIONDATA_ZOMBIES
	.BYTE $40, $00, $03, $08

.IF .DEFINED(JPN) || .DEFINED(PROTOTYPE19950327)
	.DWORD ANIMATIONDATA_THE_END
	.BYTE $10, $02, $01, $08
.ELSE
	.DWORD ANIMATIONDATA_THE_END
	.BYTE $20, $01, $02, $08
.ENDIF
