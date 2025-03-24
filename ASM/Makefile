PROGS = Colleen Grace Sully

all: $(PROGS)

Colleen:
	nasm -f elf32 src/Colleen.s -o .tmp && ld -m elf_i386 .tmp -o Colleen && rm -f .tmp

Grace:
	nasm -f elf32 src/Grace.s -o .tmp && ld -m elf_i386 .tmp -o Grace && rm -f .tmp

Sully:
	nasm -f elf32 src/Sully.s -o .tmp && ld -m elf_i386 .tmp -o Sully && rm -f .tmp

fclean:
	rm -f $(PROGS)
	@echo "======== executables removed ========"

re: fclean all

.PHONY: all fclean re
