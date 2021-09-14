; 1.	Define a byte array in your code as: arrayB BYTE 10h, 20h, 30h. Add the three bytes in the array and ;  save the result at the fourth place in arrayB after the last element 30h. Paste screenshot of your code and the ;  Memory window at the end of the execution of your code, showing that the sum has been successfully placed at ;  the fourth memory place:

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

.data
arrayD  byte 10h, 20h, 30h 
sizearrayD = ($-arrayD)

.code
main PROC

mov al , arrayD
add al , [arrayD +1]
add al , [arrayD +2]
mov [arrayD +3] , al

 INVOKE ExitProcess,0
 main ENDP
 END main
