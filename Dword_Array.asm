; 1.	Define a double word array in your code as: arrayD DWORD 10h, 20h, 30h. Now add the three double   ;  words in this array and save the result at the fourth place in arrayD after the last element 30h. Note that, this ;  time, a displacement of 4 must be added to ESI, or any other register that you are using to index, as it points to ;  each subsequent array value because double words are 4 bytes long. Paste here the screenshots of code and ;  Memory window showing the final result:

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

.data
arrayD  dword 10h, 20h, 30h 
sizearrayD = ($-dword)

.code
main PROC

mov eax , arrayD
add eax , [arrayD +4]
add eax , [arrayD +8]
mov [arrayD +12] , eax

 INVOKE ExitProcess,0
 main ENDP
 END main
