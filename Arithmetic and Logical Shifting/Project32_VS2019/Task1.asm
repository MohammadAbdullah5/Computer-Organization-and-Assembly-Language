Include Irvine32.inc
.data
	testVal DWORD 0F16B0000h
.code

main PROC
	xor eax, eax;
	shr testVal, 16
	or EAX, testVal
	Invoke ExitProcess,0
main ENDP
END main