



(LOOP)
//locate screen memory map
@SCREEN
D=A


@RESETLOOP
//remember base address of screen in @address variable
@address
M=D

(LOOPIN)


//what value to put in screen register (-1 or 0)
@KBD  //read keyboard
D=M

@SETBLACK //set zero if key pressed, GO TO BLACK
D;JNE

//otherwise go to to SETWHITE
(SETWHITE)
@R1
M=0

@PAINT //go to loop paint, jump over setblack
0;JEQ

(SETBLACK)
@R1
M=-1



(PAINT)
@R1 //check what value to set
D=M

@address
A=M
M=D //set to black
@address
M=M+1 //increment screen pointer
D=M

//check if we past the screen, then go to loop
@KBD
D=D-A
@LOOP
D;JEQ



@LOOPIN
0;JEQ // GOTO LOOPIN

(END)
@END
0;JMP //use JMP at the end by convention

