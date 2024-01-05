INCLUDE IRVINE32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data

.code
main proc
     mov edx, 4
     imul edx, edx, 5
     mov ecx, 3
     add ecx, 7
     mov eax, ecx
     mov ebx, 21
     mul ebx
     sub edx,eax
     call writeint
     
   	 invoke ExitProcess,0
main endp
end main