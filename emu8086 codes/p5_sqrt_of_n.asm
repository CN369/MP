MOV AX, [0500H]     ;move data at 500 offset to Accumulator
MOV CX, 0000H       ;move 0000H to CX register, CX will be used to store loop count
MOV BX, 0FFFFH      ;move FFFFH to BX register
LOOP: ADD BX, 02H   ;add 02H to data in BX register
INC CX              ;increment data in CX register, CX is being used to store loop count
SUB AX, BX          ;subtract data in BX register from data in accumulator
JGE LOOP            ;jump to loop if data in accumulator is greater than equal to data in BX register
SUB CX, 01H         ;decrease data in CX register by 1 as loop ran one time more than the actual square root value or when negative value was detected in accumulator
MOV [0510H], CX     ;move data in CX register to 0510H offset
HLT                 ;halt the emulator
                       
; AX = n
; CX = 0
; BX = FFFF So FFFF + 2 = 1 
; while(AX >= BX)    
;    BX += 2
;    CX ++ 
;    AX -= BX
; CX--
