Include Irvine32.inc

.data
val byte 5

.code
main PROC

    mov al, val
    cmp al, 6
    call dumpregs
    




    exit
    main ENDP
    End main