; Sorting an integer array in ascending order
MOV SI,1200h ; Loading the number of elements in SI
MOV CL,[SI] ; Loading the number of elements in CL
DEC CL ; For n elements, we need n-1 passes
LOOP3:
MOV SI,1200h ; Loading the number of elements in SI
MOV CH,[SI] ; Loading the number of elements in CH
DEC CH ; For each pass, we reduce one comparison
INC SI ; Point SI to the first array element
LOOP2:
MOV AL,[SI] ; Loading the array element of SI in AL
INC SI ; SI points to the next element
CMP AL,[SI] ;Compare the values in AL and [SI]
JC LOOP1 ; If the carry flag is 1 jump to Loop1
XCHG AL,[SI] ; Otherwise exchange the values in AL and SI
XCHG [SI-1],AL
LOOP1:
DEC CH ;Decrement CH
JNZ LOOP2 ;Jump to loop2 if CH!=0
DEC CL ;Decrement CL
JNZ LOOP3 ;Jump to loop3 if CL!=0
HLT
