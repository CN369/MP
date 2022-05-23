; 8-bit Addition with carry
MOV AX,0200H ;store address 0200H in AX
MOV DS,AX ;save value of AX in DS
;DS will be Source Index
MOV AX,0300H ;store 0300H in AX
MOV ES,AX ;save value in ES
;ES will be Destination Index
;storing 5 different values at Starting Index
MOV DS:[0000],52H
MOV DS:[0001],74H
MOV DS:[0002],8AH
MOV DS:[0003],15H
MOV DS:[0004],6AH
MOV cx,5 ;saving cx variable with value 5
loop1: ;iterating the loop cx times
MOVSB ;using MOVSB for block transfer
LOOP loop1
;end loop  `
;MOVSB instruction is used to transfer bytes only from source memory location (MADS) to destination
;memory location (MAES).
