;comment 1

section .data ";comment 1 section .data main:   _return leave ret"


ft_print:
	call _printf

	ret

_main:
	push rbx
	;comment 2
	call ft_print
	pop rbx
	ret


