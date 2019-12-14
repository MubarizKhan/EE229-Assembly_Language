Include Irvine32.inc
.data
array dword 5 Dup(?)
array1 dword 5 Dup(?)
arraysum dword 5 Dup(?)
msg byte "Enter a value",0ah,0dh
.code

input proc
mov edx, OFFset msg
mov eax,0
mov ecx,5
mov esi,0

l1:
call writestring
call readint
mov array[esi],eax
add esi,4
loop l1
ret
input endp




input1 proc
mov edx, OFFset msg
mov eax,0
mov ecx,5
mov esi,0

l1:
call writestring
call readint
mov array1[esi],eax
add esi,4
loop l1
ret

input1 endp





sum proc

mov ecx,5

laa:

mov eax,[esi]
mov ebx,[edi]
add eax,ebx
call writedec
mov arraysum,eax
add arraysum,4
call crlf
add esi,4
add edi,4

loop laa

ret
sum endp




Main proc

call input

call crlf

call input1


xor eax,eax
xor ebx,ebx

mov esi,offset array
mov edi,offset array1

call sum
call crlf



exit 
Main endp
end main
