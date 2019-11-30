include irvine32.inc

.data
    arr byte 1,11,2
    sum byte ?

.code
    main proc
    xor eax, eax
    mov esi, OFFSET arr
    mov ecx, sizeof arr
    ; mov eax, 0

    L1:
        add al, [esi]
        inc esi
        loop L1

        ; mov eax, edi
        
        call writedec
    call dumpregs

    exit
    main endp
    end main