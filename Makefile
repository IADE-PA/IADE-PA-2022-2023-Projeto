## Descomentar/alterar de acordo com o projeto

# UTILS=src/utils/singly_linked_list.c
# UTILS+=src/utils/open_hash_table.c

# MVC=src/views/cli.c
# MVC+=src/controllers/controllers.c
# MVC+=src/models/models.c

## Não alterar a partir daqui

CC=gcc
CFLAGS=-Wall -Wextra -Werror -pedantic -std=c99 -g

main: src/main.c $(UTILS) $(MVC)
	mkdir -p bin
	$(CC) $(CFLAGS) -o bin/$@ $^
