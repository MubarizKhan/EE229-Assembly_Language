include irvine32.inc

.data
    buffer byte 21 Dup(0)
    byteCount dword ?

.code
    main proc
    mov edx, offset buffer
    mov ecx, sizeof buffer
    call readstring
    mov byteCount, eax
    ; call dumpregs
    ; call writestring
    exit
    main endp
    end main
    
