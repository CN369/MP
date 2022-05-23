;To find the average of n numbers
MOV SI,0500H	;Source Index
MOV DI,0510H	;Destination Address
MOV AX,0000H	;Accu. Initialization
MOV CL,[SI]	;Storing the contents of SI (Number of elements in the series)into CL
MOV BL,CL		;Create a copy of CL in BL
INC SI		;Increment the SI value to get the address of the first number in the        series
L1: ADD AL,[SI]	;LOOP STARTS Storing he sum of the elements in AL
ADC AH,00		;CARRY is stored in AH
INC SI		;Increment the SI value to get the address of the next number in the series
DEC CL		;Decrease CL (remaining elements )
JNZ L1		;Loop Checking : If the Zero flag is 1 , the loop will terminate
DIV BL		;Dividing the sum of elements by the number of elements
MOV [DI],AX	;Storing the final result In destination address
HLT 			;End of Program