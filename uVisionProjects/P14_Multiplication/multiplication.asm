MOV R0, #15H  ; set the 15H as the source address to fetch operand
MOV R1, #20H  ; set the 20H as the address to store the result

MOV A, @R0   ; take the first operand and move to the register A
INC R0; Increment the pointer by 1 to fetch the second operand
MOV B,@R0;  ;Mov the second operand into B register
MUL AB ;Multiply A and B
MOV @R1, B; Store higher order byte to 20H
INC R1; Increase R1 to point to the next location i.e. 21H
MOV @R1, A;Store lower order byte at 21H
HALT:   SJMP HALT ; Stop the program
END ; end program
