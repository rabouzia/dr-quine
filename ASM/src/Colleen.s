;comment 1
section .data
msg db ";comment 1%1$csection .data%1$cmsg db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal _main%1$cextern _printf%1$c%1$c_main:%1$c%4$clea rdi, [rel msg]%1$c%4$cmov esi, 10%1$c%4$cmov edx, 34%1$c%4$cmov r8, 9%1$c%4$clea rcx, [rel msg]%1$c%4$ccall ft_print%1$c%4$cret%1$c%1$cft_print:%1$c%4$clea rdi, [rel msg]%1$c%4$ccall _printf%1$c%4$cret", 0

section .text
global _main
extern _printf

_main:
	lea rdi, [rel msg]
	mov esi, 10
	mov edx, 34
	mov r8, 9
	lea rcx, [rel msg]
	call ft_print
	ret

ft_print:
	lea rdi, [rel msg]
	call _printf
	ret