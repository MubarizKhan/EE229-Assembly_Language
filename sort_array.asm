include irvine32.inc 

;sorting an array of unordered integers, ascending order
.data
    arr byte 1,33,55,66,32,5
    fl byte ?
    sl byte ?
    sl2 byte ?

.code


    printArr proc
        call crlf
        mov ecx, 6
        mov ebx, 0
        L1:
            mov al, arr[ebx]
            call writeint
            call crlf
            inc ebx

        loop L1

        ret
    printArr endp


    main proc
        xor eax, eax
        
        
        mov esi, offset arr
        mov ecx, sizeof arr
        xor eax, eax
        L1:
            push ecx            ; push value of ecx to stack
            mov esi, offset arr
            ; mov fl, ecx
            mov ecx, sizeof arr -1 ; setting ecx for inncer loop
            
            
            L2:
            
                mov al, [esi]

                cmp al, [esi + 1]
                ja exchange
                jmp lx

                exchange:
                    call writeint 
                    call crlf
                    mov bl, [esi]
                    mov bh, [esi+1]
                    mov [esi], bh
                    mov [esi + 1], bl

                lx:
                    inc esi
            loop L2

            pop ecx         ; restoring ecx for outer loop
        loop L1


    call printArr





exit
main endp
end main
