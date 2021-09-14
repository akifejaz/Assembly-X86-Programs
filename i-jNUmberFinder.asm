INCLUDE Irvine32.inc


.data
A BYTE "Enter i index  ", 0
B BYTE "Enter j index " , 0

;arr byte   161d,162d, 163d, 164d, 177d, 178d, 179d,180d, 193d, 194d,195d, 196d
C1 BYTE "Enter 3*3 Values total 9 : ", 0
arr byte 10 dup (?)

i  byte ?
j  byte ?
temp byte ?

.code
main PROC
mov edx , 0
mov edx, offset  C1
call WriteString


mov esi , offset arr
mov edx , offset arr
mov ecx , 9
mov edi , 0

Loop1:

call ReadInt
mov [esi+edi] , al
inc edi 

loop Loop1

mov edx, offset  A
call WriteString

mov eax , 0 
call ReadInt  
mov i, al

mov edx, offset  B
call WriteString

call ReadInt  
mov j , al


mov al , i
mov dl , 3
MUL dl 
add al , j
mov dl , [arr+eax]

mov  temp , dl

MOV ESI, OFFSET temp
MOV ECX,LENGTHOF temp
MOV EBX , TYPE temp
call DumpMem


exit
main ENDP
END main