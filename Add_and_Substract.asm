; 3.	Write a program to do the following:
;	a.	Move integer 16000h to the register EAX.
;	b.	Move integer 32000h in the register EBX.
;	c.	Subtract EAX from EBX and store the result in ECX. Make sure to keep the contents of EAX ;	and EBX intact at this point.
;	d.	Now, take the two’s complement of EAX. 
;	e.	Add EAX and EBX and store the result in EDX.
;	f.	Compare the contents of ECX and EDX.

;---------------------------------------------------------------------
 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

 .code
 main PROC
mov eax , 16000h	; a. Move integer 16000h to the register EAX.

mov ebx,  32000h	; b. Move integer 32000h in the register EBX

mov ecx,ebx			; moving ebx to ecx 
sub ecx,eax			; subtracting as (ecx-eax)

neg eax				; the two’s complement of EAX.

mov edx, eax		; moving eax to edx
add edx , ebx		; Add EAX and EBX and store the result in EDX.



 INVOKE ExitProcess,0
 main ENDP
 END main
