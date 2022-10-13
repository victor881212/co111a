// forever
//   arr = SCREEN
//   n = 8192
//   i = 0
//   while (i < n) {
//     if (*KBD != 0)
//       arr[i] = -1
//     else
//       arr[i] = 0
//     i = i + 1
//   }
// goto forever;
// arr=SCREEN
// n=8192
// FOREVER:
// loop:
//      if (i==n) go to ENDLOOP
//      if (*KBD !=0)
//          RAM[arr+i] = -1
//      else
//          RAM[arr+i] = 0
//      i++
//goto loop
//ENDLOOP:
//goto FOREVER
//--------
(FOREVER)
@screen
D=A
@arr
M=D

@8192
D=A
@n
M=D
@i
M=0
(LOOP)
@i
D=M
@n
D=D-M
@ENDLOOP
D;JEQ
@KBD
D=M
@ELSE
D; JEQ

@arr
D=M
@i
A=D+M
M=-1

@ENDIF
0; JMP
(ELSE)
@arr
D=M
@i
A=D+M
M=0

(ENDIF)
@i
M=M+1

@LOOP
0;JMP
(ENDLOOP)
@FOREVER
0;JMP