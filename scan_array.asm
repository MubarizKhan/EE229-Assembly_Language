include irvine32.inc

.data
    intArray SWORD  0,0,0,0,1,20,35,-12,66,4,0
    noneMsg  BYTE "A non-zero value was not found",0

.code
    main proc
    mov ebx, offset intArray
    mov ecx, lengthof intArray

    L1:
        cmp word ptr[ebx], 0
        jnz found
        add ebx, 2
        loop L1
        jmp notFound


    found:
    movsx eax,WORD PTR [ebx] ; otherwise, display it
    call  WriteInt
    jmp   quit
    
    notFound: 
            mov   edx,OFFSET noneMsg; display "not found" message
            call  WriteString

        quit:
        call  crlf




    exit
    main endp
    end main