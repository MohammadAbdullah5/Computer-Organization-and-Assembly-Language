Include Irvine32.inc
.data
	array BYTE 1,2,3,4,5
	loopCount DWORD ?
.code
integerSUM PROC
	mov edx, 0
	mov eax, LENGTHOF array
	mov ecx, 2
	div ecx
	mov ecx, eax
	mov esi, OFFSET array
	mov edi, OFFSET array + 4
	L1:
		mov al, [esi]
		mov bl, [edi]
		mov [edi], al
		mov [esi], bl
		inc esi
		dec edi
	loop L1
	mov eax, 0
	mov esi, OFFSET array
	mov ecx, LENGTHOF array
	L2:
		add al, [esi]
		inc esi
	loop L2
	ret
integerSUM ENDP

main PROC
	call Readint
	mov ecx, eax
	L3:
	mov loopCount, ecx
	call integerSUM
	mov ecx, loopCount
	call Crlf
	call WriteBin
	call Crlf
	call WriteHex
	call Crlf
	call WriteDec
	call Crlf
	call Random32
	call Writeint
	call Crlf
	loop L3
	Invoke ExitProcess,0
main ENDP
END main