; 16 bit addition with or without carry 
MOV CX,0000            ; Initialise count register with 0000H
MOV AX,[3000H]         ; Load the first number into  AX
MOV BX,[3002H]        ; Load the second number into BX
ADD AX,BX              ; Add AX and BX and store into AX register 
JNC STORE              ; If CY=0,jump to store
INC CX                 ; Increase the count register
STORE: MOV [3004H] ,AX ; Store the AX into memory location 3004
  MOV [3006H],CX       ; Store the CX content into memory location 3006
HLT                    ; Halt emulator  