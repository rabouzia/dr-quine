BITS 64

section .data
file db "Sully_%d.s", 0
open_mode db "w", 0
cmd db "nasm -f elf64 Sully_%1$d.s -o Sully_%1$d.o && clang -o Sully_%1$d Sully_%1$d.o && ./Sully_%1$d &", 0
suturingu db "BITS 64%2$c%2$csection .data%2$cfile db %3$cSully_%%d.s%3$c, 0%2$copen_mode db %3$cw%3$c, 0%2$ccmd db %3$cnasm -f elf64 Sully_%%1$d.s -o Sully_%%1$d.o && clang -o Sully_%%1$d Sully_%%1$d.o && ./Sully_%%1$d &%3$c, 0%2$csuturingu db %3$c%s%3$c, 0%2$ci dd %5$d%2$c%2$csection .bss%2$cdynstr resq 1%2$c%2$csection .text%2$cglobal main%2$cextern asprintf%2$cextern fopen%2$cextern fprintf%2$cextern system%2$cextern exit%2$c%2$cmain:%2$c%4$cpush rbp%2$c%4$cmov rbp, rsp%2$c%2$c%4$ccmp dword [rel i], 0%2$c%4$cjz fin%2$c%4$csub dword [rel i], 1%2$c%2$c%4$clea rdi, [rel dynstr]%2$c%4$clea rsi, [rel file]%2$c%4$cmov edx, [rel i]%2$c%4$cxor eax, eax%2$c%4$ccall asprintf%2$c%2$c%4$cmov rdi, [rel dynstr]%2$c%4$clea rsi, [rel open_mode]%2$c%4$ccall fopen%2$c%2$c%4$cmov rdi, rax%2$c%4$clea rsi, [rel suturingu]%2$c%4$clea rdx, [rel suturingu]%2$c%4$cmov ecx, 10%2$c%4$cmov r8d, 34%2$c%4$cmov r9d, 9%2$c%2$c%4$csub rsp, 8%2$c%4$cmov eax, dword [rel i]%2$c%4$cpush rax%2$c%4$ccall fprintf%2$c%4$cadd rsp, 16%2$c%2$c%4$clea rdi, [rel dynstr]%2$c%4$clea rsi, [rel cmd]%2$c%4$cmov edx, [rel i]%2$c%4$cxor eax, eax%2$c%4$ccall asprintf%2$c%2$c%4$cmov rdi, [rel dynstr]%2$c%4$ccall system%2$c%2$cfin:%2$c%4$cmov rsp, rbp%2$c%4$cpop rbp%2$c%4$cmov edi, 0%2$c%4$ccall exit%2$c%4$cret", 0
i dd 5

section .bss
dynstr resq 1

section .text
global main
extern asprintf
extern fopen
extern fprintf
extern system
extern exit

main:
	push rbp
	mov rbp, rsp

	cmp dword [rel i], 0
	jz fin
	sub dword [rel i], 1

	lea rdi, [rel dynstr]
	lea rsi, [rel file]
	mov edx, [rel i]
	xor eax, eax
	call asprintf

	mov rdi, [rel dynstr]
	lea rsi, [rel open_mode]
	call fopen

	mov rdi, rax
	lea rsi, [rel suturingu]
	lea rdx, [rel suturingu]
	mov ecx, 10
	mov r8d, 34
	mov r9d, 9

	sub rsp, 8
	mov eax, dword [rel i]
	push rax
	call fprintf
	add rsp, 16

	lea rdi, [rel dynstr]
	lea rsi, [rel cmd]
	mov edx, [rel i]
	xor eax, eax
	call asprintf

	mov rdi, [rel dynstr]
	call system

fin:
	mov rsp, rbp
	pop rbp
	mov edi, 0
	call exit
	ret