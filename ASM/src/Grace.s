section .data
file db "Grace_kid.s", 0
open_mode db "w", 0
m db "%1%c%4%c%2%c%3%s", 0

section .text
global _main
; extern _printf
extern _fopen

%macro ME 0
	_main:
		lea rdi, [rel file]
		mov rsi, [rel open_mode]
		mov rax, 0
		call _fopen
		; mettre m dans rdi et les autres char
		; call fprintf
		ret
%endmacro

ME