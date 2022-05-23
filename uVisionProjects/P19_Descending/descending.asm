ORG 0000H
MOV R7,#04H; Loading R7 with 04 because for 5 numbers we require 4, i.e, 5-1 passes
MAIN: MOV R0,#30H; Loading R0 with 30 (source location address)
MOV R6,#04H; Loading R6 with 04 because for each iteration we need 4 passes
UP: MOV A,@R0; Storing content at address of R0 in accumulator
INC R0 ;incrementing R0 by 1 to get next address
MOV B,@R0 ;Storing content at address of R0 in register B
CJNE A,B,NEXT ; Comparing two datas (A-B)
NEXT: JNC NOEXCHANGE; If A>B, no carry is generated, no exchange is needed, jumping to label NOEXCHANGE
MOV @R0,A;If A<B move accumulator content to address of R0
DEC R0;Decrementing R0 by 1
MOV @R0,B;Storing content of register B in address of R0
INC R0;Incrementing R0
NOEXCHANGE: DJNZ R6,UP; Decrement R6, if not equal to 0, jump to UP
DJNZ R7,MAIN; Decrement R7, if not equal to 0, Jump to label MAIN
SJMP $
END