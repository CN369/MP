;16-bit largest number in an array of n numbers using 8086 emulator.
MOV CL,04H    ;initializing the counter register CL to 4
MOV SI,0200H  ;moving the SI(source index register) pointer to the first location i.e; 0200H 
MOV AX,[SI]   ;storing the first number in AX register using SI
L1:INC SI     ;initiating a loop L1
INC SI        ;incrementing the SI
CMP AX,[SI]   ;comparing the element stored in AX register with the element in the location pointed by SI
JNB L2        ;if the element stored is greater than the number stored in AX register
MOV AX,[SI]   ;storing the element pointed by SI in AX register
L2:DEC CL     ;initiating a loop L2
JNZ L1        
MOV DI,020AH  ;moving the DI pointer to 020AH where our result is stored.
MOV [DI],AX   ;moving the result from the AX register to destination using DI
