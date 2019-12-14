include irvine32.inc

.data 




.code 

main proc

    xor eax, eax
    xor ebx, ebx 

    push 4
    call fact

    exit
main endp

fact proc 

    ; mov eax, [esp+4]
    ; call crlf
    ; call writeint

    ; cmp eax, 0 
    ; je zo

    ; dec eax
    ; push eax 
    ; call fact
    
    ; mov ebx, [esp+4]
    ; mul ebx
    ; call crlf
    ; call writeint

    
    ; yret 4
    ; zo:
    ;     mov eax, 1
    ;     ret 4


    mov eax, [esp+4]
    call writeint
    call crlf
    cmp eax, 0
    ;mov eax,1
    je l4

    dec eax
    push eax 
    call fact
   
    mov ebx, [esp+4]
    mul ebx

    call writeint
    call crlf

   


    zo:
     ret 4
    

    l4:
        mov eax, 1
        ret 4


fact endp

end main