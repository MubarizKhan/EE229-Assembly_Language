include irvine32.inc  

.data
    x sdword 5
    y sdword 3
    z sdword 2
    res sdword ?

.code
    main proc
    mov eax, x
    mov ebx, 8

    imul ebx
    mov x, eax
    ; call writedec

    xor ebx, ebx
    xor ebx, y
    ; mov eax, y
    sub ebx, 2 ; y - 2

    ; mov eax, ebx
    ; call writeint

    mov eax, x
    ; call writedec; 40
    ; call crlf
    idiv ebx

    call writedec; ; 40
    call crlf

    add eax, z
    mov res, eax 
    call writedec ; 42
    call crlf

    xor eax, eax
    xor ebx, ebx
    mov eax, 7
    mov ebx, 3

    ; call writedec
    ; call crlf

    idiv ebx
    call writedec
    call crlf
    ; mov ebx, eax
    ; xor eax, eax
    ; mov eax, res
    ; idiv ebx
     xor ebx, ebx

    mov ebx, eax

    xor eax, eax
    mov eax, res
   
    ; mov ebx, res
    ; idiv ebx

    xor eax,eax
    xor edx,edx
    xor ebx,ebx
    mov eax , 7
    mov ebx,3
    idiv ebx
    ; mov eax , edx

    xor eax, eax
    mov eax, res
    mov ebx, edx
    idiv ebx
    call writedec
    
    ; call writedec



    exit
    main endp
    end main