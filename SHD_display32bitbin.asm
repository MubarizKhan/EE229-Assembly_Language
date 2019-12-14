include irvine32.inc 

.data
    binvalue dword 1234abcdh
    buffer byte 32 dup(0), 0

.code
    main proc
    ;buffer byte 32 dup(0), 0
    mov eax, binvalue
    mov ecx, 32

    mov esi, offset buffer
    L1:
        shl eax, 1
        mov byte ptr [esi], '0'
        jnc l2
        mov byte ptr[esi], '1'
    L2:
        inc esi
    loop L1

    mov edx, offset buffer
    ; call writebin ;0001 0010 0011 0100 1010 1011 1100 1101
    call writestring
    call crlf

    exit
    main endp
    end main


