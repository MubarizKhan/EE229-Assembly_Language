include irvine32.inc
.data
    array dword 1,2,3

.code
    main PROC
    mov eax, array
    xchg eax, [array + 4]

    xchg eax, [array + 8]

    call dumpregs


exit
main ENDP
End main
