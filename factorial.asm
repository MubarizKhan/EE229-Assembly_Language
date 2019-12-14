include irvine32.inc 
.data
    var dword ?
    msg1 byte "enter the number; which factorial is to be calculated",0 ;  4 3 2 1

    


.code

    fact proc      
        mov var, eax
        mov ecx, var
        ; xor eax, eax
            
        mov eax, 1 
        mov ebx, var 
        L1:
            mul ebx
            dec ebx

            loop L1

        call writeint
        ret 

        fact endp

    main proc
        xor eax, eax
        mov edx, offset msg1
        call readint

        call fact
    
        exit
        main endp
        end main
            



            



        
    
    exit 
    main endp
    end main