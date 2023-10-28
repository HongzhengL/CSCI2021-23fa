CFLAGS = -Wall -Werror -g
CC = gcc $(CFLAGS)

.PHONY: all

all: swap1 swap2

swap1: swap1.c
	$(CC) -o $@ $^

swap2: swap2.c
	$(CC) -o $@ $^

clean:
	rm -f swap1 swap2
