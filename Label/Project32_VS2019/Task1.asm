Include Irvine32.inc
.data
	dataArray DWORD 5 DUP(?)
	arraySum DWORD 0
	message1 BYTE "Sum is greater than EAX", 0
	message2 BYTE "Sum is less than EAX", 0
.code

msg1 PROC
	mov ebx, 0
	mov edx, OFFSET message1
	call MsgBox 

	ret
msg1 ENDP

msg2 PROC
	mov ebx, 0
	mov edx, OFFSET message2
	call MsgBox 

	ret
msg2 ENDP

main PROC
	mov ecx, LENGTHOF dataArray
	mov esi, OFFSET dataArray
	L1:
	call Readint
	mov [esi], eax
	add esi, 4
	loop L1

	mov eax, 0
	mov ecx, LENGTHOF dataArray
	mov esi, OFFSET dataArray
	L2:
		add eax, [esi] 
		add esi, 4
		mov arraySum, eax
	loop L2
	mov eax, arraySum
	call Writeint
	
	call Readint
	cmp arraySum, eax
	jl proc2
	je proc3
	jg proc1
	proc1:
		call msg1
		exit
	proc2:
		call msg2
		exit
	proc3:
		exit
	Invoke ExitProcess,0
main ENDP
END main