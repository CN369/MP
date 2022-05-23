; 16-bit Subtraction with borrow
MOV CX,0000             ; Initialise count register with 0000H
MOV AX,[3000H]          ; Load the first number into AX
MOV BX,[3002H]          ; Load the second number into BX 
SUB AX,BX               ; Subtract BX form AX and store into AX register 
JNC STORE               ; if CY=0,jump to store
INC CX                  ; Increase the count register
STORE: MOV [3004H],AX   ; Store the AX into memory location 3004
       MOV [3006H],CX   ; Stroe the CX content into memory location 3006
HLT;                    ; Halt emulator