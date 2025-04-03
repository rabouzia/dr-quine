;comment 1

;section .data 
	msg db ";comment 1 section .data main:   _return leave ret"

extern _printf

ft_print:
	mov rdi, msg
	call _printf
	ret

ft_write:
	mov rax, 1
	syscall
	ret
	test rax,rax
	js	.error
	ret
_main:
	;comment 2
	call ft_print
	ret