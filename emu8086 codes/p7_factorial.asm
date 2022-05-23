;Program to Find Factorial of a number upto 8 

;We can not find factorial greater than 8 since from 9 factorial we have 362880 
;and 16 bit register AX can hold upto 65530 of data 

MOV CX,[400H]  ;Move the content of Memory Location 400 to CX Register [CX]<-[400H]

MOV AX,001H    ;Initialize AX with 1 [AX]<-01H

FACT:          ;Factorial loop to calculate factorial of a number

MUL CX         ;Multiply content of CX with AX  [AX]<-[CX]*[AX]
DEC CX         ;Decrement content of CX by 1    [CX]<-[CX]-1
CMP CX,000     ;Compare content of CX with zero if true then exit

JNE FACT       ;Repeat Until content of CX becomes zero

MOV 410H,AX    ;Store the calculated Result stored in accumulator to location 410h   [410h]<-[AX]
HLT