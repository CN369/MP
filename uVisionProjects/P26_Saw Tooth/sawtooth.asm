		ORG 0000H

		MOV A, #00H
BACK: 	MOV P2, A
		ACALL DELAY 
		INC A
		ACALL DELAY
		SJMP BACK

DELAY: 
			MOV R0, #255
	HERE1: 	MOV R1, #255
	HERE:  	DJNZ R1, HERE
			DJNZ R0, HERE1
			RET
END