Include Irvine32.inc
.data
	array1 BYTE "Hello World", 0 
	array2 BYTE "ABC GHI XYZ", 0 
	temporary BYTE 0
.code
main PROC
	mov ESI, 0
	mov ECX, SIZEOF array1
	mov edx, OFFSET array1
	mov ebx, OFFSET array2
	L1:
		mov AL, array1[ESI]
		mov DL, array2[ESI]
		mov array2[ESI], AL
		mov array1[ESI], DL
		inc ESI
	loop L1
	mov ESI, OFFSET array1
	add ESI, 12
	mov ECX, SIZEOF array2
	L2:
		mov AL, [ESI]
		inc ESI
		call WriteChar
	loop L2
	invoke ExitProcess,0
main ENDP
END main