
UNKNOWN_C44963:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT32
	STACK_RESERVE_PARAM_INT16
	END_STACK_VARS
	CMP #1
	BEQ @LOAD_VRAM1
	CMP #0
	BEQ @LOAD_VRAM2
	CMP #2
	BEQL @LOAD_VRAM3
	JMP @RETURN
@LOAD_VRAM1:
	COPY_TO_VRAM1 BUFFER + $2000, VRAM::TEXT_LAYER_TILES + $1000, $1800, 0
@LOAD_VRAM2:
	COPY_TO_VRAM1 BUFFER, VRAM::TEXT_LAYER_TILES + 0, $450, 0
	COPY_TO_VRAM1 BUFFER + $4F0, VRAM::TEXT_LAYER_TILES + $278, $60, 0
	COPY_TO_VRAM1 BUFFER + $5F0, VRAM::TEXT_LAYER_TILES + $2F8, $B0, 0
	COPY_TO_VRAM1 BUFFER + $700, VRAM::TEXT_LAYER_TILES + $380, $A0, 0
	COPY_TO_VRAM1 BUFFER + $800, VRAM::TEXT_LAYER_TILES + $400, $10, 0
	COPY_TO_VRAM1 BUFFER + $900, VRAM::TEXT_LAYER_TILES + $480, $10, 0
	JMP @RETURN
@LOAD_VRAM3:
	COPY_TO_VRAM3 BUFFER, VRAM::TEXT_LAYER_TILES + 0, $450, 0
	COPY_TO_VRAM3 BUFFER + $4F0, VRAM::TEXT_LAYER_TILES + $278, $60, 0
	COPY_TO_VRAM3 BUFFER + $5F0, VRAM::TEXT_LAYER_TILES + $2F8, $B0, 0
	COPY_TO_VRAM3 BUFFER + $700, VRAM::TEXT_LAYER_TILES + $380, $A0, 0
	COPY_TO_VRAM3 BUFFER + $800, VRAM::TEXT_LAYER_TILES + $400, $10, 0
	COPY_TO_VRAM3 BUFFER + $900, VRAM::TEXT_LAYER_TILES + $480, $10, 0
	COPY_TO_VRAM3 BUFFER + $2000, VRAM::TEXT_LAYER_TILES + $1000, $1800, 0
@RETURN:
	END_C_FUNCTION
