MOV R0,#15H; Set the 15H as the Source Address to point at the Operand address
MOV R1,#20H  ;Set the 20H as the Destination address to store the result
MOV A,@R0;  Take the first operand stored at 15H into Register A
MOV R5,A; 
MOV R4,#00H; Clear register R4 to store carry
INC R0; Point to the next location
MOV A,@R0; take the value from source to register A
ADD A,R5;Add R5 with A and store to register A
JNC SAVE
INC R4; Increment R4 to get carry
MOV B,R4;Get carry to register B
MOV @R1,B; Store the carry first at 20H
INC R1; Increase R1 to point to the next address
SAVE:   MOV @R1,A;Store the result at the destination address 21H
HALT:   SJMP HALT ;Stop the program
END
