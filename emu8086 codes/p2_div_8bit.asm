; 8-bit Division
; 16-bit number divided by 8-bit number
MOV AX,[0500H]	; Load Dividend in AX
MOV BL,[0503H]	; Load Divisor in BL
DIV BL		    ; Divide AX/BL -> Quotient: AL, Remainder: AH
MOV [0504H],AX	; Store result in [0504H]
HLT			    ; Halt emulator