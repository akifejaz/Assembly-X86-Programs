; 4.	Write a program that uses a loop to store the first 10 values of the Fibonacci number sequence in a byte ; array called Fib_Sequence. The Fibonacci sequence is described by this formula: Fib(1) = 1, Fib(2) = 1, Fib(n) = Fib;  (n-1) + Fib(n-2). Paste code and screenshot of final result here

 .386
 .model flat,stdcall
 .stack 4096
 ExitProcess PROTO, dwExitCode:DWORD

.data

Feb_Series byte 10 dup(0)


.code
main PROC

mov [Feb_Series] , 0
mov [Feb_Series+1] , 1
mov [Feb_Series+2] , 1

      ; nextTerm = t1 + t2;  // 1  -->> 1+1 -->> 2
      ; t1 = t2;             
      ; t2 = nextTerm; 
    
mov al ,  1  ; lower 
mov ah ,  1  ; higher 
mov ebx , 3
mov dl ,  0 
mov ecx , 8  ; times loop should run ! 

loop1: 
add dl , al                  ; al = t1 dl = nextterm ah = t2
add dl , ah                  ; added lower and higher bits
mov [Feb_Series + ebx] , dl 

mov al , ah
mov ah , dl
inc ebx
mov dl , 0
loop loop1



 INVOKE ExitProcess,0
 main ENDP
 END main
