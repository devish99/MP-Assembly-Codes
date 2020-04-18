ASSUME CS:CODE, DS:DATA

DATA SEGMENT
	ORG 3000H
	NUM1 DW 3039H, 1A85H
	NUM2 DW 24F1H, 5FF8H
	RES DW 2 DUP(0)
DATA ENDS

CODE SEGMENT
START:	MOV AX, DATA
	MOV DS, AX

	MOV AX, NUM1
	MOV BX, NUM2
	SUB AX, BX
	MOV RES, AX

	MOV AX, NUM1+2
	MOV BX, NUM2+2
	SBB AX, BX
	MOV RES+2, AX
	MOV AH, 4CH
	INT 21H
CODE ENDS
END START