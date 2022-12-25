// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(BLCACKENSLOOP)
@24576  // keyboard
D=M
@CLEARLOOP
D;JEQ
@24575  // Screen End
D=M
@BLCACKENSLOOP
D;JLT
@i
D=M  // D=i
@SCREEN  // Screen
D=A+D  // D=@screen + i
A=D
M=-1  // fill pixels
@i
M=M+1  // i=i+1
@BLCACKENSLOOP
0;JMP

(CLEARLOOP)
@24576  // keyboard
D=M
@BLCACKENSLOOP
D;JGT  // key pressed, jump to blacken
@i
D=M  // D=i
@SCREEN
D=A+D  // D=@screen+i
A=D
M=0
@i
M=M-1
@CLEARLOOP
0;JMP