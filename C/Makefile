PROGS = Colleen Grace Sully

CC = cc
CFLAGS = -Wall -Wextra -Werror -g3

all: $(PROGS)

Colleen: src/Colleen.c
	$(CC) $(CFLAGS) $< -o $@

Grace: src/Grace.c
	$(CC) $(CFLAGS) $< -o $@

Sully: src/Sully.c
	$(CC) $(CFLAGS) $< -o $@

wipe:
	rm Sully*
	@rm -rf *.dSYM/
	rm Grace_kid.c

	@echo "\033[1;31m======== sully removed ========\033[0m"

fclean:
	@rm -f $(PROGS)
	@echo "\033[1;31m======== executables removed ========\033[0m"

re: fclean all

.PHONY: all clean fclean re

