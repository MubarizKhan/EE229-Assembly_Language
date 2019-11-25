include irvine32.inc

.data
    rval dword ?
    xval dword 26
    yval dword 30
    zval dword 40

.code 
    main PROC

    ;rval = -xval + (yval - zval)
    xor eax, eax
    xor ebx, ebx

    call dumpregs
    

    mov eax, xval

    call dumpregs 
    ;; neg eax
    ;; call dumpregs

    mov ebx, yval

    call dumpregs
    sub ebx, zval
    call dumpregs

    sub eax, ebx
    call dumpregs
    mov rval, eax
    call dumpregs

    

    call dumpregs



exit
main endp
end main