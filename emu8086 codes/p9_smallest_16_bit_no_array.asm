MOV SI,1100H  ; Initializing SI register 
MOV DI,1200H ; Initializing DI register
MOV CL,[SI] ; Initializing CL register with SI register value denoting number of elements 
INC SI ; Incrementing SI 
MOV AH,[SI] ; Storing higher 8 bit value of SI at AH register
INC SI ; Incrementing SI 
MOV AL,[SI] ; Storing lower 8 bit value of SI at AL register 
DEC CL ; Decreasing CL register value since one element has been stored
LOOP: ; Entering loop
INC SI ; Incrementing SI 
MOV BH,[SI] ; Storing higher 8 bit value of SI at BH register 
INC SI ; Incrementing SI 
MOV BL,[SI] ; Storing lower 8 bit value of SI at BL register 
CMP AX,BX ; Checking if AX< BX 
JC AHEAD ; Jump to AHEAD label if true and carry is generated, CF=1
MOV AX,BX; If false, then BX is stored in AX
AHEAD: 
DEC CL ;  Decreasing CL register value as element has been checked
JNZ LOOP ; If CL register value is not zero , then go to LOOP 
MOV [DI],AH ; Storing AH register value in higher 8 bit value of DI register
INC DI ; Incrementing DI register
MOV [DI],AL ; Storing AL register in lower 8 bit value of DI register
HLT ; End of program
