INCLUDE Irvine32.Inc
.data
	array byte 8 DUP(?)
	ini byte "Initilaize",0
	en byte "Enter Number: ",0
	pn byte "Print Array : ",0
	mn byte "Minimum number : ",0
	i dword 0
	mini byte 0
	temp byte ?

.code

	initialize proc
	xor eax,eax
	mov ecx,8
	mov edx,offset ini
	call writestring
	call crlf
	l:
		mov edx,offset en
		call writestring
		mov esi,i
		mov al,0
		call readint
		mov array[esi],al
		call crlf
		call writedec
		call crlf
		inc i
		loop l
	
	ret
initialize endp
print proc
	xor eax,eax
	mov i,0
	mov edx,offset pn
	call writestring
	call crlf
	mov ecx,8
	l1:
		mov esi,i
		mov al,array[esi]
		call writedec
		call crlf
		inc i
	loop l1
	ret
print endp



min proc 
	xor eax,eax
	mov i,0
	mov esi,i
	mov ecx,8
	blo:
		mov al,array[esi]
		mov temp,al
		mov mini,al
		
	l2:
	mov esi,i
	mov al,array[esi]
	inc i
	cmp al,temp
	jb blo
	loop l2
	
	mov edx,offset mn
	call writestring
	mov al,mini
	call writedec
	call crlf
	ret
min endp

	main proc
	call initialize
	call print
	call min
exit
main endp
end main