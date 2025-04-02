PROGS = Colleen Grace Sully

all: $(PROGS)

Colleen:
	nasm -f elf64 src/Colleen.s -o Colleen.o && gcc -nostartfiles -o Colleen Colleen.o -lm && ./Colleen

Grace:
	nasm -f elf64 src/Grace.s -o .tmp && ld -m elf_i386 .tmp -o Grace

Sully:
	nasm -f elf64 src/Sully.s -o .tmp && ld -m elf_i386 .tmp -o Sully

fclean:
	rm -f $(PROGS)
	@echo "======== executables removed ========"

re: fclean all

.PHONY: all fclean re
