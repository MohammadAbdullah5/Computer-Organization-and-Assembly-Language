Include Irvine32.inc
.data
	arrayB BYTE 10h,20h,30h
.code
main proc
	mov esi,0
	mov al, [arrayB+esi] ; AL = 10h
	mov al, arrayB[esi] ; alternate method
	inc esi
	mov al, [arrayB+esi] ; AL = 20h
	inc esi
	mov al, [arrayB+esi] ; AL = 30h
invoke ExitProcess,0
main endp
end main