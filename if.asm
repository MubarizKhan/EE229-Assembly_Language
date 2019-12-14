include irvine32.inc 

.data 
    var byte 5
    var2 byte 10
    sum byte ?

.code 
    main proc

    mov al, var
    ; mov bl, var2

    cmp al, var2
    je L1
    jmp L2

        mov ecx, 5
        L1:
            add al, var2
            loop L1

        mov sum, al
        mov al, sum

        call writedec
    L2:

    exit
    main endp
    end main
