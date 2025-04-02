;comment 1

;section .data 
	msg db ";comment 1 section .data main:   _return leave ret"

extern _printf

ft_print:
	mov rdi, msg
	call _printf
	ret

_main:
	;comment 2
	call ft_print
	ret