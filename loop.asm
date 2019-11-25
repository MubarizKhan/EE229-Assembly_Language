include irvine32.inc

.code
    main PROC
        xor eax, eax
        mov ax, 100
        mov ecx, 5

        L1: add ax, 1
        call dumpregs
        loop L1

        call dumpregs

    
    exit
    main endp
    end main