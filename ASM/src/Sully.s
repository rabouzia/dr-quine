BITS 64
section .data
cmd db "ls -la", 0
file db "Sully_%d.s", 5, 0
open_mode db "w", 0
m db "%s, %2$c%3$c%4$c", 0
section .text
global main
extern fprintf
extern fopen
extern system

%macro ME 0
	main:
		push rbp
		mov rbp, rsp
        call file_create
        call file_write
        call file_exec
		mov	rsp, rbp
		pop rbp
		ret
    file_create:
        lea rdi, [rel file]
		lea rsi, [rel open_mode]
		call fopen
        ret
    file_write:
        mov rdi, rax
		lea rsi, [rel m]
		lea rdx, [rel m]
		mov rcx, 10
		mov r8d, 34
		mov r9d, 9
		call fprintf
        ret
    file_exec:
        lea rdi, [rel cmd]
        call system
        ret


%endmacro
ME