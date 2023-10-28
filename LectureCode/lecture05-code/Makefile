CFLAGS = -Wall -Werror -g
CC = gcc $(CFLAGS)

.PHONY: all clean

all: string_copy command_line_args stack_mem_bad type_numbers

string_copy: string_copy.c
	$(CC) -o $@ $^

command_line_args: command_line_args.c
	$(CC) -o $@ $^

# Note that we don't use -Wall or -Werror here -- don't do this!
stack_mem_bad: stack_mem_bad.c
	gcc -o $@ $^

type_numbers: type_numbers.c
	$(CC) -o $@ $^

clean:
	rm -f string_copy command_line_args stack_mem_bad type_numbers
