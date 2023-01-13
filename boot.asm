section .data

message: db "calculate", 0xa
len equ $-message


exportadd: db $-getlen

section .bss

	push rbp
	mov rbp, rsp 
	sub rsp, 0x0e4h

	mov rsp, esp
	sub rsp, 0x0080
	push rdx
	int 0x0080
	
	mov rdx, rsp
	
	sub esp, $-rsp
	sub rsp, $-rdx
	int 0x0080
	
	str ecx, message
	mov rex, len
	push rex
	int 0x0080
	
	push rdx
	
	mov esp, rdx
	push rdx

section .text
	global _start
	
_start:

	mov edx, len
	mov ecx, message

	