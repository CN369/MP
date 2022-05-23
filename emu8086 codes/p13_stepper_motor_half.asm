# start = stepper_motor.exe #

JMP start

datcw db 0000-0011b
      db 0000-0110b 
      db 0000-1100b
      db 0000-1001b
    
start: MOV BX, offset datcw
       MOV SI, 0
      
NEXT_STEP: 
WAIT: IN AL, 07H
      TEST AL, 10000000b
      JZ WAIT 
      MOV AL, [BX][SI]
      OUT 7,AL
      INC SI
      CMP SI, 4
      JC NEXT_STEP
      MOV SI, 0
      JMP NEXT_STEP


