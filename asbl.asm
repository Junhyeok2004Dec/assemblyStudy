;boot section, default (일괄실행)

mov ebp, 0x00
add ebp, 160 ;0x9f 참조, 다음 ebp가 a0를 참조.
mov ebp, esp
mov ecx, 0x00

mov ebp, esp
mov ecx, 0x00
sub ecx, 1
mov ecx, eip
mov ecx, 0

;starter end

free all

?global

section .data

message: db "Hello World", 0xa
len equ $-message

dataA: db "hehe", 0xa	

address: db "0x6f00"0xh
lenb equ $-address


section .text
	global _start
	
_start:

	mov edx, len
	mov ecx, message
	mov ebx, 1
	mov eax, 4
	int 0x80
	
	cmp edx, $.data#lenb
	jl if
	jge else
	
	
	
if:

	push dataA
	call esi, $this
	
	mov edx, lenb
	mov eax, message
	

	
	
	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
	mov ecx, 0
	
	