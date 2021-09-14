INCLUDE Irvine32.inc

.data
Arr1 byte 1h,2h,3h
Arr2 byte 20h,21h,22h
Arr3 byte 3 DUP(?)

.code
main PROC

mov ecx, LENGTHOF Arr3
mov ebp, OFFSET Arr1
mov edi, OFFSET Arr2
mov esi, OFFSET Arr3

Loop1:

	mov bl, [ebp]
	mov dl, [edi]
	add bl, dl
	mov [esi], bl

	add ebp, 1
	add edi, 1
	add esi, 1

loop Loop1

mov esi, OFFSET Arr3
mov ecx, LENGTHOF Arr3
mov ebx, TYPE Arr3
call DumpMem

exit
main ENDP
END main