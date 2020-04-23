ASSUME CS:CODE, DS:DATA

DATA SEGMENT
ORG 3000H
NUM1 DD -32768
NUM2 DW 16384
RES DW 2 DUP(0)
DATA ENDS

CODE SEGMENT
START:    MOV AX, DATA
          MOV DS, AX
          LEA SI, NUM1
          MOV AX, [SI]
          MOV DX, [SI+2]
          IDIV NUM2
          MOV RES, AX
          MOV RES+2, DX
          
          MOV AH, 4CH
          INT 21H
CODE ENDS
END START