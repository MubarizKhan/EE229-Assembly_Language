include irvine32.inc

.data 
    count Dword ?
.code
main PROC

    xor eax, eax
    call dumpregs


    mov ecx, 100

    L1:
        mov count, ecx
        mov ecx, 20

        L2:
            inc ax
        loop L2

        mov ecx, count
    loop L1

    call dumpregs


exit
main endp
end main