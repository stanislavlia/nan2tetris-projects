
//Pseudocode
//
// if r0 == 0 or r1 == 0:       
//      END
// 
//
//
//
//

//set result zero initially
@R2
M=0

//if R0 == 0; go to END
@R0
D=M
@END
D;JEQ

//if R1 == 0; go to END
@R1
D=M
@END
D;JEQ



//set i to 1st multiplier
@R0
D=M
@R3
M=D


(LOOP)

//read 2nd multiplier
@R1
D=M

//accumulate in R2
@R2
M=D+M

//decrement i
@R3
M=M-1
D=M //remember current i

@LOOP
D;JGT //go to LOOP if i > 0

(END)
@END
0;JMP //use JMP at the end by convention

