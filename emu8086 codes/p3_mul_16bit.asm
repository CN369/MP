; 16-bit Multiplication
MOV AX,[3000H]    ; Load AX with content of memory location 3000
MOV BX,[3002H]    ; Load BX with content of memory location 3002
MUL BX            ; 16 bit multiplication of AX with BX
MOV [3004H],AX    ; Load content of AX to the memory location 3004
MOV AX,DX         ; Take the DX to AX
MOV [3006H],AX    ; Store 16 bit higher bit at memory locatain 3006
HLT               ; Halt emulator