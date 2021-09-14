
 ; AddTwo.asm - adds two 32-bit integers
 ; Chapter 3 example

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

.data
MEM1  byte   0AAH  ;byte by the names MEM1, MEM2, MEM3 and MEM4
MEM2  byte	 11H
MEM3  byte   0FFH
MEM4  byte   00H

.code
main PROC
       

mov al , MEM2          ; MEM1 = MEM2 + MEM3
add al , MEM3
mov MEM1 , al

mov bl , MEM1
xor bl , MEM2          ; MEM2 = XOR (MEM1, MEM2)
mov MEM2 , bl

mov cl , MEM4
sub cl , MEM3          ; MEM3 = MEM4 – MEM3
mov MEM3 , cl

mov dl, MEM2           ;MEM4 = AND (MEM1, ~MEM2)
neg dl
and dl , MEM1
mov MEM4 , dl


 INVOKE ExitProcess,0
 main ENDP
 END main
