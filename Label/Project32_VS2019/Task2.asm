include Irvine32.inc
.data
	array1 BYTE 50 DUP(?), 0
	array2 BYTE 50 DUP(?), 0
	dlVal BYTE 0
	dhVal BYTE 0
.code
arrayFind PROC
	mov ecx, LENGTHOF array1
	mov esi, OFFSET array1
	L1:
		mov al, [esi]
		cmp al, 0
		je notFound

		cmp al, dl
		je found
		inc esi
	loop L1

	notFound:
		mov dl, 0
		ret
	found:
		mov dl, al
		ret
arrayFind ENDP

main PROC
	mov edx, OFFSET array1 
	mov ecx, SIZEOF array1
    call ReadString        

	mov dl, "h"
	call arrayFind
	mov dlVal, dl

	mov edx, OFFSET array2
	mov ecx, SIZEOF array2
    call ReadString  

	mov ecx, LENGTHOF array2
	mov esi, OFFSET array2
	L1:
	and BYTE PTR [esi], 11011111b 
	inc esi
	loop L1
	
	mov dl, "R"
	call arrayFind
	mov dhVal, dl

	mov eax, 0
	movzx eax, dlVal
	add al, dhVal

	cmp eax, 25
	jg exitCond
	jmp main

	exitCond:
	invoke ExitProcess,0
main ENDP
END main