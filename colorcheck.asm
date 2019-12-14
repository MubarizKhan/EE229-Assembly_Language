include irvine32.inc 

.data
    str1 byte "rabbit hole",0

.code
    main proc
    mov eax, blue + (yellow * 16)
    call settextcolor
    mov edx, offset str1
    call writestring
    call crlf

    exit 
    main endp
    end main