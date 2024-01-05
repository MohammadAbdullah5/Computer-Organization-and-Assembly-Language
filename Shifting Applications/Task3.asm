include Irvine32.inc
.data
value DWORD 123

.code
main PROC
    shl value, 6 
    mov eax, value
    call Writeint
    exit
main ENDP
END main