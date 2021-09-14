INCLUDE Irvine32.inc

.data
Popup BYTE "Enter 3x3 MAtrix With '9' Entries :  ", 0
arr BYTE 10 DUP(0) 

;arr byte 1h, 1h, 1h, 1h, 2h, 0h, 1h, 0h, 5h 
arr1 byte 9 DUP (?)

String1 BYTE "Matrix Is Symytric ", 0
String2 BYTE "Matrix Is Not Symytric ", 0


.code
main PROC
 
 mov edx, OFFSET Popup
 mov ecx, SIZEOF Popup
 call WriteString

 mov edx, OFFSET arr
 mov ecx, SIZEOF arr
 call ReadString

 ; Program For Symytry Check !!
 
call Transpose
call comparison

mov edx, OFFSET String1
call WriteString
exit


main ENDP



comparison PROC 

mov eax , 0 
mov ebx , 0
mov esi , 0
mov edx , 0
mov ecx , 9     ;  SIZEOF arr

L2: 
	mov dl , [arr+eax]  ; Array 1
	mov bl , [arr1+eax] ; Array 2
	inc eax 

	cmp dl , bl 
	je J1

	jmp J3
	
	J1:
		mov esi , 1
		jmp endpoint


	J3:
		mov edx, OFFSET String2
		call WriteString
		exit

endpoint:
loop L2
ret
comparison ENDP


Transpose PROC

mov eax , 0  ; i 
mov ebx , 0
mov esi , 0
mov ecx , 3

L1 :
	mov dl , [arr+eax]
	mov [arr1+ebx] , dl
	add eax , 3
	inc ebx 

	mov dl , [arr+eax]
	mov [arr1+ebx] , dl
	add eax , 3
	inc ebx

	mov dl , [arr+eax]
	mov [arr1+ebx] , dl

	inc esi 
	mov eax , 0
	add eax , esi
	inc ebx

loop L1
ret
Transpose ENDP

exit
END main