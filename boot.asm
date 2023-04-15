section .data

message: db "calculate", 0xa
len equ $ - message


section .text

global _start

_start:

	mov edx, len ;edx : 길이
	mov ecx, message ; 메시지 주소
	mov ebx, 1 ;descripter 
	mov eax, 4
	int 0x80 ;kern' call
	
	;exit
	mov ebx, 0 ;return(0) or exit(0)
	mov eax, 1 ;sys call
	int 0x80 
