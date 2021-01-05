//this program outputs the quotient (R3) of two values(R0, R1) and its remainder(R4).

@R0
D=M
@First
M=D

@R1
D=M
@Second
M=D

@R3
D=M
M=D

@n
M=0

//need to Subtract R1 from R0 until result is less than 0. Than we not it and +1.
(LOOP)
@First
D=M
M=D
@SetR3
D; JLT //R0 less than 0

@Second
D=D-M //D = R0 - R1
@n
M=M+1

@First
M=D

@LOOP	
0;JMP

(SetR3)
@n
D=M
@R3
M=D-1
//M=!D
//M=M+1

//need to multiply R1 to itself R3 times.

@n
M=D-1

@addedValue
(SecondLoop)
@n
D=M
@SetR4
D; JEQ



@R3
D=D-1
@n
M=D

@R4
D=M
@R1
D=D-M
@R4
M=D

@SecondLoop
0;JMP
(SetR4)//from this point we need to subtract R4 from R0 to get remainder
@R4
M=!M
M=M+1
@R0
D=M
@R4
D=D-M
@R4
M=D

(END)
@END
0;JMP