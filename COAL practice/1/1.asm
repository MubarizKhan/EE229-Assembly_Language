INCLUDE irvine32.inc

        ;Masm uses  $  operator  (current  location  counter)  to  return  the  offset  associated  with  current  program statement.  
        ;In  the  following  example, listsizeis  calculated  by  subtracting  the  offset  of  list  from  the current location counter ($)

.data
    COUNT = 10
    myarray BYTE COUNT DUP(0)

    list BYTE 10,20,30,40
    listsize = ($ - list)

.code
main PROC
    COUNT = 100
    mov eax, count;
    call WriteInt
    call crlf

    xor eax, eax
    mov eax, listsize
    call WriteDec
    call crlf

exit
main ENDP
END main

