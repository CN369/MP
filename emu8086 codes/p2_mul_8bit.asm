; 8-bit Multiplication
MOV AL,[0500H] ; Loading first number in AL
MOV BL,[0501H] ; Loading first number in BL
MUL BL         ; AX<-AL*BL
MOV [0502H],AX ; Storing result in [0502H]
HLT            ; Halt emulator
