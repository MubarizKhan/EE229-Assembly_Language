Include Irvine32.inc

;Call WriteInt ;statement to display the signed integer 
;Call WriteDec ;statement to display the unsigned integer
 ;Call WriteChar ;statement to display a character 
 ;Call WriteString;statement to display a appropriate message. 
 ;Call Crlf ;for new line(CR = Carriage Return (\r), 
;LF = Line Feed (\n))Call Clrscr;statement to clear the screen

.data
value1 BYTE 'A'
value2 BYTE 0
value3 BYTE 255
value4 SBYTE 120
value5 SBYTE +127

Str1 BYTE "Welcome to this lab", 0
Str2 BYTE "Welcome to this program", 0dh, 0ah

.code 
main PROC

mov al, value1
call WriteChar
call Crlf

xor eax, eax
mov al, value2
call WriteDec
call Crlf

xor eax, eax
mov al, value3
call WriteDec
call Crlf


mov edx, offset Str1
call WriteString
call Crlf

xor edx,edx
mov edx, offset Str2
call WriteString
;call Crlf









exit
main ENDP
END main

