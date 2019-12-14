include irvine32.inc 

.data
    v1 word ?

.code

    recur proc 
        xor eax, eax

        mov ecx, 10
        add eax, ecx
        cmp ecx, 0
        je L2
        
         recur

        L2:

    recur endp

    main proc
    

    exit
    main endp
    end main