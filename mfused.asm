Include Irvine32.Inc

Employee STRUCT

	age WORD 0
	gender BYTE 10 DUP(0)
	adress BYTE 10 DUP(0)

Employee ENDS

.data
	msg1 BYTE "Enter student's Age , gender, adress: ",0
	msg2 BYTE "student's Record: ",0
	array WORD 20 DUP(0)
	first BYTE ?
	second BYTE ?
	cout BYTE "Enter Number",0
	myDouble DWORD 123488ffh, 00340012h, 56789123h, 78563040h


	person1 Employee <>
	person2 Employee <>
	person3 Employee <>
	person4 Employee <>
	person5 Employee <>

.code


; Addsub PROC
; pop ebx
; mov ecx,ebx
; pop ebx
; mov eax,ebx
; pop ebx
; add eax,ebx
; sub eax,ecx
; call writehex



; ret 4
; Addsub endp

	main PROC

	mov edx, offset msg1
	call writestring
	call crlf

	xor eax,eax

	call readint
	mov person1.age, ax

	;Enter S

	mov edx, offset person1.gender
	mov ecx, (sizeof person1.gender)
	call readstring



	mov edx, offset person1.adress
	mov ecx, (sizeof person1.adress)
	call readstring

mov ax, person1.age
call writedec
call crlf



mov edx, (offset person1.gender)
call writestring
call crlf

mov edx, (offset person1.adress)
call writestring


; question

; xor eax,eax
; xor ecx,ecx
; xor ebx,ebx
; 	mov edx, offset cout



; 	mov ecx,4
; 	mov first,0
; 	mov second,0
; 	mov esi,0
; 	L1:
; 		inc first
; 		push ecx
; 		mov ecx , 5
; 		L2:
; 			inc second
; 			call writestring
; 			call readint
; 			call crlf
; 			call writedec
; 			call crlf

; 			mov array[esi],ax
; 			inc esi

; 		loop l2
; 		pop ecx
; 		inc esi


; 	loop l1

;quesnt ...
; mov ebx,10h
; push ebx
; mov ebx,20h
; push ebx
; mov ebx,05h
; push ebx
; call Addsub




; xor eax,eax 
; ; mov ax, WORD PTR myDouble ;eax = 3400
; ; ; xor eax,eax
; ; call dumpregs
; ;  mov al,BYTE PTR[myDouble+6]
;  call dumpregs
;  mov ax, WORD PTR[myDouble+7];123488ffh
; ; call dumpregs
; ; call writehex
;  ; mov eax,DWORD PTR[myDouble+3]
;  ; call dumpregs
;  ; mov ax,WORD PTR[myDouble+2]
;  ;mov eax, dword PTR[myDouble+0]
;  call dumpregs

exit
main ENDP
end main