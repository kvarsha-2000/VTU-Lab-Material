.MODEL SMALL

PRINT MACRO NUM
	PUSH DX
	PUSH CX
	MOV BL,NUM
	MOV DL,BL
	MOV CL,4
	SHR DL,CL
	ADD DL,30H
	MOV AH,2
	INT 21H
	MOV DL,BL
	AND DL,0FH
	ADD DL,30H
	MOV AH,2
	INT 21H
	POP CX
	POP DX
	ENDM

.MODEL SMALL

.CODE
	MOV AH,02H
	INT 1AH
	PRINT CH
	MOV DL,':'
	MOV AH,2
	INT 21H
	PRINT DH
	MOV DL,' '
	MOV AH,2
	INT 21H
	MOV AH,04H
	INT 1AH
	PRINT DL
	MOV DL, '/'
	MOV AH,2
	INT 21H
	PRINT CH
	PRINT CL
	MOV AH,4CH
	INT 21H
	END
