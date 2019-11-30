INCLUDE irvine32.inc

;.data
 ;   count SBYTE -16d

;.code
;main PROC
    ;XOR EBX, EBX ;clearing the register
   ; XOR EAX, EAX ;clearing the register
  ;  mov al, count
 ;   movsx bx, count

;    call DumpRegs



.data
val byte 5
.code

main PROC
    or val,30h
    movzx eax,val

call WriteChar
call Crlf
call WriteDec
call Crlf
call WriteHex
call Crlf


exit
main ENDP
END main