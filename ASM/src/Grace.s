section .data
file db "Grace_kid.s", 0
open_mode db "w", 0
;m db "section .data%2$cfile db %3$cGrace_kid.s%3$c, 0%2$copen_mode db %3$cw%3$c, 0%2$c;m db %3$c%1$s%3$c, 0%2$csection .text%2$cglobal main%2$cextern fprintf%2$cextern fopen%2$c%2$c%macro ME 0%2$cmain:%2$cpush rbp%2$cmov rbp, rsp%2$clea rdi, [rel file]%2$c%2$clea rsi, [rel open_mode]%2$ccall fopen%2$c%2$cmov rdi, rax%2$clea rsi, [rel m]%2$cmov ecx, 10%2$cmov r8d, 34%2$cmov r9d, 9%2$ccall fprintf%2$c%2$cmov	rsp, rbp%2$cpop rbp%2$cret%2$c%endmacro%2$cME", 0
m db "lol [%s] [%2$c] [%3$c] [%2$c] lol", 0

section .text
global main
extern fprintf
extern fopen

%macro ME 0
	main:
		push rbp
		mov rbp, rsp

		lea rdi, [rel file]
		lea rsi, [rel open_mode]
		call fopen

		mov rdi, rax
		lea rsi, [rel m]
		mov ecx, 10
		mov r8d, 34
		mov r9d, 9
		call fprintf

		mov	rsp, rbp
		pop rbp
		ret
%endmacro

ME