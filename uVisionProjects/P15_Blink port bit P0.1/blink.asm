ORG 0000H
AGAIN:
MOV P0,#00h
CLR P0.1
CALL DELAY
SETB P0.1
CALL DELAY
SJMP AGAIN
DELAY:
MOV R0,#20H
RPT2: MOV R1,#70H
RPT1: DJNZ R1,RPT1
DJNZ R0,RPT2
RET
END