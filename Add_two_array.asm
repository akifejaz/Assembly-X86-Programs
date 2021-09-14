; 2.  Define three arrays as follows:
;	Arr1 byte 11h, 22h, 33h, 44h, 55h
;	Arr2 byte 66h, 77h, 88h, 99h, 0AAh
;	Arr3 byte 5 DUP(?)
;  Now, add corresponding elements of Arr1 and Arr2 and store the result of each addition at the respective indices ;  in Arr3. First, find the size of one of these arrays by using the $ operator. Then, load the size in ecx register and ;  use a loop to perform the element-wise addition. Paste your code and screenshot of Memory window showing ;  Arr3 in the space below:
;------------------------------------

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

.data
arr1 byte 11h, 22h, 33h, 44h, 55h
arr2 byte 66h, 77h, 88h, 99h, 0AAh
arr3 byte 5 DUP(?)
;size_arr1 = ($-arr1) ; f

.code
main PROC
; ecx ->> 5 4 3 2 1
; ebx ->> 0 1 2 3 4 5 

mov ebx, 0
mov ecx, LENGTHOF arr1

loop1:
mov al, [arr1+ebx]
add al , [arr2+ebx]
mov [arr3+ebx] , al
inc ebx
loop loop1



 INVOKE ExitProcess,0
 main ENDP
 END main
