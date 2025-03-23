# Nom des exécutables
PROGS = Colleen Grace Sully

# Compilateur et options
CC = cc
CFLAGS = -Wall -Wextra -Werror -g3

# Cibles de compilation
all: $(PROGS)

Colleen: src/Colleen.c
	$(CC) $(CFLAGS) $< -o $@

Grace: src/Grace.c
	$(CC) $(CFLAGS) $< -o $@

Sully: src/Sully.c
	$(CC) $(CFLAGS) $< -o $@

fclean:
	@rm -f $(PROGS)
	@rm -rf *.dSYM
	@echo "\033[1;31m======== executables removed ========\033[0m"

re: fclean all

.PHONY: all clean fclean re
