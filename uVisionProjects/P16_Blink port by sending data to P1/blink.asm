ORG 0H
MOV A,#55H
AGAIN:
MOV P1,A
ACALL DELAY
MOV A,#0AAH
MOV P1,A
SJMP AGAIN
;---time delay-----
DELAY: MOV R2,#50
AGAIN1: MOV R3,#50
HERE: NOP
NOP
DJNZ R3,HERE
DJNZ R2,AGAIN1
RET
END