include irvine32.inc 

.data
; esp. esi, ebx , eax
msg byte "in sum", 0
msg1 byte "in l2", 0
var byte 0d
var1 byte 2d
ans word ?

.code
    main proc
         xor eax, eax
        ; mov cx, ans
         ; quotient in al, remainder in ah
        mov ecx, 21
        ; mov ax, 2
        L1:
            ; xor eax, eax      
            ; inc ax
            mov al, var
            ; mov bl, var1
            div var1
            cmp ah, 0d
            
            je sum
            jne l2

            sum:
                
                add bl, var
            
        l2:
            inc var
            loop L1
            
        xor eax, eax
        mov al, bl
        call writedec
        ; mov bh,al
        ; xor eax,eax
        mov al,black +(red *16)
         
        call settextcolor
        ; call writedec

        exit
        main endp
        end main



            

