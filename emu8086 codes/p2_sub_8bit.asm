; 8-bit Subtraction with borrow
MOV AL,[0500H]  ; Loading first number in AL
MOV BL,[0501H]  ; Loading second number in BL
SUB AL,BL       ; AL<-AL-BL
MOV [0502H],AL  ; Storing result in [0502H]
MOV AL,00H      ; AL<-00H Clearing accumulator
ADC AL,AL       ; Get value of borrow i.e., AL<-AL+AL+Cy
MOV [0503H],AL  ; Store borrow value in [0503H]
HLT             ; Halt emulator
