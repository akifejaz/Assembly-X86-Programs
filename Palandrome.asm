INCLUDE Irvine32.inc

.data
Popup BYTE "Please enter a string of maximum 20 characters: ", 0
arr BYTE 21 DUP(0) 
String1 BYTE "String is Palindrome.", 0
String2 BYTE "String is not Palindrome.", 0
byteCount DWORD ?

.code
main PROC
 
 mov edx, OFFSET Popup
 mov ecx,SIZEOF Popup
 call WriteString
 mov edx, OFFSET arr
 mov ecx,SIZEOF arr
 call ReadString
 mov byteCount, eax
 mov esi, OFFSET arr
 dec eax
 add esi, eax
 call program_proc

 mov eax, 0

main ENDP

 program_proc PROC

 L3:
 cmp esi, edx
 jl L2

 mov bx,[edx] 
 mov cx, [esi]
 
 cmp cl,bl
 jne L1

 inc edx
 dec esi
 jmp L3
 
 L2:
 mov edx, OFFSET String1
 call WriteString
 jmp E1
 
 L1:
 mov edx, OFFSET String2
 call WriteString
 jmp E1

 E1:
 program_proc ENDP

exit
END main