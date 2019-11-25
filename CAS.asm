include irvine32.inc

.data
    source byte "This is a source string", 0
    target byte sizeof source DUP(0)

.code
    main PROC
        mov esi, 0
        mov ecx, sizeof source

        L1:
            mov al, source[esi]
            mov target[esi] , al
            ; call readstring
            inc esi
            
        loop L1

        ; call writestring

    exit
    main endp
    end main
