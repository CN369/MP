;8051 program to move block of data from one memory location to another memory location.
ORG 0000H
MOV R0,#20H ;Initialize memory pointer for source
MOV R1,#38H ;Initialize memory pointer for destination
MOV R7,#05H ;Initialize counter
BACK : MOV A,@R0 ;Move content of source location into Accumulator
MOV @R1,A ;Move content of Accumulator to destination location
INC R0 ;Increment source memory pointer r0
INC R1 ;Increment destination memory pointer r1
DJNZ R7,BACK ;Decrement counter r7 and jump to label BACK if r7 is not 0
END
