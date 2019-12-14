include irvine32.inc 

.data
    var dword ?
    var2 dword ?
    power dword ?
    msg byte "Enter the int",0
    msge byte "enter the exponent",0
    ; calculating power, we need x ^ y--> 2 ^ 2 ^ 2 ^ 2

.code 
    
    power proc
        ;here comes the int
       
        
        
        
        L1:
            mul var
            add power,eax
            loop L1
            
            call writeint
            call crlf
        power endp
        ; mov power, eax


    main proc

        xor eax, eax
        mov edx, offset msg
        call writestring

        
        call readint
        mov var, eax 

        call power

        mov edx, offset msge
        call writestring
        call crlf
        call readint
        mov var2, eax
        ; call writeint

        
        mov ecx, var2

        mov power, 0
        mov eax, 1

exit 
main endp
end main