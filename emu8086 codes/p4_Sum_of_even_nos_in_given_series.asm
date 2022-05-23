MOV SI, 200H  ; assign 200H to SI(source index register)
MOV CL, [SI]  ; load data from offset SI to register CL   CL<-memory[SI]
INC SI        ; increase value of SI by 1
MOV CH, 00H   ; assign 00H to register CH    CH<-00
MOV AL, 00H   ; assign 00H to register AL    Al<-00
L1: MOV BL, [SI]  ; load data from offset    BL<-memory[SI]
TEST BL, 01H      ; AND register BL with 01H , because every even number when AND with 01 it will be 0 always
JNZ SKIP          ; jump if non zero to the label SKIP
ADD AL, BL        ; Al<-AL+BL addition operation,add contents of register AL abd BL, result will be updated to AL
SKIP: INC SI      ; increase value of SI by 1
LOOP L1           ; iterate the loop labelled as L1
MOV [300H], AL    ; store the value of register AL to offset 300H
HLT           ; end the emulator 
 
   
; SI the pointer initially pointing to the number of elements in the array 
; CL = [SI]  
; SI++ now it poins to the starting location of the array
; CH = 0
; AL = 0
; BL = [SI]  
; TEST if BL is even
; if even AL = AL + BL     
; SI++ point to the next address  
; Answer is in AL

