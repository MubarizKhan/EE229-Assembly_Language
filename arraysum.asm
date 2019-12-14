include irvine32.inc 

.data
    var1 byte 1,2,3,4,5
    sum byte ?

.code
    main proc
        xor eax, eax
        mov esi, offset var1
        mov ecx, sizeof var1

        L1:
            add al, [esi]
            inc esi
            loop L1

        call writedec

    call dumpregs

    exit
    main endp
    end main
