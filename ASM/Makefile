PROGS = Colleen Grace Sully

NASM_FORMAT = elf64
CLANG_ARCH =
EXEC_PREFIX =

wipe:
	rm -f Grace_kid.s
	@echo "\033[1;31m======== sully removed ========\033[0m"

all: $(PROGS)

Colleen:
	nasm -f $(NASM_FORMAT) src/Colleen.s -o Colleen.o && clang $(CLANG_ARCH) -o Colleen Colleen.o

Grace:
	nasm -f $(NASM_FORMAT) src/Grace.s -o Grace.o && clang $(CLANG_ARCH) -o Grace Grace.o

Sully:
	nasm -f $(NASM_FORMAT) src/Sully.s -o Sully.o && clang -g3 $(CLANG_ARCH) -o Sully Sully.o

fclean:
	rm -f $(PROGS) *.o .tmp
	rm -f Sully*
	@echo "======== executables removed ========"

re: fclean all

.PHONY: all fclean re Colleen Grace Sully
