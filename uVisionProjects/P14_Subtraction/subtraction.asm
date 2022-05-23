MOV R0,#15H; Set 15H as the Source Address to fetch the Operands.
MOV R1,#20H; Set 20H as the Destination Address to store the result.

MOV A,@R0; From Source Move the first Operand to A register
MOV R5,A; Move the value from A to R5
MOV R4,#00H; Clear the Register R4

INC R0; Increase the value of R0 to point at new location
MOV A,@R0; From Source Move the second Operand to A register
MOV R3,A; store second byte
MOV A,R5; Get the first operand back into A register
SUBB A,R3; Subtract R3 from A
JNC SAVE
INC R4; Increment R4 to get borrow
MOV B,R4;Get borrow to register B
MOV @R1,B; Store the borrow first
INC R1; Increase R1 to point to the next address

SAVE:  MOV @R1,A; Store the result at destination address contained by R1
HALT:  SJMP HALT ;Stop the program
END ; End program
