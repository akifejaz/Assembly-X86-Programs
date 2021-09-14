; AddTwo.asm - adds two 32-bit integers
; Chapter 3 example
 INCLUDE Irvine32.inc

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD



.data
my_arr word 1, 3, 5, 7, 9
Factorial_arr word 5 dup (?) ; 16 bits

.code
main PROC

mov ebp , 0
call factorial_proc


 INVOKE ExitProcess,0
 main ENDP


factorial_proc PROC uses eax edx ecx ebx

mov ecx , LENGTHOF my_arr

loop1:
mov ax , [my_arr+ebp]  ; 16 
mov edx , 0
mov bx , [my_arr+ebp] 

MUL ebx
	push eax 
	mov  sp , 4
	mov eax , 2

	div sp 	    ; "ah" will be 1 for even
	cmp ah , 1              ; compare with 1 reminder
	jz L1		            ; jump if ZF = 1
		pop eax
		mov [Factorial_arr + ebp] , ax
	L1:
	pop eax
	inc bx
	add ebp , 2
loop loop1

ret
factorial_proc ENDP

 END main