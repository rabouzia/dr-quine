;comment 1
section .data
msg db ";comment 1%1$csection .data%1$cmsg db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal main%1$cextern printf%1$c%1$cmain:%1$c%4$clea rdi, [rel msg]%1$c%4$cmov esi, 10%1$c%4$cmov edx, 34%1$c%4$cmov r8, 9%1$c%4$clea rcx, [rel msg]%1$c%4$ccall ft_print%1$c%4$cret%1$c%1$cft_print:%1$c%4$clea rdi, [rel msg]%1$c%4$ccall printf%1$c%4$cret", 0

section .text
global main
extern printf

main:
	lea rdi, [rel msg]
	mov esi, 10
	mov edx, 34
	lea rcx, [rel msg]
	mov r8, 9
	call ft_print
	ret

ft_print:
	call printf
	ret