include irvine32.inc 

.data
    str1 byte "hello",0
    ;11011111b

.code
    main proc
    mov ecx, lengthof str1
    mov esi, offset str1
    dec ecx

    L1:
        and byte ptr [esi], 11011111b
        inc esi
        loop L1

        mov edx, offset str1
        call writestring

exit
main endp
end main



