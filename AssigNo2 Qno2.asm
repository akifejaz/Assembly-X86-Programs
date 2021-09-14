INCLUDE Irvine32.inc

.data
Arr1 DWORD 1h,2h,3h
Arr2 DWORD 20h,21h,22h
Arr3 DWORD 3 DUP(?)

.code
main PROC

mov ecx, LENGTHOF Arr3
mov ebp, OFFSET Arr1
mov edi, OFFSET Arr2
mov esi, OFFSET Arr3

Loop1:
	mov ebx, [ebp]
	mov edx, [edi]
	add ebx, edx
	mov [esi], ebx

	add ebp, 4
	add edi, 4
	add esi, 4

loop Loop1

mov esi, OFFSET Arr3
mov ecx, LENGTHOF Arr3
mov ebx, TYPE Arr3

call DumpMem
exit
main ENDP
END main