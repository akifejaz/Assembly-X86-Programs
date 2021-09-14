; 3.	In the last lab, you performed a tedious procedure to implement array reversal. In this task you are ;  required to reverse the following array using a loop.
;  My_Arr DWORD 1, 2, 3, 4, 5
;  Note that this array is a DWORD (4 bytes for each element in My_Arr). So you will have to cater to this ;  accordingly in your code. Paste code and screenshot of Memory window showing the final result:


 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

.data
My_Arr DWORD 1, 2, 3, 4, 5
reverse_arr DWORD 5 dup(0)


.code
main PROC
; ecx ->> 4 3 2 1 0
; ebx ->> 0 1 2 3 4

mov ebx , 16  
mov eax , 0
mov ecx, LENGTHOF My_Arr
loop1:
mov edx, [My_Arr + ebx ]
mov [reverse_arr + eax] , edx

sub ebx , 4
add eax , 4
loop loop1



 INVOKE ExitProcess,0
 main ENDP
 END main
