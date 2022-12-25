// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
@i
M=1  // i=1
@sum
M=0  // sum=0
(LOOP)
@sum
D=M  // D=sum
@2
M=D  // R2=sum
@i
D=M  // D=i
@1
D=D-M  // D=i-R1
@END
D;JGT  // if(i-R1>0) goto END
@0
D=M  // D=R0
@sum
M=M+D  // sum=sum+R0
@i
M=M+1  // i = i+1
@LOOP
0;JMP  // goto LOOP
(END)
@END
0;JMP
