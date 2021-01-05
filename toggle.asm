//flips the colour of the screen (from black to white or white to black), every time a keypress is released.
//@Screen location at memory location 0
//keyboard check - jump to black if key pressed, else jmp to white
//black set to -1, white set to 0
//check value set to -1/0 
//get address of pixel to fill, and fill it.
//fill next pixel
//exit loop if full

(LOOP)

@SCREEN
D=A
@R0
M=D

@KBD //read the contents of RAM[24576](keyboard).
D=M
@setB
D; JGT //if D is greater than 1 it means a key was pressed.
@setW
D; JEQ //if D is equal to 1 it means no key was pressed.

(setB)
@R1
M=-1
D=M

@R0
A=M
M=D

@R0
D=M+1
@KBD
D=A-D

@R0
M=M+1
A=M



@setB
D;JGT

@LOOP
0;JMP

(setW)
@R1
M=0
D=M

@R0
A=M
M=D

@R0
D=M+1
@KBD
D=A-D

@R0
M=M+1
A=M


@setW
D;JGT

@LOOP
0;JMP

@LOOP
0;JMP
