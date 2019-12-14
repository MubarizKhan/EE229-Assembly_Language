include irvine32.inc

.data
    var1 dword 20

.code
    main proc
    
    xor eax, eax
    push eax
    mov ebx, var1
    mov eax, 10
    add eax, ebx

    call writehex


    call dumpregs





    exit
    main endp
    end main