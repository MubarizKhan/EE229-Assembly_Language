include irvine32.inc

.data
    dwordVal dword 11,12,13,14
    

.code
main proc

call dumpregs
push esi		; push registers
push ecx
push ebx

call dumpregs

mov  esi,OFFSET dwordVal 		; display some memory
mov  ecx,LENGTHOF dwordVal
mov  ebx,TYPE dwordVal
call DumpMem
call dumpregs

pop ebx		; restore registers
pop ecx
pop esi


exit
main endp
end main