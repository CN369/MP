;Approach :->

;{2, 4, 1, 3, 5}

;pass 1: 
;{2, 4, 1, 3, 5} --> {4, 2, 1, 3, 5}
;{4, 2, 1, 3, 5} --> {4, 2, 1, 3, 5}
;{4, 2, 1, 3, 5} --> {4, 2, 3, 1, 5}
;{4, 2, 3, 1, 5} --> {4, 2, 3, 5, 1}

;pass 2:
;{4, 2, 3, 5, 1} --> {4, 2, 3, 5, 1}
;{4, 2, 3, 5, 1} --> {4, 3, 2, 5, 1}
;{4, 3, 2, 5, 1} --> {4, 3, 5, 2, 1}
;{4, 3, 5, 2, 1} --> {4, 3, 5, 2, 1}

;pass 3:
;{4, 3, 5, 2, 1} --> {4, 3, 5, 2, 1}
;{4, 3, 5, 2, 1} --> {4, 5, 3, 2, 1}
;{4, 5, 3, 2, 1} --> {4, 5, 3, 2, 1}
;{4, 5, 3, 2, 1} --> {4, 5, 3, 2, 1}

;pass 4:
;{4, 5, 3, 2, 1} --> {5, 4, 3, 2, 1}
;{5, 4, 3, 2, 1} --> {5, 4, 3, 2, 1}
;{5, 4, 3, 2, 1} --> {5, 4, 3, 2, 1}
;{5, 4, 3, 2, 1} --> {5, 4, 3, 2, 1}

;Commands Used :->

;1.MOV Dest,Src     -  to trasfer contents from source address to destination address  
;2.INC/DEC Address  -  to increase/decrease the contents of given address by 1
;3.JC/JNC LabelName -  to jump to the given label if carry flag is set and reset respectively
;4.JZ/JNZ LAbelName -  to jump to the given label if zero flag is set and reset respectively
;5.XCHG Add1,Add2   -  to exchange the contents of the given to addreses.

MOV SI,1200h       	    ; Loading the number of elements in SI
MOV CL, [SI]         	; Loading the number of elements in CL
DEC CL                 	; For n elements, we need n-1 passes
LOOP3:
MOV SI,1200h        	; Loading the number of elements in SI
MOV CH, [SI]        	; Loading the number of elements in CH
DEC CH                	; For each pass, we reduce one comparison
INC SI                 	; Point SI to the first array element
LOOP2: 
MOV AL, [SI]        	; Loading the array element of SI in AL
INC SI                  ; SI points to the next element
CMP AL, [SI]        	; Compare the values in AL and [SI]
JNC LOOP1         	    ; If the carry flag is 0 jump to Loop1
XCHG AL, [SI]      	    ; Otherwise exchange the values in AL and SI
XCHG [SI-1], AL
LOOP1: 
DEC CH             	    ; Decrement CH
JNZ LOOP2          	    ; Jump to loop2 if CH! =0
DEC CL             	    ; Decrement CL
JNZ LOOP3          	    ; Jump to loop3 if CL! =0
HLT                               

