include irvine32.inc

;DATA SEGMENT 
.data
var byte "mubariz khan",0
Msg byte "String is: ",0
.code
main proc
	mov edx,offset Msg
	call writeString
	call crlf
	
	mov ecx,lengthof var
	mov edx,offset var
	
	dec ecx
	
	
	call arrange_Name		
exit	
main endp

	L:
	mov al,[edx+ecx]
	cmp al,32
	je l2
	loop L
	l2:
	mov al,32
	
	add edx,ecx
	call writestring
	call writechar
	pop edx
	L3:
	mov al,[edx]
	call writechar
	inc edx
	loop L3
	call  crlf
	ret
	
arrange_Name endp

end main
