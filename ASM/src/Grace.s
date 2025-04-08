section .data
file db "Grace_kid.s", 0
open_mode db "w", 0
m db "section .data%2$cfile db %3$cGrace_kid.s%3$c, 0%2$copen_mode db %3$cw%3$c, 0%2$cm db %3$c%s%3$c, 0%2$csection .text%2$cglobal main%2$cextern fprintf%2$cextern fopen%2$cextern fclose%2$c%2$c%%macro ME 0%2$c%4$cmain:%2$c%4$c%4$cpush rbp%2$c%4$c%4$cmov rbp, rsp%2$c%2$c%4$c%4$clea rdi, [rel file]%2$c%4$c%4$clea rsi, [rel open_mode]%2$c%4$c%4$ccall fopen%2$c%2$c%4$c%4$cmov r15, rax%2$c%4$c%4$cmov rdi, rax%2$c%4$c%4$clea rsi, [rel m]%2$c%4$c%4$clea rdx, [rel m]%2$c%4$c%4$cmov rcx, 10%2$c%4$c%4$cmov r8d, 34%2$c%4$c%4$cmov r9d, 9%2$c%4$c%4$ccall fprintf%2$c%4$c%4$cmov rdi, r15%2$c%4$c%4$ccall fclose%2$c%2$c%4$c%4$cmov	rsp, rbp%2$c%4$c%4$cpop rbp%2$c%4$c%4$cret%2$c%%endmacro%2$cME", 0
section .text
global main
extern fprintf
extern fopen
extern fclose

%macro ME 0
	main:
		push rbp
		mov rbp, rsp

		lea rdi, [rel file]
		lea rsi, [rel open_mode]
		call fopen

		mov r15, rax
		mov rdi, rax
		lea rsi, [rel m]
		lea rdx, [rel m]
		mov rcx, 10
		mov r8d, 34
		mov r9d, 9
		call fprintf
		mov rdi, r15
		call fclose

		mov	rsp, rbp
		pop rbp
		ret
%endmacro
ME