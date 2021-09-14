; 2 Write a program that subtracts three integers 4800h, 2000h and 1000h from 5000h successively. Use only 16-bit ; registers. Display the results of registers and flags during debugging and enter their values (only for the ones that ; change value; change in value is represented by a red color of that register/flag) before each line of code.
; --------------

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

 .code
 main PROC
mov bx,5000h 
sub bx,4800h 
sub bx,2000h 
sub bx,1000h 



 INVOKE ExitProcess,0
 main ENDP
 END main
