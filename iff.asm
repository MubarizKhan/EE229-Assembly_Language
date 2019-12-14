include irvine32.inc 

.data 
    var byte 5
    var2 byte 10
    sum byte ?

    msg byte "var2 is greater than var1",0
    msg2 byte "exiting"

.code 
    main proc

    mov al, var
    ; mov bl, var2

    cmp al, var2
    ja L1
    jmp L2

        mov ecx, 5
        L1:
            add al, var2
            loop L1
            mov edx, offset msg
            call writestring
            call crlf

        call writedec
    L2:
        mov edx, offset msg2
        call writestring

    exit
    main endp
    end main
