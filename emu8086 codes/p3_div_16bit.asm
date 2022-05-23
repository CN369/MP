; 16-bit Division
MOV AX,[3000H]    ; Load AX with content of memory location 3000
MOV BX,[3002H]    ; Load BX with content of memory location 3002
DIV BX            ; 16  bit Division Ax with BX
MOV [3004H],AX    ; AX register stores value of quotient 
MOV [3006H],DX    ; DX register stores value of Remainder.
HLT               ; Halt emulator