INCLUDE irvine32.inc 

.data 

var1 byte ?
var2 byte ?

msg1 byte "daal number : ",0
msg2 byte "Daal dooosra number: ", 0 

.code 

    divp proc

    xor eax,eax 

    mov edx, offset msg1
    call writestring
    call readint
    mov var1,al

    xor eax,eax
    mov edx, offset msg2
    call writestring
    call readint
    mov var2, al
    xor eax,eax
    mov al,var1
    mov bl, var2
    div bl
    ret
  divp endp

  main proc
  xor eax, eax
  call divp
  call writedec

exit
main endp
end main
