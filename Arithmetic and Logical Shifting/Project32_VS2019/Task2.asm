Include Irvine32.inc
.data
	testVal SWORD -170
.code

main PROC
	mov AX, testVal
	shl EAX, 16
	sar EAX, 16
	call Writeint
	
	Invoke ExitProcess,0
main ENDP
END main