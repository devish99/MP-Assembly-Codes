MVI C,09
MOV B,C
LOOP0: LXI H,3000
LOOP1: MOV A,M
INX H
CMP M
JNC LOOP2
JMP LOOP3

LOOP2: MOV D,M
MOV M,A
DCX H
MOV M,D
INX H

LOOP3: DCR C
JNZ LOOP1
DCR B
JZ HALT
JMP LOOP0

HALT: HLT
 
# ORG 3000
#DB 05,02,03,0A,01,06,04,09,FF,07
