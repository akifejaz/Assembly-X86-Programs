
 ; AddTwo.asm - adds two 32-bit integers
 ; Chapter 3 example

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

 .code
 main PROC
MOV AL, 4CH ; 412
SUB AL, 3EH ; 314
XOR CX, CX  ;
MOV AL, 3AH
MOV CH, 0A9H
MOV AH, 0H
ADD CX, AX
ADD CL, AH
MOV BX, CX
NEG AX
ADD CX, AX
SUB BX, AX
CMP AX, BX
SUB AX, BX
OR AX, BX
AND AX, BX
CMP AX, BX


 INVOKE ExitProcess,0
 main ENDP
 END main
