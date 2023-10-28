CFLAGS = -O0 -Wall -Werror
CC = gcc $(CFLAGS)

.PHONY: all clean

all: counter matrix_add

counter: counter.c
	$(CC) -o $@ $^

matrix_add: matrix_add.c
	$(CC) -o $@ $^

clean:
	rm -f counter matrix_add
