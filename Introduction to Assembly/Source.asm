INCLUDE IRVINE32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
subtract DWORD ?
multiply DWORD ?
addition DWORD ?

.code
main proc
     mov addition, 5
     add addition, 6

     mov subtract, 10

	 call WriteInt
   	 invoke ExitProcess,0
main endp
end main