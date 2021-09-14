INCLUDE Irvine32.inc


.data
A BYTE "Enter i index  ", 0
B BYTE "Enter j index " , 0

arr byte   161d,162d, 163d, 164d, 177d, 178d, 179d,180d, 193d, 194d,195d, 196d
i  byte ?
j  byte ?
temp byte ?

.code
main PROC

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
mov dl , 4
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