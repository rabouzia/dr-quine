
all: $(PROGS)

Colleen:
	rustc src/Colleen.rs

Grace:
	cargo run --bin Grace

Sully:
	cargo run --bin sully



wipe:
	cargo clean
	rm Sully*
	rm Grace_kid.rs
	rm Colleen
	@echo "\033[1;31m======== sully removed ========\033[0m"

clean :
	echo "clean ahah"

fclean:
	cargo clean
	@echo "======== executables removed ========"

re: fclean all

.PHONY: Colleen Grace Sully wipe

