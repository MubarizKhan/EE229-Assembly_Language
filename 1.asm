include irvine32.inc

.data
    msg1 byte "or with logical or has been executed",0
    msg byte "enter value",0
    msg3 byte "the sum is",0
    var1 dword ?
    var2 dword ?
    var3 dword ?
    sum dword ?


.code 
    main proc 
    mov edx, offset msg
    call writestring

    ; xor edx, edx
    ; mov edx, offset msg
    call readint
    mov var1, eax
    call crlf
    ; call writedec

  
    mov edx, offset msg
    call writestring
    call crlf

    
    call readint
    ; xor eax, eax
    mov var2, eax
    ; call writedec

    xor eax, eax
    mov edx, offset msg
    call writestring
    call crlf
    call readint
    mov var3, eax

    xor eax, eax
    mov eax, var1 
    cmp eax, var2
    ja L1
    
    ;; case when var1 < var2
    xor eax, eax
    mov eax, var2
    cmp eax, var3
    ja L2 ; will execute obly when l2 is greater than var3

    L2:
        xor eax, eax
        mov eax, var1
        add eax, var2
        add eax, var3
        mov sum, eax
        mov edx, offset msg3
        call writestring
        call writedec

    L1:

    exit
    main endp
    end main