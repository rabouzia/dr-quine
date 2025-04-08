PROGS = Colleen Grace Sully
UNAME_S := $(shell uname -s)
UNAME_M := $(shell uname -m)

ifeq ($(UNAME_S), Darwin)
	ifeq ($(UNAME_M), arm64)
		NASM_FORMAT = macho64
		CLANG_ARCH = -arch x86_64
		EXEC_PREFIX = arch -x86_64
	else
		NASM_FORMAT = macho64
		CLANG_ARCH =
		EXEC_PREFIX =
	endif
else
	NASM_FORMAT = elf64
	CLANG_ARCH =
	EXEC_PREFIX =
endif

wipe:
	rm Sully*

all: $(PROGS)

Colleen:
	nasm -f $(NASM_FORMAT) src/Colleen.s -o Colleen.o && clang $(CLANG_ARCH) -o Colleen Colleen.o

Grace:
	nasm -f $(NASM_FORMAT) src/Grace.s -o Grace.o && clang $(CLANG_ARCH) -o Grace Grace.o

Sully:
	nasm -f $(NASM_FORMAT) src/Sully.s -o Sully.o && clang $(CLANG_ARCH) -o Sully Sully.o

fclean:
	rm -f $(PROGS) *.o .tmp
	@echo "======== executables removed ========"

re: fclean all

.PHONY: all fclean re Colleen Grace Sully
