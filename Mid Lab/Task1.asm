Include Irvine32.inc
.data
	array WORD 50 DUP(5) 
	temporary BYTE 0
.code
main PROC
	mov EAX, SIZEOF array
	call Writeint ; Prints array size
	mov EAX, 0
	mov ESI, OFFSET array
	mov AX, [ESI + 200] ; 200 is added in ESI because 100 element of array will be at 100 * Size of type
	call Writeint ; Prints the data at 100th index

	mov EAX, 0
	mov ECX, LENGTHOF array
	mov ESI, OFFSET array
	L1:
		add AX, [ESI]
		add ESI, 2
	loop L1
	call Writeint

	mov ECX, LENGTHOF array
	mov EDX, 0
	div ECX
	call Writeint
	invoke ExitProcess,0
main ENDP
END main