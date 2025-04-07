BITS 64
section .data
cmd db "nasm -f elf64 Sully_4.s -o Sully_4.o && clang  -o Sully_4 Sully_4.o", 0
file db "Sully_4.s", 0
open_mode db "w", 0
suturingu db "%s,$c%3$c%4$c", 0
section .text
global main
extern fprintf
extern fopen
extern system


main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel file]
	lea rsi, [rel open_mode]
	call fopen
	mov rdi, rax
	lea rsi, [rel suturingu]
	lea rdx, [rel suturingu]
	mov rcx, 10
	mov r8d, 34
	mov r9d, 9
	call fprintf
	lea rdi, [rel cmd]
	call system
	mov	rsp, rbp
	pop rbp
	ret